; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71512 () Bool)

(assert start!71512)

(declare-fun b_free!13497 () Bool)

(declare-fun b_next!13497 () Bool)

(assert (=> start!71512 (= b_free!13497 (not b_next!13497))))

(declare-fun tp!47277 () Bool)

(declare-fun b_and!22545 () Bool)

(assert (=> start!71512 (= tp!47277 b_and!22545)))

(declare-fun b!830040 () Bool)

(declare-fun res!565457 () Bool)

(declare-fun e!462803 () Bool)

(assert (=> b!830040 (=> (not res!565457) (not e!462803))))

(declare-datatypes ((array!46558 0))(
  ( (array!46559 (arr!22311 (Array (_ BitVec 32) (_ BitVec 64))) (size!22732 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46558)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25277 0))(
  ( (V!25278 (val!7651 Int)) )
))
(declare-datatypes ((ValueCell!7188 0))(
  ( (ValueCellFull!7188 (v!10089 V!25277)) (EmptyCell!7188) )
))
(declare-datatypes ((array!46560 0))(
  ( (array!46561 (arr!22312 (Array (_ BitVec 32) ValueCell!7188)) (size!22733 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46560)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!830040 (= res!565457 (and (= (size!22733 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22732 _keys!976) (size!22733 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!830041 () Bool)

(declare-fun e!462800 () Bool)

(declare-fun e!462797 () Bool)

(declare-fun mapRes!24463 () Bool)

(assert (=> b!830041 (= e!462800 (and e!462797 mapRes!24463))))

(declare-fun condMapEmpty!24463 () Bool)

(declare-fun mapDefault!24463 () ValueCell!7188)

(assert (=> b!830041 (= condMapEmpty!24463 (= (arr!22312 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7188)) mapDefault!24463)))))

(declare-datatypes ((tuple2!10174 0))(
  ( (tuple2!10175 (_1!5097 (_ BitVec 64)) (_2!5097 V!25277)) )
))
(declare-datatypes ((List!16003 0))(
  ( (Nil!16000) (Cons!15999 (h!17128 tuple2!10174) (t!22376 List!16003)) )
))
(declare-datatypes ((ListLongMap!9011 0))(
  ( (ListLongMap!9012 (toList!4521 List!16003)) )
))
(declare-fun lt!376627 () ListLongMap!9011)

(declare-fun zeroValueAfter!34 () V!25277)

(declare-fun lt!376624 () ListLongMap!9011)

(declare-fun e!462801 () Bool)

(declare-fun b!830042 () Bool)

(declare-fun lt!376628 () tuple2!10174)

(declare-fun +!1950 (ListLongMap!9011 tuple2!10174) ListLongMap!9011)

(assert (=> b!830042 (= e!462801 (= lt!376627 (+!1950 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!376628)))))

(declare-fun b!830043 () Bool)

(declare-fun e!462802 () Bool)

(declare-fun tp_is_empty!15207 () Bool)

(assert (=> b!830043 (= e!462802 tp_is_empty!15207)))

(declare-fun b!830044 () Bool)

(declare-fun e!462798 () Bool)

(declare-fun lt!376622 () tuple2!10174)

(declare-fun lt!376625 () ListLongMap!9011)

(declare-fun lt!376626 () ListLongMap!9011)

(assert (=> b!830044 (= e!462798 (= lt!376625 (+!1950 (+!1950 lt!376626 lt!376628) lt!376622)))))

(assert (=> b!830044 e!462801))

(declare-fun res!565456 () Bool)

(assert (=> b!830044 (=> (not res!565456) (not e!462801))))

(assert (=> b!830044 (= res!565456 (= lt!376625 (+!1950 (+!1950 lt!376626 lt!376622) lt!376628)))))

(declare-fun minValue!754 () V!25277)

(assert (=> b!830044 (= lt!376628 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun zeroValueBefore!34 () V!25277)

(assert (=> b!830044 (= lt!376622 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2592 (array!46558 array!46560 (_ BitVec 32) (_ BitVec 32) V!25277 V!25277 (_ BitVec 32) Int) ListLongMap!9011)

(assert (=> b!830044 (= lt!376627 (getCurrentListMap!2592 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!830044 (= lt!376625 (getCurrentListMap!2592 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24463 () Bool)

(declare-fun tp!47278 () Bool)

(assert (=> mapNonEmpty!24463 (= mapRes!24463 (and tp!47278 e!462802))))

(declare-fun mapRest!24463 () (Array (_ BitVec 32) ValueCell!7188))

(declare-fun mapValue!24463 () ValueCell!7188)

(declare-fun mapKey!24463 () (_ BitVec 32))

(assert (=> mapNonEmpty!24463 (= (arr!22312 _values!788) (store mapRest!24463 mapKey!24463 mapValue!24463))))

(declare-fun mapIsEmpty!24463 () Bool)

(assert (=> mapIsEmpty!24463 mapRes!24463))

(declare-fun b!830045 () Bool)

(assert (=> b!830045 (= e!462797 tp_is_empty!15207)))

(declare-fun b!830046 () Bool)

(declare-fun res!565454 () Bool)

(assert (=> b!830046 (=> (not res!565454) (not e!462803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46558 (_ BitVec 32)) Bool)

(assert (=> b!830046 (= res!565454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!565455 () Bool)

(assert (=> start!71512 (=> (not res!565455) (not e!462803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71512 (= res!565455 (validMask!0 mask!1312))))

(assert (=> start!71512 e!462803))

(assert (=> start!71512 tp_is_empty!15207))

(declare-fun array_inv!17745 (array!46558) Bool)

(assert (=> start!71512 (array_inv!17745 _keys!976)))

(assert (=> start!71512 true))

(declare-fun array_inv!17746 (array!46560) Bool)

(assert (=> start!71512 (and (array_inv!17746 _values!788) e!462800)))

(assert (=> start!71512 tp!47277))

(declare-fun b!830047 () Bool)

(declare-fun res!565453 () Bool)

(assert (=> b!830047 (=> (not res!565453) (not e!462803))))

(declare-datatypes ((List!16004 0))(
  ( (Nil!16001) (Cons!16000 (h!17129 (_ BitVec 64)) (t!22377 List!16004)) )
))
(declare-fun arrayNoDuplicates!0 (array!46558 (_ BitVec 32) List!16004) Bool)

(assert (=> b!830047 (= res!565453 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16001))))

(declare-fun b!830048 () Bool)

(assert (=> b!830048 (= e!462803 (not e!462798))))

(declare-fun res!565452 () Bool)

(assert (=> b!830048 (=> res!565452 e!462798)))

(assert (=> b!830048 (= res!565452 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!830048 (= lt!376626 lt!376624)))

(declare-datatypes ((Unit!28435 0))(
  ( (Unit!28436) )
))
(declare-fun lt!376623 () Unit!28435)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!611 (array!46558 array!46560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25277 V!25277 V!25277 V!25277 (_ BitVec 32) Int) Unit!28435)

(assert (=> b!830048 (= lt!376623 (lemmaNoChangeToArrayThenSameMapNoExtras!611 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2521 (array!46558 array!46560 (_ BitVec 32) (_ BitVec 32) V!25277 V!25277 (_ BitVec 32) Int) ListLongMap!9011)

(assert (=> b!830048 (= lt!376624 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!830048 (= lt!376626 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!71512 res!565455) b!830040))

(assert (= (and b!830040 res!565457) b!830046))

(assert (= (and b!830046 res!565454) b!830047))

(assert (= (and b!830047 res!565453) b!830048))

(assert (= (and b!830048 (not res!565452)) b!830044))

(assert (= (and b!830044 res!565456) b!830042))

(assert (= (and b!830041 condMapEmpty!24463) mapIsEmpty!24463))

(assert (= (and b!830041 (not condMapEmpty!24463)) mapNonEmpty!24463))

(get-info :version)

(assert (= (and mapNonEmpty!24463 ((_ is ValueCellFull!7188) mapValue!24463)) b!830043))

(assert (= (and b!830041 ((_ is ValueCellFull!7188) mapDefault!24463)) b!830045))

(assert (= start!71512 b!830041))

(declare-fun m!773195 () Bool)

(assert (=> b!830044 m!773195))

(declare-fun m!773197 () Bool)

(assert (=> b!830044 m!773197))

(assert (=> b!830044 m!773195))

(declare-fun m!773199 () Bool)

(assert (=> b!830044 m!773199))

(declare-fun m!773201 () Bool)

(assert (=> b!830044 m!773201))

(assert (=> b!830044 m!773199))

(declare-fun m!773203 () Bool)

(assert (=> b!830044 m!773203))

(declare-fun m!773205 () Bool)

(assert (=> b!830044 m!773205))

(declare-fun m!773207 () Bool)

(assert (=> b!830046 m!773207))

(declare-fun m!773209 () Bool)

(assert (=> start!71512 m!773209))

(declare-fun m!773211 () Bool)

(assert (=> start!71512 m!773211))

(declare-fun m!773213 () Bool)

(assert (=> start!71512 m!773213))

(declare-fun m!773215 () Bool)

(assert (=> b!830042 m!773215))

(assert (=> b!830042 m!773215))

(declare-fun m!773217 () Bool)

(assert (=> b!830042 m!773217))

(declare-fun m!773219 () Bool)

(assert (=> mapNonEmpty!24463 m!773219))

(declare-fun m!773221 () Bool)

(assert (=> b!830048 m!773221))

(declare-fun m!773223 () Bool)

(assert (=> b!830048 m!773223))

(declare-fun m!773225 () Bool)

(assert (=> b!830048 m!773225))

(declare-fun m!773227 () Bool)

(assert (=> b!830047 m!773227))

(check-sat (not b!830042) tp_is_empty!15207 (not b!830048) (not start!71512) (not b_next!13497) b_and!22545 (not b!830047) (not b!830044) (not b!830046) (not mapNonEmpty!24463))
(check-sat b_and!22545 (not b_next!13497))
(get-model)

(declare-fun d!105259 () Bool)

(declare-fun e!462827 () Bool)

(assert (=> d!105259 e!462827))

(declare-fun res!565480 () Bool)

(assert (=> d!105259 (=> (not res!565480) (not e!462827))))

(declare-fun lt!376659 () ListLongMap!9011)

(declare-fun contains!4208 (ListLongMap!9011 (_ BitVec 64)) Bool)

(assert (=> d!105259 (= res!565480 (contains!4208 lt!376659 (_1!5097 lt!376628)))))

(declare-fun lt!376661 () List!16003)

(assert (=> d!105259 (= lt!376659 (ListLongMap!9012 lt!376661))))

(declare-fun lt!376660 () Unit!28435)

(declare-fun lt!376658 () Unit!28435)

(assert (=> d!105259 (= lt!376660 lt!376658)))

(declare-datatypes ((Option!420 0))(
  ( (Some!419 (v!10091 V!25277)) (None!418) )
))
(declare-fun getValueByKey!414 (List!16003 (_ BitVec 64)) Option!420)

(assert (=> d!105259 (= (getValueByKey!414 lt!376661 (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628)))))

(declare-fun lemmaContainsTupThenGetReturnValue!230 (List!16003 (_ BitVec 64) V!25277) Unit!28435)

(assert (=> d!105259 (= lt!376658 (lemmaContainsTupThenGetReturnValue!230 lt!376661 (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun insertStrictlySorted!268 (List!16003 (_ BitVec 64) V!25277) List!16003)

(assert (=> d!105259 (= lt!376661 (insertStrictlySorted!268 (toList!4521 lt!376626) (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(assert (=> d!105259 (= (+!1950 lt!376626 lt!376628) lt!376659)))

(declare-fun b!830080 () Bool)

(declare-fun res!565481 () Bool)

(assert (=> b!830080 (=> (not res!565481) (not e!462827))))

(assert (=> b!830080 (= res!565481 (= (getValueByKey!414 (toList!4521 lt!376659) (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628))))))

(declare-fun b!830081 () Bool)

(declare-fun contains!4209 (List!16003 tuple2!10174) Bool)

(assert (=> b!830081 (= e!462827 (contains!4209 (toList!4521 lt!376659) lt!376628))))

(assert (= (and d!105259 res!565480) b!830080))

(assert (= (and b!830080 res!565481) b!830081))

(declare-fun m!773263 () Bool)

(assert (=> d!105259 m!773263))

(declare-fun m!773265 () Bool)

(assert (=> d!105259 m!773265))

(declare-fun m!773267 () Bool)

(assert (=> d!105259 m!773267))

(declare-fun m!773269 () Bool)

(assert (=> d!105259 m!773269))

(declare-fun m!773271 () Bool)

(assert (=> b!830080 m!773271))

(declare-fun m!773273 () Bool)

(assert (=> b!830081 m!773273))

(assert (=> b!830044 d!105259))

(declare-fun b!830124 () Bool)

(declare-fun e!462866 () Bool)

(declare-fun e!462865 () Bool)

(assert (=> b!830124 (= e!462866 e!462865)))

(declare-fun res!565502 () Bool)

(declare-fun call!36239 () Bool)

(assert (=> b!830124 (= res!565502 call!36239)))

(assert (=> b!830124 (=> (not res!565502) (not e!462865))))

(declare-fun b!830125 () Bool)

(assert (=> b!830125 (= e!462866 (not call!36239))))

(declare-fun b!830126 () Bool)

(declare-fun res!565501 () Bool)

(declare-fun e!462856 () Bool)

(assert (=> b!830126 (=> (not res!565501) (not e!462856))))

(assert (=> b!830126 (= res!565501 e!462866)))

(declare-fun c!89796 () Bool)

(assert (=> b!830126 (= c!89796 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!830127 () Bool)

(declare-fun e!462861 () Unit!28435)

(declare-fun lt!376706 () Unit!28435)

(assert (=> b!830127 (= e!462861 lt!376706)))

(declare-fun lt!376714 () ListLongMap!9011)

(assert (=> b!830127 (= lt!376714 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376707 () (_ BitVec 64))

(assert (=> b!830127 (= lt!376707 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376708 () (_ BitVec 64))

(assert (=> b!830127 (= lt!376708 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376724 () Unit!28435)

(declare-fun addStillContains!323 (ListLongMap!9011 (_ BitVec 64) V!25277 (_ BitVec 64)) Unit!28435)

(assert (=> b!830127 (= lt!376724 (addStillContains!323 lt!376714 lt!376707 zeroValueAfter!34 lt!376708))))

(assert (=> b!830127 (contains!4208 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)) lt!376708)))

(declare-fun lt!376720 () Unit!28435)

(assert (=> b!830127 (= lt!376720 lt!376724)))

(declare-fun lt!376715 () ListLongMap!9011)

(assert (=> b!830127 (= lt!376715 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376712 () (_ BitVec 64))

(assert (=> b!830127 (= lt!376712 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376719 () (_ BitVec 64))

(assert (=> b!830127 (= lt!376719 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376711 () Unit!28435)

(declare-fun addApplyDifferent!323 (ListLongMap!9011 (_ BitVec 64) V!25277 (_ BitVec 64)) Unit!28435)

(assert (=> b!830127 (= lt!376711 (addApplyDifferent!323 lt!376715 lt!376712 minValue!754 lt!376719))))

(declare-fun apply!372 (ListLongMap!9011 (_ BitVec 64)) V!25277)

(assert (=> b!830127 (= (apply!372 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754)) lt!376719) (apply!372 lt!376715 lt!376719))))

(declare-fun lt!376710 () Unit!28435)

(assert (=> b!830127 (= lt!376710 lt!376711)))

(declare-fun lt!376709 () ListLongMap!9011)

(assert (=> b!830127 (= lt!376709 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376723 () (_ BitVec 64))

(assert (=> b!830127 (= lt!376723 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376722 () (_ BitVec 64))

(assert (=> b!830127 (= lt!376722 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376716 () Unit!28435)

(assert (=> b!830127 (= lt!376716 (addApplyDifferent!323 lt!376709 lt!376723 zeroValueAfter!34 lt!376722))))

(assert (=> b!830127 (= (apply!372 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34)) lt!376722) (apply!372 lt!376709 lt!376722))))

(declare-fun lt!376727 () Unit!28435)

(assert (=> b!830127 (= lt!376727 lt!376716)))

(declare-fun lt!376717 () ListLongMap!9011)

(assert (=> b!830127 (= lt!376717 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376718 () (_ BitVec 64))

(assert (=> b!830127 (= lt!376718 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376721 () (_ BitVec 64))

(assert (=> b!830127 (= lt!376721 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!830127 (= lt!376706 (addApplyDifferent!323 lt!376717 lt!376718 minValue!754 lt!376721))))

(assert (=> b!830127 (= (apply!372 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754)) lt!376721) (apply!372 lt!376717 lt!376721))))

(declare-fun b!830128 () Bool)

(declare-fun e!462860 () ListLongMap!9011)

(declare-fun call!36241 () ListLongMap!9011)

(assert (=> b!830128 (= e!462860 call!36241)))

(declare-fun bm!36234 () Bool)

(declare-fun lt!376713 () ListLongMap!9011)

(assert (=> bm!36234 (= call!36239 (contains!4208 lt!376713 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830129 () Bool)

(declare-fun e!462863 () Bool)

(assert (=> b!830129 (= e!462863 (= (apply!372 lt!376713 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun d!105261 () Bool)

(assert (=> d!105261 e!462856))

(declare-fun res!565504 () Bool)

(assert (=> d!105261 (=> (not res!565504) (not e!462856))))

(assert (=> d!105261 (= res!565504 (or (bvsge #b00000000000000000000000000000000 (size!22732 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))))

(declare-fun lt!376726 () ListLongMap!9011)

(assert (=> d!105261 (= lt!376713 lt!376726)))

(declare-fun lt!376725 () Unit!28435)

(assert (=> d!105261 (= lt!376725 e!462861)))

(declare-fun c!89795 () Bool)

(declare-fun e!462857 () Bool)

(assert (=> d!105261 (= c!89795 e!462857)))

(declare-fun res!565508 () Bool)

(assert (=> d!105261 (=> (not res!565508) (not e!462857))))

(assert (=> d!105261 (= res!565508 (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun e!462855 () ListLongMap!9011)

(assert (=> d!105261 (= lt!376726 e!462855)))

(declare-fun c!89798 () Bool)

(assert (=> d!105261 (= c!89798 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105261 (validMask!0 mask!1312)))

(assert (=> d!105261 (= (getCurrentListMap!2592 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376713)))

(declare-fun b!830130 () Bool)

(declare-fun e!462862 () ListLongMap!9011)

(assert (=> b!830130 (= e!462855 e!462862)))

(declare-fun c!89797 () Bool)

(assert (=> b!830130 (= c!89797 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!36243 () ListLongMap!9011)

(declare-fun bm!36235 () Bool)

(assert (=> bm!36235 (= call!36243 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun bm!36236 () Bool)

(declare-fun call!36237 () ListLongMap!9011)

(declare-fun call!36238 () ListLongMap!9011)

(assert (=> bm!36236 (= call!36237 call!36238)))

(declare-fun b!830131 () Bool)

(assert (=> b!830131 (= e!462862 call!36237)))

(declare-fun b!830132 () Bool)

(assert (=> b!830132 (= e!462860 call!36237)))

(declare-fun bm!36237 () Bool)

(declare-fun call!36240 () ListLongMap!9011)

(assert (=> bm!36237 (= call!36241 call!36240)))

(declare-fun b!830133 () Bool)

(declare-fun Unit!28437 () Unit!28435)

(assert (=> b!830133 (= e!462861 Unit!28437)))

(declare-fun b!830134 () Bool)

(declare-fun e!462859 () Bool)

(assert (=> b!830134 (= e!462856 e!462859)))

(declare-fun c!89794 () Bool)

(assert (=> b!830134 (= c!89794 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!830135 () Bool)

(assert (=> b!830135 (= e!462859 e!462863)))

(declare-fun res!565503 () Bool)

(declare-fun call!36242 () Bool)

(assert (=> b!830135 (= res!565503 call!36242)))

(assert (=> b!830135 (=> (not res!565503) (not e!462863))))

(declare-fun b!830136 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!830136 (= e!462857 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830137 () Bool)

(declare-fun res!565507 () Bool)

(assert (=> b!830137 (=> (not res!565507) (not e!462856))))

(declare-fun e!462864 () Bool)

(assert (=> b!830137 (= res!565507 e!462864)))

(declare-fun res!565506 () Bool)

(assert (=> b!830137 (=> res!565506 e!462864)))

(declare-fun e!462854 () Bool)

(assert (=> b!830137 (= res!565506 (not e!462854))))

(declare-fun res!565500 () Bool)

(assert (=> b!830137 (=> (not res!565500) (not e!462854))))

(assert (=> b!830137 (= res!565500 (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun b!830138 () Bool)

(declare-fun e!462858 () Bool)

(assert (=> b!830138 (= e!462864 e!462858)))

(declare-fun res!565505 () Bool)

(assert (=> b!830138 (=> (not res!565505) (not e!462858))))

(assert (=> b!830138 (= res!565505 (contains!4208 lt!376713 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830138 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun b!830139 () Bool)

(assert (=> b!830139 (= e!462855 (+!1950 call!36238 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!830140 () Bool)

(assert (=> b!830140 (= e!462854 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830141 () Bool)

(assert (=> b!830141 (= e!462865 (= (apply!372 lt!376713 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun bm!36238 () Bool)

(assert (=> bm!36238 (= call!36238 (+!1950 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241)) (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!830142 () Bool)

(assert (=> b!830142 (= e!462859 (not call!36242))))

(declare-fun bm!36239 () Bool)

(assert (=> bm!36239 (= call!36242 (contains!4208 lt!376713 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!36240 () Bool)

(assert (=> bm!36240 (= call!36240 call!36243)))

(declare-fun b!830143 () Bool)

(declare-fun c!89799 () Bool)

(assert (=> b!830143 (= c!89799 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!830143 (= e!462862 e!462860)))

(declare-fun b!830144 () Bool)

(declare-fun get!11822 (ValueCell!7188 V!25277) V!25277)

(declare-fun dynLambda!982 (Int (_ BitVec 64)) V!25277)

(assert (=> b!830144 (= e!462858 (= (apply!372 lt!376713 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!830144 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22733 _values!788)))))

(assert (=> b!830144 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(assert (= (and d!105261 c!89798) b!830139))

(assert (= (and d!105261 (not c!89798)) b!830130))

(assert (= (and b!830130 c!89797) b!830131))

(assert (= (and b!830130 (not c!89797)) b!830143))

(assert (= (and b!830143 c!89799) b!830132))

(assert (= (and b!830143 (not c!89799)) b!830128))

(assert (= (or b!830132 b!830128) bm!36237))

(assert (= (or b!830131 bm!36237) bm!36240))

(assert (= (or b!830131 b!830132) bm!36236))

(assert (= (or b!830139 bm!36240) bm!36235))

(assert (= (or b!830139 bm!36236) bm!36238))

(assert (= (and d!105261 res!565508) b!830136))

(assert (= (and d!105261 c!89795) b!830127))

(assert (= (and d!105261 (not c!89795)) b!830133))

(assert (= (and d!105261 res!565504) b!830137))

(assert (= (and b!830137 res!565500) b!830140))

(assert (= (and b!830137 (not res!565506)) b!830138))

(assert (= (and b!830138 res!565505) b!830144))

(assert (= (and b!830137 res!565507) b!830126))

(assert (= (and b!830126 c!89796) b!830124))

(assert (= (and b!830126 (not c!89796)) b!830125))

(assert (= (and b!830124 res!565502) b!830141))

(assert (= (or b!830124 b!830125) bm!36234))

(assert (= (and b!830126 res!565501) b!830134))

(assert (= (and b!830134 c!89794) b!830135))

(assert (= (and b!830134 (not c!89794)) b!830142))

(assert (= (and b!830135 res!565503) b!830129))

(assert (= (or b!830135 b!830142) bm!36239))

(declare-fun b_lambda!11377 () Bool)

(assert (=> (not b_lambda!11377) (not b!830144)))

(declare-fun t!22381 () Bool)

(declare-fun tb!4233 () Bool)

(assert (=> (and start!71512 (= defaultEntry!796 defaultEntry!796) t!22381) tb!4233))

(declare-fun result!8023 () Bool)

(assert (=> tb!4233 (= result!8023 tp_is_empty!15207)))

(assert (=> b!830144 t!22381))

(declare-fun b_and!22549 () Bool)

(assert (= b_and!22545 (and (=> t!22381 result!8023) b_and!22549)))

(declare-fun m!773275 () Bool)

(assert (=> b!830129 m!773275))

(assert (=> bm!36235 m!773223))

(declare-fun m!773277 () Bool)

(assert (=> b!830138 m!773277))

(assert (=> b!830138 m!773277))

(declare-fun m!773279 () Bool)

(assert (=> b!830138 m!773279))

(assert (=> b!830140 m!773277))

(assert (=> b!830140 m!773277))

(declare-fun m!773281 () Bool)

(assert (=> b!830140 m!773281))

(declare-fun m!773283 () Bool)

(assert (=> bm!36238 m!773283))

(declare-fun m!773285 () Bool)

(assert (=> b!830141 m!773285))

(assert (=> b!830136 m!773277))

(assert (=> b!830136 m!773277))

(assert (=> b!830136 m!773281))

(declare-fun m!773287 () Bool)

(assert (=> bm!36239 m!773287))

(declare-fun m!773289 () Bool)

(assert (=> bm!36234 m!773289))

(assert (=> b!830144 m!773277))

(declare-fun m!773291 () Bool)

(assert (=> b!830144 m!773291))

(declare-fun m!773293 () Bool)

(assert (=> b!830144 m!773293))

(assert (=> b!830144 m!773277))

(declare-fun m!773295 () Bool)

(assert (=> b!830144 m!773295))

(assert (=> b!830144 m!773291))

(assert (=> b!830144 m!773293))

(declare-fun m!773297 () Bool)

(assert (=> b!830144 m!773297))

(declare-fun m!773299 () Bool)

(assert (=> b!830127 m!773299))

(assert (=> b!830127 m!773277))

(assert (=> b!830127 m!773223))

(declare-fun m!773301 () Bool)

(assert (=> b!830127 m!773301))

(declare-fun m!773303 () Bool)

(assert (=> b!830127 m!773303))

(declare-fun m!773305 () Bool)

(assert (=> b!830127 m!773305))

(declare-fun m!773307 () Bool)

(assert (=> b!830127 m!773307))

(declare-fun m!773309 () Bool)

(assert (=> b!830127 m!773309))

(declare-fun m!773311 () Bool)

(assert (=> b!830127 m!773311))

(declare-fun m!773313 () Bool)

(assert (=> b!830127 m!773313))

(declare-fun m!773315 () Bool)

(assert (=> b!830127 m!773315))

(declare-fun m!773317 () Bool)

(assert (=> b!830127 m!773317))

(assert (=> b!830127 m!773303))

(declare-fun m!773319 () Bool)

(assert (=> b!830127 m!773319))

(assert (=> b!830127 m!773309))

(declare-fun m!773321 () Bool)

(assert (=> b!830127 m!773321))

(declare-fun m!773323 () Bool)

(assert (=> b!830127 m!773323))

(assert (=> b!830127 m!773315))

(declare-fun m!773325 () Bool)

(assert (=> b!830127 m!773325))

(assert (=> b!830127 m!773311))

(declare-fun m!773327 () Bool)

(assert (=> b!830127 m!773327))

(assert (=> d!105261 m!773209))

(declare-fun m!773329 () Bool)

(assert (=> b!830139 m!773329))

(assert (=> b!830044 d!105261))

(declare-fun d!105263 () Bool)

(declare-fun e!462867 () Bool)

(assert (=> d!105263 e!462867))

(declare-fun res!565509 () Bool)

(assert (=> d!105263 (=> (not res!565509) (not e!462867))))

(declare-fun lt!376729 () ListLongMap!9011)

(assert (=> d!105263 (= res!565509 (contains!4208 lt!376729 (_1!5097 lt!376622)))))

(declare-fun lt!376731 () List!16003)

(assert (=> d!105263 (= lt!376729 (ListLongMap!9012 lt!376731))))

(declare-fun lt!376730 () Unit!28435)

(declare-fun lt!376728 () Unit!28435)

(assert (=> d!105263 (= lt!376730 lt!376728)))

(assert (=> d!105263 (= (getValueByKey!414 lt!376731 (_1!5097 lt!376622)) (Some!419 (_2!5097 lt!376622)))))

(assert (=> d!105263 (= lt!376728 (lemmaContainsTupThenGetReturnValue!230 lt!376731 (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(assert (=> d!105263 (= lt!376731 (insertStrictlySorted!268 (toList!4521 lt!376626) (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(assert (=> d!105263 (= (+!1950 lt!376626 lt!376622) lt!376729)))

(declare-fun b!830147 () Bool)

(declare-fun res!565510 () Bool)

(assert (=> b!830147 (=> (not res!565510) (not e!462867))))

(assert (=> b!830147 (= res!565510 (= (getValueByKey!414 (toList!4521 lt!376729) (_1!5097 lt!376622)) (Some!419 (_2!5097 lt!376622))))))

(declare-fun b!830148 () Bool)

(assert (=> b!830148 (= e!462867 (contains!4209 (toList!4521 lt!376729) lt!376622))))

(assert (= (and d!105263 res!565509) b!830147))

(assert (= (and b!830147 res!565510) b!830148))

(declare-fun m!773331 () Bool)

(assert (=> d!105263 m!773331))

(declare-fun m!773333 () Bool)

(assert (=> d!105263 m!773333))

(declare-fun m!773335 () Bool)

(assert (=> d!105263 m!773335))

(declare-fun m!773337 () Bool)

(assert (=> d!105263 m!773337))

(declare-fun m!773339 () Bool)

(assert (=> b!830147 m!773339))

(declare-fun m!773341 () Bool)

(assert (=> b!830148 m!773341))

(assert (=> b!830044 d!105263))

(declare-fun d!105265 () Bool)

(declare-fun e!462868 () Bool)

(assert (=> d!105265 e!462868))

(declare-fun res!565511 () Bool)

(assert (=> d!105265 (=> (not res!565511) (not e!462868))))

(declare-fun lt!376733 () ListLongMap!9011)

(assert (=> d!105265 (= res!565511 (contains!4208 lt!376733 (_1!5097 lt!376628)))))

(declare-fun lt!376735 () List!16003)

(assert (=> d!105265 (= lt!376733 (ListLongMap!9012 lt!376735))))

(declare-fun lt!376734 () Unit!28435)

(declare-fun lt!376732 () Unit!28435)

(assert (=> d!105265 (= lt!376734 lt!376732)))

(assert (=> d!105265 (= (getValueByKey!414 lt!376735 (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628)))))

(assert (=> d!105265 (= lt!376732 (lemmaContainsTupThenGetReturnValue!230 lt!376735 (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(assert (=> d!105265 (= lt!376735 (insertStrictlySorted!268 (toList!4521 (+!1950 lt!376626 lt!376622)) (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(assert (=> d!105265 (= (+!1950 (+!1950 lt!376626 lt!376622) lt!376628) lt!376733)))

(declare-fun b!830149 () Bool)

(declare-fun res!565512 () Bool)

(assert (=> b!830149 (=> (not res!565512) (not e!462868))))

(assert (=> b!830149 (= res!565512 (= (getValueByKey!414 (toList!4521 lt!376733) (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628))))))

(declare-fun b!830150 () Bool)

(assert (=> b!830150 (= e!462868 (contains!4209 (toList!4521 lt!376733) lt!376628))))

(assert (= (and d!105265 res!565511) b!830149))

(assert (= (and b!830149 res!565512) b!830150))

(declare-fun m!773343 () Bool)

(assert (=> d!105265 m!773343))

(declare-fun m!773345 () Bool)

(assert (=> d!105265 m!773345))

(declare-fun m!773347 () Bool)

(assert (=> d!105265 m!773347))

(declare-fun m!773349 () Bool)

(assert (=> d!105265 m!773349))

(declare-fun m!773351 () Bool)

(assert (=> b!830149 m!773351))

(declare-fun m!773353 () Bool)

(assert (=> b!830150 m!773353))

(assert (=> b!830044 d!105265))

(declare-fun d!105267 () Bool)

(declare-fun e!462869 () Bool)

(assert (=> d!105267 e!462869))

(declare-fun res!565513 () Bool)

(assert (=> d!105267 (=> (not res!565513) (not e!462869))))

(declare-fun lt!376737 () ListLongMap!9011)

(assert (=> d!105267 (= res!565513 (contains!4208 lt!376737 (_1!5097 lt!376622)))))

(declare-fun lt!376739 () List!16003)

(assert (=> d!105267 (= lt!376737 (ListLongMap!9012 lt!376739))))

(declare-fun lt!376738 () Unit!28435)

(declare-fun lt!376736 () Unit!28435)

(assert (=> d!105267 (= lt!376738 lt!376736)))

(assert (=> d!105267 (= (getValueByKey!414 lt!376739 (_1!5097 lt!376622)) (Some!419 (_2!5097 lt!376622)))))

(assert (=> d!105267 (= lt!376736 (lemmaContainsTupThenGetReturnValue!230 lt!376739 (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(assert (=> d!105267 (= lt!376739 (insertStrictlySorted!268 (toList!4521 (+!1950 lt!376626 lt!376628)) (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(assert (=> d!105267 (= (+!1950 (+!1950 lt!376626 lt!376628) lt!376622) lt!376737)))

(declare-fun b!830151 () Bool)

(declare-fun res!565514 () Bool)

(assert (=> b!830151 (=> (not res!565514) (not e!462869))))

(assert (=> b!830151 (= res!565514 (= (getValueByKey!414 (toList!4521 lt!376737) (_1!5097 lt!376622)) (Some!419 (_2!5097 lt!376622))))))

(declare-fun b!830152 () Bool)

(assert (=> b!830152 (= e!462869 (contains!4209 (toList!4521 lt!376737) lt!376622))))

(assert (= (and d!105267 res!565513) b!830151))

(assert (= (and b!830151 res!565514) b!830152))

(declare-fun m!773355 () Bool)

(assert (=> d!105267 m!773355))

(declare-fun m!773357 () Bool)

(assert (=> d!105267 m!773357))

(declare-fun m!773359 () Bool)

(assert (=> d!105267 m!773359))

(declare-fun m!773361 () Bool)

(assert (=> d!105267 m!773361))

(declare-fun m!773363 () Bool)

(assert (=> b!830151 m!773363))

(declare-fun m!773365 () Bool)

(assert (=> b!830152 m!773365))

(assert (=> b!830044 d!105267))

(declare-fun b!830153 () Bool)

(declare-fun e!462882 () Bool)

(declare-fun e!462881 () Bool)

(assert (=> b!830153 (= e!462882 e!462881)))

(declare-fun res!565517 () Bool)

(declare-fun call!36246 () Bool)

(assert (=> b!830153 (= res!565517 call!36246)))

(assert (=> b!830153 (=> (not res!565517) (not e!462881))))

(declare-fun b!830154 () Bool)

(assert (=> b!830154 (= e!462882 (not call!36246))))

(declare-fun b!830155 () Bool)

(declare-fun res!565516 () Bool)

(declare-fun e!462872 () Bool)

(assert (=> b!830155 (=> (not res!565516) (not e!462872))))

(assert (=> b!830155 (= res!565516 e!462882)))

(declare-fun c!89802 () Bool)

(assert (=> b!830155 (= c!89802 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!830156 () Bool)

(declare-fun e!462877 () Unit!28435)

(declare-fun lt!376740 () Unit!28435)

(assert (=> b!830156 (= e!462877 lt!376740)))

(declare-fun lt!376748 () ListLongMap!9011)

(assert (=> b!830156 (= lt!376748 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376741 () (_ BitVec 64))

(assert (=> b!830156 (= lt!376741 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376742 () (_ BitVec 64))

(assert (=> b!830156 (= lt!376742 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376758 () Unit!28435)

(assert (=> b!830156 (= lt!376758 (addStillContains!323 lt!376748 lt!376741 zeroValueBefore!34 lt!376742))))

(assert (=> b!830156 (contains!4208 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)) lt!376742)))

(declare-fun lt!376754 () Unit!28435)

(assert (=> b!830156 (= lt!376754 lt!376758)))

(declare-fun lt!376749 () ListLongMap!9011)

(assert (=> b!830156 (= lt!376749 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376746 () (_ BitVec 64))

(assert (=> b!830156 (= lt!376746 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376753 () (_ BitVec 64))

(assert (=> b!830156 (= lt!376753 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376745 () Unit!28435)

(assert (=> b!830156 (= lt!376745 (addApplyDifferent!323 lt!376749 lt!376746 minValue!754 lt!376753))))

(assert (=> b!830156 (= (apply!372 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754)) lt!376753) (apply!372 lt!376749 lt!376753))))

(declare-fun lt!376744 () Unit!28435)

(assert (=> b!830156 (= lt!376744 lt!376745)))

(declare-fun lt!376743 () ListLongMap!9011)

(assert (=> b!830156 (= lt!376743 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376757 () (_ BitVec 64))

(assert (=> b!830156 (= lt!376757 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376756 () (_ BitVec 64))

(assert (=> b!830156 (= lt!376756 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376750 () Unit!28435)

(assert (=> b!830156 (= lt!376750 (addApplyDifferent!323 lt!376743 lt!376757 zeroValueBefore!34 lt!376756))))

(assert (=> b!830156 (= (apply!372 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34)) lt!376756) (apply!372 lt!376743 lt!376756))))

(declare-fun lt!376761 () Unit!28435)

(assert (=> b!830156 (= lt!376761 lt!376750)))

(declare-fun lt!376751 () ListLongMap!9011)

(assert (=> b!830156 (= lt!376751 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376752 () (_ BitVec 64))

(assert (=> b!830156 (= lt!376752 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376755 () (_ BitVec 64))

(assert (=> b!830156 (= lt!376755 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!830156 (= lt!376740 (addApplyDifferent!323 lt!376751 lt!376752 minValue!754 lt!376755))))

(assert (=> b!830156 (= (apply!372 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754)) lt!376755) (apply!372 lt!376751 lt!376755))))

(declare-fun b!830157 () Bool)

(declare-fun e!462876 () ListLongMap!9011)

(declare-fun call!36248 () ListLongMap!9011)

(assert (=> b!830157 (= e!462876 call!36248)))

(declare-fun bm!36241 () Bool)

(declare-fun lt!376747 () ListLongMap!9011)

(assert (=> bm!36241 (= call!36246 (contains!4208 lt!376747 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830158 () Bool)

(declare-fun e!462879 () Bool)

(assert (=> b!830158 (= e!462879 (= (apply!372 lt!376747 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun d!105269 () Bool)

(assert (=> d!105269 e!462872))

(declare-fun res!565519 () Bool)

(assert (=> d!105269 (=> (not res!565519) (not e!462872))))

(assert (=> d!105269 (= res!565519 (or (bvsge #b00000000000000000000000000000000 (size!22732 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))))

(declare-fun lt!376760 () ListLongMap!9011)

(assert (=> d!105269 (= lt!376747 lt!376760)))

(declare-fun lt!376759 () Unit!28435)

(assert (=> d!105269 (= lt!376759 e!462877)))

(declare-fun c!89801 () Bool)

(declare-fun e!462873 () Bool)

(assert (=> d!105269 (= c!89801 e!462873)))

(declare-fun res!565523 () Bool)

(assert (=> d!105269 (=> (not res!565523) (not e!462873))))

(assert (=> d!105269 (= res!565523 (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun e!462871 () ListLongMap!9011)

(assert (=> d!105269 (= lt!376760 e!462871)))

(declare-fun c!89804 () Bool)

(assert (=> d!105269 (= c!89804 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105269 (validMask!0 mask!1312)))

(assert (=> d!105269 (= (getCurrentListMap!2592 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376747)))

(declare-fun b!830159 () Bool)

(declare-fun e!462878 () ListLongMap!9011)

(assert (=> b!830159 (= e!462871 e!462878)))

(declare-fun c!89803 () Bool)

(assert (=> b!830159 (= c!89803 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!36250 () ListLongMap!9011)

(declare-fun bm!36242 () Bool)

(assert (=> bm!36242 (= call!36250 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun bm!36243 () Bool)

(declare-fun call!36244 () ListLongMap!9011)

(declare-fun call!36245 () ListLongMap!9011)

(assert (=> bm!36243 (= call!36244 call!36245)))

(declare-fun b!830160 () Bool)

(assert (=> b!830160 (= e!462878 call!36244)))

(declare-fun b!830161 () Bool)

(assert (=> b!830161 (= e!462876 call!36244)))

(declare-fun bm!36244 () Bool)

(declare-fun call!36247 () ListLongMap!9011)

(assert (=> bm!36244 (= call!36248 call!36247)))

(declare-fun b!830162 () Bool)

(declare-fun Unit!28438 () Unit!28435)

(assert (=> b!830162 (= e!462877 Unit!28438)))

(declare-fun b!830163 () Bool)

(declare-fun e!462875 () Bool)

(assert (=> b!830163 (= e!462872 e!462875)))

(declare-fun c!89800 () Bool)

(assert (=> b!830163 (= c!89800 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!830164 () Bool)

(assert (=> b!830164 (= e!462875 e!462879)))

(declare-fun res!565518 () Bool)

(declare-fun call!36249 () Bool)

(assert (=> b!830164 (= res!565518 call!36249)))

(assert (=> b!830164 (=> (not res!565518) (not e!462879))))

(declare-fun b!830165 () Bool)

(assert (=> b!830165 (= e!462873 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830166 () Bool)

(declare-fun res!565522 () Bool)

(assert (=> b!830166 (=> (not res!565522) (not e!462872))))

(declare-fun e!462880 () Bool)

(assert (=> b!830166 (= res!565522 e!462880)))

(declare-fun res!565521 () Bool)

(assert (=> b!830166 (=> res!565521 e!462880)))

(declare-fun e!462870 () Bool)

(assert (=> b!830166 (= res!565521 (not e!462870))))

(declare-fun res!565515 () Bool)

(assert (=> b!830166 (=> (not res!565515) (not e!462870))))

(assert (=> b!830166 (= res!565515 (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun b!830167 () Bool)

(declare-fun e!462874 () Bool)

(assert (=> b!830167 (= e!462880 e!462874)))

(declare-fun res!565520 () Bool)

(assert (=> b!830167 (=> (not res!565520) (not e!462874))))

(assert (=> b!830167 (= res!565520 (contains!4208 lt!376747 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830167 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun b!830168 () Bool)

(assert (=> b!830168 (= e!462871 (+!1950 call!36245 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!830169 () Bool)

(assert (=> b!830169 (= e!462870 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830170 () Bool)

(assert (=> b!830170 (= e!462881 (= (apply!372 lt!376747 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun bm!36245 () Bool)

(assert (=> bm!36245 (= call!36245 (+!1950 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248)) (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!830171 () Bool)

(assert (=> b!830171 (= e!462875 (not call!36249))))

(declare-fun bm!36246 () Bool)

(assert (=> bm!36246 (= call!36249 (contains!4208 lt!376747 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!36247 () Bool)

(assert (=> bm!36247 (= call!36247 call!36250)))

(declare-fun b!830172 () Bool)

(declare-fun c!89805 () Bool)

(assert (=> b!830172 (= c!89805 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!830172 (= e!462878 e!462876)))

(declare-fun b!830173 () Bool)

(assert (=> b!830173 (= e!462874 (= (apply!372 lt!376747 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!830173 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22733 _values!788)))))

(assert (=> b!830173 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(assert (= (and d!105269 c!89804) b!830168))

(assert (= (and d!105269 (not c!89804)) b!830159))

(assert (= (and b!830159 c!89803) b!830160))

(assert (= (and b!830159 (not c!89803)) b!830172))

(assert (= (and b!830172 c!89805) b!830161))

(assert (= (and b!830172 (not c!89805)) b!830157))

(assert (= (or b!830161 b!830157) bm!36244))

(assert (= (or b!830160 bm!36244) bm!36247))

(assert (= (or b!830160 b!830161) bm!36243))

(assert (= (or b!830168 bm!36247) bm!36242))

(assert (= (or b!830168 bm!36243) bm!36245))

(assert (= (and d!105269 res!565523) b!830165))

(assert (= (and d!105269 c!89801) b!830156))

(assert (= (and d!105269 (not c!89801)) b!830162))

(assert (= (and d!105269 res!565519) b!830166))

(assert (= (and b!830166 res!565515) b!830169))

(assert (= (and b!830166 (not res!565521)) b!830167))

(assert (= (and b!830167 res!565520) b!830173))

(assert (= (and b!830166 res!565522) b!830155))

(assert (= (and b!830155 c!89802) b!830153))

(assert (= (and b!830155 (not c!89802)) b!830154))

(assert (= (and b!830153 res!565517) b!830170))

(assert (= (or b!830153 b!830154) bm!36241))

(assert (= (and b!830155 res!565516) b!830163))

(assert (= (and b!830163 c!89800) b!830164))

(assert (= (and b!830163 (not c!89800)) b!830171))

(assert (= (and b!830164 res!565518) b!830158))

(assert (= (or b!830164 b!830171) bm!36246))

(declare-fun b_lambda!11379 () Bool)

(assert (=> (not b_lambda!11379) (not b!830173)))

(assert (=> b!830173 t!22381))

(declare-fun b_and!22551 () Bool)

(assert (= b_and!22549 (and (=> t!22381 result!8023) b_and!22551)))

(declare-fun m!773367 () Bool)

(assert (=> b!830158 m!773367))

(assert (=> bm!36242 m!773225))

(assert (=> b!830167 m!773277))

(assert (=> b!830167 m!773277))

(declare-fun m!773369 () Bool)

(assert (=> b!830167 m!773369))

(assert (=> b!830169 m!773277))

(assert (=> b!830169 m!773277))

(assert (=> b!830169 m!773281))

(declare-fun m!773371 () Bool)

(assert (=> bm!36245 m!773371))

(declare-fun m!773373 () Bool)

(assert (=> b!830170 m!773373))

(assert (=> b!830165 m!773277))

(assert (=> b!830165 m!773277))

(assert (=> b!830165 m!773281))

(declare-fun m!773375 () Bool)

(assert (=> bm!36246 m!773375))

(declare-fun m!773377 () Bool)

(assert (=> bm!36241 m!773377))

(assert (=> b!830173 m!773277))

(assert (=> b!830173 m!773291))

(assert (=> b!830173 m!773293))

(assert (=> b!830173 m!773277))

(declare-fun m!773379 () Bool)

(assert (=> b!830173 m!773379))

(assert (=> b!830173 m!773291))

(assert (=> b!830173 m!773293))

(assert (=> b!830173 m!773297))

(declare-fun m!773381 () Bool)

(assert (=> b!830156 m!773381))

(assert (=> b!830156 m!773277))

(assert (=> b!830156 m!773225))

(declare-fun m!773383 () Bool)

(assert (=> b!830156 m!773383))

(declare-fun m!773385 () Bool)

(assert (=> b!830156 m!773385))

(declare-fun m!773387 () Bool)

(assert (=> b!830156 m!773387))

(declare-fun m!773389 () Bool)

(assert (=> b!830156 m!773389))

(declare-fun m!773391 () Bool)

(assert (=> b!830156 m!773391))

(declare-fun m!773393 () Bool)

(assert (=> b!830156 m!773393))

(declare-fun m!773395 () Bool)

(assert (=> b!830156 m!773395))

(declare-fun m!773397 () Bool)

(assert (=> b!830156 m!773397))

(declare-fun m!773399 () Bool)

(assert (=> b!830156 m!773399))

(assert (=> b!830156 m!773385))

(declare-fun m!773401 () Bool)

(assert (=> b!830156 m!773401))

(assert (=> b!830156 m!773391))

(declare-fun m!773403 () Bool)

(assert (=> b!830156 m!773403))

(declare-fun m!773405 () Bool)

(assert (=> b!830156 m!773405))

(assert (=> b!830156 m!773397))

(declare-fun m!773407 () Bool)

(assert (=> b!830156 m!773407))

(assert (=> b!830156 m!773393))

(declare-fun m!773409 () Bool)

(assert (=> b!830156 m!773409))

(assert (=> d!105269 m!773209))

(declare-fun m!773411 () Bool)

(assert (=> b!830168 m!773411))

(assert (=> b!830044 d!105269))

(declare-fun bm!36250 () Bool)

(declare-fun call!36253 () Bool)

(declare-fun c!89808 () Bool)

(assert (=> bm!36250 (= call!36253 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)))))

(declare-fun b!830184 () Bool)

(declare-fun e!462892 () Bool)

(declare-fun e!462891 () Bool)

(assert (=> b!830184 (= e!462892 e!462891)))

(assert (=> b!830184 (= c!89808 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830185 () Bool)

(declare-fun e!462893 () Bool)

(declare-fun contains!4210 (List!16004 (_ BitVec 64)) Bool)

(assert (=> b!830185 (= e!462893 (contains!4210 Nil!16001 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105271 () Bool)

(declare-fun res!565530 () Bool)

(declare-fun e!462894 () Bool)

(assert (=> d!105271 (=> res!565530 e!462894)))

(assert (=> d!105271 (= res!565530 (bvsge #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(assert (=> d!105271 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16001) e!462894)))

(declare-fun b!830186 () Bool)

(assert (=> b!830186 (= e!462894 e!462892)))

(declare-fun res!565531 () Bool)

(assert (=> b!830186 (=> (not res!565531) (not e!462892))))

(assert (=> b!830186 (= res!565531 (not e!462893))))

(declare-fun res!565532 () Bool)

(assert (=> b!830186 (=> (not res!565532) (not e!462893))))

(assert (=> b!830186 (= res!565532 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830187 () Bool)

(assert (=> b!830187 (= e!462891 call!36253)))

(declare-fun b!830188 () Bool)

(assert (=> b!830188 (= e!462891 call!36253)))

(assert (= (and d!105271 (not res!565530)) b!830186))

(assert (= (and b!830186 res!565532) b!830185))

(assert (= (and b!830186 res!565531) b!830184))

(assert (= (and b!830184 c!89808) b!830187))

(assert (= (and b!830184 (not c!89808)) b!830188))

(assert (= (or b!830187 b!830188) bm!36250))

(assert (=> bm!36250 m!773277))

(declare-fun m!773413 () Bool)

(assert (=> bm!36250 m!773413))

(assert (=> b!830184 m!773277))

(assert (=> b!830184 m!773277))

(assert (=> b!830184 m!773281))

(assert (=> b!830185 m!773277))

(assert (=> b!830185 m!773277))

(declare-fun m!773415 () Bool)

(assert (=> b!830185 m!773415))

(assert (=> b!830186 m!773277))

(assert (=> b!830186 m!773277))

(assert (=> b!830186 m!773281))

(assert (=> b!830047 d!105271))

(declare-fun d!105273 () Bool)

(assert (=> d!105273 (= (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376764 () Unit!28435)

(declare-fun choose!1424 (array!46558 array!46560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25277 V!25277 V!25277 V!25277 (_ BitVec 32) Int) Unit!28435)

(assert (=> d!105273 (= lt!376764 (choose!1424 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!105273 (validMask!0 mask!1312)))

(assert (=> d!105273 (= (lemmaNoChangeToArrayThenSameMapNoExtras!611 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376764)))

(declare-fun bs!23175 () Bool)

(assert (= bs!23175 d!105273))

(assert (=> bs!23175 m!773225))

(assert (=> bs!23175 m!773223))

(declare-fun m!773417 () Bool)

(assert (=> bs!23175 m!773417))

(assert (=> bs!23175 m!773209))

(assert (=> b!830048 d!105273))

(declare-fun b!830213 () Bool)

(declare-fun e!462914 () Bool)

(declare-fun e!462910 () Bool)

(assert (=> b!830213 (= e!462914 e!462910)))

(declare-fun c!89818 () Bool)

(declare-fun e!462912 () Bool)

(assert (=> b!830213 (= c!89818 e!462912)))

(declare-fun res!565542 () Bool)

(assert (=> b!830213 (=> (not res!565542) (not e!462912))))

(assert (=> b!830213 (= res!565542 (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun b!830214 () Bool)

(declare-fun res!565544 () Bool)

(assert (=> b!830214 (=> (not res!565544) (not e!462914))))

(declare-fun lt!376779 () ListLongMap!9011)

(assert (=> b!830214 (= res!565544 (not (contains!4208 lt!376779 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!830215 () Bool)

(declare-fun e!462911 () Bool)

(assert (=> b!830215 (= e!462910 e!462911)))

(assert (=> b!830215 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun res!565541 () Bool)

(assert (=> b!830215 (= res!565541 (contains!4208 lt!376779 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830215 (=> (not res!565541) (not e!462911))))

(declare-fun b!830216 () Bool)

(declare-fun e!462915 () Bool)

(declare-fun isEmpty!659 (ListLongMap!9011) Bool)

(assert (=> b!830216 (= e!462915 (isEmpty!659 lt!376779))))

(declare-fun b!830217 () Bool)

(declare-fun lt!376782 () Unit!28435)

(declare-fun lt!376781 () Unit!28435)

(assert (=> b!830217 (= lt!376782 lt!376781)))

(declare-fun lt!376784 () ListLongMap!9011)

(declare-fun lt!376785 () (_ BitVec 64))

(declare-fun lt!376783 () V!25277)

(declare-fun lt!376780 () (_ BitVec 64))

(assert (=> b!830217 (not (contains!4208 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)) lt!376780))))

(declare-fun addStillNotContains!199 (ListLongMap!9011 (_ BitVec 64) V!25277 (_ BitVec 64)) Unit!28435)

(assert (=> b!830217 (= lt!376781 (addStillNotContains!199 lt!376784 lt!376785 lt!376783 lt!376780))))

(assert (=> b!830217 (= lt!376780 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!830217 (= lt!376783 (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!830217 (= lt!376785 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36256 () ListLongMap!9011)

(assert (=> b!830217 (= lt!376784 call!36256)))

(declare-fun e!462909 () ListLongMap!9011)

(assert (=> b!830217 (= e!462909 (+!1950 call!36256 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!830218 () Bool)

(assert (=> b!830218 (= e!462912 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830218 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!36253 () Bool)

(assert (=> bm!36253 (= call!36256 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!830219 () Bool)

(declare-fun e!462913 () ListLongMap!9011)

(assert (=> b!830219 (= e!462913 (ListLongMap!9012 Nil!16000))))

(declare-fun b!830220 () Bool)

(assert (=> b!830220 (= e!462909 call!36256)))

(declare-fun b!830221 () Bool)

(assert (=> b!830221 (= e!462915 (= lt!376779 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!105275 () Bool)

(assert (=> d!105275 e!462914))

(declare-fun res!565543 () Bool)

(assert (=> d!105275 (=> (not res!565543) (not e!462914))))

(assert (=> d!105275 (= res!565543 (not (contains!4208 lt!376779 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105275 (= lt!376779 e!462913)))

(declare-fun c!89820 () Bool)

(assert (=> d!105275 (= c!89820 (bvsge #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(assert (=> d!105275 (validMask!0 mask!1312)))

(assert (=> d!105275 (= (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376779)))

(declare-fun b!830222 () Bool)

(assert (=> b!830222 (= e!462910 e!462915)))

(declare-fun c!89817 () Bool)

(assert (=> b!830222 (= c!89817 (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun b!830223 () Bool)

(assert (=> b!830223 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(assert (=> b!830223 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22733 _values!788)))))

(assert (=> b!830223 (= e!462911 (= (apply!372 lt!376779 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!830224 () Bool)

(assert (=> b!830224 (= e!462913 e!462909)))

(declare-fun c!89819 () Bool)

(assert (=> b!830224 (= c!89819 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105275 c!89820) b!830219))

(assert (= (and d!105275 (not c!89820)) b!830224))

(assert (= (and b!830224 c!89819) b!830217))

(assert (= (and b!830224 (not c!89819)) b!830220))

(assert (= (or b!830217 b!830220) bm!36253))

(assert (= (and d!105275 res!565543) b!830214))

(assert (= (and b!830214 res!565544) b!830213))

(assert (= (and b!830213 res!565542) b!830218))

(assert (= (and b!830213 c!89818) b!830215))

(assert (= (and b!830213 (not c!89818)) b!830222))

(assert (= (and b!830215 res!565541) b!830223))

(assert (= (and b!830222 c!89817) b!830221))

(assert (= (and b!830222 (not c!89817)) b!830216))

(declare-fun b_lambda!11381 () Bool)

(assert (=> (not b_lambda!11381) (not b!830217)))

(assert (=> b!830217 t!22381))

(declare-fun b_and!22553 () Bool)

(assert (= b_and!22551 (and (=> t!22381 result!8023) b_and!22553)))

(declare-fun b_lambda!11383 () Bool)

(assert (=> (not b_lambda!11383) (not b!830223)))

(assert (=> b!830223 t!22381))

(declare-fun b_and!22555 () Bool)

(assert (= b_and!22553 (and (=> t!22381 result!8023) b_and!22555)))

(declare-fun m!773419 () Bool)

(assert (=> b!830214 m!773419))

(assert (=> b!830217 m!773277))

(declare-fun m!773421 () Bool)

(assert (=> b!830217 m!773421))

(assert (=> b!830217 m!773291))

(assert (=> b!830217 m!773291))

(assert (=> b!830217 m!773293))

(assert (=> b!830217 m!773297))

(declare-fun m!773423 () Bool)

(assert (=> b!830217 m!773423))

(declare-fun m!773425 () Bool)

(assert (=> b!830217 m!773425))

(assert (=> b!830217 m!773425))

(declare-fun m!773427 () Bool)

(assert (=> b!830217 m!773427))

(assert (=> b!830217 m!773293))

(declare-fun m!773429 () Bool)

(assert (=> bm!36253 m!773429))

(assert (=> b!830221 m!773429))

(assert (=> b!830223 m!773277))

(assert (=> b!830223 m!773277))

(declare-fun m!773431 () Bool)

(assert (=> b!830223 m!773431))

(assert (=> b!830223 m!773291))

(assert (=> b!830223 m!773293))

(assert (=> b!830223 m!773291))

(assert (=> b!830223 m!773293))

(assert (=> b!830223 m!773297))

(assert (=> b!830218 m!773277))

(assert (=> b!830218 m!773277))

(assert (=> b!830218 m!773281))

(assert (=> b!830215 m!773277))

(assert (=> b!830215 m!773277))

(declare-fun m!773433 () Bool)

(assert (=> b!830215 m!773433))

(declare-fun m!773435 () Bool)

(assert (=> b!830216 m!773435))

(declare-fun m!773437 () Bool)

(assert (=> d!105275 m!773437))

(assert (=> d!105275 m!773209))

(assert (=> b!830224 m!773277))

(assert (=> b!830224 m!773277))

(assert (=> b!830224 m!773281))

(assert (=> b!830048 d!105275))

(declare-fun b!830225 () Bool)

(declare-fun e!462921 () Bool)

(declare-fun e!462917 () Bool)

(assert (=> b!830225 (= e!462921 e!462917)))

(declare-fun c!89822 () Bool)

(declare-fun e!462919 () Bool)

(assert (=> b!830225 (= c!89822 e!462919)))

(declare-fun res!565546 () Bool)

(assert (=> b!830225 (=> (not res!565546) (not e!462919))))

(assert (=> b!830225 (= res!565546 (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun b!830226 () Bool)

(declare-fun res!565548 () Bool)

(assert (=> b!830226 (=> (not res!565548) (not e!462921))))

(declare-fun lt!376786 () ListLongMap!9011)

(assert (=> b!830226 (= res!565548 (not (contains!4208 lt!376786 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!830227 () Bool)

(declare-fun e!462918 () Bool)

(assert (=> b!830227 (= e!462917 e!462918)))

(assert (=> b!830227 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun res!565545 () Bool)

(assert (=> b!830227 (= res!565545 (contains!4208 lt!376786 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830227 (=> (not res!565545) (not e!462918))))

(declare-fun b!830228 () Bool)

(declare-fun e!462922 () Bool)

(assert (=> b!830228 (= e!462922 (isEmpty!659 lt!376786))))

(declare-fun b!830229 () Bool)

(declare-fun lt!376789 () Unit!28435)

(declare-fun lt!376788 () Unit!28435)

(assert (=> b!830229 (= lt!376789 lt!376788)))

(declare-fun lt!376791 () ListLongMap!9011)

(declare-fun lt!376787 () (_ BitVec 64))

(declare-fun lt!376792 () (_ BitVec 64))

(declare-fun lt!376790 () V!25277)

(assert (=> b!830229 (not (contains!4208 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)) lt!376787))))

(assert (=> b!830229 (= lt!376788 (addStillNotContains!199 lt!376791 lt!376792 lt!376790 lt!376787))))

(assert (=> b!830229 (= lt!376787 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!830229 (= lt!376790 (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!830229 (= lt!376792 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36257 () ListLongMap!9011)

(assert (=> b!830229 (= lt!376791 call!36257)))

(declare-fun e!462916 () ListLongMap!9011)

(assert (=> b!830229 (= e!462916 (+!1950 call!36257 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!830230 () Bool)

(assert (=> b!830230 (= e!462919 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830230 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!36254 () Bool)

(assert (=> bm!36254 (= call!36257 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!830231 () Bool)

(declare-fun e!462920 () ListLongMap!9011)

(assert (=> b!830231 (= e!462920 (ListLongMap!9012 Nil!16000))))

(declare-fun b!830232 () Bool)

(assert (=> b!830232 (= e!462916 call!36257)))

(declare-fun b!830233 () Bool)

(assert (=> b!830233 (= e!462922 (= lt!376786 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!105277 () Bool)

(assert (=> d!105277 e!462921))

(declare-fun res!565547 () Bool)

(assert (=> d!105277 (=> (not res!565547) (not e!462921))))

(assert (=> d!105277 (= res!565547 (not (contains!4208 lt!376786 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105277 (= lt!376786 e!462920)))

(declare-fun c!89824 () Bool)

(assert (=> d!105277 (= c!89824 (bvsge #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(assert (=> d!105277 (validMask!0 mask!1312)))

(assert (=> d!105277 (= (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376786)))

(declare-fun b!830234 () Bool)

(assert (=> b!830234 (= e!462917 e!462922)))

(declare-fun c!89821 () Bool)

(assert (=> b!830234 (= c!89821 (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(declare-fun b!830235 () Bool)

(assert (=> b!830235 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(assert (=> b!830235 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22733 _values!788)))))

(assert (=> b!830235 (= e!462918 (= (apply!372 lt!376786 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!830236 () Bool)

(assert (=> b!830236 (= e!462920 e!462916)))

(declare-fun c!89823 () Bool)

(assert (=> b!830236 (= c!89823 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105277 c!89824) b!830231))

(assert (= (and d!105277 (not c!89824)) b!830236))

(assert (= (and b!830236 c!89823) b!830229))

(assert (= (and b!830236 (not c!89823)) b!830232))

(assert (= (or b!830229 b!830232) bm!36254))

(assert (= (and d!105277 res!565547) b!830226))

(assert (= (and b!830226 res!565548) b!830225))

(assert (= (and b!830225 res!565546) b!830230))

(assert (= (and b!830225 c!89822) b!830227))

(assert (= (and b!830225 (not c!89822)) b!830234))

(assert (= (and b!830227 res!565545) b!830235))

(assert (= (and b!830234 c!89821) b!830233))

(assert (= (and b!830234 (not c!89821)) b!830228))

(declare-fun b_lambda!11385 () Bool)

(assert (=> (not b_lambda!11385) (not b!830229)))

(assert (=> b!830229 t!22381))

(declare-fun b_and!22557 () Bool)

(assert (= b_and!22555 (and (=> t!22381 result!8023) b_and!22557)))

(declare-fun b_lambda!11387 () Bool)

(assert (=> (not b_lambda!11387) (not b!830235)))

(assert (=> b!830235 t!22381))

(declare-fun b_and!22559 () Bool)

(assert (= b_and!22557 (and (=> t!22381 result!8023) b_and!22559)))

(declare-fun m!773439 () Bool)

(assert (=> b!830226 m!773439))

(assert (=> b!830229 m!773277))

(declare-fun m!773441 () Bool)

(assert (=> b!830229 m!773441))

(assert (=> b!830229 m!773291))

(assert (=> b!830229 m!773291))

(assert (=> b!830229 m!773293))

(assert (=> b!830229 m!773297))

(declare-fun m!773443 () Bool)

(assert (=> b!830229 m!773443))

(declare-fun m!773445 () Bool)

(assert (=> b!830229 m!773445))

(assert (=> b!830229 m!773445))

(declare-fun m!773447 () Bool)

(assert (=> b!830229 m!773447))

(assert (=> b!830229 m!773293))

(declare-fun m!773449 () Bool)

(assert (=> bm!36254 m!773449))

(assert (=> b!830233 m!773449))

(assert (=> b!830235 m!773277))

(assert (=> b!830235 m!773277))

(declare-fun m!773451 () Bool)

(assert (=> b!830235 m!773451))

(assert (=> b!830235 m!773291))

(assert (=> b!830235 m!773293))

(assert (=> b!830235 m!773291))

(assert (=> b!830235 m!773293))

(assert (=> b!830235 m!773297))

(assert (=> b!830230 m!773277))

(assert (=> b!830230 m!773277))

(assert (=> b!830230 m!773281))

(assert (=> b!830227 m!773277))

(assert (=> b!830227 m!773277))

(declare-fun m!773453 () Bool)

(assert (=> b!830227 m!773453))

(declare-fun m!773455 () Bool)

(assert (=> b!830228 m!773455))

(declare-fun m!773457 () Bool)

(assert (=> d!105277 m!773457))

(assert (=> d!105277 m!773209))

(assert (=> b!830236 m!773277))

(assert (=> b!830236 m!773277))

(assert (=> b!830236 m!773281))

(assert (=> b!830048 d!105277))

(declare-fun d!105279 () Bool)

(assert (=> d!105279 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71512 d!105279))

(declare-fun d!105281 () Bool)

(assert (=> d!105281 (= (array_inv!17745 _keys!976) (bvsge (size!22732 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71512 d!105281))

(declare-fun d!105283 () Bool)

(assert (=> d!105283 (= (array_inv!17746 _values!788) (bvsge (size!22733 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71512 d!105283))

(declare-fun b!830245 () Bool)

(declare-fun e!462931 () Bool)

(declare-fun call!36260 () Bool)

(assert (=> b!830245 (= e!462931 call!36260)))

(declare-fun d!105285 () Bool)

(declare-fun res!565553 () Bool)

(declare-fun e!462929 () Bool)

(assert (=> d!105285 (=> res!565553 e!462929)))

(assert (=> d!105285 (= res!565553 (bvsge #b00000000000000000000000000000000 (size!22732 _keys!976)))))

(assert (=> d!105285 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!462929)))

(declare-fun b!830246 () Bool)

(declare-fun e!462930 () Bool)

(assert (=> b!830246 (= e!462930 e!462931)))

(declare-fun lt!376799 () (_ BitVec 64))

(assert (=> b!830246 (= lt!376799 (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376801 () Unit!28435)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46558 (_ BitVec 64) (_ BitVec 32)) Unit!28435)

(assert (=> b!830246 (= lt!376801 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!376799 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!830246 (arrayContainsKey!0 _keys!976 lt!376799 #b00000000000000000000000000000000)))

(declare-fun lt!376800 () Unit!28435)

(assert (=> b!830246 (= lt!376800 lt!376801)))

(declare-fun res!565554 () Bool)

(declare-datatypes ((SeekEntryResult!8733 0))(
  ( (MissingZero!8733 (index!37302 (_ BitVec 32))) (Found!8733 (index!37303 (_ BitVec 32))) (Intermediate!8733 (undefined!9545 Bool) (index!37304 (_ BitVec 32)) (x!70091 (_ BitVec 32))) (Undefined!8733) (MissingVacant!8733 (index!37305 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46558 (_ BitVec 32)) SeekEntryResult!8733)

(assert (=> b!830246 (= res!565554 (= (seekEntryOrOpen!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8733 #b00000000000000000000000000000000)))))

(assert (=> b!830246 (=> (not res!565554) (not e!462931))))

(declare-fun b!830247 () Bool)

(assert (=> b!830247 (= e!462930 call!36260)))

(declare-fun bm!36257 () Bool)

(assert (=> bm!36257 (= call!36260 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!830248 () Bool)

(assert (=> b!830248 (= e!462929 e!462930)))

(declare-fun c!89827 () Bool)

(assert (=> b!830248 (= c!89827 (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105285 (not res!565553)) b!830248))

(assert (= (and b!830248 c!89827) b!830246))

(assert (= (and b!830248 (not c!89827)) b!830247))

(assert (= (and b!830246 res!565554) b!830245))

(assert (= (or b!830245 b!830247) bm!36257))

(assert (=> b!830246 m!773277))

(declare-fun m!773459 () Bool)

(assert (=> b!830246 m!773459))

(declare-fun m!773461 () Bool)

(assert (=> b!830246 m!773461))

(assert (=> b!830246 m!773277))

(declare-fun m!773463 () Bool)

(assert (=> b!830246 m!773463))

(declare-fun m!773465 () Bool)

(assert (=> bm!36257 m!773465))

(assert (=> b!830248 m!773277))

(assert (=> b!830248 m!773277))

(assert (=> b!830248 m!773281))

(assert (=> b!830046 d!105285))

(declare-fun d!105287 () Bool)

(declare-fun e!462932 () Bool)

(assert (=> d!105287 e!462932))

(declare-fun res!565555 () Bool)

(assert (=> d!105287 (=> (not res!565555) (not e!462932))))

(declare-fun lt!376803 () ListLongMap!9011)

(assert (=> d!105287 (= res!565555 (contains!4208 lt!376803 (_1!5097 lt!376628)))))

(declare-fun lt!376805 () List!16003)

(assert (=> d!105287 (= lt!376803 (ListLongMap!9012 lt!376805))))

(declare-fun lt!376804 () Unit!28435)

(declare-fun lt!376802 () Unit!28435)

(assert (=> d!105287 (= lt!376804 lt!376802)))

(assert (=> d!105287 (= (getValueByKey!414 lt!376805 (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628)))))

(assert (=> d!105287 (= lt!376802 (lemmaContainsTupThenGetReturnValue!230 lt!376805 (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(assert (=> d!105287 (= lt!376805 (insertStrictlySorted!268 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(assert (=> d!105287 (= (+!1950 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!376628) lt!376803)))

(declare-fun b!830249 () Bool)

(declare-fun res!565556 () Bool)

(assert (=> b!830249 (=> (not res!565556) (not e!462932))))

(assert (=> b!830249 (= res!565556 (= (getValueByKey!414 (toList!4521 lt!376803) (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628))))))

(declare-fun b!830250 () Bool)

(assert (=> b!830250 (= e!462932 (contains!4209 (toList!4521 lt!376803) lt!376628))))

(assert (= (and d!105287 res!565555) b!830249))

(assert (= (and b!830249 res!565556) b!830250))

(declare-fun m!773467 () Bool)

(assert (=> d!105287 m!773467))

(declare-fun m!773469 () Bool)

(assert (=> d!105287 m!773469))

(declare-fun m!773471 () Bool)

(assert (=> d!105287 m!773471))

(declare-fun m!773473 () Bool)

(assert (=> d!105287 m!773473))

(declare-fun m!773475 () Bool)

(assert (=> b!830249 m!773475))

(declare-fun m!773477 () Bool)

(assert (=> b!830250 m!773477))

(assert (=> b!830042 d!105287))

(declare-fun d!105289 () Bool)

(declare-fun e!462933 () Bool)

(assert (=> d!105289 e!462933))

(declare-fun res!565557 () Bool)

(assert (=> d!105289 (=> (not res!565557) (not e!462933))))

(declare-fun lt!376807 () ListLongMap!9011)

(assert (=> d!105289 (= res!565557 (contains!4208 lt!376807 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!376809 () List!16003)

(assert (=> d!105289 (= lt!376807 (ListLongMap!9012 lt!376809))))

(declare-fun lt!376808 () Unit!28435)

(declare-fun lt!376806 () Unit!28435)

(assert (=> d!105289 (= lt!376808 lt!376806)))

(assert (=> d!105289 (= (getValueByKey!414 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105289 (= lt!376806 (lemmaContainsTupThenGetReturnValue!230 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105289 (= lt!376809 (insertStrictlySorted!268 (toList!4521 lt!376624) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105289 (= (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!376807)))

(declare-fun b!830251 () Bool)

(declare-fun res!565558 () Bool)

(assert (=> b!830251 (=> (not res!565558) (not e!462933))))

(assert (=> b!830251 (= res!565558 (= (getValueByKey!414 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!830252 () Bool)

(assert (=> b!830252 (= e!462933 (contains!4209 (toList!4521 lt!376807) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!105289 res!565557) b!830251))

(assert (= (and b!830251 res!565558) b!830252))

(declare-fun m!773479 () Bool)

(assert (=> d!105289 m!773479))

(declare-fun m!773481 () Bool)

(assert (=> d!105289 m!773481))

(declare-fun m!773483 () Bool)

(assert (=> d!105289 m!773483))

(declare-fun m!773485 () Bool)

(assert (=> d!105289 m!773485))

(declare-fun m!773487 () Bool)

(assert (=> b!830251 m!773487))

(declare-fun m!773489 () Bool)

(assert (=> b!830252 m!773489))

(assert (=> b!830042 d!105289))

(declare-fun condMapEmpty!24469 () Bool)

(declare-fun mapDefault!24469 () ValueCell!7188)

(assert (=> mapNonEmpty!24463 (= condMapEmpty!24469 (= mapRest!24463 ((as const (Array (_ BitVec 32) ValueCell!7188)) mapDefault!24469)))))

(declare-fun e!462938 () Bool)

(declare-fun mapRes!24469 () Bool)

(assert (=> mapNonEmpty!24463 (= tp!47278 (and e!462938 mapRes!24469))))

(declare-fun mapIsEmpty!24469 () Bool)

(assert (=> mapIsEmpty!24469 mapRes!24469))

(declare-fun b!830259 () Bool)

(declare-fun e!462939 () Bool)

(assert (=> b!830259 (= e!462939 tp_is_empty!15207)))

(declare-fun mapNonEmpty!24469 () Bool)

(declare-fun tp!47287 () Bool)

(assert (=> mapNonEmpty!24469 (= mapRes!24469 (and tp!47287 e!462939))))

(declare-fun mapKey!24469 () (_ BitVec 32))

(declare-fun mapValue!24469 () ValueCell!7188)

(declare-fun mapRest!24469 () (Array (_ BitVec 32) ValueCell!7188))

(assert (=> mapNonEmpty!24469 (= mapRest!24463 (store mapRest!24469 mapKey!24469 mapValue!24469))))

(declare-fun b!830260 () Bool)

(assert (=> b!830260 (= e!462938 tp_is_empty!15207)))

(assert (= (and mapNonEmpty!24463 condMapEmpty!24469) mapIsEmpty!24469))

(assert (= (and mapNonEmpty!24463 (not condMapEmpty!24469)) mapNonEmpty!24469))

(assert (= (and mapNonEmpty!24469 ((_ is ValueCellFull!7188) mapValue!24469)) b!830259))

(assert (= (and mapNonEmpty!24463 ((_ is ValueCellFull!7188) mapDefault!24469)) b!830260))

(declare-fun m!773491 () Bool)

(assert (=> mapNonEmpty!24469 m!773491))

(declare-fun b_lambda!11389 () Bool)

(assert (= b_lambda!11383 (or (and start!71512 b_free!13497) b_lambda!11389)))

(declare-fun b_lambda!11391 () Bool)

(assert (= b_lambda!11379 (or (and start!71512 b_free!13497) b_lambda!11391)))

(declare-fun b_lambda!11393 () Bool)

(assert (= b_lambda!11385 (or (and start!71512 b_free!13497) b_lambda!11393)))

(declare-fun b_lambda!11395 () Bool)

(assert (= b_lambda!11387 (or (and start!71512 b_free!13497) b_lambda!11395)))

(declare-fun b_lambda!11397 () Bool)

(assert (= b_lambda!11377 (or (and start!71512 b_free!13497) b_lambda!11397)))

(declare-fun b_lambda!11399 () Bool)

(assert (= b_lambda!11381 (or (and start!71512 b_free!13497) b_lambda!11399)))

(check-sat (not b!830185) (not d!105265) (not b!830186) (not b!830214) (not b!830251) (not bm!36238) (not b!830226) (not bm!36235) (not bm!36234) (not b!830165) (not bm!36254) (not d!105287) (not b_lambda!11389) (not b!830139) (not b!830229) (not b!830150) (not d!105267) (not bm!36239) (not bm!36253) (not b!830216) (not bm!36257) (not b_lambda!11399) (not b!830147) tp_is_empty!15207 (not b!830218) (not b!830224) (not b!830127) (not d!105259) (not b_lambda!11391) (not b!830136) (not b_next!13497) (not d!105269) (not b!830149) (not b!830228) (not b!830129) (not bm!36245) (not bm!36246) (not bm!36241) (not b!830249) (not b!830227) (not b!830235) (not b_lambda!11397) (not b!830138) (not b!830170) (not b!830168) (not mapNonEmpty!24469) (not b!830151) (not b!830169) (not b!830080) (not d!105275) (not b!830230) (not b!830221) (not bm!36250) (not b!830236) (not b!830173) (not d!105277) (not b!830252) (not d!105261) (not b!830158) (not d!105273) (not b!830156) (not b!830215) (not d!105289) (not b!830217) (not b!830167) (not b!830144) (not b_lambda!11395) (not b!830248) (not d!105263) (not b!830152) b_and!22559 (not b!830184) (not b!830246) (not b!830233) (not b_lambda!11393) (not b!830223) (not b!830141) (not b!830250) (not b!830140) (not bm!36242) (not b!830081) (not b!830148))
(check-sat b_and!22559 (not b_next!13497))
(get-model)

(declare-fun b!830261 () Bool)

(declare-fun e!462945 () Bool)

(declare-fun e!462941 () Bool)

(assert (=> b!830261 (= e!462945 e!462941)))

(declare-fun c!89829 () Bool)

(declare-fun e!462943 () Bool)

(assert (=> b!830261 (= c!89829 e!462943)))

(declare-fun res!565560 () Bool)

(assert (=> b!830261 (=> (not res!565560) (not e!462943))))

(assert (=> b!830261 (= res!565560 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!830262 () Bool)

(declare-fun res!565562 () Bool)

(assert (=> b!830262 (=> (not res!565562) (not e!462945))))

(declare-fun lt!376810 () ListLongMap!9011)

(assert (=> b!830262 (= res!565562 (not (contains!4208 lt!376810 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!830263 () Bool)

(declare-fun e!462942 () Bool)

(assert (=> b!830263 (= e!462941 e!462942)))

(assert (=> b!830263 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun res!565559 () Bool)

(assert (=> b!830263 (= res!565559 (contains!4208 lt!376810 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!830263 (=> (not res!565559) (not e!462942))))

(declare-fun b!830264 () Bool)

(declare-fun e!462946 () Bool)

(assert (=> b!830264 (= e!462946 (isEmpty!659 lt!376810))))

(declare-fun b!830265 () Bool)

(declare-fun lt!376813 () Unit!28435)

(declare-fun lt!376812 () Unit!28435)

(assert (=> b!830265 (= lt!376813 lt!376812)))

(declare-fun lt!376816 () (_ BitVec 64))

(declare-fun lt!376815 () ListLongMap!9011)

(declare-fun lt!376814 () V!25277)

(declare-fun lt!376811 () (_ BitVec 64))

(assert (=> b!830265 (not (contains!4208 (+!1950 lt!376815 (tuple2!10175 lt!376816 lt!376814)) lt!376811))))

(assert (=> b!830265 (= lt!376812 (addStillNotContains!199 lt!376815 lt!376816 lt!376814 lt!376811))))

(assert (=> b!830265 (= lt!376811 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!830265 (= lt!376814 (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!830265 (= lt!376816 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun call!36261 () ListLongMap!9011)

(assert (=> b!830265 (= lt!376815 call!36261)))

(declare-fun e!462940 () ListLongMap!9011)

(assert (=> b!830265 (= e!462940 (+!1950 call!36261 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!830266 () Bool)

(assert (=> b!830266 (= e!462943 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!830266 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!36258 () Bool)

(assert (=> bm!36258 (= call!36261 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!830267 () Bool)

(declare-fun e!462944 () ListLongMap!9011)

(assert (=> b!830267 (= e!462944 (ListLongMap!9012 Nil!16000))))

(declare-fun b!830268 () Bool)

(assert (=> b!830268 (= e!462940 call!36261)))

(declare-fun b!830269 () Bool)

(assert (=> b!830269 (= e!462946 (= lt!376810 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!105291 () Bool)

(assert (=> d!105291 e!462945))

(declare-fun res!565561 () Bool)

(assert (=> d!105291 (=> (not res!565561) (not e!462945))))

(assert (=> d!105291 (= res!565561 (not (contains!4208 lt!376810 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105291 (= lt!376810 e!462944)))

(declare-fun c!89831 () Bool)

(assert (=> d!105291 (= c!89831 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> d!105291 (validMask!0 mask!1312)))

(assert (=> d!105291 (= (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796) lt!376810)))

(declare-fun b!830270 () Bool)

(assert (=> b!830270 (= e!462941 e!462946)))

(declare-fun c!89828 () Bool)

(assert (=> b!830270 (= c!89828 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!830271 () Bool)

(assert (=> b!830271 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> b!830271 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22733 _values!788)))))

(assert (=> b!830271 (= e!462942 (= (apply!372 lt!376810 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!830272 () Bool)

(assert (=> b!830272 (= e!462944 e!462940)))

(declare-fun c!89830 () Bool)

(assert (=> b!830272 (= c!89830 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!105291 c!89831) b!830267))

(assert (= (and d!105291 (not c!89831)) b!830272))

(assert (= (and b!830272 c!89830) b!830265))

(assert (= (and b!830272 (not c!89830)) b!830268))

(assert (= (or b!830265 b!830268) bm!36258))

(assert (= (and d!105291 res!565561) b!830262))

(assert (= (and b!830262 res!565562) b!830261))

(assert (= (and b!830261 res!565560) b!830266))

(assert (= (and b!830261 c!89829) b!830263))

(assert (= (and b!830261 (not c!89829)) b!830270))

(assert (= (and b!830263 res!565559) b!830271))

(assert (= (and b!830270 c!89828) b!830269))

(assert (= (and b!830270 (not c!89828)) b!830264))

(declare-fun b_lambda!11401 () Bool)

(assert (=> (not b_lambda!11401) (not b!830265)))

(assert (=> b!830265 t!22381))

(declare-fun b_and!22561 () Bool)

(assert (= b_and!22559 (and (=> t!22381 result!8023) b_and!22561)))

(declare-fun b_lambda!11403 () Bool)

(assert (=> (not b_lambda!11403) (not b!830271)))

(assert (=> b!830271 t!22381))

(declare-fun b_and!22563 () Bool)

(assert (= b_and!22561 (and (=> t!22381 result!8023) b_and!22563)))

(declare-fun m!773493 () Bool)

(assert (=> b!830262 m!773493))

(declare-fun m!773495 () Bool)

(assert (=> b!830265 m!773495))

(declare-fun m!773497 () Bool)

(assert (=> b!830265 m!773497))

(declare-fun m!773499 () Bool)

(assert (=> b!830265 m!773499))

(assert (=> b!830265 m!773499))

(assert (=> b!830265 m!773293))

(declare-fun m!773501 () Bool)

(assert (=> b!830265 m!773501))

(declare-fun m!773503 () Bool)

(assert (=> b!830265 m!773503))

(declare-fun m!773505 () Bool)

(assert (=> b!830265 m!773505))

(assert (=> b!830265 m!773505))

(declare-fun m!773507 () Bool)

(assert (=> b!830265 m!773507))

(assert (=> b!830265 m!773293))

(declare-fun m!773509 () Bool)

(assert (=> bm!36258 m!773509))

(assert (=> b!830269 m!773509))

(assert (=> b!830271 m!773495))

(assert (=> b!830271 m!773495))

(declare-fun m!773511 () Bool)

(assert (=> b!830271 m!773511))

(assert (=> b!830271 m!773499))

(assert (=> b!830271 m!773293))

(assert (=> b!830271 m!773499))

(assert (=> b!830271 m!773293))

(assert (=> b!830271 m!773501))

(assert (=> b!830266 m!773495))

(assert (=> b!830266 m!773495))

(declare-fun m!773513 () Bool)

(assert (=> b!830266 m!773513))

(assert (=> b!830263 m!773495))

(assert (=> b!830263 m!773495))

(declare-fun m!773515 () Bool)

(assert (=> b!830263 m!773515))

(declare-fun m!773517 () Bool)

(assert (=> b!830264 m!773517))

(declare-fun m!773519 () Bool)

(assert (=> d!105291 m!773519))

(assert (=> d!105291 m!773209))

(assert (=> b!830272 m!773495))

(assert (=> b!830272 m!773495))

(assert (=> b!830272 m!773513))

(assert (=> b!830233 d!105291))

(declare-fun d!105293 () Bool)

(declare-fun get!11823 (Option!420) V!25277)

(assert (=> d!105293 (= (apply!372 lt!376786 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (get!11823 (getValueByKey!414 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun bs!23176 () Bool)

(assert (= bs!23176 d!105293))

(assert (=> bs!23176 m!773277))

(declare-fun m!773521 () Bool)

(assert (=> bs!23176 m!773521))

(assert (=> bs!23176 m!773521))

(declare-fun m!773523 () Bool)

(assert (=> bs!23176 m!773523))

(assert (=> b!830235 d!105293))

(declare-fun d!105295 () Bool)

(declare-fun c!89834 () Bool)

(assert (=> d!105295 (= c!89834 ((_ is ValueCellFull!7188) (select (arr!22312 _values!788) #b00000000000000000000000000000000)))))

(declare-fun e!462949 () V!25277)

(assert (=> d!105295 (= (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)) e!462949)))

(declare-fun b!830277 () Bool)

(declare-fun get!11824 (ValueCell!7188 V!25277) V!25277)

(assert (=> b!830277 (= e!462949 (get!11824 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!830278 () Bool)

(declare-fun get!11825 (ValueCell!7188 V!25277) V!25277)

(assert (=> b!830278 (= e!462949 (get!11825 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105295 c!89834) b!830277))

(assert (= (and d!105295 (not c!89834)) b!830278))

(assert (=> b!830277 m!773291))

(assert (=> b!830277 m!773293))

(declare-fun m!773525 () Bool)

(assert (=> b!830277 m!773525))

(assert (=> b!830278 m!773291))

(assert (=> b!830278 m!773293))

(declare-fun m!773527 () Bool)

(assert (=> b!830278 m!773527))

(assert (=> b!830235 d!105295))

(declare-fun d!105297 () Bool)

(assert (=> d!105297 (= (validKeyInArray!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (and (not (= (select (arr!22311 _keys!976) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!22311 _keys!976) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!830224 d!105297))

(declare-fun d!105299 () Bool)

(declare-fun e!462950 () Bool)

(assert (=> d!105299 e!462950))

(declare-fun res!565563 () Bool)

(assert (=> d!105299 (=> (not res!565563) (not e!462950))))

(declare-fun lt!376818 () ListLongMap!9011)

(assert (=> d!105299 (= res!565563 (contains!4208 lt!376818 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!376820 () List!16003)

(assert (=> d!105299 (= lt!376818 (ListLongMap!9012 lt!376820))))

(declare-fun lt!376819 () Unit!28435)

(declare-fun lt!376817 () Unit!28435)

(assert (=> d!105299 (= lt!376819 lt!376817)))

(assert (=> d!105299 (= (getValueByKey!414 lt!376820 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105299 (= lt!376817 (lemmaContainsTupThenGetReturnValue!230 lt!376820 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105299 (= lt!376820 (insertStrictlySorted!268 (toList!4521 call!36245) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105299 (= (+!1950 call!36245 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!376818)))

(declare-fun b!830279 () Bool)

(declare-fun res!565564 () Bool)

(assert (=> b!830279 (=> (not res!565564) (not e!462950))))

(assert (=> b!830279 (= res!565564 (= (getValueByKey!414 (toList!4521 lt!376818) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!830280 () Bool)

(assert (=> b!830280 (= e!462950 (contains!4209 (toList!4521 lt!376818) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!105299 res!565563) b!830279))

(assert (= (and b!830279 res!565564) b!830280))

(declare-fun m!773529 () Bool)

(assert (=> d!105299 m!773529))

(declare-fun m!773531 () Bool)

(assert (=> d!105299 m!773531))

(declare-fun m!773533 () Bool)

(assert (=> d!105299 m!773533))

(declare-fun m!773535 () Bool)

(assert (=> d!105299 m!773535))

(declare-fun m!773537 () Bool)

(assert (=> b!830279 m!773537))

(declare-fun m!773539 () Bool)

(assert (=> b!830280 m!773539))

(assert (=> b!830168 d!105299))

(declare-fun d!105301 () Bool)

(declare-fun lt!376823 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!388 (List!16004) (InoxSet (_ BitVec 64)))

(assert (=> d!105301 (= lt!376823 (select (content!388 Nil!16001) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!462956 () Bool)

(assert (=> d!105301 (= lt!376823 e!462956)))

(declare-fun res!565569 () Bool)

(assert (=> d!105301 (=> (not res!565569) (not e!462956))))

(assert (=> d!105301 (= res!565569 ((_ is Cons!16000) Nil!16001))))

(assert (=> d!105301 (= (contains!4210 Nil!16001 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) lt!376823)))

(declare-fun b!830285 () Bool)

(declare-fun e!462955 () Bool)

(assert (=> b!830285 (= e!462956 e!462955)))

(declare-fun res!565570 () Bool)

(assert (=> b!830285 (=> res!565570 e!462955)))

(assert (=> b!830285 (= res!565570 (= (h!17129 Nil!16001) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830286 () Bool)

(assert (=> b!830286 (= e!462955 (contains!4210 (t!22377 Nil!16001) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105301 res!565569) b!830285))

(assert (= (and b!830285 (not res!565570)) b!830286))

(declare-fun m!773541 () Bool)

(assert (=> d!105301 m!773541))

(assert (=> d!105301 m!773277))

(declare-fun m!773543 () Bool)

(assert (=> d!105301 m!773543))

(assert (=> b!830286 m!773277))

(declare-fun m!773545 () Bool)

(assert (=> b!830286 m!773545))

(assert (=> b!830185 d!105301))

(declare-fun d!105303 () Bool)

(assert (=> d!105303 (= (apply!372 lt!376747 #b0000000000000000000000000000000000000000000000000000000000000000) (get!11823 (getValueByKey!414 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!23177 () Bool)

(assert (= bs!23177 d!105303))

(declare-fun m!773547 () Bool)

(assert (=> bs!23177 m!773547))

(assert (=> bs!23177 m!773547))

(declare-fun m!773549 () Bool)

(assert (=> bs!23177 m!773549))

(assert (=> b!830170 d!105303))

(assert (=> b!830136 d!105297))

(declare-fun b!830287 () Bool)

(declare-fun e!462962 () Bool)

(declare-fun e!462958 () Bool)

(assert (=> b!830287 (= e!462962 e!462958)))

(declare-fun c!89836 () Bool)

(declare-fun e!462960 () Bool)

(assert (=> b!830287 (= c!89836 e!462960)))

(declare-fun res!565572 () Bool)

(assert (=> b!830287 (=> (not res!565572) (not e!462960))))

(assert (=> b!830287 (= res!565572 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!830288 () Bool)

(declare-fun res!565574 () Bool)

(assert (=> b!830288 (=> (not res!565574) (not e!462962))))

(declare-fun lt!376824 () ListLongMap!9011)

(assert (=> b!830288 (= res!565574 (not (contains!4208 lt!376824 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!830289 () Bool)

(declare-fun e!462959 () Bool)

(assert (=> b!830289 (= e!462958 e!462959)))

(assert (=> b!830289 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun res!565571 () Bool)

(assert (=> b!830289 (= res!565571 (contains!4208 lt!376824 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!830289 (=> (not res!565571) (not e!462959))))

(declare-fun b!830290 () Bool)

(declare-fun e!462963 () Bool)

(assert (=> b!830290 (= e!462963 (isEmpty!659 lt!376824))))

(declare-fun b!830291 () Bool)

(declare-fun lt!376827 () Unit!28435)

(declare-fun lt!376826 () Unit!28435)

(assert (=> b!830291 (= lt!376827 lt!376826)))

(declare-fun lt!376830 () (_ BitVec 64))

(declare-fun lt!376825 () (_ BitVec 64))

(declare-fun lt!376829 () ListLongMap!9011)

(declare-fun lt!376828 () V!25277)

(assert (=> b!830291 (not (contains!4208 (+!1950 lt!376829 (tuple2!10175 lt!376830 lt!376828)) lt!376825))))

(assert (=> b!830291 (= lt!376826 (addStillNotContains!199 lt!376829 lt!376830 lt!376828 lt!376825))))

(assert (=> b!830291 (= lt!376825 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!830291 (= lt!376828 (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!830291 (= lt!376830 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun call!36262 () ListLongMap!9011)

(assert (=> b!830291 (= lt!376829 call!36262)))

(declare-fun e!462957 () ListLongMap!9011)

(assert (=> b!830291 (= e!462957 (+!1950 call!36262 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!830292 () Bool)

(assert (=> b!830292 (= e!462960 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!830292 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!36259 () Bool)

(assert (=> bm!36259 (= call!36262 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!830293 () Bool)

(declare-fun e!462961 () ListLongMap!9011)

(assert (=> b!830293 (= e!462961 (ListLongMap!9012 Nil!16000))))

(declare-fun b!830294 () Bool)

(assert (=> b!830294 (= e!462957 call!36262)))

(declare-fun b!830295 () Bool)

(assert (=> b!830295 (= e!462963 (= lt!376824 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!105305 () Bool)

(assert (=> d!105305 e!462962))

(declare-fun res!565573 () Bool)

(assert (=> d!105305 (=> (not res!565573) (not e!462962))))

(assert (=> d!105305 (= res!565573 (not (contains!4208 lt!376824 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105305 (= lt!376824 e!462961)))

(declare-fun c!89838 () Bool)

(assert (=> d!105305 (= c!89838 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> d!105305 (validMask!0 mask!1312)))

(assert (=> d!105305 (= (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796) lt!376824)))

(declare-fun b!830296 () Bool)

(assert (=> b!830296 (= e!462958 e!462963)))

(declare-fun c!89835 () Bool)

(assert (=> b!830296 (= c!89835 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!830297 () Bool)

(assert (=> b!830297 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> b!830297 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22733 _values!788)))))

(assert (=> b!830297 (= e!462959 (= (apply!372 lt!376824 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!830298 () Bool)

(assert (=> b!830298 (= e!462961 e!462957)))

(declare-fun c!89837 () Bool)

(assert (=> b!830298 (= c!89837 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!105305 c!89838) b!830293))

(assert (= (and d!105305 (not c!89838)) b!830298))

(assert (= (and b!830298 c!89837) b!830291))

(assert (= (and b!830298 (not c!89837)) b!830294))

(assert (= (or b!830291 b!830294) bm!36259))

(assert (= (and d!105305 res!565573) b!830288))

(assert (= (and b!830288 res!565574) b!830287))

(assert (= (and b!830287 res!565572) b!830292))

(assert (= (and b!830287 c!89836) b!830289))

(assert (= (and b!830287 (not c!89836)) b!830296))

(assert (= (and b!830289 res!565571) b!830297))

(assert (= (and b!830296 c!89835) b!830295))

(assert (= (and b!830296 (not c!89835)) b!830290))

(declare-fun b_lambda!11405 () Bool)

(assert (=> (not b_lambda!11405) (not b!830291)))

(assert (=> b!830291 t!22381))

(declare-fun b_and!22565 () Bool)

(assert (= b_and!22563 (and (=> t!22381 result!8023) b_and!22565)))

(declare-fun b_lambda!11407 () Bool)

(assert (=> (not b_lambda!11407) (not b!830297)))

(assert (=> b!830297 t!22381))

(declare-fun b_and!22567 () Bool)

(assert (= b_and!22565 (and (=> t!22381 result!8023) b_and!22567)))

(declare-fun m!773551 () Bool)

(assert (=> b!830288 m!773551))

(assert (=> b!830291 m!773495))

(declare-fun m!773553 () Bool)

(assert (=> b!830291 m!773553))

(assert (=> b!830291 m!773499))

(assert (=> b!830291 m!773499))

(assert (=> b!830291 m!773293))

(assert (=> b!830291 m!773501))

(declare-fun m!773555 () Bool)

(assert (=> b!830291 m!773555))

(declare-fun m!773557 () Bool)

(assert (=> b!830291 m!773557))

(assert (=> b!830291 m!773557))

(declare-fun m!773559 () Bool)

(assert (=> b!830291 m!773559))

(assert (=> b!830291 m!773293))

(declare-fun m!773561 () Bool)

(assert (=> bm!36259 m!773561))

(assert (=> b!830295 m!773561))

(assert (=> b!830297 m!773495))

(assert (=> b!830297 m!773495))

(declare-fun m!773563 () Bool)

(assert (=> b!830297 m!773563))

(assert (=> b!830297 m!773499))

(assert (=> b!830297 m!773293))

(assert (=> b!830297 m!773499))

(assert (=> b!830297 m!773293))

(assert (=> b!830297 m!773501))

(assert (=> b!830292 m!773495))

(assert (=> b!830292 m!773495))

(assert (=> b!830292 m!773513))

(assert (=> b!830289 m!773495))

(assert (=> b!830289 m!773495))

(declare-fun m!773565 () Bool)

(assert (=> b!830289 m!773565))

(declare-fun m!773567 () Bool)

(assert (=> b!830290 m!773567))

(declare-fun m!773569 () Bool)

(assert (=> d!105305 m!773569))

(assert (=> d!105305 m!773209))

(assert (=> b!830298 m!773495))

(assert (=> b!830298 m!773495))

(assert (=> b!830298 m!773513))

(assert (=> bm!36253 d!105305))

(declare-fun d!105307 () Bool)

(assert (=> d!105307 (= (apply!372 lt!376713 #b1000000000000000000000000000000000000000000000000000000000000000) (get!11823 (getValueByKey!414 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!23178 () Bool)

(assert (= bs!23178 d!105307))

(declare-fun m!773571 () Bool)

(assert (=> bs!23178 m!773571))

(assert (=> bs!23178 m!773571))

(declare-fun m!773573 () Bool)

(assert (=> bs!23178 m!773573))

(assert (=> b!830129 d!105307))

(declare-fun b!830309 () Bool)

(declare-fun e!462969 () Option!420)

(assert (=> b!830309 (= e!462969 (getValueByKey!414 (t!22376 (toList!4521 lt!376737)) (_1!5097 lt!376622)))))

(declare-fun b!830310 () Bool)

(assert (=> b!830310 (= e!462969 None!418)))

(declare-fun d!105309 () Bool)

(declare-fun c!89843 () Bool)

(assert (=> d!105309 (= c!89843 (and ((_ is Cons!15999) (toList!4521 lt!376737)) (= (_1!5097 (h!17128 (toList!4521 lt!376737))) (_1!5097 lt!376622))))))

(declare-fun e!462968 () Option!420)

(assert (=> d!105309 (= (getValueByKey!414 (toList!4521 lt!376737) (_1!5097 lt!376622)) e!462968)))

(declare-fun b!830307 () Bool)

(assert (=> b!830307 (= e!462968 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376737)))))))

(declare-fun b!830308 () Bool)

(assert (=> b!830308 (= e!462968 e!462969)))

(declare-fun c!89844 () Bool)

(assert (=> b!830308 (= c!89844 (and ((_ is Cons!15999) (toList!4521 lt!376737)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376737))) (_1!5097 lt!376622)))))))

(assert (= (and d!105309 c!89843) b!830307))

(assert (= (and d!105309 (not c!89843)) b!830308))

(assert (= (and b!830308 c!89844) b!830309))

(assert (= (and b!830308 (not c!89844)) b!830310))

(declare-fun m!773575 () Bool)

(assert (=> b!830309 m!773575))

(assert (=> b!830151 d!105309))

(declare-fun d!105311 () Bool)

(assert (=> d!105311 (= (apply!372 lt!376713 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (get!11823 (getValueByKey!414 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun bs!23179 () Bool)

(assert (= bs!23179 d!105311))

(assert (=> bs!23179 m!773277))

(declare-fun m!773577 () Bool)

(assert (=> bs!23179 m!773577))

(assert (=> bs!23179 m!773577))

(declare-fun m!773579 () Bool)

(assert (=> bs!23179 m!773579))

(assert (=> b!830144 d!105311))

(assert (=> b!830144 d!105295))

(assert (=> bm!36235 d!105275))

(assert (=> b!830230 d!105297))

(declare-fun c!89845 () Bool)

(declare-fun bm!36260 () Bool)

(declare-fun call!36263 () Bool)

(assert (=> bm!36260 (= call!36263 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!89845 (Cons!16000 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001))))))

(declare-fun b!830311 () Bool)

(declare-fun e!462971 () Bool)

(declare-fun e!462970 () Bool)

(assert (=> b!830311 (= e!462971 e!462970)))

(assert (=> b!830311 (= c!89845 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!830312 () Bool)

(declare-fun e!462972 () Bool)

(assert (=> b!830312 (= e!462972 (contains!4210 (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!105313 () Bool)

(declare-fun res!565575 () Bool)

(declare-fun e!462973 () Bool)

(assert (=> d!105313 (=> res!565575 e!462973)))

(assert (=> d!105313 (= res!565575 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> d!105313 (= (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) e!462973)))

(declare-fun b!830313 () Bool)

(assert (=> b!830313 (= e!462973 e!462971)))

(declare-fun res!565576 () Bool)

(assert (=> b!830313 (=> (not res!565576) (not e!462971))))

(assert (=> b!830313 (= res!565576 (not e!462972))))

(declare-fun res!565577 () Bool)

(assert (=> b!830313 (=> (not res!565577) (not e!462972))))

(assert (=> b!830313 (= res!565577 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!830314 () Bool)

(assert (=> b!830314 (= e!462970 call!36263)))

(declare-fun b!830315 () Bool)

(assert (=> b!830315 (= e!462970 call!36263)))

(assert (= (and d!105313 (not res!565575)) b!830313))

(assert (= (and b!830313 res!565577) b!830312))

(assert (= (and b!830313 res!565576) b!830311))

(assert (= (and b!830311 c!89845) b!830314))

(assert (= (and b!830311 (not c!89845)) b!830315))

(assert (= (or b!830314 b!830315) bm!36260))

(assert (=> bm!36260 m!773495))

(declare-fun m!773581 () Bool)

(assert (=> bm!36260 m!773581))

(assert (=> b!830311 m!773495))

(assert (=> b!830311 m!773495))

(assert (=> b!830311 m!773513))

(assert (=> b!830312 m!773495))

(assert (=> b!830312 m!773495))

(declare-fun m!773583 () Bool)

(assert (=> b!830312 m!773583))

(assert (=> b!830313 m!773495))

(assert (=> b!830313 m!773495))

(assert (=> b!830313 m!773513))

(assert (=> bm!36250 d!105313))

(assert (=> bm!36242 d!105277))

(declare-fun d!105315 () Bool)

(declare-fun e!462979 () Bool)

(assert (=> d!105315 e!462979))

(declare-fun res!565580 () Bool)

(assert (=> d!105315 (=> res!565580 e!462979)))

(declare-fun lt!376842 () Bool)

(assert (=> d!105315 (= res!565580 (not lt!376842))))

(declare-fun lt!376841 () Bool)

(assert (=> d!105315 (= lt!376842 lt!376841)))

(declare-fun lt!376839 () Unit!28435)

(declare-fun e!462978 () Unit!28435)

(assert (=> d!105315 (= lt!376839 e!462978)))

(declare-fun c!89848 () Bool)

(assert (=> d!105315 (= c!89848 lt!376841)))

(declare-fun containsKey!400 (List!16003 (_ BitVec 64)) Bool)

(assert (=> d!105315 (= lt!376841 (containsKey!400 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105315 (= (contains!4208 lt!376779 #b1000000000000000000000000000000000000000000000000000000000000000) lt!376842)))

(declare-fun b!830322 () Bool)

(declare-fun lt!376840 () Unit!28435)

(assert (=> b!830322 (= e!462978 lt!376840)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!310 (List!16003 (_ BitVec 64)) Unit!28435)

(assert (=> b!830322 (= lt!376840 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun isDefined!311 (Option!420) Bool)

(assert (=> b!830322 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830323 () Bool)

(declare-fun Unit!28439 () Unit!28435)

(assert (=> b!830323 (= e!462978 Unit!28439)))

(declare-fun b!830324 () Bool)

(assert (=> b!830324 (= e!462979 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105315 c!89848) b!830322))

(assert (= (and d!105315 (not c!89848)) b!830323))

(assert (= (and d!105315 (not res!565580)) b!830324))

(declare-fun m!773585 () Bool)

(assert (=> d!105315 m!773585))

(declare-fun m!773587 () Bool)

(assert (=> b!830322 m!773587))

(declare-fun m!773589 () Bool)

(assert (=> b!830322 m!773589))

(assert (=> b!830322 m!773589))

(declare-fun m!773591 () Bool)

(assert (=> b!830322 m!773591))

(assert (=> b!830324 m!773589))

(assert (=> b!830324 m!773589))

(assert (=> b!830324 m!773591))

(assert (=> b!830214 d!105315))

(declare-fun d!105317 () Bool)

(declare-fun e!462980 () Bool)

(assert (=> d!105317 e!462980))

(declare-fun res!565581 () Bool)

(assert (=> d!105317 (=> (not res!565581) (not e!462980))))

(declare-fun lt!376844 () ListLongMap!9011)

(assert (=> d!105317 (= res!565581 (contains!4208 lt!376844 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun lt!376846 () List!16003)

(assert (=> d!105317 (= lt!376844 (ListLongMap!9012 lt!376846))))

(declare-fun lt!376845 () Unit!28435)

(declare-fun lt!376843 () Unit!28435)

(assert (=> d!105317 (= lt!376845 lt!376843)))

(assert (=> d!105317 (= (getValueByKey!414 lt!376846 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!419 (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!105317 (= lt!376843 (lemmaContainsTupThenGetReturnValue!230 lt!376846 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!105317 (= lt!376846 (insertStrictlySorted!268 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241))) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!105317 (= (+!1950 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241)) (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!376844)))

(declare-fun b!830325 () Bool)

(declare-fun res!565582 () Bool)

(assert (=> b!830325 (=> (not res!565582) (not e!462980))))

(assert (=> b!830325 (= res!565582 (= (getValueByKey!414 (toList!4521 lt!376844) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!419 (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!830326 () Bool)

(assert (=> b!830326 (= e!462980 (contains!4209 (toList!4521 lt!376844) (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!105317 res!565581) b!830325))

(assert (= (and b!830325 res!565582) b!830326))

(declare-fun m!773593 () Bool)

(assert (=> d!105317 m!773593))

(declare-fun m!773595 () Bool)

(assert (=> d!105317 m!773595))

(declare-fun m!773597 () Bool)

(assert (=> d!105317 m!773597))

(declare-fun m!773599 () Bool)

(assert (=> d!105317 m!773599))

(declare-fun m!773601 () Bool)

(assert (=> b!830325 m!773601))

(declare-fun m!773603 () Bool)

(assert (=> b!830326 m!773603))

(assert (=> bm!36238 d!105317))

(declare-fun d!105319 () Bool)

(declare-fun lt!376849 () Bool)

(declare-fun content!389 (List!16003) (InoxSet tuple2!10174))

(assert (=> d!105319 (= lt!376849 (select (content!389 (toList!4521 lt!376803)) lt!376628))))

(declare-fun e!462986 () Bool)

(assert (=> d!105319 (= lt!376849 e!462986)))

(declare-fun res!565588 () Bool)

(assert (=> d!105319 (=> (not res!565588) (not e!462986))))

(assert (=> d!105319 (= res!565588 ((_ is Cons!15999) (toList!4521 lt!376803)))))

(assert (=> d!105319 (= (contains!4209 (toList!4521 lt!376803) lt!376628) lt!376849)))

(declare-fun b!830331 () Bool)

(declare-fun e!462985 () Bool)

(assert (=> b!830331 (= e!462986 e!462985)))

(declare-fun res!565587 () Bool)

(assert (=> b!830331 (=> res!565587 e!462985)))

(assert (=> b!830331 (= res!565587 (= (h!17128 (toList!4521 lt!376803)) lt!376628))))

(declare-fun b!830332 () Bool)

(assert (=> b!830332 (= e!462985 (contains!4209 (t!22376 (toList!4521 lt!376803)) lt!376628))))

(assert (= (and d!105319 res!565588) b!830331))

(assert (= (and b!830331 (not res!565587)) b!830332))

(declare-fun m!773605 () Bool)

(assert (=> d!105319 m!773605))

(declare-fun m!773607 () Bool)

(assert (=> d!105319 m!773607))

(declare-fun m!773609 () Bool)

(assert (=> b!830332 m!773609))

(assert (=> b!830250 d!105319))

(declare-fun d!105321 () Bool)

(declare-fun e!462988 () Bool)

(assert (=> d!105321 e!462988))

(declare-fun res!565589 () Bool)

(assert (=> d!105321 (=> res!565589 e!462988)))

(declare-fun lt!376853 () Bool)

(assert (=> d!105321 (= res!565589 (not lt!376853))))

(declare-fun lt!376852 () Bool)

(assert (=> d!105321 (= lt!376853 lt!376852)))

(declare-fun lt!376850 () Unit!28435)

(declare-fun e!462987 () Unit!28435)

(assert (=> d!105321 (= lt!376850 e!462987)))

(declare-fun c!89849 () Bool)

(assert (=> d!105321 (= c!89849 lt!376852)))

(assert (=> d!105321 (= lt!376852 (containsKey!400 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105321 (= (contains!4208 lt!376713 #b1000000000000000000000000000000000000000000000000000000000000000) lt!376853)))

(declare-fun b!830333 () Bool)

(declare-fun lt!376851 () Unit!28435)

(assert (=> b!830333 (= e!462987 lt!376851)))

(assert (=> b!830333 (= lt!376851 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830333 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830334 () Bool)

(declare-fun Unit!28440 () Unit!28435)

(assert (=> b!830334 (= e!462987 Unit!28440)))

(declare-fun b!830335 () Bool)

(assert (=> b!830335 (= e!462988 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105321 c!89849) b!830333))

(assert (= (and d!105321 (not c!89849)) b!830334))

(assert (= (and d!105321 (not res!565589)) b!830335))

(declare-fun m!773611 () Bool)

(assert (=> d!105321 m!773611))

(declare-fun m!773613 () Bool)

(assert (=> b!830333 m!773613))

(assert (=> b!830333 m!773571))

(assert (=> b!830333 m!773571))

(declare-fun m!773615 () Bool)

(assert (=> b!830333 m!773615))

(assert (=> b!830335 m!773571))

(assert (=> b!830335 m!773571))

(assert (=> b!830335 m!773615))

(assert (=> bm!36239 d!105321))

(assert (=> b!830248 d!105297))

(declare-fun d!105323 () Bool)

(declare-fun lt!376854 () Bool)

(assert (=> d!105323 (= lt!376854 (select (content!389 (toList!4521 lt!376807)) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun e!462990 () Bool)

(assert (=> d!105323 (= lt!376854 e!462990)))

(declare-fun res!565591 () Bool)

(assert (=> d!105323 (=> (not res!565591) (not e!462990))))

(assert (=> d!105323 (= res!565591 ((_ is Cons!15999) (toList!4521 lt!376807)))))

(assert (=> d!105323 (= (contains!4209 (toList!4521 lt!376807) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!376854)))

(declare-fun b!830336 () Bool)

(declare-fun e!462989 () Bool)

(assert (=> b!830336 (= e!462990 e!462989)))

(declare-fun res!565590 () Bool)

(assert (=> b!830336 (=> res!565590 e!462989)))

(assert (=> b!830336 (= res!565590 (= (h!17128 (toList!4521 lt!376807)) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!830337 () Bool)

(assert (=> b!830337 (= e!462989 (contains!4209 (t!22376 (toList!4521 lt!376807)) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!105323 res!565591) b!830336))

(assert (= (and b!830336 (not res!565590)) b!830337))

(declare-fun m!773617 () Bool)

(assert (=> d!105323 m!773617))

(declare-fun m!773619 () Bool)

(assert (=> d!105323 m!773619))

(declare-fun m!773621 () Bool)

(assert (=> b!830337 m!773621))

(assert (=> b!830252 d!105323))

(declare-fun d!105325 () Bool)

(declare-fun lt!376855 () Bool)

(assert (=> d!105325 (= lt!376855 (select (content!389 (toList!4521 lt!376729)) lt!376622))))

(declare-fun e!462992 () Bool)

(assert (=> d!105325 (= lt!376855 e!462992)))

(declare-fun res!565593 () Bool)

(assert (=> d!105325 (=> (not res!565593) (not e!462992))))

(assert (=> d!105325 (= res!565593 ((_ is Cons!15999) (toList!4521 lt!376729)))))

(assert (=> d!105325 (= (contains!4209 (toList!4521 lt!376729) lt!376622) lt!376855)))

(declare-fun b!830338 () Bool)

(declare-fun e!462991 () Bool)

(assert (=> b!830338 (= e!462992 e!462991)))

(declare-fun res!565592 () Bool)

(assert (=> b!830338 (=> res!565592 e!462991)))

(assert (=> b!830338 (= res!565592 (= (h!17128 (toList!4521 lt!376729)) lt!376622))))

(declare-fun b!830339 () Bool)

(assert (=> b!830339 (= e!462991 (contains!4209 (t!22376 (toList!4521 lt!376729)) lt!376622))))

(assert (= (and d!105325 res!565593) b!830338))

(assert (= (and b!830338 (not res!565592)) b!830339))

(declare-fun m!773623 () Bool)

(assert (=> d!105325 m!773623))

(declare-fun m!773625 () Bool)

(assert (=> d!105325 m!773625))

(declare-fun m!773627 () Bool)

(assert (=> b!830339 m!773627))

(assert (=> b!830148 d!105325))

(declare-fun d!105327 () Bool)

(assert (=> d!105327 (= (apply!372 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754)) lt!376721) (apply!372 lt!376717 lt!376721))))

(declare-fun lt!376858 () Unit!28435)

(declare-fun choose!1425 (ListLongMap!9011 (_ BitVec 64) V!25277 (_ BitVec 64)) Unit!28435)

(assert (=> d!105327 (= lt!376858 (choose!1425 lt!376717 lt!376718 minValue!754 lt!376721))))

(declare-fun e!462995 () Bool)

(assert (=> d!105327 e!462995))

(declare-fun res!565596 () Bool)

(assert (=> d!105327 (=> (not res!565596) (not e!462995))))

(assert (=> d!105327 (= res!565596 (contains!4208 lt!376717 lt!376721))))

(assert (=> d!105327 (= (addApplyDifferent!323 lt!376717 lt!376718 minValue!754 lt!376721) lt!376858)))

(declare-fun b!830343 () Bool)

(assert (=> b!830343 (= e!462995 (not (= lt!376721 lt!376718)))))

(assert (= (and d!105327 res!565596) b!830343))

(declare-fun m!773629 () Bool)

(assert (=> d!105327 m!773629))

(assert (=> d!105327 m!773311))

(declare-fun m!773631 () Bool)

(assert (=> d!105327 m!773631))

(assert (=> d!105327 m!773311))

(assert (=> d!105327 m!773313))

(assert (=> d!105327 m!773301))

(assert (=> b!830127 d!105327))

(declare-fun d!105329 () Bool)

(assert (=> d!105329 (= (apply!372 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754)) lt!376719) (apply!372 lt!376715 lt!376719))))

(declare-fun lt!376859 () Unit!28435)

(assert (=> d!105329 (= lt!376859 (choose!1425 lt!376715 lt!376712 minValue!754 lt!376719))))

(declare-fun e!462996 () Bool)

(assert (=> d!105329 e!462996))

(declare-fun res!565597 () Bool)

(assert (=> d!105329 (=> (not res!565597) (not e!462996))))

(assert (=> d!105329 (= res!565597 (contains!4208 lt!376715 lt!376719))))

(assert (=> d!105329 (= (addApplyDifferent!323 lt!376715 lt!376712 minValue!754 lt!376719) lt!376859)))

(declare-fun b!830344 () Bool)

(assert (=> b!830344 (= e!462996 (not (= lt!376719 lt!376712)))))

(assert (= (and d!105329 res!565597) b!830344))

(declare-fun m!773633 () Bool)

(assert (=> d!105329 m!773633))

(assert (=> d!105329 m!773309))

(declare-fun m!773635 () Bool)

(assert (=> d!105329 m!773635))

(assert (=> d!105329 m!773309))

(assert (=> d!105329 m!773321))

(assert (=> d!105329 m!773299))

(assert (=> b!830127 d!105329))

(declare-fun d!105331 () Bool)

(assert (=> d!105331 (= (apply!372 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34)) lt!376722) (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34))) lt!376722)))))

(declare-fun bs!23180 () Bool)

(assert (= bs!23180 d!105331))

(declare-fun m!773637 () Bool)

(assert (=> bs!23180 m!773637))

(assert (=> bs!23180 m!773637))

(declare-fun m!773639 () Bool)

(assert (=> bs!23180 m!773639))

(assert (=> b!830127 d!105331))

(declare-fun d!105333 () Bool)

(declare-fun e!462997 () Bool)

(assert (=> d!105333 e!462997))

(declare-fun res!565598 () Bool)

(assert (=> d!105333 (=> (not res!565598) (not e!462997))))

(declare-fun lt!376861 () ListLongMap!9011)

(assert (=> d!105333 (= res!565598 (contains!4208 lt!376861 (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))

(declare-fun lt!376863 () List!16003)

(assert (=> d!105333 (= lt!376861 (ListLongMap!9012 lt!376863))))

(declare-fun lt!376862 () Unit!28435)

(declare-fun lt!376860 () Unit!28435)

(assert (=> d!105333 (= lt!376862 lt!376860)))

(assert (=> d!105333 (= (getValueByKey!414 lt!376863 (_1!5097 (tuple2!10175 lt!376718 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376718 minValue!754))))))

(assert (=> d!105333 (= lt!376860 (lemmaContainsTupThenGetReturnValue!230 lt!376863 (_1!5097 (tuple2!10175 lt!376718 minValue!754)) (_2!5097 (tuple2!10175 lt!376718 minValue!754))))))

(assert (=> d!105333 (= lt!376863 (insertStrictlySorted!268 (toList!4521 lt!376717) (_1!5097 (tuple2!10175 lt!376718 minValue!754)) (_2!5097 (tuple2!10175 lt!376718 minValue!754))))))

(assert (=> d!105333 (= (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754)) lt!376861)))

(declare-fun b!830345 () Bool)

(declare-fun res!565599 () Bool)

(assert (=> b!830345 (=> (not res!565599) (not e!462997))))

(assert (=> b!830345 (= res!565599 (= (getValueByKey!414 (toList!4521 lt!376861) (_1!5097 (tuple2!10175 lt!376718 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376718 minValue!754)))))))

(declare-fun b!830346 () Bool)

(assert (=> b!830346 (= e!462997 (contains!4209 (toList!4521 lt!376861) (tuple2!10175 lt!376718 minValue!754)))))

(assert (= (and d!105333 res!565598) b!830345))

(assert (= (and b!830345 res!565599) b!830346))

(declare-fun m!773641 () Bool)

(assert (=> d!105333 m!773641))

(declare-fun m!773643 () Bool)

(assert (=> d!105333 m!773643))

(declare-fun m!773645 () Bool)

(assert (=> d!105333 m!773645))

(declare-fun m!773647 () Bool)

(assert (=> d!105333 m!773647))

(declare-fun m!773649 () Bool)

(assert (=> b!830345 m!773649))

(declare-fun m!773651 () Bool)

(assert (=> b!830346 m!773651))

(assert (=> b!830127 d!105333))

(declare-fun d!105335 () Bool)

(assert (=> d!105335 (= (apply!372 lt!376717 lt!376721) (get!11823 (getValueByKey!414 (toList!4521 lt!376717) lt!376721)))))

(declare-fun bs!23181 () Bool)

(assert (= bs!23181 d!105335))

(declare-fun m!773653 () Bool)

(assert (=> bs!23181 m!773653))

(assert (=> bs!23181 m!773653))

(declare-fun m!773655 () Bool)

(assert (=> bs!23181 m!773655))

(assert (=> b!830127 d!105335))

(declare-fun d!105337 () Bool)

(assert (=> d!105337 (= (apply!372 lt!376709 lt!376722) (get!11823 (getValueByKey!414 (toList!4521 lt!376709) lt!376722)))))

(declare-fun bs!23182 () Bool)

(assert (= bs!23182 d!105337))

(declare-fun m!773657 () Bool)

(assert (=> bs!23182 m!773657))

(assert (=> bs!23182 m!773657))

(declare-fun m!773659 () Bool)

(assert (=> bs!23182 m!773659))

(assert (=> b!830127 d!105337))

(declare-fun d!105339 () Bool)

(assert (=> d!105339 (contains!4208 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)) lt!376708)))

(declare-fun lt!376866 () Unit!28435)

(declare-fun choose!1426 (ListLongMap!9011 (_ BitVec 64) V!25277 (_ BitVec 64)) Unit!28435)

(assert (=> d!105339 (= lt!376866 (choose!1426 lt!376714 lt!376707 zeroValueAfter!34 lt!376708))))

(assert (=> d!105339 (contains!4208 lt!376714 lt!376708)))

(assert (=> d!105339 (= (addStillContains!323 lt!376714 lt!376707 zeroValueAfter!34 lt!376708) lt!376866)))

(declare-fun bs!23183 () Bool)

(assert (= bs!23183 d!105339))

(assert (=> bs!23183 m!773315))

(assert (=> bs!23183 m!773315))

(assert (=> bs!23183 m!773317))

(declare-fun m!773661 () Bool)

(assert (=> bs!23183 m!773661))

(declare-fun m!773663 () Bool)

(assert (=> bs!23183 m!773663))

(assert (=> b!830127 d!105339))

(declare-fun d!105341 () Bool)

(assert (=> d!105341 (= (apply!372 lt!376715 lt!376719) (get!11823 (getValueByKey!414 (toList!4521 lt!376715) lt!376719)))))

(declare-fun bs!23184 () Bool)

(assert (= bs!23184 d!105341))

(declare-fun m!773665 () Bool)

(assert (=> bs!23184 m!773665))

(assert (=> bs!23184 m!773665))

(declare-fun m!773667 () Bool)

(assert (=> bs!23184 m!773667))

(assert (=> b!830127 d!105341))

(declare-fun d!105343 () Bool)

(declare-fun e!462998 () Bool)

(assert (=> d!105343 e!462998))

(declare-fun res!565600 () Bool)

(assert (=> d!105343 (=> (not res!565600) (not e!462998))))

(declare-fun lt!376868 () ListLongMap!9011)

(assert (=> d!105343 (= res!565600 (contains!4208 lt!376868 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(declare-fun lt!376870 () List!16003)

(assert (=> d!105343 (= lt!376868 (ListLongMap!9012 lt!376870))))

(declare-fun lt!376869 () Unit!28435)

(declare-fun lt!376867 () Unit!28435)

(assert (=> d!105343 (= lt!376869 lt!376867)))

(assert (=> d!105343 (= (getValueByKey!414 lt!376870 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(assert (=> d!105343 (= lt!376867 (lemmaContainsTupThenGetReturnValue!230 lt!376870 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(assert (=> d!105343 (= lt!376870 (insertStrictlySorted!268 (toList!4521 lt!376714) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(assert (=> d!105343 (= (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)) lt!376868)))

(declare-fun b!830348 () Bool)

(declare-fun res!565601 () Bool)

(assert (=> b!830348 (=> (not res!565601) (not e!462998))))

(assert (=> b!830348 (= res!565601 (= (getValueByKey!414 (toList!4521 lt!376868) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(declare-fun b!830349 () Bool)

(assert (=> b!830349 (= e!462998 (contains!4209 (toList!4521 lt!376868) (tuple2!10175 lt!376707 zeroValueAfter!34)))))

(assert (= (and d!105343 res!565600) b!830348))

(assert (= (and b!830348 res!565601) b!830349))

(declare-fun m!773669 () Bool)

(assert (=> d!105343 m!773669))

(declare-fun m!773671 () Bool)

(assert (=> d!105343 m!773671))

(declare-fun m!773673 () Bool)

(assert (=> d!105343 m!773673))

(declare-fun m!773675 () Bool)

(assert (=> d!105343 m!773675))

(declare-fun m!773677 () Bool)

(assert (=> b!830348 m!773677))

(declare-fun m!773679 () Bool)

(assert (=> b!830349 m!773679))

(assert (=> b!830127 d!105343))

(declare-fun d!105345 () Bool)

(declare-fun e!462999 () Bool)

(assert (=> d!105345 e!462999))

(declare-fun res!565602 () Bool)

(assert (=> d!105345 (=> (not res!565602) (not e!462999))))

(declare-fun lt!376872 () ListLongMap!9011)

(assert (=> d!105345 (= res!565602 (contains!4208 lt!376872 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(declare-fun lt!376874 () List!16003)

(assert (=> d!105345 (= lt!376872 (ListLongMap!9012 lt!376874))))

(declare-fun lt!376873 () Unit!28435)

(declare-fun lt!376871 () Unit!28435)

(assert (=> d!105345 (= lt!376873 lt!376871)))

(assert (=> d!105345 (= (getValueByKey!414 lt!376874 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(assert (=> d!105345 (= lt!376871 (lemmaContainsTupThenGetReturnValue!230 lt!376874 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(assert (=> d!105345 (= lt!376874 (insertStrictlySorted!268 (toList!4521 lt!376709) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(assert (=> d!105345 (= (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34)) lt!376872)))

(declare-fun b!830350 () Bool)

(declare-fun res!565603 () Bool)

(assert (=> b!830350 (=> (not res!565603) (not e!462999))))

(assert (=> b!830350 (= res!565603 (= (getValueByKey!414 (toList!4521 lt!376872) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))

(declare-fun b!830351 () Bool)

(assert (=> b!830351 (= e!462999 (contains!4209 (toList!4521 lt!376872) (tuple2!10175 lt!376723 zeroValueAfter!34)))))

(assert (= (and d!105345 res!565602) b!830350))

(assert (= (and b!830350 res!565603) b!830351))

(declare-fun m!773681 () Bool)

(assert (=> d!105345 m!773681))

(declare-fun m!773683 () Bool)

(assert (=> d!105345 m!773683))

(declare-fun m!773685 () Bool)

(assert (=> d!105345 m!773685))

(declare-fun m!773687 () Bool)

(assert (=> d!105345 m!773687))

(declare-fun m!773689 () Bool)

(assert (=> b!830350 m!773689))

(declare-fun m!773691 () Bool)

(assert (=> b!830351 m!773691))

(assert (=> b!830127 d!105345))

(declare-fun d!105347 () Bool)

(declare-fun e!463001 () Bool)

(assert (=> d!105347 e!463001))

(declare-fun res!565604 () Bool)

(assert (=> d!105347 (=> res!565604 e!463001)))

(declare-fun lt!376878 () Bool)

(assert (=> d!105347 (= res!565604 (not lt!376878))))

(declare-fun lt!376877 () Bool)

(assert (=> d!105347 (= lt!376878 lt!376877)))

(declare-fun lt!376875 () Unit!28435)

(declare-fun e!463000 () Unit!28435)

(assert (=> d!105347 (= lt!376875 e!463000)))

(declare-fun c!89850 () Bool)

(assert (=> d!105347 (= c!89850 lt!376877)))

(assert (=> d!105347 (= lt!376877 (containsKey!400 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708))))

(assert (=> d!105347 (= (contains!4208 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)) lt!376708) lt!376878)))

(declare-fun b!830352 () Bool)

(declare-fun lt!376876 () Unit!28435)

(assert (=> b!830352 (= e!463000 lt!376876)))

(assert (=> b!830352 (= lt!376876 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708))))

(assert (=> b!830352 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708))))

(declare-fun b!830353 () Bool)

(declare-fun Unit!28441 () Unit!28435)

(assert (=> b!830353 (= e!463000 Unit!28441)))

(declare-fun b!830354 () Bool)

(assert (=> b!830354 (= e!463001 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708)))))

(assert (= (and d!105347 c!89850) b!830352))

(assert (= (and d!105347 (not c!89850)) b!830353))

(assert (= (and d!105347 (not res!565604)) b!830354))

(declare-fun m!773693 () Bool)

(assert (=> d!105347 m!773693))

(declare-fun m!773695 () Bool)

(assert (=> b!830352 m!773695))

(declare-fun m!773697 () Bool)

(assert (=> b!830352 m!773697))

(assert (=> b!830352 m!773697))

(declare-fun m!773699 () Bool)

(assert (=> b!830352 m!773699))

(assert (=> b!830354 m!773697))

(assert (=> b!830354 m!773697))

(assert (=> b!830354 m!773699))

(assert (=> b!830127 d!105347))

(declare-fun d!105349 () Bool)

(assert (=> d!105349 (= (apply!372 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754)) lt!376721) (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754))) lt!376721)))))

(declare-fun bs!23185 () Bool)

(assert (= bs!23185 d!105349))

(declare-fun m!773701 () Bool)

(assert (=> bs!23185 m!773701))

(assert (=> bs!23185 m!773701))

(declare-fun m!773703 () Bool)

(assert (=> bs!23185 m!773703))

(assert (=> b!830127 d!105349))

(assert (=> b!830127 d!105275))

(declare-fun d!105351 () Bool)

(declare-fun e!463002 () Bool)

(assert (=> d!105351 e!463002))

(declare-fun res!565605 () Bool)

(assert (=> d!105351 (=> (not res!565605) (not e!463002))))

(declare-fun lt!376880 () ListLongMap!9011)

(assert (=> d!105351 (= res!565605 (contains!4208 lt!376880 (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))

(declare-fun lt!376882 () List!16003)

(assert (=> d!105351 (= lt!376880 (ListLongMap!9012 lt!376882))))

(declare-fun lt!376881 () Unit!28435)

(declare-fun lt!376879 () Unit!28435)

(assert (=> d!105351 (= lt!376881 lt!376879)))

(assert (=> d!105351 (= (getValueByKey!414 lt!376882 (_1!5097 (tuple2!10175 lt!376712 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376712 minValue!754))))))

(assert (=> d!105351 (= lt!376879 (lemmaContainsTupThenGetReturnValue!230 lt!376882 (_1!5097 (tuple2!10175 lt!376712 minValue!754)) (_2!5097 (tuple2!10175 lt!376712 minValue!754))))))

(assert (=> d!105351 (= lt!376882 (insertStrictlySorted!268 (toList!4521 lt!376715) (_1!5097 (tuple2!10175 lt!376712 minValue!754)) (_2!5097 (tuple2!10175 lt!376712 minValue!754))))))

(assert (=> d!105351 (= (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754)) lt!376880)))

(declare-fun b!830355 () Bool)

(declare-fun res!565606 () Bool)

(assert (=> b!830355 (=> (not res!565606) (not e!463002))))

(assert (=> b!830355 (= res!565606 (= (getValueByKey!414 (toList!4521 lt!376880) (_1!5097 (tuple2!10175 lt!376712 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376712 minValue!754)))))))

(declare-fun b!830356 () Bool)

(assert (=> b!830356 (= e!463002 (contains!4209 (toList!4521 lt!376880) (tuple2!10175 lt!376712 minValue!754)))))

(assert (= (and d!105351 res!565605) b!830355))

(assert (= (and b!830355 res!565606) b!830356))

(declare-fun m!773705 () Bool)

(assert (=> d!105351 m!773705))

(declare-fun m!773707 () Bool)

(assert (=> d!105351 m!773707))

(declare-fun m!773709 () Bool)

(assert (=> d!105351 m!773709))

(declare-fun m!773711 () Bool)

(assert (=> d!105351 m!773711))

(declare-fun m!773713 () Bool)

(assert (=> b!830355 m!773713))

(declare-fun m!773715 () Bool)

(assert (=> b!830356 m!773715))

(assert (=> b!830127 d!105351))

(declare-fun d!105353 () Bool)

(assert (=> d!105353 (= (apply!372 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754)) lt!376719) (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754))) lt!376719)))))

(declare-fun bs!23186 () Bool)

(assert (= bs!23186 d!105353))

(declare-fun m!773717 () Bool)

(assert (=> bs!23186 m!773717))

(assert (=> bs!23186 m!773717))

(declare-fun m!773719 () Bool)

(assert (=> bs!23186 m!773719))

(assert (=> b!830127 d!105353))

(declare-fun d!105355 () Bool)

(assert (=> d!105355 (= (apply!372 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34)) lt!376722) (apply!372 lt!376709 lt!376722))))

(declare-fun lt!376883 () Unit!28435)

(assert (=> d!105355 (= lt!376883 (choose!1425 lt!376709 lt!376723 zeroValueAfter!34 lt!376722))))

(declare-fun e!463003 () Bool)

(assert (=> d!105355 e!463003))

(declare-fun res!565607 () Bool)

(assert (=> d!105355 (=> (not res!565607) (not e!463003))))

(assert (=> d!105355 (= res!565607 (contains!4208 lt!376709 lt!376722))))

(assert (=> d!105355 (= (addApplyDifferent!323 lt!376709 lt!376723 zeroValueAfter!34 lt!376722) lt!376883)))

(declare-fun b!830357 () Bool)

(assert (=> b!830357 (= e!463003 (not (= lt!376722 lt!376723)))))

(assert (= (and d!105355 res!565607) b!830357))

(declare-fun m!773721 () Bool)

(assert (=> d!105355 m!773721))

(assert (=> d!105355 m!773303))

(declare-fun m!773723 () Bool)

(assert (=> d!105355 m!773723))

(assert (=> d!105355 m!773303))

(assert (=> d!105355 m!773305))

(assert (=> d!105355 m!773323))

(assert (=> b!830127 d!105355))

(declare-fun b!830360 () Bool)

(declare-fun e!463005 () Option!420)

(assert (=> b!830360 (= e!463005 (getValueByKey!414 (t!22376 (toList!4521 lt!376659)) (_1!5097 lt!376628)))))

(declare-fun b!830361 () Bool)

(assert (=> b!830361 (= e!463005 None!418)))

(declare-fun d!105357 () Bool)

(declare-fun c!89851 () Bool)

(assert (=> d!105357 (= c!89851 (and ((_ is Cons!15999) (toList!4521 lt!376659)) (= (_1!5097 (h!17128 (toList!4521 lt!376659))) (_1!5097 lt!376628))))))

(declare-fun e!463004 () Option!420)

(assert (=> d!105357 (= (getValueByKey!414 (toList!4521 lt!376659) (_1!5097 lt!376628)) e!463004)))

(declare-fun b!830358 () Bool)

(assert (=> b!830358 (= e!463004 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376659)))))))

(declare-fun b!830359 () Bool)

(assert (=> b!830359 (= e!463004 e!463005)))

(declare-fun c!89852 () Bool)

(assert (=> b!830359 (= c!89852 (and ((_ is Cons!15999) (toList!4521 lt!376659)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376659))) (_1!5097 lt!376628)))))))

(assert (= (and d!105357 c!89851) b!830358))

(assert (= (and d!105357 (not c!89851)) b!830359))

(assert (= (and b!830359 c!89852) b!830360))

(assert (= (and b!830359 (not c!89852)) b!830361))

(declare-fun m!773725 () Bool)

(assert (=> b!830360 m!773725))

(assert (=> b!830080 d!105357))

(declare-fun d!105359 () Bool)

(declare-fun isEmpty!660 (List!16003) Bool)

(assert (=> d!105359 (= (isEmpty!659 lt!376779) (isEmpty!660 (toList!4521 lt!376779)))))

(declare-fun bs!23187 () Bool)

(assert (= bs!23187 d!105359))

(declare-fun m!773727 () Bool)

(assert (=> bs!23187 m!773727))

(assert (=> b!830216 d!105359))

(declare-fun d!105361 () Bool)

(declare-fun lt!376884 () Bool)

(assert (=> d!105361 (= lt!376884 (select (content!389 (toList!4521 lt!376733)) lt!376628))))

(declare-fun e!463007 () Bool)

(assert (=> d!105361 (= lt!376884 e!463007)))

(declare-fun res!565609 () Bool)

(assert (=> d!105361 (=> (not res!565609) (not e!463007))))

(assert (=> d!105361 (= res!565609 ((_ is Cons!15999) (toList!4521 lt!376733)))))

(assert (=> d!105361 (= (contains!4209 (toList!4521 lt!376733) lt!376628) lt!376884)))

(declare-fun b!830362 () Bool)

(declare-fun e!463006 () Bool)

(assert (=> b!830362 (= e!463007 e!463006)))

(declare-fun res!565608 () Bool)

(assert (=> b!830362 (=> res!565608 e!463006)))

(assert (=> b!830362 (= res!565608 (= (h!17128 (toList!4521 lt!376733)) lt!376628))))

(declare-fun b!830363 () Bool)

(assert (=> b!830363 (= e!463006 (contains!4209 (t!22376 (toList!4521 lt!376733)) lt!376628))))

(assert (= (and d!105361 res!565609) b!830362))

(assert (= (and b!830362 (not res!565608)) b!830363))

(declare-fun m!773729 () Bool)

(assert (=> d!105361 m!773729))

(declare-fun m!773731 () Bool)

(assert (=> d!105361 m!773731))

(declare-fun m!773733 () Bool)

(assert (=> b!830363 m!773733))

(assert (=> b!830150 d!105361))

(declare-fun d!105363 () Bool)

(declare-fun e!463009 () Bool)

(assert (=> d!105363 e!463009))

(declare-fun res!565610 () Bool)

(assert (=> d!105363 (=> res!565610 e!463009)))

(declare-fun lt!376888 () Bool)

(assert (=> d!105363 (= res!565610 (not lt!376888))))

(declare-fun lt!376887 () Bool)

(assert (=> d!105363 (= lt!376888 lt!376887)))

(declare-fun lt!376885 () Unit!28435)

(declare-fun e!463008 () Unit!28435)

(assert (=> d!105363 (= lt!376885 e!463008)))

(declare-fun c!89853 () Bool)

(assert (=> d!105363 (= c!89853 lt!376887)))

(assert (=> d!105363 (= lt!376887 (containsKey!400 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105363 (= (contains!4208 lt!376713 #b0000000000000000000000000000000000000000000000000000000000000000) lt!376888)))

(declare-fun b!830364 () Bool)

(declare-fun lt!376886 () Unit!28435)

(assert (=> b!830364 (= e!463008 lt!376886)))

(assert (=> b!830364 (= lt!376886 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830364 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830365 () Bool)

(declare-fun Unit!28442 () Unit!28435)

(assert (=> b!830365 (= e!463008 Unit!28442)))

(declare-fun b!830366 () Bool)

(assert (=> b!830366 (= e!463009 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105363 c!89853) b!830364))

(assert (= (and d!105363 (not c!89853)) b!830365))

(assert (= (and d!105363 (not res!565610)) b!830366))

(declare-fun m!773735 () Bool)

(assert (=> d!105363 m!773735))

(declare-fun m!773737 () Bool)

(assert (=> b!830364 m!773737))

(declare-fun m!773739 () Bool)

(assert (=> b!830364 m!773739))

(assert (=> b!830364 m!773739))

(declare-fun m!773741 () Bool)

(assert (=> b!830364 m!773741))

(assert (=> b!830366 m!773739))

(assert (=> b!830366 m!773739))

(assert (=> b!830366 m!773741))

(assert (=> bm!36234 d!105363))

(assert (=> b!830218 d!105297))

(declare-fun d!105365 () Bool)

(declare-fun e!463011 () Bool)

(assert (=> d!105365 e!463011))

(declare-fun res!565611 () Bool)

(assert (=> d!105365 (=> res!565611 e!463011)))

(declare-fun lt!376892 () Bool)

(assert (=> d!105365 (= res!565611 (not lt!376892))))

(declare-fun lt!376891 () Bool)

(assert (=> d!105365 (= lt!376892 lt!376891)))

(declare-fun lt!376889 () Unit!28435)

(declare-fun e!463010 () Unit!28435)

(assert (=> d!105365 (= lt!376889 e!463010)))

(declare-fun c!89854 () Bool)

(assert (=> d!105365 (= c!89854 lt!376891)))

(assert (=> d!105365 (= lt!376891 (containsKey!400 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> d!105365 (= (contains!4208 lt!376786 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) lt!376892)))

(declare-fun b!830367 () Bool)

(declare-fun lt!376890 () Unit!28435)

(assert (=> b!830367 (= e!463010 lt!376890)))

(assert (=> b!830367 (= lt!376890 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830367 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830368 () Bool)

(declare-fun Unit!28443 () Unit!28435)

(assert (=> b!830368 (= e!463010 Unit!28443)))

(declare-fun b!830369 () Bool)

(assert (=> b!830369 (= e!463011 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (= (and d!105365 c!89854) b!830367))

(assert (= (and d!105365 (not c!89854)) b!830368))

(assert (= (and d!105365 (not res!565611)) b!830369))

(assert (=> d!105365 m!773277))

(declare-fun m!773743 () Bool)

(assert (=> d!105365 m!773743))

(assert (=> b!830367 m!773277))

(declare-fun m!773745 () Bool)

(assert (=> b!830367 m!773745))

(assert (=> b!830367 m!773277))

(assert (=> b!830367 m!773521))

(assert (=> b!830367 m!773521))

(declare-fun m!773747 () Bool)

(assert (=> b!830367 m!773747))

(assert (=> b!830369 m!773277))

(assert (=> b!830369 m!773521))

(assert (=> b!830369 m!773521))

(assert (=> b!830369 m!773747))

(assert (=> b!830227 d!105365))

(declare-fun d!105367 () Bool)

(declare-fun e!463013 () Bool)

(assert (=> d!105367 e!463013))

(declare-fun res!565612 () Bool)

(assert (=> d!105367 (=> res!565612 e!463013)))

(declare-fun lt!376896 () Bool)

(assert (=> d!105367 (= res!565612 (not lt!376896))))

(declare-fun lt!376895 () Bool)

(assert (=> d!105367 (= lt!376896 lt!376895)))

(declare-fun lt!376893 () Unit!28435)

(declare-fun e!463012 () Unit!28435)

(assert (=> d!105367 (= lt!376893 e!463012)))

(declare-fun c!89855 () Bool)

(assert (=> d!105367 (= c!89855 lt!376895)))

(assert (=> d!105367 (= lt!376895 (containsKey!400 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> d!105367 (= (contains!4208 lt!376713 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) lt!376896)))

(declare-fun b!830370 () Bool)

(declare-fun lt!376894 () Unit!28435)

(assert (=> b!830370 (= e!463012 lt!376894)))

(assert (=> b!830370 (= lt!376894 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830370 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830371 () Bool)

(declare-fun Unit!28444 () Unit!28435)

(assert (=> b!830371 (= e!463012 Unit!28444)))

(declare-fun b!830372 () Bool)

(assert (=> b!830372 (= e!463013 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (= (and d!105367 c!89855) b!830370))

(assert (= (and d!105367 (not c!89855)) b!830371))

(assert (= (and d!105367 (not res!565612)) b!830372))

(assert (=> d!105367 m!773277))

(declare-fun m!773749 () Bool)

(assert (=> d!105367 m!773749))

(assert (=> b!830370 m!773277))

(declare-fun m!773751 () Bool)

(assert (=> b!830370 m!773751))

(assert (=> b!830370 m!773277))

(assert (=> b!830370 m!773577))

(assert (=> b!830370 m!773577))

(declare-fun m!773753 () Bool)

(assert (=> b!830370 m!773753))

(assert (=> b!830372 m!773277))

(assert (=> b!830372 m!773577))

(assert (=> b!830372 m!773577))

(assert (=> b!830372 m!773753))

(assert (=> b!830138 d!105367))

(assert (=> d!105261 d!105279))

(assert (=> b!830140 d!105297))

(declare-fun d!105369 () Bool)

(assert (=> d!105369 (= (apply!372 lt!376747 #b1000000000000000000000000000000000000000000000000000000000000000) (get!11823 (getValueByKey!414 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!23188 () Bool)

(assert (= bs!23188 d!105369))

(declare-fun m!773755 () Bool)

(assert (=> bs!23188 m!773755))

(assert (=> bs!23188 m!773755))

(declare-fun m!773757 () Bool)

(assert (=> bs!23188 m!773757))

(assert (=> b!830158 d!105369))

(declare-fun d!105371 () Bool)

(assert (=> d!105371 (= (apply!372 lt!376747 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (get!11823 (getValueByKey!414 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun bs!23189 () Bool)

(assert (= bs!23189 d!105371))

(assert (=> bs!23189 m!773277))

(declare-fun m!773759 () Bool)

(assert (=> bs!23189 m!773759))

(assert (=> bs!23189 m!773759))

(declare-fun m!773761 () Bool)

(assert (=> bs!23189 m!773761))

(assert (=> b!830173 d!105371))

(assert (=> b!830173 d!105295))

(assert (=> b!830184 d!105297))

(declare-fun d!105373 () Bool)

(declare-fun e!463015 () Bool)

(assert (=> d!105373 e!463015))

(declare-fun res!565613 () Bool)

(assert (=> d!105373 (=> res!565613 e!463015)))

(declare-fun lt!376900 () Bool)

(assert (=> d!105373 (= res!565613 (not lt!376900))))

(declare-fun lt!376899 () Bool)

(assert (=> d!105373 (= lt!376900 lt!376899)))

(declare-fun lt!376897 () Unit!28435)

(declare-fun e!463014 () Unit!28435)

(assert (=> d!105373 (= lt!376897 e!463014)))

(declare-fun c!89856 () Bool)

(assert (=> d!105373 (= c!89856 lt!376899)))

(assert (=> d!105373 (= lt!376899 (containsKey!400 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> d!105373 (= (contains!4208 lt!376747 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) lt!376900)))

(declare-fun b!830373 () Bool)

(declare-fun lt!376898 () Unit!28435)

(assert (=> b!830373 (= e!463014 lt!376898)))

(assert (=> b!830373 (= lt!376898 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830373 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830374 () Bool)

(declare-fun Unit!28445 () Unit!28435)

(assert (=> b!830374 (= e!463014 Unit!28445)))

(declare-fun b!830375 () Bool)

(assert (=> b!830375 (= e!463015 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (= (and d!105373 c!89856) b!830373))

(assert (= (and d!105373 (not c!89856)) b!830374))

(assert (= (and d!105373 (not res!565613)) b!830375))

(assert (=> d!105373 m!773277))

(declare-fun m!773763 () Bool)

(assert (=> d!105373 m!773763))

(assert (=> b!830373 m!773277))

(declare-fun m!773765 () Bool)

(assert (=> b!830373 m!773765))

(assert (=> b!830373 m!773277))

(assert (=> b!830373 m!773759))

(assert (=> b!830373 m!773759))

(declare-fun m!773767 () Bool)

(assert (=> b!830373 m!773767))

(assert (=> b!830375 m!773277))

(assert (=> b!830375 m!773759))

(assert (=> b!830375 m!773759))

(assert (=> b!830375 m!773767))

(assert (=> b!830167 d!105373))

(declare-fun d!105375 () Bool)

(assert (=> d!105375 (= (apply!372 lt!376779 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (get!11823 (getValueByKey!414 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun bs!23190 () Bool)

(assert (= bs!23190 d!105375))

(assert (=> bs!23190 m!773277))

(declare-fun m!773769 () Bool)

(assert (=> bs!23190 m!773769))

(assert (=> bs!23190 m!773769))

(declare-fun m!773771 () Bool)

(assert (=> bs!23190 m!773771))

(assert (=> b!830223 d!105375))

(assert (=> b!830223 d!105295))

(assert (=> b!830169 d!105297))

(declare-fun d!105377 () Bool)

(declare-fun e!463017 () Bool)

(assert (=> d!105377 e!463017))

(declare-fun res!565614 () Bool)

(assert (=> d!105377 (=> res!565614 e!463017)))

(declare-fun lt!376904 () Bool)

(assert (=> d!105377 (= res!565614 (not lt!376904))))

(declare-fun lt!376903 () Bool)

(assert (=> d!105377 (= lt!376904 lt!376903)))

(declare-fun lt!376901 () Unit!28435)

(declare-fun e!463016 () Unit!28435)

(assert (=> d!105377 (= lt!376901 e!463016)))

(declare-fun c!89857 () Bool)

(assert (=> d!105377 (= c!89857 lt!376903)))

(assert (=> d!105377 (= lt!376903 (containsKey!400 (toList!4521 lt!376803) (_1!5097 lt!376628)))))

(assert (=> d!105377 (= (contains!4208 lt!376803 (_1!5097 lt!376628)) lt!376904)))

(declare-fun b!830376 () Bool)

(declare-fun lt!376902 () Unit!28435)

(assert (=> b!830376 (= e!463016 lt!376902)))

(assert (=> b!830376 (= lt!376902 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376803) (_1!5097 lt!376628)))))

(assert (=> b!830376 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376803) (_1!5097 lt!376628)))))

(declare-fun b!830377 () Bool)

(declare-fun Unit!28446 () Unit!28435)

(assert (=> b!830377 (= e!463016 Unit!28446)))

(declare-fun b!830378 () Bool)

(assert (=> b!830378 (= e!463017 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376803) (_1!5097 lt!376628))))))

(assert (= (and d!105377 c!89857) b!830376))

(assert (= (and d!105377 (not c!89857)) b!830377))

(assert (= (and d!105377 (not res!565614)) b!830378))

(declare-fun m!773773 () Bool)

(assert (=> d!105377 m!773773))

(declare-fun m!773775 () Bool)

(assert (=> b!830376 m!773775))

(assert (=> b!830376 m!773475))

(assert (=> b!830376 m!773475))

(declare-fun m!773777 () Bool)

(assert (=> b!830376 m!773777))

(assert (=> b!830378 m!773475))

(assert (=> b!830378 m!773475))

(assert (=> b!830378 m!773777))

(assert (=> d!105287 d!105377))

(declare-fun b!830381 () Bool)

(declare-fun e!463019 () Option!420)

(assert (=> b!830381 (= e!463019 (getValueByKey!414 (t!22376 lt!376805) (_1!5097 lt!376628)))))

(declare-fun b!830382 () Bool)

(assert (=> b!830382 (= e!463019 None!418)))

(declare-fun d!105379 () Bool)

(declare-fun c!89858 () Bool)

(assert (=> d!105379 (= c!89858 (and ((_ is Cons!15999) lt!376805) (= (_1!5097 (h!17128 lt!376805)) (_1!5097 lt!376628))))))

(declare-fun e!463018 () Option!420)

(assert (=> d!105379 (= (getValueByKey!414 lt!376805 (_1!5097 lt!376628)) e!463018)))

(declare-fun b!830379 () Bool)

(assert (=> b!830379 (= e!463018 (Some!419 (_2!5097 (h!17128 lt!376805))))))

(declare-fun b!830380 () Bool)

(assert (=> b!830380 (= e!463018 e!463019)))

(declare-fun c!89859 () Bool)

(assert (=> b!830380 (= c!89859 (and ((_ is Cons!15999) lt!376805) (not (= (_1!5097 (h!17128 lt!376805)) (_1!5097 lt!376628)))))))

(assert (= (and d!105379 c!89858) b!830379))

(assert (= (and d!105379 (not c!89858)) b!830380))

(assert (= (and b!830380 c!89859) b!830381))

(assert (= (and b!830380 (not c!89859)) b!830382))

(declare-fun m!773779 () Bool)

(assert (=> b!830381 m!773779))

(assert (=> d!105287 d!105379))

(declare-fun d!105381 () Bool)

(assert (=> d!105381 (= (getValueByKey!414 lt!376805 (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628)))))

(declare-fun lt!376907 () Unit!28435)

(declare-fun choose!1427 (List!16003 (_ BitVec 64) V!25277) Unit!28435)

(assert (=> d!105381 (= lt!376907 (choose!1427 lt!376805 (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun e!463022 () Bool)

(assert (=> d!105381 e!463022))

(declare-fun res!565619 () Bool)

(assert (=> d!105381 (=> (not res!565619) (not e!463022))))

(declare-fun isStrictlySorted!437 (List!16003) Bool)

(assert (=> d!105381 (= res!565619 (isStrictlySorted!437 lt!376805))))

(assert (=> d!105381 (= (lemmaContainsTupThenGetReturnValue!230 lt!376805 (_1!5097 lt!376628) (_2!5097 lt!376628)) lt!376907)))

(declare-fun b!830387 () Bool)

(declare-fun res!565620 () Bool)

(assert (=> b!830387 (=> (not res!565620) (not e!463022))))

(assert (=> b!830387 (= res!565620 (containsKey!400 lt!376805 (_1!5097 lt!376628)))))

(declare-fun b!830388 () Bool)

(assert (=> b!830388 (= e!463022 (contains!4209 lt!376805 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(assert (= (and d!105381 res!565619) b!830387))

(assert (= (and b!830387 res!565620) b!830388))

(assert (=> d!105381 m!773469))

(declare-fun m!773781 () Bool)

(assert (=> d!105381 m!773781))

(declare-fun m!773783 () Bool)

(assert (=> d!105381 m!773783))

(declare-fun m!773785 () Bool)

(assert (=> b!830387 m!773785))

(declare-fun m!773787 () Bool)

(assert (=> b!830388 m!773787))

(assert (=> d!105287 d!105381))

(declare-fun b!830409 () Bool)

(declare-fun e!463033 () List!16003)

(declare-fun call!36272 () List!16003)

(assert (=> b!830409 (= e!463033 call!36272)))

(declare-fun bm!36267 () Bool)

(declare-fun call!36270 () List!16003)

(assert (=> bm!36267 (= call!36272 call!36270)))

(declare-fun b!830410 () Bool)

(declare-fun e!463035 () Bool)

(declare-fun lt!376910 () List!16003)

(assert (=> b!830410 (= e!463035 (contains!4209 lt!376910 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun b!830411 () Bool)

(declare-fun c!89870 () Bool)

(declare-fun c!89871 () Bool)

(declare-fun e!463036 () List!16003)

(assert (=> b!830411 (= e!463036 (ite c!89871 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (ite c!89870 (Cons!15999 (h!17128 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) Nil!16000)))))

(declare-fun b!830412 () Bool)

(assert (=> b!830412 (= e!463036 (insertStrictlySorted!268 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun b!830413 () Bool)

(assert (=> b!830413 (= e!463033 call!36272)))

(declare-fun c!89868 () Bool)

(declare-fun bm!36268 () Bool)

(declare-fun call!36271 () List!16003)

(declare-fun $colon$colon!535 (List!16003 tuple2!10174) List!16003)

(assert (=> bm!36268 (= call!36271 ($colon$colon!535 e!463036 (ite c!89868 (h!17128 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628)))))))

(declare-fun c!89869 () Bool)

(assert (=> bm!36268 (= c!89869 c!89868)))

(declare-fun b!830414 () Bool)

(declare-fun e!463037 () List!16003)

(assert (=> b!830414 (= e!463037 call!36270)))

(declare-fun b!830415 () Bool)

(declare-fun e!463034 () List!16003)

(assert (=> b!830415 (= e!463034 call!36271)))

(declare-fun b!830416 () Bool)

(assert (=> b!830416 (= e!463034 e!463037)))

(assert (=> b!830416 (= c!89871 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5097 lt!376628))))))

(declare-fun b!830418 () Bool)

(declare-fun res!565625 () Bool)

(assert (=> b!830418 (=> (not res!565625) (not e!463035))))

(assert (=> b!830418 (= res!565625 (containsKey!400 lt!376910 (_1!5097 lt!376628)))))

(declare-fun bm!36269 () Bool)

(assert (=> bm!36269 (= call!36270 call!36271)))

(declare-fun d!105383 () Bool)

(assert (=> d!105383 e!463035))

(declare-fun res!565626 () Bool)

(assert (=> d!105383 (=> (not res!565626) (not e!463035))))

(assert (=> d!105383 (= res!565626 (isStrictlySorted!437 lt!376910))))

(assert (=> d!105383 (= lt!376910 e!463034)))

(assert (=> d!105383 (= c!89868 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5097 lt!376628))))))

(assert (=> d!105383 (isStrictlySorted!437 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105383 (= (insertStrictlySorted!268 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (_1!5097 lt!376628) (_2!5097 lt!376628)) lt!376910)))

(declare-fun b!830417 () Bool)

(assert (=> b!830417 (= c!89870 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (bvsgt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5097 lt!376628))))))

(assert (=> b!830417 (= e!463037 e!463033)))

(assert (= (and d!105383 c!89868) b!830415))

(assert (= (and d!105383 (not c!89868)) b!830416))

(assert (= (and b!830416 c!89871) b!830414))

(assert (= (and b!830416 (not c!89871)) b!830417))

(assert (= (and b!830417 c!89870) b!830409))

(assert (= (and b!830417 (not c!89870)) b!830413))

(assert (= (or b!830409 b!830413) bm!36267))

(assert (= (or b!830414 bm!36267) bm!36269))

(assert (= (or b!830415 bm!36269) bm!36268))

(assert (= (and bm!36268 c!89869) b!830412))

(assert (= (and bm!36268 (not c!89869)) b!830411))

(assert (= (and d!105383 res!565626) b!830418))

(assert (= (and b!830418 res!565625) b!830410))

(declare-fun m!773789 () Bool)

(assert (=> b!830418 m!773789))

(declare-fun m!773791 () Bool)

(assert (=> d!105383 m!773791))

(declare-fun m!773793 () Bool)

(assert (=> d!105383 m!773793))

(declare-fun m!773795 () Bool)

(assert (=> bm!36268 m!773795))

(declare-fun m!773797 () Bool)

(assert (=> b!830412 m!773797))

(declare-fun m!773799 () Bool)

(assert (=> b!830410 m!773799))

(assert (=> d!105287 d!105383))

(declare-fun d!105385 () Bool)

(declare-fun e!463039 () Bool)

(assert (=> d!105385 e!463039))

(declare-fun res!565627 () Bool)

(assert (=> d!105385 (=> res!565627 e!463039)))

(declare-fun lt!376914 () Bool)

(assert (=> d!105385 (= res!565627 (not lt!376914))))

(declare-fun lt!376913 () Bool)

(assert (=> d!105385 (= lt!376914 lt!376913)))

(declare-fun lt!376911 () Unit!28435)

(declare-fun e!463038 () Unit!28435)

(assert (=> d!105385 (= lt!376911 e!463038)))

(declare-fun c!89872 () Bool)

(assert (=> d!105385 (= c!89872 lt!376913)))

(assert (=> d!105385 (= lt!376913 (containsKey!400 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105385 (= (contains!4208 lt!376807 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!376914)))

(declare-fun b!830419 () Bool)

(declare-fun lt!376912 () Unit!28435)

(assert (=> b!830419 (= e!463038 lt!376912)))

(assert (=> b!830419 (= lt!376912 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> b!830419 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!830420 () Bool)

(declare-fun Unit!28447 () Unit!28435)

(assert (=> b!830420 (= e!463038 Unit!28447)))

(declare-fun b!830421 () Bool)

(assert (=> b!830421 (= e!463039 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!105385 c!89872) b!830419))

(assert (= (and d!105385 (not c!89872)) b!830420))

(assert (= (and d!105385 (not res!565627)) b!830421))

(declare-fun m!773801 () Bool)

(assert (=> d!105385 m!773801))

(declare-fun m!773803 () Bool)

(assert (=> b!830419 m!773803))

(assert (=> b!830419 m!773487))

(assert (=> b!830419 m!773487))

(declare-fun m!773805 () Bool)

(assert (=> b!830419 m!773805))

(assert (=> b!830421 m!773487))

(assert (=> b!830421 m!773487))

(assert (=> b!830421 m!773805))

(assert (=> d!105289 d!105385))

(declare-fun b!830424 () Bool)

(declare-fun e!463041 () Option!420)

(assert (=> b!830424 (= e!463041 (getValueByKey!414 (t!22376 lt!376809) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!830425 () Bool)

(assert (=> b!830425 (= e!463041 None!418)))

(declare-fun d!105387 () Bool)

(declare-fun c!89873 () Bool)

(assert (=> d!105387 (= c!89873 (and ((_ is Cons!15999) lt!376809) (= (_1!5097 (h!17128 lt!376809)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!463040 () Option!420)

(assert (=> d!105387 (= (getValueByKey!414 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!463040)))

(declare-fun b!830422 () Bool)

(assert (=> b!830422 (= e!463040 (Some!419 (_2!5097 (h!17128 lt!376809))))))

(declare-fun b!830423 () Bool)

(assert (=> b!830423 (= e!463040 e!463041)))

(declare-fun c!89874 () Bool)

(assert (=> b!830423 (= c!89874 (and ((_ is Cons!15999) lt!376809) (not (= (_1!5097 (h!17128 lt!376809)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(assert (= (and d!105387 c!89873) b!830422))

(assert (= (and d!105387 (not c!89873)) b!830423))

(assert (= (and b!830423 c!89874) b!830424))

(assert (= (and b!830423 (not c!89874)) b!830425))

(declare-fun m!773807 () Bool)

(assert (=> b!830424 m!773807))

(assert (=> d!105289 d!105387))

(declare-fun d!105389 () Bool)

(assert (=> d!105389 (= (getValueByKey!414 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!376915 () Unit!28435)

(assert (=> d!105389 (= lt!376915 (choose!1427 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun e!463042 () Bool)

(assert (=> d!105389 e!463042))

(declare-fun res!565628 () Bool)

(assert (=> d!105389 (=> (not res!565628) (not e!463042))))

(assert (=> d!105389 (= res!565628 (isStrictlySorted!437 lt!376809))))

(assert (=> d!105389 (= (lemmaContainsTupThenGetReturnValue!230 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!376915)))

(declare-fun b!830426 () Bool)

(declare-fun res!565629 () Bool)

(assert (=> b!830426 (=> (not res!565629) (not e!463042))))

(assert (=> b!830426 (= res!565629 (containsKey!400 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!830427 () Bool)

(assert (=> b!830427 (= e!463042 (contains!4209 lt!376809 (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!105389 res!565628) b!830426))

(assert (= (and b!830426 res!565629) b!830427))

(assert (=> d!105389 m!773481))

(declare-fun m!773809 () Bool)

(assert (=> d!105389 m!773809))

(declare-fun m!773811 () Bool)

(assert (=> d!105389 m!773811))

(declare-fun m!773813 () Bool)

(assert (=> b!830426 m!773813))

(declare-fun m!773815 () Bool)

(assert (=> b!830427 m!773815))

(assert (=> d!105289 d!105389))

(declare-fun b!830428 () Bool)

(declare-fun e!463043 () List!16003)

(declare-fun call!36275 () List!16003)

(assert (=> b!830428 (= e!463043 call!36275)))

(declare-fun bm!36270 () Bool)

(declare-fun call!36273 () List!16003)

(assert (=> bm!36270 (= call!36275 call!36273)))

(declare-fun b!830429 () Bool)

(declare-fun e!463045 () Bool)

(declare-fun lt!376916 () List!16003)

(assert (=> b!830429 (= e!463045 (contains!4209 lt!376916 (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun c!89877 () Bool)

(declare-fun e!463046 () List!16003)

(declare-fun b!830430 () Bool)

(declare-fun c!89878 () Bool)

(assert (=> b!830430 (= e!463046 (ite c!89878 (t!22376 (toList!4521 lt!376624)) (ite c!89877 (Cons!15999 (h!17128 (toList!4521 lt!376624)) (t!22376 (toList!4521 lt!376624))) Nil!16000)))))

(declare-fun b!830431 () Bool)

(assert (=> b!830431 (= e!463046 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376624)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!830432 () Bool)

(assert (=> b!830432 (= e!463043 call!36275)))

(declare-fun c!89875 () Bool)

(declare-fun bm!36271 () Bool)

(declare-fun call!36274 () List!16003)

(assert (=> bm!36271 (= call!36274 ($colon$colon!535 e!463046 (ite c!89875 (h!17128 (toList!4521 lt!376624)) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun c!89876 () Bool)

(assert (=> bm!36271 (= c!89876 c!89875)))

(declare-fun b!830433 () Bool)

(declare-fun e!463047 () List!16003)

(assert (=> b!830433 (= e!463047 call!36273)))

(declare-fun b!830434 () Bool)

(declare-fun e!463044 () List!16003)

(assert (=> b!830434 (= e!463044 call!36274)))

(declare-fun b!830435 () Bool)

(assert (=> b!830435 (= e!463044 e!463047)))

(assert (=> b!830435 (= c!89878 (and ((_ is Cons!15999) (toList!4521 lt!376624)) (= (_1!5097 (h!17128 (toList!4521 lt!376624))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!830437 () Bool)

(declare-fun res!565630 () Bool)

(assert (=> b!830437 (=> (not res!565630) (not e!463045))))

(assert (=> b!830437 (= res!565630 (containsKey!400 lt!376916 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun bm!36272 () Bool)

(assert (=> bm!36272 (= call!36273 call!36274)))

(declare-fun d!105391 () Bool)

(assert (=> d!105391 e!463045))

(declare-fun res!565631 () Bool)

(assert (=> d!105391 (=> (not res!565631) (not e!463045))))

(assert (=> d!105391 (= res!565631 (isStrictlySorted!437 lt!376916))))

(assert (=> d!105391 (= lt!376916 e!463044)))

(assert (=> d!105391 (= c!89875 (and ((_ is Cons!15999) (toList!4521 lt!376624)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376624))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!105391 (isStrictlySorted!437 (toList!4521 lt!376624))))

(assert (=> d!105391 (= (insertStrictlySorted!268 (toList!4521 lt!376624) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!376916)))

(declare-fun b!830436 () Bool)

(assert (=> b!830436 (= c!89877 (and ((_ is Cons!15999) (toList!4521 lt!376624)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376624))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> b!830436 (= e!463047 e!463043)))

(assert (= (and d!105391 c!89875) b!830434))

(assert (= (and d!105391 (not c!89875)) b!830435))

(assert (= (and b!830435 c!89878) b!830433))

(assert (= (and b!830435 (not c!89878)) b!830436))

(assert (= (and b!830436 c!89877) b!830428))

(assert (= (and b!830436 (not c!89877)) b!830432))

(assert (= (or b!830428 b!830432) bm!36270))

(assert (= (or b!830433 bm!36270) bm!36272))

(assert (= (or b!830434 bm!36272) bm!36271))

(assert (= (and bm!36271 c!89876) b!830431))

(assert (= (and bm!36271 (not c!89876)) b!830430))

(assert (= (and d!105391 res!565631) b!830437))

(assert (= (and b!830437 res!565630) b!830429))

(declare-fun m!773817 () Bool)

(assert (=> b!830437 m!773817))

(declare-fun m!773819 () Bool)

(assert (=> d!105391 m!773819))

(declare-fun m!773821 () Bool)

(assert (=> d!105391 m!773821))

(declare-fun m!773823 () Bool)

(assert (=> bm!36271 m!773823))

(declare-fun m!773825 () Bool)

(assert (=> b!830431 m!773825))

(declare-fun m!773827 () Bool)

(assert (=> b!830429 m!773827))

(assert (=> d!105289 d!105391))

(assert (=> b!830236 d!105297))

(assert (=> b!830186 d!105297))

(declare-fun d!105393 () Bool)

(declare-fun e!463049 () Bool)

(assert (=> d!105393 e!463049))

(declare-fun res!565632 () Bool)

(assert (=> d!105393 (=> res!565632 e!463049)))

(declare-fun lt!376920 () Bool)

(assert (=> d!105393 (= res!565632 (not lt!376920))))

(declare-fun lt!376919 () Bool)

(assert (=> d!105393 (= lt!376920 lt!376919)))

(declare-fun lt!376917 () Unit!28435)

(declare-fun e!463048 () Unit!28435)

(assert (=> d!105393 (= lt!376917 e!463048)))

(declare-fun c!89879 () Bool)

(assert (=> d!105393 (= c!89879 lt!376919)))

(assert (=> d!105393 (= lt!376919 (containsKey!400 (toList!4521 lt!376729) (_1!5097 lt!376622)))))

(assert (=> d!105393 (= (contains!4208 lt!376729 (_1!5097 lt!376622)) lt!376920)))

(declare-fun b!830438 () Bool)

(declare-fun lt!376918 () Unit!28435)

(assert (=> b!830438 (= e!463048 lt!376918)))

(assert (=> b!830438 (= lt!376918 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376729) (_1!5097 lt!376622)))))

(assert (=> b!830438 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376729) (_1!5097 lt!376622)))))

(declare-fun b!830439 () Bool)

(declare-fun Unit!28448 () Unit!28435)

(assert (=> b!830439 (= e!463048 Unit!28448)))

(declare-fun b!830440 () Bool)

(assert (=> b!830440 (= e!463049 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376729) (_1!5097 lt!376622))))))

(assert (= (and d!105393 c!89879) b!830438))

(assert (= (and d!105393 (not c!89879)) b!830439))

(assert (= (and d!105393 (not res!565632)) b!830440))

(declare-fun m!773829 () Bool)

(assert (=> d!105393 m!773829))

(declare-fun m!773831 () Bool)

(assert (=> b!830438 m!773831))

(assert (=> b!830438 m!773339))

(assert (=> b!830438 m!773339))

(declare-fun m!773833 () Bool)

(assert (=> b!830438 m!773833))

(assert (=> b!830440 m!773339))

(assert (=> b!830440 m!773339))

(assert (=> b!830440 m!773833))

(assert (=> d!105263 d!105393))

(declare-fun b!830443 () Bool)

(declare-fun e!463051 () Option!420)

(assert (=> b!830443 (= e!463051 (getValueByKey!414 (t!22376 lt!376731) (_1!5097 lt!376622)))))

(declare-fun b!830444 () Bool)

(assert (=> b!830444 (= e!463051 None!418)))

(declare-fun d!105395 () Bool)

(declare-fun c!89880 () Bool)

(assert (=> d!105395 (= c!89880 (and ((_ is Cons!15999) lt!376731) (= (_1!5097 (h!17128 lt!376731)) (_1!5097 lt!376622))))))

(declare-fun e!463050 () Option!420)

(assert (=> d!105395 (= (getValueByKey!414 lt!376731 (_1!5097 lt!376622)) e!463050)))

(declare-fun b!830441 () Bool)

(assert (=> b!830441 (= e!463050 (Some!419 (_2!5097 (h!17128 lt!376731))))))

(declare-fun b!830442 () Bool)

(assert (=> b!830442 (= e!463050 e!463051)))

(declare-fun c!89881 () Bool)

(assert (=> b!830442 (= c!89881 (and ((_ is Cons!15999) lt!376731) (not (= (_1!5097 (h!17128 lt!376731)) (_1!5097 lt!376622)))))))

(assert (= (and d!105395 c!89880) b!830441))

(assert (= (and d!105395 (not c!89880)) b!830442))

(assert (= (and b!830442 c!89881) b!830443))

(assert (= (and b!830442 (not c!89881)) b!830444))

(declare-fun m!773835 () Bool)

(assert (=> b!830443 m!773835))

(assert (=> d!105263 d!105395))

(declare-fun d!105397 () Bool)

(assert (=> d!105397 (= (getValueByKey!414 lt!376731 (_1!5097 lt!376622)) (Some!419 (_2!5097 lt!376622)))))

(declare-fun lt!376921 () Unit!28435)

(assert (=> d!105397 (= lt!376921 (choose!1427 lt!376731 (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(declare-fun e!463052 () Bool)

(assert (=> d!105397 e!463052))

(declare-fun res!565633 () Bool)

(assert (=> d!105397 (=> (not res!565633) (not e!463052))))

(assert (=> d!105397 (= res!565633 (isStrictlySorted!437 lt!376731))))

(assert (=> d!105397 (= (lemmaContainsTupThenGetReturnValue!230 lt!376731 (_1!5097 lt!376622) (_2!5097 lt!376622)) lt!376921)))

(declare-fun b!830445 () Bool)

(declare-fun res!565634 () Bool)

(assert (=> b!830445 (=> (not res!565634) (not e!463052))))

(assert (=> b!830445 (= res!565634 (containsKey!400 lt!376731 (_1!5097 lt!376622)))))

(declare-fun b!830446 () Bool)

(assert (=> b!830446 (= e!463052 (contains!4209 lt!376731 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(assert (= (and d!105397 res!565633) b!830445))

(assert (= (and b!830445 res!565634) b!830446))

(assert (=> d!105397 m!773333))

(declare-fun m!773837 () Bool)

(assert (=> d!105397 m!773837))

(declare-fun m!773839 () Bool)

(assert (=> d!105397 m!773839))

(declare-fun m!773841 () Bool)

(assert (=> b!830445 m!773841))

(declare-fun m!773843 () Bool)

(assert (=> b!830446 m!773843))

(assert (=> d!105263 d!105397))

(declare-fun b!830447 () Bool)

(declare-fun e!463053 () List!16003)

(declare-fun call!36278 () List!16003)

(assert (=> b!830447 (= e!463053 call!36278)))

(declare-fun bm!36273 () Bool)

(declare-fun call!36276 () List!16003)

(assert (=> bm!36273 (= call!36278 call!36276)))

(declare-fun b!830448 () Bool)

(declare-fun e!463055 () Bool)

(declare-fun lt!376922 () List!16003)

(assert (=> b!830448 (= e!463055 (contains!4209 lt!376922 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun b!830449 () Bool)

(declare-fun c!89885 () Bool)

(declare-fun e!463056 () List!16003)

(declare-fun c!89884 () Bool)

(assert (=> b!830449 (= e!463056 (ite c!89885 (t!22376 (toList!4521 lt!376626)) (ite c!89884 (Cons!15999 (h!17128 (toList!4521 lt!376626)) (t!22376 (toList!4521 lt!376626))) Nil!16000)))))

(declare-fun b!830450 () Bool)

(assert (=> b!830450 (= e!463056 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376626)) (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(declare-fun b!830451 () Bool)

(assert (=> b!830451 (= e!463053 call!36278)))

(declare-fun c!89882 () Bool)

(declare-fun call!36277 () List!16003)

(declare-fun bm!36274 () Bool)

(assert (=> bm!36274 (= call!36277 ($colon$colon!535 e!463056 (ite c!89882 (h!17128 (toList!4521 lt!376626)) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622)))))))

(declare-fun c!89883 () Bool)

(assert (=> bm!36274 (= c!89883 c!89882)))

(declare-fun b!830452 () Bool)

(declare-fun e!463057 () List!16003)

(assert (=> b!830452 (= e!463057 call!36276)))

(declare-fun b!830453 () Bool)

(declare-fun e!463054 () List!16003)

(assert (=> b!830453 (= e!463054 call!36277)))

(declare-fun b!830454 () Bool)

(assert (=> b!830454 (= e!463054 e!463057)))

(assert (=> b!830454 (= c!89885 (and ((_ is Cons!15999) (toList!4521 lt!376626)) (= (_1!5097 (h!17128 (toList!4521 lt!376626))) (_1!5097 lt!376622))))))

(declare-fun b!830456 () Bool)

(declare-fun res!565635 () Bool)

(assert (=> b!830456 (=> (not res!565635) (not e!463055))))

(assert (=> b!830456 (= res!565635 (containsKey!400 lt!376922 (_1!5097 lt!376622)))))

(declare-fun bm!36275 () Bool)

(assert (=> bm!36275 (= call!36276 call!36277)))

(declare-fun d!105399 () Bool)

(assert (=> d!105399 e!463055))

(declare-fun res!565636 () Bool)

(assert (=> d!105399 (=> (not res!565636) (not e!463055))))

(assert (=> d!105399 (= res!565636 (isStrictlySorted!437 lt!376922))))

(assert (=> d!105399 (= lt!376922 e!463054)))

(assert (=> d!105399 (= c!89882 (and ((_ is Cons!15999) (toList!4521 lt!376626)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376626))) (_1!5097 lt!376622))))))

(assert (=> d!105399 (isStrictlySorted!437 (toList!4521 lt!376626))))

(assert (=> d!105399 (= (insertStrictlySorted!268 (toList!4521 lt!376626) (_1!5097 lt!376622) (_2!5097 lt!376622)) lt!376922)))

(declare-fun b!830455 () Bool)

(assert (=> b!830455 (= c!89884 (and ((_ is Cons!15999) (toList!4521 lt!376626)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376626))) (_1!5097 lt!376622))))))

(assert (=> b!830455 (= e!463057 e!463053)))

(assert (= (and d!105399 c!89882) b!830453))

(assert (= (and d!105399 (not c!89882)) b!830454))

(assert (= (and b!830454 c!89885) b!830452))

(assert (= (and b!830454 (not c!89885)) b!830455))

(assert (= (and b!830455 c!89884) b!830447))

(assert (= (and b!830455 (not c!89884)) b!830451))

(assert (= (or b!830447 b!830451) bm!36273))

(assert (= (or b!830452 bm!36273) bm!36275))

(assert (= (or b!830453 bm!36275) bm!36274))

(assert (= (and bm!36274 c!89883) b!830450))

(assert (= (and bm!36274 (not c!89883)) b!830449))

(assert (= (and d!105399 res!565636) b!830456))

(assert (= (and b!830456 res!565635) b!830448))

(declare-fun m!773845 () Bool)

(assert (=> b!830456 m!773845))

(declare-fun m!773847 () Bool)

(assert (=> d!105399 m!773847))

(declare-fun m!773849 () Bool)

(assert (=> d!105399 m!773849))

(declare-fun m!773851 () Bool)

(assert (=> bm!36274 m!773851))

(declare-fun m!773853 () Bool)

(assert (=> b!830450 m!773853))

(declare-fun m!773855 () Bool)

(assert (=> b!830448 m!773855))

(assert (=> d!105263 d!105399))

(declare-fun d!105401 () Bool)

(declare-fun e!463059 () Bool)

(assert (=> d!105401 e!463059))

(declare-fun res!565637 () Bool)

(assert (=> d!105401 (=> res!565637 e!463059)))

(declare-fun lt!376926 () Bool)

(assert (=> d!105401 (= res!565637 (not lt!376926))))

(declare-fun lt!376925 () Bool)

(assert (=> d!105401 (= lt!376926 lt!376925)))

(declare-fun lt!376923 () Unit!28435)

(declare-fun e!463058 () Unit!28435)

(assert (=> d!105401 (= lt!376923 e!463058)))

(declare-fun c!89886 () Bool)

(assert (=> d!105401 (= c!89886 lt!376925)))

(assert (=> d!105401 (= lt!376925 (containsKey!400 (toList!4521 lt!376659) (_1!5097 lt!376628)))))

(assert (=> d!105401 (= (contains!4208 lt!376659 (_1!5097 lt!376628)) lt!376926)))

(declare-fun b!830457 () Bool)

(declare-fun lt!376924 () Unit!28435)

(assert (=> b!830457 (= e!463058 lt!376924)))

(assert (=> b!830457 (= lt!376924 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376659) (_1!5097 lt!376628)))))

(assert (=> b!830457 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376659) (_1!5097 lt!376628)))))

(declare-fun b!830458 () Bool)

(declare-fun Unit!28449 () Unit!28435)

(assert (=> b!830458 (= e!463058 Unit!28449)))

(declare-fun b!830459 () Bool)

(assert (=> b!830459 (= e!463059 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376659) (_1!5097 lt!376628))))))

(assert (= (and d!105401 c!89886) b!830457))

(assert (= (and d!105401 (not c!89886)) b!830458))

(assert (= (and d!105401 (not res!565637)) b!830459))

(declare-fun m!773857 () Bool)

(assert (=> d!105401 m!773857))

(declare-fun m!773859 () Bool)

(assert (=> b!830457 m!773859))

(assert (=> b!830457 m!773271))

(assert (=> b!830457 m!773271))

(declare-fun m!773861 () Bool)

(assert (=> b!830457 m!773861))

(assert (=> b!830459 m!773271))

(assert (=> b!830459 m!773271))

(assert (=> b!830459 m!773861))

(assert (=> d!105259 d!105401))

(declare-fun b!830462 () Bool)

(declare-fun e!463061 () Option!420)

(assert (=> b!830462 (= e!463061 (getValueByKey!414 (t!22376 lt!376661) (_1!5097 lt!376628)))))

(declare-fun b!830463 () Bool)

(assert (=> b!830463 (= e!463061 None!418)))

(declare-fun d!105403 () Bool)

(declare-fun c!89887 () Bool)

(assert (=> d!105403 (= c!89887 (and ((_ is Cons!15999) lt!376661) (= (_1!5097 (h!17128 lt!376661)) (_1!5097 lt!376628))))))

(declare-fun e!463060 () Option!420)

(assert (=> d!105403 (= (getValueByKey!414 lt!376661 (_1!5097 lt!376628)) e!463060)))

(declare-fun b!830460 () Bool)

(assert (=> b!830460 (= e!463060 (Some!419 (_2!5097 (h!17128 lt!376661))))))

(declare-fun b!830461 () Bool)

(assert (=> b!830461 (= e!463060 e!463061)))

(declare-fun c!89888 () Bool)

(assert (=> b!830461 (= c!89888 (and ((_ is Cons!15999) lt!376661) (not (= (_1!5097 (h!17128 lt!376661)) (_1!5097 lt!376628)))))))

(assert (= (and d!105403 c!89887) b!830460))

(assert (= (and d!105403 (not c!89887)) b!830461))

(assert (= (and b!830461 c!89888) b!830462))

(assert (= (and b!830461 (not c!89888)) b!830463))

(declare-fun m!773863 () Bool)

(assert (=> b!830462 m!773863))

(assert (=> d!105259 d!105403))

(declare-fun d!105405 () Bool)

(assert (=> d!105405 (= (getValueByKey!414 lt!376661 (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628)))))

(declare-fun lt!376927 () Unit!28435)

(assert (=> d!105405 (= lt!376927 (choose!1427 lt!376661 (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun e!463062 () Bool)

(assert (=> d!105405 e!463062))

(declare-fun res!565638 () Bool)

(assert (=> d!105405 (=> (not res!565638) (not e!463062))))

(assert (=> d!105405 (= res!565638 (isStrictlySorted!437 lt!376661))))

(assert (=> d!105405 (= (lemmaContainsTupThenGetReturnValue!230 lt!376661 (_1!5097 lt!376628) (_2!5097 lt!376628)) lt!376927)))

(declare-fun b!830464 () Bool)

(declare-fun res!565639 () Bool)

(assert (=> b!830464 (=> (not res!565639) (not e!463062))))

(assert (=> b!830464 (= res!565639 (containsKey!400 lt!376661 (_1!5097 lt!376628)))))

(declare-fun b!830465 () Bool)

(assert (=> b!830465 (= e!463062 (contains!4209 lt!376661 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(assert (= (and d!105405 res!565638) b!830464))

(assert (= (and b!830464 res!565639) b!830465))

(assert (=> d!105405 m!773265))

(declare-fun m!773865 () Bool)

(assert (=> d!105405 m!773865))

(declare-fun m!773867 () Bool)

(assert (=> d!105405 m!773867))

(declare-fun m!773869 () Bool)

(assert (=> b!830464 m!773869))

(declare-fun m!773871 () Bool)

(assert (=> b!830465 m!773871))

(assert (=> d!105259 d!105405))

(declare-fun b!830466 () Bool)

(declare-fun e!463063 () List!16003)

(declare-fun call!36281 () List!16003)

(assert (=> b!830466 (= e!463063 call!36281)))

(declare-fun bm!36276 () Bool)

(declare-fun call!36279 () List!16003)

(assert (=> bm!36276 (= call!36281 call!36279)))

(declare-fun b!830467 () Bool)

(declare-fun e!463065 () Bool)

(declare-fun lt!376928 () List!16003)

(assert (=> b!830467 (= e!463065 (contains!4209 lt!376928 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun c!89892 () Bool)

(declare-fun b!830468 () Bool)

(declare-fun c!89891 () Bool)

(declare-fun e!463066 () List!16003)

(assert (=> b!830468 (= e!463066 (ite c!89892 (t!22376 (toList!4521 lt!376626)) (ite c!89891 (Cons!15999 (h!17128 (toList!4521 lt!376626)) (t!22376 (toList!4521 lt!376626))) Nil!16000)))))

(declare-fun b!830469 () Bool)

(assert (=> b!830469 (= e!463066 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376626)) (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun b!830470 () Bool)

(assert (=> b!830470 (= e!463063 call!36281)))

(declare-fun bm!36277 () Bool)

(declare-fun c!89889 () Bool)

(declare-fun call!36280 () List!16003)

(assert (=> bm!36277 (= call!36280 ($colon$colon!535 e!463066 (ite c!89889 (h!17128 (toList!4521 lt!376626)) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628)))))))

(declare-fun c!89890 () Bool)

(assert (=> bm!36277 (= c!89890 c!89889)))

(declare-fun b!830471 () Bool)

(declare-fun e!463067 () List!16003)

(assert (=> b!830471 (= e!463067 call!36279)))

(declare-fun b!830472 () Bool)

(declare-fun e!463064 () List!16003)

(assert (=> b!830472 (= e!463064 call!36280)))

(declare-fun b!830473 () Bool)

(assert (=> b!830473 (= e!463064 e!463067)))

(assert (=> b!830473 (= c!89892 (and ((_ is Cons!15999) (toList!4521 lt!376626)) (= (_1!5097 (h!17128 (toList!4521 lt!376626))) (_1!5097 lt!376628))))))

(declare-fun b!830475 () Bool)

(declare-fun res!565640 () Bool)

(assert (=> b!830475 (=> (not res!565640) (not e!463065))))

(assert (=> b!830475 (= res!565640 (containsKey!400 lt!376928 (_1!5097 lt!376628)))))

(declare-fun bm!36278 () Bool)

(assert (=> bm!36278 (= call!36279 call!36280)))

(declare-fun d!105407 () Bool)

(assert (=> d!105407 e!463065))

(declare-fun res!565641 () Bool)

(assert (=> d!105407 (=> (not res!565641) (not e!463065))))

(assert (=> d!105407 (= res!565641 (isStrictlySorted!437 lt!376928))))

(assert (=> d!105407 (= lt!376928 e!463064)))

(assert (=> d!105407 (= c!89889 (and ((_ is Cons!15999) (toList!4521 lt!376626)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376626))) (_1!5097 lt!376628))))))

(assert (=> d!105407 (isStrictlySorted!437 (toList!4521 lt!376626))))

(assert (=> d!105407 (= (insertStrictlySorted!268 (toList!4521 lt!376626) (_1!5097 lt!376628) (_2!5097 lt!376628)) lt!376928)))

(declare-fun b!830474 () Bool)

(assert (=> b!830474 (= c!89891 (and ((_ is Cons!15999) (toList!4521 lt!376626)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376626))) (_1!5097 lt!376628))))))

(assert (=> b!830474 (= e!463067 e!463063)))

(assert (= (and d!105407 c!89889) b!830472))

(assert (= (and d!105407 (not c!89889)) b!830473))

(assert (= (and b!830473 c!89892) b!830471))

(assert (= (and b!830473 (not c!89892)) b!830474))

(assert (= (and b!830474 c!89891) b!830466))

(assert (= (and b!830474 (not c!89891)) b!830470))

(assert (= (or b!830466 b!830470) bm!36276))

(assert (= (or b!830471 bm!36276) bm!36278))

(assert (= (or b!830472 bm!36278) bm!36277))

(assert (= (and bm!36277 c!89890) b!830469))

(assert (= (and bm!36277 (not c!89890)) b!830468))

(assert (= (and d!105407 res!565641) b!830475))

(assert (= (and b!830475 res!565640) b!830467))

(declare-fun m!773873 () Bool)

(assert (=> b!830475 m!773873))

(declare-fun m!773875 () Bool)

(assert (=> d!105407 m!773875))

(assert (=> d!105407 m!773849))

(declare-fun m!773877 () Bool)

(assert (=> bm!36277 m!773877))

(declare-fun m!773879 () Bool)

(assert (=> b!830469 m!773879))

(declare-fun m!773881 () Bool)

(assert (=> b!830467 m!773881))

(assert (=> d!105259 d!105407))

(declare-fun d!105409 () Bool)

(declare-fun e!463068 () Bool)

(assert (=> d!105409 e!463068))

(declare-fun res!565642 () Bool)

(assert (=> d!105409 (=> (not res!565642) (not e!463068))))

(declare-fun lt!376930 () ListLongMap!9011)

(assert (=> d!105409 (= res!565642 (contains!4208 lt!376930 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun lt!376932 () List!16003)

(assert (=> d!105409 (= lt!376930 (ListLongMap!9012 lt!376932))))

(declare-fun lt!376931 () Unit!28435)

(declare-fun lt!376929 () Unit!28435)

(assert (=> d!105409 (= lt!376931 lt!376929)))

(assert (=> d!105409 (= (getValueByKey!414 lt!376932 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!419 (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!105409 (= lt!376929 (lemmaContainsTupThenGetReturnValue!230 lt!376932 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!105409 (= lt!376932 (insertStrictlySorted!268 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248))) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!105409 (= (+!1950 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248)) (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!376930)))

(declare-fun b!830476 () Bool)

(declare-fun res!565643 () Bool)

(assert (=> b!830476 (=> (not res!565643) (not e!463068))))

(assert (=> b!830476 (= res!565643 (= (getValueByKey!414 (toList!4521 lt!376930) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!419 (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!830477 () Bool)

(assert (=> b!830477 (= e!463068 (contains!4209 (toList!4521 lt!376930) (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!105409 res!565642) b!830476))

(assert (= (and b!830476 res!565643) b!830477))

(declare-fun m!773883 () Bool)

(assert (=> d!105409 m!773883))

(declare-fun m!773885 () Bool)

(assert (=> d!105409 m!773885))

(declare-fun m!773887 () Bool)

(assert (=> d!105409 m!773887))

(declare-fun m!773889 () Bool)

(assert (=> d!105409 m!773889))

(declare-fun m!773891 () Bool)

(assert (=> b!830476 m!773891))

(declare-fun m!773893 () Bool)

(assert (=> b!830477 m!773893))

(assert (=> bm!36245 d!105409))

(declare-fun d!105411 () Bool)

(declare-fun lt!376933 () Bool)

(assert (=> d!105411 (= lt!376933 (select (content!389 (toList!4521 lt!376737)) lt!376622))))

(declare-fun e!463070 () Bool)

(assert (=> d!105411 (= lt!376933 e!463070)))

(declare-fun res!565645 () Bool)

(assert (=> d!105411 (=> (not res!565645) (not e!463070))))

(assert (=> d!105411 (= res!565645 ((_ is Cons!15999) (toList!4521 lt!376737)))))

(assert (=> d!105411 (= (contains!4209 (toList!4521 lt!376737) lt!376622) lt!376933)))

(declare-fun b!830478 () Bool)

(declare-fun e!463069 () Bool)

(assert (=> b!830478 (= e!463070 e!463069)))

(declare-fun res!565644 () Bool)

(assert (=> b!830478 (=> res!565644 e!463069)))

(assert (=> b!830478 (= res!565644 (= (h!17128 (toList!4521 lt!376737)) lt!376622))))

(declare-fun b!830479 () Bool)

(assert (=> b!830479 (= e!463069 (contains!4209 (t!22376 (toList!4521 lt!376737)) lt!376622))))

(assert (= (and d!105411 res!565645) b!830478))

(assert (= (and b!830478 (not res!565644)) b!830479))

(declare-fun m!773895 () Bool)

(assert (=> d!105411 m!773895))

(declare-fun m!773897 () Bool)

(assert (=> d!105411 m!773897))

(declare-fun m!773899 () Bool)

(assert (=> b!830479 m!773899))

(assert (=> b!830152 d!105411))

(declare-fun d!105413 () Bool)

(declare-fun e!463072 () Bool)

(assert (=> d!105413 e!463072))

(declare-fun res!565646 () Bool)

(assert (=> d!105413 (=> res!565646 e!463072)))

(declare-fun lt!376937 () Bool)

(assert (=> d!105413 (= res!565646 (not lt!376937))))

(declare-fun lt!376936 () Bool)

(assert (=> d!105413 (= lt!376937 lt!376936)))

(declare-fun lt!376934 () Unit!28435)

(declare-fun e!463071 () Unit!28435)

(assert (=> d!105413 (= lt!376934 e!463071)))

(declare-fun c!89893 () Bool)

(assert (=> d!105413 (= c!89893 lt!376936)))

(assert (=> d!105413 (= lt!376936 (containsKey!400 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787))))

(assert (=> d!105413 (= (contains!4208 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)) lt!376787) lt!376937)))

(declare-fun b!830480 () Bool)

(declare-fun lt!376935 () Unit!28435)

(assert (=> b!830480 (= e!463071 lt!376935)))

(assert (=> b!830480 (= lt!376935 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787))))

(assert (=> b!830480 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787))))

(declare-fun b!830481 () Bool)

(declare-fun Unit!28450 () Unit!28435)

(assert (=> b!830481 (= e!463071 Unit!28450)))

(declare-fun b!830482 () Bool)

(assert (=> b!830482 (= e!463072 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787)))))

(assert (= (and d!105413 c!89893) b!830480))

(assert (= (and d!105413 (not c!89893)) b!830481))

(assert (= (and d!105413 (not res!565646)) b!830482))

(declare-fun m!773901 () Bool)

(assert (=> d!105413 m!773901))

(declare-fun m!773903 () Bool)

(assert (=> b!830480 m!773903))

(declare-fun m!773905 () Bool)

(assert (=> b!830480 m!773905))

(assert (=> b!830480 m!773905))

(declare-fun m!773907 () Bool)

(assert (=> b!830480 m!773907))

(assert (=> b!830482 m!773905))

(assert (=> b!830482 m!773905))

(assert (=> b!830482 m!773907))

(assert (=> b!830229 d!105413))

(assert (=> b!830229 d!105295))

(declare-fun d!105415 () Bool)

(declare-fun e!463073 () Bool)

(assert (=> d!105415 e!463073))

(declare-fun res!565647 () Bool)

(assert (=> d!105415 (=> (not res!565647) (not e!463073))))

(declare-fun lt!376939 () ListLongMap!9011)

(assert (=> d!105415 (= res!565647 (contains!4208 lt!376939 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!376941 () List!16003)

(assert (=> d!105415 (= lt!376939 (ListLongMap!9012 lt!376941))))

(declare-fun lt!376940 () Unit!28435)

(declare-fun lt!376938 () Unit!28435)

(assert (=> d!105415 (= lt!376940 lt!376938)))

(assert (=> d!105415 (= (getValueByKey!414 lt!376941 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105415 (= lt!376938 (lemmaContainsTupThenGetReturnValue!230 lt!376941 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105415 (= lt!376941 (insertStrictlySorted!268 (toList!4521 call!36257) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105415 (= (+!1950 call!36257 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!376939)))

(declare-fun b!830483 () Bool)

(declare-fun res!565648 () Bool)

(assert (=> b!830483 (=> (not res!565648) (not e!463073))))

(assert (=> b!830483 (= res!565648 (= (getValueByKey!414 (toList!4521 lt!376939) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!830484 () Bool)

(assert (=> b!830484 (= e!463073 (contains!4209 (toList!4521 lt!376939) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!105415 res!565647) b!830483))

(assert (= (and b!830483 res!565648) b!830484))

(declare-fun m!773909 () Bool)

(assert (=> d!105415 m!773909))

(declare-fun m!773911 () Bool)

(assert (=> d!105415 m!773911))

(declare-fun m!773913 () Bool)

(assert (=> d!105415 m!773913))

(declare-fun m!773915 () Bool)

(assert (=> d!105415 m!773915))

(declare-fun m!773917 () Bool)

(assert (=> b!830483 m!773917))

(declare-fun m!773919 () Bool)

(assert (=> b!830484 m!773919))

(assert (=> b!830229 d!105415))

(declare-fun d!105417 () Bool)

(declare-fun e!463074 () Bool)

(assert (=> d!105417 e!463074))

(declare-fun res!565649 () Bool)

(assert (=> d!105417 (=> (not res!565649) (not e!463074))))

(declare-fun lt!376943 () ListLongMap!9011)

(assert (=> d!105417 (= res!565649 (contains!4208 lt!376943 (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))

(declare-fun lt!376945 () List!16003)

(assert (=> d!105417 (= lt!376943 (ListLongMap!9012 lt!376945))))

(declare-fun lt!376944 () Unit!28435)

(declare-fun lt!376942 () Unit!28435)

(assert (=> d!105417 (= lt!376944 lt!376942)))

(assert (=> d!105417 (= (getValueByKey!414 lt!376945 (_1!5097 (tuple2!10175 lt!376792 lt!376790))) (Some!419 (_2!5097 (tuple2!10175 lt!376792 lt!376790))))))

(assert (=> d!105417 (= lt!376942 (lemmaContainsTupThenGetReturnValue!230 lt!376945 (_1!5097 (tuple2!10175 lt!376792 lt!376790)) (_2!5097 (tuple2!10175 lt!376792 lt!376790))))))

(assert (=> d!105417 (= lt!376945 (insertStrictlySorted!268 (toList!4521 lt!376791) (_1!5097 (tuple2!10175 lt!376792 lt!376790)) (_2!5097 (tuple2!10175 lt!376792 lt!376790))))))

(assert (=> d!105417 (= (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)) lt!376943)))

(declare-fun b!830485 () Bool)

(declare-fun res!565650 () Bool)

(assert (=> b!830485 (=> (not res!565650) (not e!463074))))

(assert (=> b!830485 (= res!565650 (= (getValueByKey!414 (toList!4521 lt!376943) (_1!5097 (tuple2!10175 lt!376792 lt!376790))) (Some!419 (_2!5097 (tuple2!10175 lt!376792 lt!376790)))))))

(declare-fun b!830486 () Bool)

(assert (=> b!830486 (= e!463074 (contains!4209 (toList!4521 lt!376943) (tuple2!10175 lt!376792 lt!376790)))))

(assert (= (and d!105417 res!565649) b!830485))

(assert (= (and b!830485 res!565650) b!830486))

(declare-fun m!773921 () Bool)

(assert (=> d!105417 m!773921))

(declare-fun m!773923 () Bool)

(assert (=> d!105417 m!773923))

(declare-fun m!773925 () Bool)

(assert (=> d!105417 m!773925))

(declare-fun m!773927 () Bool)

(assert (=> d!105417 m!773927))

(declare-fun m!773929 () Bool)

(assert (=> b!830485 m!773929))

(declare-fun m!773931 () Bool)

(assert (=> b!830486 m!773931))

(assert (=> b!830229 d!105417))

(declare-fun d!105419 () Bool)

(assert (=> d!105419 (not (contains!4208 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)) lt!376787))))

(declare-fun lt!376948 () Unit!28435)

(declare-fun choose!1428 (ListLongMap!9011 (_ BitVec 64) V!25277 (_ BitVec 64)) Unit!28435)

(assert (=> d!105419 (= lt!376948 (choose!1428 lt!376791 lt!376792 lt!376790 lt!376787))))

(declare-fun e!463077 () Bool)

(assert (=> d!105419 e!463077))

(declare-fun res!565653 () Bool)

(assert (=> d!105419 (=> (not res!565653) (not e!463077))))

(assert (=> d!105419 (= res!565653 (not (contains!4208 lt!376791 lt!376787)))))

(assert (=> d!105419 (= (addStillNotContains!199 lt!376791 lt!376792 lt!376790 lt!376787) lt!376948)))

(declare-fun b!830490 () Bool)

(assert (=> b!830490 (= e!463077 (not (= lt!376792 lt!376787)))))

(assert (= (and d!105419 res!565653) b!830490))

(assert (=> d!105419 m!773445))

(assert (=> d!105419 m!773445))

(assert (=> d!105419 m!773447))

(declare-fun m!773933 () Bool)

(assert (=> d!105419 m!773933))

(declare-fun m!773935 () Bool)

(assert (=> d!105419 m!773935))

(assert (=> b!830229 d!105419))

(assert (=> b!830165 d!105297))

(assert (=> b!830221 d!105305))

(assert (=> bm!36254 d!105291))

(declare-fun b!830493 () Bool)

(declare-fun e!463079 () Option!420)

(assert (=> b!830493 (= e!463079 (getValueByKey!414 (t!22376 (toList!4521 lt!376807)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!830494 () Bool)

(assert (=> b!830494 (= e!463079 None!418)))

(declare-fun d!105421 () Bool)

(declare-fun c!89894 () Bool)

(assert (=> d!105421 (= c!89894 (and ((_ is Cons!15999) (toList!4521 lt!376807)) (= (_1!5097 (h!17128 (toList!4521 lt!376807))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!463078 () Option!420)

(assert (=> d!105421 (= (getValueByKey!414 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!463078)))

(declare-fun b!830491 () Bool)

(assert (=> b!830491 (= e!463078 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376807)))))))

(declare-fun b!830492 () Bool)

(assert (=> b!830492 (= e!463078 e!463079)))

(declare-fun c!89895 () Bool)

(assert (=> b!830492 (= c!89895 (and ((_ is Cons!15999) (toList!4521 lt!376807)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376807))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(assert (= (and d!105421 c!89894) b!830491))

(assert (= (and d!105421 (not c!89894)) b!830492))

(assert (= (and b!830492 c!89895) b!830493))

(assert (= (and b!830492 (not c!89895)) b!830494))

(declare-fun m!773937 () Bool)

(assert (=> b!830493 m!773937))

(assert (=> b!830251 d!105421))

(assert (=> d!105273 d!105277))

(assert (=> d!105273 d!105275))

(declare-fun d!105423 () Bool)

(assert (=> d!105423 (= (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!105423 true))

(declare-fun _$13!46 () Unit!28435)

(assert (=> d!105423 (= (choose!1424 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) _$13!46)))

(declare-fun bs!23191 () Bool)

(assert (= bs!23191 d!105423))

(assert (=> bs!23191 m!773225))

(assert (=> bs!23191 m!773223))

(assert (=> d!105273 d!105423))

(assert (=> d!105273 d!105279))

(declare-fun d!105425 () Bool)

(declare-fun e!463081 () Bool)

(assert (=> d!105425 e!463081))

(declare-fun res!565654 () Bool)

(assert (=> d!105425 (=> res!565654 e!463081)))

(declare-fun lt!376952 () Bool)

(assert (=> d!105425 (= res!565654 (not lt!376952))))

(declare-fun lt!376951 () Bool)

(assert (=> d!105425 (= lt!376952 lt!376951)))

(declare-fun lt!376949 () Unit!28435)

(declare-fun e!463080 () Unit!28435)

(assert (=> d!105425 (= lt!376949 e!463080)))

(declare-fun c!89896 () Bool)

(assert (=> d!105425 (= c!89896 lt!376951)))

(assert (=> d!105425 (= lt!376951 (containsKey!400 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> d!105425 (= (contains!4208 lt!376779 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) lt!376952)))

(declare-fun b!830495 () Bool)

(declare-fun lt!376950 () Unit!28435)

(assert (=> b!830495 (= e!463080 lt!376950)))

(assert (=> b!830495 (= lt!376950 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!830495 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830496 () Bool)

(declare-fun Unit!28451 () Unit!28435)

(assert (=> b!830496 (= e!463080 Unit!28451)))

(declare-fun b!830497 () Bool)

(assert (=> b!830497 (= e!463081 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (= (and d!105425 c!89896) b!830495))

(assert (= (and d!105425 (not c!89896)) b!830496))

(assert (= (and d!105425 (not res!565654)) b!830497))

(assert (=> d!105425 m!773277))

(declare-fun m!773939 () Bool)

(assert (=> d!105425 m!773939))

(assert (=> b!830495 m!773277))

(declare-fun m!773941 () Bool)

(assert (=> b!830495 m!773941))

(assert (=> b!830495 m!773277))

(assert (=> b!830495 m!773769))

(assert (=> b!830495 m!773769))

(declare-fun m!773943 () Bool)

(assert (=> b!830495 m!773943))

(assert (=> b!830497 m!773277))

(assert (=> b!830497 m!773769))

(assert (=> b!830497 m!773769))

(assert (=> b!830497 m!773943))

(assert (=> b!830215 d!105425))

(declare-fun b!830500 () Bool)

(declare-fun e!463083 () Option!420)

(assert (=> b!830500 (= e!463083 (getValueByKey!414 (t!22376 (toList!4521 lt!376729)) (_1!5097 lt!376622)))))

(declare-fun b!830501 () Bool)

(assert (=> b!830501 (= e!463083 None!418)))

(declare-fun d!105427 () Bool)

(declare-fun c!89897 () Bool)

(assert (=> d!105427 (= c!89897 (and ((_ is Cons!15999) (toList!4521 lt!376729)) (= (_1!5097 (h!17128 (toList!4521 lt!376729))) (_1!5097 lt!376622))))))

(declare-fun e!463082 () Option!420)

(assert (=> d!105427 (= (getValueByKey!414 (toList!4521 lt!376729) (_1!5097 lt!376622)) e!463082)))

(declare-fun b!830498 () Bool)

(assert (=> b!830498 (= e!463082 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376729)))))))

(declare-fun b!830499 () Bool)

(assert (=> b!830499 (= e!463082 e!463083)))

(declare-fun c!89898 () Bool)

(assert (=> b!830499 (= c!89898 (and ((_ is Cons!15999) (toList!4521 lt!376729)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376729))) (_1!5097 lt!376622)))))))

(assert (= (and d!105427 c!89897) b!830498))

(assert (= (and d!105427 (not c!89897)) b!830499))

(assert (= (and b!830499 c!89898) b!830500))

(assert (= (and b!830499 (not c!89898)) b!830501))

(declare-fun m!773945 () Bool)

(assert (=> b!830500 m!773945))

(assert (=> b!830147 d!105427))

(declare-fun b!830502 () Bool)

(declare-fun e!463086 () Bool)

(declare-fun call!36282 () Bool)

(assert (=> b!830502 (= e!463086 call!36282)))

(declare-fun d!105429 () Bool)

(declare-fun res!565655 () Bool)

(declare-fun e!463084 () Bool)

(assert (=> d!105429 (=> res!565655 e!463084)))

(assert (=> d!105429 (= res!565655 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> d!105429 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312) e!463084)))

(declare-fun b!830503 () Bool)

(declare-fun e!463085 () Bool)

(assert (=> b!830503 (= e!463085 e!463086)))

(declare-fun lt!376953 () (_ BitVec 64))

(assert (=> b!830503 (= lt!376953 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!376955 () Unit!28435)

(assert (=> b!830503 (= lt!376955 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!376953 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!830503 (arrayContainsKey!0 _keys!976 lt!376953 #b00000000000000000000000000000000)))

(declare-fun lt!376954 () Unit!28435)

(assert (=> b!830503 (= lt!376954 lt!376955)))

(declare-fun res!565656 () Bool)

(assert (=> b!830503 (= res!565656 (= (seekEntryOrOpen!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!976 mask!1312) (Found!8733 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!830503 (=> (not res!565656) (not e!463086))))

(declare-fun b!830504 () Bool)

(assert (=> b!830504 (= e!463085 call!36282)))

(declare-fun bm!36279 () Bool)

(assert (=> bm!36279 (= call!36282 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!830505 () Bool)

(assert (=> b!830505 (= e!463084 e!463085)))

(declare-fun c!89899 () Bool)

(assert (=> b!830505 (= c!89899 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!105429 (not res!565655)) b!830505))

(assert (= (and b!830505 c!89899) b!830503))

(assert (= (and b!830505 (not c!89899)) b!830504))

(assert (= (and b!830503 res!565656) b!830502))

(assert (= (or b!830502 b!830504) bm!36279))

(assert (=> b!830503 m!773495))

(declare-fun m!773947 () Bool)

(assert (=> b!830503 m!773947))

(declare-fun m!773949 () Bool)

(assert (=> b!830503 m!773949))

(assert (=> b!830503 m!773495))

(declare-fun m!773951 () Bool)

(assert (=> b!830503 m!773951))

(declare-fun m!773953 () Bool)

(assert (=> bm!36279 m!773953))

(assert (=> b!830505 m!773495))

(assert (=> b!830505 m!773495))

(assert (=> b!830505 m!773513))

(assert (=> bm!36257 d!105429))

(declare-fun b!830508 () Bool)

(declare-fun e!463088 () Option!420)

(assert (=> b!830508 (= e!463088 (getValueByKey!414 (t!22376 (toList!4521 lt!376733)) (_1!5097 lt!376628)))))

(declare-fun b!830509 () Bool)

(assert (=> b!830509 (= e!463088 None!418)))

(declare-fun d!105431 () Bool)

(declare-fun c!89900 () Bool)

(assert (=> d!105431 (= c!89900 (and ((_ is Cons!15999) (toList!4521 lt!376733)) (= (_1!5097 (h!17128 (toList!4521 lt!376733))) (_1!5097 lt!376628))))))

(declare-fun e!463087 () Option!420)

(assert (=> d!105431 (= (getValueByKey!414 (toList!4521 lt!376733) (_1!5097 lt!376628)) e!463087)))

(declare-fun b!830506 () Bool)

(assert (=> b!830506 (= e!463087 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376733)))))))

(declare-fun b!830507 () Bool)

(assert (=> b!830507 (= e!463087 e!463088)))

(declare-fun c!89901 () Bool)

(assert (=> b!830507 (= c!89901 (and ((_ is Cons!15999) (toList!4521 lt!376733)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376733))) (_1!5097 lt!376628)))))))

(assert (= (and d!105431 c!89900) b!830506))

(assert (= (and d!105431 (not c!89900)) b!830507))

(assert (= (and b!830507 c!89901) b!830508))

(assert (= (and b!830507 (not c!89901)) b!830509))

(declare-fun m!773955 () Bool)

(assert (=> b!830508 m!773955))

(assert (=> b!830149 d!105431))

(declare-fun d!105433 () Bool)

(declare-fun lt!376956 () Bool)

(assert (=> d!105433 (= lt!376956 (select (content!389 (toList!4521 lt!376659)) lt!376628))))

(declare-fun e!463090 () Bool)

(assert (=> d!105433 (= lt!376956 e!463090)))

(declare-fun res!565658 () Bool)

(assert (=> d!105433 (=> (not res!565658) (not e!463090))))

(assert (=> d!105433 (= res!565658 ((_ is Cons!15999) (toList!4521 lt!376659)))))

(assert (=> d!105433 (= (contains!4209 (toList!4521 lt!376659) lt!376628) lt!376956)))

(declare-fun b!830510 () Bool)

(declare-fun e!463089 () Bool)

(assert (=> b!830510 (= e!463090 e!463089)))

(declare-fun res!565657 () Bool)

(assert (=> b!830510 (=> res!565657 e!463089)))

(assert (=> b!830510 (= res!565657 (= (h!17128 (toList!4521 lt!376659)) lt!376628))))

(declare-fun b!830511 () Bool)

(assert (=> b!830511 (= e!463089 (contains!4209 (t!22376 (toList!4521 lt!376659)) lt!376628))))

(assert (= (and d!105433 res!565658) b!830510))

(assert (= (and b!830510 (not res!565657)) b!830511))

(declare-fun m!773957 () Bool)

(assert (=> d!105433 m!773957))

(declare-fun m!773959 () Bool)

(assert (=> d!105433 m!773959))

(declare-fun m!773961 () Bool)

(assert (=> b!830511 m!773961))

(assert (=> b!830081 d!105433))

(declare-fun d!105435 () Bool)

(declare-fun e!463092 () Bool)

(assert (=> d!105435 e!463092))

(declare-fun res!565659 () Bool)

(assert (=> d!105435 (=> res!565659 e!463092)))

(declare-fun lt!376960 () Bool)

(assert (=> d!105435 (= res!565659 (not lt!376960))))

(declare-fun lt!376959 () Bool)

(assert (=> d!105435 (= lt!376960 lt!376959)))

(declare-fun lt!376957 () Unit!28435)

(declare-fun e!463091 () Unit!28435)

(assert (=> d!105435 (= lt!376957 e!463091)))

(declare-fun c!89902 () Bool)

(assert (=> d!105435 (= c!89902 lt!376959)))

(assert (=> d!105435 (= lt!376959 (containsKey!400 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105435 (= (contains!4208 lt!376786 #b1000000000000000000000000000000000000000000000000000000000000000) lt!376960)))

(declare-fun b!830512 () Bool)

(declare-fun lt!376958 () Unit!28435)

(assert (=> b!830512 (= e!463091 lt!376958)))

(assert (=> b!830512 (= lt!376958 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830512 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830513 () Bool)

(declare-fun Unit!28452 () Unit!28435)

(assert (=> b!830513 (= e!463091 Unit!28452)))

(declare-fun b!830514 () Bool)

(assert (=> b!830514 (= e!463092 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105435 c!89902) b!830512))

(assert (= (and d!105435 (not c!89902)) b!830513))

(assert (= (and d!105435 (not res!565659)) b!830514))

(declare-fun m!773963 () Bool)

(assert (=> d!105435 m!773963))

(declare-fun m!773965 () Bool)

(assert (=> b!830512 m!773965))

(declare-fun m!773967 () Bool)

(assert (=> b!830512 m!773967))

(assert (=> b!830512 m!773967))

(declare-fun m!773969 () Bool)

(assert (=> b!830512 m!773969))

(assert (=> b!830514 m!773967))

(assert (=> b!830514 m!773967))

(assert (=> b!830514 m!773969))

(assert (=> b!830226 d!105435))

(declare-fun d!105437 () Bool)

(assert (=> d!105437 (= (isEmpty!659 lt!376786) (isEmpty!660 (toList!4521 lt!376786)))))

(declare-fun bs!23192 () Bool)

(assert (= bs!23192 d!105437))

(declare-fun m!773971 () Bool)

(assert (=> bs!23192 m!773971))

(assert (=> b!830228 d!105437))

(declare-fun d!105439 () Bool)

(declare-fun e!463094 () Bool)

(assert (=> d!105439 e!463094))

(declare-fun res!565660 () Bool)

(assert (=> d!105439 (=> res!565660 e!463094)))

(declare-fun lt!376964 () Bool)

(assert (=> d!105439 (= res!565660 (not lt!376964))))

(declare-fun lt!376963 () Bool)

(assert (=> d!105439 (= lt!376964 lt!376963)))

(declare-fun lt!376961 () Unit!28435)

(declare-fun e!463093 () Unit!28435)

(assert (=> d!105439 (= lt!376961 e!463093)))

(declare-fun c!89903 () Bool)

(assert (=> d!105439 (= c!89903 lt!376963)))

(assert (=> d!105439 (= lt!376963 (containsKey!400 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780))))

(assert (=> d!105439 (= (contains!4208 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)) lt!376780) lt!376964)))

(declare-fun b!830515 () Bool)

(declare-fun lt!376962 () Unit!28435)

(assert (=> b!830515 (= e!463093 lt!376962)))

(assert (=> b!830515 (= lt!376962 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780))))

(assert (=> b!830515 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780))))

(declare-fun b!830516 () Bool)

(declare-fun Unit!28453 () Unit!28435)

(assert (=> b!830516 (= e!463093 Unit!28453)))

(declare-fun b!830517 () Bool)

(assert (=> b!830517 (= e!463094 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780)))))

(assert (= (and d!105439 c!89903) b!830515))

(assert (= (and d!105439 (not c!89903)) b!830516))

(assert (= (and d!105439 (not res!565660)) b!830517))

(declare-fun m!773973 () Bool)

(assert (=> d!105439 m!773973))

(declare-fun m!773975 () Bool)

(assert (=> b!830515 m!773975))

(declare-fun m!773977 () Bool)

(assert (=> b!830515 m!773977))

(assert (=> b!830515 m!773977))

(declare-fun m!773979 () Bool)

(assert (=> b!830515 m!773979))

(assert (=> b!830517 m!773977))

(assert (=> b!830517 m!773977))

(assert (=> b!830517 m!773979))

(assert (=> b!830217 d!105439))

(declare-fun d!105441 () Bool)

(declare-fun e!463095 () Bool)

(assert (=> d!105441 e!463095))

(declare-fun res!565661 () Bool)

(assert (=> d!105441 (=> (not res!565661) (not e!463095))))

(declare-fun lt!376966 () ListLongMap!9011)

(assert (=> d!105441 (= res!565661 (contains!4208 lt!376966 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!376968 () List!16003)

(assert (=> d!105441 (= lt!376966 (ListLongMap!9012 lt!376968))))

(declare-fun lt!376967 () Unit!28435)

(declare-fun lt!376965 () Unit!28435)

(assert (=> d!105441 (= lt!376967 lt!376965)))

(assert (=> d!105441 (= (getValueByKey!414 lt!376968 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105441 (= lt!376965 (lemmaContainsTupThenGetReturnValue!230 lt!376968 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105441 (= lt!376968 (insertStrictlySorted!268 (toList!4521 call!36256) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105441 (= (+!1950 call!36256 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!376966)))

(declare-fun b!830518 () Bool)

(declare-fun res!565662 () Bool)

(assert (=> b!830518 (=> (not res!565662) (not e!463095))))

(assert (=> b!830518 (= res!565662 (= (getValueByKey!414 (toList!4521 lt!376966) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!830519 () Bool)

(assert (=> b!830519 (= e!463095 (contains!4209 (toList!4521 lt!376966) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!105441 res!565661) b!830518))

(assert (= (and b!830518 res!565662) b!830519))

(declare-fun m!773981 () Bool)

(assert (=> d!105441 m!773981))

(declare-fun m!773983 () Bool)

(assert (=> d!105441 m!773983))

(declare-fun m!773985 () Bool)

(assert (=> d!105441 m!773985))

(declare-fun m!773987 () Bool)

(assert (=> d!105441 m!773987))

(declare-fun m!773989 () Bool)

(assert (=> b!830518 m!773989))

(declare-fun m!773991 () Bool)

(assert (=> b!830519 m!773991))

(assert (=> b!830217 d!105441))

(assert (=> b!830217 d!105295))

(declare-fun d!105443 () Bool)

(assert (=> d!105443 (not (contains!4208 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)) lt!376780))))

(declare-fun lt!376969 () Unit!28435)

(assert (=> d!105443 (= lt!376969 (choose!1428 lt!376784 lt!376785 lt!376783 lt!376780))))

(declare-fun e!463096 () Bool)

(assert (=> d!105443 e!463096))

(declare-fun res!565663 () Bool)

(assert (=> d!105443 (=> (not res!565663) (not e!463096))))

(assert (=> d!105443 (= res!565663 (not (contains!4208 lt!376784 lt!376780)))))

(assert (=> d!105443 (= (addStillNotContains!199 lt!376784 lt!376785 lt!376783 lt!376780) lt!376969)))

(declare-fun b!830520 () Bool)

(assert (=> b!830520 (= e!463096 (not (= lt!376785 lt!376780)))))

(assert (= (and d!105443 res!565663) b!830520))

(assert (=> d!105443 m!773425))

(assert (=> d!105443 m!773425))

(assert (=> d!105443 m!773427))

(declare-fun m!773993 () Bool)

(assert (=> d!105443 m!773993))

(declare-fun m!773995 () Bool)

(assert (=> d!105443 m!773995))

(assert (=> b!830217 d!105443))

(declare-fun d!105445 () Bool)

(declare-fun e!463097 () Bool)

(assert (=> d!105445 e!463097))

(declare-fun res!565664 () Bool)

(assert (=> d!105445 (=> (not res!565664) (not e!463097))))

(declare-fun lt!376971 () ListLongMap!9011)

(assert (=> d!105445 (= res!565664 (contains!4208 lt!376971 (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))

(declare-fun lt!376973 () List!16003)

(assert (=> d!105445 (= lt!376971 (ListLongMap!9012 lt!376973))))

(declare-fun lt!376972 () Unit!28435)

(declare-fun lt!376970 () Unit!28435)

(assert (=> d!105445 (= lt!376972 lt!376970)))

(assert (=> d!105445 (= (getValueByKey!414 lt!376973 (_1!5097 (tuple2!10175 lt!376785 lt!376783))) (Some!419 (_2!5097 (tuple2!10175 lt!376785 lt!376783))))))

(assert (=> d!105445 (= lt!376970 (lemmaContainsTupThenGetReturnValue!230 lt!376973 (_1!5097 (tuple2!10175 lt!376785 lt!376783)) (_2!5097 (tuple2!10175 lt!376785 lt!376783))))))

(assert (=> d!105445 (= lt!376973 (insertStrictlySorted!268 (toList!4521 lt!376784) (_1!5097 (tuple2!10175 lt!376785 lt!376783)) (_2!5097 (tuple2!10175 lt!376785 lt!376783))))))

(assert (=> d!105445 (= (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)) lt!376971)))

(declare-fun b!830521 () Bool)

(declare-fun res!565665 () Bool)

(assert (=> b!830521 (=> (not res!565665) (not e!463097))))

(assert (=> b!830521 (= res!565665 (= (getValueByKey!414 (toList!4521 lt!376971) (_1!5097 (tuple2!10175 lt!376785 lt!376783))) (Some!419 (_2!5097 (tuple2!10175 lt!376785 lt!376783)))))))

(declare-fun b!830522 () Bool)

(assert (=> b!830522 (= e!463097 (contains!4209 (toList!4521 lt!376971) (tuple2!10175 lt!376785 lt!376783)))))

(assert (= (and d!105445 res!565664) b!830521))

(assert (= (and b!830521 res!565665) b!830522))

(declare-fun m!773997 () Bool)

(assert (=> d!105445 m!773997))

(declare-fun m!773999 () Bool)

(assert (=> d!105445 m!773999))

(declare-fun m!774001 () Bool)

(assert (=> d!105445 m!774001))

(declare-fun m!774003 () Bool)

(assert (=> d!105445 m!774003))

(declare-fun m!774005 () Bool)

(assert (=> b!830521 m!774005))

(declare-fun m!774007 () Bool)

(assert (=> b!830522 m!774007))

(assert (=> b!830217 d!105445))

(declare-fun d!105447 () Bool)

(declare-fun e!463099 () Bool)

(assert (=> d!105447 e!463099))

(declare-fun res!565666 () Bool)

(assert (=> d!105447 (=> res!565666 e!463099)))

(declare-fun lt!376977 () Bool)

(assert (=> d!105447 (= res!565666 (not lt!376977))))

(declare-fun lt!376976 () Bool)

(assert (=> d!105447 (= lt!376977 lt!376976)))

(declare-fun lt!376974 () Unit!28435)

(declare-fun e!463098 () Unit!28435)

(assert (=> d!105447 (= lt!376974 e!463098)))

(declare-fun c!89904 () Bool)

(assert (=> d!105447 (= c!89904 lt!376976)))

(assert (=> d!105447 (= lt!376976 (containsKey!400 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105447 (= (contains!4208 lt!376747 #b1000000000000000000000000000000000000000000000000000000000000000) lt!376977)))

(declare-fun b!830523 () Bool)

(declare-fun lt!376975 () Unit!28435)

(assert (=> b!830523 (= e!463098 lt!376975)))

(assert (=> b!830523 (= lt!376975 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830523 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830524 () Bool)

(declare-fun Unit!28454 () Unit!28435)

(assert (=> b!830524 (= e!463098 Unit!28454)))

(declare-fun b!830525 () Bool)

(assert (=> b!830525 (= e!463099 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105447 c!89904) b!830523))

(assert (= (and d!105447 (not c!89904)) b!830524))

(assert (= (and d!105447 (not res!565666)) b!830525))

(declare-fun m!774009 () Bool)

(assert (=> d!105447 m!774009))

(declare-fun m!774011 () Bool)

(assert (=> b!830523 m!774011))

(assert (=> b!830523 m!773755))

(assert (=> b!830523 m!773755))

(declare-fun m!774013 () Bool)

(assert (=> b!830523 m!774013))

(assert (=> b!830525 m!773755))

(assert (=> b!830525 m!773755))

(assert (=> b!830525 m!774013))

(assert (=> bm!36246 d!105447))

(declare-fun d!105449 () Bool)

(declare-fun e!463101 () Bool)

(assert (=> d!105449 e!463101))

(declare-fun res!565667 () Bool)

(assert (=> d!105449 (=> res!565667 e!463101)))

(declare-fun lt!376981 () Bool)

(assert (=> d!105449 (= res!565667 (not lt!376981))))

(declare-fun lt!376980 () Bool)

(assert (=> d!105449 (= lt!376981 lt!376980)))

(declare-fun lt!376978 () Unit!28435)

(declare-fun e!463100 () Unit!28435)

(assert (=> d!105449 (= lt!376978 e!463100)))

(declare-fun c!89905 () Bool)

(assert (=> d!105449 (= c!89905 lt!376980)))

(assert (=> d!105449 (= lt!376980 (containsKey!400 (toList!4521 lt!376733) (_1!5097 lt!376628)))))

(assert (=> d!105449 (= (contains!4208 lt!376733 (_1!5097 lt!376628)) lt!376981)))

(declare-fun b!830526 () Bool)

(declare-fun lt!376979 () Unit!28435)

(assert (=> b!830526 (= e!463100 lt!376979)))

(assert (=> b!830526 (= lt!376979 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376733) (_1!5097 lt!376628)))))

(assert (=> b!830526 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376733) (_1!5097 lt!376628)))))

(declare-fun b!830527 () Bool)

(declare-fun Unit!28455 () Unit!28435)

(assert (=> b!830527 (= e!463100 Unit!28455)))

(declare-fun b!830528 () Bool)

(assert (=> b!830528 (= e!463101 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376733) (_1!5097 lt!376628))))))

(assert (= (and d!105449 c!89905) b!830526))

(assert (= (and d!105449 (not c!89905)) b!830527))

(assert (= (and d!105449 (not res!565667)) b!830528))

(declare-fun m!774015 () Bool)

(assert (=> d!105449 m!774015))

(declare-fun m!774017 () Bool)

(assert (=> b!830526 m!774017))

(assert (=> b!830526 m!773351))

(assert (=> b!830526 m!773351))

(declare-fun m!774019 () Bool)

(assert (=> b!830526 m!774019))

(assert (=> b!830528 m!773351))

(assert (=> b!830528 m!773351))

(assert (=> b!830528 m!774019))

(assert (=> d!105265 d!105449))

(declare-fun b!830531 () Bool)

(declare-fun e!463103 () Option!420)

(assert (=> b!830531 (= e!463103 (getValueByKey!414 (t!22376 lt!376735) (_1!5097 lt!376628)))))

(declare-fun b!830532 () Bool)

(assert (=> b!830532 (= e!463103 None!418)))

(declare-fun d!105451 () Bool)

(declare-fun c!89906 () Bool)

(assert (=> d!105451 (= c!89906 (and ((_ is Cons!15999) lt!376735) (= (_1!5097 (h!17128 lt!376735)) (_1!5097 lt!376628))))))

(declare-fun e!463102 () Option!420)

(assert (=> d!105451 (= (getValueByKey!414 lt!376735 (_1!5097 lt!376628)) e!463102)))

(declare-fun b!830529 () Bool)

(assert (=> b!830529 (= e!463102 (Some!419 (_2!5097 (h!17128 lt!376735))))))

(declare-fun b!830530 () Bool)

(assert (=> b!830530 (= e!463102 e!463103)))

(declare-fun c!89907 () Bool)

(assert (=> b!830530 (= c!89907 (and ((_ is Cons!15999) lt!376735) (not (= (_1!5097 (h!17128 lt!376735)) (_1!5097 lt!376628)))))))

(assert (= (and d!105451 c!89906) b!830529))

(assert (= (and d!105451 (not c!89906)) b!830530))

(assert (= (and b!830530 c!89907) b!830531))

(assert (= (and b!830530 (not c!89907)) b!830532))

(declare-fun m!774021 () Bool)

(assert (=> b!830531 m!774021))

(assert (=> d!105265 d!105451))

(declare-fun d!105453 () Bool)

(assert (=> d!105453 (= (getValueByKey!414 lt!376735 (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628)))))

(declare-fun lt!376982 () Unit!28435)

(assert (=> d!105453 (= lt!376982 (choose!1427 lt!376735 (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun e!463104 () Bool)

(assert (=> d!105453 e!463104))

(declare-fun res!565668 () Bool)

(assert (=> d!105453 (=> (not res!565668) (not e!463104))))

(assert (=> d!105453 (= res!565668 (isStrictlySorted!437 lt!376735))))

(assert (=> d!105453 (= (lemmaContainsTupThenGetReturnValue!230 lt!376735 (_1!5097 lt!376628) (_2!5097 lt!376628)) lt!376982)))

(declare-fun b!830533 () Bool)

(declare-fun res!565669 () Bool)

(assert (=> b!830533 (=> (not res!565669) (not e!463104))))

(assert (=> b!830533 (= res!565669 (containsKey!400 lt!376735 (_1!5097 lt!376628)))))

(declare-fun b!830534 () Bool)

(assert (=> b!830534 (= e!463104 (contains!4209 lt!376735 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(assert (= (and d!105453 res!565668) b!830533))

(assert (= (and b!830533 res!565669) b!830534))

(assert (=> d!105453 m!773345))

(declare-fun m!774023 () Bool)

(assert (=> d!105453 m!774023))

(declare-fun m!774025 () Bool)

(assert (=> d!105453 m!774025))

(declare-fun m!774027 () Bool)

(assert (=> b!830533 m!774027))

(declare-fun m!774029 () Bool)

(assert (=> b!830534 m!774029))

(assert (=> d!105265 d!105453))

(declare-fun b!830535 () Bool)

(declare-fun e!463105 () List!16003)

(declare-fun call!36285 () List!16003)

(assert (=> b!830535 (= e!463105 call!36285)))

(declare-fun bm!36280 () Bool)

(declare-fun call!36283 () List!16003)

(assert (=> bm!36280 (= call!36285 call!36283)))

(declare-fun b!830536 () Bool)

(declare-fun e!463107 () Bool)

(declare-fun lt!376983 () List!16003)

(assert (=> b!830536 (= e!463107 (contains!4209 lt!376983 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun c!89911 () Bool)

(declare-fun b!830537 () Bool)

(declare-fun c!89910 () Bool)

(declare-fun e!463108 () List!16003)

(assert (=> b!830537 (= e!463108 (ite c!89911 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622))) (ite c!89910 (Cons!15999 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376622))) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))) Nil!16000)))))

(declare-fun b!830538 () Bool)

(assert (=> b!830538 (= e!463108 (insertStrictlySorted!268 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622))) (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun b!830539 () Bool)

(assert (=> b!830539 (= e!463105 call!36285)))

(declare-fun c!89908 () Bool)

(declare-fun bm!36281 () Bool)

(declare-fun call!36284 () List!16003)

(assert (=> bm!36281 (= call!36284 ($colon$colon!535 e!463108 (ite c!89908 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376622))) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628)))))))

(declare-fun c!89909 () Bool)

(assert (=> bm!36281 (= c!89909 c!89908)))

(declare-fun b!830540 () Bool)

(declare-fun e!463109 () List!16003)

(assert (=> b!830540 (= e!463109 call!36283)))

(declare-fun b!830541 () Bool)

(declare-fun e!463106 () List!16003)

(assert (=> b!830541 (= e!463106 call!36284)))

(declare-fun b!830542 () Bool)

(assert (=> b!830542 (= e!463106 e!463109)))

(assert (=> b!830542 (= c!89911 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376626 lt!376622))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376622)))) (_1!5097 lt!376628))))))

(declare-fun b!830544 () Bool)

(declare-fun res!565670 () Bool)

(assert (=> b!830544 (=> (not res!565670) (not e!463107))))

(assert (=> b!830544 (= res!565670 (containsKey!400 lt!376983 (_1!5097 lt!376628)))))

(declare-fun bm!36282 () Bool)

(assert (=> bm!36282 (= call!36283 call!36284)))

(declare-fun d!105455 () Bool)

(assert (=> d!105455 e!463107))

(declare-fun res!565671 () Bool)

(assert (=> d!105455 (=> (not res!565671) (not e!463107))))

(assert (=> d!105455 (= res!565671 (isStrictlySorted!437 lt!376983))))

(assert (=> d!105455 (= lt!376983 e!463106)))

(assert (=> d!105455 (= c!89908 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376626 lt!376622))) (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376622)))) (_1!5097 lt!376628))))))

(assert (=> d!105455 (isStrictlySorted!437 (toList!4521 (+!1950 lt!376626 lt!376622)))))

(assert (=> d!105455 (= (insertStrictlySorted!268 (toList!4521 (+!1950 lt!376626 lt!376622)) (_1!5097 lt!376628) (_2!5097 lt!376628)) lt!376983)))

(declare-fun b!830543 () Bool)

(assert (=> b!830543 (= c!89910 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376626 lt!376622))) (bvsgt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376622)))) (_1!5097 lt!376628))))))

(assert (=> b!830543 (= e!463109 e!463105)))

(assert (= (and d!105455 c!89908) b!830541))

(assert (= (and d!105455 (not c!89908)) b!830542))

(assert (= (and b!830542 c!89911) b!830540))

(assert (= (and b!830542 (not c!89911)) b!830543))

(assert (= (and b!830543 c!89910) b!830535))

(assert (= (and b!830543 (not c!89910)) b!830539))

(assert (= (or b!830535 b!830539) bm!36280))

(assert (= (or b!830540 bm!36280) bm!36282))

(assert (= (or b!830541 bm!36282) bm!36281))

(assert (= (and bm!36281 c!89909) b!830538))

(assert (= (and bm!36281 (not c!89909)) b!830537))

(assert (= (and d!105455 res!565671) b!830544))

(assert (= (and b!830544 res!565670) b!830536))

(declare-fun m!774031 () Bool)

(assert (=> b!830544 m!774031))

(declare-fun m!774033 () Bool)

(assert (=> d!105455 m!774033))

(declare-fun m!774035 () Bool)

(assert (=> d!105455 m!774035))

(declare-fun m!774037 () Bool)

(assert (=> bm!36281 m!774037))

(declare-fun m!774039 () Bool)

(assert (=> b!830538 m!774039))

(declare-fun m!774041 () Bool)

(assert (=> b!830536 m!774041))

(assert (=> d!105265 d!105455))

(declare-fun d!105457 () Bool)

(assert (=> d!105457 (= (apply!372 lt!376751 lt!376755) (get!11823 (getValueByKey!414 (toList!4521 lt!376751) lt!376755)))))

(declare-fun bs!23193 () Bool)

(assert (= bs!23193 d!105457))

(declare-fun m!774043 () Bool)

(assert (=> bs!23193 m!774043))

(assert (=> bs!23193 m!774043))

(declare-fun m!774045 () Bool)

(assert (=> bs!23193 m!774045))

(assert (=> b!830156 d!105457))

(declare-fun d!105459 () Bool)

(assert (=> d!105459 (= (apply!372 lt!376749 lt!376753) (get!11823 (getValueByKey!414 (toList!4521 lt!376749) lt!376753)))))

(declare-fun bs!23194 () Bool)

(assert (= bs!23194 d!105459))

(declare-fun m!774047 () Bool)

(assert (=> bs!23194 m!774047))

(assert (=> bs!23194 m!774047))

(declare-fun m!774049 () Bool)

(assert (=> bs!23194 m!774049))

(assert (=> b!830156 d!105459))

(declare-fun d!105461 () Bool)

(assert (=> d!105461 (= (apply!372 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754)) lt!376753) (apply!372 lt!376749 lt!376753))))

(declare-fun lt!376984 () Unit!28435)

(assert (=> d!105461 (= lt!376984 (choose!1425 lt!376749 lt!376746 minValue!754 lt!376753))))

(declare-fun e!463110 () Bool)

(assert (=> d!105461 e!463110))

(declare-fun res!565672 () Bool)

(assert (=> d!105461 (=> (not res!565672) (not e!463110))))

(assert (=> d!105461 (= res!565672 (contains!4208 lt!376749 lt!376753))))

(assert (=> d!105461 (= (addApplyDifferent!323 lt!376749 lt!376746 minValue!754 lt!376753) lt!376984)))

(declare-fun b!830545 () Bool)

(assert (=> b!830545 (= e!463110 (not (= lt!376753 lt!376746)))))

(assert (= (and d!105461 res!565672) b!830545))

(declare-fun m!774051 () Bool)

(assert (=> d!105461 m!774051))

(assert (=> d!105461 m!773391))

(declare-fun m!774053 () Bool)

(assert (=> d!105461 m!774053))

(assert (=> d!105461 m!773391))

(assert (=> d!105461 m!773403))

(assert (=> d!105461 m!773381))

(assert (=> b!830156 d!105461))

(declare-fun d!105463 () Bool)

(declare-fun e!463112 () Bool)

(assert (=> d!105463 e!463112))

(declare-fun res!565673 () Bool)

(assert (=> d!105463 (=> res!565673 e!463112)))

(declare-fun lt!376988 () Bool)

(assert (=> d!105463 (= res!565673 (not lt!376988))))

(declare-fun lt!376987 () Bool)

(assert (=> d!105463 (= lt!376988 lt!376987)))

(declare-fun lt!376985 () Unit!28435)

(declare-fun e!463111 () Unit!28435)

(assert (=> d!105463 (= lt!376985 e!463111)))

(declare-fun c!89912 () Bool)

(assert (=> d!105463 (= c!89912 lt!376987)))

(assert (=> d!105463 (= lt!376987 (containsKey!400 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742))))

(assert (=> d!105463 (= (contains!4208 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)) lt!376742) lt!376988)))

(declare-fun b!830546 () Bool)

(declare-fun lt!376986 () Unit!28435)

(assert (=> b!830546 (= e!463111 lt!376986)))

(assert (=> b!830546 (= lt!376986 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742))))

(assert (=> b!830546 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742))))

(declare-fun b!830547 () Bool)

(declare-fun Unit!28456 () Unit!28435)

(assert (=> b!830547 (= e!463111 Unit!28456)))

(declare-fun b!830548 () Bool)

(assert (=> b!830548 (= e!463112 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742)))))

(assert (= (and d!105463 c!89912) b!830546))

(assert (= (and d!105463 (not c!89912)) b!830547))

(assert (= (and d!105463 (not res!565673)) b!830548))

(declare-fun m!774055 () Bool)

(assert (=> d!105463 m!774055))

(declare-fun m!774057 () Bool)

(assert (=> b!830546 m!774057))

(declare-fun m!774059 () Bool)

(assert (=> b!830546 m!774059))

(assert (=> b!830546 m!774059))

(declare-fun m!774061 () Bool)

(assert (=> b!830546 m!774061))

(assert (=> b!830548 m!774059))

(assert (=> b!830548 m!774059))

(assert (=> b!830548 m!774061))

(assert (=> b!830156 d!105463))

(declare-fun d!105465 () Bool)

(declare-fun e!463113 () Bool)

(assert (=> d!105465 e!463113))

(declare-fun res!565674 () Bool)

(assert (=> d!105465 (=> (not res!565674) (not e!463113))))

(declare-fun lt!376990 () ListLongMap!9011)

(assert (=> d!105465 (= res!565674 (contains!4208 lt!376990 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(declare-fun lt!376992 () List!16003)

(assert (=> d!105465 (= lt!376990 (ListLongMap!9012 lt!376992))))

(declare-fun lt!376991 () Unit!28435)

(declare-fun lt!376989 () Unit!28435)

(assert (=> d!105465 (= lt!376991 lt!376989)))

(assert (=> d!105465 (= (getValueByKey!414 lt!376992 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(assert (=> d!105465 (= lt!376989 (lemmaContainsTupThenGetReturnValue!230 lt!376992 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(assert (=> d!105465 (= lt!376992 (insertStrictlySorted!268 (toList!4521 lt!376743) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(assert (=> d!105465 (= (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34)) lt!376990)))

(declare-fun b!830549 () Bool)

(declare-fun res!565675 () Bool)

(assert (=> b!830549 (=> (not res!565675) (not e!463113))))

(assert (=> b!830549 (= res!565675 (= (getValueByKey!414 (toList!4521 lt!376990) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))

(declare-fun b!830550 () Bool)

(assert (=> b!830550 (= e!463113 (contains!4209 (toList!4521 lt!376990) (tuple2!10175 lt!376757 zeroValueBefore!34)))))

(assert (= (and d!105465 res!565674) b!830549))

(assert (= (and b!830549 res!565675) b!830550))

(declare-fun m!774063 () Bool)

(assert (=> d!105465 m!774063))

(declare-fun m!774065 () Bool)

(assert (=> d!105465 m!774065))

(declare-fun m!774067 () Bool)

(assert (=> d!105465 m!774067))

(declare-fun m!774069 () Bool)

(assert (=> d!105465 m!774069))

(declare-fun m!774071 () Bool)

(assert (=> b!830549 m!774071))

(declare-fun m!774073 () Bool)

(assert (=> b!830550 m!774073))

(assert (=> b!830156 d!105465))

(assert (=> b!830156 d!105277))

(declare-fun d!105467 () Bool)

(declare-fun e!463114 () Bool)

(assert (=> d!105467 e!463114))

(declare-fun res!565676 () Bool)

(assert (=> d!105467 (=> (not res!565676) (not e!463114))))

(declare-fun lt!376994 () ListLongMap!9011)

(assert (=> d!105467 (= res!565676 (contains!4208 lt!376994 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(declare-fun lt!376996 () List!16003)

(assert (=> d!105467 (= lt!376994 (ListLongMap!9012 lt!376996))))

(declare-fun lt!376995 () Unit!28435)

(declare-fun lt!376993 () Unit!28435)

(assert (=> d!105467 (= lt!376995 lt!376993)))

(assert (=> d!105467 (= (getValueByKey!414 lt!376996 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(assert (=> d!105467 (= lt!376993 (lemmaContainsTupThenGetReturnValue!230 lt!376996 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(assert (=> d!105467 (= lt!376996 (insertStrictlySorted!268 (toList!4521 lt!376748) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(assert (=> d!105467 (= (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)) lt!376994)))

(declare-fun b!830551 () Bool)

(declare-fun res!565677 () Bool)

(assert (=> b!830551 (=> (not res!565677) (not e!463114))))

(assert (=> b!830551 (= res!565677 (= (getValueByKey!414 (toList!4521 lt!376994) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(declare-fun b!830552 () Bool)

(assert (=> b!830552 (= e!463114 (contains!4209 (toList!4521 lt!376994) (tuple2!10175 lt!376741 zeroValueBefore!34)))))

(assert (= (and d!105467 res!565676) b!830551))

(assert (= (and b!830551 res!565677) b!830552))

(declare-fun m!774075 () Bool)

(assert (=> d!105467 m!774075))

(declare-fun m!774077 () Bool)

(assert (=> d!105467 m!774077))

(declare-fun m!774079 () Bool)

(assert (=> d!105467 m!774079))

(declare-fun m!774081 () Bool)

(assert (=> d!105467 m!774081))

(declare-fun m!774083 () Bool)

(assert (=> b!830551 m!774083))

(declare-fun m!774085 () Bool)

(assert (=> b!830552 m!774085))

(assert (=> b!830156 d!105467))

(declare-fun d!105469 () Bool)

(declare-fun e!463115 () Bool)

(assert (=> d!105469 e!463115))

(declare-fun res!565678 () Bool)

(assert (=> d!105469 (=> (not res!565678) (not e!463115))))

(declare-fun lt!376998 () ListLongMap!9011)

(assert (=> d!105469 (= res!565678 (contains!4208 lt!376998 (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))

(declare-fun lt!377000 () List!16003)

(assert (=> d!105469 (= lt!376998 (ListLongMap!9012 lt!377000))))

(declare-fun lt!376999 () Unit!28435)

(declare-fun lt!376997 () Unit!28435)

(assert (=> d!105469 (= lt!376999 lt!376997)))

(assert (=> d!105469 (= (getValueByKey!414 lt!377000 (_1!5097 (tuple2!10175 lt!376746 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376746 minValue!754))))))

(assert (=> d!105469 (= lt!376997 (lemmaContainsTupThenGetReturnValue!230 lt!377000 (_1!5097 (tuple2!10175 lt!376746 minValue!754)) (_2!5097 (tuple2!10175 lt!376746 minValue!754))))))

(assert (=> d!105469 (= lt!377000 (insertStrictlySorted!268 (toList!4521 lt!376749) (_1!5097 (tuple2!10175 lt!376746 minValue!754)) (_2!5097 (tuple2!10175 lt!376746 minValue!754))))))

(assert (=> d!105469 (= (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754)) lt!376998)))

(declare-fun b!830553 () Bool)

(declare-fun res!565679 () Bool)

(assert (=> b!830553 (=> (not res!565679) (not e!463115))))

(assert (=> b!830553 (= res!565679 (= (getValueByKey!414 (toList!4521 lt!376998) (_1!5097 (tuple2!10175 lt!376746 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376746 minValue!754)))))))

(declare-fun b!830554 () Bool)

(assert (=> b!830554 (= e!463115 (contains!4209 (toList!4521 lt!376998) (tuple2!10175 lt!376746 minValue!754)))))

(assert (= (and d!105469 res!565678) b!830553))

(assert (= (and b!830553 res!565679) b!830554))

(declare-fun m!774087 () Bool)

(assert (=> d!105469 m!774087))

(declare-fun m!774089 () Bool)

(assert (=> d!105469 m!774089))

(declare-fun m!774091 () Bool)

(assert (=> d!105469 m!774091))

(declare-fun m!774093 () Bool)

(assert (=> d!105469 m!774093))

(declare-fun m!774095 () Bool)

(assert (=> b!830553 m!774095))

(declare-fun m!774097 () Bool)

(assert (=> b!830554 m!774097))

(assert (=> b!830156 d!105469))

(declare-fun d!105471 () Bool)

(declare-fun e!463116 () Bool)

(assert (=> d!105471 e!463116))

(declare-fun res!565680 () Bool)

(assert (=> d!105471 (=> (not res!565680) (not e!463116))))

(declare-fun lt!377002 () ListLongMap!9011)

(assert (=> d!105471 (= res!565680 (contains!4208 lt!377002 (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))

(declare-fun lt!377004 () List!16003)

(assert (=> d!105471 (= lt!377002 (ListLongMap!9012 lt!377004))))

(declare-fun lt!377003 () Unit!28435)

(declare-fun lt!377001 () Unit!28435)

(assert (=> d!105471 (= lt!377003 lt!377001)))

(assert (=> d!105471 (= (getValueByKey!414 lt!377004 (_1!5097 (tuple2!10175 lt!376752 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376752 minValue!754))))))

(assert (=> d!105471 (= lt!377001 (lemmaContainsTupThenGetReturnValue!230 lt!377004 (_1!5097 (tuple2!10175 lt!376752 minValue!754)) (_2!5097 (tuple2!10175 lt!376752 minValue!754))))))

(assert (=> d!105471 (= lt!377004 (insertStrictlySorted!268 (toList!4521 lt!376751) (_1!5097 (tuple2!10175 lt!376752 minValue!754)) (_2!5097 (tuple2!10175 lt!376752 minValue!754))))))

(assert (=> d!105471 (= (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754)) lt!377002)))

(declare-fun b!830555 () Bool)

(declare-fun res!565681 () Bool)

(assert (=> b!830555 (=> (not res!565681) (not e!463116))))

(assert (=> b!830555 (= res!565681 (= (getValueByKey!414 (toList!4521 lt!377002) (_1!5097 (tuple2!10175 lt!376752 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376752 minValue!754)))))))

(declare-fun b!830556 () Bool)

(assert (=> b!830556 (= e!463116 (contains!4209 (toList!4521 lt!377002) (tuple2!10175 lt!376752 minValue!754)))))

(assert (= (and d!105471 res!565680) b!830555))

(assert (= (and b!830555 res!565681) b!830556))

(declare-fun m!774099 () Bool)

(assert (=> d!105471 m!774099))

(declare-fun m!774101 () Bool)

(assert (=> d!105471 m!774101))

(declare-fun m!774103 () Bool)

(assert (=> d!105471 m!774103))

(declare-fun m!774105 () Bool)

(assert (=> d!105471 m!774105))

(declare-fun m!774107 () Bool)

(assert (=> b!830555 m!774107))

(declare-fun m!774109 () Bool)

(assert (=> b!830556 m!774109))

(assert (=> b!830156 d!105471))

(declare-fun d!105473 () Bool)

(assert (=> d!105473 (= (apply!372 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34)) lt!376756) (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34))) lt!376756)))))

(declare-fun bs!23195 () Bool)

(assert (= bs!23195 d!105473))

(declare-fun m!774111 () Bool)

(assert (=> bs!23195 m!774111))

(assert (=> bs!23195 m!774111))

(declare-fun m!774113 () Bool)

(assert (=> bs!23195 m!774113))

(assert (=> b!830156 d!105473))

(declare-fun d!105475 () Bool)

(assert (=> d!105475 (= (apply!372 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754)) lt!376755) (apply!372 lt!376751 lt!376755))))

(declare-fun lt!377005 () Unit!28435)

(assert (=> d!105475 (= lt!377005 (choose!1425 lt!376751 lt!376752 minValue!754 lt!376755))))

(declare-fun e!463117 () Bool)

(assert (=> d!105475 e!463117))

(declare-fun res!565682 () Bool)

(assert (=> d!105475 (=> (not res!565682) (not e!463117))))

(assert (=> d!105475 (= res!565682 (contains!4208 lt!376751 lt!376755))))

(assert (=> d!105475 (= (addApplyDifferent!323 lt!376751 lt!376752 minValue!754 lt!376755) lt!377005)))

(declare-fun b!830557 () Bool)

(assert (=> b!830557 (= e!463117 (not (= lt!376755 lt!376752)))))

(assert (= (and d!105475 res!565682) b!830557))

(declare-fun m!774115 () Bool)

(assert (=> d!105475 m!774115))

(assert (=> d!105475 m!773393))

(declare-fun m!774117 () Bool)

(assert (=> d!105475 m!774117))

(assert (=> d!105475 m!773393))

(assert (=> d!105475 m!773395))

(assert (=> d!105475 m!773383))

(assert (=> b!830156 d!105475))

(declare-fun d!105477 () Bool)

(assert (=> d!105477 (= (apply!372 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754)) lt!376753) (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754))) lt!376753)))))

(declare-fun bs!23196 () Bool)

(assert (= bs!23196 d!105477))

(declare-fun m!774119 () Bool)

(assert (=> bs!23196 m!774119))

(assert (=> bs!23196 m!774119))

(declare-fun m!774121 () Bool)

(assert (=> bs!23196 m!774121))

(assert (=> b!830156 d!105477))

(declare-fun d!105479 () Bool)

(assert (=> d!105479 (= (apply!372 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754)) lt!376755) (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754))) lt!376755)))))

(declare-fun bs!23197 () Bool)

(assert (= bs!23197 d!105479))

(declare-fun m!774123 () Bool)

(assert (=> bs!23197 m!774123))

(assert (=> bs!23197 m!774123))

(declare-fun m!774125 () Bool)

(assert (=> bs!23197 m!774125))

(assert (=> b!830156 d!105479))

(declare-fun d!105481 () Bool)

(assert (=> d!105481 (= (apply!372 lt!376743 lt!376756) (get!11823 (getValueByKey!414 (toList!4521 lt!376743) lt!376756)))))

(declare-fun bs!23198 () Bool)

(assert (= bs!23198 d!105481))

(declare-fun m!774127 () Bool)

(assert (=> bs!23198 m!774127))

(assert (=> bs!23198 m!774127))

(declare-fun m!774129 () Bool)

(assert (=> bs!23198 m!774129))

(assert (=> b!830156 d!105481))

(declare-fun d!105483 () Bool)

(assert (=> d!105483 (contains!4208 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)) lt!376742)))

(declare-fun lt!377006 () Unit!28435)

(assert (=> d!105483 (= lt!377006 (choose!1426 lt!376748 lt!376741 zeroValueBefore!34 lt!376742))))

(assert (=> d!105483 (contains!4208 lt!376748 lt!376742)))

(assert (=> d!105483 (= (addStillContains!323 lt!376748 lt!376741 zeroValueBefore!34 lt!376742) lt!377006)))

(declare-fun bs!23199 () Bool)

(assert (= bs!23199 d!105483))

(assert (=> bs!23199 m!773397))

(assert (=> bs!23199 m!773397))

(assert (=> bs!23199 m!773399))

(declare-fun m!774131 () Bool)

(assert (=> bs!23199 m!774131))

(declare-fun m!774133 () Bool)

(assert (=> bs!23199 m!774133))

(assert (=> b!830156 d!105483))

(declare-fun d!105485 () Bool)

(assert (=> d!105485 (= (apply!372 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34)) lt!376756) (apply!372 lt!376743 lt!376756))))

(declare-fun lt!377007 () Unit!28435)

(assert (=> d!105485 (= lt!377007 (choose!1425 lt!376743 lt!376757 zeroValueBefore!34 lt!376756))))

(declare-fun e!463118 () Bool)

(assert (=> d!105485 e!463118))

(declare-fun res!565683 () Bool)

(assert (=> d!105485 (=> (not res!565683) (not e!463118))))

(assert (=> d!105485 (= res!565683 (contains!4208 lt!376743 lt!376756))))

(assert (=> d!105485 (= (addApplyDifferent!323 lt!376743 lt!376757 zeroValueBefore!34 lt!376756) lt!377007)))

(declare-fun b!830558 () Bool)

(assert (=> b!830558 (= e!463118 (not (= lt!376756 lt!376757)))))

(assert (= (and d!105485 res!565683) b!830558))

(declare-fun m!774135 () Bool)

(assert (=> d!105485 m!774135))

(assert (=> d!105485 m!773385))

(declare-fun m!774137 () Bool)

(assert (=> d!105485 m!774137))

(assert (=> d!105485 m!773385))

(assert (=> d!105485 m!773387))

(assert (=> d!105485 m!773405))

(assert (=> b!830156 d!105485))

(declare-fun d!105487 () Bool)

(declare-fun e!463120 () Bool)

(assert (=> d!105487 e!463120))

(declare-fun res!565684 () Bool)

(assert (=> d!105487 (=> res!565684 e!463120)))

(declare-fun lt!377011 () Bool)

(assert (=> d!105487 (= res!565684 (not lt!377011))))

(declare-fun lt!377010 () Bool)

(assert (=> d!105487 (= lt!377011 lt!377010)))

(declare-fun lt!377008 () Unit!28435)

(declare-fun e!463119 () Unit!28435)

(assert (=> d!105487 (= lt!377008 e!463119)))

(declare-fun c!89913 () Bool)

(assert (=> d!105487 (= c!89913 lt!377010)))

(assert (=> d!105487 (= lt!377010 (containsKey!400 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105487 (= (contains!4208 lt!376747 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377011)))

(declare-fun b!830559 () Bool)

(declare-fun lt!377009 () Unit!28435)

(assert (=> b!830559 (= e!463119 lt!377009)))

(assert (=> b!830559 (= lt!377009 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830559 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830560 () Bool)

(declare-fun Unit!28457 () Unit!28435)

(assert (=> b!830560 (= e!463119 Unit!28457)))

(declare-fun b!830561 () Bool)

(assert (=> b!830561 (= e!463120 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105487 c!89913) b!830559))

(assert (= (and d!105487 (not c!89913)) b!830560))

(assert (= (and d!105487 (not res!565684)) b!830561))

(declare-fun m!774139 () Bool)

(assert (=> d!105487 m!774139))

(declare-fun m!774141 () Bool)

(assert (=> b!830559 m!774141))

(assert (=> b!830559 m!773547))

(assert (=> b!830559 m!773547))

(declare-fun m!774143 () Bool)

(assert (=> b!830559 m!774143))

(assert (=> b!830561 m!773547))

(assert (=> b!830561 m!773547))

(assert (=> b!830561 m!774143))

(assert (=> bm!36241 d!105487))

(declare-fun d!105489 () Bool)

(declare-fun e!463122 () Bool)

(assert (=> d!105489 e!463122))

(declare-fun res!565685 () Bool)

(assert (=> d!105489 (=> res!565685 e!463122)))

(declare-fun lt!377015 () Bool)

(assert (=> d!105489 (= res!565685 (not lt!377015))))

(declare-fun lt!377014 () Bool)

(assert (=> d!105489 (= lt!377015 lt!377014)))

(declare-fun lt!377012 () Unit!28435)

(declare-fun e!463121 () Unit!28435)

(assert (=> d!105489 (= lt!377012 e!463121)))

(declare-fun c!89914 () Bool)

(assert (=> d!105489 (= c!89914 lt!377014)))

(assert (=> d!105489 (= lt!377014 (containsKey!400 (toList!4521 lt!376737) (_1!5097 lt!376622)))))

(assert (=> d!105489 (= (contains!4208 lt!376737 (_1!5097 lt!376622)) lt!377015)))

(declare-fun b!830562 () Bool)

(declare-fun lt!377013 () Unit!28435)

(assert (=> b!830562 (= e!463121 lt!377013)))

(assert (=> b!830562 (= lt!377013 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376737) (_1!5097 lt!376622)))))

(assert (=> b!830562 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376737) (_1!5097 lt!376622)))))

(declare-fun b!830563 () Bool)

(declare-fun Unit!28458 () Unit!28435)

(assert (=> b!830563 (= e!463121 Unit!28458)))

(declare-fun b!830564 () Bool)

(assert (=> b!830564 (= e!463122 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376737) (_1!5097 lt!376622))))))

(assert (= (and d!105489 c!89914) b!830562))

(assert (= (and d!105489 (not c!89914)) b!830563))

(assert (= (and d!105489 (not res!565685)) b!830564))

(declare-fun m!774145 () Bool)

(assert (=> d!105489 m!774145))

(declare-fun m!774147 () Bool)

(assert (=> b!830562 m!774147))

(assert (=> b!830562 m!773363))

(assert (=> b!830562 m!773363))

(declare-fun m!774149 () Bool)

(assert (=> b!830562 m!774149))

(assert (=> b!830564 m!773363))

(assert (=> b!830564 m!773363))

(assert (=> b!830564 m!774149))

(assert (=> d!105267 d!105489))

(declare-fun b!830567 () Bool)

(declare-fun e!463124 () Option!420)

(assert (=> b!830567 (= e!463124 (getValueByKey!414 (t!22376 lt!376739) (_1!5097 lt!376622)))))

(declare-fun b!830568 () Bool)

(assert (=> b!830568 (= e!463124 None!418)))

(declare-fun d!105491 () Bool)

(declare-fun c!89915 () Bool)

(assert (=> d!105491 (= c!89915 (and ((_ is Cons!15999) lt!376739) (= (_1!5097 (h!17128 lt!376739)) (_1!5097 lt!376622))))))

(declare-fun e!463123 () Option!420)

(assert (=> d!105491 (= (getValueByKey!414 lt!376739 (_1!5097 lt!376622)) e!463123)))

(declare-fun b!830565 () Bool)

(assert (=> b!830565 (= e!463123 (Some!419 (_2!5097 (h!17128 lt!376739))))))

(declare-fun b!830566 () Bool)

(assert (=> b!830566 (= e!463123 e!463124)))

(declare-fun c!89916 () Bool)

(assert (=> b!830566 (= c!89916 (and ((_ is Cons!15999) lt!376739) (not (= (_1!5097 (h!17128 lt!376739)) (_1!5097 lt!376622)))))))

(assert (= (and d!105491 c!89915) b!830565))

(assert (= (and d!105491 (not c!89915)) b!830566))

(assert (= (and b!830566 c!89916) b!830567))

(assert (= (and b!830566 (not c!89916)) b!830568))

(declare-fun m!774151 () Bool)

(assert (=> b!830567 m!774151))

(assert (=> d!105267 d!105491))

(declare-fun d!105493 () Bool)

(assert (=> d!105493 (= (getValueByKey!414 lt!376739 (_1!5097 lt!376622)) (Some!419 (_2!5097 lt!376622)))))

(declare-fun lt!377016 () Unit!28435)

(assert (=> d!105493 (= lt!377016 (choose!1427 lt!376739 (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(declare-fun e!463125 () Bool)

(assert (=> d!105493 e!463125))

(declare-fun res!565686 () Bool)

(assert (=> d!105493 (=> (not res!565686) (not e!463125))))

(assert (=> d!105493 (= res!565686 (isStrictlySorted!437 lt!376739))))

(assert (=> d!105493 (= (lemmaContainsTupThenGetReturnValue!230 lt!376739 (_1!5097 lt!376622) (_2!5097 lt!376622)) lt!377016)))

(declare-fun b!830569 () Bool)

(declare-fun res!565687 () Bool)

(assert (=> b!830569 (=> (not res!565687) (not e!463125))))

(assert (=> b!830569 (= res!565687 (containsKey!400 lt!376739 (_1!5097 lt!376622)))))

(declare-fun b!830570 () Bool)

(assert (=> b!830570 (= e!463125 (contains!4209 lt!376739 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(assert (= (and d!105493 res!565686) b!830569))

(assert (= (and b!830569 res!565687) b!830570))

(assert (=> d!105493 m!773357))

(declare-fun m!774153 () Bool)

(assert (=> d!105493 m!774153))

(declare-fun m!774155 () Bool)

(assert (=> d!105493 m!774155))

(declare-fun m!774157 () Bool)

(assert (=> b!830569 m!774157))

(declare-fun m!774159 () Bool)

(assert (=> b!830570 m!774159))

(assert (=> d!105267 d!105493))

(declare-fun b!830571 () Bool)

(declare-fun e!463126 () List!16003)

(declare-fun call!36288 () List!16003)

(assert (=> b!830571 (= e!463126 call!36288)))

(declare-fun bm!36283 () Bool)

(declare-fun call!36286 () List!16003)

(assert (=> bm!36283 (= call!36288 call!36286)))

(declare-fun b!830572 () Bool)

(declare-fun e!463128 () Bool)

(declare-fun lt!377017 () List!16003)

(assert (=> b!830572 (= e!463128 (contains!4209 lt!377017 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun c!89919 () Bool)

(declare-fun c!89920 () Bool)

(declare-fun b!830573 () Bool)

(declare-fun e!463129 () List!16003)

(assert (=> b!830573 (= e!463129 (ite c!89920 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628))) (ite c!89919 (Cons!15999 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376628))) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))) Nil!16000)))))

(declare-fun b!830574 () Bool)

(assert (=> b!830574 (= e!463129 (insertStrictlySorted!268 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628))) (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(declare-fun b!830575 () Bool)

(assert (=> b!830575 (= e!463126 call!36288)))

(declare-fun bm!36284 () Bool)

(declare-fun call!36287 () List!16003)

(declare-fun c!89917 () Bool)

(assert (=> bm!36284 (= call!36287 ($colon$colon!535 e!463129 (ite c!89917 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376628))) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622)))))))

(declare-fun c!89918 () Bool)

(assert (=> bm!36284 (= c!89918 c!89917)))

(declare-fun b!830576 () Bool)

(declare-fun e!463130 () List!16003)

(assert (=> b!830576 (= e!463130 call!36286)))

(declare-fun b!830577 () Bool)

(declare-fun e!463127 () List!16003)

(assert (=> b!830577 (= e!463127 call!36287)))

(declare-fun b!830578 () Bool)

(assert (=> b!830578 (= e!463127 e!463130)))

(assert (=> b!830578 (= c!89920 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376626 lt!376628))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376628)))) (_1!5097 lt!376622))))))

(declare-fun b!830580 () Bool)

(declare-fun res!565688 () Bool)

(assert (=> b!830580 (=> (not res!565688) (not e!463128))))

(assert (=> b!830580 (= res!565688 (containsKey!400 lt!377017 (_1!5097 lt!376622)))))

(declare-fun bm!36285 () Bool)

(assert (=> bm!36285 (= call!36286 call!36287)))

(declare-fun d!105495 () Bool)

(assert (=> d!105495 e!463128))

(declare-fun res!565689 () Bool)

(assert (=> d!105495 (=> (not res!565689) (not e!463128))))

(assert (=> d!105495 (= res!565689 (isStrictlySorted!437 lt!377017))))

(assert (=> d!105495 (= lt!377017 e!463127)))

(assert (=> d!105495 (= c!89917 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376626 lt!376628))) (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376628)))) (_1!5097 lt!376622))))))

(assert (=> d!105495 (isStrictlySorted!437 (toList!4521 (+!1950 lt!376626 lt!376628)))))

(assert (=> d!105495 (= (insertStrictlySorted!268 (toList!4521 (+!1950 lt!376626 lt!376628)) (_1!5097 lt!376622) (_2!5097 lt!376622)) lt!377017)))

(declare-fun b!830579 () Bool)

(assert (=> b!830579 (= c!89919 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376626 lt!376628))) (bvsgt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376628)))) (_1!5097 lt!376622))))))

(assert (=> b!830579 (= e!463130 e!463126)))

(assert (= (and d!105495 c!89917) b!830577))

(assert (= (and d!105495 (not c!89917)) b!830578))

(assert (= (and b!830578 c!89920) b!830576))

(assert (= (and b!830578 (not c!89920)) b!830579))

(assert (= (and b!830579 c!89919) b!830571))

(assert (= (and b!830579 (not c!89919)) b!830575))

(assert (= (or b!830571 b!830575) bm!36283))

(assert (= (or b!830576 bm!36283) bm!36285))

(assert (= (or b!830577 bm!36285) bm!36284))

(assert (= (and bm!36284 c!89918) b!830574))

(assert (= (and bm!36284 (not c!89918)) b!830573))

(assert (= (and d!105495 res!565689) b!830580))

(assert (= (and b!830580 res!565688) b!830572))

(declare-fun m!774161 () Bool)

(assert (=> b!830580 m!774161))

(declare-fun m!774163 () Bool)

(assert (=> d!105495 m!774163))

(declare-fun m!774165 () Bool)

(assert (=> d!105495 m!774165))

(declare-fun m!774167 () Bool)

(assert (=> bm!36284 m!774167))

(declare-fun m!774169 () Bool)

(assert (=> b!830574 m!774169))

(declare-fun m!774171 () Bool)

(assert (=> b!830572 m!774171))

(assert (=> d!105267 d!105495))

(declare-fun d!105497 () Bool)

(declare-fun e!463131 () Bool)

(assert (=> d!105497 e!463131))

(declare-fun res!565690 () Bool)

(assert (=> d!105497 (=> (not res!565690) (not e!463131))))

(declare-fun lt!377019 () ListLongMap!9011)

(assert (=> d!105497 (= res!565690 (contains!4208 lt!377019 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!377021 () List!16003)

(assert (=> d!105497 (= lt!377019 (ListLongMap!9012 lt!377021))))

(declare-fun lt!377020 () Unit!28435)

(declare-fun lt!377018 () Unit!28435)

(assert (=> d!105497 (= lt!377020 lt!377018)))

(assert (=> d!105497 (= (getValueByKey!414 lt!377021 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105497 (= lt!377018 (lemmaContainsTupThenGetReturnValue!230 lt!377021 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105497 (= lt!377021 (insertStrictlySorted!268 (toList!4521 call!36238) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105497 (= (+!1950 call!36238 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!377019)))

(declare-fun b!830581 () Bool)

(declare-fun res!565691 () Bool)

(assert (=> b!830581 (=> (not res!565691) (not e!463131))))

(assert (=> b!830581 (= res!565691 (= (getValueByKey!414 (toList!4521 lt!377019) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!830582 () Bool)

(assert (=> b!830582 (= e!463131 (contains!4209 (toList!4521 lt!377019) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!105497 res!565690) b!830581))

(assert (= (and b!830581 res!565691) b!830582))

(declare-fun m!774173 () Bool)

(assert (=> d!105497 m!774173))

(declare-fun m!774175 () Bool)

(assert (=> d!105497 m!774175))

(declare-fun m!774177 () Bool)

(assert (=> d!105497 m!774177))

(declare-fun m!774179 () Bool)

(assert (=> d!105497 m!774179))

(declare-fun m!774181 () Bool)

(assert (=> b!830581 m!774181))

(declare-fun m!774183 () Bool)

(assert (=> b!830582 m!774183))

(assert (=> b!830139 d!105497))

(declare-fun d!105499 () Bool)

(assert (=> d!105499 (arrayContainsKey!0 _keys!976 lt!376799 #b00000000000000000000000000000000)))

(declare-fun lt!377024 () Unit!28435)

(declare-fun choose!13 (array!46558 (_ BitVec 64) (_ BitVec 32)) Unit!28435)

(assert (=> d!105499 (= lt!377024 (choose!13 _keys!976 lt!376799 #b00000000000000000000000000000000))))

(assert (=> d!105499 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!105499 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!376799 #b00000000000000000000000000000000) lt!377024)))

(declare-fun bs!23200 () Bool)

(assert (= bs!23200 d!105499))

(assert (=> bs!23200 m!773461))

(declare-fun m!774185 () Bool)

(assert (=> bs!23200 m!774185))

(assert (=> b!830246 d!105499))

(declare-fun d!105501 () Bool)

(declare-fun res!565696 () Bool)

(declare-fun e!463136 () Bool)

(assert (=> d!105501 (=> res!565696 e!463136)))

(assert (=> d!105501 (= res!565696 (= (select (arr!22311 _keys!976) #b00000000000000000000000000000000) lt!376799))))

(assert (=> d!105501 (= (arrayContainsKey!0 _keys!976 lt!376799 #b00000000000000000000000000000000) e!463136)))

(declare-fun b!830587 () Bool)

(declare-fun e!463137 () Bool)

(assert (=> b!830587 (= e!463136 e!463137)))

(declare-fun res!565697 () Bool)

(assert (=> b!830587 (=> (not res!565697) (not e!463137))))

(assert (=> b!830587 (= res!565697 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!830588 () Bool)

(assert (=> b!830588 (= e!463137 (arrayContainsKey!0 _keys!976 lt!376799 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!105501 (not res!565696)) b!830587))

(assert (= (and b!830587 res!565697) b!830588))

(assert (=> d!105501 m!773277))

(declare-fun m!774187 () Bool)

(assert (=> b!830588 m!774187))

(assert (=> b!830246 d!105501))

(declare-fun d!105503 () Bool)

(declare-fun lt!377032 () SeekEntryResult!8733)

(assert (=> d!105503 (and (or ((_ is Undefined!8733) lt!377032) (not ((_ is Found!8733) lt!377032)) (and (bvsge (index!37303 lt!377032) #b00000000000000000000000000000000) (bvslt (index!37303 lt!377032) (size!22732 _keys!976)))) (or ((_ is Undefined!8733) lt!377032) ((_ is Found!8733) lt!377032) (not ((_ is MissingZero!8733) lt!377032)) (and (bvsge (index!37302 lt!377032) #b00000000000000000000000000000000) (bvslt (index!37302 lt!377032) (size!22732 _keys!976)))) (or ((_ is Undefined!8733) lt!377032) ((_ is Found!8733) lt!377032) ((_ is MissingZero!8733) lt!377032) (not ((_ is MissingVacant!8733) lt!377032)) (and (bvsge (index!37305 lt!377032) #b00000000000000000000000000000000) (bvslt (index!37305 lt!377032) (size!22732 _keys!976)))) (or ((_ is Undefined!8733) lt!377032) (ite ((_ is Found!8733) lt!377032) (= (select (arr!22311 _keys!976) (index!37303 lt!377032)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!8733) lt!377032) (= (select (arr!22311 _keys!976) (index!37302 lt!377032)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8733) lt!377032) (= (select (arr!22311 _keys!976) (index!37305 lt!377032)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!463146 () SeekEntryResult!8733)

(assert (=> d!105503 (= lt!377032 e!463146)))

(declare-fun c!89929 () Bool)

(declare-fun lt!377033 () SeekEntryResult!8733)

(assert (=> d!105503 (= c!89929 (and ((_ is Intermediate!8733) lt!377033) (undefined!9545 lt!377033)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!46558 (_ BitVec 32)) SeekEntryResult!8733)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!105503 (= lt!377033 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) mask!1312) (select (arr!22311 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312))))

(assert (=> d!105503 (validMask!0 mask!1312)))

(assert (=> d!105503 (= (seekEntryOrOpen!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) lt!377032)))

(declare-fun b!830601 () Bool)

(declare-fun c!89927 () Bool)

(declare-fun lt!377031 () (_ BitVec 64))

(assert (=> b!830601 (= c!89927 (= lt!377031 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463144 () SeekEntryResult!8733)

(declare-fun e!463145 () SeekEntryResult!8733)

(assert (=> b!830601 (= e!463144 e!463145)))

(declare-fun b!830602 () Bool)

(assert (=> b!830602 (= e!463145 (MissingZero!8733 (index!37304 lt!377033)))))

(declare-fun b!830603 () Bool)

(assert (=> b!830603 (= e!463146 Undefined!8733)))

(declare-fun b!830604 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!46558 (_ BitVec 32)) SeekEntryResult!8733)

(assert (=> b!830604 (= e!463145 (seekKeyOrZeroReturnVacant!0 (x!70091 lt!377033) (index!37304 lt!377033) (index!37304 lt!377033) (select (arr!22311 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312))))

(declare-fun b!830605 () Bool)

(assert (=> b!830605 (= e!463146 e!463144)))

(assert (=> b!830605 (= lt!377031 (select (arr!22311 _keys!976) (index!37304 lt!377033)))))

(declare-fun c!89928 () Bool)

(assert (=> b!830605 (= c!89928 (= lt!377031 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830606 () Bool)

(assert (=> b!830606 (= e!463144 (Found!8733 (index!37304 lt!377033)))))

(assert (= (and d!105503 c!89929) b!830603))

(assert (= (and d!105503 (not c!89929)) b!830605))

(assert (= (and b!830605 c!89928) b!830606))

(assert (= (and b!830605 (not c!89928)) b!830601))

(assert (= (and b!830601 c!89927) b!830602))

(assert (= (and b!830601 (not c!89927)) b!830604))

(declare-fun m!774189 () Bool)

(assert (=> d!105503 m!774189))

(declare-fun m!774191 () Bool)

(assert (=> d!105503 m!774191))

(declare-fun m!774193 () Bool)

(assert (=> d!105503 m!774193))

(declare-fun m!774195 () Bool)

(assert (=> d!105503 m!774195))

(assert (=> d!105503 m!773277))

(declare-fun m!774197 () Bool)

(assert (=> d!105503 m!774197))

(assert (=> d!105503 m!773209))

(assert (=> d!105503 m!773277))

(assert (=> d!105503 m!774195))

(assert (=> b!830604 m!773277))

(declare-fun m!774199 () Bool)

(assert (=> b!830604 m!774199))

(declare-fun m!774201 () Bool)

(assert (=> b!830605 m!774201))

(assert (=> b!830246 d!105503))

(declare-fun d!105505 () Bool)

(declare-fun e!463148 () Bool)

(assert (=> d!105505 e!463148))

(declare-fun res!565698 () Bool)

(assert (=> d!105505 (=> res!565698 e!463148)))

(declare-fun lt!377037 () Bool)

(assert (=> d!105505 (= res!565698 (not lt!377037))))

(declare-fun lt!377036 () Bool)

(assert (=> d!105505 (= lt!377037 lt!377036)))

(declare-fun lt!377034 () Unit!28435)

(declare-fun e!463147 () Unit!28435)

(assert (=> d!105505 (= lt!377034 e!463147)))

(declare-fun c!89930 () Bool)

(assert (=> d!105505 (= c!89930 lt!377036)))

(assert (=> d!105505 (= lt!377036 (containsKey!400 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105505 (= (contains!4208 lt!376786 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377037)))

(declare-fun b!830607 () Bool)

(declare-fun lt!377035 () Unit!28435)

(assert (=> b!830607 (= e!463147 lt!377035)))

(assert (=> b!830607 (= lt!377035 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830607 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830608 () Bool)

(declare-fun Unit!28459 () Unit!28435)

(assert (=> b!830608 (= e!463147 Unit!28459)))

(declare-fun b!830609 () Bool)

(assert (=> b!830609 (= e!463148 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105505 c!89930) b!830607))

(assert (= (and d!105505 (not c!89930)) b!830608))

(assert (= (and d!105505 (not res!565698)) b!830609))

(declare-fun m!774203 () Bool)

(assert (=> d!105505 m!774203))

(declare-fun m!774205 () Bool)

(assert (=> b!830607 m!774205))

(declare-fun m!774207 () Bool)

(assert (=> b!830607 m!774207))

(assert (=> b!830607 m!774207))

(declare-fun m!774209 () Bool)

(assert (=> b!830607 m!774209))

(assert (=> b!830609 m!774207))

(assert (=> b!830609 m!774207))

(assert (=> b!830609 m!774209))

(assert (=> d!105277 d!105505))

(assert (=> d!105277 d!105279))

(declare-fun d!105507 () Bool)

(assert (=> d!105507 (= (apply!372 lt!376713 #b0000000000000000000000000000000000000000000000000000000000000000) (get!11823 (getValueByKey!414 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!23201 () Bool)

(assert (= bs!23201 d!105507))

(assert (=> bs!23201 m!773739))

(assert (=> bs!23201 m!773739))

(declare-fun m!774211 () Bool)

(assert (=> bs!23201 m!774211))

(assert (=> b!830141 d!105507))

(declare-fun d!105509 () Bool)

(declare-fun e!463150 () Bool)

(assert (=> d!105509 e!463150))

(declare-fun res!565699 () Bool)

(assert (=> d!105509 (=> res!565699 e!463150)))

(declare-fun lt!377041 () Bool)

(assert (=> d!105509 (= res!565699 (not lt!377041))))

(declare-fun lt!377040 () Bool)

(assert (=> d!105509 (= lt!377041 lt!377040)))

(declare-fun lt!377038 () Unit!28435)

(declare-fun e!463149 () Unit!28435)

(assert (=> d!105509 (= lt!377038 e!463149)))

(declare-fun c!89931 () Bool)

(assert (=> d!105509 (= c!89931 lt!377040)))

(assert (=> d!105509 (= lt!377040 (containsKey!400 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105509 (= (contains!4208 lt!376779 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377041)))

(declare-fun b!830610 () Bool)

(declare-fun lt!377039 () Unit!28435)

(assert (=> b!830610 (= e!463149 lt!377039)))

(assert (=> b!830610 (= lt!377039 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830610 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830611 () Bool)

(declare-fun Unit!28460 () Unit!28435)

(assert (=> b!830611 (= e!463149 Unit!28460)))

(declare-fun b!830612 () Bool)

(assert (=> b!830612 (= e!463150 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105509 c!89931) b!830610))

(assert (= (and d!105509 (not c!89931)) b!830611))

(assert (= (and d!105509 (not res!565699)) b!830612))

(declare-fun m!774213 () Bool)

(assert (=> d!105509 m!774213))

(declare-fun m!774215 () Bool)

(assert (=> b!830610 m!774215))

(declare-fun m!774217 () Bool)

(assert (=> b!830610 m!774217))

(assert (=> b!830610 m!774217))

(declare-fun m!774219 () Bool)

(assert (=> b!830610 m!774219))

(assert (=> b!830612 m!774217))

(assert (=> b!830612 m!774217))

(assert (=> b!830612 m!774219))

(assert (=> d!105275 d!105509))

(assert (=> d!105275 d!105279))

(assert (=> d!105269 d!105279))

(declare-fun b!830615 () Bool)

(declare-fun e!463152 () Option!420)

(assert (=> b!830615 (= e!463152 (getValueByKey!414 (t!22376 (toList!4521 lt!376803)) (_1!5097 lt!376628)))))

(declare-fun b!830616 () Bool)

(assert (=> b!830616 (= e!463152 None!418)))

(declare-fun d!105511 () Bool)

(declare-fun c!89932 () Bool)

(assert (=> d!105511 (= c!89932 (and ((_ is Cons!15999) (toList!4521 lt!376803)) (= (_1!5097 (h!17128 (toList!4521 lt!376803))) (_1!5097 lt!376628))))))

(declare-fun e!463151 () Option!420)

(assert (=> d!105511 (= (getValueByKey!414 (toList!4521 lt!376803) (_1!5097 lt!376628)) e!463151)))

(declare-fun b!830613 () Bool)

(assert (=> b!830613 (= e!463151 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376803)))))))

(declare-fun b!830614 () Bool)

(assert (=> b!830614 (= e!463151 e!463152)))

(declare-fun c!89933 () Bool)

(assert (=> b!830614 (= c!89933 (and ((_ is Cons!15999) (toList!4521 lt!376803)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376803))) (_1!5097 lt!376628)))))))

(assert (= (and d!105511 c!89932) b!830613))

(assert (= (and d!105511 (not c!89932)) b!830614))

(assert (= (and b!830614 c!89933) b!830615))

(assert (= (and b!830614 (not c!89933)) b!830616))

(declare-fun m!774221 () Bool)

(assert (=> b!830615 m!774221))

(assert (=> b!830249 d!105511))

(declare-fun condMapEmpty!24470 () Bool)

(declare-fun mapDefault!24470 () ValueCell!7188)

(assert (=> mapNonEmpty!24469 (= condMapEmpty!24470 (= mapRest!24469 ((as const (Array (_ BitVec 32) ValueCell!7188)) mapDefault!24470)))))

(declare-fun e!463153 () Bool)

(declare-fun mapRes!24470 () Bool)

(assert (=> mapNonEmpty!24469 (= tp!47287 (and e!463153 mapRes!24470))))

(declare-fun mapIsEmpty!24470 () Bool)

(assert (=> mapIsEmpty!24470 mapRes!24470))

(declare-fun b!830617 () Bool)

(declare-fun e!463154 () Bool)

(assert (=> b!830617 (= e!463154 tp_is_empty!15207)))

(declare-fun mapNonEmpty!24470 () Bool)

(declare-fun tp!47288 () Bool)

(assert (=> mapNonEmpty!24470 (= mapRes!24470 (and tp!47288 e!463154))))

(declare-fun mapRest!24470 () (Array (_ BitVec 32) ValueCell!7188))

(declare-fun mapKey!24470 () (_ BitVec 32))

(declare-fun mapValue!24470 () ValueCell!7188)

(assert (=> mapNonEmpty!24470 (= mapRest!24469 (store mapRest!24470 mapKey!24470 mapValue!24470))))

(declare-fun b!830618 () Bool)

(assert (=> b!830618 (= e!463153 tp_is_empty!15207)))

(assert (= (and mapNonEmpty!24469 condMapEmpty!24470) mapIsEmpty!24470))

(assert (= (and mapNonEmpty!24469 (not condMapEmpty!24470)) mapNonEmpty!24470))

(assert (= (and mapNonEmpty!24470 ((_ is ValueCellFull!7188) mapValue!24470)) b!830617))

(assert (= (and mapNonEmpty!24469 ((_ is ValueCellFull!7188) mapDefault!24470)) b!830618))

(declare-fun m!774223 () Bool)

(assert (=> mapNonEmpty!24470 m!774223))

(declare-fun b_lambda!11409 () Bool)

(assert (= b_lambda!11403 (or (and start!71512 b_free!13497) b_lambda!11409)))

(declare-fun b_lambda!11411 () Bool)

(assert (= b_lambda!11401 (or (and start!71512 b_free!13497) b_lambda!11411)))

(declare-fun b_lambda!11413 () Bool)

(assert (= b_lambda!11405 (or (and start!71512 b_free!13497) b_lambda!11413)))

(declare-fun b_lambda!11415 () Bool)

(assert (= b_lambda!11407 (or (and start!71512 b_free!13497) b_lambda!11415)))

(check-sat (not b_lambda!11389) (not b!830356) (not d!105473) (not bm!36258) (not d!105455) (not bm!36284) (not b!830477) (not b!830292) (not b!830505) (not d!105453) (not b!830459) (not b_lambda!11413) (not d!105425) (not b!830525) (not d!105373) (not b!830325) (not d!105505) (not b!830445) (not b!830467) (not b!830290) (not b!830479) (not b!830582) (not b!830367) (not b_lambda!11409) (not d!105393) (not b!830475) (not d!105399) (not b_lambda!11399) (not b!830418) (not d!105375) tp_is_empty!15207 (not d!105307) (not d!105471) (not d!105343) (not b!830522) (not b!830497) (not d!105477) (not d!105435) (not b!830313) (not b!830555) (not d!105487) (not b!830553) (not b!830450) (not d!105443) (not b!830286) (not b!830518) (not b!830512) (not b!830528) (not b!830346) (not b_lambda!11391) (not b!830559) (not d!105405) (not d!105415) (not d!105503) (not d!105317) (not b!830335) (not b_next!13497) (not d!105497) (not b!830562) (not b!830312) (not b!830421) (not d!105341) (not b!830495) (not b!830486) (not d!105377) (not b!830364) (not d!105361) (not b!830503) (not b!830615) (not d!105335) (not d!105319) (not b!830369) (not b!830354) (not b!830372) (not d!105423) (not b!830348) (not bm!36271) (not d!105499) (not b!830538) (not b!830388) (not d!105449) (not d!105291) (not d!105391) (not bm!36268) (not b!830612) (not b!830580) (not d!105359) (not b!830269) (not b!830469) (not b!830572) (not bm!36274) (not b!830500) (not b!830446) (not b_lambda!11415) (not b!830609) (not b!830387) (not b_lambda!11397) (not b!830480) (not d!105353) (not b!830567) (not d!105495) (not d!105347) (not d!105389) (not b!830533) (not b!830429) (not b!830483) (not b!830370) (not b!830419) (not d!105351) (not b!830552) (not b!830549) (not d!105337) (not d!105299) (not d!105479) (not d!105465) (not d!105305) (not b!830482) (not b!830324) (not d!105321) (not b!830484) (not bm!36279) (not d!105419) (not d!105493) (not d!105339) (not b!830536) (not d!105367) (not b!830514) (not b!830309) (not d!105489) (not b!830311) (not d!105407) (not d!105437) (not b!830339) (not b!830291) (not d!105447) (not d!105331) (not d!105293) (not b!830440) (not d!105385) (not d!105303) (not d!105409) (not b!830476) (not b!830288) (not b!830523) (not d!105345) (not d!105397) (not d!105459) (not d!105469) (not d!105433) (not b!830277) (not b!830485) (not b!830366) (not b!830271) (not d!105327) (not mapNonEmpty!24470) (not b!830373) (not b!830544) (not b!830262) (not d!105483) (not b!830349) (not b_lambda!11411) (not b!830426) (not b!830604) (not b!830515) (not b!830295) (not b!830264) (not d!105371) (not b!830511) (not d!105413) (not b!830427) (not d!105315) (not b!830607) (not b!830437) (not b!830508) (not d!105445) (not b!830521) (not b!830534) (not d!105365) (not b!830266) (not d!105311) (not b!830322) (not b!830464) (not b!830278) (not b!830352) (not b!830289) (not b!830381) (not b!830360) (not d!105301) (not d!105363) (not d!105439) (not b!830351) (not b!830345) (not d!105461) (not b!830265) (not d!105369) (not d!105481) (not b!830531) (not b!830561) (not d!105333) (not b!830465) (not d!105441) (not d!105467) (not b!830519) (not bm!36281) (not b_lambda!11395) (not d!105417) (not b!830564) (not b!830546) (not d!105485) (not b!830410) (not b!830610) (not b!830263) (not b!830448) (not b!830333) (not b!830337) (not b!830272) (not d!105383) (not d!105411) (not d!105381) (not b!830375) (not d!105349) (not b!830363) (not b!830350) (not d!105463) (not b!830438) (not d!105507) (not d!105323) (not b!830548) (not b!830556) (not d!105509) (not b!830412) (not b!830326) (not d!105457) (not d!105355) (not b!830443) (not b!830376) (not b!830570) (not d!105329) (not b!830456) (not b!830526) (not b!830569) (not b!830581) (not bm!36259) (not b!830457) (not b!830554) (not b_lambda!11393) (not b!830297) (not b!830574) (not b!830551) (not b!830431) (not b!830462) (not bm!36277) (not d!105401) (not d!105325) (not b!830355) (not b!830298) (not b!830280) (not b!830517) (not b!830378) (not d!105475) (not b!830279) (not b!830550) (not b!830588) (not b!830424) (not bm!36260) (not b!830332) b_and!22567 (not b!830493))
(check-sat b_and!22567 (not b_next!13497))
(get-model)

(declare-fun d!105513 () Bool)

(declare-fun res!565704 () Bool)

(declare-fun e!463159 () Bool)

(assert (=> d!105513 (=> res!565704 e!463159)))

(assert (=> d!105513 (= res!565704 (and ((_ is Cons!15999) (toList!4521 lt!376659)) (= (_1!5097 (h!17128 (toList!4521 lt!376659))) (_1!5097 lt!376628))))))

(assert (=> d!105513 (= (containsKey!400 (toList!4521 lt!376659) (_1!5097 lt!376628)) e!463159)))

(declare-fun b!830623 () Bool)

(declare-fun e!463160 () Bool)

(assert (=> b!830623 (= e!463159 e!463160)))

(declare-fun res!565705 () Bool)

(assert (=> b!830623 (=> (not res!565705) (not e!463160))))

(assert (=> b!830623 (= res!565705 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376659))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376659))) (_1!5097 lt!376628))) ((_ is Cons!15999) (toList!4521 lt!376659)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376659))) (_1!5097 lt!376628))))))

(declare-fun b!830624 () Bool)

(assert (=> b!830624 (= e!463160 (containsKey!400 (t!22376 (toList!4521 lt!376659)) (_1!5097 lt!376628)))))

(assert (= (and d!105513 (not res!565704)) b!830623))

(assert (= (and b!830623 res!565705) b!830624))

(declare-fun m!774225 () Bool)

(assert (=> b!830624 m!774225))

(assert (=> d!105401 d!105513))

(declare-fun d!105515 () Bool)

(declare-fun res!565706 () Bool)

(declare-fun e!463161 () Bool)

(assert (=> d!105515 (=> res!565706 e!463161)))

(assert (=> d!105515 (= res!565706 (and ((_ is Cons!15999) lt!376739) (= (_1!5097 (h!17128 lt!376739)) (_1!5097 lt!376622))))))

(assert (=> d!105515 (= (containsKey!400 lt!376739 (_1!5097 lt!376622)) e!463161)))

(declare-fun b!830625 () Bool)

(declare-fun e!463162 () Bool)

(assert (=> b!830625 (= e!463161 e!463162)))

(declare-fun res!565707 () Bool)

(assert (=> b!830625 (=> (not res!565707) (not e!463162))))

(assert (=> b!830625 (= res!565707 (and (or (not ((_ is Cons!15999) lt!376739)) (bvsle (_1!5097 (h!17128 lt!376739)) (_1!5097 lt!376622))) ((_ is Cons!15999) lt!376739) (bvslt (_1!5097 (h!17128 lt!376739)) (_1!5097 lt!376622))))))

(declare-fun b!830626 () Bool)

(assert (=> b!830626 (= e!463162 (containsKey!400 (t!22376 lt!376739) (_1!5097 lt!376622)))))

(assert (= (and d!105515 (not res!565706)) b!830625))

(assert (= (and b!830625 res!565707) b!830626))

(declare-fun m!774227 () Bool)

(assert (=> b!830626 m!774227))

(assert (=> b!830569 d!105515))

(declare-fun d!105517 () Bool)

(declare-fun res!565712 () Bool)

(declare-fun e!463167 () Bool)

(assert (=> d!105517 (=> res!565712 e!463167)))

(assert (=> d!105517 (= res!565712 (or ((_ is Nil!16000) lt!376922) ((_ is Nil!16000) (t!22376 lt!376922))))))

(assert (=> d!105517 (= (isStrictlySorted!437 lt!376922) e!463167)))

(declare-fun b!830631 () Bool)

(declare-fun e!463168 () Bool)

(assert (=> b!830631 (= e!463167 e!463168)))

(declare-fun res!565713 () Bool)

(assert (=> b!830631 (=> (not res!565713) (not e!463168))))

(assert (=> b!830631 (= res!565713 (bvslt (_1!5097 (h!17128 lt!376922)) (_1!5097 (h!17128 (t!22376 lt!376922)))))))

(declare-fun b!830632 () Bool)

(assert (=> b!830632 (= e!463168 (isStrictlySorted!437 (t!22376 lt!376922)))))

(assert (= (and d!105517 (not res!565712)) b!830631))

(assert (= (and b!830631 res!565713) b!830632))

(declare-fun m!774229 () Bool)

(assert (=> b!830632 m!774229))

(assert (=> d!105399 d!105517))

(declare-fun d!105519 () Bool)

(declare-fun res!565714 () Bool)

(declare-fun e!463169 () Bool)

(assert (=> d!105519 (=> res!565714 e!463169)))

(assert (=> d!105519 (= res!565714 (or ((_ is Nil!16000) (toList!4521 lt!376626)) ((_ is Nil!16000) (t!22376 (toList!4521 lt!376626)))))))

(assert (=> d!105519 (= (isStrictlySorted!437 (toList!4521 lt!376626)) e!463169)))

(declare-fun b!830633 () Bool)

(declare-fun e!463170 () Bool)

(assert (=> b!830633 (= e!463169 e!463170)))

(declare-fun res!565715 () Bool)

(assert (=> b!830633 (=> (not res!565715) (not e!463170))))

(assert (=> b!830633 (= res!565715 (bvslt (_1!5097 (h!17128 (toList!4521 lt!376626))) (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376626))))))))

(declare-fun b!830634 () Bool)

(assert (=> b!830634 (= e!463170 (isStrictlySorted!437 (t!22376 (toList!4521 lt!376626))))))

(assert (= (and d!105519 (not res!565714)) b!830633))

(assert (= (and b!830633 res!565715) b!830634))

(declare-fun m!774231 () Bool)

(assert (=> b!830634 m!774231))

(assert (=> d!105399 d!105519))

(declare-fun b!830637 () Bool)

(declare-fun e!463172 () Option!420)

(assert (=> b!830637 (= e!463172 (getValueByKey!414 (t!22376 (t!22376 lt!376805)) (_1!5097 lt!376628)))))

(declare-fun b!830638 () Bool)

(assert (=> b!830638 (= e!463172 None!418)))

(declare-fun d!105521 () Bool)

(declare-fun c!89934 () Bool)

(assert (=> d!105521 (= c!89934 (and ((_ is Cons!15999) (t!22376 lt!376805)) (= (_1!5097 (h!17128 (t!22376 lt!376805))) (_1!5097 lt!376628))))))

(declare-fun e!463171 () Option!420)

(assert (=> d!105521 (= (getValueByKey!414 (t!22376 lt!376805) (_1!5097 lt!376628)) e!463171)))

(declare-fun b!830635 () Bool)

(assert (=> b!830635 (= e!463171 (Some!419 (_2!5097 (h!17128 (t!22376 lt!376805)))))))

(declare-fun b!830636 () Bool)

(assert (=> b!830636 (= e!463171 e!463172)))

(declare-fun c!89935 () Bool)

(assert (=> b!830636 (= c!89935 (and ((_ is Cons!15999) (t!22376 lt!376805)) (not (= (_1!5097 (h!17128 (t!22376 lt!376805))) (_1!5097 lt!376628)))))))

(assert (= (and d!105521 c!89934) b!830635))

(assert (= (and d!105521 (not c!89934)) b!830636))

(assert (= (and b!830636 c!89935) b!830637))

(assert (= (and b!830636 (not c!89935)) b!830638))

(declare-fun m!774233 () Bool)

(assert (=> b!830637 m!774233))

(assert (=> b!830381 d!105521))

(declare-fun d!105523 () Bool)

(declare-fun lt!377042 () Bool)

(assert (=> d!105523 (= lt!377042 (select (content!389 (toList!4521 lt!376966)) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!463174 () Bool)

(assert (=> d!105523 (= lt!377042 e!463174)))

(declare-fun res!565717 () Bool)

(assert (=> d!105523 (=> (not res!565717) (not e!463174))))

(assert (=> d!105523 (= res!565717 ((_ is Cons!15999) (toList!4521 lt!376966)))))

(assert (=> d!105523 (= (contains!4209 (toList!4521 lt!376966) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377042)))

(declare-fun b!830639 () Bool)

(declare-fun e!463173 () Bool)

(assert (=> b!830639 (= e!463174 e!463173)))

(declare-fun res!565716 () Bool)

(assert (=> b!830639 (=> res!565716 e!463173)))

(assert (=> b!830639 (= res!565716 (= (h!17128 (toList!4521 lt!376966)) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!830640 () Bool)

(assert (=> b!830640 (= e!463173 (contains!4209 (t!22376 (toList!4521 lt!376966)) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!105523 res!565717) b!830639))

(assert (= (and b!830639 (not res!565716)) b!830640))

(declare-fun m!774235 () Bool)

(assert (=> d!105523 m!774235))

(declare-fun m!774237 () Bool)

(assert (=> d!105523 m!774237))

(declare-fun m!774239 () Bool)

(assert (=> b!830640 m!774239))

(assert (=> b!830519 d!105523))

(declare-fun e!463176 () Option!420)

(declare-fun b!830643 () Bool)

(assert (=> b!830643 (= e!463176 (getValueByKey!414 (t!22376 (toList!4521 lt!377002)) (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))

(declare-fun b!830644 () Bool)

(assert (=> b!830644 (= e!463176 None!418)))

(declare-fun d!105525 () Bool)

(declare-fun c!89936 () Bool)

(assert (=> d!105525 (= c!89936 (and ((_ is Cons!15999) (toList!4521 lt!377002)) (= (_1!5097 (h!17128 (toList!4521 lt!377002))) (_1!5097 (tuple2!10175 lt!376752 minValue!754)))))))

(declare-fun e!463175 () Option!420)

(assert (=> d!105525 (= (getValueByKey!414 (toList!4521 lt!377002) (_1!5097 (tuple2!10175 lt!376752 minValue!754))) e!463175)))

(declare-fun b!830641 () Bool)

(assert (=> b!830641 (= e!463175 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!377002)))))))

(declare-fun b!830642 () Bool)

(assert (=> b!830642 (= e!463175 e!463176)))

(declare-fun c!89937 () Bool)

(assert (=> b!830642 (= c!89937 (and ((_ is Cons!15999) (toList!4521 lt!377002)) (not (= (_1!5097 (h!17128 (toList!4521 lt!377002))) (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))))

(assert (= (and d!105525 c!89936) b!830641))

(assert (= (and d!105525 (not c!89936)) b!830642))

(assert (= (and b!830642 c!89937) b!830643))

(assert (= (and b!830642 (not c!89937)) b!830644))

(declare-fun m!774241 () Bool)

(assert (=> b!830643 m!774241))

(assert (=> b!830555 d!105525))

(declare-fun b!830645 () Bool)

(declare-fun e!463177 () List!16003)

(declare-fun call!36291 () List!16003)

(assert (=> b!830645 (= e!463177 call!36291)))

(declare-fun bm!36286 () Bool)

(declare-fun call!36289 () List!16003)

(assert (=> bm!36286 (= call!36291 call!36289)))

(declare-fun b!830646 () Bool)

(declare-fun e!463179 () Bool)

(declare-fun lt!377043 () List!16003)

(assert (=> b!830646 (= e!463179 (contains!4209 lt!377043 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun b!830647 () Bool)

(declare-fun c!89941 () Bool)

(declare-fun c!89940 () Bool)

(declare-fun e!463180 () List!16003)

(assert (=> b!830647 (= e!463180 (ite c!89941 (t!22376 (t!22376 (toList!4521 lt!376626))) (ite c!89940 (Cons!15999 (h!17128 (t!22376 (toList!4521 lt!376626))) (t!22376 (t!22376 (toList!4521 lt!376626)))) Nil!16000)))))

(declare-fun b!830648 () Bool)

(assert (=> b!830648 (= e!463180 (insertStrictlySorted!268 (t!22376 (t!22376 (toList!4521 lt!376626))) (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun b!830649 () Bool)

(assert (=> b!830649 (= e!463177 call!36291)))

(declare-fun call!36290 () List!16003)

(declare-fun bm!36287 () Bool)

(declare-fun c!89938 () Bool)

(assert (=> bm!36287 (= call!36290 ($colon$colon!535 e!463180 (ite c!89938 (h!17128 (t!22376 (toList!4521 lt!376626))) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628)))))))

(declare-fun c!89939 () Bool)

(assert (=> bm!36287 (= c!89939 c!89938)))

(declare-fun b!830650 () Bool)

(declare-fun e!463181 () List!16003)

(assert (=> b!830650 (= e!463181 call!36289)))

(declare-fun b!830651 () Bool)

(declare-fun e!463178 () List!16003)

(assert (=> b!830651 (= e!463178 call!36290)))

(declare-fun b!830652 () Bool)

(assert (=> b!830652 (= e!463178 e!463181)))

(assert (=> b!830652 (= c!89941 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376626))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376626)))) (_1!5097 lt!376628))))))

(declare-fun b!830654 () Bool)

(declare-fun res!565718 () Bool)

(assert (=> b!830654 (=> (not res!565718) (not e!463179))))

(assert (=> b!830654 (= res!565718 (containsKey!400 lt!377043 (_1!5097 lt!376628)))))

(declare-fun bm!36288 () Bool)

(assert (=> bm!36288 (= call!36289 call!36290)))

(declare-fun d!105527 () Bool)

(assert (=> d!105527 e!463179))

(declare-fun res!565719 () Bool)

(assert (=> d!105527 (=> (not res!565719) (not e!463179))))

(assert (=> d!105527 (= res!565719 (isStrictlySorted!437 lt!377043))))

(assert (=> d!105527 (= lt!377043 e!463178)))

(assert (=> d!105527 (= c!89938 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376626))) (bvslt (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376626)))) (_1!5097 lt!376628))))))

(assert (=> d!105527 (isStrictlySorted!437 (t!22376 (toList!4521 lt!376626)))))

(assert (=> d!105527 (= (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376626)) (_1!5097 lt!376628) (_2!5097 lt!376628)) lt!377043)))

(declare-fun b!830653 () Bool)

(assert (=> b!830653 (= c!89940 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376626))) (bvsgt (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376626)))) (_1!5097 lt!376628))))))

(assert (=> b!830653 (= e!463181 e!463177)))

(assert (= (and d!105527 c!89938) b!830651))

(assert (= (and d!105527 (not c!89938)) b!830652))

(assert (= (and b!830652 c!89941) b!830650))

(assert (= (and b!830652 (not c!89941)) b!830653))

(assert (= (and b!830653 c!89940) b!830645))

(assert (= (and b!830653 (not c!89940)) b!830649))

(assert (= (or b!830645 b!830649) bm!36286))

(assert (= (or b!830650 bm!36286) bm!36288))

(assert (= (or b!830651 bm!36288) bm!36287))

(assert (= (and bm!36287 c!89939) b!830648))

(assert (= (and bm!36287 (not c!89939)) b!830647))

(assert (= (and d!105527 res!565719) b!830654))

(assert (= (and b!830654 res!565718) b!830646))

(declare-fun m!774243 () Bool)

(assert (=> b!830654 m!774243))

(declare-fun m!774245 () Bool)

(assert (=> d!105527 m!774245))

(assert (=> d!105527 m!774231))

(declare-fun m!774247 () Bool)

(assert (=> bm!36287 m!774247))

(declare-fun m!774249 () Bool)

(assert (=> b!830648 m!774249))

(declare-fun m!774251 () Bool)

(assert (=> b!830646 m!774251))

(assert (=> b!830469 d!105527))

(declare-fun d!105529 () Bool)

(declare-fun isEmpty!661 (Option!420) Bool)

(assert (=> d!105529 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376737) (_1!5097 lt!376622))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376737) (_1!5097 lt!376622)))))))

(declare-fun bs!23202 () Bool)

(assert (= bs!23202 d!105529))

(assert (=> bs!23202 m!773363))

(declare-fun m!774253 () Bool)

(assert (=> bs!23202 m!774253))

(assert (=> b!830564 d!105529))

(assert (=> b!830564 d!105309))

(declare-fun d!105531 () Bool)

(assert (=> d!105531 (= (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!830311 d!105531))

(declare-fun d!105533 () Bool)

(assert (=> d!105533 (= ($colon$colon!535 e!463046 (ite c!89875 (h!17128 (toList!4521 lt!376624)) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (Cons!15999 (ite c!89875 (h!17128 (toList!4521 lt!376624)) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) e!463046))))

(assert (=> bm!36271 d!105533))

(declare-fun d!105535 () Bool)

(declare-fun res!565720 () Bool)

(declare-fun e!463182 () Bool)

(assert (=> d!105535 (=> res!565720 e!463182)))

(assert (=> d!105535 (= res!565720 (and ((_ is Cons!15999) lt!376910) (= (_1!5097 (h!17128 lt!376910)) (_1!5097 lt!376628))))))

(assert (=> d!105535 (= (containsKey!400 lt!376910 (_1!5097 lt!376628)) e!463182)))

(declare-fun b!830655 () Bool)

(declare-fun e!463183 () Bool)

(assert (=> b!830655 (= e!463182 e!463183)))

(declare-fun res!565721 () Bool)

(assert (=> b!830655 (=> (not res!565721) (not e!463183))))

(assert (=> b!830655 (= res!565721 (and (or (not ((_ is Cons!15999) lt!376910)) (bvsle (_1!5097 (h!17128 lt!376910)) (_1!5097 lt!376628))) ((_ is Cons!15999) lt!376910) (bvslt (_1!5097 (h!17128 lt!376910)) (_1!5097 lt!376628))))))

(declare-fun b!830656 () Bool)

(assert (=> b!830656 (= e!463183 (containsKey!400 (t!22376 lt!376910) (_1!5097 lt!376628)))))

(assert (= (and d!105535 (not res!565720)) b!830655))

(assert (= (and b!830655 res!565721) b!830656))

(declare-fun m!774255 () Bool)

(assert (=> b!830656 m!774255))

(assert (=> b!830418 d!105535))

(declare-fun b!830657 () Bool)

(declare-fun e!463189 () Bool)

(declare-fun e!463185 () Bool)

(assert (=> b!830657 (= e!463189 e!463185)))

(declare-fun c!89943 () Bool)

(declare-fun e!463187 () Bool)

(assert (=> b!830657 (= c!89943 e!463187)))

(declare-fun res!565723 () Bool)

(assert (=> b!830657 (=> (not res!565723) (not e!463187))))

(assert (=> b!830657 (= res!565723 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!830658 () Bool)

(declare-fun res!565725 () Bool)

(assert (=> b!830658 (=> (not res!565725) (not e!463189))))

(declare-fun lt!377044 () ListLongMap!9011)

(assert (=> b!830658 (= res!565725 (not (contains!4208 lt!377044 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!830659 () Bool)

(declare-fun e!463186 () Bool)

(assert (=> b!830659 (= e!463185 e!463186)))

(assert (=> b!830659 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun res!565722 () Bool)

(assert (=> b!830659 (= res!565722 (contains!4208 lt!377044 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!830659 (=> (not res!565722) (not e!463186))))

(declare-fun b!830660 () Bool)

(declare-fun e!463190 () Bool)

(assert (=> b!830660 (= e!463190 (isEmpty!659 lt!377044))))

(declare-fun b!830661 () Bool)

(declare-fun lt!377047 () Unit!28435)

(declare-fun lt!377046 () Unit!28435)

(assert (=> b!830661 (= lt!377047 lt!377046)))

(declare-fun lt!377050 () (_ BitVec 64))

(declare-fun lt!377048 () V!25277)

(declare-fun lt!377045 () (_ BitVec 64))

(declare-fun lt!377049 () ListLongMap!9011)

(assert (=> b!830661 (not (contains!4208 (+!1950 lt!377049 (tuple2!10175 lt!377050 lt!377048)) lt!377045))))

(assert (=> b!830661 (= lt!377046 (addStillNotContains!199 lt!377049 lt!377050 lt!377048 lt!377045))))

(assert (=> b!830661 (= lt!377045 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!830661 (= lt!377048 (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!830661 (= lt!377050 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun call!36292 () ListLongMap!9011)

(assert (=> b!830661 (= lt!377049 call!36292)))

(declare-fun e!463184 () ListLongMap!9011)

(assert (=> b!830661 (= e!463184 (+!1950 call!36292 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!830662 () Bool)

(assert (=> b!830662 (= e!463187 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!830662 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!36289 () Bool)

(assert (=> bm!36289 (= call!36292 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!830663 () Bool)

(declare-fun e!463188 () ListLongMap!9011)

(assert (=> b!830663 (= e!463188 (ListLongMap!9012 Nil!16000))))

(declare-fun b!830664 () Bool)

(assert (=> b!830664 (= e!463184 call!36292)))

(declare-fun b!830665 () Bool)

(assert (=> b!830665 (= e!463190 (= lt!377044 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!105537 () Bool)

(assert (=> d!105537 e!463189))

(declare-fun res!565724 () Bool)

(assert (=> d!105537 (=> (not res!565724) (not e!463189))))

(assert (=> d!105537 (= res!565724 (not (contains!4208 lt!377044 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105537 (= lt!377044 e!463188)))

(declare-fun c!89945 () Bool)

(assert (=> d!105537 (= c!89945 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> d!105537 (validMask!0 mask!1312)))

(assert (=> d!105537 (= (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796) lt!377044)))

(declare-fun b!830666 () Bool)

(assert (=> b!830666 (= e!463185 e!463190)))

(declare-fun c!89942 () Bool)

(assert (=> b!830666 (= c!89942 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!830667 () Bool)

(assert (=> b!830667 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> b!830667 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22733 _values!788)))))

(assert (=> b!830667 (= e!463186 (= (apply!372 lt!377044 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!830668 () Bool)

(assert (=> b!830668 (= e!463188 e!463184)))

(declare-fun c!89944 () Bool)

(assert (=> b!830668 (= c!89944 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!105537 c!89945) b!830663))

(assert (= (and d!105537 (not c!89945)) b!830668))

(assert (= (and b!830668 c!89944) b!830661))

(assert (= (and b!830668 (not c!89944)) b!830664))

(assert (= (or b!830661 b!830664) bm!36289))

(assert (= (and d!105537 res!565724) b!830658))

(assert (= (and b!830658 res!565725) b!830657))

(assert (= (and b!830657 res!565723) b!830662))

(assert (= (and b!830657 c!89943) b!830659))

(assert (= (and b!830657 (not c!89943)) b!830666))

(assert (= (and b!830659 res!565722) b!830667))

(assert (= (and b!830666 c!89942) b!830665))

(assert (= (and b!830666 (not c!89942)) b!830660))

(declare-fun b_lambda!11417 () Bool)

(assert (=> (not b_lambda!11417) (not b!830661)))

(assert (=> b!830661 t!22381))

(declare-fun b_and!22569 () Bool)

(assert (= b_and!22567 (and (=> t!22381 result!8023) b_and!22569)))

(declare-fun b_lambda!11419 () Bool)

(assert (=> (not b_lambda!11419) (not b!830667)))

(assert (=> b!830667 t!22381))

(declare-fun b_and!22571 () Bool)

(assert (= b_and!22569 (and (=> t!22381 result!8023) b_and!22571)))

(declare-fun m!774257 () Bool)

(assert (=> b!830658 m!774257))

(declare-fun m!774259 () Bool)

(assert (=> b!830661 m!774259))

(declare-fun m!774261 () Bool)

(assert (=> b!830661 m!774261))

(declare-fun m!774263 () Bool)

(assert (=> b!830661 m!774263))

(assert (=> b!830661 m!774263))

(assert (=> b!830661 m!773293))

(declare-fun m!774265 () Bool)

(assert (=> b!830661 m!774265))

(declare-fun m!774267 () Bool)

(assert (=> b!830661 m!774267))

(declare-fun m!774269 () Bool)

(assert (=> b!830661 m!774269))

(assert (=> b!830661 m!774269))

(declare-fun m!774271 () Bool)

(assert (=> b!830661 m!774271))

(assert (=> b!830661 m!773293))

(declare-fun m!774273 () Bool)

(assert (=> bm!36289 m!774273))

(assert (=> b!830665 m!774273))

(assert (=> b!830667 m!774259))

(assert (=> b!830667 m!774259))

(declare-fun m!774275 () Bool)

(assert (=> b!830667 m!774275))

(assert (=> b!830667 m!774263))

(assert (=> b!830667 m!773293))

(assert (=> b!830667 m!774263))

(assert (=> b!830667 m!773293))

(assert (=> b!830667 m!774265))

(assert (=> b!830662 m!774259))

(assert (=> b!830662 m!774259))

(declare-fun m!774277 () Bool)

(assert (=> b!830662 m!774277))

(assert (=> b!830659 m!774259))

(assert (=> b!830659 m!774259))

(declare-fun m!774279 () Bool)

(assert (=> b!830659 m!774279))

(declare-fun m!774281 () Bool)

(assert (=> b!830660 m!774281))

(declare-fun m!774283 () Bool)

(assert (=> d!105537 m!774283))

(assert (=> d!105537 m!773209))

(assert (=> b!830668 m!774259))

(assert (=> b!830668 m!774259))

(assert (=> b!830668 m!774277))

(assert (=> bm!36259 d!105537))

(declare-fun d!105539 () Bool)

(declare-fun lt!377051 () Bool)

(assert (=> d!105539 (= lt!377051 (select (content!389 (t!22376 (toList!4521 lt!376737))) lt!376622))))

(declare-fun e!463192 () Bool)

(assert (=> d!105539 (= lt!377051 e!463192)))

(declare-fun res!565727 () Bool)

(assert (=> d!105539 (=> (not res!565727) (not e!463192))))

(assert (=> d!105539 (= res!565727 ((_ is Cons!15999) (t!22376 (toList!4521 lt!376737))))))

(assert (=> d!105539 (= (contains!4209 (t!22376 (toList!4521 lt!376737)) lt!376622) lt!377051)))

(declare-fun b!830669 () Bool)

(declare-fun e!463191 () Bool)

(assert (=> b!830669 (= e!463192 e!463191)))

(declare-fun res!565726 () Bool)

(assert (=> b!830669 (=> res!565726 e!463191)))

(assert (=> b!830669 (= res!565726 (= (h!17128 (t!22376 (toList!4521 lt!376737))) lt!376622))))

(declare-fun b!830670 () Bool)

(assert (=> b!830670 (= e!463191 (contains!4209 (t!22376 (t!22376 (toList!4521 lt!376737))) lt!376622))))

(assert (= (and d!105539 res!565727) b!830669))

(assert (= (and b!830669 (not res!565726)) b!830670))

(declare-fun m!774285 () Bool)

(assert (=> d!105539 m!774285))

(declare-fun m!774287 () Bool)

(assert (=> d!105539 m!774287))

(declare-fun m!774289 () Bool)

(assert (=> b!830670 m!774289))

(assert (=> b!830479 d!105539))

(declare-fun d!105541 () Bool)

(assert (=> d!105541 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun lt!377054 () Unit!28435)

(declare-fun choose!1429 (List!16003 (_ BitVec 64)) Unit!28435)

(assert (=> d!105541 (= lt!377054 (choose!1429 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!463195 () Bool)

(assert (=> d!105541 e!463195))

(declare-fun res!565730 () Bool)

(assert (=> d!105541 (=> (not res!565730) (not e!463195))))

(assert (=> d!105541 (= res!565730 (isStrictlySorted!437 (toList!4521 lt!376713)))))

(assert (=> d!105541 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) lt!377054)))

(declare-fun b!830673 () Bool)

(assert (=> b!830673 (= e!463195 (containsKey!400 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105541 res!565730) b!830673))

(assert (=> d!105541 m!773277))

(assert (=> d!105541 m!773577))

(assert (=> d!105541 m!773577))

(assert (=> d!105541 m!773753))

(assert (=> d!105541 m!773277))

(declare-fun m!774291 () Bool)

(assert (=> d!105541 m!774291))

(declare-fun m!774293 () Bool)

(assert (=> d!105541 m!774293))

(assert (=> b!830673 m!773277))

(assert (=> b!830673 m!773749))

(assert (=> b!830370 d!105541))

(declare-fun d!105543 () Bool)

(assert (=> d!105543 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun bs!23203 () Bool)

(assert (= bs!23203 d!105543))

(assert (=> bs!23203 m!773577))

(declare-fun m!774295 () Bool)

(assert (=> bs!23203 m!774295))

(assert (=> b!830370 d!105543))

(declare-fun b!830676 () Bool)

(declare-fun e!463197 () Option!420)

(assert (=> b!830676 (= e!463197 (getValueByKey!414 (t!22376 (toList!4521 lt!376713)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830677 () Bool)

(assert (=> b!830677 (= e!463197 None!418)))

(declare-fun d!105545 () Bool)

(declare-fun c!89946 () Bool)

(assert (=> d!105545 (= c!89946 (and ((_ is Cons!15999) (toList!4521 lt!376713)) (= (_1!5097 (h!17128 (toList!4521 lt!376713))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun e!463196 () Option!420)

(assert (=> d!105545 (= (getValueByKey!414 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) e!463196)))

(declare-fun b!830674 () Bool)

(assert (=> b!830674 (= e!463196 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376713)))))))

(declare-fun b!830675 () Bool)

(assert (=> b!830675 (= e!463196 e!463197)))

(declare-fun c!89947 () Bool)

(assert (=> b!830675 (= c!89947 (and ((_ is Cons!15999) (toList!4521 lt!376713)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376713))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))))

(assert (= (and d!105545 c!89946) b!830674))

(assert (= (and d!105545 (not c!89946)) b!830675))

(assert (= (and b!830675 c!89947) b!830676))

(assert (= (and b!830675 (not c!89947)) b!830677))

(assert (=> b!830676 m!773277))

(declare-fun m!774297 () Bool)

(assert (=> b!830676 m!774297))

(assert (=> b!830370 d!105545))

(declare-fun b!830680 () Bool)

(declare-fun e!463199 () Option!420)

(assert (=> b!830680 (= e!463199 (getValueByKey!414 (t!22376 (t!22376 (toList!4521 lt!376733))) (_1!5097 lt!376628)))))

(declare-fun b!830681 () Bool)

(assert (=> b!830681 (= e!463199 None!418)))

(declare-fun d!105547 () Bool)

(declare-fun c!89948 () Bool)

(assert (=> d!105547 (= c!89948 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376733))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376733)))) (_1!5097 lt!376628))))))

(declare-fun e!463198 () Option!420)

(assert (=> d!105547 (= (getValueByKey!414 (t!22376 (toList!4521 lt!376733)) (_1!5097 lt!376628)) e!463198)))

(declare-fun b!830678 () Bool)

(assert (=> b!830678 (= e!463198 (Some!419 (_2!5097 (h!17128 (t!22376 (toList!4521 lt!376733))))))))

(declare-fun b!830679 () Bool)

(assert (=> b!830679 (= e!463198 e!463199)))

(declare-fun c!89949 () Bool)

(assert (=> b!830679 (= c!89949 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376733))) (not (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376733)))) (_1!5097 lt!376628)))))))

(assert (= (and d!105547 c!89948) b!830678))

(assert (= (and d!105547 (not c!89948)) b!830679))

(assert (= (and b!830679 c!89949) b!830680))

(assert (= (and b!830679 (not c!89949)) b!830681))

(declare-fun m!774299 () Bool)

(assert (=> b!830680 m!774299))

(assert (=> b!830508 d!105547))

(declare-fun d!105549 () Bool)

(declare-fun lt!377055 () Bool)

(assert (=> d!105549 (= lt!377055 (select (content!389 lt!376910) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun e!463201 () Bool)

(assert (=> d!105549 (= lt!377055 e!463201)))

(declare-fun res!565732 () Bool)

(assert (=> d!105549 (=> (not res!565732) (not e!463201))))

(assert (=> d!105549 (= res!565732 ((_ is Cons!15999) lt!376910))))

(assert (=> d!105549 (= (contains!4209 lt!376910 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))) lt!377055)))

(declare-fun b!830682 () Bool)

(declare-fun e!463200 () Bool)

(assert (=> b!830682 (= e!463201 e!463200)))

(declare-fun res!565731 () Bool)

(assert (=> b!830682 (=> res!565731 e!463200)))

(assert (=> b!830682 (= res!565731 (= (h!17128 lt!376910) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun b!830683 () Bool)

(assert (=> b!830683 (= e!463200 (contains!4209 (t!22376 lt!376910) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(assert (= (and d!105549 res!565732) b!830682))

(assert (= (and b!830682 (not res!565731)) b!830683))

(declare-fun m!774301 () Bool)

(assert (=> d!105549 m!774301))

(declare-fun m!774303 () Bool)

(assert (=> d!105549 m!774303))

(declare-fun m!774305 () Bool)

(assert (=> b!830683 m!774305))

(assert (=> b!830410 d!105549))

(declare-fun d!105551 () Bool)

(assert (=> d!105551 (= ($colon$colon!535 e!463129 (ite c!89917 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376628))) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622)))) (Cons!15999 (ite c!89917 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376628))) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))) e!463129))))

(assert (=> bm!36284 d!105551))

(declare-fun d!105553 () Bool)

(declare-fun lt!377056 () Bool)

(assert (=> d!105553 (= lt!377056 (select (content!389 (toList!4521 lt!376818)) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun e!463203 () Bool)

(assert (=> d!105553 (= lt!377056 e!463203)))

(declare-fun res!565734 () Bool)

(assert (=> d!105553 (=> (not res!565734) (not e!463203))))

(assert (=> d!105553 (= res!565734 ((_ is Cons!15999) (toList!4521 lt!376818)))))

(assert (=> d!105553 (= (contains!4209 (toList!4521 lt!376818) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!377056)))

(declare-fun b!830684 () Bool)

(declare-fun e!463202 () Bool)

(assert (=> b!830684 (= e!463203 e!463202)))

(declare-fun res!565733 () Bool)

(assert (=> b!830684 (=> res!565733 e!463202)))

(assert (=> b!830684 (= res!565733 (= (h!17128 (toList!4521 lt!376818)) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!830685 () Bool)

(assert (=> b!830685 (= e!463202 (contains!4209 (t!22376 (toList!4521 lt!376818)) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!105553 res!565734) b!830684))

(assert (= (and b!830684 (not res!565733)) b!830685))

(declare-fun m!774307 () Bool)

(assert (=> d!105553 m!774307))

(declare-fun m!774309 () Bool)

(assert (=> d!105553 m!774309))

(declare-fun m!774311 () Bool)

(assert (=> b!830685 m!774311))

(assert (=> b!830280 d!105553))

(declare-fun d!105555 () Bool)

(assert (=> d!105555 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376733) (_1!5097 lt!376628)))))

(declare-fun lt!377057 () Unit!28435)

(assert (=> d!105555 (= lt!377057 (choose!1429 (toList!4521 lt!376733) (_1!5097 lt!376628)))))

(declare-fun e!463204 () Bool)

(assert (=> d!105555 e!463204))

(declare-fun res!565735 () Bool)

(assert (=> d!105555 (=> (not res!565735) (not e!463204))))

(assert (=> d!105555 (= res!565735 (isStrictlySorted!437 (toList!4521 lt!376733)))))

(assert (=> d!105555 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376733) (_1!5097 lt!376628)) lt!377057)))

(declare-fun b!830686 () Bool)

(assert (=> b!830686 (= e!463204 (containsKey!400 (toList!4521 lt!376733) (_1!5097 lt!376628)))))

(assert (= (and d!105555 res!565735) b!830686))

(assert (=> d!105555 m!773351))

(assert (=> d!105555 m!773351))

(assert (=> d!105555 m!774019))

(declare-fun m!774313 () Bool)

(assert (=> d!105555 m!774313))

(declare-fun m!774315 () Bool)

(assert (=> d!105555 m!774315))

(assert (=> b!830686 m!774015))

(assert (=> b!830526 d!105555))

(declare-fun d!105557 () Bool)

(assert (=> d!105557 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376733) (_1!5097 lt!376628))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376733) (_1!5097 lt!376628)))))))

(declare-fun bs!23204 () Bool)

(assert (= bs!23204 d!105557))

(assert (=> bs!23204 m!773351))

(declare-fun m!774317 () Bool)

(assert (=> bs!23204 m!774317))

(assert (=> b!830526 d!105557))

(assert (=> b!830526 d!105431))

(declare-fun lt!377058 () Bool)

(declare-fun d!105559 () Bool)

(assert (=> d!105559 (= lt!377058 (select (content!389 (toList!4521 lt!376971)) (tuple2!10175 lt!376785 lt!376783)))))

(declare-fun e!463206 () Bool)

(assert (=> d!105559 (= lt!377058 e!463206)))

(declare-fun res!565737 () Bool)

(assert (=> d!105559 (=> (not res!565737) (not e!463206))))

(assert (=> d!105559 (= res!565737 ((_ is Cons!15999) (toList!4521 lt!376971)))))

(assert (=> d!105559 (= (contains!4209 (toList!4521 lt!376971) (tuple2!10175 lt!376785 lt!376783)) lt!377058)))

(declare-fun b!830687 () Bool)

(declare-fun e!463205 () Bool)

(assert (=> b!830687 (= e!463206 e!463205)))

(declare-fun res!565736 () Bool)

(assert (=> b!830687 (=> res!565736 e!463205)))

(assert (=> b!830687 (= res!565736 (= (h!17128 (toList!4521 lt!376971)) (tuple2!10175 lt!376785 lt!376783)))))

(declare-fun b!830688 () Bool)

(assert (=> b!830688 (= e!463205 (contains!4209 (t!22376 (toList!4521 lt!376971)) (tuple2!10175 lt!376785 lt!376783)))))

(assert (= (and d!105559 res!565737) b!830687))

(assert (= (and b!830687 (not res!565736)) b!830688))

(declare-fun m!774319 () Bool)

(assert (=> d!105559 m!774319))

(declare-fun m!774321 () Bool)

(assert (=> d!105559 m!774321))

(declare-fun m!774323 () Bool)

(assert (=> b!830688 m!774323))

(assert (=> b!830522 d!105559))

(declare-fun d!105561 () Bool)

(assert (=> d!105561 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun bs!23205 () Bool)

(assert (= bs!23205 d!105561))

(assert (=> bs!23205 m!773521))

(declare-fun m!774325 () Bool)

(assert (=> bs!23205 m!774325))

(assert (=> b!830369 d!105561))

(declare-fun b!830691 () Bool)

(declare-fun e!463208 () Option!420)

(assert (=> b!830691 (= e!463208 (getValueByKey!414 (t!22376 (toList!4521 lt!376786)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830692 () Bool)

(assert (=> b!830692 (= e!463208 None!418)))

(declare-fun d!105563 () Bool)

(declare-fun c!89950 () Bool)

(assert (=> d!105563 (= c!89950 (and ((_ is Cons!15999) (toList!4521 lt!376786)) (= (_1!5097 (h!17128 (toList!4521 lt!376786))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun e!463207 () Option!420)

(assert (=> d!105563 (= (getValueByKey!414 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) e!463207)))

(declare-fun b!830689 () Bool)

(assert (=> b!830689 (= e!463207 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376786)))))))

(declare-fun b!830690 () Bool)

(assert (=> b!830690 (= e!463207 e!463208)))

(declare-fun c!89951 () Bool)

(assert (=> b!830690 (= c!89951 (and ((_ is Cons!15999) (toList!4521 lt!376786)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376786))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))))

(assert (= (and d!105563 c!89950) b!830689))

(assert (= (and d!105563 (not c!89950)) b!830690))

(assert (= (and b!830690 c!89951) b!830691))

(assert (= (and b!830690 (not c!89951)) b!830692))

(assert (=> b!830691 m!773277))

(declare-fun m!774327 () Bool)

(assert (=> b!830691 m!774327))

(assert (=> b!830369 d!105563))

(declare-fun d!105565 () Bool)

(declare-fun e!463210 () Bool)

(assert (=> d!105565 e!463210))

(declare-fun res!565738 () Bool)

(assert (=> d!105565 (=> res!565738 e!463210)))

(declare-fun lt!377062 () Bool)

(assert (=> d!105565 (= res!565738 (not lt!377062))))

(declare-fun lt!377061 () Bool)

(assert (=> d!105565 (= lt!377062 lt!377061)))

(declare-fun lt!377059 () Unit!28435)

(declare-fun e!463209 () Unit!28435)

(assert (=> d!105565 (= lt!377059 e!463209)))

(declare-fun c!89952 () Bool)

(assert (=> d!105565 (= c!89952 lt!377061)))

(assert (=> d!105565 (= lt!377061 (containsKey!400 (toList!4521 lt!376966) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105565 (= (contains!4208 lt!376966 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377062)))

(declare-fun b!830693 () Bool)

(declare-fun lt!377060 () Unit!28435)

(assert (=> b!830693 (= e!463209 lt!377060)))

(assert (=> b!830693 (= lt!377060 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376966) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!830693 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376966) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!830694 () Bool)

(declare-fun Unit!28461 () Unit!28435)

(assert (=> b!830694 (= e!463209 Unit!28461)))

(declare-fun b!830695 () Bool)

(assert (=> b!830695 (= e!463210 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376966) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!105565 c!89952) b!830693))

(assert (= (and d!105565 (not c!89952)) b!830694))

(assert (= (and d!105565 (not res!565738)) b!830695))

(declare-fun m!774329 () Bool)

(assert (=> d!105565 m!774329))

(declare-fun m!774331 () Bool)

(assert (=> b!830693 m!774331))

(assert (=> b!830693 m!773989))

(assert (=> b!830693 m!773989))

(declare-fun m!774333 () Bool)

(assert (=> b!830693 m!774333))

(assert (=> b!830695 m!773989))

(assert (=> b!830695 m!773989))

(assert (=> b!830695 m!774333))

(assert (=> d!105441 d!105565))

(declare-fun b!830698 () Bool)

(declare-fun e!463212 () Option!420)

(assert (=> b!830698 (= e!463212 (getValueByKey!414 (t!22376 lt!376968) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!830699 () Bool)

(assert (=> b!830699 (= e!463212 None!418)))

(declare-fun d!105567 () Bool)

(declare-fun c!89953 () Bool)

(assert (=> d!105567 (= c!89953 (and ((_ is Cons!15999) lt!376968) (= (_1!5097 (h!17128 lt!376968)) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!463211 () Option!420)

(assert (=> d!105567 (= (getValueByKey!414 lt!376968 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!463211)))

(declare-fun b!830696 () Bool)

(assert (=> b!830696 (= e!463211 (Some!419 (_2!5097 (h!17128 lt!376968))))))

(declare-fun b!830697 () Bool)

(assert (=> b!830697 (= e!463211 e!463212)))

(declare-fun c!89954 () Bool)

(assert (=> b!830697 (= c!89954 (and ((_ is Cons!15999) lt!376968) (not (= (_1!5097 (h!17128 lt!376968)) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!105567 c!89953) b!830696))

(assert (= (and d!105567 (not c!89953)) b!830697))

(assert (= (and b!830697 c!89954) b!830698))

(assert (= (and b!830697 (not c!89954)) b!830699))

(declare-fun m!774335 () Bool)

(assert (=> b!830698 m!774335))

(assert (=> d!105441 d!105567))

(declare-fun d!105569 () Bool)

(assert (=> d!105569 (= (getValueByKey!414 lt!376968 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377063 () Unit!28435)

(assert (=> d!105569 (= lt!377063 (choose!1427 lt!376968 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!463213 () Bool)

(assert (=> d!105569 e!463213))

(declare-fun res!565739 () Bool)

(assert (=> d!105569 (=> (not res!565739) (not e!463213))))

(assert (=> d!105569 (= res!565739 (isStrictlySorted!437 lt!376968))))

(assert (=> d!105569 (= (lemmaContainsTupThenGetReturnValue!230 lt!376968 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377063)))

(declare-fun b!830700 () Bool)

(declare-fun res!565740 () Bool)

(assert (=> b!830700 (=> (not res!565740) (not e!463213))))

(assert (=> b!830700 (= res!565740 (containsKey!400 lt!376968 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!830701 () Bool)

(assert (=> b!830701 (= e!463213 (contains!4209 lt!376968 (tuple2!10175 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!105569 res!565739) b!830700))

(assert (= (and b!830700 res!565740) b!830701))

(assert (=> d!105569 m!773983))

(declare-fun m!774337 () Bool)

(assert (=> d!105569 m!774337))

(declare-fun m!774339 () Bool)

(assert (=> d!105569 m!774339))

(declare-fun m!774341 () Bool)

(assert (=> b!830700 m!774341))

(declare-fun m!774343 () Bool)

(assert (=> b!830701 m!774343))

(assert (=> d!105441 d!105569))

(declare-fun b!830702 () Bool)

(declare-fun e!463214 () List!16003)

(declare-fun call!36295 () List!16003)

(assert (=> b!830702 (= e!463214 call!36295)))

(declare-fun bm!36290 () Bool)

(declare-fun call!36293 () List!16003)

(assert (=> bm!36290 (= call!36295 call!36293)))

(declare-fun e!463216 () Bool)

(declare-fun lt!377064 () List!16003)

(declare-fun b!830703 () Bool)

(assert (=> b!830703 (= e!463216 (contains!4209 lt!377064 (tuple2!10175 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!830704 () Bool)

(declare-fun e!463217 () List!16003)

(declare-fun c!89957 () Bool)

(declare-fun c!89958 () Bool)

(assert (=> b!830704 (= e!463217 (ite c!89958 (t!22376 (toList!4521 call!36256)) (ite c!89957 (Cons!15999 (h!17128 (toList!4521 call!36256)) (t!22376 (toList!4521 call!36256))) Nil!16000)))))

(declare-fun b!830705 () Bool)

(assert (=> b!830705 (= e!463217 (insertStrictlySorted!268 (t!22376 (toList!4521 call!36256)) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!830706 () Bool)

(assert (=> b!830706 (= e!463214 call!36295)))

(declare-fun call!36294 () List!16003)

(declare-fun bm!36291 () Bool)

(declare-fun c!89955 () Bool)

(assert (=> bm!36291 (= call!36294 ($colon$colon!535 e!463217 (ite c!89955 (h!17128 (toList!4521 call!36256)) (tuple2!10175 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!89956 () Bool)

(assert (=> bm!36291 (= c!89956 c!89955)))

(declare-fun b!830707 () Bool)

(declare-fun e!463218 () List!16003)

(assert (=> b!830707 (= e!463218 call!36293)))

(declare-fun b!830708 () Bool)

(declare-fun e!463215 () List!16003)

(assert (=> b!830708 (= e!463215 call!36294)))

(declare-fun b!830709 () Bool)

(assert (=> b!830709 (= e!463215 e!463218)))

(assert (=> b!830709 (= c!89958 (and ((_ is Cons!15999) (toList!4521 call!36256)) (= (_1!5097 (h!17128 (toList!4521 call!36256))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!830711 () Bool)

(declare-fun res!565741 () Bool)

(assert (=> b!830711 (=> (not res!565741) (not e!463216))))

(assert (=> b!830711 (= res!565741 (containsKey!400 lt!377064 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!36292 () Bool)

(assert (=> bm!36292 (= call!36293 call!36294)))

(declare-fun d!105571 () Bool)

(assert (=> d!105571 e!463216))

(declare-fun res!565742 () Bool)

(assert (=> d!105571 (=> (not res!565742) (not e!463216))))

(assert (=> d!105571 (= res!565742 (isStrictlySorted!437 lt!377064))))

(assert (=> d!105571 (= lt!377064 e!463215)))

(assert (=> d!105571 (= c!89955 (and ((_ is Cons!15999) (toList!4521 call!36256)) (bvslt (_1!5097 (h!17128 (toList!4521 call!36256))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!105571 (isStrictlySorted!437 (toList!4521 call!36256))))

(assert (=> d!105571 (= (insertStrictlySorted!268 (toList!4521 call!36256) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377064)))

(declare-fun b!830710 () Bool)

(assert (=> b!830710 (= c!89957 (and ((_ is Cons!15999) (toList!4521 call!36256)) (bvsgt (_1!5097 (h!17128 (toList!4521 call!36256))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!830710 (= e!463218 e!463214)))

(assert (= (and d!105571 c!89955) b!830708))

(assert (= (and d!105571 (not c!89955)) b!830709))

(assert (= (and b!830709 c!89958) b!830707))

(assert (= (and b!830709 (not c!89958)) b!830710))

(assert (= (and b!830710 c!89957) b!830702))

(assert (= (and b!830710 (not c!89957)) b!830706))

(assert (= (or b!830702 b!830706) bm!36290))

(assert (= (or b!830707 bm!36290) bm!36292))

(assert (= (or b!830708 bm!36292) bm!36291))

(assert (= (and bm!36291 c!89956) b!830705))

(assert (= (and bm!36291 (not c!89956)) b!830704))

(assert (= (and d!105571 res!565742) b!830711))

(assert (= (and b!830711 res!565741) b!830703))

(declare-fun m!774345 () Bool)

(assert (=> b!830711 m!774345))

(declare-fun m!774347 () Bool)

(assert (=> d!105571 m!774347))

(declare-fun m!774349 () Bool)

(assert (=> d!105571 m!774349))

(declare-fun m!774351 () Bool)

(assert (=> bm!36291 m!774351))

(declare-fun m!774353 () Bool)

(assert (=> b!830705 m!774353))

(declare-fun m!774355 () Bool)

(assert (=> b!830703 m!774355))

(assert (=> d!105441 d!105571))

(assert (=> b!830266 d!105531))

(declare-fun d!105573 () Bool)

(assert (=> d!105573 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376803) (_1!5097 lt!376628)))))

(declare-fun lt!377065 () Unit!28435)

(assert (=> d!105573 (= lt!377065 (choose!1429 (toList!4521 lt!376803) (_1!5097 lt!376628)))))

(declare-fun e!463219 () Bool)

(assert (=> d!105573 e!463219))

(declare-fun res!565743 () Bool)

(assert (=> d!105573 (=> (not res!565743) (not e!463219))))

(assert (=> d!105573 (= res!565743 (isStrictlySorted!437 (toList!4521 lt!376803)))))

(assert (=> d!105573 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376803) (_1!5097 lt!376628)) lt!377065)))

(declare-fun b!830712 () Bool)

(assert (=> b!830712 (= e!463219 (containsKey!400 (toList!4521 lt!376803) (_1!5097 lt!376628)))))

(assert (= (and d!105573 res!565743) b!830712))

(assert (=> d!105573 m!773475))

(assert (=> d!105573 m!773475))

(assert (=> d!105573 m!773777))

(declare-fun m!774357 () Bool)

(assert (=> d!105573 m!774357))

(declare-fun m!774359 () Bool)

(assert (=> d!105573 m!774359))

(assert (=> b!830712 m!773773))

(assert (=> b!830376 d!105573))

(declare-fun d!105575 () Bool)

(assert (=> d!105575 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376803) (_1!5097 lt!376628))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376803) (_1!5097 lt!376628)))))))

(declare-fun bs!23206 () Bool)

(assert (= bs!23206 d!105575))

(assert (=> bs!23206 m!773475))

(declare-fun m!774361 () Bool)

(assert (=> bs!23206 m!774361))

(assert (=> b!830376 d!105575))

(assert (=> b!830376 d!105511))

(declare-fun d!105577 () Bool)

(assert (=> d!105577 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787))))

(declare-fun lt!377066 () Unit!28435)

(assert (=> d!105577 (= lt!377066 (choose!1429 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787))))

(declare-fun e!463220 () Bool)

(assert (=> d!105577 e!463220))

(declare-fun res!565744 () Bool)

(assert (=> d!105577 (=> (not res!565744) (not e!463220))))

(assert (=> d!105577 (= res!565744 (isStrictlySorted!437 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)))))))

(assert (=> d!105577 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787) lt!377066)))

(declare-fun b!830713 () Bool)

(assert (=> b!830713 (= e!463220 (containsKey!400 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787))))

(assert (= (and d!105577 res!565744) b!830713))

(assert (=> d!105577 m!773905))

(assert (=> d!105577 m!773905))

(assert (=> d!105577 m!773907))

(declare-fun m!774363 () Bool)

(assert (=> d!105577 m!774363))

(declare-fun m!774365 () Bool)

(assert (=> d!105577 m!774365))

(assert (=> b!830713 m!773901))

(assert (=> b!830480 d!105577))

(declare-fun d!105579 () Bool)

(assert (=> d!105579 (= (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787))))))

(declare-fun bs!23207 () Bool)

(assert (= bs!23207 d!105579))

(assert (=> bs!23207 m!773905))

(declare-fun m!774367 () Bool)

(assert (=> bs!23207 m!774367))

(assert (=> b!830480 d!105579))

(declare-fun e!463222 () Option!420)

(declare-fun b!830716 () Bool)

(assert (=> b!830716 (= e!463222 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)))) lt!376787))))

(declare-fun b!830717 () Bool)

(assert (=> b!830717 (= e!463222 None!418)))

(declare-fun c!89959 () Bool)

(declare-fun d!105581 () Bool)

(assert (=> d!105581 (= c!89959 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))))) lt!376787)))))

(declare-fun e!463221 () Option!420)

(assert (=> d!105581 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787) e!463221)))

(declare-fun b!830714 () Bool)

(assert (=> b!830714 (= e!463221 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)))))))))

(declare-fun b!830715 () Bool)

(assert (=> b!830715 (= e!463221 e!463222)))

(declare-fun c!89960 () Bool)

(assert (=> b!830715 (= c!89960 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))))) lt!376787))))))

(assert (= (and d!105581 c!89959) b!830714))

(assert (= (and d!105581 (not c!89959)) b!830715))

(assert (= (and b!830715 c!89960) b!830716))

(assert (= (and b!830715 (not c!89960)) b!830717))

(declare-fun m!774369 () Bool)

(assert (=> b!830716 m!774369))

(assert (=> b!830480 d!105581))

(declare-fun d!105583 () Bool)

(assert (=> d!105583 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) (v!10091 (getValueByKey!414 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!105371 d!105583))

(declare-fun b!830720 () Bool)

(declare-fun e!463224 () Option!420)

(assert (=> b!830720 (= e!463224 (getValueByKey!414 (t!22376 (toList!4521 lt!376747)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830721 () Bool)

(assert (=> b!830721 (= e!463224 None!418)))

(declare-fun d!105585 () Bool)

(declare-fun c!89961 () Bool)

(assert (=> d!105585 (= c!89961 (and ((_ is Cons!15999) (toList!4521 lt!376747)) (= (_1!5097 (h!17128 (toList!4521 lt!376747))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun e!463223 () Option!420)

(assert (=> d!105585 (= (getValueByKey!414 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) e!463223)))

(declare-fun b!830718 () Bool)

(assert (=> b!830718 (= e!463223 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376747)))))))

(declare-fun b!830719 () Bool)

(assert (=> b!830719 (= e!463223 e!463224)))

(declare-fun c!89962 () Bool)

(assert (=> b!830719 (= c!89962 (and ((_ is Cons!15999) (toList!4521 lt!376747)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376747))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))))

(assert (= (and d!105585 c!89961) b!830718))

(assert (= (and d!105585 (not c!89961)) b!830719))

(assert (= (and b!830719 c!89962) b!830720))

(assert (= (and b!830719 (not c!89962)) b!830721))

(assert (=> b!830720 m!773277))

(declare-fun m!774371 () Bool)

(assert (=> b!830720 m!774371))

(assert (=> d!105371 d!105585))

(declare-fun b!830724 () Bool)

(declare-fun e!463226 () Option!420)

(assert (=> b!830724 (= e!463226 (getValueByKey!414 (t!22376 (t!22376 lt!376735)) (_1!5097 lt!376628)))))

(declare-fun b!830725 () Bool)

(assert (=> b!830725 (= e!463226 None!418)))

(declare-fun d!105587 () Bool)

(declare-fun c!89963 () Bool)

(assert (=> d!105587 (= c!89963 (and ((_ is Cons!15999) (t!22376 lt!376735)) (= (_1!5097 (h!17128 (t!22376 lt!376735))) (_1!5097 lt!376628))))))

(declare-fun e!463225 () Option!420)

(assert (=> d!105587 (= (getValueByKey!414 (t!22376 lt!376735) (_1!5097 lt!376628)) e!463225)))

(declare-fun b!830722 () Bool)

(assert (=> b!830722 (= e!463225 (Some!419 (_2!5097 (h!17128 (t!22376 lt!376735)))))))

(declare-fun b!830723 () Bool)

(assert (=> b!830723 (= e!463225 e!463226)))

(declare-fun c!89964 () Bool)

(assert (=> b!830723 (= c!89964 (and ((_ is Cons!15999) (t!22376 lt!376735)) (not (= (_1!5097 (h!17128 (t!22376 lt!376735))) (_1!5097 lt!376628)))))))

(assert (= (and d!105587 c!89963) b!830722))

(assert (= (and d!105587 (not c!89963)) b!830723))

(assert (= (and b!830723 c!89964) b!830724))

(assert (= (and b!830723 (not c!89964)) b!830725))

(declare-fun m!774373 () Bool)

(assert (=> b!830724 m!774373))

(assert (=> b!830531 d!105587))

(declare-fun d!105589 () Bool)

(assert (=> d!105589 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376717) lt!376721)) (v!10091 (getValueByKey!414 (toList!4521 lt!376717) lt!376721)))))

(assert (=> d!105335 d!105589))

(declare-fun b!830728 () Bool)

(declare-fun e!463228 () Option!420)

(assert (=> b!830728 (= e!463228 (getValueByKey!414 (t!22376 (toList!4521 lt!376717)) lt!376721))))

(declare-fun b!830729 () Bool)

(assert (=> b!830729 (= e!463228 None!418)))

(declare-fun d!105591 () Bool)

(declare-fun c!89965 () Bool)

(assert (=> d!105591 (= c!89965 (and ((_ is Cons!15999) (toList!4521 lt!376717)) (= (_1!5097 (h!17128 (toList!4521 lt!376717))) lt!376721)))))

(declare-fun e!463227 () Option!420)

(assert (=> d!105591 (= (getValueByKey!414 (toList!4521 lt!376717) lt!376721) e!463227)))

(declare-fun b!830726 () Bool)

(assert (=> b!830726 (= e!463227 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376717)))))))

(declare-fun b!830727 () Bool)

(assert (=> b!830727 (= e!463227 e!463228)))

(declare-fun c!89966 () Bool)

(assert (=> b!830727 (= c!89966 (and ((_ is Cons!15999) (toList!4521 lt!376717)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376717))) lt!376721))))))

(assert (= (and d!105591 c!89965) b!830726))

(assert (= (and d!105591 (not c!89965)) b!830727))

(assert (= (and b!830727 c!89966) b!830728))

(assert (= (and b!830727 (not c!89966)) b!830729))

(declare-fun m!774375 () Bool)

(assert (=> b!830728 m!774375))

(assert (=> d!105335 d!105591))

(assert (=> d!105419 d!105413))

(assert (=> d!105419 d!105417))

(declare-fun d!105593 () Bool)

(assert (=> d!105593 (not (contains!4208 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)) lt!376787))))

(assert (=> d!105593 true))

(declare-fun _$36!343 () Unit!28435)

(assert (=> d!105593 (= (choose!1428 lt!376791 lt!376792 lt!376790 lt!376787) _$36!343)))

(declare-fun bs!23208 () Bool)

(assert (= bs!23208 d!105593))

(assert (=> bs!23208 m!773445))

(assert (=> bs!23208 m!773445))

(assert (=> bs!23208 m!773447))

(assert (=> d!105419 d!105593))

(declare-fun d!105595 () Bool)

(declare-fun e!463230 () Bool)

(assert (=> d!105595 e!463230))

(declare-fun res!565745 () Bool)

(assert (=> d!105595 (=> res!565745 e!463230)))

(declare-fun lt!377070 () Bool)

(assert (=> d!105595 (= res!565745 (not lt!377070))))

(declare-fun lt!377069 () Bool)

(assert (=> d!105595 (= lt!377070 lt!377069)))

(declare-fun lt!377067 () Unit!28435)

(declare-fun e!463229 () Unit!28435)

(assert (=> d!105595 (= lt!377067 e!463229)))

(declare-fun c!89967 () Bool)

(assert (=> d!105595 (= c!89967 lt!377069)))

(assert (=> d!105595 (= lt!377069 (containsKey!400 (toList!4521 lt!376791) lt!376787))))

(assert (=> d!105595 (= (contains!4208 lt!376791 lt!376787) lt!377070)))

(declare-fun b!830731 () Bool)

(declare-fun lt!377068 () Unit!28435)

(assert (=> b!830731 (= e!463229 lt!377068)))

(assert (=> b!830731 (= lt!377068 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376791) lt!376787))))

(assert (=> b!830731 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376791) lt!376787))))

(declare-fun b!830732 () Bool)

(declare-fun Unit!28462 () Unit!28435)

(assert (=> b!830732 (= e!463229 Unit!28462)))

(declare-fun b!830733 () Bool)

(assert (=> b!830733 (= e!463230 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376791) lt!376787)))))

(assert (= (and d!105595 c!89967) b!830731))

(assert (= (and d!105595 (not c!89967)) b!830732))

(assert (= (and d!105595 (not res!565745)) b!830733))

(declare-fun m!774377 () Bool)

(assert (=> d!105595 m!774377))

(declare-fun m!774379 () Bool)

(assert (=> b!830731 m!774379))

(declare-fun m!774381 () Bool)

(assert (=> b!830731 m!774381))

(assert (=> b!830731 m!774381))

(declare-fun m!774383 () Bool)

(assert (=> b!830731 m!774383))

(assert (=> b!830733 m!774381))

(assert (=> b!830733 m!774381))

(assert (=> b!830733 m!774383))

(assert (=> d!105419 d!105595))

(declare-fun d!105597 () Bool)

(assert (=> d!105597 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) (v!10091 (getValueByKey!414 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!105311 d!105597))

(assert (=> d!105311 d!105545))

(declare-fun d!105599 () Bool)

(assert (=> d!105599 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun lt!377071 () Unit!28435)

(assert (=> d!105599 (= lt!377071 (choose!1429 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!463231 () Bool)

(assert (=> d!105599 e!463231))

(declare-fun res!565746 () Bool)

(assert (=> d!105599 (=> (not res!565746) (not e!463231))))

(assert (=> d!105599 (= res!565746 (isStrictlySorted!437 (toList!4521 lt!376747)))))

(assert (=> d!105599 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) lt!377071)))

(declare-fun b!830734 () Bool)

(assert (=> b!830734 (= e!463231 (containsKey!400 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105599 res!565746) b!830734))

(assert (=> d!105599 m!773277))

(assert (=> d!105599 m!773759))

(assert (=> d!105599 m!773759))

(assert (=> d!105599 m!773767))

(assert (=> d!105599 m!773277))

(declare-fun m!774385 () Bool)

(assert (=> d!105599 m!774385))

(declare-fun m!774387 () Bool)

(assert (=> d!105599 m!774387))

(assert (=> b!830734 m!773277))

(assert (=> b!830734 m!773763))

(assert (=> b!830373 d!105599))

(declare-fun d!105601 () Bool)

(assert (=> d!105601 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun bs!23209 () Bool)

(assert (= bs!23209 d!105601))

(assert (=> bs!23209 m!773759))

(declare-fun m!774389 () Bool)

(assert (=> bs!23209 m!774389))

(assert (=> b!830373 d!105601))

(assert (=> b!830373 d!105585))

(declare-fun d!105603 () Bool)

(declare-fun res!565747 () Bool)

(declare-fun e!463232 () Bool)

(assert (=> d!105603 (=> res!565747 e!463232)))

(assert (=> d!105603 (= res!565747 (and ((_ is Cons!15999) (toList!4521 lt!376713)) (= (_1!5097 (h!17128 (toList!4521 lt!376713))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!105603 (= (containsKey!400 (toList!4521 lt!376713) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) e!463232)))

(declare-fun b!830735 () Bool)

(declare-fun e!463233 () Bool)

(assert (=> b!830735 (= e!463232 e!463233)))

(declare-fun res!565748 () Bool)

(assert (=> b!830735 (=> (not res!565748) (not e!463233))))

(assert (=> b!830735 (= res!565748 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376713))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376713))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) ((_ is Cons!15999) (toList!4521 lt!376713)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376713))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun b!830736 () Bool)

(assert (=> b!830736 (= e!463233 (containsKey!400 (t!22376 (toList!4521 lt!376713)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105603 (not res!565747)) b!830735))

(assert (= (and b!830735 res!565748) b!830736))

(assert (=> b!830736 m!773277))

(declare-fun m!774391 () Bool)

(assert (=> b!830736 m!774391))

(assert (=> d!105367 d!105603))

(declare-fun e!463235 () Option!420)

(declare-fun b!830739 () Bool)

(assert (=> b!830739 (= e!463235 (getValueByKey!414 (t!22376 (toList!4521 lt!376966)) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!830740 () Bool)

(assert (=> b!830740 (= e!463235 None!418)))

(declare-fun d!105605 () Bool)

(declare-fun c!89968 () Bool)

(assert (=> d!105605 (= c!89968 (and ((_ is Cons!15999) (toList!4521 lt!376966)) (= (_1!5097 (h!17128 (toList!4521 lt!376966))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!463234 () Option!420)

(assert (=> d!105605 (= (getValueByKey!414 (toList!4521 lt!376966) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!463234)))

(declare-fun b!830737 () Bool)

(assert (=> b!830737 (= e!463234 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376966)))))))

(declare-fun b!830738 () Bool)

(assert (=> b!830738 (= e!463234 e!463235)))

(declare-fun c!89969 () Bool)

(assert (=> b!830738 (= c!89969 (and ((_ is Cons!15999) (toList!4521 lt!376966)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376966))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!105605 c!89968) b!830737))

(assert (= (and d!105605 (not c!89968)) b!830738))

(assert (= (and b!830738 c!89969) b!830739))

(assert (= (and b!830738 (not c!89969)) b!830740))

(declare-fun m!774393 () Bool)

(assert (=> b!830739 m!774393))

(assert (=> b!830518 d!105605))

(declare-fun d!105607 () Bool)

(assert (=> d!105607 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!377072 () Unit!28435)

(assert (=> d!105607 (= lt!377072 (choose!1429 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun e!463236 () Bool)

(assert (=> d!105607 e!463236))

(declare-fun res!565749 () Bool)

(assert (=> d!105607 (=> (not res!565749) (not e!463236))))

(assert (=> d!105607 (= res!565749 (isStrictlySorted!437 (toList!4521 lt!376807)))))

(assert (=> d!105607 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377072)))

(declare-fun b!830741 () Bool)

(assert (=> b!830741 (= e!463236 (containsKey!400 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!105607 res!565749) b!830741))

(assert (=> d!105607 m!773487))

(assert (=> d!105607 m!773487))

(assert (=> d!105607 m!773805))

(declare-fun m!774395 () Bool)

(assert (=> d!105607 m!774395))

(declare-fun m!774397 () Bool)

(assert (=> d!105607 m!774397))

(assert (=> b!830741 m!773801))

(assert (=> b!830419 d!105607))

(declare-fun d!105609 () Bool)

(assert (=> d!105609 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun bs!23210 () Bool)

(assert (= bs!23210 d!105609))

(assert (=> bs!23210 m!773487))

(declare-fun m!774399 () Bool)

(assert (=> bs!23210 m!774399))

(assert (=> b!830419 d!105609))

(assert (=> b!830419 d!105421))

(declare-fun d!105611 () Bool)

(declare-fun e!463238 () Bool)

(assert (=> d!105611 e!463238))

(declare-fun res!565750 () Bool)

(assert (=> d!105611 (=> res!565750 e!463238)))

(declare-fun lt!377076 () Bool)

(assert (=> d!105611 (= res!565750 (not lt!377076))))

(declare-fun lt!377075 () Bool)

(assert (=> d!105611 (= lt!377076 lt!377075)))

(declare-fun lt!377073 () Unit!28435)

(declare-fun e!463237 () Unit!28435)

(assert (=> d!105611 (= lt!377073 e!463237)))

(declare-fun c!89970 () Bool)

(assert (=> d!105611 (= c!89970 lt!377075)))

(assert (=> d!105611 (= lt!377075 (containsKey!400 (toList!4521 lt!376818) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105611 (= (contains!4208 lt!376818 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377076)))

(declare-fun b!830742 () Bool)

(declare-fun lt!377074 () Unit!28435)

(assert (=> b!830742 (= e!463237 lt!377074)))

(assert (=> b!830742 (= lt!377074 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376818) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> b!830742 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376818) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!830743 () Bool)

(declare-fun Unit!28463 () Unit!28435)

(assert (=> b!830743 (= e!463237 Unit!28463)))

(declare-fun b!830744 () Bool)

(assert (=> b!830744 (= e!463238 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376818) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!105611 c!89970) b!830742))

(assert (= (and d!105611 (not c!89970)) b!830743))

(assert (= (and d!105611 (not res!565750)) b!830744))

(declare-fun m!774401 () Bool)

(assert (=> d!105611 m!774401))

(declare-fun m!774403 () Bool)

(assert (=> b!830742 m!774403))

(assert (=> b!830742 m!773537))

(assert (=> b!830742 m!773537))

(declare-fun m!774405 () Bool)

(assert (=> b!830742 m!774405))

(assert (=> b!830744 m!773537))

(assert (=> b!830744 m!773537))

(assert (=> b!830744 m!774405))

(assert (=> d!105299 d!105611))

(declare-fun b!830747 () Bool)

(declare-fun e!463240 () Option!420)

(assert (=> b!830747 (= e!463240 (getValueByKey!414 (t!22376 lt!376820) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!830748 () Bool)

(assert (=> b!830748 (= e!463240 None!418)))

(declare-fun d!105613 () Bool)

(declare-fun c!89971 () Bool)

(assert (=> d!105613 (= c!89971 (and ((_ is Cons!15999) lt!376820) (= (_1!5097 (h!17128 lt!376820)) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!463239 () Option!420)

(assert (=> d!105613 (= (getValueByKey!414 lt!376820 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) e!463239)))

(declare-fun b!830745 () Bool)

(assert (=> b!830745 (= e!463239 (Some!419 (_2!5097 (h!17128 lt!376820))))))

(declare-fun b!830746 () Bool)

(assert (=> b!830746 (= e!463239 e!463240)))

(declare-fun c!89972 () Bool)

(assert (=> b!830746 (= c!89972 (and ((_ is Cons!15999) lt!376820) (not (= (_1!5097 (h!17128 lt!376820)) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!105613 c!89971) b!830745))

(assert (= (and d!105613 (not c!89971)) b!830746))

(assert (= (and b!830746 c!89972) b!830747))

(assert (= (and b!830746 (not c!89972)) b!830748))

(declare-fun m!774407 () Bool)

(assert (=> b!830747 m!774407))

(assert (=> d!105299 d!105613))

(declare-fun d!105615 () Bool)

(assert (=> d!105615 (= (getValueByKey!414 lt!376820 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!377077 () Unit!28435)

(assert (=> d!105615 (= lt!377077 (choose!1427 lt!376820 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun e!463241 () Bool)

(assert (=> d!105615 e!463241))

(declare-fun res!565751 () Bool)

(assert (=> d!105615 (=> (not res!565751) (not e!463241))))

(assert (=> d!105615 (= res!565751 (isStrictlySorted!437 lt!376820))))

(assert (=> d!105615 (= (lemmaContainsTupThenGetReturnValue!230 lt!376820 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377077)))

(declare-fun b!830749 () Bool)

(declare-fun res!565752 () Bool)

(assert (=> b!830749 (=> (not res!565752) (not e!463241))))

(assert (=> b!830749 (= res!565752 (containsKey!400 lt!376820 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!830750 () Bool)

(assert (=> b!830750 (= e!463241 (contains!4209 lt!376820 (tuple2!10175 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!105615 res!565751) b!830749))

(assert (= (and b!830749 res!565752) b!830750))

(assert (=> d!105615 m!773531))

(declare-fun m!774409 () Bool)

(assert (=> d!105615 m!774409))

(declare-fun m!774411 () Bool)

(assert (=> d!105615 m!774411))

(declare-fun m!774413 () Bool)

(assert (=> b!830749 m!774413))

(declare-fun m!774415 () Bool)

(assert (=> b!830750 m!774415))

(assert (=> d!105299 d!105615))

(declare-fun b!830751 () Bool)

(declare-fun e!463242 () List!16003)

(declare-fun call!36298 () List!16003)

(assert (=> b!830751 (= e!463242 call!36298)))

(declare-fun bm!36293 () Bool)

(declare-fun call!36296 () List!16003)

(assert (=> bm!36293 (= call!36298 call!36296)))

(declare-fun b!830752 () Bool)

(declare-fun e!463244 () Bool)

(declare-fun lt!377078 () List!16003)

(assert (=> b!830752 (= e!463244 (contains!4209 lt!377078 (tuple2!10175 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!830753 () Bool)

(declare-fun c!89975 () Bool)

(declare-fun e!463245 () List!16003)

(declare-fun c!89976 () Bool)

(assert (=> b!830753 (= e!463245 (ite c!89976 (t!22376 (toList!4521 call!36245)) (ite c!89975 (Cons!15999 (h!17128 (toList!4521 call!36245)) (t!22376 (toList!4521 call!36245))) Nil!16000)))))

(declare-fun b!830754 () Bool)

(assert (=> b!830754 (= e!463245 (insertStrictlySorted!268 (t!22376 (toList!4521 call!36245)) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!830755 () Bool)

(assert (=> b!830755 (= e!463242 call!36298)))

(declare-fun call!36297 () List!16003)

(declare-fun bm!36294 () Bool)

(declare-fun c!89973 () Bool)

(assert (=> bm!36294 (= call!36297 ($colon$colon!535 e!463245 (ite c!89973 (h!17128 (toList!4521 call!36245)) (tuple2!10175 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun c!89974 () Bool)

(assert (=> bm!36294 (= c!89974 c!89973)))

(declare-fun b!830756 () Bool)

(declare-fun e!463246 () List!16003)

(assert (=> b!830756 (= e!463246 call!36296)))

(declare-fun b!830757 () Bool)

(declare-fun e!463243 () List!16003)

(assert (=> b!830757 (= e!463243 call!36297)))

(declare-fun b!830758 () Bool)

(assert (=> b!830758 (= e!463243 e!463246)))

(assert (=> b!830758 (= c!89976 (and ((_ is Cons!15999) (toList!4521 call!36245)) (= (_1!5097 (h!17128 (toList!4521 call!36245))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!830760 () Bool)

(declare-fun res!565753 () Bool)

(assert (=> b!830760 (=> (not res!565753) (not e!463244))))

(assert (=> b!830760 (= res!565753 (containsKey!400 lt!377078 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!36295 () Bool)

(assert (=> bm!36295 (= call!36296 call!36297)))

(declare-fun d!105617 () Bool)

(assert (=> d!105617 e!463244))

(declare-fun res!565754 () Bool)

(assert (=> d!105617 (=> (not res!565754) (not e!463244))))

(assert (=> d!105617 (= res!565754 (isStrictlySorted!437 lt!377078))))

(assert (=> d!105617 (= lt!377078 e!463243)))

(assert (=> d!105617 (= c!89973 (and ((_ is Cons!15999) (toList!4521 call!36245)) (bvslt (_1!5097 (h!17128 (toList!4521 call!36245))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!105617 (isStrictlySorted!437 (toList!4521 call!36245))))

(assert (=> d!105617 (= (insertStrictlySorted!268 (toList!4521 call!36245) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377078)))

(declare-fun b!830759 () Bool)

(assert (=> b!830759 (= c!89975 (and ((_ is Cons!15999) (toList!4521 call!36245)) (bvsgt (_1!5097 (h!17128 (toList!4521 call!36245))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> b!830759 (= e!463246 e!463242)))

(assert (= (and d!105617 c!89973) b!830757))

(assert (= (and d!105617 (not c!89973)) b!830758))

(assert (= (and b!830758 c!89976) b!830756))

(assert (= (and b!830758 (not c!89976)) b!830759))

(assert (= (and b!830759 c!89975) b!830751))

(assert (= (and b!830759 (not c!89975)) b!830755))

(assert (= (or b!830751 b!830755) bm!36293))

(assert (= (or b!830756 bm!36293) bm!36295))

(assert (= (or b!830757 bm!36295) bm!36294))

(assert (= (and bm!36294 c!89974) b!830754))

(assert (= (and bm!36294 (not c!89974)) b!830753))

(assert (= (and d!105617 res!565754) b!830760))

(assert (= (and b!830760 res!565753) b!830752))

(declare-fun m!774417 () Bool)

(assert (=> b!830760 m!774417))

(declare-fun m!774419 () Bool)

(assert (=> d!105617 m!774419))

(declare-fun m!774421 () Bool)

(assert (=> d!105617 m!774421))

(declare-fun m!774423 () Bool)

(assert (=> bm!36294 m!774423))

(declare-fun m!774425 () Bool)

(assert (=> b!830754 m!774425))

(declare-fun m!774427 () Bool)

(assert (=> b!830752 m!774427))

(assert (=> d!105299 d!105617))

(declare-fun d!105619 () Bool)

(declare-fun res!565755 () Bool)

(declare-fun e!463247 () Bool)

(assert (=> d!105619 (=> res!565755 e!463247)))

(assert (=> d!105619 (= res!565755 (and ((_ is Cons!15999) (toList!4521 lt!376733)) (= (_1!5097 (h!17128 (toList!4521 lt!376733))) (_1!5097 lt!376628))))))

(assert (=> d!105619 (= (containsKey!400 (toList!4521 lt!376733) (_1!5097 lt!376628)) e!463247)))

(declare-fun b!830761 () Bool)

(declare-fun e!463248 () Bool)

(assert (=> b!830761 (= e!463247 e!463248)))

(declare-fun res!565756 () Bool)

(assert (=> b!830761 (=> (not res!565756) (not e!463248))))

(assert (=> b!830761 (= res!565756 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376733))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376733))) (_1!5097 lt!376628))) ((_ is Cons!15999) (toList!4521 lt!376733)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376733))) (_1!5097 lt!376628))))))

(declare-fun b!830762 () Bool)

(assert (=> b!830762 (= e!463248 (containsKey!400 (t!22376 (toList!4521 lt!376733)) (_1!5097 lt!376628)))))

(assert (= (and d!105619 (not res!565755)) b!830761))

(assert (= (and b!830761 res!565756) b!830762))

(declare-fun m!774429 () Bool)

(assert (=> b!830762 m!774429))

(assert (=> d!105449 d!105619))

(declare-fun d!105621 () Bool)

(declare-fun e!463249 () Bool)

(assert (=> d!105621 e!463249))

(declare-fun res!565757 () Bool)

(assert (=> d!105621 (=> (not res!565757) (not e!463249))))

(declare-fun lt!377080 () ListLongMap!9011)

(assert (=> d!105621 (= res!565757 (contains!4208 lt!377080 (_1!5097 (tuple2!10175 lt!376816 lt!376814))))))

(declare-fun lt!377082 () List!16003)

(assert (=> d!105621 (= lt!377080 (ListLongMap!9012 lt!377082))))

(declare-fun lt!377081 () Unit!28435)

(declare-fun lt!377079 () Unit!28435)

(assert (=> d!105621 (= lt!377081 lt!377079)))

(assert (=> d!105621 (= (getValueByKey!414 lt!377082 (_1!5097 (tuple2!10175 lt!376816 lt!376814))) (Some!419 (_2!5097 (tuple2!10175 lt!376816 lt!376814))))))

(assert (=> d!105621 (= lt!377079 (lemmaContainsTupThenGetReturnValue!230 lt!377082 (_1!5097 (tuple2!10175 lt!376816 lt!376814)) (_2!5097 (tuple2!10175 lt!376816 lt!376814))))))

(assert (=> d!105621 (= lt!377082 (insertStrictlySorted!268 (toList!4521 lt!376815) (_1!5097 (tuple2!10175 lt!376816 lt!376814)) (_2!5097 (tuple2!10175 lt!376816 lt!376814))))))

(assert (=> d!105621 (= (+!1950 lt!376815 (tuple2!10175 lt!376816 lt!376814)) lt!377080)))

(declare-fun b!830763 () Bool)

(declare-fun res!565758 () Bool)

(assert (=> b!830763 (=> (not res!565758) (not e!463249))))

(assert (=> b!830763 (= res!565758 (= (getValueByKey!414 (toList!4521 lt!377080) (_1!5097 (tuple2!10175 lt!376816 lt!376814))) (Some!419 (_2!5097 (tuple2!10175 lt!376816 lt!376814)))))))

(declare-fun b!830764 () Bool)

(assert (=> b!830764 (= e!463249 (contains!4209 (toList!4521 lt!377080) (tuple2!10175 lt!376816 lt!376814)))))

(assert (= (and d!105621 res!565757) b!830763))

(assert (= (and b!830763 res!565758) b!830764))

(declare-fun m!774431 () Bool)

(assert (=> d!105621 m!774431))

(declare-fun m!774433 () Bool)

(assert (=> d!105621 m!774433))

(declare-fun m!774435 () Bool)

(assert (=> d!105621 m!774435))

(declare-fun m!774437 () Bool)

(assert (=> d!105621 m!774437))

(declare-fun m!774439 () Bool)

(assert (=> b!830763 m!774439))

(declare-fun m!774441 () Bool)

(assert (=> b!830764 m!774441))

(assert (=> b!830265 d!105621))

(declare-fun d!105623 () Bool)

(declare-fun e!463250 () Bool)

(assert (=> d!105623 e!463250))

(declare-fun res!565759 () Bool)

(assert (=> d!105623 (=> (not res!565759) (not e!463250))))

(declare-fun lt!377084 () ListLongMap!9011)

(assert (=> d!105623 (= res!565759 (contains!4208 lt!377084 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377086 () List!16003)

(assert (=> d!105623 (= lt!377084 (ListLongMap!9012 lt!377086))))

(declare-fun lt!377085 () Unit!28435)

(declare-fun lt!377083 () Unit!28435)

(assert (=> d!105623 (= lt!377085 lt!377083)))

(assert (=> d!105623 (= (getValueByKey!414 lt!377086 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105623 (= lt!377083 (lemmaContainsTupThenGetReturnValue!230 lt!377086 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105623 (= lt!377086 (insertStrictlySorted!268 (toList!4521 call!36261) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!105623 (= (+!1950 call!36261 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377084)))

(declare-fun b!830765 () Bool)

(declare-fun res!565760 () Bool)

(assert (=> b!830765 (=> (not res!565760) (not e!463250))))

(assert (=> b!830765 (= res!565760 (= (getValueByKey!414 (toList!4521 lt!377084) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!830766 () Bool)

(assert (=> b!830766 (= e!463250 (contains!4209 (toList!4521 lt!377084) (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!105623 res!565759) b!830765))

(assert (= (and b!830765 res!565760) b!830766))

(declare-fun m!774443 () Bool)

(assert (=> d!105623 m!774443))

(declare-fun m!774445 () Bool)

(assert (=> d!105623 m!774445))

(declare-fun m!774447 () Bool)

(assert (=> d!105623 m!774447))

(declare-fun m!774449 () Bool)

(assert (=> d!105623 m!774449))

(declare-fun m!774451 () Bool)

(assert (=> b!830765 m!774451))

(declare-fun m!774453 () Bool)

(assert (=> b!830766 m!774453))

(assert (=> b!830265 d!105623))

(declare-fun d!105625 () Bool)

(assert (=> d!105625 (not (contains!4208 (+!1950 lt!376815 (tuple2!10175 lt!376816 lt!376814)) lt!376811))))

(declare-fun lt!377087 () Unit!28435)

(assert (=> d!105625 (= lt!377087 (choose!1428 lt!376815 lt!376816 lt!376814 lt!376811))))

(declare-fun e!463251 () Bool)

(assert (=> d!105625 e!463251))

(declare-fun res!565761 () Bool)

(assert (=> d!105625 (=> (not res!565761) (not e!463251))))

(assert (=> d!105625 (= res!565761 (not (contains!4208 lt!376815 lt!376811)))))

(assert (=> d!105625 (= (addStillNotContains!199 lt!376815 lt!376816 lt!376814 lt!376811) lt!377087)))

(declare-fun b!830767 () Bool)

(assert (=> b!830767 (= e!463251 (not (= lt!376816 lt!376811)))))

(assert (= (and d!105625 res!565761) b!830767))

(assert (=> d!105625 m!773505))

(assert (=> d!105625 m!773505))

(assert (=> d!105625 m!773507))

(declare-fun m!774455 () Bool)

(assert (=> d!105625 m!774455))

(declare-fun m!774457 () Bool)

(assert (=> d!105625 m!774457))

(assert (=> b!830265 d!105625))

(declare-fun d!105627 () Bool)

(declare-fun c!89977 () Bool)

(assert (=> d!105627 (= c!89977 ((_ is ValueCellFull!7188) (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!463252 () V!25277)

(assert (=> d!105627 (= (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)) e!463252)))

(declare-fun b!830768 () Bool)

(assert (=> b!830768 (= e!463252 (get!11824 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!830769 () Bool)

(assert (=> b!830769 (= e!463252 (get!11825 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105627 c!89977) b!830768))

(assert (= (and d!105627 (not c!89977)) b!830769))

(assert (=> b!830768 m!773499))

(assert (=> b!830768 m!773293))

(declare-fun m!774459 () Bool)

(assert (=> b!830768 m!774459))

(assert (=> b!830769 m!773499))

(assert (=> b!830769 m!773293))

(declare-fun m!774461 () Bool)

(assert (=> b!830769 m!774461))

(assert (=> b!830265 d!105627))

(declare-fun d!105629 () Bool)

(declare-fun e!463254 () Bool)

(assert (=> d!105629 e!463254))

(declare-fun res!565762 () Bool)

(assert (=> d!105629 (=> res!565762 e!463254)))

(declare-fun lt!377091 () Bool)

(assert (=> d!105629 (= res!565762 (not lt!377091))))

(declare-fun lt!377090 () Bool)

(assert (=> d!105629 (= lt!377091 lt!377090)))

(declare-fun lt!377088 () Unit!28435)

(declare-fun e!463253 () Unit!28435)

(assert (=> d!105629 (= lt!377088 e!463253)))

(declare-fun c!89978 () Bool)

(assert (=> d!105629 (= c!89978 lt!377090)))

(assert (=> d!105629 (= lt!377090 (containsKey!400 (toList!4521 (+!1950 lt!376815 (tuple2!10175 lt!376816 lt!376814))) lt!376811))))

(assert (=> d!105629 (= (contains!4208 (+!1950 lt!376815 (tuple2!10175 lt!376816 lt!376814)) lt!376811) lt!377091)))

(declare-fun b!830770 () Bool)

(declare-fun lt!377089 () Unit!28435)

(assert (=> b!830770 (= e!463253 lt!377089)))

(assert (=> b!830770 (= lt!377089 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376815 (tuple2!10175 lt!376816 lt!376814))) lt!376811))))

(assert (=> b!830770 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376815 (tuple2!10175 lt!376816 lt!376814))) lt!376811))))

(declare-fun b!830771 () Bool)

(declare-fun Unit!28464 () Unit!28435)

(assert (=> b!830771 (= e!463253 Unit!28464)))

(declare-fun b!830772 () Bool)

(assert (=> b!830772 (= e!463254 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376815 (tuple2!10175 lt!376816 lt!376814))) lt!376811)))))

(assert (= (and d!105629 c!89978) b!830770))

(assert (= (and d!105629 (not c!89978)) b!830771))

(assert (= (and d!105629 (not res!565762)) b!830772))

(declare-fun m!774463 () Bool)

(assert (=> d!105629 m!774463))

(declare-fun m!774465 () Bool)

(assert (=> b!830770 m!774465))

(declare-fun m!774467 () Bool)

(assert (=> b!830770 m!774467))

(assert (=> b!830770 m!774467))

(declare-fun m!774469 () Bool)

(assert (=> b!830770 m!774469))

(assert (=> b!830772 m!774467))

(assert (=> b!830772 m!774467))

(assert (=> b!830772 m!774469))

(assert (=> b!830265 d!105629))

(declare-fun d!105631 () Bool)

(declare-fun e!463256 () Bool)

(assert (=> d!105631 e!463256))

(declare-fun res!565763 () Bool)

(assert (=> d!105631 (=> res!565763 e!463256)))

(declare-fun lt!377095 () Bool)

(assert (=> d!105631 (= res!565763 (not lt!377095))))

(declare-fun lt!377094 () Bool)

(assert (=> d!105631 (= lt!377095 lt!377094)))

(declare-fun lt!377092 () Unit!28435)

(declare-fun e!463255 () Unit!28435)

(assert (=> d!105631 (= lt!377092 e!463255)))

(declare-fun c!89979 () Bool)

(assert (=> d!105631 (= c!89979 lt!377094)))

(assert (=> d!105631 (= lt!377094 (containsKey!400 (toList!4521 lt!376971) (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))

(assert (=> d!105631 (= (contains!4208 lt!376971 (_1!5097 (tuple2!10175 lt!376785 lt!376783))) lt!377095)))

(declare-fun b!830773 () Bool)

(declare-fun lt!377093 () Unit!28435)

(assert (=> b!830773 (= e!463255 lt!377093)))

(assert (=> b!830773 (= lt!377093 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376971) (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))

(assert (=> b!830773 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376971) (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))

(declare-fun b!830774 () Bool)

(declare-fun Unit!28465 () Unit!28435)

(assert (=> b!830774 (= e!463255 Unit!28465)))

(declare-fun b!830775 () Bool)

(assert (=> b!830775 (= e!463256 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376971) (_1!5097 (tuple2!10175 lt!376785 lt!376783)))))))

(assert (= (and d!105631 c!89979) b!830773))

(assert (= (and d!105631 (not c!89979)) b!830774))

(assert (= (and d!105631 (not res!565763)) b!830775))

(declare-fun m!774471 () Bool)

(assert (=> d!105631 m!774471))

(declare-fun m!774473 () Bool)

(assert (=> b!830773 m!774473))

(assert (=> b!830773 m!774005))

(assert (=> b!830773 m!774005))

(declare-fun m!774475 () Bool)

(assert (=> b!830773 m!774475))

(assert (=> b!830775 m!774005))

(assert (=> b!830775 m!774005))

(assert (=> b!830775 m!774475))

(assert (=> d!105445 d!105631))

(declare-fun b!830778 () Bool)

(declare-fun e!463258 () Option!420)

(assert (=> b!830778 (= e!463258 (getValueByKey!414 (t!22376 lt!376973) (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))

(declare-fun b!830779 () Bool)

(assert (=> b!830779 (= e!463258 None!418)))

(declare-fun d!105633 () Bool)

(declare-fun c!89980 () Bool)

(assert (=> d!105633 (= c!89980 (and ((_ is Cons!15999) lt!376973) (= (_1!5097 (h!17128 lt!376973)) (_1!5097 (tuple2!10175 lt!376785 lt!376783)))))))

(declare-fun e!463257 () Option!420)

(assert (=> d!105633 (= (getValueByKey!414 lt!376973 (_1!5097 (tuple2!10175 lt!376785 lt!376783))) e!463257)))

(declare-fun b!830776 () Bool)

(assert (=> b!830776 (= e!463257 (Some!419 (_2!5097 (h!17128 lt!376973))))))

(declare-fun b!830777 () Bool)

(assert (=> b!830777 (= e!463257 e!463258)))

(declare-fun c!89981 () Bool)

(assert (=> b!830777 (= c!89981 (and ((_ is Cons!15999) lt!376973) (not (= (_1!5097 (h!17128 lt!376973)) (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))))

(assert (= (and d!105633 c!89980) b!830776))

(assert (= (and d!105633 (not c!89980)) b!830777))

(assert (= (and b!830777 c!89981) b!830778))

(assert (= (and b!830777 (not c!89981)) b!830779))

(declare-fun m!774477 () Bool)

(assert (=> b!830778 m!774477))

(assert (=> d!105445 d!105633))

(declare-fun d!105635 () Bool)

(assert (=> d!105635 (= (getValueByKey!414 lt!376973 (_1!5097 (tuple2!10175 lt!376785 lt!376783))) (Some!419 (_2!5097 (tuple2!10175 lt!376785 lt!376783))))))

(declare-fun lt!377096 () Unit!28435)

(assert (=> d!105635 (= lt!377096 (choose!1427 lt!376973 (_1!5097 (tuple2!10175 lt!376785 lt!376783)) (_2!5097 (tuple2!10175 lt!376785 lt!376783))))))

(declare-fun e!463259 () Bool)

(assert (=> d!105635 e!463259))

(declare-fun res!565764 () Bool)

(assert (=> d!105635 (=> (not res!565764) (not e!463259))))

(assert (=> d!105635 (= res!565764 (isStrictlySorted!437 lt!376973))))

(assert (=> d!105635 (= (lemmaContainsTupThenGetReturnValue!230 lt!376973 (_1!5097 (tuple2!10175 lt!376785 lt!376783)) (_2!5097 (tuple2!10175 lt!376785 lt!376783))) lt!377096)))

(declare-fun b!830780 () Bool)

(declare-fun res!565765 () Bool)

(assert (=> b!830780 (=> (not res!565765) (not e!463259))))

(assert (=> b!830780 (= res!565765 (containsKey!400 lt!376973 (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))

(declare-fun b!830781 () Bool)

(assert (=> b!830781 (= e!463259 (contains!4209 lt!376973 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376785 lt!376783)) (_2!5097 (tuple2!10175 lt!376785 lt!376783)))))))

(assert (= (and d!105635 res!565764) b!830780))

(assert (= (and b!830780 res!565765) b!830781))

(assert (=> d!105635 m!773999))

(declare-fun m!774479 () Bool)

(assert (=> d!105635 m!774479))

(declare-fun m!774481 () Bool)

(assert (=> d!105635 m!774481))

(declare-fun m!774483 () Bool)

(assert (=> b!830780 m!774483))

(declare-fun m!774485 () Bool)

(assert (=> b!830781 m!774485))

(assert (=> d!105445 d!105635))

(declare-fun b!830782 () Bool)

(declare-fun e!463260 () List!16003)

(declare-fun call!36301 () List!16003)

(assert (=> b!830782 (= e!463260 call!36301)))

(declare-fun bm!36296 () Bool)

(declare-fun call!36299 () List!16003)

(assert (=> bm!36296 (= call!36301 call!36299)))

(declare-fun b!830783 () Bool)

(declare-fun e!463262 () Bool)

(declare-fun lt!377097 () List!16003)

(assert (=> b!830783 (= e!463262 (contains!4209 lt!377097 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376785 lt!376783)) (_2!5097 (tuple2!10175 lt!376785 lt!376783)))))))

(declare-fun e!463263 () List!16003)

(declare-fun c!89984 () Bool)

(declare-fun b!830784 () Bool)

(declare-fun c!89985 () Bool)

(assert (=> b!830784 (= e!463263 (ite c!89985 (t!22376 (toList!4521 lt!376784)) (ite c!89984 (Cons!15999 (h!17128 (toList!4521 lt!376784)) (t!22376 (toList!4521 lt!376784))) Nil!16000)))))

(declare-fun b!830785 () Bool)

(assert (=> b!830785 (= e!463263 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376784)) (_1!5097 (tuple2!10175 lt!376785 lt!376783)) (_2!5097 (tuple2!10175 lt!376785 lt!376783))))))

(declare-fun b!830786 () Bool)

(assert (=> b!830786 (= e!463260 call!36301)))

(declare-fun bm!36297 () Bool)

(declare-fun call!36300 () List!16003)

(declare-fun c!89982 () Bool)

(assert (=> bm!36297 (= call!36300 ($colon$colon!535 e!463263 (ite c!89982 (h!17128 (toList!4521 lt!376784)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376785 lt!376783)) (_2!5097 (tuple2!10175 lt!376785 lt!376783))))))))

(declare-fun c!89983 () Bool)

(assert (=> bm!36297 (= c!89983 c!89982)))

(declare-fun b!830787 () Bool)

(declare-fun e!463264 () List!16003)

(assert (=> b!830787 (= e!463264 call!36299)))

(declare-fun b!830788 () Bool)

(declare-fun e!463261 () List!16003)

(assert (=> b!830788 (= e!463261 call!36300)))

(declare-fun b!830789 () Bool)

(assert (=> b!830789 (= e!463261 e!463264)))

(assert (=> b!830789 (= c!89985 (and ((_ is Cons!15999) (toList!4521 lt!376784)) (= (_1!5097 (h!17128 (toList!4521 lt!376784))) (_1!5097 (tuple2!10175 lt!376785 lt!376783)))))))

(declare-fun b!830791 () Bool)

(declare-fun res!565766 () Bool)

(assert (=> b!830791 (=> (not res!565766) (not e!463262))))

(assert (=> b!830791 (= res!565766 (containsKey!400 lt!377097 (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))

(declare-fun bm!36298 () Bool)

(assert (=> bm!36298 (= call!36299 call!36300)))

(declare-fun d!105637 () Bool)

(assert (=> d!105637 e!463262))

(declare-fun res!565767 () Bool)

(assert (=> d!105637 (=> (not res!565767) (not e!463262))))

(assert (=> d!105637 (= res!565767 (isStrictlySorted!437 lt!377097))))

(assert (=> d!105637 (= lt!377097 e!463261)))

(assert (=> d!105637 (= c!89982 (and ((_ is Cons!15999) (toList!4521 lt!376784)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376784))) (_1!5097 (tuple2!10175 lt!376785 lt!376783)))))))

(assert (=> d!105637 (isStrictlySorted!437 (toList!4521 lt!376784))))

(assert (=> d!105637 (= (insertStrictlySorted!268 (toList!4521 lt!376784) (_1!5097 (tuple2!10175 lt!376785 lt!376783)) (_2!5097 (tuple2!10175 lt!376785 lt!376783))) lt!377097)))

(declare-fun b!830790 () Bool)

(assert (=> b!830790 (= c!89984 (and ((_ is Cons!15999) (toList!4521 lt!376784)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376784))) (_1!5097 (tuple2!10175 lt!376785 lt!376783)))))))

(assert (=> b!830790 (= e!463264 e!463260)))

(assert (= (and d!105637 c!89982) b!830788))

(assert (= (and d!105637 (not c!89982)) b!830789))

(assert (= (and b!830789 c!89985) b!830787))

(assert (= (and b!830789 (not c!89985)) b!830790))

(assert (= (and b!830790 c!89984) b!830782))

(assert (= (and b!830790 (not c!89984)) b!830786))

(assert (= (or b!830782 b!830786) bm!36296))

(assert (= (or b!830787 bm!36296) bm!36298))

(assert (= (or b!830788 bm!36298) bm!36297))

(assert (= (and bm!36297 c!89983) b!830785))

(assert (= (and bm!36297 (not c!89983)) b!830784))

(assert (= (and d!105637 res!565767) b!830791))

(assert (= (and b!830791 res!565766) b!830783))

(declare-fun m!774487 () Bool)

(assert (=> b!830791 m!774487))

(declare-fun m!774489 () Bool)

(assert (=> d!105637 m!774489))

(declare-fun m!774491 () Bool)

(assert (=> d!105637 m!774491))

(declare-fun m!774493 () Bool)

(assert (=> bm!36297 m!774493))

(declare-fun m!774495 () Bool)

(assert (=> b!830785 m!774495))

(declare-fun m!774497 () Bool)

(assert (=> b!830783 m!774497))

(assert (=> d!105445 d!105637))

(declare-fun d!105639 () Bool)

(assert (=> d!105639 (= (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754))) lt!376719)) (v!10091 (getValueByKey!414 (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754))) lt!376719)))))

(assert (=> d!105353 d!105639))

(declare-fun b!830794 () Bool)

(declare-fun e!463266 () Option!420)

(assert (=> b!830794 (= e!463266 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754)))) lt!376719))))

(declare-fun b!830795 () Bool)

(assert (=> b!830795 (= e!463266 None!418)))

(declare-fun d!105641 () Bool)

(declare-fun c!89986 () Bool)

(assert (=> d!105641 (= c!89986 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754))))) lt!376719)))))

(declare-fun e!463265 () Option!420)

(assert (=> d!105641 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754))) lt!376719) e!463265)))

(declare-fun b!830792 () Bool)

(assert (=> b!830792 (= e!463265 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754)))))))))

(declare-fun b!830793 () Bool)

(assert (=> b!830793 (= e!463265 e!463266)))

(declare-fun c!89987 () Bool)

(assert (=> b!830793 (= c!89987 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754))))) lt!376719))))))

(assert (= (and d!105641 c!89986) b!830792))

(assert (= (and d!105641 (not c!89986)) b!830793))

(assert (= (and b!830793 c!89987) b!830794))

(assert (= (and b!830793 (not c!89987)) b!830795))

(declare-fun m!774499 () Bool)

(assert (=> b!830794 m!774499))

(assert (=> d!105353 d!105641))

(assert (=> b!830505 d!105531))

(declare-fun d!105643 () Bool)

(assert (=> d!105643 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708))))

(declare-fun lt!377098 () Unit!28435)

(assert (=> d!105643 (= lt!377098 (choose!1429 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708))))

(declare-fun e!463267 () Bool)

(assert (=> d!105643 e!463267))

(declare-fun res!565768 () Bool)

(assert (=> d!105643 (=> (not res!565768) (not e!463267))))

(assert (=> d!105643 (= res!565768 (isStrictlySorted!437 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(assert (=> d!105643 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708) lt!377098)))

(declare-fun b!830796 () Bool)

(assert (=> b!830796 (= e!463267 (containsKey!400 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708))))

(assert (= (and d!105643 res!565768) b!830796))

(assert (=> d!105643 m!773697))

(assert (=> d!105643 m!773697))

(assert (=> d!105643 m!773699))

(declare-fun m!774501 () Bool)

(assert (=> d!105643 m!774501))

(declare-fun m!774503 () Bool)

(assert (=> d!105643 m!774503))

(assert (=> b!830796 m!773693))

(assert (=> b!830352 d!105643))

(declare-fun d!105645 () Bool)

(assert (=> d!105645 (= (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708))))))

(declare-fun bs!23211 () Bool)

(assert (= bs!23211 d!105645))

(assert (=> bs!23211 m!773697))

(declare-fun m!774505 () Bool)

(assert (=> bs!23211 m!774505))

(assert (=> b!830352 d!105645))

(declare-fun b!830799 () Bool)

(declare-fun e!463269 () Option!420)

(assert (=> b!830799 (= e!463269 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)))) lt!376708))))

(declare-fun b!830800 () Bool)

(assert (=> b!830800 (= e!463269 None!418)))

(declare-fun c!89988 () Bool)

(declare-fun d!105647 () Bool)

(assert (=> d!105647 (= c!89988 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))))) lt!376708)))))

(declare-fun e!463268 () Option!420)

(assert (=> d!105647 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708) e!463268)))

(declare-fun b!830797 () Bool)

(assert (=> b!830797 (= e!463268 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))))

(declare-fun b!830798 () Bool)

(assert (=> b!830798 (= e!463268 e!463269)))

(declare-fun c!89989 () Bool)

(assert (=> b!830798 (= c!89989 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))))) lt!376708))))))

(assert (= (and d!105647 c!89988) b!830797))

(assert (= (and d!105647 (not c!89988)) b!830798))

(assert (= (and b!830798 c!89989) b!830799))

(assert (= (and b!830798 (not c!89989)) b!830800))

(declare-fun m!774507 () Bool)

(assert (=> b!830799 m!774507))

(assert (=> b!830352 d!105647))

(declare-fun call!36302 () Bool)

(declare-fun c!89990 () Bool)

(declare-fun bm!36299 () Bool)

(assert (=> bm!36299 (= call!36302 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!89990 (Cons!16000 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (ite c!89845 (Cons!16000 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001))) (ite c!89845 (Cons!16000 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)))))))

(declare-fun b!830801 () Bool)

(declare-fun e!463271 () Bool)

(declare-fun e!463270 () Bool)

(assert (=> b!830801 (= e!463271 e!463270)))

(assert (=> b!830801 (= c!89990 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun e!463272 () Bool)

(declare-fun b!830802 () Bool)

(assert (=> b!830802 (= e!463272 (contains!4210 (ite c!89845 (Cons!16000 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun d!105649 () Bool)

(declare-fun res!565769 () Bool)

(declare-fun e!463273 () Bool)

(assert (=> d!105649 (=> res!565769 e!463273)))

(assert (=> d!105649 (= res!565769 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> d!105649 (= (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!89845 (Cons!16000 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001))) e!463273)))

(declare-fun b!830803 () Bool)

(assert (=> b!830803 (= e!463273 e!463271)))

(declare-fun res!565770 () Bool)

(assert (=> b!830803 (=> (not res!565770) (not e!463271))))

(assert (=> b!830803 (= res!565770 (not e!463272))))

(declare-fun res!565771 () Bool)

(assert (=> b!830803 (=> (not res!565771) (not e!463272))))

(assert (=> b!830803 (= res!565771 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!830804 () Bool)

(assert (=> b!830804 (= e!463270 call!36302)))

(declare-fun b!830805 () Bool)

(assert (=> b!830805 (= e!463270 call!36302)))

(assert (= (and d!105649 (not res!565769)) b!830803))

(assert (= (and b!830803 res!565771) b!830802))

(assert (= (and b!830803 res!565770) b!830801))

(assert (= (and b!830801 c!89990) b!830804))

(assert (= (and b!830801 (not c!89990)) b!830805))

(assert (= (or b!830804 b!830805) bm!36299))

(assert (=> bm!36299 m!774259))

(declare-fun m!774509 () Bool)

(assert (=> bm!36299 m!774509))

(assert (=> b!830801 m!774259))

(assert (=> b!830801 m!774259))

(assert (=> b!830801 m!774277))

(assert (=> b!830802 m!774259))

(assert (=> b!830802 m!774259))

(declare-fun m!774511 () Bool)

(assert (=> b!830802 m!774511))

(assert (=> b!830803 m!774259))

(assert (=> b!830803 m!774259))

(assert (=> b!830803 m!774277))

(assert (=> bm!36260 d!105649))

(declare-fun d!105651 () Bool)

(assert (=> d!105651 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23212 () Bool)

(assert (= bs!23212 d!105651))

(assert (=> bs!23212 m!773755))

(declare-fun m!774513 () Bool)

(assert (=> bs!23212 m!774513))

(assert (=> b!830525 d!105651))

(declare-fun b!830808 () Bool)

(declare-fun e!463275 () Option!420)

(assert (=> b!830808 (= e!463275 (getValueByKey!414 (t!22376 (toList!4521 lt!376747)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830809 () Bool)

(assert (=> b!830809 (= e!463275 None!418)))

(declare-fun d!105653 () Bool)

(declare-fun c!89991 () Bool)

(assert (=> d!105653 (= c!89991 (and ((_ is Cons!15999) (toList!4521 lt!376747)) (= (_1!5097 (h!17128 (toList!4521 lt!376747))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!463274 () Option!420)

(assert (=> d!105653 (= (getValueByKey!414 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000) e!463274)))

(declare-fun b!830806 () Bool)

(assert (=> b!830806 (= e!463274 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376747)))))))

(declare-fun b!830807 () Bool)

(assert (=> b!830807 (= e!463274 e!463275)))

(declare-fun c!89992 () Bool)

(assert (=> b!830807 (= c!89992 (and ((_ is Cons!15999) (toList!4521 lt!376747)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376747))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!105653 c!89991) b!830806))

(assert (= (and d!105653 (not c!89991)) b!830807))

(assert (= (and b!830807 c!89992) b!830808))

(assert (= (and b!830807 (not c!89992)) b!830809))

(declare-fun m!774515 () Bool)

(assert (=> b!830808 m!774515))

(assert (=> b!830525 d!105653))

(declare-fun b!830822 () Bool)

(declare-fun e!463283 () SeekEntryResult!8733)

(assert (=> b!830822 (= e!463283 (Found!8733 (index!37304 lt!377033)))))

(declare-fun b!830823 () Bool)

(declare-fun e!463284 () SeekEntryResult!8733)

(assert (=> b!830823 (= e!463284 Undefined!8733)))

(declare-fun b!830824 () Bool)

(assert (=> b!830824 (= e!463284 e!463283)))

(declare-fun c!89999 () Bool)

(declare-fun lt!377103 () (_ BitVec 64))

(assert (=> b!830824 (= c!89999 (= lt!377103 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!830825 () Bool)

(declare-fun e!463282 () SeekEntryResult!8733)

(assert (=> b!830825 (= e!463282 (MissingVacant!8733 (index!37304 lt!377033)))))

(declare-fun b!830826 () Bool)

(declare-fun c!90000 () Bool)

(assert (=> b!830826 (= c!90000 (= lt!377103 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830826 (= e!463283 e!463282)))

(declare-fun b!830827 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!830827 (= e!463282 (seekKeyOrZeroReturnVacant!0 (bvadd (x!70091 lt!377033) #b00000000000000000000000000000001) (nextIndex!0 (index!37304 lt!377033) (x!70091 lt!377033) mask!1312) (index!37304 lt!377033) (select (arr!22311 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312))))

(declare-fun d!105655 () Bool)

(declare-fun lt!377104 () SeekEntryResult!8733)

(assert (=> d!105655 (and (or ((_ is Undefined!8733) lt!377104) (not ((_ is Found!8733) lt!377104)) (and (bvsge (index!37303 lt!377104) #b00000000000000000000000000000000) (bvslt (index!37303 lt!377104) (size!22732 _keys!976)))) (or ((_ is Undefined!8733) lt!377104) ((_ is Found!8733) lt!377104) (not ((_ is MissingVacant!8733) lt!377104)) (not (= (index!37305 lt!377104) (index!37304 lt!377033))) (and (bvsge (index!37305 lt!377104) #b00000000000000000000000000000000) (bvslt (index!37305 lt!377104) (size!22732 _keys!976)))) (or ((_ is Undefined!8733) lt!377104) (ite ((_ is Found!8733) lt!377104) (= (select (arr!22311 _keys!976) (index!37303 lt!377104)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (and ((_ is MissingVacant!8733) lt!377104) (= (index!37305 lt!377104) (index!37304 lt!377033)) (= (select (arr!22311 _keys!976) (index!37305 lt!377104)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!105655 (= lt!377104 e!463284)))

(declare-fun c!90001 () Bool)

(assert (=> d!105655 (= c!90001 (bvsge (x!70091 lt!377033) #b01111111111111111111111111111110))))

(assert (=> d!105655 (= lt!377103 (select (arr!22311 _keys!976) (index!37304 lt!377033)))))

(assert (=> d!105655 (validMask!0 mask!1312)))

(assert (=> d!105655 (= (seekKeyOrZeroReturnVacant!0 (x!70091 lt!377033) (index!37304 lt!377033) (index!37304 lt!377033) (select (arr!22311 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) lt!377104)))

(assert (= (and d!105655 c!90001) b!830823))

(assert (= (and d!105655 (not c!90001)) b!830824))

(assert (= (and b!830824 c!89999) b!830822))

(assert (= (and b!830824 (not c!89999)) b!830826))

(assert (= (and b!830826 c!90000) b!830825))

(assert (= (and b!830826 (not c!90000)) b!830827))

(declare-fun m!774517 () Bool)

(assert (=> b!830827 m!774517))

(assert (=> b!830827 m!774517))

(assert (=> b!830827 m!773277))

(declare-fun m!774519 () Bool)

(assert (=> b!830827 m!774519))

(declare-fun m!774521 () Bool)

(assert (=> d!105655 m!774521))

(declare-fun m!774523 () Bool)

(assert (=> d!105655 m!774523))

(assert (=> d!105655 m!774201))

(assert (=> d!105655 m!773209))

(assert (=> b!830604 d!105655))

(declare-fun d!105657 () Bool)

(declare-fun res!565772 () Bool)

(declare-fun e!463285 () Bool)

(assert (=> d!105657 (=> res!565772 e!463285)))

(assert (=> d!105657 (= res!565772 (and ((_ is Cons!15999) (toList!4521 lt!376803)) (= (_1!5097 (h!17128 (toList!4521 lt!376803))) (_1!5097 lt!376628))))))

(assert (=> d!105657 (= (containsKey!400 (toList!4521 lt!376803) (_1!5097 lt!376628)) e!463285)))

(declare-fun b!830828 () Bool)

(declare-fun e!463286 () Bool)

(assert (=> b!830828 (= e!463285 e!463286)))

(declare-fun res!565773 () Bool)

(assert (=> b!830828 (=> (not res!565773) (not e!463286))))

(assert (=> b!830828 (= res!565773 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376803))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376803))) (_1!5097 lt!376628))) ((_ is Cons!15999) (toList!4521 lt!376803)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376803))) (_1!5097 lt!376628))))))

(declare-fun b!830829 () Bool)

(assert (=> b!830829 (= e!463286 (containsKey!400 (t!22376 (toList!4521 lt!376803)) (_1!5097 lt!376628)))))

(assert (= (and d!105657 (not res!565772)) b!830828))

(assert (= (and b!830828 res!565773) b!830829))

(declare-fun m!774525 () Bool)

(assert (=> b!830829 m!774525))

(assert (=> d!105377 d!105657))

(declare-fun b!830832 () Bool)

(declare-fun e!463288 () Option!420)

(assert (=> b!830832 (= e!463288 (getValueByKey!414 (t!22376 (t!22376 lt!376809)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!830833 () Bool)

(assert (=> b!830833 (= e!463288 None!418)))

(declare-fun d!105659 () Bool)

(declare-fun c!90002 () Bool)

(assert (=> d!105659 (= c!90002 (and ((_ is Cons!15999) (t!22376 lt!376809)) (= (_1!5097 (h!17128 (t!22376 lt!376809))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!463287 () Option!420)

(assert (=> d!105659 (= (getValueByKey!414 (t!22376 lt!376809) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!463287)))

(declare-fun b!830830 () Bool)

(assert (=> b!830830 (= e!463287 (Some!419 (_2!5097 (h!17128 (t!22376 lt!376809)))))))

(declare-fun b!830831 () Bool)

(assert (=> b!830831 (= e!463287 e!463288)))

(declare-fun c!90003 () Bool)

(assert (=> b!830831 (= c!90003 (and ((_ is Cons!15999) (t!22376 lt!376809)) (not (= (_1!5097 (h!17128 (t!22376 lt!376809))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(assert (= (and d!105659 c!90002) b!830830))

(assert (= (and d!105659 (not c!90002)) b!830831))

(assert (= (and b!830831 c!90003) b!830832))

(assert (= (and b!830831 (not c!90003)) b!830833))

(declare-fun m!774527 () Bool)

(assert (=> b!830832 m!774527))

(assert (=> b!830424 d!105659))

(declare-fun d!105661 () Bool)

(declare-fun res!565774 () Bool)

(declare-fun e!463289 () Bool)

(assert (=> d!105661 (=> res!565774 e!463289)))

(assert (=> d!105661 (= res!565774 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))))) lt!376787)))))

(assert (=> d!105661 (= (containsKey!400 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))) lt!376787) e!463289)))

(declare-fun b!830834 () Bool)

(declare-fun e!463290 () Bool)

(assert (=> b!830834 (= e!463289 e!463290)))

(declare-fun res!565775 () Bool)

(assert (=> b!830834 (=> (not res!565775) (not e!463290))))

(assert (=> b!830834 (= res!565775 (and (or (not ((_ is Cons!15999) (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))))) (bvsle (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))))) lt!376787)) ((_ is Cons!15999) (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)))) (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790))))) lt!376787)))))

(declare-fun b!830835 () Bool)

(assert (=> b!830835 (= e!463290 (containsKey!400 (t!22376 (toList!4521 (+!1950 lt!376791 (tuple2!10175 lt!376792 lt!376790)))) lt!376787))))

(assert (= (and d!105661 (not res!565774)) b!830834))

(assert (= (and b!830834 res!565775) b!830835))

(declare-fun m!774529 () Bool)

(assert (=> b!830835 m!774529))

(assert (=> d!105413 d!105661))

(declare-fun d!105663 () Bool)

(declare-fun lt!377105 () Bool)

(assert (=> d!105663 (= lt!377105 (select (content!389 (toList!4521 lt!376990)) (tuple2!10175 lt!376757 zeroValueBefore!34)))))

(declare-fun e!463292 () Bool)

(assert (=> d!105663 (= lt!377105 e!463292)))

(declare-fun res!565777 () Bool)

(assert (=> d!105663 (=> (not res!565777) (not e!463292))))

(assert (=> d!105663 (= res!565777 ((_ is Cons!15999) (toList!4521 lt!376990)))))

(assert (=> d!105663 (= (contains!4209 (toList!4521 lt!376990) (tuple2!10175 lt!376757 zeroValueBefore!34)) lt!377105)))

(declare-fun b!830836 () Bool)

(declare-fun e!463291 () Bool)

(assert (=> b!830836 (= e!463292 e!463291)))

(declare-fun res!565776 () Bool)

(assert (=> b!830836 (=> res!565776 e!463291)))

(assert (=> b!830836 (= res!565776 (= (h!17128 (toList!4521 lt!376990)) (tuple2!10175 lt!376757 zeroValueBefore!34)))))

(declare-fun b!830837 () Bool)

(assert (=> b!830837 (= e!463291 (contains!4209 (t!22376 (toList!4521 lt!376990)) (tuple2!10175 lt!376757 zeroValueBefore!34)))))

(assert (= (and d!105663 res!565777) b!830836))

(assert (= (and b!830836 (not res!565776)) b!830837))

(declare-fun m!774531 () Bool)

(assert (=> d!105663 m!774531))

(declare-fun m!774533 () Bool)

(assert (=> d!105663 m!774533))

(declare-fun m!774535 () Bool)

(assert (=> b!830837 m!774535))

(assert (=> b!830550 d!105663))

(declare-fun lt!377106 () Bool)

(declare-fun d!105665 () Bool)

(assert (=> d!105665 (= lt!377106 (select (content!389 (toList!4521 lt!376844)) (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun e!463294 () Bool)

(assert (=> d!105665 (= lt!377106 e!463294)))

(declare-fun res!565779 () Bool)

(assert (=> d!105665 (=> (not res!565779) (not e!463294))))

(assert (=> d!105665 (= res!565779 ((_ is Cons!15999) (toList!4521 lt!376844)))))

(assert (=> d!105665 (= (contains!4209 (toList!4521 lt!376844) (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377106)))

(declare-fun b!830838 () Bool)

(declare-fun e!463293 () Bool)

(assert (=> b!830838 (= e!463294 e!463293)))

(declare-fun res!565778 () Bool)

(assert (=> b!830838 (=> res!565778 e!463293)))

(assert (=> b!830838 (= res!565778 (= (h!17128 (toList!4521 lt!376844)) (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!830839 () Bool)

(assert (=> b!830839 (= e!463293 (contains!4209 (t!22376 (toList!4521 lt!376844)) (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!105665 res!565779) b!830838))

(assert (= (and b!830838 (not res!565778)) b!830839))

(declare-fun m!774537 () Bool)

(assert (=> d!105665 m!774537))

(declare-fun m!774539 () Bool)

(assert (=> d!105665 m!774539))

(declare-fun m!774541 () Bool)

(assert (=> b!830839 m!774541))

(assert (=> b!830326 d!105665))

(declare-fun b!830842 () Bool)

(declare-fun e!463296 () Option!420)

(assert (=> b!830842 (= e!463296 (getValueByKey!414 (t!22376 (toList!4521 lt!376818)) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!830843 () Bool)

(assert (=> b!830843 (= e!463296 None!418)))

(declare-fun d!105667 () Bool)

(declare-fun c!90004 () Bool)

(assert (=> d!105667 (= c!90004 (and ((_ is Cons!15999) (toList!4521 lt!376818)) (= (_1!5097 (h!17128 (toList!4521 lt!376818))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!463295 () Option!420)

(assert (=> d!105667 (= (getValueByKey!414 (toList!4521 lt!376818) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) e!463295)))

(declare-fun b!830840 () Bool)

(assert (=> b!830840 (= e!463295 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376818)))))))

(declare-fun b!830841 () Bool)

(assert (=> b!830841 (= e!463295 e!463296)))

(declare-fun c!90005 () Bool)

(assert (=> b!830841 (= c!90005 (and ((_ is Cons!15999) (toList!4521 lt!376818)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376818))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!105667 c!90004) b!830840))

(assert (= (and d!105667 (not c!90004)) b!830841))

(assert (= (and b!830841 c!90005) b!830842))

(assert (= (and b!830841 (not c!90005)) b!830843))

(declare-fun m!774543 () Bool)

(assert (=> b!830842 m!774543))

(assert (=> b!830279 d!105667))

(declare-fun b!830846 () Bool)

(declare-fun e!463298 () Option!420)

(assert (=> b!830846 (= e!463298 (getValueByKey!414 (t!22376 (t!22376 lt!376739)) (_1!5097 lt!376622)))))

(declare-fun b!830847 () Bool)

(assert (=> b!830847 (= e!463298 None!418)))

(declare-fun d!105669 () Bool)

(declare-fun c!90006 () Bool)

(assert (=> d!105669 (= c!90006 (and ((_ is Cons!15999) (t!22376 lt!376739)) (= (_1!5097 (h!17128 (t!22376 lt!376739))) (_1!5097 lt!376622))))))

(declare-fun e!463297 () Option!420)

(assert (=> d!105669 (= (getValueByKey!414 (t!22376 lt!376739) (_1!5097 lt!376622)) e!463297)))

(declare-fun b!830844 () Bool)

(assert (=> b!830844 (= e!463297 (Some!419 (_2!5097 (h!17128 (t!22376 lt!376739)))))))

(declare-fun b!830845 () Bool)

(assert (=> b!830845 (= e!463297 e!463298)))

(declare-fun c!90007 () Bool)

(assert (=> b!830845 (= c!90007 (and ((_ is Cons!15999) (t!22376 lt!376739)) (not (= (_1!5097 (h!17128 (t!22376 lt!376739))) (_1!5097 lt!376622)))))))

(assert (= (and d!105669 c!90006) b!830844))

(assert (= (and d!105669 (not c!90006)) b!830845))

(assert (= (and b!830845 c!90007) b!830846))

(assert (= (and b!830845 (not c!90007)) b!830847))

(declare-fun m!774545 () Bool)

(assert (=> b!830846 m!774545))

(assert (=> b!830567 d!105669))

(declare-fun d!105671 () Bool)

(declare-fun lt!377107 () Bool)

(assert (=> d!105671 (= lt!377107 (select (content!389 lt!376731) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun e!463300 () Bool)

(assert (=> d!105671 (= lt!377107 e!463300)))

(declare-fun res!565781 () Bool)

(assert (=> d!105671 (=> (not res!565781) (not e!463300))))

(assert (=> d!105671 (= res!565781 ((_ is Cons!15999) lt!376731))))

(assert (=> d!105671 (= (contains!4209 lt!376731 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))) lt!377107)))

(declare-fun b!830848 () Bool)

(declare-fun e!463299 () Bool)

(assert (=> b!830848 (= e!463300 e!463299)))

(declare-fun res!565780 () Bool)

(assert (=> b!830848 (=> res!565780 e!463299)))

(assert (=> b!830848 (= res!565780 (= (h!17128 lt!376731) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun b!830849 () Bool)

(assert (=> b!830849 (= e!463299 (contains!4209 (t!22376 lt!376731) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(assert (= (and d!105671 res!565781) b!830848))

(assert (= (and b!830848 (not res!565780)) b!830849))

(declare-fun m!774547 () Bool)

(assert (=> d!105671 m!774547))

(declare-fun m!774549 () Bool)

(assert (=> d!105671 m!774549))

(declare-fun m!774551 () Bool)

(assert (=> b!830849 m!774551))

(assert (=> b!830446 d!105671))

(assert (=> b!830272 d!105531))

(declare-fun d!105673 () Bool)

(declare-fun e!463302 () Bool)

(assert (=> d!105673 e!463302))

(declare-fun res!565782 () Bool)

(assert (=> d!105673 (=> res!565782 e!463302)))

(declare-fun lt!377111 () Bool)

(assert (=> d!105673 (= res!565782 (not lt!377111))))

(declare-fun lt!377110 () Bool)

(assert (=> d!105673 (= lt!377111 lt!377110)))

(declare-fun lt!377108 () Unit!28435)

(declare-fun e!463301 () Unit!28435)

(assert (=> d!105673 (= lt!377108 e!463301)))

(declare-fun c!90008 () Bool)

(assert (=> d!105673 (= c!90008 lt!377110)))

(assert (=> d!105673 (= lt!377110 (containsKey!400 (toList!4521 lt!376844) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!105673 (= (contains!4208 lt!376844 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!377111)))

(declare-fun b!830850 () Bool)

(declare-fun lt!377109 () Unit!28435)

(assert (=> b!830850 (= e!463301 lt!377109)))

(assert (=> b!830850 (= lt!377109 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376844) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> b!830850 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376844) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!830851 () Bool)

(declare-fun Unit!28466 () Unit!28435)

(assert (=> b!830851 (= e!463301 Unit!28466)))

(declare-fun b!830852 () Bool)

(assert (=> b!830852 (= e!463302 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376844) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!105673 c!90008) b!830850))

(assert (= (and d!105673 (not c!90008)) b!830851))

(assert (= (and d!105673 (not res!565782)) b!830852))

(declare-fun m!774553 () Bool)

(assert (=> d!105673 m!774553))

(declare-fun m!774555 () Bool)

(assert (=> b!830850 m!774555))

(assert (=> b!830850 m!773601))

(assert (=> b!830850 m!773601))

(declare-fun m!774557 () Bool)

(assert (=> b!830850 m!774557))

(assert (=> b!830852 m!773601))

(assert (=> b!830852 m!773601))

(assert (=> b!830852 m!774557))

(assert (=> d!105317 d!105673))

(declare-fun b!830855 () Bool)

(declare-fun e!463304 () Option!420)

(assert (=> b!830855 (= e!463304 (getValueByKey!414 (t!22376 lt!376846) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!830856 () Bool)

(assert (=> b!830856 (= e!463304 None!418)))

(declare-fun d!105675 () Bool)

(declare-fun c!90009 () Bool)

(assert (=> d!105675 (= c!90009 (and ((_ is Cons!15999) lt!376846) (= (_1!5097 (h!17128 lt!376846)) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun e!463303 () Option!420)

(assert (=> d!105675 (= (getValueByKey!414 lt!376846 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) e!463303)))

(declare-fun b!830853 () Bool)

(assert (=> b!830853 (= e!463303 (Some!419 (_2!5097 (h!17128 lt!376846))))))

(declare-fun b!830854 () Bool)

(assert (=> b!830854 (= e!463303 e!463304)))

(declare-fun c!90010 () Bool)

(assert (=> b!830854 (= c!90010 (and ((_ is Cons!15999) lt!376846) (not (= (_1!5097 (h!17128 lt!376846)) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(assert (= (and d!105675 c!90009) b!830853))

(assert (= (and d!105675 (not c!90009)) b!830854))

(assert (= (and b!830854 c!90010) b!830855))

(assert (= (and b!830854 (not c!90010)) b!830856))

(declare-fun m!774559 () Bool)

(assert (=> b!830855 m!774559))

(assert (=> d!105317 d!105675))

(declare-fun d!105677 () Bool)

(assert (=> d!105677 (= (getValueByKey!414 lt!376846 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!419 (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun lt!377112 () Unit!28435)

(assert (=> d!105677 (= lt!377112 (choose!1427 lt!376846 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!463305 () Bool)

(assert (=> d!105677 e!463305))

(declare-fun res!565783 () Bool)

(assert (=> d!105677 (=> (not res!565783) (not e!463305))))

(assert (=> d!105677 (= res!565783 (isStrictlySorted!437 lt!376846))))

(assert (=> d!105677 (= (lemmaContainsTupThenGetReturnValue!230 lt!376846 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!377112)))

(declare-fun b!830857 () Bool)

(declare-fun res!565784 () Bool)

(assert (=> b!830857 (=> (not res!565784) (not e!463305))))

(assert (=> b!830857 (= res!565784 (containsKey!400 lt!376846 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!830858 () Bool)

(assert (=> b!830858 (= e!463305 (contains!4209 lt!376846 (tuple2!10175 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!105677 res!565783) b!830857))

(assert (= (and b!830857 res!565784) b!830858))

(assert (=> d!105677 m!773595))

(declare-fun m!774561 () Bool)

(assert (=> d!105677 m!774561))

(declare-fun m!774563 () Bool)

(assert (=> d!105677 m!774563))

(declare-fun m!774565 () Bool)

(assert (=> b!830857 m!774565))

(declare-fun m!774567 () Bool)

(assert (=> b!830858 m!774567))

(assert (=> d!105317 d!105677))

(declare-fun b!830859 () Bool)

(declare-fun e!463306 () List!16003)

(declare-fun call!36305 () List!16003)

(assert (=> b!830859 (= e!463306 call!36305)))

(declare-fun bm!36300 () Bool)

(declare-fun call!36303 () List!16003)

(assert (=> bm!36300 (= call!36305 call!36303)))

(declare-fun e!463308 () Bool)

(declare-fun lt!377113 () List!16003)

(declare-fun b!830860 () Bool)

(assert (=> b!830860 (= e!463308 (contains!4209 lt!377113 (tuple2!10175 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun c!90013 () Bool)

(declare-fun e!463309 () List!16003)

(declare-fun b!830861 () Bool)

(declare-fun c!90014 () Bool)

(assert (=> b!830861 (= e!463309 (ite c!90014 (t!22376 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241)))) (ite c!90013 (Cons!15999 (h!17128 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241)))) (t!22376 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241))))) Nil!16000)))))

(declare-fun b!830862 () Bool)

(assert (=> b!830862 (= e!463309 (insertStrictlySorted!268 (t!22376 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241)))) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!830863 () Bool)

(assert (=> b!830863 (= e!463306 call!36305)))

(declare-fun bm!36301 () Bool)

(declare-fun c!90011 () Bool)

(declare-fun call!36304 () List!16003)

(assert (=> bm!36301 (= call!36304 ($colon$colon!535 e!463309 (ite c!90011 (h!17128 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241)))) (tuple2!10175 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(declare-fun c!90012 () Bool)

(assert (=> bm!36301 (= c!90012 c!90011)))

(declare-fun b!830864 () Bool)

(declare-fun e!463310 () List!16003)

(assert (=> b!830864 (= e!463310 call!36303)))

(declare-fun b!830865 () Bool)

(declare-fun e!463307 () List!16003)

(assert (=> b!830865 (= e!463307 call!36304)))

(declare-fun b!830866 () Bool)

(assert (=> b!830866 (= e!463307 e!463310)))

(assert (=> b!830866 (= c!90014 (and ((_ is Cons!15999) (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241)))) (= (_1!5097 (h!17128 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241))))) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!830868 () Bool)

(declare-fun res!565785 () Bool)

(assert (=> b!830868 (=> (not res!565785) (not e!463308))))

(assert (=> b!830868 (= res!565785 (containsKey!400 lt!377113 (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun bm!36302 () Bool)

(assert (=> bm!36302 (= call!36303 call!36304)))

(declare-fun d!105679 () Bool)

(assert (=> d!105679 e!463308))

(declare-fun res!565786 () Bool)

(assert (=> d!105679 (=> (not res!565786) (not e!463308))))

(assert (=> d!105679 (= res!565786 (isStrictlySorted!437 lt!377113))))

(assert (=> d!105679 (= lt!377113 e!463307)))

(assert (=> d!105679 (= c!90011 (and ((_ is Cons!15999) (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241)))) (bvslt (_1!5097 (h!17128 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241))))) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (=> d!105679 (isStrictlySorted!437 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241))))))

(assert (=> d!105679 (= (insertStrictlySorted!268 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241))) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!377113)))

(declare-fun b!830867 () Bool)

(assert (=> b!830867 (= c!90013 (and ((_ is Cons!15999) (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241)))) (bvsgt (_1!5097 (h!17128 (toList!4521 (ite c!89798 call!36243 (ite c!89797 call!36240 call!36241))))) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (=> b!830867 (= e!463310 e!463306)))

(assert (= (and d!105679 c!90011) b!830865))

(assert (= (and d!105679 (not c!90011)) b!830866))

(assert (= (and b!830866 c!90014) b!830864))

(assert (= (and b!830866 (not c!90014)) b!830867))

(assert (= (and b!830867 c!90013) b!830859))

(assert (= (and b!830867 (not c!90013)) b!830863))

(assert (= (or b!830859 b!830863) bm!36300))

(assert (= (or b!830864 bm!36300) bm!36302))

(assert (= (or b!830865 bm!36302) bm!36301))

(assert (= (and bm!36301 c!90012) b!830862))

(assert (= (and bm!36301 (not c!90012)) b!830861))

(assert (= (and d!105679 res!565786) b!830868))

(assert (= (and b!830868 res!565785) b!830860))

(declare-fun m!774569 () Bool)

(assert (=> b!830868 m!774569))

(declare-fun m!774571 () Bool)

(assert (=> d!105679 m!774571))

(declare-fun m!774573 () Bool)

(assert (=> d!105679 m!774573))

(declare-fun m!774575 () Bool)

(assert (=> bm!36301 m!774575))

(declare-fun m!774577 () Bool)

(assert (=> b!830862 m!774577))

(declare-fun m!774579 () Bool)

(assert (=> b!830860 m!774579))

(assert (=> d!105317 d!105679))

(declare-fun e!463312 () Option!420)

(declare-fun b!830871 () Bool)

(assert (=> b!830871 (= e!463312 (getValueByKey!414 (t!22376 (toList!4521 lt!376971)) (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))

(declare-fun b!830872 () Bool)

(assert (=> b!830872 (= e!463312 None!418)))

(declare-fun d!105681 () Bool)

(declare-fun c!90015 () Bool)

(assert (=> d!105681 (= c!90015 (and ((_ is Cons!15999) (toList!4521 lt!376971)) (= (_1!5097 (h!17128 (toList!4521 lt!376971))) (_1!5097 (tuple2!10175 lt!376785 lt!376783)))))))

(declare-fun e!463311 () Option!420)

(assert (=> d!105681 (= (getValueByKey!414 (toList!4521 lt!376971) (_1!5097 (tuple2!10175 lt!376785 lt!376783))) e!463311)))

(declare-fun b!830869 () Bool)

(assert (=> b!830869 (= e!463311 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376971)))))))

(declare-fun b!830870 () Bool)

(assert (=> b!830870 (= e!463311 e!463312)))

(declare-fun c!90016 () Bool)

(assert (=> b!830870 (= c!90016 (and ((_ is Cons!15999) (toList!4521 lt!376971)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376971))) (_1!5097 (tuple2!10175 lt!376785 lt!376783))))))))

(assert (= (and d!105681 c!90015) b!830869))

(assert (= (and d!105681 (not c!90015)) b!830870))

(assert (= (and b!830870 c!90016) b!830871))

(assert (= (and b!830870 (not c!90016)) b!830872))

(declare-fun m!774581 () Bool)

(assert (=> b!830871 m!774581))

(assert (=> b!830521 d!105681))

(declare-fun d!105683 () Bool)

(assert (=> d!105683 (= (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754))) lt!376753)) (v!10091 (getValueByKey!414 (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754))) lt!376753)))))

(assert (=> d!105477 d!105683))

(declare-fun e!463314 () Option!420)

(declare-fun b!830875 () Bool)

(assert (=> b!830875 (= e!463314 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754)))) lt!376753))))

(declare-fun b!830876 () Bool)

(assert (=> b!830876 (= e!463314 None!418)))

(declare-fun c!90017 () Bool)

(declare-fun d!105685 () Bool)

(assert (=> d!105685 (= c!90017 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754))))) lt!376753)))))

(declare-fun e!463313 () Option!420)

(assert (=> d!105685 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754))) lt!376753) e!463313)))

(declare-fun b!830873 () Bool)

(assert (=> b!830873 (= e!463313 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754)))))))))

(declare-fun b!830874 () Bool)

(assert (=> b!830874 (= e!463313 e!463314)))

(declare-fun c!90018 () Bool)

(assert (=> b!830874 (= c!90018 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754))))) lt!376753))))))

(assert (= (and d!105685 c!90017) b!830873))

(assert (= (and d!105685 (not c!90017)) b!830874))

(assert (= (and b!830874 c!90018) b!830875))

(assert (= (and b!830874 (not c!90018)) b!830876))

(declare-fun m!774583 () Bool)

(assert (=> b!830875 m!774583))

(assert (=> d!105477 d!105685))

(declare-fun d!105687 () Bool)

(declare-fun res!565787 () Bool)

(declare-fun e!463315 () Bool)

(assert (=> d!105687 (=> res!565787 e!463315)))

(assert (=> d!105687 (= res!565787 (and ((_ is Cons!15999) (toList!4521 lt!376747)) (= (_1!5097 (h!17128 (toList!4521 lt!376747))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!105687 (= (containsKey!400 (toList!4521 lt!376747) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) e!463315)))

(declare-fun b!830877 () Bool)

(declare-fun e!463316 () Bool)

(assert (=> b!830877 (= e!463315 e!463316)))

(declare-fun res!565788 () Bool)

(assert (=> b!830877 (=> (not res!565788) (not e!463316))))

(assert (=> b!830877 (= res!565788 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376747))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376747))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) ((_ is Cons!15999) (toList!4521 lt!376747)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376747))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun b!830878 () Bool)

(assert (=> b!830878 (= e!463316 (containsKey!400 (t!22376 (toList!4521 lt!376747)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105687 (not res!565787)) b!830877))

(assert (= (and b!830877 res!565788) b!830878))

(assert (=> b!830878 m!773277))

(declare-fun m!774585 () Bool)

(assert (=> b!830878 m!774585))

(assert (=> d!105373 d!105687))

(declare-fun d!105689 () Bool)

(declare-fun res!565789 () Bool)

(declare-fun e!463317 () Bool)

(assert (=> d!105689 (=> res!565789 e!463317)))

(assert (=> d!105689 (= res!565789 (and ((_ is Cons!15999) (toList!4521 lt!376807)) (= (_1!5097 (h!17128 (toList!4521 lt!376807))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!105689 (= (containsKey!400 (toList!4521 lt!376807) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!463317)))

(declare-fun b!830879 () Bool)

(declare-fun e!463318 () Bool)

(assert (=> b!830879 (= e!463317 e!463318)))

(declare-fun res!565790 () Bool)

(assert (=> b!830879 (=> (not res!565790) (not e!463318))))

(assert (=> b!830879 (= res!565790 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376807))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376807))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Cons!15999) (toList!4521 lt!376807)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376807))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!830880 () Bool)

(assert (=> b!830880 (= e!463318 (containsKey!400 (t!22376 (toList!4521 lt!376807)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!105689 (not res!565789)) b!830879))

(assert (= (and b!830879 res!565790) b!830880))

(declare-fun m!774587 () Bool)

(assert (=> b!830880 m!774587))

(assert (=> d!105385 d!105689))

(declare-fun b!830881 () Bool)

(declare-fun e!463321 () Bool)

(declare-fun call!36306 () Bool)

(assert (=> b!830881 (= e!463321 call!36306)))

(declare-fun d!105691 () Bool)

(declare-fun res!565791 () Bool)

(declare-fun e!463319 () Bool)

(assert (=> d!105691 (=> res!565791 e!463319)))

(assert (=> d!105691 (= res!565791 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> d!105691 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!976 mask!1312) e!463319)))

(declare-fun b!830882 () Bool)

(declare-fun e!463320 () Bool)

(assert (=> b!830882 (= e!463320 e!463321)))

(declare-fun lt!377114 () (_ BitVec 64))

(assert (=> b!830882 (= lt!377114 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!377116 () Unit!28435)

(assert (=> b!830882 (= lt!377116 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!377114 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!830882 (arrayContainsKey!0 _keys!976 lt!377114 #b00000000000000000000000000000000)))

(declare-fun lt!377115 () Unit!28435)

(assert (=> b!830882 (= lt!377115 lt!377116)))

(declare-fun res!565792 () Bool)

(assert (=> b!830882 (= res!565792 (= (seekEntryOrOpen!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) _keys!976 mask!1312) (Found!8733 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!830882 (=> (not res!565792) (not e!463321))))

(declare-fun b!830883 () Bool)

(assert (=> b!830883 (= e!463320 call!36306)))

(declare-fun bm!36303 () Bool)

(assert (=> bm!36303 (= call!36306 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!830884 () Bool)

(assert (=> b!830884 (= e!463319 e!463320)))

(declare-fun c!90019 () Bool)

(assert (=> b!830884 (= c!90019 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!105691 (not res!565791)) b!830884))

(assert (= (and b!830884 c!90019) b!830882))

(assert (= (and b!830884 (not c!90019)) b!830883))

(assert (= (and b!830882 res!565792) b!830881))

(assert (= (or b!830881 b!830883) bm!36303))

(assert (=> b!830882 m!774259))

(declare-fun m!774589 () Bool)

(assert (=> b!830882 m!774589))

(declare-fun m!774591 () Bool)

(assert (=> b!830882 m!774591))

(assert (=> b!830882 m!774259))

(declare-fun m!774593 () Bool)

(assert (=> b!830882 m!774593))

(declare-fun m!774595 () Bool)

(assert (=> bm!36303 m!774595))

(assert (=> b!830884 m!774259))

(assert (=> b!830884 m!774259))

(assert (=> b!830884 m!774277))

(assert (=> bm!36279 d!105691))

(declare-fun d!105693 () Bool)

(assert (=> d!105693 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23213 () Bool)

(assert (= bs!23213 d!105693))

(assert (=> bs!23213 m!773571))

(declare-fun m!774597 () Bool)

(assert (=> bs!23213 m!774597))

(assert (=> b!830335 d!105693))

(declare-fun b!830887 () Bool)

(declare-fun e!463323 () Option!420)

(assert (=> b!830887 (= e!463323 (getValueByKey!414 (t!22376 (toList!4521 lt!376713)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830888 () Bool)

(assert (=> b!830888 (= e!463323 None!418)))

(declare-fun d!105695 () Bool)

(declare-fun c!90020 () Bool)

(assert (=> d!105695 (= c!90020 (and ((_ is Cons!15999) (toList!4521 lt!376713)) (= (_1!5097 (h!17128 (toList!4521 lt!376713))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!463322 () Option!420)

(assert (=> d!105695 (= (getValueByKey!414 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000) e!463322)))

(declare-fun b!830885 () Bool)

(assert (=> b!830885 (= e!463322 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376713)))))))

(declare-fun b!830886 () Bool)

(assert (=> b!830886 (= e!463322 e!463323)))

(declare-fun c!90021 () Bool)

(assert (=> b!830886 (= c!90021 (and ((_ is Cons!15999) (toList!4521 lt!376713)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376713))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!105695 c!90020) b!830885))

(assert (= (and d!105695 (not c!90020)) b!830886))

(assert (= (and b!830886 c!90021) b!830887))

(assert (= (and b!830886 (not c!90021)) b!830888))

(declare-fun m!774599 () Bool)

(assert (=> b!830887 m!774599))

(assert (=> b!830335 d!105695))

(declare-fun d!105697 () Bool)

(assert (=> d!105697 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376737) (_1!5097 lt!376622)))))

(declare-fun lt!377117 () Unit!28435)

(assert (=> d!105697 (= lt!377117 (choose!1429 (toList!4521 lt!376737) (_1!5097 lt!376622)))))

(declare-fun e!463324 () Bool)

(assert (=> d!105697 e!463324))

(declare-fun res!565793 () Bool)

(assert (=> d!105697 (=> (not res!565793) (not e!463324))))

(assert (=> d!105697 (= res!565793 (isStrictlySorted!437 (toList!4521 lt!376737)))))

(assert (=> d!105697 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376737) (_1!5097 lt!376622)) lt!377117)))

(declare-fun b!830889 () Bool)

(assert (=> b!830889 (= e!463324 (containsKey!400 (toList!4521 lt!376737) (_1!5097 lt!376622)))))

(assert (= (and d!105697 res!565793) b!830889))

(assert (=> d!105697 m!773363))

(assert (=> d!105697 m!773363))

(assert (=> d!105697 m!774149))

(declare-fun m!774601 () Bool)

(assert (=> d!105697 m!774601))

(declare-fun m!774603 () Bool)

(assert (=> d!105697 m!774603))

(assert (=> b!830889 m!774145))

(assert (=> b!830562 d!105697))

(assert (=> b!830562 d!105529))

(assert (=> b!830562 d!105309))

(declare-fun b!830890 () Bool)

(declare-fun e!463325 () List!16003)

(declare-fun call!36309 () List!16003)

(assert (=> b!830890 (= e!463325 call!36309)))

(declare-fun bm!36304 () Bool)

(declare-fun call!36307 () List!16003)

(assert (=> bm!36304 (= call!36309 call!36307)))

(declare-fun b!830891 () Bool)

(declare-fun e!463327 () Bool)

(declare-fun lt!377118 () List!16003)

(assert (=> b!830891 (= e!463327 (contains!4209 lt!377118 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun e!463328 () List!16003)

(declare-fun c!90025 () Bool)

(declare-fun c!90024 () Bool)

(declare-fun b!830892 () Bool)

(assert (=> b!830892 (= e!463328 (ite c!90025 (t!22376 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))) (ite c!90024 (Cons!15999 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))) (t!22376 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622))))) Nil!16000)))))

(declare-fun b!830893 () Bool)

(assert (=> b!830893 (= e!463328 (insertStrictlySorted!268 (t!22376 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))) (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun b!830894 () Bool)

(assert (=> b!830894 (= e!463325 call!36309)))

(declare-fun bm!36305 () Bool)

(declare-fun call!36308 () List!16003)

(declare-fun c!90022 () Bool)

(assert (=> bm!36305 (= call!36308 ($colon$colon!535 e!463328 (ite c!90022 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628)))))))

(declare-fun c!90023 () Bool)

(assert (=> bm!36305 (= c!90023 c!90022)))

(declare-fun b!830895 () Bool)

(declare-fun e!463329 () List!16003)

(assert (=> b!830895 (= e!463329 call!36307)))

(declare-fun b!830896 () Bool)

(declare-fun e!463326 () List!16003)

(assert (=> b!830896 (= e!463326 call!36308)))

(declare-fun b!830897 () Bool)

(assert (=> b!830897 (= e!463326 e!463329)))

(assert (=> b!830897 (= c!90025 (and ((_ is Cons!15999) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622))))) (_1!5097 lt!376628))))))

(declare-fun b!830899 () Bool)

(declare-fun res!565794 () Bool)

(assert (=> b!830899 (=> (not res!565794) (not e!463327))))

(assert (=> b!830899 (= res!565794 (containsKey!400 lt!377118 (_1!5097 lt!376628)))))

(declare-fun bm!36306 () Bool)

(assert (=> bm!36306 (= call!36307 call!36308)))

(declare-fun d!105699 () Bool)

(assert (=> d!105699 e!463327))

(declare-fun res!565795 () Bool)

(assert (=> d!105699 (=> (not res!565795) (not e!463327))))

(assert (=> d!105699 (= res!565795 (isStrictlySorted!437 lt!377118))))

(assert (=> d!105699 (= lt!377118 e!463326)))

(assert (=> d!105699 (= c!90022 (and ((_ is Cons!15999) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))) (bvslt (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622))))) (_1!5097 lt!376628))))))

(assert (=> d!105699 (isStrictlySorted!437 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622))))))

(assert (=> d!105699 (= (insertStrictlySorted!268 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622))) (_1!5097 lt!376628) (_2!5097 lt!376628)) lt!377118)))

(declare-fun b!830898 () Bool)

(assert (=> b!830898 (= c!90024 (and ((_ is Cons!15999) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))) (bvsgt (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622))))) (_1!5097 lt!376628))))))

(assert (=> b!830898 (= e!463329 e!463325)))

(assert (= (and d!105699 c!90022) b!830896))

(assert (= (and d!105699 (not c!90022)) b!830897))

(assert (= (and b!830897 c!90025) b!830895))

(assert (= (and b!830897 (not c!90025)) b!830898))

(assert (= (and b!830898 c!90024) b!830890))

(assert (= (and b!830898 (not c!90024)) b!830894))

(assert (= (or b!830890 b!830894) bm!36304))

(assert (= (or b!830895 bm!36304) bm!36306))

(assert (= (or b!830896 bm!36306) bm!36305))

(assert (= (and bm!36305 c!90023) b!830893))

(assert (= (and bm!36305 (not c!90023)) b!830892))

(assert (= (and d!105699 res!565795) b!830899))

(assert (= (and b!830899 res!565794) b!830891))

(declare-fun m!774605 () Bool)

(assert (=> b!830899 m!774605))

(declare-fun m!774607 () Bool)

(assert (=> d!105699 m!774607))

(declare-fun m!774609 () Bool)

(assert (=> d!105699 m!774609))

(declare-fun m!774611 () Bool)

(assert (=> bm!36305 m!774611))

(declare-fun m!774613 () Bool)

(assert (=> b!830893 m!774613))

(declare-fun m!774615 () Bool)

(assert (=> b!830891 m!774615))

(assert (=> b!830538 d!105699))

(declare-fun d!105701 () Bool)

(declare-fun res!565796 () Bool)

(declare-fun e!463330 () Bool)

(assert (=> d!105701 (=> res!565796 e!463330)))

(assert (=> d!105701 (= res!565796 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))))) lt!376708)))))

(assert (=> d!105701 (= (containsKey!400 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!376708) e!463330)))

(declare-fun b!830900 () Bool)

(declare-fun e!463331 () Bool)

(assert (=> b!830900 (= e!463330 e!463331)))

(declare-fun res!565797 () Bool)

(assert (=> b!830900 (=> (not res!565797) (not e!463331))))

(assert (=> b!830900 (= res!565797 (and (or (not ((_ is Cons!15999) (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))))) (bvsle (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))))) lt!376708)) ((_ is Cons!15999) (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)))) (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34))))) lt!376708)))))

(declare-fun b!830901 () Bool)

(assert (=> b!830901 (= e!463331 (containsKey!400 (t!22376 (toList!4521 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)))) lt!376708))))

(assert (= (and d!105701 (not res!565796)) b!830900))

(assert (= (and b!830900 res!565797) b!830901))

(declare-fun m!774617 () Bool)

(assert (=> b!830901 m!774617))

(assert (=> d!105347 d!105701))

(declare-fun b!830920 () Bool)

(declare-fun e!463345 () SeekEntryResult!8733)

(assert (=> b!830920 (= e!463345 (Intermediate!8733 false (toIndex!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) mask!1312) #b00000000000000000000000000000000))))

(declare-fun d!105703 () Bool)

(declare-fun e!463344 () Bool)

(assert (=> d!105703 e!463344))

(declare-fun c!90033 () Bool)

(declare-fun lt!377124 () SeekEntryResult!8733)

(assert (=> d!105703 (= c!90033 (and ((_ is Intermediate!8733) lt!377124) (undefined!9545 lt!377124)))))

(declare-fun e!463343 () SeekEntryResult!8733)

(assert (=> d!105703 (= lt!377124 e!463343)))

(declare-fun c!90034 () Bool)

(assert (=> d!105703 (= c!90034 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!377123 () (_ BitVec 64))

(assert (=> d!105703 (= lt!377123 (select (arr!22311 _keys!976) (toIndex!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) mask!1312)))))

(assert (=> d!105703 (validMask!0 mask!1312)))

(assert (=> d!105703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) mask!1312) (select (arr!22311 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) lt!377124)))

(declare-fun b!830921 () Bool)

(assert (=> b!830921 (= e!463343 (Intermediate!8733 true (toIndex!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) mask!1312) #b00000000000000000000000000000000))))

(declare-fun b!830922 () Bool)

(assert (=> b!830922 (and (bvsge (index!37304 lt!377124) #b00000000000000000000000000000000) (bvslt (index!37304 lt!377124) (size!22732 _keys!976)))))

(declare-fun res!565805 () Bool)

(assert (=> b!830922 (= res!565805 (= (select (arr!22311 _keys!976) (index!37304 lt!377124)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!463342 () Bool)

(assert (=> b!830922 (=> res!565805 e!463342)))

(declare-fun e!463346 () Bool)

(assert (=> b!830922 (= e!463346 e!463342)))

(declare-fun b!830923 () Bool)

(assert (=> b!830923 (= e!463343 e!463345)))

(declare-fun c!90032 () Bool)

(assert (=> b!830923 (= c!90032 (or (= lt!377123 (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) (= (bvadd lt!377123 lt!377123) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!830924 () Bool)

(assert (=> b!830924 (= e!463344 e!463346)))

(declare-fun res!565804 () Bool)

(assert (=> b!830924 (= res!565804 (and ((_ is Intermediate!8733) lt!377124) (not (undefined!9545 lt!377124)) (bvslt (x!70091 lt!377124) #b01111111111111111111111111111110) (bvsge (x!70091 lt!377124) #b00000000000000000000000000000000) (bvsge (x!70091 lt!377124) #b00000000000000000000000000000000)))))

(assert (=> b!830924 (=> (not res!565804) (not e!463346))))

(declare-fun b!830925 () Bool)

(assert (=> b!830925 (and (bvsge (index!37304 lt!377124) #b00000000000000000000000000000000) (bvslt (index!37304 lt!377124) (size!22732 _keys!976)))))

(declare-fun res!565806 () Bool)

(assert (=> b!830925 (= res!565806 (= (select (arr!22311 _keys!976) (index!37304 lt!377124)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830925 (=> res!565806 e!463342)))

(declare-fun b!830926 () Bool)

(assert (=> b!830926 (= e!463344 (bvsge (x!70091 lt!377124) #b01111111111111111111111111111110))))

(declare-fun b!830927 () Bool)

(assert (=> b!830927 (and (bvsge (index!37304 lt!377124) #b00000000000000000000000000000000) (bvslt (index!37304 lt!377124) (size!22732 _keys!976)))))

(assert (=> b!830927 (= e!463342 (= (select (arr!22311 _keys!976) (index!37304 lt!377124)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830928 () Bool)

(assert (=> b!830928 (= e!463345 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) mask!1312) #b00000000000000000000000000000000 mask!1312) (select (arr!22311 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312))))

(assert (= (and d!105703 c!90034) b!830921))

(assert (= (and d!105703 (not c!90034)) b!830923))

(assert (= (and b!830923 c!90032) b!830920))

(assert (= (and b!830923 (not c!90032)) b!830928))

(assert (= (and d!105703 c!90033) b!830926))

(assert (= (and d!105703 (not c!90033)) b!830924))

(assert (= (and b!830924 res!565804) b!830922))

(assert (= (and b!830922 (not res!565805)) b!830925))

(assert (= (and b!830925 (not res!565806)) b!830927))

(declare-fun m!774619 () Bool)

(assert (=> b!830922 m!774619))

(assert (=> d!105703 m!774195))

(declare-fun m!774621 () Bool)

(assert (=> d!105703 m!774621))

(assert (=> d!105703 m!773209))

(assert (=> b!830927 m!774619))

(assert (=> b!830928 m!774195))

(declare-fun m!774623 () Bool)

(assert (=> b!830928 m!774623))

(assert (=> b!830928 m!774623))

(assert (=> b!830928 m!773277))

(declare-fun m!774625 () Bool)

(assert (=> b!830928 m!774625))

(assert (=> b!830925 m!774619))

(assert (=> d!105503 d!105703))

(declare-fun d!105705 () Bool)

(declare-fun lt!377130 () (_ BitVec 32))

(declare-fun lt!377129 () (_ BitVec 32))

(assert (=> d!105705 (= lt!377130 (bvmul (bvxor lt!377129 (bvlshr lt!377129 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!105705 (= lt!377129 ((_ extract 31 0) (bvand (bvxor (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (bvlshr (select (arr!22311 _keys!976) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!105705 (and (bvsge mask!1312 #b00000000000000000000000000000000) (let ((res!565807 (let ((h!17132 ((_ extract 31 0) (bvand (bvxor (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (bvlshr (select (arr!22311 _keys!976) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!70102 (bvmul (bvxor h!17132 (bvlshr h!17132 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!70102 (bvlshr x!70102 #b00000000000000000000000000001101)) mask!1312))))) (and (bvslt res!565807 (bvadd mask!1312 #b00000000000000000000000000000001)) (bvsge res!565807 #b00000000000000000000000000000000))))))

(assert (=> d!105705 (= (toIndex!0 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) mask!1312) (bvand (bvxor lt!377130 (bvlshr lt!377130 #b00000000000000000000000000001101)) mask!1312))))

(assert (=> d!105503 d!105705))

(assert (=> d!105503 d!105279))

(assert (=> b!830292 d!105531))

(declare-fun d!105707 () Bool)

(declare-fun res!565808 () Bool)

(declare-fun e!463347 () Bool)

(assert (=> d!105707 (=> res!565808 e!463347)))

(assert (=> d!105707 (= res!565808 (and ((_ is Cons!15999) lt!376928) (= (_1!5097 (h!17128 lt!376928)) (_1!5097 lt!376628))))))

(assert (=> d!105707 (= (containsKey!400 lt!376928 (_1!5097 lt!376628)) e!463347)))

(declare-fun b!830929 () Bool)

(declare-fun e!463348 () Bool)

(assert (=> b!830929 (= e!463347 e!463348)))

(declare-fun res!565809 () Bool)

(assert (=> b!830929 (=> (not res!565809) (not e!463348))))

(assert (=> b!830929 (= res!565809 (and (or (not ((_ is Cons!15999) lt!376928)) (bvsle (_1!5097 (h!17128 lt!376928)) (_1!5097 lt!376628))) ((_ is Cons!15999) lt!376928) (bvslt (_1!5097 (h!17128 lt!376928)) (_1!5097 lt!376628))))))

(declare-fun b!830930 () Bool)

(assert (=> b!830930 (= e!463348 (containsKey!400 (t!22376 lt!376928) (_1!5097 lt!376628)))))

(assert (= (and d!105707 (not res!565808)) b!830929))

(assert (= (and b!830929 res!565809) b!830930))

(declare-fun m!774627 () Bool)

(assert (=> b!830930 m!774627))

(assert (=> b!830475 d!105707))

(declare-fun d!105709 () Bool)

(assert (=> d!105709 (= (isEmpty!660 (toList!4521 lt!376786)) ((_ is Nil!16000) (toList!4521 lt!376786)))))

(assert (=> d!105437 d!105709))

(declare-fun d!105711 () Bool)

(declare-fun e!463350 () Bool)

(assert (=> d!105711 e!463350))

(declare-fun res!565810 () Bool)

(assert (=> d!105711 (=> res!565810 e!463350)))

(declare-fun lt!377134 () Bool)

(assert (=> d!105711 (= res!565810 (not lt!377134))))

(declare-fun lt!377133 () Bool)

(assert (=> d!105711 (= lt!377134 lt!377133)))

(declare-fun lt!377131 () Unit!28435)

(declare-fun e!463349 () Unit!28435)

(assert (=> d!105711 (= lt!377131 e!463349)))

(declare-fun c!90035 () Bool)

(assert (=> d!105711 (= c!90035 lt!377133)))

(assert (=> d!105711 (= lt!377133 (containsKey!400 (toList!4521 lt!376990) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(assert (=> d!105711 (= (contains!4208 lt!376990 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))) lt!377134)))

(declare-fun b!830931 () Bool)

(declare-fun lt!377132 () Unit!28435)

(assert (=> b!830931 (= e!463349 lt!377132)))

(assert (=> b!830931 (= lt!377132 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376990) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(assert (=> b!830931 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376990) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(declare-fun b!830932 () Bool)

(declare-fun Unit!28467 () Unit!28435)

(assert (=> b!830932 (= e!463349 Unit!28467)))

(declare-fun b!830933 () Bool)

(assert (=> b!830933 (= e!463350 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376990) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))

(assert (= (and d!105711 c!90035) b!830931))

(assert (= (and d!105711 (not c!90035)) b!830932))

(assert (= (and d!105711 (not res!565810)) b!830933))

(declare-fun m!774629 () Bool)

(assert (=> d!105711 m!774629))

(declare-fun m!774631 () Bool)

(assert (=> b!830931 m!774631))

(assert (=> b!830931 m!774071))

(assert (=> b!830931 m!774071))

(declare-fun m!774633 () Bool)

(assert (=> b!830931 m!774633))

(assert (=> b!830933 m!774071))

(assert (=> b!830933 m!774071))

(assert (=> b!830933 m!774633))

(assert (=> d!105465 d!105711))

(declare-fun b!830936 () Bool)

(declare-fun e!463352 () Option!420)

(assert (=> b!830936 (= e!463352 (getValueByKey!414 (t!22376 lt!376992) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(declare-fun b!830937 () Bool)

(assert (=> b!830937 (= e!463352 None!418)))

(declare-fun d!105713 () Bool)

(declare-fun c!90036 () Bool)

(assert (=> d!105713 (= c!90036 (and ((_ is Cons!15999) lt!376992) (= (_1!5097 (h!17128 lt!376992)) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))

(declare-fun e!463351 () Option!420)

(assert (=> d!105713 (= (getValueByKey!414 lt!376992 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))) e!463351)))

(declare-fun b!830934 () Bool)

(assert (=> b!830934 (= e!463351 (Some!419 (_2!5097 (h!17128 lt!376992))))))

(declare-fun b!830935 () Bool)

(assert (=> b!830935 (= e!463351 e!463352)))

(declare-fun c!90037 () Bool)

(assert (=> b!830935 (= c!90037 (and ((_ is Cons!15999) lt!376992) (not (= (_1!5097 (h!17128 lt!376992)) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))))

(assert (= (and d!105713 c!90036) b!830934))

(assert (= (and d!105713 (not c!90036)) b!830935))

(assert (= (and b!830935 c!90037) b!830936))

(assert (= (and b!830935 (not c!90037)) b!830937))

(declare-fun m!774635 () Bool)

(assert (=> b!830936 m!774635))

(assert (=> d!105465 d!105713))

(declare-fun d!105715 () Bool)

(assert (=> d!105715 (= (getValueByKey!414 lt!376992 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(declare-fun lt!377135 () Unit!28435)

(assert (=> d!105715 (= lt!377135 (choose!1427 lt!376992 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(declare-fun e!463353 () Bool)

(assert (=> d!105715 e!463353))

(declare-fun res!565811 () Bool)

(assert (=> d!105715 (=> (not res!565811) (not e!463353))))

(assert (=> d!105715 (= res!565811 (isStrictlySorted!437 lt!376992))))

(assert (=> d!105715 (= (lemmaContainsTupThenGetReturnValue!230 lt!376992 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))) lt!377135)))

(declare-fun b!830938 () Bool)

(declare-fun res!565812 () Bool)

(assert (=> b!830938 (=> (not res!565812) (not e!463353))))

(assert (=> b!830938 (= res!565812 (containsKey!400 lt!376992 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(declare-fun b!830939 () Bool)

(assert (=> b!830939 (= e!463353 (contains!4209 lt!376992 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))

(assert (= (and d!105715 res!565811) b!830938))

(assert (= (and b!830938 res!565812) b!830939))

(assert (=> d!105715 m!774065))

(declare-fun m!774637 () Bool)

(assert (=> d!105715 m!774637))

(declare-fun m!774639 () Bool)

(assert (=> d!105715 m!774639))

(declare-fun m!774641 () Bool)

(assert (=> b!830938 m!774641))

(declare-fun m!774643 () Bool)

(assert (=> b!830939 m!774643))

(assert (=> d!105465 d!105715))

(declare-fun b!830940 () Bool)

(declare-fun e!463354 () List!16003)

(declare-fun call!36312 () List!16003)

(assert (=> b!830940 (= e!463354 call!36312)))

(declare-fun bm!36307 () Bool)

(declare-fun call!36310 () List!16003)

(assert (=> bm!36307 (= call!36312 call!36310)))

(declare-fun e!463356 () Bool)

(declare-fun b!830941 () Bool)

(declare-fun lt!377136 () List!16003)

(assert (=> b!830941 (= e!463356 (contains!4209 lt!377136 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))

(declare-fun c!90040 () Bool)

(declare-fun b!830942 () Bool)

(declare-fun c!90041 () Bool)

(declare-fun e!463357 () List!16003)

(assert (=> b!830942 (= e!463357 (ite c!90041 (t!22376 (toList!4521 lt!376743)) (ite c!90040 (Cons!15999 (h!17128 (toList!4521 lt!376743)) (t!22376 (toList!4521 lt!376743))) Nil!16000)))))

(declare-fun b!830943 () Bool)

(assert (=> b!830943 (= e!463357 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376743)) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(declare-fun b!830944 () Bool)

(assert (=> b!830944 (= e!463354 call!36312)))

(declare-fun call!36311 () List!16003)

(declare-fun bm!36308 () Bool)

(declare-fun c!90038 () Bool)

(assert (=> bm!36308 (= call!36311 ($colon$colon!535 e!463357 (ite c!90038 (h!17128 (toList!4521 lt!376743)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))))

(declare-fun c!90039 () Bool)

(assert (=> bm!36308 (= c!90039 c!90038)))

(declare-fun b!830945 () Bool)

(declare-fun e!463358 () List!16003)

(assert (=> b!830945 (= e!463358 call!36310)))

(declare-fun b!830946 () Bool)

(declare-fun e!463355 () List!16003)

(assert (=> b!830946 (= e!463355 call!36311)))

(declare-fun b!830947 () Bool)

(assert (=> b!830947 (= e!463355 e!463358)))

(assert (=> b!830947 (= c!90041 (and ((_ is Cons!15999) (toList!4521 lt!376743)) (= (_1!5097 (h!17128 (toList!4521 lt!376743))) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))

(declare-fun b!830949 () Bool)

(declare-fun res!565813 () Bool)

(assert (=> b!830949 (=> (not res!565813) (not e!463356))))

(assert (=> b!830949 (= res!565813 (containsKey!400 lt!377136 (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(declare-fun bm!36309 () Bool)

(assert (=> bm!36309 (= call!36310 call!36311)))

(declare-fun d!105717 () Bool)

(assert (=> d!105717 e!463356))

(declare-fun res!565814 () Bool)

(assert (=> d!105717 (=> (not res!565814) (not e!463356))))

(assert (=> d!105717 (= res!565814 (isStrictlySorted!437 lt!377136))))

(assert (=> d!105717 (= lt!377136 e!463355)))

(assert (=> d!105717 (= c!90038 (and ((_ is Cons!15999) (toList!4521 lt!376743)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376743))) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))

(assert (=> d!105717 (isStrictlySorted!437 (toList!4521 lt!376743))))

(assert (=> d!105717 (= (insertStrictlySorted!268 (toList!4521 lt!376743) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))) lt!377136)))

(declare-fun b!830948 () Bool)

(assert (=> b!830948 (= c!90040 (and ((_ is Cons!15999) (toList!4521 lt!376743)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376743))) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))

(assert (=> b!830948 (= e!463358 e!463354)))

(assert (= (and d!105717 c!90038) b!830946))

(assert (= (and d!105717 (not c!90038)) b!830947))

(assert (= (and b!830947 c!90041) b!830945))

(assert (= (and b!830947 (not c!90041)) b!830948))

(assert (= (and b!830948 c!90040) b!830940))

(assert (= (and b!830948 (not c!90040)) b!830944))

(assert (= (or b!830940 b!830944) bm!36307))

(assert (= (or b!830945 bm!36307) bm!36309))

(assert (= (or b!830946 bm!36309) bm!36308))

(assert (= (and bm!36308 c!90039) b!830943))

(assert (= (and bm!36308 (not c!90039)) b!830942))

(assert (= (and d!105717 res!565814) b!830949))

(assert (= (and b!830949 res!565813) b!830941))

(declare-fun m!774645 () Bool)

(assert (=> b!830949 m!774645))

(declare-fun m!774647 () Bool)

(assert (=> d!105717 m!774647))

(declare-fun m!774649 () Bool)

(assert (=> d!105717 m!774649))

(declare-fun m!774651 () Bool)

(assert (=> bm!36308 m!774651))

(declare-fun m!774653 () Bool)

(assert (=> b!830943 m!774653))

(declare-fun m!774655 () Bool)

(assert (=> b!830941 m!774655))

(assert (=> d!105465 d!105717))

(declare-fun b!830952 () Bool)

(declare-fun e!463360 () Option!420)

(assert (=> b!830952 (= e!463360 (getValueByKey!414 (t!22376 (toList!4521 lt!376998)) (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))

(declare-fun b!830953 () Bool)

(assert (=> b!830953 (= e!463360 None!418)))

(declare-fun d!105719 () Bool)

(declare-fun c!90042 () Bool)

(assert (=> d!105719 (= c!90042 (and ((_ is Cons!15999) (toList!4521 lt!376998)) (= (_1!5097 (h!17128 (toList!4521 lt!376998))) (_1!5097 (tuple2!10175 lt!376746 minValue!754)))))))

(declare-fun e!463359 () Option!420)

(assert (=> d!105719 (= (getValueByKey!414 (toList!4521 lt!376998) (_1!5097 (tuple2!10175 lt!376746 minValue!754))) e!463359)))

(declare-fun b!830950 () Bool)

(assert (=> b!830950 (= e!463359 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376998)))))))

(declare-fun b!830951 () Bool)

(assert (=> b!830951 (= e!463359 e!463360)))

(declare-fun c!90043 () Bool)

(assert (=> b!830951 (= c!90043 (and ((_ is Cons!15999) (toList!4521 lt!376998)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376998))) (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))))

(assert (= (and d!105719 c!90042) b!830950))

(assert (= (and d!105719 (not c!90042)) b!830951))

(assert (= (and b!830951 c!90043) b!830952))

(assert (= (and b!830951 (not c!90043)) b!830953))

(declare-fun m!774657 () Bool)

(assert (=> b!830952 m!774657))

(assert (=> b!830553 d!105719))

(declare-fun lt!377137 () Bool)

(declare-fun d!105721 () Bool)

(assert (=> d!105721 (= lt!377137 (select (content!389 (toList!4521 lt!376880)) (tuple2!10175 lt!376712 minValue!754)))))

(declare-fun e!463362 () Bool)

(assert (=> d!105721 (= lt!377137 e!463362)))

(declare-fun res!565816 () Bool)

(assert (=> d!105721 (=> (not res!565816) (not e!463362))))

(assert (=> d!105721 (= res!565816 ((_ is Cons!15999) (toList!4521 lt!376880)))))

(assert (=> d!105721 (= (contains!4209 (toList!4521 lt!376880) (tuple2!10175 lt!376712 minValue!754)) lt!377137)))

(declare-fun b!830954 () Bool)

(declare-fun e!463361 () Bool)

(assert (=> b!830954 (= e!463362 e!463361)))

(declare-fun res!565815 () Bool)

(assert (=> b!830954 (=> res!565815 e!463361)))

(assert (=> b!830954 (= res!565815 (= (h!17128 (toList!4521 lt!376880)) (tuple2!10175 lt!376712 minValue!754)))))

(declare-fun b!830955 () Bool)

(assert (=> b!830955 (= e!463361 (contains!4209 (t!22376 (toList!4521 lt!376880)) (tuple2!10175 lt!376712 minValue!754)))))

(assert (= (and d!105721 res!565816) b!830954))

(assert (= (and b!830954 (not res!565815)) b!830955))

(declare-fun m!774659 () Bool)

(assert (=> d!105721 m!774659))

(declare-fun m!774661 () Bool)

(assert (=> d!105721 m!774661))

(declare-fun m!774663 () Bool)

(assert (=> b!830955 m!774663))

(assert (=> b!830356 d!105721))

(declare-fun d!105723 () Bool)

(assert (=> d!105723 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!10091 (getValueByKey!414 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105307 d!105723))

(assert (=> d!105307 d!105695))

(declare-fun b!830958 () Bool)

(declare-fun e!463364 () Option!420)

(assert (=> b!830958 (= e!463364 (getValueByKey!414 (t!22376 (t!22376 (toList!4521 lt!376737))) (_1!5097 lt!376622)))))

(declare-fun b!830959 () Bool)

(assert (=> b!830959 (= e!463364 None!418)))

(declare-fun d!105725 () Bool)

(declare-fun c!90044 () Bool)

(assert (=> d!105725 (= c!90044 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376737))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376737)))) (_1!5097 lt!376622))))))

(declare-fun e!463363 () Option!420)

(assert (=> d!105725 (= (getValueByKey!414 (t!22376 (toList!4521 lt!376737)) (_1!5097 lt!376622)) e!463363)))

(declare-fun b!830956 () Bool)

(assert (=> b!830956 (= e!463363 (Some!419 (_2!5097 (h!17128 (t!22376 (toList!4521 lt!376737))))))))

(declare-fun b!830957 () Bool)

(assert (=> b!830957 (= e!463363 e!463364)))

(declare-fun c!90045 () Bool)

(assert (=> b!830957 (= c!90045 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376737))) (not (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376737)))) (_1!5097 lt!376622)))))))

(assert (= (and d!105725 c!90044) b!830956))

(assert (= (and d!105725 (not c!90044)) b!830957))

(assert (= (and b!830957 c!90045) b!830958))

(assert (= (and b!830957 (not c!90045)) b!830959))

(declare-fun m!774665 () Bool)

(assert (=> b!830958 m!774665))

(assert (=> b!830309 d!105725))

(declare-fun d!105727 () Bool)

(declare-fun lt!377138 () Bool)

(assert (=> d!105727 (= lt!377138 (select (content!389 (toList!4521 lt!376861)) (tuple2!10175 lt!376718 minValue!754)))))

(declare-fun e!463366 () Bool)

(assert (=> d!105727 (= lt!377138 e!463366)))

(declare-fun res!565818 () Bool)

(assert (=> d!105727 (=> (not res!565818) (not e!463366))))

(assert (=> d!105727 (= res!565818 ((_ is Cons!15999) (toList!4521 lt!376861)))))

(assert (=> d!105727 (= (contains!4209 (toList!4521 lt!376861) (tuple2!10175 lt!376718 minValue!754)) lt!377138)))

(declare-fun b!830960 () Bool)

(declare-fun e!463365 () Bool)

(assert (=> b!830960 (= e!463366 e!463365)))

(declare-fun res!565817 () Bool)

(assert (=> b!830960 (=> res!565817 e!463365)))

(assert (=> b!830960 (= res!565817 (= (h!17128 (toList!4521 lt!376861)) (tuple2!10175 lt!376718 minValue!754)))))

(declare-fun b!830961 () Bool)

(assert (=> b!830961 (= e!463365 (contains!4209 (t!22376 (toList!4521 lt!376861)) (tuple2!10175 lt!376718 minValue!754)))))

(assert (= (and d!105727 res!565818) b!830960))

(assert (= (and b!830960 (not res!565817)) b!830961))

(declare-fun m!774667 () Bool)

(assert (=> d!105727 m!774667))

(declare-fun m!774669 () Bool)

(assert (=> d!105727 m!774669))

(declare-fun m!774671 () Bool)

(assert (=> b!830961 m!774671))

(assert (=> b!830346 d!105727))

(declare-fun b!830964 () Bool)

(declare-fun e!463368 () Option!420)

(assert (=> b!830964 (= e!463368 (getValueByKey!414 (t!22376 (toList!4521 lt!377019)) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!830965 () Bool)

(assert (=> b!830965 (= e!463368 None!418)))

(declare-fun d!105729 () Bool)

(declare-fun c!90046 () Bool)

(assert (=> d!105729 (= c!90046 (and ((_ is Cons!15999) (toList!4521 lt!377019)) (= (_1!5097 (h!17128 (toList!4521 lt!377019))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!463367 () Option!420)

(assert (=> d!105729 (= (getValueByKey!414 (toList!4521 lt!377019) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) e!463367)))

(declare-fun b!830962 () Bool)

(assert (=> b!830962 (= e!463367 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!377019)))))))

(declare-fun b!830963 () Bool)

(assert (=> b!830963 (= e!463367 e!463368)))

(declare-fun c!90047 () Bool)

(assert (=> b!830963 (= c!90047 (and ((_ is Cons!15999) (toList!4521 lt!377019)) (not (= (_1!5097 (h!17128 (toList!4521 lt!377019))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!105729 c!90046) b!830962))

(assert (= (and d!105729 (not c!90046)) b!830963))

(assert (= (and b!830963 c!90047) b!830964))

(assert (= (and b!830963 (not c!90047)) b!830965))

(declare-fun m!774673 () Bool)

(assert (=> b!830964 m!774673))

(assert (=> b!830581 d!105729))

(declare-fun d!105731 () Bool)

(declare-fun lt!377139 () Bool)

(assert (=> d!105731 (= lt!377139 (select (content!389 lt!376735) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun e!463370 () Bool)

(assert (=> d!105731 (= lt!377139 e!463370)))

(declare-fun res!565820 () Bool)

(assert (=> d!105731 (=> (not res!565820) (not e!463370))))

(assert (=> d!105731 (= res!565820 ((_ is Cons!15999) lt!376735))))

(assert (=> d!105731 (= (contains!4209 lt!376735 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))) lt!377139)))

(declare-fun b!830966 () Bool)

(declare-fun e!463369 () Bool)

(assert (=> b!830966 (= e!463370 e!463369)))

(declare-fun res!565819 () Bool)

(assert (=> b!830966 (=> res!565819 e!463369)))

(assert (=> b!830966 (= res!565819 (= (h!17128 lt!376735) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun b!830967 () Bool)

(assert (=> b!830967 (= e!463369 (contains!4209 (t!22376 lt!376735) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(assert (= (and d!105731 res!565820) b!830966))

(assert (= (and b!830966 (not res!565819)) b!830967))

(declare-fun m!774675 () Bool)

(assert (=> d!105731 m!774675))

(declare-fun m!774677 () Bool)

(assert (=> d!105731 m!774677))

(declare-fun m!774679 () Bool)

(assert (=> b!830967 m!774679))

(assert (=> b!830534 d!105731))

(assert (=> b!830313 d!105531))

(assert (=> d!105485 d!105473))

(declare-fun d!105733 () Bool)

(assert (=> d!105733 (= (apply!372 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34)) lt!376756) (apply!372 lt!376743 lt!376756))))

(assert (=> d!105733 true))

(declare-fun _$34!1139 () Unit!28435)

(assert (=> d!105733 (= (choose!1425 lt!376743 lt!376757 zeroValueBefore!34 lt!376756) _$34!1139)))

(declare-fun bs!23214 () Bool)

(assert (= bs!23214 d!105733))

(assert (=> bs!23214 m!773385))

(assert (=> bs!23214 m!773385))

(assert (=> bs!23214 m!773387))

(assert (=> bs!23214 m!773405))

(assert (=> d!105485 d!105733))

(assert (=> d!105485 d!105481))

(declare-fun d!105735 () Bool)

(declare-fun e!463372 () Bool)

(assert (=> d!105735 e!463372))

(declare-fun res!565821 () Bool)

(assert (=> d!105735 (=> res!565821 e!463372)))

(declare-fun lt!377143 () Bool)

(assert (=> d!105735 (= res!565821 (not lt!377143))))

(declare-fun lt!377142 () Bool)

(assert (=> d!105735 (= lt!377143 lt!377142)))

(declare-fun lt!377140 () Unit!28435)

(declare-fun e!463371 () Unit!28435)

(assert (=> d!105735 (= lt!377140 e!463371)))

(declare-fun c!90048 () Bool)

(assert (=> d!105735 (= c!90048 lt!377142)))

(assert (=> d!105735 (= lt!377142 (containsKey!400 (toList!4521 lt!376743) lt!376756))))

(assert (=> d!105735 (= (contains!4208 lt!376743 lt!376756) lt!377143)))

(declare-fun b!830969 () Bool)

(declare-fun lt!377141 () Unit!28435)

(assert (=> b!830969 (= e!463371 lt!377141)))

(assert (=> b!830969 (= lt!377141 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376743) lt!376756))))

(assert (=> b!830969 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376743) lt!376756))))

(declare-fun b!830970 () Bool)

(declare-fun Unit!28468 () Unit!28435)

(assert (=> b!830970 (= e!463371 Unit!28468)))

(declare-fun b!830971 () Bool)

(assert (=> b!830971 (= e!463372 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376743) lt!376756)))))

(assert (= (and d!105735 c!90048) b!830969))

(assert (= (and d!105735 (not c!90048)) b!830970))

(assert (= (and d!105735 (not res!565821)) b!830971))

(declare-fun m!774681 () Bool)

(assert (=> d!105735 m!774681))

(declare-fun m!774683 () Bool)

(assert (=> b!830969 m!774683))

(assert (=> b!830969 m!774127))

(assert (=> b!830969 m!774127))

(declare-fun m!774685 () Bool)

(assert (=> b!830969 m!774685))

(assert (=> b!830971 m!774127))

(assert (=> b!830971 m!774127))

(assert (=> b!830971 m!774685))

(assert (=> d!105485 d!105735))

(assert (=> d!105485 d!105465))

(assert (=> d!105329 d!105351))

(assert (=> d!105329 d!105353))

(declare-fun d!105737 () Bool)

(declare-fun e!463374 () Bool)

(assert (=> d!105737 e!463374))

(declare-fun res!565822 () Bool)

(assert (=> d!105737 (=> res!565822 e!463374)))

(declare-fun lt!377147 () Bool)

(assert (=> d!105737 (= res!565822 (not lt!377147))))

(declare-fun lt!377146 () Bool)

(assert (=> d!105737 (= lt!377147 lt!377146)))

(declare-fun lt!377144 () Unit!28435)

(declare-fun e!463373 () Unit!28435)

(assert (=> d!105737 (= lt!377144 e!463373)))

(declare-fun c!90049 () Bool)

(assert (=> d!105737 (= c!90049 lt!377146)))

(assert (=> d!105737 (= lt!377146 (containsKey!400 (toList!4521 lt!376715) lt!376719))))

(assert (=> d!105737 (= (contains!4208 lt!376715 lt!376719) lt!377147)))

(declare-fun b!830972 () Bool)

(declare-fun lt!377145 () Unit!28435)

(assert (=> b!830972 (= e!463373 lt!377145)))

(assert (=> b!830972 (= lt!377145 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376715) lt!376719))))

(assert (=> b!830972 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376715) lt!376719))))

(declare-fun b!830973 () Bool)

(declare-fun Unit!28469 () Unit!28435)

(assert (=> b!830973 (= e!463373 Unit!28469)))

(declare-fun b!830974 () Bool)

(assert (=> b!830974 (= e!463374 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376715) lt!376719)))))

(assert (= (and d!105737 c!90049) b!830972))

(assert (= (and d!105737 (not c!90049)) b!830973))

(assert (= (and d!105737 (not res!565822)) b!830974))

(declare-fun m!774687 () Bool)

(assert (=> d!105737 m!774687))

(declare-fun m!774689 () Bool)

(assert (=> b!830972 m!774689))

(assert (=> b!830972 m!773665))

(assert (=> b!830972 m!773665))

(declare-fun m!774691 () Bool)

(assert (=> b!830972 m!774691))

(assert (=> b!830974 m!773665))

(assert (=> b!830974 m!773665))

(assert (=> b!830974 m!774691))

(assert (=> d!105329 d!105737))

(declare-fun d!105739 () Bool)

(assert (=> d!105739 (= (apply!372 (+!1950 lt!376715 (tuple2!10175 lt!376712 minValue!754)) lt!376719) (apply!372 lt!376715 lt!376719))))

(assert (=> d!105739 true))

(declare-fun _$34!1140 () Unit!28435)

(assert (=> d!105739 (= (choose!1425 lt!376715 lt!376712 minValue!754 lt!376719) _$34!1140)))

(declare-fun bs!23215 () Bool)

(assert (= bs!23215 d!105739))

(assert (=> bs!23215 m!773309))

(assert (=> bs!23215 m!773309))

(assert (=> bs!23215 m!773321))

(assert (=> bs!23215 m!773299))

(assert (=> d!105329 d!105739))

(assert (=> d!105329 d!105341))

(assert (=> b!830372 d!105543))

(assert (=> b!830372 d!105545))

(declare-fun b!830975 () Bool)

(declare-fun e!463375 () List!16003)

(declare-fun call!36315 () List!16003)

(assert (=> b!830975 (= e!463375 call!36315)))

(declare-fun bm!36310 () Bool)

(declare-fun call!36313 () List!16003)

(assert (=> bm!36310 (= call!36315 call!36313)))

(declare-fun b!830976 () Bool)

(declare-fun e!463377 () Bool)

(declare-fun lt!377148 () List!16003)

(assert (=> b!830976 (= e!463377 (contains!4209 lt!377148 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun e!463378 () List!16003)

(declare-fun b!830977 () Bool)

(declare-fun c!90053 () Bool)

(declare-fun c!90052 () Bool)

(assert (=> b!830977 (= e!463378 (ite c!90053 (t!22376 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (ite c!90052 (Cons!15999 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (t!22376 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))) Nil!16000)))))

(declare-fun b!830978 () Bool)

(assert (=> b!830978 (= e!463378 (insertStrictlySorted!268 (t!22376 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5097 lt!376628) (_2!5097 lt!376628)))))

(declare-fun b!830979 () Bool)

(assert (=> b!830979 (= e!463375 call!36315)))

(declare-fun c!90050 () Bool)

(declare-fun call!36314 () List!16003)

(declare-fun bm!36311 () Bool)

(assert (=> bm!36311 (= call!36314 ($colon$colon!535 e!463378 (ite c!90050 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628)))))))

(declare-fun c!90051 () Bool)

(assert (=> bm!36311 (= c!90051 c!90050)))

(declare-fun b!830980 () Bool)

(declare-fun e!463379 () List!16003)

(assert (=> b!830980 (= e!463379 call!36313)))

(declare-fun b!830981 () Bool)

(declare-fun e!463376 () List!16003)

(assert (=> b!830981 (= e!463376 call!36314)))

(declare-fun b!830982 () Bool)

(assert (=> b!830982 (= e!463376 e!463379)))

(assert (=> b!830982 (= c!90053 (and ((_ is Cons!15999) (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))) (_1!5097 lt!376628))))))

(declare-fun b!830984 () Bool)

(declare-fun res!565823 () Bool)

(assert (=> b!830984 (=> (not res!565823) (not e!463377))))

(assert (=> b!830984 (= res!565823 (containsKey!400 lt!377148 (_1!5097 lt!376628)))))

(declare-fun bm!36312 () Bool)

(assert (=> bm!36312 (= call!36313 call!36314)))

(declare-fun d!105741 () Bool)

(assert (=> d!105741 e!463377))

(declare-fun res!565824 () Bool)

(assert (=> d!105741 (=> (not res!565824) (not e!463377))))

(assert (=> d!105741 (= res!565824 (isStrictlySorted!437 lt!377148))))

(assert (=> d!105741 (= lt!377148 e!463376)))

(assert (=> d!105741 (= c!90050 (and ((_ is Cons!15999) (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (bvslt (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))) (_1!5097 lt!376628))))))

(assert (=> d!105741 (isStrictlySorted!437 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!105741 (= (insertStrictlySorted!268 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (_1!5097 lt!376628) (_2!5097 lt!376628)) lt!377148)))

(declare-fun b!830983 () Bool)

(assert (=> b!830983 (= c!90052 (and ((_ is Cons!15999) (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (bvsgt (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))) (_1!5097 lt!376628))))))

(assert (=> b!830983 (= e!463379 e!463375)))

(assert (= (and d!105741 c!90050) b!830981))

(assert (= (and d!105741 (not c!90050)) b!830982))

(assert (= (and b!830982 c!90053) b!830980))

(assert (= (and b!830982 (not c!90053)) b!830983))

(assert (= (and b!830983 c!90052) b!830975))

(assert (= (and b!830983 (not c!90052)) b!830979))

(assert (= (or b!830975 b!830979) bm!36310))

(assert (= (or b!830980 bm!36310) bm!36312))

(assert (= (or b!830981 bm!36312) bm!36311))

(assert (= (and bm!36311 c!90051) b!830978))

(assert (= (and bm!36311 (not c!90051)) b!830977))

(assert (= (and d!105741 res!565824) b!830984))

(assert (= (and b!830984 res!565823) b!830976))

(declare-fun m!774693 () Bool)

(assert (=> b!830984 m!774693))

(declare-fun m!774695 () Bool)

(assert (=> d!105741 m!774695))

(declare-fun m!774697 () Bool)

(assert (=> d!105741 m!774697))

(declare-fun m!774699 () Bool)

(assert (=> bm!36311 m!774699))

(declare-fun m!774701 () Bool)

(assert (=> b!830978 m!774701))

(declare-fun m!774703 () Bool)

(assert (=> b!830976 m!774703))

(assert (=> b!830412 d!105741))

(declare-fun d!105743 () Bool)

(assert (=> d!105743 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377149 () Unit!28435)

(assert (=> d!105743 (= lt!377149 (choose!1429 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463380 () Bool)

(assert (=> d!105743 e!463380))

(declare-fun res!565825 () Bool)

(assert (=> d!105743 (=> (not res!565825) (not e!463380))))

(assert (=> d!105743 (= res!565825 (isStrictlySorted!437 (toList!4521 lt!376713)))))

(assert (=> d!105743 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000) lt!377149)))

(declare-fun b!830985 () Bool)

(assert (=> b!830985 (= e!463380 (containsKey!400 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105743 res!565825) b!830985))

(assert (=> d!105743 m!773739))

(assert (=> d!105743 m!773739))

(assert (=> d!105743 m!773741))

(declare-fun m!774705 () Bool)

(assert (=> d!105743 m!774705))

(assert (=> d!105743 m!774293))

(assert (=> b!830985 m!773735))

(assert (=> b!830364 d!105743))

(declare-fun d!105745 () Bool)

(assert (=> d!105745 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23216 () Bool)

(assert (= bs!23216 d!105745))

(assert (=> bs!23216 m!773739))

(declare-fun m!774707 () Bool)

(assert (=> bs!23216 m!774707))

(assert (=> b!830364 d!105745))

(declare-fun b!830988 () Bool)

(declare-fun e!463382 () Option!420)

(assert (=> b!830988 (= e!463382 (getValueByKey!414 (t!22376 (toList!4521 lt!376713)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!830989 () Bool)

(assert (=> b!830989 (= e!463382 None!418)))

(declare-fun d!105747 () Bool)

(declare-fun c!90054 () Bool)

(assert (=> d!105747 (= c!90054 (and ((_ is Cons!15999) (toList!4521 lt!376713)) (= (_1!5097 (h!17128 (toList!4521 lt!376713))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!463381 () Option!420)

(assert (=> d!105747 (= (getValueByKey!414 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000) e!463381)))

(declare-fun b!830986 () Bool)

(assert (=> b!830986 (= e!463381 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376713)))))))

(declare-fun b!830987 () Bool)

(assert (=> b!830987 (= e!463381 e!463382)))

(declare-fun c!90055 () Bool)

(assert (=> b!830987 (= c!90055 (and ((_ is Cons!15999) (toList!4521 lt!376713)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376713))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!105747 c!90054) b!830986))

(assert (= (and d!105747 (not c!90054)) b!830987))

(assert (= (and b!830987 c!90055) b!830988))

(assert (= (and b!830987 (not c!90055)) b!830989))

(declare-fun m!774709 () Bool)

(assert (=> b!830988 m!774709))

(assert (=> b!830364 d!105747))

(assert (=> d!105423 d!105277))

(assert (=> d!105423 d!105275))

(declare-fun d!105749 () Bool)

(declare-fun e!463384 () Bool)

(assert (=> d!105749 e!463384))

(declare-fun res!565826 () Bool)

(assert (=> d!105749 (=> res!565826 e!463384)))

(declare-fun lt!377153 () Bool)

(assert (=> d!105749 (= res!565826 (not lt!377153))))

(declare-fun lt!377152 () Bool)

(assert (=> d!105749 (= lt!377153 lt!377152)))

(declare-fun lt!377150 () Unit!28435)

(declare-fun e!463383 () Unit!28435)

(assert (=> d!105749 (= lt!377150 e!463383)))

(declare-fun c!90056 () Bool)

(assert (=> d!105749 (= c!90056 lt!377152)))

(assert (=> d!105749 (= lt!377152 (containsKey!400 (toList!4521 lt!376880) (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))

(assert (=> d!105749 (= (contains!4208 lt!376880 (_1!5097 (tuple2!10175 lt!376712 minValue!754))) lt!377153)))

(declare-fun b!830990 () Bool)

(declare-fun lt!377151 () Unit!28435)

(assert (=> b!830990 (= e!463383 lt!377151)))

(assert (=> b!830990 (= lt!377151 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376880) (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))

(assert (=> b!830990 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376880) (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))

(declare-fun b!830991 () Bool)

(declare-fun Unit!28470 () Unit!28435)

(assert (=> b!830991 (= e!463383 Unit!28470)))

(declare-fun b!830992 () Bool)

(assert (=> b!830992 (= e!463384 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376880) (_1!5097 (tuple2!10175 lt!376712 minValue!754)))))))

(assert (= (and d!105749 c!90056) b!830990))

(assert (= (and d!105749 (not c!90056)) b!830991))

(assert (= (and d!105749 (not res!565826)) b!830992))

(declare-fun m!774711 () Bool)

(assert (=> d!105749 m!774711))

(declare-fun m!774713 () Bool)

(assert (=> b!830990 m!774713))

(assert (=> b!830990 m!773713))

(assert (=> b!830990 m!773713))

(declare-fun m!774715 () Bool)

(assert (=> b!830990 m!774715))

(assert (=> b!830992 m!773713))

(assert (=> b!830992 m!773713))

(assert (=> b!830992 m!774715))

(assert (=> d!105351 d!105749))

(declare-fun b!830995 () Bool)

(declare-fun e!463386 () Option!420)

(assert (=> b!830995 (= e!463386 (getValueByKey!414 (t!22376 lt!376882) (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))

(declare-fun b!830996 () Bool)

(assert (=> b!830996 (= e!463386 None!418)))

(declare-fun d!105751 () Bool)

(declare-fun c!90057 () Bool)

(assert (=> d!105751 (= c!90057 (and ((_ is Cons!15999) lt!376882) (= (_1!5097 (h!17128 lt!376882)) (_1!5097 (tuple2!10175 lt!376712 minValue!754)))))))

(declare-fun e!463385 () Option!420)

(assert (=> d!105751 (= (getValueByKey!414 lt!376882 (_1!5097 (tuple2!10175 lt!376712 minValue!754))) e!463385)))

(declare-fun b!830993 () Bool)

(assert (=> b!830993 (= e!463385 (Some!419 (_2!5097 (h!17128 lt!376882))))))

(declare-fun b!830994 () Bool)

(assert (=> b!830994 (= e!463385 e!463386)))

(declare-fun c!90058 () Bool)

(assert (=> b!830994 (= c!90058 (and ((_ is Cons!15999) lt!376882) (not (= (_1!5097 (h!17128 lt!376882)) (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))))

(assert (= (and d!105751 c!90057) b!830993))

(assert (= (and d!105751 (not c!90057)) b!830994))

(assert (= (and b!830994 c!90058) b!830995))

(assert (= (and b!830994 (not c!90058)) b!830996))

(declare-fun m!774717 () Bool)

(assert (=> b!830995 m!774717))

(assert (=> d!105351 d!105751))

(declare-fun d!105753 () Bool)

(assert (=> d!105753 (= (getValueByKey!414 lt!376882 (_1!5097 (tuple2!10175 lt!376712 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376712 minValue!754))))))

(declare-fun lt!377154 () Unit!28435)

(assert (=> d!105753 (= lt!377154 (choose!1427 lt!376882 (_1!5097 (tuple2!10175 lt!376712 minValue!754)) (_2!5097 (tuple2!10175 lt!376712 minValue!754))))))

(declare-fun e!463387 () Bool)

(assert (=> d!105753 e!463387))

(declare-fun res!565827 () Bool)

(assert (=> d!105753 (=> (not res!565827) (not e!463387))))

(assert (=> d!105753 (= res!565827 (isStrictlySorted!437 lt!376882))))

(assert (=> d!105753 (= (lemmaContainsTupThenGetReturnValue!230 lt!376882 (_1!5097 (tuple2!10175 lt!376712 minValue!754)) (_2!5097 (tuple2!10175 lt!376712 minValue!754))) lt!377154)))

(declare-fun b!830997 () Bool)

(declare-fun res!565828 () Bool)

(assert (=> b!830997 (=> (not res!565828) (not e!463387))))

(assert (=> b!830997 (= res!565828 (containsKey!400 lt!376882 (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))

(declare-fun b!830998 () Bool)

(assert (=> b!830998 (= e!463387 (contains!4209 lt!376882 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376712 minValue!754)) (_2!5097 (tuple2!10175 lt!376712 minValue!754)))))))

(assert (= (and d!105753 res!565827) b!830997))

(assert (= (and b!830997 res!565828) b!830998))

(assert (=> d!105753 m!773707))

(declare-fun m!774719 () Bool)

(assert (=> d!105753 m!774719))

(declare-fun m!774721 () Bool)

(assert (=> d!105753 m!774721))

(declare-fun m!774723 () Bool)

(assert (=> b!830997 m!774723))

(declare-fun m!774725 () Bool)

(assert (=> b!830998 m!774725))

(assert (=> d!105351 d!105753))

(declare-fun b!830999 () Bool)

(declare-fun e!463388 () List!16003)

(declare-fun call!36318 () List!16003)

(assert (=> b!830999 (= e!463388 call!36318)))

(declare-fun bm!36313 () Bool)

(declare-fun call!36316 () List!16003)

(assert (=> bm!36313 (= call!36318 call!36316)))

(declare-fun b!831000 () Bool)

(declare-fun lt!377155 () List!16003)

(declare-fun e!463390 () Bool)

(assert (=> b!831000 (= e!463390 (contains!4209 lt!377155 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376712 minValue!754)) (_2!5097 (tuple2!10175 lt!376712 minValue!754)))))))

(declare-fun c!90061 () Bool)

(declare-fun b!831001 () Bool)

(declare-fun e!463391 () List!16003)

(declare-fun c!90062 () Bool)

(assert (=> b!831001 (= e!463391 (ite c!90062 (t!22376 (toList!4521 lt!376715)) (ite c!90061 (Cons!15999 (h!17128 (toList!4521 lt!376715)) (t!22376 (toList!4521 lt!376715))) Nil!16000)))))

(declare-fun b!831002 () Bool)

(assert (=> b!831002 (= e!463391 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376715)) (_1!5097 (tuple2!10175 lt!376712 minValue!754)) (_2!5097 (tuple2!10175 lt!376712 minValue!754))))))

(declare-fun b!831003 () Bool)

(assert (=> b!831003 (= e!463388 call!36318)))

(declare-fun bm!36314 () Bool)

(declare-fun call!36317 () List!16003)

(declare-fun c!90059 () Bool)

(assert (=> bm!36314 (= call!36317 ($colon$colon!535 e!463391 (ite c!90059 (h!17128 (toList!4521 lt!376715)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376712 minValue!754)) (_2!5097 (tuple2!10175 lt!376712 minValue!754))))))))

(declare-fun c!90060 () Bool)

(assert (=> bm!36314 (= c!90060 c!90059)))

(declare-fun b!831004 () Bool)

(declare-fun e!463392 () List!16003)

(assert (=> b!831004 (= e!463392 call!36316)))

(declare-fun b!831005 () Bool)

(declare-fun e!463389 () List!16003)

(assert (=> b!831005 (= e!463389 call!36317)))

(declare-fun b!831006 () Bool)

(assert (=> b!831006 (= e!463389 e!463392)))

(assert (=> b!831006 (= c!90062 (and ((_ is Cons!15999) (toList!4521 lt!376715)) (= (_1!5097 (h!17128 (toList!4521 lt!376715))) (_1!5097 (tuple2!10175 lt!376712 minValue!754)))))))

(declare-fun b!831008 () Bool)

(declare-fun res!565829 () Bool)

(assert (=> b!831008 (=> (not res!565829) (not e!463390))))

(assert (=> b!831008 (= res!565829 (containsKey!400 lt!377155 (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))

(declare-fun bm!36315 () Bool)

(assert (=> bm!36315 (= call!36316 call!36317)))

(declare-fun d!105755 () Bool)

(assert (=> d!105755 e!463390))

(declare-fun res!565830 () Bool)

(assert (=> d!105755 (=> (not res!565830) (not e!463390))))

(assert (=> d!105755 (= res!565830 (isStrictlySorted!437 lt!377155))))

(assert (=> d!105755 (= lt!377155 e!463389)))

(assert (=> d!105755 (= c!90059 (and ((_ is Cons!15999) (toList!4521 lt!376715)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376715))) (_1!5097 (tuple2!10175 lt!376712 minValue!754)))))))

(assert (=> d!105755 (isStrictlySorted!437 (toList!4521 lt!376715))))

(assert (=> d!105755 (= (insertStrictlySorted!268 (toList!4521 lt!376715) (_1!5097 (tuple2!10175 lt!376712 minValue!754)) (_2!5097 (tuple2!10175 lt!376712 minValue!754))) lt!377155)))

(declare-fun b!831007 () Bool)

(assert (=> b!831007 (= c!90061 (and ((_ is Cons!15999) (toList!4521 lt!376715)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376715))) (_1!5097 (tuple2!10175 lt!376712 minValue!754)))))))

(assert (=> b!831007 (= e!463392 e!463388)))

(assert (= (and d!105755 c!90059) b!831005))

(assert (= (and d!105755 (not c!90059)) b!831006))

(assert (= (and b!831006 c!90062) b!831004))

(assert (= (and b!831006 (not c!90062)) b!831007))

(assert (= (and b!831007 c!90061) b!830999))

(assert (= (and b!831007 (not c!90061)) b!831003))

(assert (= (or b!830999 b!831003) bm!36313))

(assert (= (or b!831004 bm!36313) bm!36315))

(assert (= (or b!831005 bm!36315) bm!36314))

(assert (= (and bm!36314 c!90060) b!831002))

(assert (= (and bm!36314 (not c!90060)) b!831001))

(assert (= (and d!105755 res!565830) b!831008))

(assert (= (and b!831008 res!565829) b!831000))

(declare-fun m!774727 () Bool)

(assert (=> b!831008 m!774727))

(declare-fun m!774729 () Bool)

(assert (=> d!105755 m!774729))

(declare-fun m!774731 () Bool)

(assert (=> d!105755 m!774731))

(declare-fun m!774733 () Bool)

(assert (=> bm!36314 m!774733))

(declare-fun m!774735 () Bool)

(assert (=> b!831002 m!774735))

(declare-fun m!774737 () Bool)

(assert (=> b!831000 m!774737))

(assert (=> d!105351 d!105755))

(assert (=> b!830528 d!105557))

(assert (=> b!830528 d!105431))

(declare-fun d!105757 () Bool)

(declare-fun lt!377156 () Bool)

(assert (=> d!105757 (= lt!377156 (select (content!389 (toList!4521 lt!376872)) (tuple2!10175 lt!376723 zeroValueAfter!34)))))

(declare-fun e!463394 () Bool)

(assert (=> d!105757 (= lt!377156 e!463394)))

(declare-fun res!565832 () Bool)

(assert (=> d!105757 (=> (not res!565832) (not e!463394))))

(assert (=> d!105757 (= res!565832 ((_ is Cons!15999) (toList!4521 lt!376872)))))

(assert (=> d!105757 (= (contains!4209 (toList!4521 lt!376872) (tuple2!10175 lt!376723 zeroValueAfter!34)) lt!377156)))

(declare-fun b!831009 () Bool)

(declare-fun e!463393 () Bool)

(assert (=> b!831009 (= e!463394 e!463393)))

(declare-fun res!565831 () Bool)

(assert (=> b!831009 (=> res!565831 e!463393)))

(assert (=> b!831009 (= res!565831 (= (h!17128 (toList!4521 lt!376872)) (tuple2!10175 lt!376723 zeroValueAfter!34)))))

(declare-fun b!831010 () Bool)

(assert (=> b!831010 (= e!463393 (contains!4209 (t!22376 (toList!4521 lt!376872)) (tuple2!10175 lt!376723 zeroValueAfter!34)))))

(assert (= (and d!105757 res!565832) b!831009))

(assert (= (and b!831009 (not res!565831)) b!831010))

(declare-fun m!774739 () Bool)

(assert (=> d!105757 m!774739))

(declare-fun m!774741 () Bool)

(assert (=> d!105757 m!774741))

(declare-fun m!774743 () Bool)

(assert (=> b!831010 m!774743))

(assert (=> b!830351 d!105757))

(declare-fun d!105759 () Bool)

(assert (=> d!105759 (= ($colon$colon!535 e!463066 (ite c!89889 (h!17128 (toList!4521 lt!376626)) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628)))) (Cons!15999 (ite c!89889 (h!17128 (toList!4521 lt!376626)) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))) e!463066))))

(assert (=> bm!36277 d!105759))

(declare-fun d!105761 () Bool)

(declare-fun res!565833 () Bool)

(declare-fun e!463395 () Bool)

(assert (=> d!105761 (=> res!565833 e!463395)))

(assert (=> d!105761 (= res!565833 (and ((_ is Cons!15999) lt!376805) (= (_1!5097 (h!17128 lt!376805)) (_1!5097 lt!376628))))))

(assert (=> d!105761 (= (containsKey!400 lt!376805 (_1!5097 lt!376628)) e!463395)))

(declare-fun b!831011 () Bool)

(declare-fun e!463396 () Bool)

(assert (=> b!831011 (= e!463395 e!463396)))

(declare-fun res!565834 () Bool)

(assert (=> b!831011 (=> (not res!565834) (not e!463396))))

(assert (=> b!831011 (= res!565834 (and (or (not ((_ is Cons!15999) lt!376805)) (bvsle (_1!5097 (h!17128 lt!376805)) (_1!5097 lt!376628))) ((_ is Cons!15999) lt!376805) (bvslt (_1!5097 (h!17128 lt!376805)) (_1!5097 lt!376628))))))

(declare-fun b!831012 () Bool)

(assert (=> b!831012 (= e!463396 (containsKey!400 (t!22376 lt!376805) (_1!5097 lt!376628)))))

(assert (= (and d!105761 (not res!565833)) b!831011))

(assert (= (and b!831011 res!565834) b!831012))

(declare-fun m!774745 () Bool)

(assert (=> b!831012 m!774745))

(assert (=> b!830387 d!105761))

(declare-fun d!105763 () Bool)

(assert (=> d!105763 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377157 () Unit!28435)

(assert (=> d!105763 (= lt!377157 (choose!1429 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463397 () Bool)

(assert (=> d!105763 e!463397))

(declare-fun res!565835 () Bool)

(assert (=> d!105763 (=> (not res!565835) (not e!463397))))

(assert (=> d!105763 (= res!565835 (isStrictlySorted!437 (toList!4521 lt!376779)))))

(assert (=> d!105763 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000) lt!377157)))

(declare-fun b!831013 () Bool)

(assert (=> b!831013 (= e!463397 (containsKey!400 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105763 res!565835) b!831013))

(assert (=> d!105763 m!774217))

(assert (=> d!105763 m!774217))

(assert (=> d!105763 m!774219))

(declare-fun m!774747 () Bool)

(assert (=> d!105763 m!774747))

(declare-fun m!774749 () Bool)

(assert (=> d!105763 m!774749))

(assert (=> b!831013 m!774213))

(assert (=> b!830610 d!105763))

(declare-fun d!105765 () Bool)

(assert (=> d!105765 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23217 () Bool)

(assert (= bs!23217 d!105765))

(assert (=> bs!23217 m!774217))

(declare-fun m!774751 () Bool)

(assert (=> bs!23217 m!774751))

(assert (=> b!830610 d!105765))

(declare-fun b!831016 () Bool)

(declare-fun e!463399 () Option!420)

(assert (=> b!831016 (= e!463399 (getValueByKey!414 (t!22376 (toList!4521 lt!376779)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831017 () Bool)

(assert (=> b!831017 (= e!463399 None!418)))

(declare-fun d!105767 () Bool)

(declare-fun c!90063 () Bool)

(assert (=> d!105767 (= c!90063 (and ((_ is Cons!15999) (toList!4521 lt!376779)) (= (_1!5097 (h!17128 (toList!4521 lt!376779))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!463398 () Option!420)

(assert (=> d!105767 (= (getValueByKey!414 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000) e!463398)))

(declare-fun b!831014 () Bool)

(assert (=> b!831014 (= e!463398 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376779)))))))

(declare-fun b!831015 () Bool)

(assert (=> b!831015 (= e!463398 e!463399)))

(declare-fun c!90064 () Bool)

(assert (=> b!831015 (= c!90064 (and ((_ is Cons!15999) (toList!4521 lt!376779)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376779))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!105767 c!90063) b!831014))

(assert (= (and d!105767 (not c!90063)) b!831015))

(assert (= (and b!831015 c!90064) b!831016))

(assert (= (and b!831015 (not c!90064)) b!831017))

(declare-fun m!774753 () Bool)

(assert (=> b!831016 m!774753))

(assert (=> b!830610 d!105767))

(declare-fun d!105769 () Bool)

(declare-fun res!565836 () Bool)

(declare-fun e!463400 () Bool)

(assert (=> d!105769 (=> res!565836 e!463400)))

(assert (=> d!105769 (= res!565836 (and ((_ is Cons!15999) (toList!4521 lt!376779)) (= (_1!5097 (h!17128 (toList!4521 lt!376779))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105769 (= (containsKey!400 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000) e!463400)))

(declare-fun b!831018 () Bool)

(declare-fun e!463401 () Bool)

(assert (=> b!831018 (= e!463400 e!463401)))

(declare-fun res!565837 () Bool)

(assert (=> b!831018 (=> (not res!565837) (not e!463401))))

(assert (=> b!831018 (= res!565837 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376779))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376779))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!15999) (toList!4521 lt!376779)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376779))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831019 () Bool)

(assert (=> b!831019 (= e!463401 (containsKey!400 (t!22376 (toList!4521 lt!376779)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105769 (not res!565836)) b!831018))

(assert (= (and b!831018 res!565837) b!831019))

(declare-fun m!774755 () Bool)

(assert (=> b!831019 m!774755))

(assert (=> d!105315 d!105769))

(declare-fun d!105771 () Bool)

(declare-fun res!565838 () Bool)

(declare-fun e!463402 () Bool)

(assert (=> d!105771 (=> res!565838 e!463402)))

(assert (=> d!105771 (= res!565838 (and ((_ is Cons!15999) lt!376922) (= (_1!5097 (h!17128 lt!376922)) (_1!5097 lt!376622))))))

(assert (=> d!105771 (= (containsKey!400 lt!376922 (_1!5097 lt!376622)) e!463402)))

(declare-fun b!831020 () Bool)

(declare-fun e!463403 () Bool)

(assert (=> b!831020 (= e!463402 e!463403)))

(declare-fun res!565839 () Bool)

(assert (=> b!831020 (=> (not res!565839) (not e!463403))))

(assert (=> b!831020 (= res!565839 (and (or (not ((_ is Cons!15999) lt!376922)) (bvsle (_1!5097 (h!17128 lt!376922)) (_1!5097 lt!376622))) ((_ is Cons!15999) lt!376922) (bvslt (_1!5097 (h!17128 lt!376922)) (_1!5097 lt!376622))))))

(declare-fun b!831021 () Bool)

(assert (=> b!831021 (= e!463403 (containsKey!400 (t!22376 lt!376922) (_1!5097 lt!376622)))))

(assert (= (and d!105771 (not res!565838)) b!831020))

(assert (= (and b!831020 res!565839) b!831021))

(declare-fun m!774757 () Bool)

(assert (=> b!831021 m!774757))

(assert (=> b!830456 d!105771))

(declare-fun lt!377158 () Bool)

(declare-fun d!105773 () Bool)

(assert (=> d!105773 (= lt!377158 (select (content!389 (toList!4521 lt!376943)) (tuple2!10175 lt!376792 lt!376790)))))

(declare-fun e!463405 () Bool)

(assert (=> d!105773 (= lt!377158 e!463405)))

(declare-fun res!565841 () Bool)

(assert (=> d!105773 (=> (not res!565841) (not e!463405))))

(assert (=> d!105773 (= res!565841 ((_ is Cons!15999) (toList!4521 lt!376943)))))

(assert (=> d!105773 (= (contains!4209 (toList!4521 lt!376943) (tuple2!10175 lt!376792 lt!376790)) lt!377158)))

(declare-fun b!831022 () Bool)

(declare-fun e!463404 () Bool)

(assert (=> b!831022 (= e!463405 e!463404)))

(declare-fun res!565840 () Bool)

(assert (=> b!831022 (=> res!565840 e!463404)))

(assert (=> b!831022 (= res!565840 (= (h!17128 (toList!4521 lt!376943)) (tuple2!10175 lt!376792 lt!376790)))))

(declare-fun b!831023 () Bool)

(assert (=> b!831023 (= e!463404 (contains!4209 (t!22376 (toList!4521 lt!376943)) (tuple2!10175 lt!376792 lt!376790)))))

(assert (= (and d!105773 res!565841) b!831022))

(assert (= (and b!831022 (not res!565840)) b!831023))

(declare-fun m!774759 () Bool)

(assert (=> d!105773 m!774759))

(declare-fun m!774761 () Bool)

(assert (=> d!105773 m!774761))

(declare-fun m!774763 () Bool)

(assert (=> b!831023 m!774763))

(assert (=> b!830486 d!105773))

(assert (=> b!830378 d!105575))

(assert (=> b!830378 d!105511))

(declare-fun d!105775 () Bool)

(declare-fun e!463407 () Bool)

(assert (=> d!105775 e!463407))

(declare-fun res!565842 () Bool)

(assert (=> d!105775 (=> res!565842 e!463407)))

(declare-fun lt!377162 () Bool)

(assert (=> d!105775 (= res!565842 (not lt!377162))))

(declare-fun lt!377161 () Bool)

(assert (=> d!105775 (= lt!377162 lt!377161)))

(declare-fun lt!377159 () Unit!28435)

(declare-fun e!463406 () Unit!28435)

(assert (=> d!105775 (= lt!377159 e!463406)))

(declare-fun c!90065 () Bool)

(assert (=> d!105775 (= c!90065 lt!377161)))

(assert (=> d!105775 (= lt!377161 (containsKey!400 (toList!4521 lt!376861) (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))

(assert (=> d!105775 (= (contains!4208 lt!376861 (_1!5097 (tuple2!10175 lt!376718 minValue!754))) lt!377162)))

(declare-fun b!831024 () Bool)

(declare-fun lt!377160 () Unit!28435)

(assert (=> b!831024 (= e!463406 lt!377160)))

(assert (=> b!831024 (= lt!377160 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376861) (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))

(assert (=> b!831024 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376861) (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))

(declare-fun b!831025 () Bool)

(declare-fun Unit!28471 () Unit!28435)

(assert (=> b!831025 (= e!463406 Unit!28471)))

(declare-fun b!831026 () Bool)

(assert (=> b!831026 (= e!463407 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376861) (_1!5097 (tuple2!10175 lt!376718 minValue!754)))))))

(assert (= (and d!105775 c!90065) b!831024))

(assert (= (and d!105775 (not c!90065)) b!831025))

(assert (= (and d!105775 (not res!565842)) b!831026))

(declare-fun m!774765 () Bool)

(assert (=> d!105775 m!774765))

(declare-fun m!774767 () Bool)

(assert (=> b!831024 m!774767))

(assert (=> b!831024 m!773649))

(assert (=> b!831024 m!773649))

(declare-fun m!774769 () Bool)

(assert (=> b!831024 m!774769))

(assert (=> b!831026 m!773649))

(assert (=> b!831026 m!773649))

(assert (=> b!831026 m!774769))

(assert (=> d!105333 d!105775))

(declare-fun b!831029 () Bool)

(declare-fun e!463409 () Option!420)

(assert (=> b!831029 (= e!463409 (getValueByKey!414 (t!22376 lt!376863) (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))

(declare-fun b!831030 () Bool)

(assert (=> b!831030 (= e!463409 None!418)))

(declare-fun d!105777 () Bool)

(declare-fun c!90066 () Bool)

(assert (=> d!105777 (= c!90066 (and ((_ is Cons!15999) lt!376863) (= (_1!5097 (h!17128 lt!376863)) (_1!5097 (tuple2!10175 lt!376718 minValue!754)))))))

(declare-fun e!463408 () Option!420)

(assert (=> d!105777 (= (getValueByKey!414 lt!376863 (_1!5097 (tuple2!10175 lt!376718 minValue!754))) e!463408)))

(declare-fun b!831027 () Bool)

(assert (=> b!831027 (= e!463408 (Some!419 (_2!5097 (h!17128 lt!376863))))))

(declare-fun b!831028 () Bool)

(assert (=> b!831028 (= e!463408 e!463409)))

(declare-fun c!90067 () Bool)

(assert (=> b!831028 (= c!90067 (and ((_ is Cons!15999) lt!376863) (not (= (_1!5097 (h!17128 lt!376863)) (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))))

(assert (= (and d!105777 c!90066) b!831027))

(assert (= (and d!105777 (not c!90066)) b!831028))

(assert (= (and b!831028 c!90067) b!831029))

(assert (= (and b!831028 (not c!90067)) b!831030))

(declare-fun m!774771 () Bool)

(assert (=> b!831029 m!774771))

(assert (=> d!105333 d!105777))

(declare-fun d!105779 () Bool)

(assert (=> d!105779 (= (getValueByKey!414 lt!376863 (_1!5097 (tuple2!10175 lt!376718 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376718 minValue!754))))))

(declare-fun lt!377163 () Unit!28435)

(assert (=> d!105779 (= lt!377163 (choose!1427 lt!376863 (_1!5097 (tuple2!10175 lt!376718 minValue!754)) (_2!5097 (tuple2!10175 lt!376718 minValue!754))))))

(declare-fun e!463410 () Bool)

(assert (=> d!105779 e!463410))

(declare-fun res!565843 () Bool)

(assert (=> d!105779 (=> (not res!565843) (not e!463410))))

(assert (=> d!105779 (= res!565843 (isStrictlySorted!437 lt!376863))))

(assert (=> d!105779 (= (lemmaContainsTupThenGetReturnValue!230 lt!376863 (_1!5097 (tuple2!10175 lt!376718 minValue!754)) (_2!5097 (tuple2!10175 lt!376718 minValue!754))) lt!377163)))

(declare-fun b!831031 () Bool)

(declare-fun res!565844 () Bool)

(assert (=> b!831031 (=> (not res!565844) (not e!463410))))

(assert (=> b!831031 (= res!565844 (containsKey!400 lt!376863 (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))

(declare-fun b!831032 () Bool)

(assert (=> b!831032 (= e!463410 (contains!4209 lt!376863 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376718 minValue!754)) (_2!5097 (tuple2!10175 lt!376718 minValue!754)))))))

(assert (= (and d!105779 res!565843) b!831031))

(assert (= (and b!831031 res!565844) b!831032))

(assert (=> d!105779 m!773643))

(declare-fun m!774773 () Bool)

(assert (=> d!105779 m!774773))

(declare-fun m!774775 () Bool)

(assert (=> d!105779 m!774775))

(declare-fun m!774777 () Bool)

(assert (=> b!831031 m!774777))

(declare-fun m!774779 () Bool)

(assert (=> b!831032 m!774779))

(assert (=> d!105333 d!105779))

(declare-fun b!831033 () Bool)

(declare-fun e!463411 () List!16003)

(declare-fun call!36321 () List!16003)

(assert (=> b!831033 (= e!463411 call!36321)))

(declare-fun bm!36316 () Bool)

(declare-fun call!36319 () List!16003)

(assert (=> bm!36316 (= call!36321 call!36319)))

(declare-fun lt!377164 () List!16003)

(declare-fun b!831034 () Bool)

(declare-fun e!463413 () Bool)

(assert (=> b!831034 (= e!463413 (contains!4209 lt!377164 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376718 minValue!754)) (_2!5097 (tuple2!10175 lt!376718 minValue!754)))))))

(declare-fun e!463414 () List!16003)

(declare-fun c!90071 () Bool)

(declare-fun c!90070 () Bool)

(declare-fun b!831035 () Bool)

(assert (=> b!831035 (= e!463414 (ite c!90071 (t!22376 (toList!4521 lt!376717)) (ite c!90070 (Cons!15999 (h!17128 (toList!4521 lt!376717)) (t!22376 (toList!4521 lt!376717))) Nil!16000)))))

(declare-fun b!831036 () Bool)

(assert (=> b!831036 (= e!463414 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376717)) (_1!5097 (tuple2!10175 lt!376718 minValue!754)) (_2!5097 (tuple2!10175 lt!376718 minValue!754))))))

(declare-fun b!831037 () Bool)

(assert (=> b!831037 (= e!463411 call!36321)))

(declare-fun bm!36317 () Bool)

(declare-fun c!90068 () Bool)

(declare-fun call!36320 () List!16003)

(assert (=> bm!36317 (= call!36320 ($colon$colon!535 e!463414 (ite c!90068 (h!17128 (toList!4521 lt!376717)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376718 minValue!754)) (_2!5097 (tuple2!10175 lt!376718 minValue!754))))))))

(declare-fun c!90069 () Bool)

(assert (=> bm!36317 (= c!90069 c!90068)))

(declare-fun b!831038 () Bool)

(declare-fun e!463415 () List!16003)

(assert (=> b!831038 (= e!463415 call!36319)))

(declare-fun b!831039 () Bool)

(declare-fun e!463412 () List!16003)

(assert (=> b!831039 (= e!463412 call!36320)))

(declare-fun b!831040 () Bool)

(assert (=> b!831040 (= e!463412 e!463415)))

(assert (=> b!831040 (= c!90071 (and ((_ is Cons!15999) (toList!4521 lt!376717)) (= (_1!5097 (h!17128 (toList!4521 lt!376717))) (_1!5097 (tuple2!10175 lt!376718 minValue!754)))))))

(declare-fun b!831042 () Bool)

(declare-fun res!565845 () Bool)

(assert (=> b!831042 (=> (not res!565845) (not e!463413))))

(assert (=> b!831042 (= res!565845 (containsKey!400 lt!377164 (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))

(declare-fun bm!36318 () Bool)

(assert (=> bm!36318 (= call!36319 call!36320)))

(declare-fun d!105781 () Bool)

(assert (=> d!105781 e!463413))

(declare-fun res!565846 () Bool)

(assert (=> d!105781 (=> (not res!565846) (not e!463413))))

(assert (=> d!105781 (= res!565846 (isStrictlySorted!437 lt!377164))))

(assert (=> d!105781 (= lt!377164 e!463412)))

(assert (=> d!105781 (= c!90068 (and ((_ is Cons!15999) (toList!4521 lt!376717)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376717))) (_1!5097 (tuple2!10175 lt!376718 minValue!754)))))))

(assert (=> d!105781 (isStrictlySorted!437 (toList!4521 lt!376717))))

(assert (=> d!105781 (= (insertStrictlySorted!268 (toList!4521 lt!376717) (_1!5097 (tuple2!10175 lt!376718 minValue!754)) (_2!5097 (tuple2!10175 lt!376718 minValue!754))) lt!377164)))

(declare-fun b!831041 () Bool)

(assert (=> b!831041 (= c!90070 (and ((_ is Cons!15999) (toList!4521 lt!376717)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376717))) (_1!5097 (tuple2!10175 lt!376718 minValue!754)))))))

(assert (=> b!831041 (= e!463415 e!463411)))

(assert (= (and d!105781 c!90068) b!831039))

(assert (= (and d!105781 (not c!90068)) b!831040))

(assert (= (and b!831040 c!90071) b!831038))

(assert (= (and b!831040 (not c!90071)) b!831041))

(assert (= (and b!831041 c!90070) b!831033))

(assert (= (and b!831041 (not c!90070)) b!831037))

(assert (= (or b!831033 b!831037) bm!36316))

(assert (= (or b!831038 bm!36316) bm!36318))

(assert (= (or b!831039 bm!36318) bm!36317))

(assert (= (and bm!36317 c!90069) b!831036))

(assert (= (and bm!36317 (not c!90069)) b!831035))

(assert (= (and d!105781 res!565846) b!831042))

(assert (= (and b!831042 res!565845) b!831034))

(declare-fun m!774781 () Bool)

(assert (=> b!831042 m!774781))

(declare-fun m!774783 () Bool)

(assert (=> d!105781 m!774783))

(declare-fun m!774785 () Bool)

(assert (=> d!105781 m!774785))

(declare-fun m!774787 () Bool)

(assert (=> bm!36317 m!774787))

(declare-fun m!774789 () Bool)

(assert (=> b!831036 m!774789))

(declare-fun m!774791 () Bool)

(assert (=> b!831034 m!774791))

(assert (=> d!105333 d!105781))

(assert (=> b!830482 d!105579))

(assert (=> b!830482 d!105581))

(declare-fun d!105783 () Bool)

(declare-fun lt!377165 () Bool)

(assert (=> d!105783 (= lt!377165 (select (content!389 lt!376809) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!463417 () Bool)

(assert (=> d!105783 (= lt!377165 e!463417)))

(declare-fun res!565848 () Bool)

(assert (=> d!105783 (=> (not res!565848) (not e!463417))))

(assert (=> d!105783 (= res!565848 ((_ is Cons!15999) lt!376809))))

(assert (=> d!105783 (= (contains!4209 lt!376809 (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) lt!377165)))

(declare-fun b!831043 () Bool)

(declare-fun e!463416 () Bool)

(assert (=> b!831043 (= e!463417 e!463416)))

(declare-fun res!565847 () Bool)

(assert (=> b!831043 (=> res!565847 e!463416)))

(assert (=> b!831043 (= res!565847 (= (h!17128 lt!376809) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!831044 () Bool)

(assert (=> b!831044 (= e!463416 (contains!4209 (t!22376 lt!376809) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!105783 res!565848) b!831043))

(assert (= (and b!831043 (not res!565847)) b!831044))

(declare-fun m!774793 () Bool)

(assert (=> d!105783 m!774793))

(declare-fun m!774795 () Bool)

(assert (=> d!105783 m!774795))

(declare-fun m!774797 () Bool)

(assert (=> b!831044 m!774797))

(assert (=> b!830427 d!105783))

(declare-fun d!105785 () Bool)

(assert (=> d!105785 (= (apply!372 (+!1950 lt!376749 (tuple2!10175 lt!376746 minValue!754)) lt!376753) (apply!372 lt!376749 lt!376753))))

(assert (=> d!105785 true))

(declare-fun _$34!1141 () Unit!28435)

(assert (=> d!105785 (= (choose!1425 lt!376749 lt!376746 minValue!754 lt!376753) _$34!1141)))

(declare-fun bs!23218 () Bool)

(assert (= bs!23218 d!105785))

(assert (=> bs!23218 m!773391))

(assert (=> bs!23218 m!773391))

(assert (=> bs!23218 m!773403))

(assert (=> bs!23218 m!773381))

(assert (=> d!105461 d!105785))

(assert (=> d!105461 d!105469))

(assert (=> d!105461 d!105459))

(assert (=> d!105461 d!105477))

(declare-fun d!105787 () Bool)

(declare-fun e!463419 () Bool)

(assert (=> d!105787 e!463419))

(declare-fun res!565849 () Bool)

(assert (=> d!105787 (=> res!565849 e!463419)))

(declare-fun lt!377169 () Bool)

(assert (=> d!105787 (= res!565849 (not lt!377169))))

(declare-fun lt!377168 () Bool)

(assert (=> d!105787 (= lt!377169 lt!377168)))

(declare-fun lt!377166 () Unit!28435)

(declare-fun e!463418 () Unit!28435)

(assert (=> d!105787 (= lt!377166 e!463418)))

(declare-fun c!90072 () Bool)

(assert (=> d!105787 (= c!90072 lt!377168)))

(assert (=> d!105787 (= lt!377168 (containsKey!400 (toList!4521 lt!376749) lt!376753))))

(assert (=> d!105787 (= (contains!4208 lt!376749 lt!376753) lt!377169)))

(declare-fun b!831045 () Bool)

(declare-fun lt!377167 () Unit!28435)

(assert (=> b!831045 (= e!463418 lt!377167)))

(assert (=> b!831045 (= lt!377167 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376749) lt!376753))))

(assert (=> b!831045 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376749) lt!376753))))

(declare-fun b!831046 () Bool)

(declare-fun Unit!28472 () Unit!28435)

(assert (=> b!831046 (= e!463418 Unit!28472)))

(declare-fun b!831047 () Bool)

(assert (=> b!831047 (= e!463419 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376749) lt!376753)))))

(assert (= (and d!105787 c!90072) b!831045))

(assert (= (and d!105787 (not c!90072)) b!831046))

(assert (= (and d!105787 (not res!565849)) b!831047))

(declare-fun m!774799 () Bool)

(assert (=> d!105787 m!774799))

(declare-fun m!774801 () Bool)

(assert (=> b!831045 m!774801))

(assert (=> b!831045 m!774047))

(assert (=> b!831045 m!774047))

(declare-fun m!774803 () Bool)

(assert (=> b!831045 m!774803))

(assert (=> b!831047 m!774047))

(assert (=> b!831047 m!774047))

(assert (=> b!831047 m!774803))

(assert (=> d!105461 d!105787))

(declare-fun d!105789 () Bool)

(declare-fun lt!377170 () Bool)

(assert (=> d!105789 (= lt!377170 (select (content!389 lt!376739) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun e!463421 () Bool)

(assert (=> d!105789 (= lt!377170 e!463421)))

(declare-fun res!565851 () Bool)

(assert (=> d!105789 (=> (not res!565851) (not e!463421))))

(assert (=> d!105789 (= res!565851 ((_ is Cons!15999) lt!376739))))

(assert (=> d!105789 (= (contains!4209 lt!376739 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))) lt!377170)))

(declare-fun b!831048 () Bool)

(declare-fun e!463420 () Bool)

(assert (=> b!831048 (= e!463421 e!463420)))

(declare-fun res!565850 () Bool)

(assert (=> b!831048 (=> res!565850 e!463420)))

(assert (=> b!831048 (= res!565850 (= (h!17128 lt!376739) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun b!831049 () Bool)

(assert (=> b!831049 (= e!463420 (contains!4209 (t!22376 lt!376739) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(assert (= (and d!105789 res!565851) b!831048))

(assert (= (and b!831048 (not res!565850)) b!831049))

(declare-fun m!774805 () Bool)

(assert (=> d!105789 m!774805))

(declare-fun m!774807 () Bool)

(assert (=> d!105789 m!774807))

(declare-fun m!774809 () Bool)

(assert (=> b!831049 m!774809))

(assert (=> b!830570 d!105789))

(declare-fun b!831052 () Bool)

(declare-fun e!463423 () Option!420)

(assert (=> b!831052 (= e!463423 (getValueByKey!414 (t!22376 (toList!4521 lt!376880)) (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))

(declare-fun b!831053 () Bool)

(assert (=> b!831053 (= e!463423 None!418)))

(declare-fun c!90073 () Bool)

(declare-fun d!105791 () Bool)

(assert (=> d!105791 (= c!90073 (and ((_ is Cons!15999) (toList!4521 lt!376880)) (= (_1!5097 (h!17128 (toList!4521 lt!376880))) (_1!5097 (tuple2!10175 lt!376712 minValue!754)))))))

(declare-fun e!463422 () Option!420)

(assert (=> d!105791 (= (getValueByKey!414 (toList!4521 lt!376880) (_1!5097 (tuple2!10175 lt!376712 minValue!754))) e!463422)))

(declare-fun b!831050 () Bool)

(assert (=> b!831050 (= e!463422 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376880)))))))

(declare-fun b!831051 () Bool)

(assert (=> b!831051 (= e!463422 e!463423)))

(declare-fun c!90074 () Bool)

(assert (=> b!831051 (= c!90074 (and ((_ is Cons!15999) (toList!4521 lt!376880)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376880))) (_1!5097 (tuple2!10175 lt!376712 minValue!754))))))))

(assert (= (and d!105791 c!90073) b!831050))

(assert (= (and d!105791 (not c!90073)) b!831051))

(assert (= (and b!831051 c!90074) b!831052))

(assert (= (and b!831051 (not c!90074)) b!831053))

(declare-fun m!774811 () Bool)

(assert (=> b!831052 m!774811))

(assert (=> b!830355 d!105791))

(declare-fun d!105793 () Bool)

(assert (=> d!105793 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377171 () Unit!28435)

(assert (=> d!105793 (= lt!377171 (choose!1429 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463424 () Bool)

(assert (=> d!105793 e!463424))

(declare-fun res!565852 () Bool)

(assert (=> d!105793 (=> (not res!565852) (not e!463424))))

(assert (=> d!105793 (= res!565852 (isStrictlySorted!437 (toList!4521 lt!376786)))))

(assert (=> d!105793 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000) lt!377171)))

(declare-fun b!831054 () Bool)

(assert (=> b!831054 (= e!463424 (containsKey!400 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105793 res!565852) b!831054))

(assert (=> d!105793 m!774207))

(assert (=> d!105793 m!774207))

(assert (=> d!105793 m!774209))

(declare-fun m!774813 () Bool)

(assert (=> d!105793 m!774813))

(declare-fun m!774815 () Bool)

(assert (=> d!105793 m!774815))

(assert (=> b!831054 m!774203))

(assert (=> b!830607 d!105793))

(declare-fun d!105795 () Bool)

(assert (=> d!105795 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23219 () Bool)

(assert (= bs!23219 d!105795))

(assert (=> bs!23219 m!774207))

(declare-fun m!774817 () Bool)

(assert (=> bs!23219 m!774817))

(assert (=> b!830607 d!105795))

(declare-fun b!831057 () Bool)

(declare-fun e!463426 () Option!420)

(assert (=> b!831057 (= e!463426 (getValueByKey!414 (t!22376 (toList!4521 lt!376786)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831058 () Bool)

(assert (=> b!831058 (= e!463426 None!418)))

(declare-fun d!105797 () Bool)

(declare-fun c!90075 () Bool)

(assert (=> d!105797 (= c!90075 (and ((_ is Cons!15999) (toList!4521 lt!376786)) (= (_1!5097 (h!17128 (toList!4521 lt!376786))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!463425 () Option!420)

(assert (=> d!105797 (= (getValueByKey!414 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000) e!463425)))

(declare-fun b!831055 () Bool)

(assert (=> b!831055 (= e!463425 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376786)))))))

(declare-fun b!831056 () Bool)

(assert (=> b!831056 (= e!463425 e!463426)))

(declare-fun c!90076 () Bool)

(assert (=> b!831056 (= c!90076 (and ((_ is Cons!15999) (toList!4521 lt!376786)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376786))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!105797 c!90075) b!831055))

(assert (= (and d!105797 (not c!90075)) b!831056))

(assert (= (and b!831056 c!90076) b!831057))

(assert (= (and b!831056 (not c!90076)) b!831058))

(declare-fun m!774819 () Bool)

(assert (=> b!831057 m!774819))

(assert (=> b!830607 d!105797))

(assert (=> b!830375 d!105601))

(assert (=> b!830375 d!105585))

(declare-fun d!105799 () Bool)

(declare-fun lt!377172 () Bool)

(assert (=> d!105799 (= lt!377172 (select (content!389 (toList!4521 lt!377002)) (tuple2!10175 lt!376752 minValue!754)))))

(declare-fun e!463428 () Bool)

(assert (=> d!105799 (= lt!377172 e!463428)))

(declare-fun res!565854 () Bool)

(assert (=> d!105799 (=> (not res!565854) (not e!463428))))

(assert (=> d!105799 (= res!565854 ((_ is Cons!15999) (toList!4521 lt!377002)))))

(assert (=> d!105799 (= (contains!4209 (toList!4521 lt!377002) (tuple2!10175 lt!376752 minValue!754)) lt!377172)))

(declare-fun b!831059 () Bool)

(declare-fun e!463427 () Bool)

(assert (=> b!831059 (= e!463428 e!463427)))

(declare-fun res!565853 () Bool)

(assert (=> b!831059 (=> res!565853 e!463427)))

(assert (=> b!831059 (= res!565853 (= (h!17128 (toList!4521 lt!377002)) (tuple2!10175 lt!376752 minValue!754)))))

(declare-fun b!831060 () Bool)

(assert (=> b!831060 (= e!463427 (contains!4209 (t!22376 (toList!4521 lt!377002)) (tuple2!10175 lt!376752 minValue!754)))))

(assert (= (and d!105799 res!565854) b!831059))

(assert (= (and b!831059 (not res!565853)) b!831060))

(declare-fun m!774821 () Bool)

(assert (=> d!105799 m!774821))

(declare-fun m!774823 () Bool)

(assert (=> d!105799 m!774823))

(declare-fun m!774825 () Bool)

(assert (=> b!831060 m!774825))

(assert (=> b!830556 d!105799))

(declare-fun d!105801 () Bool)

(declare-fun c!90079 () Bool)

(assert (=> d!105801 (= c!90079 ((_ is Nil!16000) (toList!4521 lt!376737)))))

(declare-fun e!463431 () (InoxSet tuple2!10174))

(assert (=> d!105801 (= (content!389 (toList!4521 lt!376737)) e!463431)))

(declare-fun b!831065 () Bool)

(assert (=> b!831065 (= e!463431 ((as const (Array tuple2!10174 Bool)) false))))

(declare-fun b!831066 () Bool)

(assert (=> b!831066 (= e!463431 ((_ map or) (store ((as const (Array tuple2!10174 Bool)) false) (h!17128 (toList!4521 lt!376737)) true) (content!389 (t!22376 (toList!4521 lt!376737)))))))

(assert (= (and d!105801 c!90079) b!831065))

(assert (= (and d!105801 (not c!90079)) b!831066))

(declare-fun m!774827 () Bool)

(assert (=> b!831066 m!774827))

(assert (=> b!831066 m!774285))

(assert (=> d!105411 d!105801))

(declare-fun d!105803 () Bool)

(declare-fun res!565855 () Bool)

(declare-fun e!463432 () Bool)

(assert (=> d!105803 (=> res!565855 e!463432)))

(assert (=> d!105803 (= res!565855 (and ((_ is Cons!15999) (toList!4521 lt!376713)) (= (_1!5097 (h!17128 (toList!4521 lt!376713))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105803 (= (containsKey!400 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000) e!463432)))

(declare-fun b!831067 () Bool)

(declare-fun e!463433 () Bool)

(assert (=> b!831067 (= e!463432 e!463433)))

(declare-fun res!565856 () Bool)

(assert (=> b!831067 (=> (not res!565856) (not e!463433))))

(assert (=> b!831067 (= res!565856 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376713))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376713))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!15999) (toList!4521 lt!376713)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376713))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831068 () Bool)

(assert (=> b!831068 (= e!463433 (containsKey!400 (t!22376 (toList!4521 lt!376713)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105803 (not res!565855)) b!831067))

(assert (= (and b!831067 res!565856) b!831068))

(declare-fun m!774829 () Bool)

(assert (=> b!831068 m!774829))

(assert (=> d!105363 d!105803))

(assert (=> b!830421 d!105609))

(assert (=> b!830421 d!105421))

(declare-fun b!831071 () Bool)

(declare-fun e!463435 () Option!420)

(assert (=> b!831071 (= e!463435 (getValueByKey!414 (t!22376 (t!22376 lt!376661)) (_1!5097 lt!376628)))))

(declare-fun b!831072 () Bool)

(assert (=> b!831072 (= e!463435 None!418)))

(declare-fun d!105805 () Bool)

(declare-fun c!90080 () Bool)

(assert (=> d!105805 (= c!90080 (and ((_ is Cons!15999) (t!22376 lt!376661)) (= (_1!5097 (h!17128 (t!22376 lt!376661))) (_1!5097 lt!376628))))))

(declare-fun e!463434 () Option!420)

(assert (=> d!105805 (= (getValueByKey!414 (t!22376 lt!376661) (_1!5097 lt!376628)) e!463434)))

(declare-fun b!831069 () Bool)

(assert (=> b!831069 (= e!463434 (Some!419 (_2!5097 (h!17128 (t!22376 lt!376661)))))))

(declare-fun b!831070 () Bool)

(assert (=> b!831070 (= e!463434 e!463435)))

(declare-fun c!90081 () Bool)

(assert (=> b!831070 (= c!90081 (and ((_ is Cons!15999) (t!22376 lt!376661)) (not (= (_1!5097 (h!17128 (t!22376 lt!376661))) (_1!5097 lt!376628)))))))

(assert (= (and d!105805 c!90080) b!831069))

(assert (= (and d!105805 (not c!90080)) b!831070))

(assert (= (and b!831070 c!90081) b!831071))

(assert (= (and b!831070 (not c!90081)) b!831072))

(declare-fun m!774831 () Bool)

(assert (=> b!831071 m!774831))

(assert (=> b!830462 d!105805))

(declare-fun e!463437 () Option!420)

(declare-fun b!831075 () Bool)

(assert (=> b!831075 (= e!463437 (getValueByKey!414 (t!22376 (toList!4521 lt!376861)) (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))

(declare-fun b!831076 () Bool)

(assert (=> b!831076 (= e!463437 None!418)))

(declare-fun c!90082 () Bool)

(declare-fun d!105807 () Bool)

(assert (=> d!105807 (= c!90082 (and ((_ is Cons!15999) (toList!4521 lt!376861)) (= (_1!5097 (h!17128 (toList!4521 lt!376861))) (_1!5097 (tuple2!10175 lt!376718 minValue!754)))))))

(declare-fun e!463436 () Option!420)

(assert (=> d!105807 (= (getValueByKey!414 (toList!4521 lt!376861) (_1!5097 (tuple2!10175 lt!376718 minValue!754))) e!463436)))

(declare-fun b!831073 () Bool)

(assert (=> b!831073 (= e!463436 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376861)))))))

(declare-fun b!831074 () Bool)

(assert (=> b!831074 (= e!463436 e!463437)))

(declare-fun c!90083 () Bool)

(assert (=> b!831074 (= c!90083 (and ((_ is Cons!15999) (toList!4521 lt!376861)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376861))) (_1!5097 (tuple2!10175 lt!376718 minValue!754))))))))

(assert (= (and d!105807 c!90082) b!831073))

(assert (= (and d!105807 (not c!90082)) b!831074))

(assert (= (and b!831074 c!90083) b!831075))

(assert (= (and b!831074 (not c!90083)) b!831076))

(declare-fun m!774833 () Bool)

(assert (=> b!831075 m!774833))

(assert (=> b!830345 d!105807))

(declare-fun d!105809 () Bool)

(declare-fun lt!377173 () Bool)

(assert (=> d!105809 (= lt!377173 (select (content!389 (t!22376 (toList!4521 lt!376733))) lt!376628))))

(declare-fun e!463439 () Bool)

(assert (=> d!105809 (= lt!377173 e!463439)))

(declare-fun res!565858 () Bool)

(assert (=> d!105809 (=> (not res!565858) (not e!463439))))

(assert (=> d!105809 (= res!565858 ((_ is Cons!15999) (t!22376 (toList!4521 lt!376733))))))

(assert (=> d!105809 (= (contains!4209 (t!22376 (toList!4521 lt!376733)) lt!376628) lt!377173)))

(declare-fun b!831077 () Bool)

(declare-fun e!463438 () Bool)

(assert (=> b!831077 (= e!463439 e!463438)))

(declare-fun res!565857 () Bool)

(assert (=> b!831077 (=> res!565857 e!463438)))

(assert (=> b!831077 (= res!565857 (= (h!17128 (t!22376 (toList!4521 lt!376733))) lt!376628))))

(declare-fun b!831078 () Bool)

(assert (=> b!831078 (= e!463438 (contains!4209 (t!22376 (t!22376 (toList!4521 lt!376733))) lt!376628))))

(assert (= (and d!105809 res!565858) b!831077))

(assert (= (and b!831077 (not res!565857)) b!831078))

(declare-fun m!774835 () Bool)

(assert (=> d!105809 m!774835))

(declare-fun m!774837 () Bool)

(assert (=> d!105809 m!774837))

(declare-fun m!774839 () Bool)

(assert (=> b!831078 m!774839))

(assert (=> b!830363 d!105809))

(declare-fun d!105811 () Bool)

(declare-fun lt!377174 () Bool)

(assert (=> d!105811 (= lt!377174 (select (content!389 lt!376922) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun e!463441 () Bool)

(assert (=> d!105811 (= lt!377174 e!463441)))

(declare-fun res!565860 () Bool)

(assert (=> d!105811 (=> (not res!565860) (not e!463441))))

(assert (=> d!105811 (= res!565860 ((_ is Cons!15999) lt!376922))))

(assert (=> d!105811 (= (contains!4209 lt!376922 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))) lt!377174)))

(declare-fun b!831079 () Bool)

(declare-fun e!463440 () Bool)

(assert (=> b!831079 (= e!463441 e!463440)))

(declare-fun res!565859 () Bool)

(assert (=> b!831079 (=> res!565859 e!463440)))

(assert (=> b!831079 (= res!565859 (= (h!17128 lt!376922) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun b!831080 () Bool)

(assert (=> b!831080 (= e!463440 (contains!4209 (t!22376 lt!376922) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(assert (= (and d!105811 res!565860) b!831079))

(assert (= (and b!831079 (not res!565859)) b!831080))

(declare-fun m!774841 () Bool)

(assert (=> d!105811 m!774841))

(declare-fun m!774843 () Bool)

(assert (=> d!105811 m!774843))

(declare-fun m!774845 () Bool)

(assert (=> b!831080 m!774845))

(assert (=> b!830448 d!105811))

(assert (=> b!830354 d!105645))

(assert (=> b!830354 d!105647))

(declare-fun d!105813 () Bool)

(declare-fun res!565861 () Bool)

(declare-fun e!463442 () Bool)

(assert (=> d!105813 (=> res!565861 e!463442)))

(assert (=> d!105813 (= res!565861 (and ((_ is Cons!15999) (toList!4521 lt!376779)) (= (_1!5097 (h!17128 (toList!4521 lt!376779))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105813 (= (containsKey!400 (toList!4521 lt!376779) #b0000000000000000000000000000000000000000000000000000000000000000) e!463442)))

(declare-fun b!831081 () Bool)

(declare-fun e!463443 () Bool)

(assert (=> b!831081 (= e!463442 e!463443)))

(declare-fun res!565862 () Bool)

(assert (=> b!831081 (=> (not res!565862) (not e!463443))))

(assert (=> b!831081 (= res!565862 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376779))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376779))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!15999) (toList!4521 lt!376779)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376779))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831082 () Bool)

(assert (=> b!831082 (= e!463443 (containsKey!400 (t!22376 (toList!4521 lt!376779)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105813 (not res!565861)) b!831081))

(assert (= (and b!831081 res!565862) b!831082))

(declare-fun m!774847 () Bool)

(assert (=> b!831082 m!774847))

(assert (=> d!105509 d!105813))

(declare-fun d!105815 () Bool)

(declare-fun res!565863 () Bool)

(declare-fun e!463444 () Bool)

(assert (=> d!105815 (=> res!565863 e!463444)))

(assert (=> d!105815 (= res!565863 (and ((_ is Cons!15999) lt!376735) (= (_1!5097 (h!17128 lt!376735)) (_1!5097 lt!376628))))))

(assert (=> d!105815 (= (containsKey!400 lt!376735 (_1!5097 lt!376628)) e!463444)))

(declare-fun b!831083 () Bool)

(declare-fun e!463445 () Bool)

(assert (=> b!831083 (= e!463444 e!463445)))

(declare-fun res!565864 () Bool)

(assert (=> b!831083 (=> (not res!565864) (not e!463445))))

(assert (=> b!831083 (= res!565864 (and (or (not ((_ is Cons!15999) lt!376735)) (bvsle (_1!5097 (h!17128 lt!376735)) (_1!5097 lt!376628))) ((_ is Cons!15999) lt!376735) (bvslt (_1!5097 (h!17128 lt!376735)) (_1!5097 lt!376628))))))

(declare-fun b!831084 () Bool)

(assert (=> b!831084 (= e!463445 (containsKey!400 (t!22376 lt!376735) (_1!5097 lt!376628)))))

(assert (= (and d!105815 (not res!565863)) b!831083))

(assert (= (and b!831083 res!565864) b!831084))

(declare-fun m!774849 () Bool)

(assert (=> b!831084 m!774849))

(assert (=> b!830533 d!105815))

(declare-fun d!105817 () Bool)

(declare-fun e!463447 () Bool)

(assert (=> d!105817 e!463447))

(declare-fun res!565865 () Bool)

(assert (=> d!105817 (=> res!565865 e!463447)))

(declare-fun lt!377178 () Bool)

(assert (=> d!105817 (= res!565865 (not lt!377178))))

(declare-fun lt!377177 () Bool)

(assert (=> d!105817 (= lt!377178 lt!377177)))

(declare-fun lt!377175 () Unit!28435)

(declare-fun e!463446 () Unit!28435)

(assert (=> d!105817 (= lt!377175 e!463446)))

(declare-fun c!90084 () Bool)

(assert (=> d!105817 (= c!90084 lt!377177)))

(assert (=> d!105817 (= lt!377177 (containsKey!400 (toList!4521 lt!376943) (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))

(assert (=> d!105817 (= (contains!4208 lt!376943 (_1!5097 (tuple2!10175 lt!376792 lt!376790))) lt!377178)))

(declare-fun b!831085 () Bool)

(declare-fun lt!377176 () Unit!28435)

(assert (=> b!831085 (= e!463446 lt!377176)))

(assert (=> b!831085 (= lt!377176 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376943) (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))

(assert (=> b!831085 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376943) (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))

(declare-fun b!831086 () Bool)

(declare-fun Unit!28473 () Unit!28435)

(assert (=> b!831086 (= e!463446 Unit!28473)))

(declare-fun b!831087 () Bool)

(assert (=> b!831087 (= e!463447 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376943) (_1!5097 (tuple2!10175 lt!376792 lt!376790)))))))

(assert (= (and d!105817 c!90084) b!831085))

(assert (= (and d!105817 (not c!90084)) b!831086))

(assert (= (and d!105817 (not res!565865)) b!831087))

(declare-fun m!774851 () Bool)

(assert (=> d!105817 m!774851))

(declare-fun m!774853 () Bool)

(assert (=> b!831085 m!774853))

(assert (=> b!831085 m!773929))

(assert (=> b!831085 m!773929))

(declare-fun m!774855 () Bool)

(assert (=> b!831085 m!774855))

(assert (=> b!831087 m!773929))

(assert (=> b!831087 m!773929))

(assert (=> b!831087 m!774855))

(assert (=> d!105417 d!105817))

(declare-fun e!463449 () Option!420)

(declare-fun b!831090 () Bool)

(assert (=> b!831090 (= e!463449 (getValueByKey!414 (t!22376 lt!376945) (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))

(declare-fun b!831091 () Bool)

(assert (=> b!831091 (= e!463449 None!418)))

(declare-fun d!105819 () Bool)

(declare-fun c!90085 () Bool)

(assert (=> d!105819 (= c!90085 (and ((_ is Cons!15999) lt!376945) (= (_1!5097 (h!17128 lt!376945)) (_1!5097 (tuple2!10175 lt!376792 lt!376790)))))))

(declare-fun e!463448 () Option!420)

(assert (=> d!105819 (= (getValueByKey!414 lt!376945 (_1!5097 (tuple2!10175 lt!376792 lt!376790))) e!463448)))

(declare-fun b!831088 () Bool)

(assert (=> b!831088 (= e!463448 (Some!419 (_2!5097 (h!17128 lt!376945))))))

(declare-fun b!831089 () Bool)

(assert (=> b!831089 (= e!463448 e!463449)))

(declare-fun c!90086 () Bool)

(assert (=> b!831089 (= c!90086 (and ((_ is Cons!15999) lt!376945) (not (= (_1!5097 (h!17128 lt!376945)) (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))))

(assert (= (and d!105819 c!90085) b!831088))

(assert (= (and d!105819 (not c!90085)) b!831089))

(assert (= (and b!831089 c!90086) b!831090))

(assert (= (and b!831089 (not c!90086)) b!831091))

(declare-fun m!774857 () Bool)

(assert (=> b!831090 m!774857))

(assert (=> d!105417 d!105819))

(declare-fun d!105821 () Bool)

(assert (=> d!105821 (= (getValueByKey!414 lt!376945 (_1!5097 (tuple2!10175 lt!376792 lt!376790))) (Some!419 (_2!5097 (tuple2!10175 lt!376792 lt!376790))))))

(declare-fun lt!377179 () Unit!28435)

(assert (=> d!105821 (= lt!377179 (choose!1427 lt!376945 (_1!5097 (tuple2!10175 lt!376792 lt!376790)) (_2!5097 (tuple2!10175 lt!376792 lt!376790))))))

(declare-fun e!463450 () Bool)

(assert (=> d!105821 e!463450))

(declare-fun res!565866 () Bool)

(assert (=> d!105821 (=> (not res!565866) (not e!463450))))

(assert (=> d!105821 (= res!565866 (isStrictlySorted!437 lt!376945))))

(assert (=> d!105821 (= (lemmaContainsTupThenGetReturnValue!230 lt!376945 (_1!5097 (tuple2!10175 lt!376792 lt!376790)) (_2!5097 (tuple2!10175 lt!376792 lt!376790))) lt!377179)))

(declare-fun b!831092 () Bool)

(declare-fun res!565867 () Bool)

(assert (=> b!831092 (=> (not res!565867) (not e!463450))))

(assert (=> b!831092 (= res!565867 (containsKey!400 lt!376945 (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))

(declare-fun b!831093 () Bool)

(assert (=> b!831093 (= e!463450 (contains!4209 lt!376945 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376792 lt!376790)) (_2!5097 (tuple2!10175 lt!376792 lt!376790)))))))

(assert (= (and d!105821 res!565866) b!831092))

(assert (= (and b!831092 res!565867) b!831093))

(assert (=> d!105821 m!773923))

(declare-fun m!774859 () Bool)

(assert (=> d!105821 m!774859))

(declare-fun m!774861 () Bool)

(assert (=> d!105821 m!774861))

(declare-fun m!774863 () Bool)

(assert (=> b!831092 m!774863))

(declare-fun m!774865 () Bool)

(assert (=> b!831093 m!774865))

(assert (=> d!105417 d!105821))

(declare-fun b!831094 () Bool)

(declare-fun e!463451 () List!16003)

(declare-fun call!36324 () List!16003)

(assert (=> b!831094 (= e!463451 call!36324)))

(declare-fun bm!36319 () Bool)

(declare-fun call!36322 () List!16003)

(assert (=> bm!36319 (= call!36324 call!36322)))

(declare-fun b!831095 () Bool)

(declare-fun e!463453 () Bool)

(declare-fun lt!377180 () List!16003)

(assert (=> b!831095 (= e!463453 (contains!4209 lt!377180 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376792 lt!376790)) (_2!5097 (tuple2!10175 lt!376792 lt!376790)))))))

(declare-fun b!831096 () Bool)

(declare-fun c!90090 () Bool)

(declare-fun e!463454 () List!16003)

(declare-fun c!90089 () Bool)

(assert (=> b!831096 (= e!463454 (ite c!90090 (t!22376 (toList!4521 lt!376791)) (ite c!90089 (Cons!15999 (h!17128 (toList!4521 lt!376791)) (t!22376 (toList!4521 lt!376791))) Nil!16000)))))

(declare-fun b!831097 () Bool)

(assert (=> b!831097 (= e!463454 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376791)) (_1!5097 (tuple2!10175 lt!376792 lt!376790)) (_2!5097 (tuple2!10175 lt!376792 lt!376790))))))

(declare-fun b!831098 () Bool)

(assert (=> b!831098 (= e!463451 call!36324)))

(declare-fun bm!36320 () Bool)

(declare-fun c!90087 () Bool)

(declare-fun call!36323 () List!16003)

(assert (=> bm!36320 (= call!36323 ($colon$colon!535 e!463454 (ite c!90087 (h!17128 (toList!4521 lt!376791)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376792 lt!376790)) (_2!5097 (tuple2!10175 lt!376792 lt!376790))))))))

(declare-fun c!90088 () Bool)

(assert (=> bm!36320 (= c!90088 c!90087)))

(declare-fun b!831099 () Bool)

(declare-fun e!463455 () List!16003)

(assert (=> b!831099 (= e!463455 call!36322)))

(declare-fun b!831100 () Bool)

(declare-fun e!463452 () List!16003)

(assert (=> b!831100 (= e!463452 call!36323)))

(declare-fun b!831101 () Bool)

(assert (=> b!831101 (= e!463452 e!463455)))

(assert (=> b!831101 (= c!90090 (and ((_ is Cons!15999) (toList!4521 lt!376791)) (= (_1!5097 (h!17128 (toList!4521 lt!376791))) (_1!5097 (tuple2!10175 lt!376792 lt!376790)))))))

(declare-fun b!831103 () Bool)

(declare-fun res!565868 () Bool)

(assert (=> b!831103 (=> (not res!565868) (not e!463453))))

(assert (=> b!831103 (= res!565868 (containsKey!400 lt!377180 (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))

(declare-fun bm!36321 () Bool)

(assert (=> bm!36321 (= call!36322 call!36323)))

(declare-fun d!105823 () Bool)

(assert (=> d!105823 e!463453))

(declare-fun res!565869 () Bool)

(assert (=> d!105823 (=> (not res!565869) (not e!463453))))

(assert (=> d!105823 (= res!565869 (isStrictlySorted!437 lt!377180))))

(assert (=> d!105823 (= lt!377180 e!463452)))

(assert (=> d!105823 (= c!90087 (and ((_ is Cons!15999) (toList!4521 lt!376791)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376791))) (_1!5097 (tuple2!10175 lt!376792 lt!376790)))))))

(assert (=> d!105823 (isStrictlySorted!437 (toList!4521 lt!376791))))

(assert (=> d!105823 (= (insertStrictlySorted!268 (toList!4521 lt!376791) (_1!5097 (tuple2!10175 lt!376792 lt!376790)) (_2!5097 (tuple2!10175 lt!376792 lt!376790))) lt!377180)))

(declare-fun b!831102 () Bool)

(assert (=> b!831102 (= c!90089 (and ((_ is Cons!15999) (toList!4521 lt!376791)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376791))) (_1!5097 (tuple2!10175 lt!376792 lt!376790)))))))

(assert (=> b!831102 (= e!463455 e!463451)))

(assert (= (and d!105823 c!90087) b!831100))

(assert (= (and d!105823 (not c!90087)) b!831101))

(assert (= (and b!831101 c!90090) b!831099))

(assert (= (and b!831101 (not c!90090)) b!831102))

(assert (= (and b!831102 c!90089) b!831094))

(assert (= (and b!831102 (not c!90089)) b!831098))

(assert (= (or b!831094 b!831098) bm!36319))

(assert (= (or b!831099 bm!36319) bm!36321))

(assert (= (or b!831100 bm!36321) bm!36320))

(assert (= (and bm!36320 c!90088) b!831097))

(assert (= (and bm!36320 (not c!90088)) b!831096))

(assert (= (and d!105823 res!565869) b!831103))

(assert (= (and b!831103 res!565868) b!831095))

(declare-fun m!774867 () Bool)

(assert (=> b!831103 m!774867))

(declare-fun m!774869 () Bool)

(assert (=> d!105823 m!774869))

(declare-fun m!774871 () Bool)

(assert (=> d!105823 m!774871))

(declare-fun m!774873 () Bool)

(assert (=> bm!36320 m!774873))

(declare-fun m!774875 () Bool)

(assert (=> b!831097 m!774875))

(declare-fun m!774877 () Bool)

(assert (=> b!831095 m!774877))

(assert (=> d!105417 d!105823))

(declare-fun d!105825 () Bool)

(declare-fun lt!377181 () Bool)

(assert (=> d!105825 (= lt!377181 (select (content!388 (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!463457 () Bool)

(assert (=> d!105825 (= lt!377181 e!463457)))

(declare-fun res!565870 () Bool)

(assert (=> d!105825 (=> (not res!565870) (not e!463457))))

(assert (=> d!105825 (= res!565870 ((_ is Cons!16000) (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)))))

(assert (=> d!105825 (= (contains!4210 (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!377181)))

(declare-fun b!831104 () Bool)

(declare-fun e!463456 () Bool)

(assert (=> b!831104 (= e!463457 e!463456)))

(declare-fun res!565871 () Bool)

(assert (=> b!831104 (=> res!565871 e!463456)))

(assert (=> b!831104 (= res!565871 (= (h!17129 (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!831105 () Bool)

(assert (=> b!831105 (= e!463456 (contains!4210 (t!22377 (ite c!89808 (Cons!16000 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) Nil!16001) Nil!16001)) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!105825 res!565870) b!831104))

(assert (= (and b!831104 (not res!565871)) b!831105))

(declare-fun m!774879 () Bool)

(assert (=> d!105825 m!774879))

(assert (=> d!105825 m!773495))

(declare-fun m!774881 () Bool)

(assert (=> d!105825 m!774881))

(assert (=> b!831105 m!773495))

(declare-fun m!774883 () Bool)

(assert (=> b!831105 m!774883))

(assert (=> b!830312 d!105825))

(declare-fun d!105827 () Bool)

(assert (=> d!105827 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!10091 (getValueByKey!414 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105369 d!105827))

(assert (=> d!105369 d!105653))

(declare-fun d!105829 () Bool)

(assert (=> d!105829 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) (v!10091 (getValueByKey!414 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!105375 d!105829))

(declare-fun b!831108 () Bool)

(declare-fun e!463459 () Option!420)

(assert (=> b!831108 (= e!463459 (getValueByKey!414 (t!22376 (toList!4521 lt!376779)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!831109 () Bool)

(assert (=> b!831109 (= e!463459 None!418)))

(declare-fun d!105831 () Bool)

(declare-fun c!90091 () Bool)

(assert (=> d!105831 (= c!90091 (and ((_ is Cons!15999) (toList!4521 lt!376779)) (= (_1!5097 (h!17128 (toList!4521 lt!376779))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun e!463458 () Option!420)

(assert (=> d!105831 (= (getValueByKey!414 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) e!463458)))

(declare-fun b!831106 () Bool)

(assert (=> b!831106 (= e!463458 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376779)))))))

(declare-fun b!831107 () Bool)

(assert (=> b!831107 (= e!463458 e!463459)))

(declare-fun c!90092 () Bool)

(assert (=> b!831107 (= c!90092 (and ((_ is Cons!15999) (toList!4521 lt!376779)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376779))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))))

(assert (= (and d!105831 c!90091) b!831106))

(assert (= (and d!105831 (not c!90091)) b!831107))

(assert (= (and b!831107 c!90092) b!831108))

(assert (= (and b!831107 (not c!90092)) b!831109))

(assert (=> b!831108 m!773277))

(declare-fun m!774885 () Bool)

(assert (=> b!831108 m!774885))

(assert (=> d!105375 d!105831))

(assert (=> d!105499 d!105501))

(declare-fun d!105833 () Bool)

(assert (=> d!105833 (arrayContainsKey!0 _keys!976 lt!376799 #b00000000000000000000000000000000)))

(assert (=> d!105833 true))

(declare-fun _$60!394 () Unit!28435)

(assert (=> d!105833 (= (choose!13 _keys!976 lt!376799 #b00000000000000000000000000000000) _$60!394)))

(declare-fun bs!23220 () Bool)

(assert (= bs!23220 d!105833))

(assert (=> bs!23220 m!773461))

(assert (=> d!105499 d!105833))

(declare-fun b!831112 () Bool)

(declare-fun e!463461 () Option!420)

(assert (=> b!831112 (= e!463461 (getValueByKey!414 (t!22376 (toList!4521 lt!376872)) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(declare-fun b!831113 () Bool)

(assert (=> b!831113 (= e!463461 None!418)))

(declare-fun c!90093 () Bool)

(declare-fun d!105835 () Bool)

(assert (=> d!105835 (= c!90093 (and ((_ is Cons!15999) (toList!4521 lt!376872)) (= (_1!5097 (h!17128 (toList!4521 lt!376872))) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))

(declare-fun e!463460 () Option!420)

(assert (=> d!105835 (= (getValueByKey!414 (toList!4521 lt!376872) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))) e!463460)))

(declare-fun b!831110 () Bool)

(assert (=> b!831110 (= e!463460 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376872)))))))

(declare-fun b!831111 () Bool)

(assert (=> b!831111 (= e!463460 e!463461)))

(declare-fun c!90094 () Bool)

(assert (=> b!831111 (= c!90094 (and ((_ is Cons!15999) (toList!4521 lt!376872)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376872))) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))))

(assert (= (and d!105835 c!90093) b!831110))

(assert (= (and d!105835 (not c!90093)) b!831111))

(assert (= (and b!831111 c!90094) b!831112))

(assert (= (and b!831111 (not c!90094)) b!831113))

(declare-fun m!774887 () Bool)

(assert (=> b!831112 m!774887))

(assert (=> b!830350 d!105835))

(declare-fun d!105837 () Bool)

(declare-fun res!565872 () Bool)

(declare-fun e!463462 () Bool)

(assert (=> d!105837 (=> res!565872 e!463462)))

(assert (=> d!105837 (= res!565872 (and ((_ is Cons!15999) (toList!4521 lt!376786)) (= (_1!5097 (h!17128 (toList!4521 lt!376786))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105837 (= (containsKey!400 (toList!4521 lt!376786) #b0000000000000000000000000000000000000000000000000000000000000000) e!463462)))

(declare-fun b!831114 () Bool)

(declare-fun e!463463 () Bool)

(assert (=> b!831114 (= e!463462 e!463463)))

(declare-fun res!565873 () Bool)

(assert (=> b!831114 (=> (not res!565873) (not e!463463))))

(assert (=> b!831114 (= res!565873 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376786))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376786))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!15999) (toList!4521 lt!376786)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376786))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831115 () Bool)

(assert (=> b!831115 (= e!463463 (containsKey!400 (t!22376 (toList!4521 lt!376786)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105837 (not res!565872)) b!831114))

(assert (= (and b!831114 res!565873) b!831115))

(declare-fun m!774889 () Bool)

(assert (=> b!831115 m!774889))

(assert (=> d!105505 d!105837))

(declare-fun d!105839 () Bool)

(declare-fun e!463465 () Bool)

(assert (=> d!105839 e!463465))

(declare-fun res!565874 () Bool)

(assert (=> d!105839 (=> res!565874 e!463465)))

(declare-fun lt!377185 () Bool)

(assert (=> d!105839 (= res!565874 (not lt!377185))))

(declare-fun lt!377184 () Bool)

(assert (=> d!105839 (= lt!377185 lt!377184)))

(declare-fun lt!377182 () Unit!28435)

(declare-fun e!463464 () Unit!28435)

(assert (=> d!105839 (= lt!377182 e!463464)))

(declare-fun c!90095 () Bool)

(assert (=> d!105839 (= c!90095 lt!377184)))

(assert (=> d!105839 (= lt!377184 (containsKey!400 (toList!4521 lt!377002) (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))

(assert (=> d!105839 (= (contains!4208 lt!377002 (_1!5097 (tuple2!10175 lt!376752 minValue!754))) lt!377185)))

(declare-fun b!831116 () Bool)

(declare-fun lt!377183 () Unit!28435)

(assert (=> b!831116 (= e!463464 lt!377183)))

(assert (=> b!831116 (= lt!377183 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!377002) (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))

(assert (=> b!831116 (isDefined!311 (getValueByKey!414 (toList!4521 lt!377002) (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))

(declare-fun b!831117 () Bool)

(declare-fun Unit!28474 () Unit!28435)

(assert (=> b!831117 (= e!463464 Unit!28474)))

(declare-fun b!831118 () Bool)

(assert (=> b!831118 (= e!463465 (isDefined!311 (getValueByKey!414 (toList!4521 lt!377002) (_1!5097 (tuple2!10175 lt!376752 minValue!754)))))))

(assert (= (and d!105839 c!90095) b!831116))

(assert (= (and d!105839 (not c!90095)) b!831117))

(assert (= (and d!105839 (not res!565874)) b!831118))

(declare-fun m!774891 () Bool)

(assert (=> d!105839 m!774891))

(declare-fun m!774893 () Bool)

(assert (=> b!831116 m!774893))

(assert (=> b!831116 m!774107))

(assert (=> b!831116 m!774107))

(declare-fun m!774895 () Bool)

(assert (=> b!831116 m!774895))

(assert (=> b!831118 m!774107))

(assert (=> b!831118 m!774107))

(assert (=> b!831118 m!774895))

(assert (=> d!105471 d!105839))

(declare-fun b!831121 () Bool)

(declare-fun e!463467 () Option!420)

(assert (=> b!831121 (= e!463467 (getValueByKey!414 (t!22376 lt!377004) (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))

(declare-fun b!831122 () Bool)

(assert (=> b!831122 (= e!463467 None!418)))

(declare-fun c!90096 () Bool)

(declare-fun d!105841 () Bool)

(assert (=> d!105841 (= c!90096 (and ((_ is Cons!15999) lt!377004) (= (_1!5097 (h!17128 lt!377004)) (_1!5097 (tuple2!10175 lt!376752 minValue!754)))))))

(declare-fun e!463466 () Option!420)

(assert (=> d!105841 (= (getValueByKey!414 lt!377004 (_1!5097 (tuple2!10175 lt!376752 minValue!754))) e!463466)))

(declare-fun b!831119 () Bool)

(assert (=> b!831119 (= e!463466 (Some!419 (_2!5097 (h!17128 lt!377004))))))

(declare-fun b!831120 () Bool)

(assert (=> b!831120 (= e!463466 e!463467)))

(declare-fun c!90097 () Bool)

(assert (=> b!831120 (= c!90097 (and ((_ is Cons!15999) lt!377004) (not (= (_1!5097 (h!17128 lt!377004)) (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))))

(assert (= (and d!105841 c!90096) b!831119))

(assert (= (and d!105841 (not c!90096)) b!831120))

(assert (= (and b!831120 c!90097) b!831121))

(assert (= (and b!831120 (not c!90097)) b!831122))

(declare-fun m!774897 () Bool)

(assert (=> b!831121 m!774897))

(assert (=> d!105471 d!105841))

(declare-fun d!105843 () Bool)

(assert (=> d!105843 (= (getValueByKey!414 lt!377004 (_1!5097 (tuple2!10175 lt!376752 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376752 minValue!754))))))

(declare-fun lt!377186 () Unit!28435)

(assert (=> d!105843 (= lt!377186 (choose!1427 lt!377004 (_1!5097 (tuple2!10175 lt!376752 minValue!754)) (_2!5097 (tuple2!10175 lt!376752 minValue!754))))))

(declare-fun e!463468 () Bool)

(assert (=> d!105843 e!463468))

(declare-fun res!565875 () Bool)

(assert (=> d!105843 (=> (not res!565875) (not e!463468))))

(assert (=> d!105843 (= res!565875 (isStrictlySorted!437 lt!377004))))

(assert (=> d!105843 (= (lemmaContainsTupThenGetReturnValue!230 lt!377004 (_1!5097 (tuple2!10175 lt!376752 minValue!754)) (_2!5097 (tuple2!10175 lt!376752 minValue!754))) lt!377186)))

(declare-fun b!831123 () Bool)

(declare-fun res!565876 () Bool)

(assert (=> b!831123 (=> (not res!565876) (not e!463468))))

(assert (=> b!831123 (= res!565876 (containsKey!400 lt!377004 (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))

(declare-fun b!831124 () Bool)

(assert (=> b!831124 (= e!463468 (contains!4209 lt!377004 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376752 minValue!754)) (_2!5097 (tuple2!10175 lt!376752 minValue!754)))))))

(assert (= (and d!105843 res!565875) b!831123))

(assert (= (and b!831123 res!565876) b!831124))

(assert (=> d!105843 m!774101))

(declare-fun m!774899 () Bool)

(assert (=> d!105843 m!774899))

(declare-fun m!774901 () Bool)

(assert (=> d!105843 m!774901))

(declare-fun m!774903 () Bool)

(assert (=> b!831123 m!774903))

(declare-fun m!774905 () Bool)

(assert (=> b!831124 m!774905))

(assert (=> d!105471 d!105843))

(declare-fun b!831125 () Bool)

(declare-fun e!463469 () List!16003)

(declare-fun call!36327 () List!16003)

(assert (=> b!831125 (= e!463469 call!36327)))

(declare-fun bm!36322 () Bool)

(declare-fun call!36325 () List!16003)

(assert (=> bm!36322 (= call!36327 call!36325)))

(declare-fun lt!377187 () List!16003)

(declare-fun e!463471 () Bool)

(declare-fun b!831126 () Bool)

(assert (=> b!831126 (= e!463471 (contains!4209 lt!377187 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376752 minValue!754)) (_2!5097 (tuple2!10175 lt!376752 minValue!754)))))))

(declare-fun e!463472 () List!16003)

(declare-fun c!90101 () Bool)

(declare-fun c!90100 () Bool)

(declare-fun b!831127 () Bool)

(assert (=> b!831127 (= e!463472 (ite c!90101 (t!22376 (toList!4521 lt!376751)) (ite c!90100 (Cons!15999 (h!17128 (toList!4521 lt!376751)) (t!22376 (toList!4521 lt!376751))) Nil!16000)))))

(declare-fun b!831128 () Bool)

(assert (=> b!831128 (= e!463472 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376751)) (_1!5097 (tuple2!10175 lt!376752 minValue!754)) (_2!5097 (tuple2!10175 lt!376752 minValue!754))))))

(declare-fun b!831129 () Bool)

(assert (=> b!831129 (= e!463469 call!36327)))

(declare-fun call!36326 () List!16003)

(declare-fun c!90098 () Bool)

(declare-fun bm!36323 () Bool)

(assert (=> bm!36323 (= call!36326 ($colon$colon!535 e!463472 (ite c!90098 (h!17128 (toList!4521 lt!376751)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376752 minValue!754)) (_2!5097 (tuple2!10175 lt!376752 minValue!754))))))))

(declare-fun c!90099 () Bool)

(assert (=> bm!36323 (= c!90099 c!90098)))

(declare-fun b!831130 () Bool)

(declare-fun e!463473 () List!16003)

(assert (=> b!831130 (= e!463473 call!36325)))

(declare-fun b!831131 () Bool)

(declare-fun e!463470 () List!16003)

(assert (=> b!831131 (= e!463470 call!36326)))

(declare-fun b!831132 () Bool)

(assert (=> b!831132 (= e!463470 e!463473)))

(assert (=> b!831132 (= c!90101 (and ((_ is Cons!15999) (toList!4521 lt!376751)) (= (_1!5097 (h!17128 (toList!4521 lt!376751))) (_1!5097 (tuple2!10175 lt!376752 minValue!754)))))))

(declare-fun b!831134 () Bool)

(declare-fun res!565877 () Bool)

(assert (=> b!831134 (=> (not res!565877) (not e!463471))))

(assert (=> b!831134 (= res!565877 (containsKey!400 lt!377187 (_1!5097 (tuple2!10175 lt!376752 minValue!754))))))

(declare-fun bm!36324 () Bool)

(assert (=> bm!36324 (= call!36325 call!36326)))

(declare-fun d!105845 () Bool)

(assert (=> d!105845 e!463471))

(declare-fun res!565878 () Bool)

(assert (=> d!105845 (=> (not res!565878) (not e!463471))))

(assert (=> d!105845 (= res!565878 (isStrictlySorted!437 lt!377187))))

(assert (=> d!105845 (= lt!377187 e!463470)))

(assert (=> d!105845 (= c!90098 (and ((_ is Cons!15999) (toList!4521 lt!376751)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376751))) (_1!5097 (tuple2!10175 lt!376752 minValue!754)))))))

(assert (=> d!105845 (isStrictlySorted!437 (toList!4521 lt!376751))))

(assert (=> d!105845 (= (insertStrictlySorted!268 (toList!4521 lt!376751) (_1!5097 (tuple2!10175 lt!376752 minValue!754)) (_2!5097 (tuple2!10175 lt!376752 minValue!754))) lt!377187)))

(declare-fun b!831133 () Bool)

(assert (=> b!831133 (= c!90100 (and ((_ is Cons!15999) (toList!4521 lt!376751)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376751))) (_1!5097 (tuple2!10175 lt!376752 minValue!754)))))))

(assert (=> b!831133 (= e!463473 e!463469)))

(assert (= (and d!105845 c!90098) b!831131))

(assert (= (and d!105845 (not c!90098)) b!831132))

(assert (= (and b!831132 c!90101) b!831130))

(assert (= (and b!831132 (not c!90101)) b!831133))

(assert (= (and b!831133 c!90100) b!831125))

(assert (= (and b!831133 (not c!90100)) b!831129))

(assert (= (or b!831125 b!831129) bm!36322))

(assert (= (or b!831130 bm!36322) bm!36324))

(assert (= (or b!831131 bm!36324) bm!36323))

(assert (= (and bm!36323 c!90099) b!831128))

(assert (= (and bm!36323 (not c!90099)) b!831127))

(assert (= (and d!105845 res!565878) b!831134))

(assert (= (and b!831134 res!565877) b!831126))

(declare-fun m!774907 () Bool)

(assert (=> b!831134 m!774907))

(declare-fun m!774909 () Bool)

(assert (=> d!105845 m!774909))

(declare-fun m!774911 () Bool)

(assert (=> d!105845 m!774911))

(declare-fun m!774913 () Bool)

(assert (=> bm!36323 m!774913))

(declare-fun m!774915 () Bool)

(assert (=> b!831128 m!774915))

(declare-fun m!774917 () Bool)

(assert (=> b!831126 m!774917))

(assert (=> d!105471 d!105845))

(assert (=> d!105397 d!105395))

(declare-fun d!105847 () Bool)

(assert (=> d!105847 (= (getValueByKey!414 lt!376731 (_1!5097 lt!376622)) (Some!419 (_2!5097 lt!376622)))))

(assert (=> d!105847 true))

(declare-fun _$22!568 () Unit!28435)

(assert (=> d!105847 (= (choose!1427 lt!376731 (_1!5097 lt!376622) (_2!5097 lt!376622)) _$22!568)))

(declare-fun bs!23221 () Bool)

(assert (= bs!23221 d!105847))

(assert (=> bs!23221 m!773333))

(assert (=> d!105397 d!105847))

(declare-fun d!105849 () Bool)

(declare-fun res!565879 () Bool)

(declare-fun e!463474 () Bool)

(assert (=> d!105849 (=> res!565879 e!463474)))

(assert (=> d!105849 (= res!565879 (or ((_ is Nil!16000) lt!376731) ((_ is Nil!16000) (t!22376 lt!376731))))))

(assert (=> d!105849 (= (isStrictlySorted!437 lt!376731) e!463474)))

(declare-fun b!831135 () Bool)

(declare-fun e!463475 () Bool)

(assert (=> b!831135 (= e!463474 e!463475)))

(declare-fun res!565880 () Bool)

(assert (=> b!831135 (=> (not res!565880) (not e!463475))))

(assert (=> b!831135 (= res!565880 (bvslt (_1!5097 (h!17128 lt!376731)) (_1!5097 (h!17128 (t!22376 lt!376731)))))))

(declare-fun b!831136 () Bool)

(assert (=> b!831136 (= e!463475 (isStrictlySorted!437 (t!22376 lt!376731)))))

(assert (= (and d!105849 (not res!565879)) b!831135))

(assert (= (and b!831135 res!565880) b!831136))

(declare-fun m!774919 () Bool)

(assert (=> b!831136 m!774919))

(assert (=> d!105397 d!105849))

(declare-fun d!105851 () Bool)

(declare-fun e!463477 () Bool)

(assert (=> d!105851 e!463477))

(declare-fun res!565881 () Bool)

(assert (=> d!105851 (=> res!565881 e!463477)))

(declare-fun lt!377191 () Bool)

(assert (=> d!105851 (= res!565881 (not lt!377191))))

(declare-fun lt!377190 () Bool)

(assert (=> d!105851 (= lt!377191 lt!377190)))

(declare-fun lt!377188 () Unit!28435)

(declare-fun e!463476 () Unit!28435)

(assert (=> d!105851 (= lt!377188 e!463476)))

(declare-fun c!90102 () Bool)

(assert (=> d!105851 (= c!90102 lt!377190)))

(assert (=> d!105851 (= lt!377190 (containsKey!400 (toList!4521 lt!376872) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(assert (=> d!105851 (= (contains!4208 lt!376872 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))) lt!377191)))

(declare-fun b!831137 () Bool)

(declare-fun lt!377189 () Unit!28435)

(assert (=> b!831137 (= e!463476 lt!377189)))

(assert (=> b!831137 (= lt!377189 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376872) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(assert (=> b!831137 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376872) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(declare-fun b!831138 () Bool)

(declare-fun Unit!28475 () Unit!28435)

(assert (=> b!831138 (= e!463476 Unit!28475)))

(declare-fun b!831139 () Bool)

(assert (=> b!831139 (= e!463477 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376872) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))

(assert (= (and d!105851 c!90102) b!831137))

(assert (= (and d!105851 (not c!90102)) b!831138))

(assert (= (and d!105851 (not res!565881)) b!831139))

(declare-fun m!774921 () Bool)

(assert (=> d!105851 m!774921))

(declare-fun m!774923 () Bool)

(assert (=> b!831137 m!774923))

(assert (=> b!831137 m!773689))

(assert (=> b!831137 m!773689))

(declare-fun m!774925 () Bool)

(assert (=> b!831137 m!774925))

(assert (=> b!831139 m!773689))

(assert (=> b!831139 m!773689))

(assert (=> b!831139 m!774925))

(assert (=> d!105345 d!105851))

(declare-fun b!831142 () Bool)

(declare-fun e!463479 () Option!420)

(assert (=> b!831142 (= e!463479 (getValueByKey!414 (t!22376 lt!376874) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(declare-fun b!831143 () Bool)

(assert (=> b!831143 (= e!463479 None!418)))

(declare-fun c!90103 () Bool)

(declare-fun d!105853 () Bool)

(assert (=> d!105853 (= c!90103 (and ((_ is Cons!15999) lt!376874) (= (_1!5097 (h!17128 lt!376874)) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))

(declare-fun e!463478 () Option!420)

(assert (=> d!105853 (= (getValueByKey!414 lt!376874 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))) e!463478)))

(declare-fun b!831140 () Bool)

(assert (=> b!831140 (= e!463478 (Some!419 (_2!5097 (h!17128 lt!376874))))))

(declare-fun b!831141 () Bool)

(assert (=> b!831141 (= e!463478 e!463479)))

(declare-fun c!90104 () Bool)

(assert (=> b!831141 (= c!90104 (and ((_ is Cons!15999) lt!376874) (not (= (_1!5097 (h!17128 lt!376874)) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))))

(assert (= (and d!105853 c!90103) b!831140))

(assert (= (and d!105853 (not c!90103)) b!831141))

(assert (= (and b!831141 c!90104) b!831142))

(assert (= (and b!831141 (not c!90104)) b!831143))

(declare-fun m!774927 () Bool)

(assert (=> b!831142 m!774927))

(assert (=> d!105345 d!105853))

(declare-fun d!105855 () Bool)

(assert (=> d!105855 (= (getValueByKey!414 lt!376874 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(declare-fun lt!377192 () Unit!28435)

(assert (=> d!105855 (= lt!377192 (choose!1427 lt!376874 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(declare-fun e!463480 () Bool)

(assert (=> d!105855 e!463480))

(declare-fun res!565882 () Bool)

(assert (=> d!105855 (=> (not res!565882) (not e!463480))))

(assert (=> d!105855 (= res!565882 (isStrictlySorted!437 lt!376874))))

(assert (=> d!105855 (= (lemmaContainsTupThenGetReturnValue!230 lt!376874 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))) lt!377192)))

(declare-fun b!831144 () Bool)

(declare-fun res!565883 () Bool)

(assert (=> b!831144 (=> (not res!565883) (not e!463480))))

(assert (=> b!831144 (= res!565883 (containsKey!400 lt!376874 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(declare-fun b!831145 () Bool)

(assert (=> b!831145 (= e!463480 (contains!4209 lt!376874 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))

(assert (= (and d!105855 res!565882) b!831144))

(assert (= (and b!831144 res!565883) b!831145))

(assert (=> d!105855 m!773683))

(declare-fun m!774929 () Bool)

(assert (=> d!105855 m!774929))

(declare-fun m!774931 () Bool)

(assert (=> d!105855 m!774931))

(declare-fun m!774933 () Bool)

(assert (=> b!831144 m!774933))

(declare-fun m!774935 () Bool)

(assert (=> b!831145 m!774935))

(assert (=> d!105345 d!105855))

(declare-fun b!831146 () Bool)

(declare-fun e!463481 () List!16003)

(declare-fun call!36330 () List!16003)

(assert (=> b!831146 (= e!463481 call!36330)))

(declare-fun bm!36325 () Bool)

(declare-fun call!36328 () List!16003)

(assert (=> bm!36325 (= call!36330 call!36328)))

(declare-fun lt!377193 () List!16003)

(declare-fun b!831147 () Bool)

(declare-fun e!463483 () Bool)

(assert (=> b!831147 (= e!463483 (contains!4209 lt!377193 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))

(declare-fun b!831148 () Bool)

(declare-fun c!90108 () Bool)

(declare-fun e!463484 () List!16003)

(declare-fun c!90107 () Bool)

(assert (=> b!831148 (= e!463484 (ite c!90108 (t!22376 (toList!4521 lt!376709)) (ite c!90107 (Cons!15999 (h!17128 (toList!4521 lt!376709)) (t!22376 (toList!4521 lt!376709))) Nil!16000)))))

(declare-fun b!831149 () Bool)

(assert (=> b!831149 (= e!463484 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376709)) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(declare-fun b!831150 () Bool)

(assert (=> b!831150 (= e!463481 call!36330)))

(declare-fun bm!36326 () Bool)

(declare-fun c!90105 () Bool)

(declare-fun call!36329 () List!16003)

(assert (=> bm!36326 (= call!36329 ($colon$colon!535 e!463484 (ite c!90105 (h!17128 (toList!4521 lt!376709)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))))

(declare-fun c!90106 () Bool)

(assert (=> bm!36326 (= c!90106 c!90105)))

(declare-fun b!831151 () Bool)

(declare-fun e!463485 () List!16003)

(assert (=> b!831151 (= e!463485 call!36328)))

(declare-fun b!831152 () Bool)

(declare-fun e!463482 () List!16003)

(assert (=> b!831152 (= e!463482 call!36329)))

(declare-fun b!831153 () Bool)

(assert (=> b!831153 (= e!463482 e!463485)))

(assert (=> b!831153 (= c!90108 (and ((_ is Cons!15999) (toList!4521 lt!376709)) (= (_1!5097 (h!17128 (toList!4521 lt!376709))) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))

(declare-fun b!831155 () Bool)

(declare-fun res!565884 () Bool)

(assert (=> b!831155 (=> (not res!565884) (not e!463483))))

(assert (=> b!831155 (= res!565884 (containsKey!400 lt!377193 (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))))))

(declare-fun bm!36327 () Bool)

(assert (=> bm!36327 (= call!36328 call!36329)))

(declare-fun d!105857 () Bool)

(assert (=> d!105857 e!463483))

(declare-fun res!565885 () Bool)

(assert (=> d!105857 (=> (not res!565885) (not e!463483))))

(assert (=> d!105857 (= res!565885 (isStrictlySorted!437 lt!377193))))

(assert (=> d!105857 (= lt!377193 e!463482)))

(assert (=> d!105857 (= c!90105 (and ((_ is Cons!15999) (toList!4521 lt!376709)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376709))) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))

(assert (=> d!105857 (isStrictlySorted!437 (toList!4521 lt!376709))))

(assert (=> d!105857 (= (insertStrictlySorted!268 (toList!4521 lt!376709) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376723 zeroValueAfter!34))) lt!377193)))

(declare-fun b!831154 () Bool)

(assert (=> b!831154 (= c!90107 (and ((_ is Cons!15999) (toList!4521 lt!376709)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376709))) (_1!5097 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))

(assert (=> b!831154 (= e!463485 e!463481)))

(assert (= (and d!105857 c!90105) b!831152))

(assert (= (and d!105857 (not c!90105)) b!831153))

(assert (= (and b!831153 c!90108) b!831151))

(assert (= (and b!831153 (not c!90108)) b!831154))

(assert (= (and b!831154 c!90107) b!831146))

(assert (= (and b!831154 (not c!90107)) b!831150))

(assert (= (or b!831146 b!831150) bm!36325))

(assert (= (or b!831151 bm!36325) bm!36327))

(assert (= (or b!831152 bm!36327) bm!36326))

(assert (= (and bm!36326 c!90106) b!831149))

(assert (= (and bm!36326 (not c!90106)) b!831148))

(assert (= (and d!105857 res!565885) b!831155))

(assert (= (and b!831155 res!565884) b!831147))

(declare-fun m!774937 () Bool)

(assert (=> b!831155 m!774937))

(declare-fun m!774939 () Bool)

(assert (=> d!105857 m!774939))

(declare-fun m!774941 () Bool)

(assert (=> d!105857 m!774941))

(declare-fun m!774943 () Bool)

(assert (=> bm!36326 m!774943))

(declare-fun m!774945 () Bool)

(assert (=> b!831149 m!774945))

(declare-fun m!774947 () Bool)

(assert (=> b!831147 m!774947))

(assert (=> d!105345 d!105857))

(declare-fun b!831158 () Bool)

(declare-fun e!463487 () Option!420)

(assert (=> b!831158 (= e!463487 (getValueByKey!414 (t!22376 (toList!4521 lt!376943)) (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))

(declare-fun b!831159 () Bool)

(assert (=> b!831159 (= e!463487 None!418)))

(declare-fun c!90109 () Bool)

(declare-fun d!105859 () Bool)

(assert (=> d!105859 (= c!90109 (and ((_ is Cons!15999) (toList!4521 lt!376943)) (= (_1!5097 (h!17128 (toList!4521 lt!376943))) (_1!5097 (tuple2!10175 lt!376792 lt!376790)))))))

(declare-fun e!463486 () Option!420)

(assert (=> d!105859 (= (getValueByKey!414 (toList!4521 lt!376943) (_1!5097 (tuple2!10175 lt!376792 lt!376790))) e!463486)))

(declare-fun b!831156 () Bool)

(assert (=> b!831156 (= e!463486 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376943)))))))

(declare-fun b!831157 () Bool)

(assert (=> b!831157 (= e!463486 e!463487)))

(declare-fun c!90110 () Bool)

(assert (=> b!831157 (= c!90110 (and ((_ is Cons!15999) (toList!4521 lt!376943)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376943))) (_1!5097 (tuple2!10175 lt!376792 lt!376790))))))))

(assert (= (and d!105859 c!90109) b!831156))

(assert (= (and d!105859 (not c!90109)) b!831157))

(assert (= (and b!831157 c!90110) b!831158))

(assert (= (and b!831157 (not c!90110)) b!831159))

(declare-fun m!774949 () Bool)

(assert (=> b!831158 m!774949))

(assert (=> b!830485 d!105859))

(declare-fun d!105861 () Bool)

(declare-fun res!565886 () Bool)

(declare-fun e!463488 () Bool)

(assert (=> d!105861 (=> res!565886 e!463488)))

(assert (=> d!105861 (= res!565886 (and ((_ is Cons!15999) lt!376809) (= (_1!5097 (h!17128 lt!376809)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!105861 (= (containsKey!400 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!463488)))

(declare-fun b!831160 () Bool)

(declare-fun e!463489 () Bool)

(assert (=> b!831160 (= e!463488 e!463489)))

(declare-fun res!565887 () Bool)

(assert (=> b!831160 (=> (not res!565887) (not e!463489))))

(assert (=> b!831160 (= res!565887 (and (or (not ((_ is Cons!15999) lt!376809)) (bvsle (_1!5097 (h!17128 lt!376809)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Cons!15999) lt!376809) (bvslt (_1!5097 (h!17128 lt!376809)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!831161 () Bool)

(assert (=> b!831161 (= e!463489 (containsKey!400 (t!22376 lt!376809) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!105861 (not res!565886)) b!831160))

(assert (= (and b!831160 res!565887) b!831161))

(declare-fun m!774951 () Bool)

(assert (=> b!831161 m!774951))

(assert (=> b!830426 d!105861))

(declare-fun b!831162 () Bool)

(declare-fun e!463495 () Bool)

(declare-fun e!463491 () Bool)

(assert (=> b!831162 (= e!463495 e!463491)))

(declare-fun c!90112 () Bool)

(declare-fun e!463493 () Bool)

(assert (=> b!831162 (= c!90112 e!463493)))

(declare-fun res!565889 () Bool)

(assert (=> b!831162 (=> (not res!565889) (not e!463493))))

(assert (=> b!831162 (= res!565889 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!831163 () Bool)

(declare-fun res!565891 () Bool)

(assert (=> b!831163 (=> (not res!565891) (not e!463495))))

(declare-fun lt!377194 () ListLongMap!9011)

(assert (=> b!831163 (= res!565891 (not (contains!4208 lt!377194 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831164 () Bool)

(declare-fun e!463492 () Bool)

(assert (=> b!831164 (= e!463491 e!463492)))

(assert (=> b!831164 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun res!565888 () Bool)

(assert (=> b!831164 (= res!565888 (contains!4208 lt!377194 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!831164 (=> (not res!565888) (not e!463492))))

(declare-fun b!831165 () Bool)

(declare-fun e!463496 () Bool)

(assert (=> b!831165 (= e!463496 (isEmpty!659 lt!377194))))

(declare-fun b!831166 () Bool)

(declare-fun lt!377197 () Unit!28435)

(declare-fun lt!377196 () Unit!28435)

(assert (=> b!831166 (= lt!377197 lt!377196)))

(declare-fun lt!377200 () (_ BitVec 64))

(declare-fun lt!377199 () ListLongMap!9011)

(declare-fun lt!377198 () V!25277)

(declare-fun lt!377195 () (_ BitVec 64))

(assert (=> b!831166 (not (contains!4208 (+!1950 lt!377199 (tuple2!10175 lt!377200 lt!377198)) lt!377195))))

(assert (=> b!831166 (= lt!377196 (addStillNotContains!199 lt!377199 lt!377200 lt!377198 lt!377195))))

(assert (=> b!831166 (= lt!377195 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!831166 (= lt!377198 (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!831166 (= lt!377200 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun call!36331 () ListLongMap!9011)

(assert (=> b!831166 (= lt!377199 call!36331)))

(declare-fun e!463490 () ListLongMap!9011)

(assert (=> b!831166 (= e!463490 (+!1950 call!36331 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!831167 () Bool)

(assert (=> b!831167 (= e!463493 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!831167 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!36328 () Bool)

(assert (=> bm!36328 (= call!36331 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!831168 () Bool)

(declare-fun e!463494 () ListLongMap!9011)

(assert (=> b!831168 (= e!463494 (ListLongMap!9012 Nil!16000))))

(declare-fun b!831169 () Bool)

(assert (=> b!831169 (= e!463490 call!36331)))

(declare-fun b!831170 () Bool)

(assert (=> b!831170 (= e!463496 (= lt!377194 (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!105863 () Bool)

(assert (=> d!105863 e!463495))

(declare-fun res!565890 () Bool)

(assert (=> d!105863 (=> (not res!565890) (not e!463495))))

(assert (=> d!105863 (= res!565890 (not (contains!4208 lt!377194 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105863 (= lt!377194 e!463494)))

(declare-fun c!90114 () Bool)

(assert (=> d!105863 (= c!90114 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> d!105863 (validMask!0 mask!1312)))

(assert (=> d!105863 (= (getCurrentListMapNoExtraKeys!2521 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!796) lt!377194)))

(declare-fun b!831171 () Bool)

(assert (=> b!831171 (= e!463491 e!463496)))

(declare-fun c!90111 () Bool)

(assert (=> b!831171 (= c!90111 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!831172 () Bool)

(assert (=> b!831172 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(assert (=> b!831172 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22733 _values!788)))))

(assert (=> b!831172 (= e!463492 (= (apply!372 lt!377194 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!831173 () Bool)

(assert (=> b!831173 (= e!463494 e!463490)))

(declare-fun c!90113 () Bool)

(assert (=> b!831173 (= c!90113 (validKeyInArray!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (= (and d!105863 c!90114) b!831168))

(assert (= (and d!105863 (not c!90114)) b!831173))

(assert (= (and b!831173 c!90113) b!831166))

(assert (= (and b!831173 (not c!90113)) b!831169))

(assert (= (or b!831166 b!831169) bm!36328))

(assert (= (and d!105863 res!565890) b!831163))

(assert (= (and b!831163 res!565891) b!831162))

(assert (= (and b!831162 res!565889) b!831167))

(assert (= (and b!831162 c!90112) b!831164))

(assert (= (and b!831162 (not c!90112)) b!831171))

(assert (= (and b!831164 res!565888) b!831172))

(assert (= (and b!831171 c!90111) b!831170))

(assert (= (and b!831171 (not c!90111)) b!831165))

(declare-fun b_lambda!11421 () Bool)

(assert (=> (not b_lambda!11421) (not b!831166)))

(assert (=> b!831166 t!22381))

(declare-fun b_and!22573 () Bool)

(assert (= b_and!22571 (and (=> t!22381 result!8023) b_and!22573)))

(declare-fun b_lambda!11423 () Bool)

(assert (=> (not b_lambda!11423) (not b!831172)))

(assert (=> b!831172 t!22381))

(declare-fun b_and!22575 () Bool)

(assert (= b_and!22573 (and (=> t!22381 result!8023) b_and!22575)))

(declare-fun m!774953 () Bool)

(assert (=> b!831163 m!774953))

(assert (=> b!831166 m!774259))

(declare-fun m!774955 () Bool)

(assert (=> b!831166 m!774955))

(assert (=> b!831166 m!774263))

(assert (=> b!831166 m!774263))

(assert (=> b!831166 m!773293))

(assert (=> b!831166 m!774265))

(declare-fun m!774957 () Bool)

(assert (=> b!831166 m!774957))

(declare-fun m!774959 () Bool)

(assert (=> b!831166 m!774959))

(assert (=> b!831166 m!774959))

(declare-fun m!774961 () Bool)

(assert (=> b!831166 m!774961))

(assert (=> b!831166 m!773293))

(declare-fun m!774963 () Bool)

(assert (=> bm!36328 m!774963))

(assert (=> b!831170 m!774963))

(assert (=> b!831172 m!774259))

(assert (=> b!831172 m!774259))

(declare-fun m!774965 () Bool)

(assert (=> b!831172 m!774965))

(assert (=> b!831172 m!774263))

(assert (=> b!831172 m!773293))

(assert (=> b!831172 m!774263))

(assert (=> b!831172 m!773293))

(assert (=> b!831172 m!774265))

(assert (=> b!831167 m!774259))

(assert (=> b!831167 m!774259))

(assert (=> b!831167 m!774277))

(assert (=> b!831164 m!774259))

(assert (=> b!831164 m!774259))

(declare-fun m!774967 () Bool)

(assert (=> b!831164 m!774967))

(declare-fun m!774969 () Bool)

(assert (=> b!831165 m!774969))

(declare-fun m!774971 () Bool)

(assert (=> d!105863 m!774971))

(assert (=> d!105863 m!773209))

(assert (=> b!831173 m!774259))

(assert (=> b!831173 m!774259))

(assert (=> b!831173 m!774277))

(assert (=> bm!36258 d!105863))

(declare-fun d!105865 () Bool)

(assert (=> d!105865 (= ($colon$colon!535 e!463108 (ite c!89908 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376622))) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628)))) (Cons!15999 (ite c!89908 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376622))) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))) e!463108))))

(assert (=> bm!36281 d!105865))

(declare-fun d!105867 () Bool)

(assert (=> d!105867 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376659) (_1!5097 lt!376628)))))

(declare-fun lt!377201 () Unit!28435)

(assert (=> d!105867 (= lt!377201 (choose!1429 (toList!4521 lt!376659) (_1!5097 lt!376628)))))

(declare-fun e!463497 () Bool)

(assert (=> d!105867 e!463497))

(declare-fun res!565892 () Bool)

(assert (=> d!105867 (=> (not res!565892) (not e!463497))))

(assert (=> d!105867 (= res!565892 (isStrictlySorted!437 (toList!4521 lt!376659)))))

(assert (=> d!105867 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376659) (_1!5097 lt!376628)) lt!377201)))

(declare-fun b!831174 () Bool)

(assert (=> b!831174 (= e!463497 (containsKey!400 (toList!4521 lt!376659) (_1!5097 lt!376628)))))

(assert (= (and d!105867 res!565892) b!831174))

(assert (=> d!105867 m!773271))

(assert (=> d!105867 m!773271))

(assert (=> d!105867 m!773861))

(declare-fun m!774973 () Bool)

(assert (=> d!105867 m!774973))

(declare-fun m!774975 () Bool)

(assert (=> d!105867 m!774975))

(assert (=> b!831174 m!773857))

(assert (=> b!830457 d!105867))

(declare-fun d!105869 () Bool)

(assert (=> d!105869 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376659) (_1!5097 lt!376628))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376659) (_1!5097 lt!376628)))))))

(declare-fun bs!23222 () Bool)

(assert (= bs!23222 d!105869))

(assert (=> bs!23222 m!773271))

(declare-fun m!774977 () Bool)

(assert (=> bs!23222 m!774977))

(assert (=> b!830457 d!105869))

(assert (=> b!830457 d!105357))

(declare-fun d!105871 () Bool)

(assert (=> d!105871 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun lt!377202 () Unit!28435)

(assert (=> d!105871 (= lt!377202 (choose!1429 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!463498 () Bool)

(assert (=> d!105871 e!463498))

(declare-fun res!565893 () Bool)

(assert (=> d!105871 (=> (not res!565893) (not e!463498))))

(assert (=> d!105871 (= res!565893 (isStrictlySorted!437 (toList!4521 lt!376779)))))

(assert (=> d!105871 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) lt!377202)))

(declare-fun b!831175 () Bool)

(assert (=> b!831175 (= e!463498 (containsKey!400 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105871 res!565893) b!831175))

(assert (=> d!105871 m!773277))

(assert (=> d!105871 m!773769))

(assert (=> d!105871 m!773769))

(assert (=> d!105871 m!773943))

(assert (=> d!105871 m!773277))

(declare-fun m!774979 () Bool)

(assert (=> d!105871 m!774979))

(assert (=> d!105871 m!774749))

(assert (=> b!831175 m!773277))

(assert (=> b!831175 m!773939))

(assert (=> b!830495 d!105871))

(declare-fun d!105873 () Bool)

(assert (=> d!105873 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))))

(declare-fun bs!23223 () Bool)

(assert (= bs!23223 d!105873))

(assert (=> bs!23223 m!773769))

(declare-fun m!774981 () Bool)

(assert (=> bs!23223 m!774981))

(assert (=> b!830495 d!105873))

(assert (=> b!830495 d!105831))

(declare-fun d!105875 () Bool)

(declare-fun e!463500 () Bool)

(assert (=> d!105875 e!463500))

(declare-fun res!565894 () Bool)

(assert (=> d!105875 (=> res!565894 e!463500)))

(declare-fun lt!377206 () Bool)

(assert (=> d!105875 (= res!565894 (not lt!377206))))

(declare-fun lt!377205 () Bool)

(assert (=> d!105875 (= lt!377206 lt!377205)))

(declare-fun lt!377203 () Unit!28435)

(declare-fun e!463499 () Unit!28435)

(assert (=> d!105875 (= lt!377203 e!463499)))

(declare-fun c!90115 () Bool)

(assert (=> d!105875 (= c!90115 lt!377205)))

(assert (=> d!105875 (= lt!377205 (containsKey!400 (toList!4521 lt!376810) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105875 (= (contains!4208 lt!376810 #b1000000000000000000000000000000000000000000000000000000000000000) lt!377206)))

(declare-fun b!831176 () Bool)

(declare-fun lt!377204 () Unit!28435)

(assert (=> b!831176 (= e!463499 lt!377204)))

(assert (=> b!831176 (= lt!377204 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376810) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!831176 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376810) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831177 () Bool)

(declare-fun Unit!28476 () Unit!28435)

(assert (=> b!831177 (= e!463499 Unit!28476)))

(declare-fun b!831178 () Bool)

(assert (=> b!831178 (= e!463500 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376810) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105875 c!90115) b!831176))

(assert (= (and d!105875 (not c!90115)) b!831177))

(assert (= (and d!105875 (not res!565894)) b!831178))

(declare-fun m!774983 () Bool)

(assert (=> d!105875 m!774983))

(declare-fun m!774985 () Bool)

(assert (=> b!831176 m!774985))

(declare-fun m!774987 () Bool)

(assert (=> b!831176 m!774987))

(assert (=> b!831176 m!774987))

(declare-fun m!774989 () Bool)

(assert (=> b!831176 m!774989))

(assert (=> b!831178 m!774987))

(assert (=> b!831178 m!774987))

(assert (=> b!831178 m!774989))

(assert (=> b!830262 d!105875))

(declare-fun b!831181 () Bool)

(declare-fun e!463502 () Option!420)

(assert (=> b!831181 (= e!463502 (getValueByKey!414 (t!22376 (t!22376 lt!376731)) (_1!5097 lt!376622)))))

(declare-fun b!831182 () Bool)

(assert (=> b!831182 (= e!463502 None!418)))

(declare-fun d!105877 () Bool)

(declare-fun c!90116 () Bool)

(assert (=> d!105877 (= c!90116 (and ((_ is Cons!15999) (t!22376 lt!376731)) (= (_1!5097 (h!17128 (t!22376 lt!376731))) (_1!5097 lt!376622))))))

(declare-fun e!463501 () Option!420)

(assert (=> d!105877 (= (getValueByKey!414 (t!22376 lt!376731) (_1!5097 lt!376622)) e!463501)))

(declare-fun b!831179 () Bool)

(assert (=> b!831179 (= e!463501 (Some!419 (_2!5097 (h!17128 (t!22376 lt!376731)))))))

(declare-fun b!831180 () Bool)

(assert (=> b!831180 (= e!463501 e!463502)))

(declare-fun c!90117 () Bool)

(assert (=> b!831180 (= c!90117 (and ((_ is Cons!15999) (t!22376 lt!376731)) (not (= (_1!5097 (h!17128 (t!22376 lt!376731))) (_1!5097 lt!376622)))))))

(assert (= (and d!105877 c!90116) b!831179))

(assert (= (and d!105877 (not c!90116)) b!831180))

(assert (= (and b!831180 c!90117) b!831181))

(assert (= (and b!831180 (not c!90117)) b!831182))

(declare-fun m!774991 () Bool)

(assert (=> b!831181 m!774991))

(assert (=> b!830443 d!105877))

(declare-fun d!105879 () Bool)

(assert (=> d!105879 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780))))

(declare-fun lt!377207 () Unit!28435)

(assert (=> d!105879 (= lt!377207 (choose!1429 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780))))

(declare-fun e!463503 () Bool)

(assert (=> d!105879 e!463503))

(declare-fun res!565895 () Bool)

(assert (=> d!105879 (=> (not res!565895) (not e!463503))))

(assert (=> d!105879 (= res!565895 (isStrictlySorted!437 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)))))))

(assert (=> d!105879 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780) lt!377207)))

(declare-fun b!831183 () Bool)

(assert (=> b!831183 (= e!463503 (containsKey!400 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780))))

(assert (= (and d!105879 res!565895) b!831183))

(assert (=> d!105879 m!773977))

(assert (=> d!105879 m!773977))

(assert (=> d!105879 m!773979))

(declare-fun m!774993 () Bool)

(assert (=> d!105879 m!774993))

(declare-fun m!774995 () Bool)

(assert (=> d!105879 m!774995))

(assert (=> b!831183 m!773973))

(assert (=> b!830515 d!105879))

(declare-fun d!105881 () Bool)

(assert (=> d!105881 (= (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780))))))

(declare-fun bs!23224 () Bool)

(assert (= bs!23224 d!105881))

(assert (=> bs!23224 m!773977))

(declare-fun m!774997 () Bool)

(assert (=> bs!23224 m!774997))

(assert (=> b!830515 d!105881))

(declare-fun b!831186 () Bool)

(declare-fun e!463505 () Option!420)

(assert (=> b!831186 (= e!463505 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)))) lt!376780))))

(declare-fun b!831187 () Bool)

(assert (=> b!831187 (= e!463505 None!418)))

(declare-fun c!90118 () Bool)

(declare-fun d!105883 () Bool)

(assert (=> d!105883 (= c!90118 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))))) lt!376780)))))

(declare-fun e!463504 () Option!420)

(assert (=> d!105883 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780) e!463504)))

(declare-fun b!831184 () Bool)

(assert (=> b!831184 (= e!463504 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)))))))))

(declare-fun b!831185 () Bool)

(assert (=> b!831185 (= e!463504 e!463505)))

(declare-fun c!90119 () Bool)

(assert (=> b!831185 (= c!90119 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))))) lt!376780))))))

(assert (= (and d!105883 c!90118) b!831184))

(assert (= (and d!105883 (not c!90118)) b!831185))

(assert (= (and b!831185 c!90119) b!831186))

(assert (= (and b!831185 (not c!90119)) b!831187))

(declare-fun m!774999 () Bool)

(assert (=> b!831186 m!774999))

(assert (=> b!830515 d!105883))

(assert (=> d!105389 d!105387))

(declare-fun d!105885 () Bool)

(assert (=> d!105885 (= (getValueByKey!414 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105885 true))

(declare-fun _$22!569 () Unit!28435)

(assert (=> d!105885 (= (choose!1427 lt!376809 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) _$22!569)))

(declare-fun bs!23225 () Bool)

(assert (= bs!23225 d!105885))

(assert (=> bs!23225 m!773481))

(assert (=> d!105389 d!105885))

(declare-fun d!105887 () Bool)

(declare-fun res!565896 () Bool)

(declare-fun e!463506 () Bool)

(assert (=> d!105887 (=> res!565896 e!463506)))

(assert (=> d!105887 (= res!565896 (or ((_ is Nil!16000) lt!376809) ((_ is Nil!16000) (t!22376 lt!376809))))))

(assert (=> d!105887 (= (isStrictlySorted!437 lt!376809) e!463506)))

(declare-fun b!831188 () Bool)

(declare-fun e!463507 () Bool)

(assert (=> b!831188 (= e!463506 e!463507)))

(declare-fun res!565897 () Bool)

(assert (=> b!831188 (=> (not res!565897) (not e!463507))))

(assert (=> b!831188 (= res!565897 (bvslt (_1!5097 (h!17128 lt!376809)) (_1!5097 (h!17128 (t!22376 lt!376809)))))))

(declare-fun b!831189 () Bool)

(assert (=> b!831189 (= e!463507 (isStrictlySorted!437 (t!22376 lt!376809)))))

(assert (= (and d!105887 (not res!565896)) b!831188))

(assert (= (and b!831188 res!565897) b!831189))

(declare-fun m!775001 () Bool)

(assert (=> b!831189 m!775001))

(assert (=> d!105389 d!105887))

(declare-fun b!831192 () Bool)

(declare-fun e!463509 () Option!420)

(assert (=> b!831192 (= e!463509 (getValueByKey!414 (t!22376 (t!22376 (toList!4521 lt!376803))) (_1!5097 lt!376628)))))

(declare-fun b!831193 () Bool)

(assert (=> b!831193 (= e!463509 None!418)))

(declare-fun d!105889 () Bool)

(declare-fun c!90120 () Bool)

(assert (=> d!105889 (= c!90120 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376803))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376803)))) (_1!5097 lt!376628))))))

(declare-fun e!463508 () Option!420)

(assert (=> d!105889 (= (getValueByKey!414 (t!22376 (toList!4521 lt!376803)) (_1!5097 lt!376628)) e!463508)))

(declare-fun b!831190 () Bool)

(assert (=> b!831190 (= e!463508 (Some!419 (_2!5097 (h!17128 (t!22376 (toList!4521 lt!376803))))))))

(declare-fun b!831191 () Bool)

(assert (=> b!831191 (= e!463508 e!463509)))

(declare-fun c!90121 () Bool)

(assert (=> b!831191 (= c!90121 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376803))) (not (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376803)))) (_1!5097 lt!376628)))))))

(assert (= (and d!105889 c!90120) b!831190))

(assert (= (and d!105889 (not c!90120)) b!831191))

(assert (= (and b!831191 c!90121) b!831192))

(assert (= (and b!831191 (not c!90121)) b!831193))

(declare-fun m!775003 () Bool)

(assert (=> b!831192 m!775003))

(assert (=> b!830615 d!105889))

(declare-fun d!105891 () Bool)

(declare-fun res!565898 () Bool)

(declare-fun e!463510 () Bool)

(assert (=> d!105891 (=> res!565898 e!463510)))

(assert (=> d!105891 (= res!565898 (and ((_ is Cons!15999) (toList!4521 lt!376713)) (= (_1!5097 (h!17128 (toList!4521 lt!376713))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105891 (= (containsKey!400 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000) e!463510)))

(declare-fun b!831194 () Bool)

(declare-fun e!463511 () Bool)

(assert (=> b!831194 (= e!463510 e!463511)))

(declare-fun res!565899 () Bool)

(assert (=> b!831194 (=> (not res!565899) (not e!463511))))

(assert (=> b!831194 (= res!565899 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376713))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376713))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!15999) (toList!4521 lt!376713)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376713))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831195 () Bool)

(assert (=> b!831195 (= e!463511 (containsKey!400 (t!22376 (toList!4521 lt!376713)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105891 (not res!565898)) b!831194))

(assert (= (and b!831194 res!565899) b!831195))

(declare-fun m!775005 () Bool)

(assert (=> b!831195 m!775005))

(assert (=> d!105321 d!105891))

(declare-fun d!105893 () Bool)

(declare-fun c!90122 () Bool)

(assert (=> d!105893 (= c!90122 ((_ is Nil!16000) (toList!4521 lt!376729)))))

(declare-fun e!463512 () (InoxSet tuple2!10174))

(assert (=> d!105893 (= (content!389 (toList!4521 lt!376729)) e!463512)))

(declare-fun b!831196 () Bool)

(assert (=> b!831196 (= e!463512 ((as const (Array tuple2!10174 Bool)) false))))

(declare-fun b!831197 () Bool)

(assert (=> b!831197 (= e!463512 ((_ map or) (store ((as const (Array tuple2!10174 Bool)) false) (h!17128 (toList!4521 lt!376729)) true) (content!389 (t!22376 (toList!4521 lt!376729)))))))

(assert (= (and d!105893 c!90122) b!831196))

(assert (= (and d!105893 (not c!90122)) b!831197))

(declare-fun m!775007 () Bool)

(assert (=> b!831197 m!775007))

(declare-fun m!775009 () Bool)

(assert (=> b!831197 m!775009))

(assert (=> d!105325 d!105893))

(declare-fun d!105895 () Bool)

(assert (=> d!105895 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!10091 (getValueByKey!414 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105303 d!105895))

(declare-fun b!831200 () Bool)

(declare-fun e!463514 () Option!420)

(assert (=> b!831200 (= e!463514 (getValueByKey!414 (t!22376 (toList!4521 lt!376747)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831201 () Bool)

(assert (=> b!831201 (= e!463514 None!418)))

(declare-fun d!105897 () Bool)

(declare-fun c!90123 () Bool)

(assert (=> d!105897 (= c!90123 (and ((_ is Cons!15999) (toList!4521 lt!376747)) (= (_1!5097 (h!17128 (toList!4521 lt!376747))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!463513 () Option!420)

(assert (=> d!105897 (= (getValueByKey!414 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000) e!463513)))

(declare-fun b!831198 () Bool)

(assert (=> b!831198 (= e!463513 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376747)))))))

(declare-fun b!831199 () Bool)

(assert (=> b!831199 (= e!463513 e!463514)))

(declare-fun c!90124 () Bool)

(assert (=> b!831199 (= c!90124 (and ((_ is Cons!15999) (toList!4521 lt!376747)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376747))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!105897 c!90123) b!831198))

(assert (= (and d!105897 (not c!90123)) b!831199))

(assert (= (and b!831199 c!90124) b!831200))

(assert (= (and b!831199 (not c!90124)) b!831201))

(declare-fun m!775011 () Bool)

(assert (=> b!831200 m!775011))

(assert (=> d!105303 d!105897))

(declare-fun d!105899 () Bool)

(declare-fun res!565900 () Bool)

(declare-fun e!463515 () Bool)

(assert (=> d!105899 (=> res!565900 e!463515)))

(assert (=> d!105899 (= res!565900 (and ((_ is Cons!15999) lt!377017) (= (_1!5097 (h!17128 lt!377017)) (_1!5097 lt!376622))))))

(assert (=> d!105899 (= (containsKey!400 lt!377017 (_1!5097 lt!376622)) e!463515)))

(declare-fun b!831202 () Bool)

(declare-fun e!463516 () Bool)

(assert (=> b!831202 (= e!463515 e!463516)))

(declare-fun res!565901 () Bool)

(assert (=> b!831202 (=> (not res!565901) (not e!463516))))

(assert (=> b!831202 (= res!565901 (and (or (not ((_ is Cons!15999) lt!377017)) (bvsle (_1!5097 (h!17128 lt!377017)) (_1!5097 lt!376622))) ((_ is Cons!15999) lt!377017) (bvslt (_1!5097 (h!17128 lt!377017)) (_1!5097 lt!376622))))))

(declare-fun b!831203 () Bool)

(assert (=> b!831203 (= e!463516 (containsKey!400 (t!22376 lt!377017) (_1!5097 lt!376622)))))

(assert (= (and d!105899 (not res!565900)) b!831202))

(assert (= (and b!831202 res!565901) b!831203))

(declare-fun m!775013 () Bool)

(assert (=> b!831203 m!775013))

(assert (=> b!830580 d!105899))

(declare-fun d!105901 () Bool)

(assert (=> d!105901 (= (apply!372 lt!376824 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!11823 (getValueByKey!414 (toList!4521 lt!376824) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(declare-fun bs!23226 () Bool)

(assert (= bs!23226 d!105901))

(assert (=> bs!23226 m!773495))

(declare-fun m!775015 () Bool)

(assert (=> bs!23226 m!775015))

(assert (=> bs!23226 m!775015))

(declare-fun m!775017 () Bool)

(assert (=> bs!23226 m!775017))

(assert (=> b!830297 d!105901))

(assert (=> b!830297 d!105627))

(declare-fun d!105903 () Bool)

(declare-fun c!90125 () Bool)

(assert (=> d!105903 (= c!90125 ((_ is Nil!16000) (toList!4521 lt!376659)))))

(declare-fun e!463517 () (InoxSet tuple2!10174))

(assert (=> d!105903 (= (content!389 (toList!4521 lt!376659)) e!463517)))

(declare-fun b!831204 () Bool)

(assert (=> b!831204 (= e!463517 ((as const (Array tuple2!10174 Bool)) false))))

(declare-fun b!831205 () Bool)

(assert (=> b!831205 (= e!463517 ((_ map or) (store ((as const (Array tuple2!10174 Bool)) false) (h!17128 (toList!4521 lt!376659)) true) (content!389 (t!22376 (toList!4521 lt!376659)))))))

(assert (= (and d!105903 c!90125) b!831204))

(assert (= (and d!105903 (not c!90125)) b!831205))

(declare-fun m!775019 () Bool)

(assert (=> b!831205 m!775019))

(declare-fun m!775021 () Bool)

(assert (=> b!831205 m!775021))

(assert (=> d!105433 d!105903))

(declare-fun b!831208 () Bool)

(declare-fun e!463519 () Option!420)

(assert (=> b!831208 (= e!463519 (getValueByKey!414 (t!22376 (t!22376 (toList!4521 lt!376729))) (_1!5097 lt!376622)))))

(declare-fun b!831209 () Bool)

(assert (=> b!831209 (= e!463519 None!418)))

(declare-fun d!105905 () Bool)

(declare-fun c!90126 () Bool)

(assert (=> d!105905 (= c!90126 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376729))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376729)))) (_1!5097 lt!376622))))))

(declare-fun e!463518 () Option!420)

(assert (=> d!105905 (= (getValueByKey!414 (t!22376 (toList!4521 lt!376729)) (_1!5097 lt!376622)) e!463518)))

(declare-fun b!831206 () Bool)

(assert (=> b!831206 (= e!463518 (Some!419 (_2!5097 (h!17128 (t!22376 (toList!4521 lt!376729))))))))

(declare-fun b!831207 () Bool)

(assert (=> b!831207 (= e!463518 e!463519)))

(declare-fun c!90127 () Bool)

(assert (=> b!831207 (= c!90127 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376729))) (not (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376729)))) (_1!5097 lt!376622)))))))

(assert (= (and d!105905 c!90126) b!831206))

(assert (= (and d!105905 (not c!90126)) b!831207))

(assert (= (and b!831207 c!90127) b!831208))

(assert (= (and b!831207 (not c!90127)) b!831209))

(declare-fun m!775023 () Bool)

(assert (=> b!831208 m!775023))

(assert (=> b!830500 d!105905))

(declare-fun d!105907 () Bool)

(declare-fun lt!377208 () Bool)

(assert (=> d!105907 (= lt!377208 (select (content!389 (t!22376 (toList!4521 lt!376803))) lt!376628))))

(declare-fun e!463521 () Bool)

(assert (=> d!105907 (= lt!377208 e!463521)))

(declare-fun res!565903 () Bool)

(assert (=> d!105907 (=> (not res!565903) (not e!463521))))

(assert (=> d!105907 (= res!565903 ((_ is Cons!15999) (t!22376 (toList!4521 lt!376803))))))

(assert (=> d!105907 (= (contains!4209 (t!22376 (toList!4521 lt!376803)) lt!376628) lt!377208)))

(declare-fun b!831210 () Bool)

(declare-fun e!463520 () Bool)

(assert (=> b!831210 (= e!463521 e!463520)))

(declare-fun res!565902 () Bool)

(assert (=> b!831210 (=> res!565902 e!463520)))

(assert (=> b!831210 (= res!565902 (= (h!17128 (t!22376 (toList!4521 lt!376803))) lt!376628))))

(declare-fun b!831211 () Bool)

(assert (=> b!831211 (= e!463520 (contains!4209 (t!22376 (t!22376 (toList!4521 lt!376803))) lt!376628))))

(assert (= (and d!105907 res!565903) b!831210))

(assert (= (and b!831210 (not res!565902)) b!831211))

(declare-fun m!775025 () Bool)

(assert (=> d!105907 m!775025))

(declare-fun m!775027 () Bool)

(assert (=> d!105907 m!775027))

(declare-fun m!775029 () Bool)

(assert (=> b!831211 m!775029))

(assert (=> b!830332 d!105907))

(declare-fun d!105909 () Bool)

(assert (=> d!105909 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377209 () Unit!28435)

(assert (=> d!105909 (= lt!377209 (choose!1429 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463522 () Bool)

(assert (=> d!105909 e!463522))

(declare-fun res!565904 () Bool)

(assert (=> d!105909 (=> (not res!565904) (not e!463522))))

(assert (=> d!105909 (= res!565904 (isStrictlySorted!437 (toList!4521 lt!376747)))))

(assert (=> d!105909 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000) lt!377209)))

(declare-fun b!831212 () Bool)

(assert (=> b!831212 (= e!463522 (containsKey!400 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105909 res!565904) b!831212))

(assert (=> d!105909 m!773547))

(assert (=> d!105909 m!773547))

(assert (=> d!105909 m!774143))

(declare-fun m!775031 () Bool)

(assert (=> d!105909 m!775031))

(assert (=> d!105909 m!774387))

(assert (=> b!831212 m!774139))

(assert (=> b!830559 d!105909))

(declare-fun d!105911 () Bool)

(assert (=> d!105911 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23227 () Bool)

(assert (= bs!23227 d!105911))

(assert (=> bs!23227 m!773547))

(declare-fun m!775033 () Bool)

(assert (=> bs!23227 m!775033))

(assert (=> b!830559 d!105911))

(assert (=> b!830559 d!105897))

(declare-fun d!105913 () Bool)

(declare-fun res!565905 () Bool)

(declare-fun e!463523 () Bool)

(assert (=> d!105913 (=> res!565905 e!463523)))

(assert (=> d!105913 (= res!565905 (or ((_ is Nil!16000) lt!376910) ((_ is Nil!16000) (t!22376 lt!376910))))))

(assert (=> d!105913 (= (isStrictlySorted!437 lt!376910) e!463523)))

(declare-fun b!831213 () Bool)

(declare-fun e!463524 () Bool)

(assert (=> b!831213 (= e!463523 e!463524)))

(declare-fun res!565906 () Bool)

(assert (=> b!831213 (=> (not res!565906) (not e!463524))))

(assert (=> b!831213 (= res!565906 (bvslt (_1!5097 (h!17128 lt!376910)) (_1!5097 (h!17128 (t!22376 lt!376910)))))))

(declare-fun b!831214 () Bool)

(assert (=> b!831214 (= e!463524 (isStrictlySorted!437 (t!22376 lt!376910)))))

(assert (= (and d!105913 (not res!565905)) b!831213))

(assert (= (and b!831213 res!565906) b!831214))

(declare-fun m!775035 () Bool)

(assert (=> b!831214 m!775035))

(assert (=> d!105383 d!105913))

(declare-fun d!105915 () Bool)

(declare-fun res!565907 () Bool)

(declare-fun e!463525 () Bool)

(assert (=> d!105915 (=> res!565907 e!463525)))

(assert (=> d!105915 (= res!565907 (or ((_ is Nil!16000) (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Nil!16000) (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))))

(assert (=> d!105915 (= (isStrictlySorted!437 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) e!463525)))

(declare-fun b!831215 () Bool)

(declare-fun e!463526 () Bool)

(assert (=> b!831215 (= e!463525 e!463526)))

(declare-fun res!565908 () Bool)

(assert (=> b!831215 (=> (not res!565908) (not e!463526))))

(assert (=> b!831215 (= res!565908 (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))) (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))))

(declare-fun b!831216 () Bool)

(assert (=> b!831216 (= e!463526 (isStrictlySorted!437 (t!22376 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(assert (= (and d!105915 (not res!565907)) b!831215))

(assert (= (and b!831215 res!565908) b!831216))

(assert (=> b!831216 m!774697))

(assert (=> d!105383 d!105915))

(declare-fun d!105917 () Bool)

(assert (=> d!105917 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376715) lt!376719)) (v!10091 (getValueByKey!414 (toList!4521 lt!376715) lt!376719)))))

(assert (=> d!105341 d!105917))

(declare-fun b!831219 () Bool)

(declare-fun e!463528 () Option!420)

(assert (=> b!831219 (= e!463528 (getValueByKey!414 (t!22376 (toList!4521 lt!376715)) lt!376719))))

(declare-fun b!831220 () Bool)

(assert (=> b!831220 (= e!463528 None!418)))

(declare-fun d!105919 () Bool)

(declare-fun c!90128 () Bool)

(assert (=> d!105919 (= c!90128 (and ((_ is Cons!15999) (toList!4521 lt!376715)) (= (_1!5097 (h!17128 (toList!4521 lt!376715))) lt!376719)))))

(declare-fun e!463527 () Option!420)

(assert (=> d!105919 (= (getValueByKey!414 (toList!4521 lt!376715) lt!376719) e!463527)))

(declare-fun b!831217 () Bool)

(assert (=> b!831217 (= e!463527 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376715)))))))

(declare-fun b!831218 () Bool)

(assert (=> b!831218 (= e!463527 e!463528)))

(declare-fun c!90129 () Bool)

(assert (=> b!831218 (= c!90129 (and ((_ is Cons!15999) (toList!4521 lt!376715)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376715))) lt!376719))))))

(assert (= (and d!105919 c!90128) b!831217))

(assert (= (and d!105919 (not c!90128)) b!831218))

(assert (= (and b!831218 c!90129) b!831219))

(assert (= (and b!831218 (not c!90129)) b!831220))

(declare-fun m!775037 () Bool)

(assert (=> b!831219 m!775037))

(assert (=> d!105341 d!105919))

(declare-fun d!105921 () Bool)

(declare-fun e!463530 () Bool)

(assert (=> d!105921 e!463530))

(declare-fun res!565909 () Bool)

(assert (=> d!105921 (=> res!565909 e!463530)))

(declare-fun lt!377213 () Bool)

(assert (=> d!105921 (= res!565909 (not lt!377213))))

(declare-fun lt!377212 () Bool)

(assert (=> d!105921 (= lt!377213 lt!377212)))

(declare-fun lt!377210 () Unit!28435)

(declare-fun e!463529 () Unit!28435)

(assert (=> d!105921 (= lt!377210 e!463529)))

(declare-fun c!90130 () Bool)

(assert (=> d!105921 (= c!90130 lt!377212)))

(assert (=> d!105921 (= lt!377212 (containsKey!400 (toList!4521 lt!376810) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105921 (= (contains!4208 lt!376810 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377213)))

(declare-fun b!831221 () Bool)

(declare-fun lt!377211 () Unit!28435)

(assert (=> b!831221 (= e!463529 lt!377211)))

(assert (=> b!831221 (= lt!377211 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376810) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!831221 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376810) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831222 () Bool)

(declare-fun Unit!28477 () Unit!28435)

(assert (=> b!831222 (= e!463529 Unit!28477)))

(declare-fun b!831223 () Bool)

(assert (=> b!831223 (= e!463530 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376810) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105921 c!90130) b!831221))

(assert (= (and d!105921 (not c!90130)) b!831222))

(assert (= (and d!105921 (not res!565909)) b!831223))

(declare-fun m!775039 () Bool)

(assert (=> d!105921 m!775039))

(declare-fun m!775041 () Bool)

(assert (=> b!831221 m!775041))

(declare-fun m!775043 () Bool)

(assert (=> b!831221 m!775043))

(assert (=> b!831221 m!775043))

(declare-fun m!775045 () Bool)

(assert (=> b!831221 m!775045))

(assert (=> b!831223 m!775043))

(assert (=> b!831223 m!775043))

(assert (=> b!831223 m!775045))

(assert (=> d!105291 d!105921))

(assert (=> d!105291 d!105279))

(declare-fun b!831226 () Bool)

(declare-fun e!463532 () Option!420)

(assert (=> b!831226 (= e!463532 (getValueByKey!414 (t!22376 (toList!4521 lt!376994)) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(declare-fun b!831227 () Bool)

(assert (=> b!831227 (= e!463532 None!418)))

(declare-fun d!105923 () Bool)

(declare-fun c!90131 () Bool)

(assert (=> d!105923 (= c!90131 (and ((_ is Cons!15999) (toList!4521 lt!376994)) (= (_1!5097 (h!17128 (toList!4521 lt!376994))) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(declare-fun e!463531 () Option!420)

(assert (=> d!105923 (= (getValueByKey!414 (toList!4521 lt!376994) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))) e!463531)))

(declare-fun b!831224 () Bool)

(assert (=> b!831224 (= e!463531 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376994)))))))

(declare-fun b!831225 () Bool)

(assert (=> b!831225 (= e!463531 e!463532)))

(declare-fun c!90132 () Bool)

(assert (=> b!831225 (= c!90132 (and ((_ is Cons!15999) (toList!4521 lt!376994)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376994))) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))))

(assert (= (and d!105923 c!90131) b!831224))

(assert (= (and d!105923 (not c!90131)) b!831225))

(assert (= (and b!831225 c!90132) b!831226))

(assert (= (and b!831225 (not c!90132)) b!831227))

(declare-fun m!775047 () Bool)

(assert (=> b!831226 m!775047))

(assert (=> b!830551 d!105923))

(declare-fun lt!377214 () Bool)

(declare-fun d!105925 () Bool)

(assert (=> d!105925 (= lt!377214 (select (content!389 (toList!4521 lt!376930)) (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun e!463534 () Bool)

(assert (=> d!105925 (= lt!377214 e!463534)))

(declare-fun res!565911 () Bool)

(assert (=> d!105925 (=> (not res!565911) (not e!463534))))

(assert (=> d!105925 (= res!565911 ((_ is Cons!15999) (toList!4521 lt!376930)))))

(assert (=> d!105925 (= (contains!4209 (toList!4521 lt!376930) (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377214)))

(declare-fun b!831228 () Bool)

(declare-fun e!463533 () Bool)

(assert (=> b!831228 (= e!463534 e!463533)))

(declare-fun res!565910 () Bool)

(assert (=> b!831228 (=> res!565910 e!463533)))

(assert (=> b!831228 (= res!565910 (= (h!17128 (toList!4521 lt!376930)) (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!831229 () Bool)

(assert (=> b!831229 (= e!463533 (contains!4209 (t!22376 (toList!4521 lt!376930)) (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!105925 res!565911) b!831228))

(assert (= (and b!831228 (not res!565910)) b!831229))

(declare-fun m!775049 () Bool)

(assert (=> d!105925 m!775049))

(declare-fun m!775051 () Bool)

(assert (=> d!105925 m!775051))

(declare-fun m!775053 () Bool)

(assert (=> b!831229 m!775053))

(assert (=> b!830477 d!105925))

(declare-fun d!105927 () Bool)

(assert (=> d!105927 (= (get!11824 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!10089 (select (arr!22312 _values!788) #b00000000000000000000000000000000)))))

(assert (=> b!830277 d!105927))

(declare-fun d!105929 () Bool)

(declare-fun res!565912 () Bool)

(declare-fun e!463535 () Bool)

(assert (=> d!105929 (=> res!565912 e!463535)))

(assert (=> d!105929 (= res!565912 (and ((_ is Cons!15999) (toList!4521 lt!376779)) (= (_1!5097 (h!17128 (toList!4521 lt!376779))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!105929 (= (containsKey!400 (toList!4521 lt!376779) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) e!463535)))

(declare-fun b!831230 () Bool)

(declare-fun e!463536 () Bool)

(assert (=> b!831230 (= e!463535 e!463536)))

(declare-fun res!565913 () Bool)

(assert (=> b!831230 (=> (not res!565913) (not e!463536))))

(assert (=> b!831230 (= res!565913 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376779))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376779))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) ((_ is Cons!15999) (toList!4521 lt!376779)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376779))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun b!831231 () Bool)

(assert (=> b!831231 (= e!463536 (containsKey!400 (t!22376 (toList!4521 lt!376779)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105929 (not res!565912)) b!831230))

(assert (= (and b!831230 res!565913) b!831231))

(assert (=> b!831231 m!773277))

(declare-fun m!775055 () Bool)

(assert (=> b!831231 m!775055))

(assert (=> d!105425 d!105929))

(declare-fun lt!377215 () Bool)

(declare-fun d!105931 () Bool)

(assert (=> d!105931 (= lt!377215 (select (content!389 (toList!4521 lt!376868)) (tuple2!10175 lt!376707 zeroValueAfter!34)))))

(declare-fun e!463538 () Bool)

(assert (=> d!105931 (= lt!377215 e!463538)))

(declare-fun res!565915 () Bool)

(assert (=> d!105931 (=> (not res!565915) (not e!463538))))

(assert (=> d!105931 (= res!565915 ((_ is Cons!15999) (toList!4521 lt!376868)))))

(assert (=> d!105931 (= (contains!4209 (toList!4521 lt!376868) (tuple2!10175 lt!376707 zeroValueAfter!34)) lt!377215)))

(declare-fun b!831232 () Bool)

(declare-fun e!463537 () Bool)

(assert (=> b!831232 (= e!463538 e!463537)))

(declare-fun res!565914 () Bool)

(assert (=> b!831232 (=> res!565914 e!463537)))

(assert (=> b!831232 (= res!565914 (= (h!17128 (toList!4521 lt!376868)) (tuple2!10175 lt!376707 zeroValueAfter!34)))))

(declare-fun b!831233 () Bool)

(assert (=> b!831233 (= e!463537 (contains!4209 (t!22376 (toList!4521 lt!376868)) (tuple2!10175 lt!376707 zeroValueAfter!34)))))

(assert (= (and d!105931 res!565915) b!831232))

(assert (= (and b!831232 (not res!565914)) b!831233))

(declare-fun m!775057 () Bool)

(assert (=> d!105931 m!775057))

(declare-fun m!775059 () Bool)

(assert (=> d!105931 m!775059))

(declare-fun m!775061 () Bool)

(assert (=> b!831233 m!775061))

(assert (=> b!830349 d!105931))

(declare-fun d!105933 () Bool)

(declare-fun res!565916 () Bool)

(declare-fun e!463539 () Bool)

(assert (=> d!105933 (=> res!565916 e!463539)))

(assert (=> d!105933 (= res!565916 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))))) lt!376780)))))

(assert (=> d!105933 (= (containsKey!400 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))) lt!376780) e!463539)))

(declare-fun b!831234 () Bool)

(declare-fun e!463540 () Bool)

(assert (=> b!831234 (= e!463539 e!463540)))

(declare-fun res!565917 () Bool)

(assert (=> b!831234 (=> (not res!565917) (not e!463540))))

(assert (=> b!831234 (= res!565917 (and (or (not ((_ is Cons!15999) (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))))) (bvsle (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))))) lt!376780)) ((_ is Cons!15999) (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)))) (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783))))) lt!376780)))))

(declare-fun b!831235 () Bool)

(assert (=> b!831235 (= e!463540 (containsKey!400 (t!22376 (toList!4521 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)))) lt!376780))))

(assert (= (and d!105933 (not res!565916)) b!831234))

(assert (= (and b!831234 res!565917) b!831235))

(declare-fun m!775063 () Bool)

(assert (=> b!831235 m!775063))

(assert (=> d!105439 d!105933))

(declare-fun d!105935 () Bool)

(assert (=> d!105935 (= ($colon$colon!535 e!463036 (ite c!89868 (h!17128 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628)))) (Cons!15999 (ite c!89868 (h!17128 (toList!4521 (+!1950 lt!376624 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))) e!463036))))

(assert (=> bm!36268 d!105935))

(assert (=> b!830366 d!105745))

(assert (=> b!830366 d!105747))

(declare-fun d!105937 () Bool)

(assert (=> d!105937 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376729) (_1!5097 lt!376622)))))

(declare-fun lt!377216 () Unit!28435)

(assert (=> d!105937 (= lt!377216 (choose!1429 (toList!4521 lt!376729) (_1!5097 lt!376622)))))

(declare-fun e!463541 () Bool)

(assert (=> d!105937 e!463541))

(declare-fun res!565918 () Bool)

(assert (=> d!105937 (=> (not res!565918) (not e!463541))))

(assert (=> d!105937 (= res!565918 (isStrictlySorted!437 (toList!4521 lt!376729)))))

(assert (=> d!105937 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376729) (_1!5097 lt!376622)) lt!377216)))

(declare-fun b!831236 () Bool)

(assert (=> b!831236 (= e!463541 (containsKey!400 (toList!4521 lt!376729) (_1!5097 lt!376622)))))

(assert (= (and d!105937 res!565918) b!831236))

(assert (=> d!105937 m!773339))

(assert (=> d!105937 m!773339))

(assert (=> d!105937 m!773833))

(declare-fun m!775065 () Bool)

(assert (=> d!105937 m!775065))

(declare-fun m!775067 () Bool)

(assert (=> d!105937 m!775067))

(assert (=> b!831236 m!773829))

(assert (=> b!830438 d!105937))

(declare-fun d!105939 () Bool)

(assert (=> d!105939 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376729) (_1!5097 lt!376622))) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376729) (_1!5097 lt!376622)))))))

(declare-fun bs!23228 () Bool)

(assert (= bs!23228 d!105939))

(assert (=> bs!23228 m!773339))

(declare-fun m!775069 () Bool)

(assert (=> bs!23228 m!775069))

(assert (=> b!830438 d!105939))

(assert (=> b!830438 d!105427))

(declare-fun d!105941 () Bool)

(assert (=> d!105941 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376743) lt!376756)) (v!10091 (getValueByKey!414 (toList!4521 lt!376743) lt!376756)))))

(assert (=> d!105481 d!105941))

(declare-fun b!831239 () Bool)

(declare-fun e!463543 () Option!420)

(assert (=> b!831239 (= e!463543 (getValueByKey!414 (t!22376 (toList!4521 lt!376743)) lt!376756))))

(declare-fun b!831240 () Bool)

(assert (=> b!831240 (= e!463543 None!418)))

(declare-fun d!105943 () Bool)

(declare-fun c!90133 () Bool)

(assert (=> d!105943 (= c!90133 (and ((_ is Cons!15999) (toList!4521 lt!376743)) (= (_1!5097 (h!17128 (toList!4521 lt!376743))) lt!376756)))))

(declare-fun e!463542 () Option!420)

(assert (=> d!105943 (= (getValueByKey!414 (toList!4521 lt!376743) lt!376756) e!463542)))

(declare-fun b!831237 () Bool)

(assert (=> b!831237 (= e!463542 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376743)))))))

(declare-fun b!831238 () Bool)

(assert (=> b!831238 (= e!463542 e!463543)))

(declare-fun c!90134 () Bool)

(assert (=> b!831238 (= c!90134 (and ((_ is Cons!15999) (toList!4521 lt!376743)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376743))) lt!376756))))))

(assert (= (and d!105943 c!90133) b!831237))

(assert (= (and d!105943 (not c!90133)) b!831238))

(assert (= (and b!831238 c!90134) b!831239))

(assert (= (and b!831238 (not c!90134)) b!831240))

(declare-fun m!775071 () Bool)

(assert (=> b!831239 m!775071))

(assert (=> d!105481 d!105943))

(declare-fun lt!377217 () Bool)

(declare-fun d!105945 () Bool)

(assert (=> d!105945 (= lt!377217 (select (content!389 (toList!4521 lt!376939)) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!463545 () Bool)

(assert (=> d!105945 (= lt!377217 e!463545)))

(declare-fun res!565920 () Bool)

(assert (=> d!105945 (=> (not res!565920) (not e!463545))))

(assert (=> d!105945 (= res!565920 ((_ is Cons!15999) (toList!4521 lt!376939)))))

(assert (=> d!105945 (= (contains!4209 (toList!4521 lt!376939) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377217)))

(declare-fun b!831241 () Bool)

(declare-fun e!463544 () Bool)

(assert (=> b!831241 (= e!463545 e!463544)))

(declare-fun res!565919 () Bool)

(assert (=> b!831241 (=> res!565919 e!463544)))

(assert (=> b!831241 (= res!565919 (= (h!17128 (toList!4521 lt!376939)) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!831242 () Bool)

(assert (=> b!831242 (= e!463544 (contains!4209 (t!22376 (toList!4521 lt!376939)) (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!105945 res!565920) b!831241))

(assert (= (and b!831241 (not res!565919)) b!831242))

(declare-fun m!775073 () Bool)

(assert (=> d!105945 m!775073))

(declare-fun m!775075 () Bool)

(assert (=> d!105945 m!775075))

(declare-fun m!775077 () Bool)

(assert (=> b!831242 m!775077))

(assert (=> b!830484 d!105945))

(declare-fun d!105947 () Bool)

(declare-fun e!463547 () Bool)

(assert (=> d!105947 e!463547))

(declare-fun res!565921 () Bool)

(assert (=> d!105947 (=> res!565921 e!463547)))

(declare-fun lt!377221 () Bool)

(assert (=> d!105947 (= res!565921 (not lt!377221))))

(declare-fun lt!377220 () Bool)

(assert (=> d!105947 (= lt!377221 lt!377220)))

(declare-fun lt!377218 () Unit!28435)

(declare-fun e!463546 () Unit!28435)

(assert (=> d!105947 (= lt!377218 e!463546)))

(declare-fun c!90135 () Bool)

(assert (=> d!105947 (= c!90135 lt!377220)))

(assert (=> d!105947 (= lt!377220 (containsKey!400 (toList!4521 lt!376824) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!105947 (= (contains!4208 lt!376824 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!377221)))

(declare-fun b!831243 () Bool)

(declare-fun lt!377219 () Unit!28435)

(assert (=> b!831243 (= e!463546 lt!377219)))

(assert (=> b!831243 (= lt!377219 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376824) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!831243 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376824) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!831244 () Bool)

(declare-fun Unit!28478 () Unit!28435)

(assert (=> b!831244 (= e!463546 Unit!28478)))

(declare-fun b!831245 () Bool)

(assert (=> b!831245 (= e!463547 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376824) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(assert (= (and d!105947 c!90135) b!831243))

(assert (= (and d!105947 (not c!90135)) b!831244))

(assert (= (and d!105947 (not res!565921)) b!831245))

(assert (=> d!105947 m!773495))

(declare-fun m!775079 () Bool)

(assert (=> d!105947 m!775079))

(assert (=> b!831243 m!773495))

(declare-fun m!775081 () Bool)

(assert (=> b!831243 m!775081))

(assert (=> b!831243 m!773495))

(assert (=> b!831243 m!775015))

(assert (=> b!831243 m!775015))

(declare-fun m!775083 () Bool)

(assert (=> b!831243 m!775083))

(assert (=> b!831245 m!773495))

(assert (=> b!831245 m!775015))

(assert (=> b!831245 m!775015))

(assert (=> b!831245 m!775083))

(assert (=> b!830289 d!105947))

(declare-fun d!105949 () Bool)

(declare-fun lt!377222 () Bool)

(assert (=> d!105949 (= lt!377222 (select (content!389 lt!377017) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun e!463549 () Bool)

(assert (=> d!105949 (= lt!377222 e!463549)))

(declare-fun res!565923 () Bool)

(assert (=> d!105949 (=> (not res!565923) (not e!463549))))

(assert (=> d!105949 (= res!565923 ((_ is Cons!15999) lt!377017))))

(assert (=> d!105949 (= (contains!4209 lt!377017 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))) lt!377222)))

(declare-fun b!831246 () Bool)

(declare-fun e!463548 () Bool)

(assert (=> b!831246 (= e!463549 e!463548)))

(declare-fun res!565922 () Bool)

(assert (=> b!831246 (=> res!565922 e!463548)))

(assert (=> b!831246 (= res!565922 (= (h!17128 lt!377017) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun b!831247 () Bool)

(assert (=> b!831247 (= e!463548 (contains!4209 (t!22376 lt!377017) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(assert (= (and d!105949 res!565923) b!831246))

(assert (= (and b!831246 (not res!565922)) b!831247))

(declare-fun m!775085 () Bool)

(assert (=> d!105949 m!775085))

(declare-fun m!775087 () Bool)

(assert (=> d!105949 m!775087))

(declare-fun m!775089 () Bool)

(assert (=> b!831247 m!775089))

(assert (=> b!830572 d!105949))

(declare-fun d!105951 () Bool)

(assert (=> d!105951 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376751) lt!376755)) (v!10091 (getValueByKey!414 (toList!4521 lt!376751) lt!376755)))))

(assert (=> d!105457 d!105951))

(declare-fun b!831250 () Bool)

(declare-fun e!463551 () Option!420)

(assert (=> b!831250 (= e!463551 (getValueByKey!414 (t!22376 (toList!4521 lt!376751)) lt!376755))))

(declare-fun b!831251 () Bool)

(assert (=> b!831251 (= e!463551 None!418)))

(declare-fun d!105953 () Bool)

(declare-fun c!90136 () Bool)

(assert (=> d!105953 (= c!90136 (and ((_ is Cons!15999) (toList!4521 lt!376751)) (= (_1!5097 (h!17128 (toList!4521 lt!376751))) lt!376755)))))

(declare-fun e!463550 () Option!420)

(assert (=> d!105953 (= (getValueByKey!414 (toList!4521 lt!376751) lt!376755) e!463550)))

(declare-fun b!831248 () Bool)

(assert (=> b!831248 (= e!463550 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376751)))))))

(declare-fun b!831249 () Bool)

(assert (=> b!831249 (= e!463550 e!463551)))

(declare-fun c!90137 () Bool)

(assert (=> b!831249 (= c!90137 (and ((_ is Cons!15999) (toList!4521 lt!376751)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376751))) lt!376755))))))

(assert (= (and d!105953 c!90136) b!831248))

(assert (= (and d!105953 (not c!90136)) b!831249))

(assert (= (and b!831249 c!90137) b!831250))

(assert (= (and b!831249 (not c!90137)) b!831251))

(declare-fun m!775091 () Bool)

(assert (=> b!831250 m!775091))

(assert (=> d!105457 d!105953))

(assert (=> b!830612 d!105765))

(assert (=> b!830612 d!105767))

(declare-fun d!105955 () Bool)

(declare-fun res!565924 () Bool)

(declare-fun e!463552 () Bool)

(assert (=> d!105955 (=> res!565924 e!463552)))

(assert (=> d!105955 (= res!565924 (or ((_ is Nil!16000) lt!376983) ((_ is Nil!16000) (t!22376 lt!376983))))))

(assert (=> d!105955 (= (isStrictlySorted!437 lt!376983) e!463552)))

(declare-fun b!831252 () Bool)

(declare-fun e!463553 () Bool)

(assert (=> b!831252 (= e!463552 e!463553)))

(declare-fun res!565925 () Bool)

(assert (=> b!831252 (=> (not res!565925) (not e!463553))))

(assert (=> b!831252 (= res!565925 (bvslt (_1!5097 (h!17128 lt!376983)) (_1!5097 (h!17128 (t!22376 lt!376983)))))))

(declare-fun b!831253 () Bool)

(assert (=> b!831253 (= e!463553 (isStrictlySorted!437 (t!22376 lt!376983)))))

(assert (= (and d!105955 (not res!565924)) b!831252))

(assert (= (and b!831252 res!565925) b!831253))

(declare-fun m!775093 () Bool)

(assert (=> b!831253 m!775093))

(assert (=> d!105455 d!105955))

(declare-fun d!105957 () Bool)

(declare-fun res!565926 () Bool)

(declare-fun e!463554 () Bool)

(assert (=> d!105957 (=> res!565926 e!463554)))

(assert (=> d!105957 (= res!565926 (or ((_ is Nil!16000) (toList!4521 (+!1950 lt!376626 lt!376622))) ((_ is Nil!16000) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622))))))))

(assert (=> d!105957 (= (isStrictlySorted!437 (toList!4521 (+!1950 lt!376626 lt!376622))) e!463554)))

(declare-fun b!831254 () Bool)

(declare-fun e!463555 () Bool)

(assert (=> b!831254 (= e!463554 e!463555)))

(declare-fun res!565927 () Bool)

(assert (=> b!831254 (=> (not res!565927) (not e!463555))))

(assert (=> b!831254 (= res!565927 (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376622)))) (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))))))))

(declare-fun b!831255 () Bool)

(assert (=> b!831255 (= e!463555 (isStrictlySorted!437 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376622)))))))

(assert (= (and d!105957 (not res!565926)) b!831254))

(assert (= (and b!831254 res!565927) b!831255))

(assert (=> b!831255 m!774609))

(assert (=> d!105455 d!105957))

(declare-fun d!105959 () Bool)

(declare-fun res!565928 () Bool)

(declare-fun e!463556 () Bool)

(assert (=> d!105959 (=> res!565928 e!463556)))

(assert (=> d!105959 (= res!565928 (and ((_ is Cons!15999) (toList!4521 lt!376747)) (= (_1!5097 (h!17128 (toList!4521 lt!376747))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105959 (= (containsKey!400 (toList!4521 lt!376747) #b0000000000000000000000000000000000000000000000000000000000000000) e!463556)))

(declare-fun b!831256 () Bool)

(declare-fun e!463557 () Bool)

(assert (=> b!831256 (= e!463556 e!463557)))

(declare-fun res!565929 () Bool)

(assert (=> b!831256 (=> (not res!565929) (not e!463557))))

(assert (=> b!831256 (= res!565929 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376747))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376747))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!15999) (toList!4521 lt!376747)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376747))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831257 () Bool)

(assert (=> b!831257 (= e!463557 (containsKey!400 (t!22376 (toList!4521 lt!376747)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105959 (not res!565928)) b!831256))

(assert (= (and b!831256 res!565929) b!831257))

(declare-fun m!775095 () Bool)

(assert (=> b!831257 m!775095))

(assert (=> d!105487 d!105959))

(assert (=> b!830269 d!105863))

(declare-fun d!105961 () Bool)

(assert (=> d!105961 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377223 () Unit!28435)

(assert (=> d!105961 (= lt!377223 (choose!1429 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463558 () Bool)

(assert (=> d!105961 e!463558))

(declare-fun res!565930 () Bool)

(assert (=> d!105961 (=> (not res!565930) (not e!463558))))

(assert (=> d!105961 (= res!565930 (isStrictlySorted!437 (toList!4521 lt!376779)))))

(assert (=> d!105961 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000) lt!377223)))

(declare-fun b!831258 () Bool)

(assert (=> b!831258 (= e!463558 (containsKey!400 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!105961 res!565930) b!831258))

(assert (=> d!105961 m!773589))

(assert (=> d!105961 m!773589))

(assert (=> d!105961 m!773591))

(declare-fun m!775097 () Bool)

(assert (=> d!105961 m!775097))

(assert (=> d!105961 m!774749))

(assert (=> b!831258 m!773585))

(assert (=> b!830322 d!105961))

(declare-fun d!105963 () Bool)

(assert (=> d!105963 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23229 () Bool)

(assert (= bs!23229 d!105963))

(assert (=> bs!23229 m!773589))

(declare-fun m!775099 () Bool)

(assert (=> bs!23229 m!775099))

(assert (=> b!830322 d!105963))

(declare-fun b!831261 () Bool)

(declare-fun e!463560 () Option!420)

(assert (=> b!831261 (= e!463560 (getValueByKey!414 (t!22376 (toList!4521 lt!376779)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831262 () Bool)

(assert (=> b!831262 (= e!463560 None!418)))

(declare-fun d!105965 () Bool)

(declare-fun c!90138 () Bool)

(assert (=> d!105965 (= c!90138 (and ((_ is Cons!15999) (toList!4521 lt!376779)) (= (_1!5097 (h!17128 (toList!4521 lt!376779))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!463559 () Option!420)

(assert (=> d!105965 (= (getValueByKey!414 (toList!4521 lt!376779) #b1000000000000000000000000000000000000000000000000000000000000000) e!463559)))

(declare-fun b!831259 () Bool)

(assert (=> b!831259 (= e!463559 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376779)))))))

(declare-fun b!831260 () Bool)

(assert (=> b!831260 (= e!463559 e!463560)))

(declare-fun c!90139 () Bool)

(assert (=> b!831260 (= c!90139 (and ((_ is Cons!15999) (toList!4521 lt!376779)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376779))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!105965 c!90138) b!831259))

(assert (= (and d!105965 (not c!90138)) b!831260))

(assert (= (and b!831260 c!90139) b!831261))

(assert (= (and b!831260 (not c!90139)) b!831262))

(declare-fun m!775101 () Bool)

(assert (=> b!831261 m!775101))

(assert (=> b!830322 d!105965))

(declare-fun lt!377224 () Bool)

(declare-fun d!105967 () Bool)

(assert (=> d!105967 (= lt!377224 (select (content!389 (toList!4521 lt!376998)) (tuple2!10175 lt!376746 minValue!754)))))

(declare-fun e!463562 () Bool)

(assert (=> d!105967 (= lt!377224 e!463562)))

(declare-fun res!565932 () Bool)

(assert (=> d!105967 (=> (not res!565932) (not e!463562))))

(assert (=> d!105967 (= res!565932 ((_ is Cons!15999) (toList!4521 lt!376998)))))

(assert (=> d!105967 (= (contains!4209 (toList!4521 lt!376998) (tuple2!10175 lt!376746 minValue!754)) lt!377224)))

(declare-fun b!831263 () Bool)

(declare-fun e!463561 () Bool)

(assert (=> b!831263 (= e!463562 e!463561)))

(declare-fun res!565931 () Bool)

(assert (=> b!831263 (=> res!565931 e!463561)))

(assert (=> b!831263 (= res!565931 (= (h!17128 (toList!4521 lt!376998)) (tuple2!10175 lt!376746 minValue!754)))))

(declare-fun b!831264 () Bool)

(assert (=> b!831264 (= e!463561 (contains!4209 (t!22376 (toList!4521 lt!376998)) (tuple2!10175 lt!376746 minValue!754)))))

(assert (= (and d!105967 res!565932) b!831263))

(assert (= (and b!831263 (not res!565931)) b!831264))

(declare-fun m!775103 () Bool)

(assert (=> d!105967 m!775103))

(declare-fun m!775105 () Bool)

(assert (=> d!105967 m!775105))

(declare-fun m!775107 () Bool)

(assert (=> b!831264 m!775107))

(assert (=> b!830554 d!105967))

(declare-fun d!105969 () Bool)

(declare-fun lt!377225 () Bool)

(assert (=> d!105969 (= lt!377225 (select (content!389 (t!22376 (toList!4521 lt!376729))) lt!376622))))

(declare-fun e!463564 () Bool)

(assert (=> d!105969 (= lt!377225 e!463564)))

(declare-fun res!565934 () Bool)

(assert (=> d!105969 (=> (not res!565934) (not e!463564))))

(assert (=> d!105969 (= res!565934 ((_ is Cons!15999) (t!22376 (toList!4521 lt!376729))))))

(assert (=> d!105969 (= (contains!4209 (t!22376 (toList!4521 lt!376729)) lt!376622) lt!377225)))

(declare-fun b!831265 () Bool)

(declare-fun e!463563 () Bool)

(assert (=> b!831265 (= e!463564 e!463563)))

(declare-fun res!565933 () Bool)

(assert (=> b!831265 (=> res!565933 e!463563)))

(assert (=> b!831265 (= res!565933 (= (h!17128 (t!22376 (toList!4521 lt!376729))) lt!376622))))

(declare-fun b!831266 () Bool)

(assert (=> b!831266 (= e!463563 (contains!4209 (t!22376 (t!22376 (toList!4521 lt!376729))) lt!376622))))

(assert (= (and d!105969 res!565934) b!831265))

(assert (= (and b!831265 (not res!565933)) b!831266))

(assert (=> d!105969 m!775009))

(declare-fun m!775109 () Bool)

(assert (=> d!105969 m!775109))

(declare-fun m!775111 () Bool)

(assert (=> b!831266 m!775111))

(assert (=> b!830339 d!105969))

(declare-fun d!105971 () Bool)

(declare-fun lt!377226 () Bool)

(assert (=> d!105971 (= lt!377226 (select (content!389 (t!22376 (toList!4521 lt!376659))) lt!376628))))

(declare-fun e!463566 () Bool)

(assert (=> d!105971 (= lt!377226 e!463566)))

(declare-fun res!565936 () Bool)

(assert (=> d!105971 (=> (not res!565936) (not e!463566))))

(assert (=> d!105971 (= res!565936 ((_ is Cons!15999) (t!22376 (toList!4521 lt!376659))))))

(assert (=> d!105971 (= (contains!4209 (t!22376 (toList!4521 lt!376659)) lt!376628) lt!377226)))

(declare-fun b!831267 () Bool)

(declare-fun e!463565 () Bool)

(assert (=> b!831267 (= e!463566 e!463565)))

(declare-fun res!565935 () Bool)

(assert (=> b!831267 (=> res!565935 e!463565)))

(assert (=> b!831267 (= res!565935 (= (h!17128 (t!22376 (toList!4521 lt!376659))) lt!376628))))

(declare-fun b!831268 () Bool)

(assert (=> b!831268 (= e!463565 (contains!4209 (t!22376 (t!22376 (toList!4521 lt!376659))) lt!376628))))

(assert (= (and d!105971 res!565936) b!831267))

(assert (= (and b!831267 (not res!565935)) b!831268))

(assert (=> d!105971 m!775021))

(declare-fun m!775113 () Bool)

(assert (=> d!105971 m!775113))

(declare-fun m!775115 () Bool)

(assert (=> b!831268 m!775115))

(assert (=> b!830511 d!105971))

(declare-fun d!105973 () Bool)

(assert (=> d!105973 (= (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34))) lt!376722)) (v!10091 (getValueByKey!414 (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34))) lt!376722)))))

(assert (=> d!105331 d!105973))

(declare-fun e!463568 () Option!420)

(declare-fun b!831271 () Bool)

(assert (=> b!831271 (= e!463568 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34)))) lt!376722))))

(declare-fun b!831272 () Bool)

(assert (=> b!831272 (= e!463568 None!418)))

(declare-fun c!90140 () Bool)

(declare-fun d!105975 () Bool)

(assert (=> d!105975 (= c!90140 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34))))) lt!376722)))))

(declare-fun e!463567 () Option!420)

(assert (=> d!105975 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34))) lt!376722) e!463567)))

(declare-fun b!831269 () Bool)

(assert (=> b!831269 (= e!463567 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34)))))))))

(declare-fun b!831270 () Bool)

(assert (=> b!831270 (= e!463567 e!463568)))

(declare-fun c!90141 () Bool)

(assert (=> b!831270 (= c!90141 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34))))) lt!376722))))))

(assert (= (and d!105975 c!90140) b!831269))

(assert (= (and d!105975 (not c!90140)) b!831270))

(assert (= (and b!831270 c!90141) b!831271))

(assert (= (and b!831270 (not c!90141)) b!831272))

(declare-fun m!775117 () Bool)

(assert (=> b!831271 m!775117))

(assert (=> d!105331 d!105975))

(declare-fun d!105977 () Bool)

(declare-fun e!463570 () Bool)

(assert (=> d!105977 e!463570))

(declare-fun res!565937 () Bool)

(assert (=> d!105977 (=> res!565937 e!463570)))

(declare-fun lt!377230 () Bool)

(assert (=> d!105977 (= res!565937 (not lt!377230))))

(declare-fun lt!377229 () Bool)

(assert (=> d!105977 (= lt!377230 lt!377229)))

(declare-fun lt!377227 () Unit!28435)

(declare-fun e!463569 () Unit!28435)

(assert (=> d!105977 (= lt!377227 e!463569)))

(declare-fun c!90142 () Bool)

(assert (=> d!105977 (= c!90142 lt!377229)))

(assert (=> d!105977 (= lt!377229 (containsKey!400 (toList!4521 lt!376930) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!105977 (= (contains!4208 lt!376930 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!377230)))

(declare-fun b!831273 () Bool)

(declare-fun lt!377228 () Unit!28435)

(assert (=> b!831273 (= e!463569 lt!377228)))

(assert (=> b!831273 (= lt!377228 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376930) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> b!831273 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376930) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!831274 () Bool)

(declare-fun Unit!28479 () Unit!28435)

(assert (=> b!831274 (= e!463569 Unit!28479)))

(declare-fun b!831275 () Bool)

(assert (=> b!831275 (= e!463570 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376930) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!105977 c!90142) b!831273))

(assert (= (and d!105977 (not c!90142)) b!831274))

(assert (= (and d!105977 (not res!565937)) b!831275))

(declare-fun m!775119 () Bool)

(assert (=> d!105977 m!775119))

(declare-fun m!775121 () Bool)

(assert (=> b!831273 m!775121))

(assert (=> b!831273 m!773891))

(assert (=> b!831273 m!773891))

(declare-fun m!775123 () Bool)

(assert (=> b!831273 m!775123))

(assert (=> b!831275 m!773891))

(assert (=> b!831275 m!773891))

(assert (=> b!831275 m!775123))

(assert (=> d!105409 d!105977))

(declare-fun e!463572 () Option!420)

(declare-fun b!831278 () Bool)

(assert (=> b!831278 (= e!463572 (getValueByKey!414 (t!22376 lt!376932) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!831279 () Bool)

(assert (=> b!831279 (= e!463572 None!418)))

(declare-fun c!90143 () Bool)

(declare-fun d!105979 () Bool)

(assert (=> d!105979 (= c!90143 (and ((_ is Cons!15999) lt!376932) (= (_1!5097 (h!17128 lt!376932)) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun e!463571 () Option!420)

(assert (=> d!105979 (= (getValueByKey!414 lt!376932 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) e!463571)))

(declare-fun b!831276 () Bool)

(assert (=> b!831276 (= e!463571 (Some!419 (_2!5097 (h!17128 lt!376932))))))

(declare-fun b!831277 () Bool)

(assert (=> b!831277 (= e!463571 e!463572)))

(declare-fun c!90144 () Bool)

(assert (=> b!831277 (= c!90144 (and ((_ is Cons!15999) lt!376932) (not (= (_1!5097 (h!17128 lt!376932)) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(assert (= (and d!105979 c!90143) b!831276))

(assert (= (and d!105979 (not c!90143)) b!831277))

(assert (= (and b!831277 c!90144) b!831278))

(assert (= (and b!831277 (not c!90144)) b!831279))

(declare-fun m!775125 () Bool)

(assert (=> b!831278 m!775125))

(assert (=> d!105409 d!105979))

(declare-fun d!105981 () Bool)

(assert (=> d!105981 (= (getValueByKey!414 lt!376932 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) (Some!419 (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun lt!377231 () Unit!28435)

(assert (=> d!105981 (= lt!377231 (choose!1427 lt!376932 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!463573 () Bool)

(assert (=> d!105981 e!463573))

(declare-fun res!565938 () Bool)

(assert (=> d!105981 (=> (not res!565938) (not e!463573))))

(assert (=> d!105981 (= res!565938 (isStrictlySorted!437 lt!376932))))

(assert (=> d!105981 (= (lemmaContainsTupThenGetReturnValue!230 lt!376932 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!377231)))

(declare-fun b!831280 () Bool)

(declare-fun res!565939 () Bool)

(assert (=> b!831280 (=> (not res!565939) (not e!463573))))

(assert (=> b!831280 (= res!565939 (containsKey!400 lt!376932 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!831281 () Bool)

(assert (=> b!831281 (= e!463573 (contains!4209 lt!376932 (tuple2!10175 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!105981 res!565938) b!831280))

(assert (= (and b!831280 res!565939) b!831281))

(assert (=> d!105981 m!773885))

(declare-fun m!775127 () Bool)

(assert (=> d!105981 m!775127))

(declare-fun m!775129 () Bool)

(assert (=> d!105981 m!775129))

(declare-fun m!775131 () Bool)

(assert (=> b!831280 m!775131))

(declare-fun m!775133 () Bool)

(assert (=> b!831281 m!775133))

(assert (=> d!105409 d!105981))

(declare-fun b!831282 () Bool)

(declare-fun e!463574 () List!16003)

(declare-fun call!36334 () List!16003)

(assert (=> b!831282 (= e!463574 call!36334)))

(declare-fun bm!36329 () Bool)

(declare-fun call!36332 () List!16003)

(assert (=> bm!36329 (= call!36334 call!36332)))

(declare-fun e!463576 () Bool)

(declare-fun b!831283 () Bool)

(declare-fun lt!377232 () List!16003)

(assert (=> b!831283 (= e!463576 (contains!4209 lt!377232 (tuple2!10175 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun c!90147 () Bool)

(declare-fun b!831284 () Bool)

(declare-fun e!463577 () List!16003)

(declare-fun c!90148 () Bool)

(assert (=> b!831284 (= e!463577 (ite c!90148 (t!22376 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248)))) (ite c!90147 (Cons!15999 (h!17128 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248)))) (t!22376 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248))))) Nil!16000)))))

(declare-fun b!831285 () Bool)

(assert (=> b!831285 (= e!463577 (insertStrictlySorted!268 (t!22376 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248)))) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!831286 () Bool)

(assert (=> b!831286 (= e!463574 call!36334)))

(declare-fun call!36333 () List!16003)

(declare-fun bm!36330 () Bool)

(declare-fun c!90145 () Bool)

(assert (=> bm!36330 (= call!36333 ($colon$colon!535 e!463577 (ite c!90145 (h!17128 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248)))) (tuple2!10175 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(declare-fun c!90146 () Bool)

(assert (=> bm!36330 (= c!90146 c!90145)))

(declare-fun b!831287 () Bool)

(declare-fun e!463578 () List!16003)

(assert (=> b!831287 (= e!463578 call!36332)))

(declare-fun b!831288 () Bool)

(declare-fun e!463575 () List!16003)

(assert (=> b!831288 (= e!463575 call!36333)))

(declare-fun b!831289 () Bool)

(assert (=> b!831289 (= e!463575 e!463578)))

(assert (=> b!831289 (= c!90148 (and ((_ is Cons!15999) (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248)))) (= (_1!5097 (h!17128 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248))))) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun b!831291 () Bool)

(declare-fun res!565940 () Bool)

(assert (=> b!831291 (=> (not res!565940) (not e!463576))))

(assert (=> b!831291 (= res!565940 (containsKey!400 lt!377232 (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun bm!36331 () Bool)

(assert (=> bm!36331 (= call!36332 call!36333)))

(declare-fun d!105983 () Bool)

(assert (=> d!105983 e!463576))

(declare-fun res!565941 () Bool)

(assert (=> d!105983 (=> (not res!565941) (not e!463576))))

(assert (=> d!105983 (= res!565941 (isStrictlySorted!437 lt!377232))))

(assert (=> d!105983 (= lt!377232 e!463575)))

(assert (=> d!105983 (= c!90145 (and ((_ is Cons!15999) (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248)))) (bvslt (_1!5097 (h!17128 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248))))) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (=> d!105983 (isStrictlySorted!437 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248))))))

(assert (=> d!105983 (= (insertStrictlySorted!268 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248))) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (_2!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) lt!377232)))

(declare-fun b!831290 () Bool)

(assert (=> b!831290 (= c!90147 (and ((_ is Cons!15999) (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248)))) (bvsgt (_1!5097 (h!17128 (toList!4521 (ite c!89804 call!36250 (ite c!89803 call!36247 call!36248))))) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (=> b!831290 (= e!463578 e!463574)))

(assert (= (and d!105983 c!90145) b!831288))

(assert (= (and d!105983 (not c!90145)) b!831289))

(assert (= (and b!831289 c!90148) b!831287))

(assert (= (and b!831289 (not c!90148)) b!831290))

(assert (= (and b!831290 c!90147) b!831282))

(assert (= (and b!831290 (not c!90147)) b!831286))

(assert (= (or b!831282 b!831286) bm!36329))

(assert (= (or b!831287 bm!36329) bm!36331))

(assert (= (or b!831288 bm!36331) bm!36330))

(assert (= (and bm!36330 c!90146) b!831285))

(assert (= (and bm!36330 (not c!90146)) b!831284))

(assert (= (and d!105983 res!565941) b!831291))

(assert (= (and b!831291 res!565940) b!831283))

(declare-fun m!775135 () Bool)

(assert (=> b!831291 m!775135))

(declare-fun m!775137 () Bool)

(assert (=> d!105983 m!775137))

(declare-fun m!775139 () Bool)

(assert (=> d!105983 m!775139))

(declare-fun m!775141 () Bool)

(assert (=> bm!36330 m!775141))

(declare-fun m!775143 () Bool)

(assert (=> b!831285 m!775143))

(declare-fun m!775145 () Bool)

(assert (=> b!831283 m!775145))

(assert (=> d!105409 d!105983))

(declare-fun d!105985 () Bool)

(assert (=> d!105985 (= (isEmpty!660 (toList!4521 lt!376779)) ((_ is Nil!16000) (toList!4521 lt!376779)))))

(assert (=> d!105359 d!105985))

(declare-fun d!105987 () Bool)

(declare-fun e!463580 () Bool)

(assert (=> d!105987 e!463580))

(declare-fun res!565942 () Bool)

(assert (=> d!105987 (=> res!565942 e!463580)))

(declare-fun lt!377236 () Bool)

(assert (=> d!105987 (= res!565942 (not lt!377236))))

(declare-fun lt!377235 () Bool)

(assert (=> d!105987 (= lt!377236 lt!377235)))

(declare-fun lt!377233 () Unit!28435)

(declare-fun e!463579 () Unit!28435)

(assert (=> d!105987 (= lt!377233 e!463579)))

(declare-fun c!90149 () Bool)

(assert (=> d!105987 (= c!90149 lt!377235)))

(assert (=> d!105987 (= lt!377235 (containsKey!400 (toList!4521 lt!376824) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!105987 (= (contains!4208 lt!376824 #b0000000000000000000000000000000000000000000000000000000000000000) lt!377236)))

(declare-fun b!831292 () Bool)

(declare-fun lt!377234 () Unit!28435)

(assert (=> b!831292 (= e!463579 lt!377234)))

(assert (=> b!831292 (= lt!377234 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376824) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!831292 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376824) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831293 () Bool)

(declare-fun Unit!28480 () Unit!28435)

(assert (=> b!831293 (= e!463579 Unit!28480)))

(declare-fun b!831294 () Bool)

(assert (=> b!831294 (= e!463580 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376824) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!105987 c!90149) b!831292))

(assert (= (and d!105987 (not c!90149)) b!831293))

(assert (= (and d!105987 (not res!565942)) b!831294))

(declare-fun m!775147 () Bool)

(assert (=> d!105987 m!775147))

(declare-fun m!775149 () Bool)

(assert (=> b!831292 m!775149))

(declare-fun m!775151 () Bool)

(assert (=> b!831292 m!775151))

(assert (=> b!831292 m!775151))

(declare-fun m!775153 () Bool)

(assert (=> b!831292 m!775153))

(assert (=> b!831294 m!775151))

(assert (=> b!831294 m!775151))

(assert (=> b!831294 m!775153))

(assert (=> d!105305 d!105987))

(assert (=> d!105305 d!105279))

(assert (=> b!830609 d!105795))

(assert (=> b!830609 d!105797))

(declare-fun e!463582 () Option!420)

(declare-fun b!831297 () Bool)

(assert (=> b!831297 (= e!463582 (getValueByKey!414 (t!22376 (toList!4521 lt!376939)) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!831298 () Bool)

(assert (=> b!831298 (= e!463582 None!418)))

(declare-fun c!90150 () Bool)

(declare-fun d!105989 () Bool)

(assert (=> d!105989 (= c!90150 (and ((_ is Cons!15999) (toList!4521 lt!376939)) (= (_1!5097 (h!17128 (toList!4521 lt!376939))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!463581 () Option!420)

(assert (=> d!105989 (= (getValueByKey!414 (toList!4521 lt!376939) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!463581)))

(declare-fun b!831295 () Bool)

(assert (=> b!831295 (= e!463581 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376939)))))))

(declare-fun b!831296 () Bool)

(assert (=> b!831296 (= e!463581 e!463582)))

(declare-fun c!90151 () Bool)

(assert (=> b!831296 (= c!90151 (and ((_ is Cons!15999) (toList!4521 lt!376939)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376939))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!105989 c!90150) b!831295))

(assert (= (and d!105989 (not c!90150)) b!831296))

(assert (= (and b!831296 c!90151) b!831297))

(assert (= (and b!831296 (not c!90151)) b!831298))

(declare-fun m!775155 () Bool)

(assert (=> b!831297 m!775155))

(assert (=> b!830483 d!105989))

(declare-fun d!105991 () Bool)

(declare-fun e!463584 () Bool)

(assert (=> d!105991 e!463584))

(declare-fun res!565943 () Bool)

(assert (=> d!105991 (=> res!565943 e!463584)))

(declare-fun lt!377240 () Bool)

(assert (=> d!105991 (= res!565943 (not lt!377240))))

(declare-fun lt!377239 () Bool)

(assert (=> d!105991 (= lt!377240 lt!377239)))

(declare-fun lt!377237 () Unit!28435)

(declare-fun e!463583 () Unit!28435)

(assert (=> d!105991 (= lt!377237 e!463583)))

(declare-fun c!90152 () Bool)

(assert (=> d!105991 (= c!90152 lt!377239)))

(assert (=> d!105991 (= lt!377239 (containsKey!400 (toList!4521 lt!376868) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(assert (=> d!105991 (= (contains!4208 lt!376868 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!377240)))

(declare-fun b!831299 () Bool)

(declare-fun lt!377238 () Unit!28435)

(assert (=> b!831299 (= e!463583 lt!377238)))

(assert (=> b!831299 (= lt!377238 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376868) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(assert (=> b!831299 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376868) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(declare-fun b!831300 () Bool)

(declare-fun Unit!28481 () Unit!28435)

(assert (=> b!831300 (= e!463583 Unit!28481)))

(declare-fun b!831301 () Bool)

(assert (=> b!831301 (= e!463584 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376868) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(assert (= (and d!105991 c!90152) b!831299))

(assert (= (and d!105991 (not c!90152)) b!831300))

(assert (= (and d!105991 (not res!565943)) b!831301))

(declare-fun m!775157 () Bool)

(assert (=> d!105991 m!775157))

(declare-fun m!775159 () Bool)

(assert (=> b!831299 m!775159))

(assert (=> b!831299 m!773677))

(assert (=> b!831299 m!773677))

(declare-fun m!775161 () Bool)

(assert (=> b!831299 m!775161))

(assert (=> b!831301 m!773677))

(assert (=> b!831301 m!773677))

(assert (=> b!831301 m!775161))

(assert (=> d!105343 d!105991))

(declare-fun b!831304 () Bool)

(declare-fun e!463586 () Option!420)

(assert (=> b!831304 (= e!463586 (getValueByKey!414 (t!22376 lt!376870) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(declare-fun b!831305 () Bool)

(assert (=> b!831305 (= e!463586 None!418)))

(declare-fun d!105993 () Bool)

(declare-fun c!90153 () Bool)

(assert (=> d!105993 (= c!90153 (and ((_ is Cons!15999) lt!376870) (= (_1!5097 (h!17128 lt!376870)) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(declare-fun e!463585 () Option!420)

(assert (=> d!105993 (= (getValueByKey!414 lt!376870 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))) e!463585)))

(declare-fun b!831302 () Bool)

(assert (=> b!831302 (= e!463585 (Some!419 (_2!5097 (h!17128 lt!376870))))))

(declare-fun b!831303 () Bool)

(assert (=> b!831303 (= e!463585 e!463586)))

(declare-fun c!90154 () Bool)

(assert (=> b!831303 (= c!90154 (and ((_ is Cons!15999) lt!376870) (not (= (_1!5097 (h!17128 lt!376870)) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))))

(assert (= (and d!105993 c!90153) b!831302))

(assert (= (and d!105993 (not c!90153)) b!831303))

(assert (= (and b!831303 c!90154) b!831304))

(assert (= (and b!831303 (not c!90154)) b!831305))

(declare-fun m!775163 () Bool)

(assert (=> b!831304 m!775163))

(assert (=> d!105343 d!105993))

(declare-fun d!105995 () Bool)

(assert (=> d!105995 (= (getValueByKey!414 lt!376870 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(declare-fun lt!377241 () Unit!28435)

(assert (=> d!105995 (= lt!377241 (choose!1427 lt!376870 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(declare-fun e!463587 () Bool)

(assert (=> d!105995 e!463587))

(declare-fun res!565944 () Bool)

(assert (=> d!105995 (=> (not res!565944) (not e!463587))))

(assert (=> d!105995 (= res!565944 (isStrictlySorted!437 lt!376870))))

(assert (=> d!105995 (= (lemmaContainsTupThenGetReturnValue!230 lt!376870 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!377241)))

(declare-fun b!831306 () Bool)

(declare-fun res!565945 () Bool)

(assert (=> b!831306 (=> (not res!565945) (not e!463587))))

(assert (=> b!831306 (= res!565945 (containsKey!400 lt!376870 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(declare-fun b!831307 () Bool)

(assert (=> b!831307 (= e!463587 (contains!4209 lt!376870 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(assert (= (and d!105995 res!565944) b!831306))

(assert (= (and b!831306 res!565945) b!831307))

(assert (=> d!105995 m!773671))

(declare-fun m!775165 () Bool)

(assert (=> d!105995 m!775165))

(declare-fun m!775167 () Bool)

(assert (=> d!105995 m!775167))

(declare-fun m!775169 () Bool)

(assert (=> b!831306 m!775169))

(declare-fun m!775171 () Bool)

(assert (=> b!831307 m!775171))

(assert (=> d!105343 d!105995))

(declare-fun b!831308 () Bool)

(declare-fun e!463588 () List!16003)

(declare-fun call!36337 () List!16003)

(assert (=> b!831308 (= e!463588 call!36337)))

(declare-fun bm!36332 () Bool)

(declare-fun call!36335 () List!16003)

(assert (=> bm!36332 (= call!36337 call!36335)))

(declare-fun e!463590 () Bool)

(declare-fun lt!377242 () List!16003)

(declare-fun b!831309 () Bool)

(assert (=> b!831309 (= e!463590 (contains!4209 lt!377242 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(declare-fun c!90158 () Bool)

(declare-fun e!463591 () List!16003)

(declare-fun c!90157 () Bool)

(declare-fun b!831310 () Bool)

(assert (=> b!831310 (= e!463591 (ite c!90158 (t!22376 (toList!4521 lt!376714)) (ite c!90157 (Cons!15999 (h!17128 (toList!4521 lt!376714)) (t!22376 (toList!4521 lt!376714))) Nil!16000)))))

(declare-fun b!831311 () Bool)

(assert (=> b!831311 (= e!463591 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376714)) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(declare-fun b!831312 () Bool)

(assert (=> b!831312 (= e!463588 call!36337)))

(declare-fun call!36336 () List!16003)

(declare-fun bm!36333 () Bool)

(declare-fun c!90155 () Bool)

(assert (=> bm!36333 (= call!36336 ($colon$colon!535 e!463591 (ite c!90155 (h!17128 (toList!4521 lt!376714)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))))

(declare-fun c!90156 () Bool)

(assert (=> bm!36333 (= c!90156 c!90155)))

(declare-fun b!831313 () Bool)

(declare-fun e!463592 () List!16003)

(assert (=> b!831313 (= e!463592 call!36335)))

(declare-fun b!831314 () Bool)

(declare-fun e!463589 () List!16003)

(assert (=> b!831314 (= e!463589 call!36336)))

(declare-fun b!831315 () Bool)

(assert (=> b!831315 (= e!463589 e!463592)))

(assert (=> b!831315 (= c!90158 (and ((_ is Cons!15999) (toList!4521 lt!376714)) (= (_1!5097 (h!17128 (toList!4521 lt!376714))) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(declare-fun b!831317 () Bool)

(declare-fun res!565946 () Bool)

(assert (=> b!831317 (=> (not res!565946) (not e!463590))))

(assert (=> b!831317 (= res!565946 (containsKey!400 lt!377242 (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(declare-fun bm!36334 () Bool)

(assert (=> bm!36334 (= call!36335 call!36336)))

(declare-fun d!105997 () Bool)

(assert (=> d!105997 e!463590))

(declare-fun res!565947 () Bool)

(assert (=> d!105997 (=> (not res!565947) (not e!463590))))

(assert (=> d!105997 (= res!565947 (isStrictlySorted!437 lt!377242))))

(assert (=> d!105997 (= lt!377242 e!463589)))

(assert (=> d!105997 (= c!90155 (and ((_ is Cons!15999) (toList!4521 lt!376714)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376714))) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(assert (=> d!105997 (isStrictlySorted!437 (toList!4521 lt!376714))))

(assert (=> d!105997 (= (insertStrictlySorted!268 (toList!4521 lt!376714) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)) (_2!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))) lt!377242)))

(declare-fun b!831316 () Bool)

(assert (=> b!831316 (= c!90157 (and ((_ is Cons!15999) (toList!4521 lt!376714)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376714))) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(assert (=> b!831316 (= e!463592 e!463588)))

(assert (= (and d!105997 c!90155) b!831314))

(assert (= (and d!105997 (not c!90155)) b!831315))

(assert (= (and b!831315 c!90158) b!831313))

(assert (= (and b!831315 (not c!90158)) b!831316))

(assert (= (and b!831316 c!90157) b!831308))

(assert (= (and b!831316 (not c!90157)) b!831312))

(assert (= (or b!831308 b!831312) bm!36332))

(assert (= (or b!831313 bm!36332) bm!36334))

(assert (= (or b!831314 bm!36334) bm!36333))

(assert (= (and bm!36333 c!90156) b!831311))

(assert (= (and bm!36333 (not c!90156)) b!831310))

(assert (= (and d!105997 res!565947) b!831317))

(assert (= (and b!831317 res!565946) b!831309))

(declare-fun m!775173 () Bool)

(assert (=> b!831317 m!775173))

(declare-fun m!775175 () Bool)

(assert (=> d!105997 m!775175))

(declare-fun m!775177 () Bool)

(assert (=> d!105997 m!775177))

(declare-fun m!775179 () Bool)

(assert (=> bm!36333 m!775179))

(declare-fun m!775181 () Bool)

(assert (=> b!831311 m!775181))

(declare-fun m!775183 () Bool)

(assert (=> b!831309 m!775183))

(assert (=> d!105343 d!105997))

(declare-fun d!105999 () Bool)

(declare-fun lt!377243 () Bool)

(assert (=> d!105999 (= lt!377243 (select (content!389 lt!376661) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun e!463594 () Bool)

(assert (=> d!105999 (= lt!377243 e!463594)))

(declare-fun res!565949 () Bool)

(assert (=> d!105999 (=> (not res!565949) (not e!463594))))

(assert (=> d!105999 (= res!565949 ((_ is Cons!15999) lt!376661))))

(assert (=> d!105999 (= (contains!4209 lt!376661 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))) lt!377243)))

(declare-fun b!831318 () Bool)

(declare-fun e!463593 () Bool)

(assert (=> b!831318 (= e!463594 e!463593)))

(declare-fun res!565948 () Bool)

(assert (=> b!831318 (=> res!565948 e!463593)))

(assert (=> b!831318 (= res!565948 (= (h!17128 lt!376661) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun b!831319 () Bool)

(assert (=> b!831319 (= e!463593 (contains!4209 (t!22376 lt!376661) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(assert (= (and d!105999 res!565949) b!831318))

(assert (= (and b!831318 (not res!565948)) b!831319))

(declare-fun m!775185 () Bool)

(assert (=> d!105999 m!775185))

(declare-fun m!775187 () Bool)

(assert (=> d!105999 m!775187))

(declare-fun m!775189 () Bool)

(assert (=> b!831319 m!775189))

(assert (=> b!830465 d!105999))

(assert (=> d!105493 d!105491))

(declare-fun d!106001 () Bool)

(assert (=> d!106001 (= (getValueByKey!414 lt!376739 (_1!5097 lt!376622)) (Some!419 (_2!5097 lt!376622)))))

(assert (=> d!106001 true))

(declare-fun _$22!570 () Unit!28435)

(assert (=> d!106001 (= (choose!1427 lt!376739 (_1!5097 lt!376622) (_2!5097 lt!376622)) _$22!570)))

(declare-fun bs!23230 () Bool)

(assert (= bs!23230 d!106001))

(assert (=> bs!23230 m!773357))

(assert (=> d!105493 d!106001))

(declare-fun d!106003 () Bool)

(declare-fun res!565950 () Bool)

(declare-fun e!463595 () Bool)

(assert (=> d!106003 (=> res!565950 e!463595)))

(assert (=> d!106003 (= res!565950 (or ((_ is Nil!16000) lt!376739) ((_ is Nil!16000) (t!22376 lt!376739))))))

(assert (=> d!106003 (= (isStrictlySorted!437 lt!376739) e!463595)))

(declare-fun b!831320 () Bool)

(declare-fun e!463596 () Bool)

(assert (=> b!831320 (= e!463595 e!463596)))

(declare-fun res!565951 () Bool)

(assert (=> b!831320 (=> (not res!565951) (not e!463596))))

(assert (=> b!831320 (= res!565951 (bvslt (_1!5097 (h!17128 lt!376739)) (_1!5097 (h!17128 (t!22376 lt!376739)))))))

(declare-fun b!831321 () Bool)

(assert (=> b!831321 (= e!463596 (isStrictlySorted!437 (t!22376 lt!376739)))))

(assert (= (and d!106003 (not res!565950)) b!831320))

(assert (= (and b!831320 res!565951) b!831321))

(declare-fun m!775191 () Bool)

(assert (=> b!831321 m!775191))

(assert (=> d!105493 d!106003))

(declare-fun d!106005 () Bool)

(declare-fun e!463598 () Bool)

(assert (=> d!106005 e!463598))

(declare-fun res!565952 () Bool)

(assert (=> d!106005 (=> res!565952 e!463598)))

(declare-fun lt!377247 () Bool)

(assert (=> d!106005 (= res!565952 (not lt!377247))))

(declare-fun lt!377246 () Bool)

(assert (=> d!106005 (= lt!377247 lt!377246)))

(declare-fun lt!377244 () Unit!28435)

(declare-fun e!463597 () Unit!28435)

(assert (=> d!106005 (= lt!377244 e!463597)))

(declare-fun c!90159 () Bool)

(assert (=> d!106005 (= c!90159 lt!377246)))

(assert (=> d!106005 (= lt!377246 (containsKey!400 (toList!4521 lt!376939) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106005 (= (contains!4208 lt!376939 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377247)))

(declare-fun b!831322 () Bool)

(declare-fun lt!377245 () Unit!28435)

(assert (=> b!831322 (= e!463597 lt!377245)))

(assert (=> b!831322 (= lt!377245 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376939) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!831322 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376939) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!831323 () Bool)

(declare-fun Unit!28482 () Unit!28435)

(assert (=> b!831323 (= e!463597 Unit!28482)))

(declare-fun b!831324 () Bool)

(assert (=> b!831324 (= e!463598 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376939) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!106005 c!90159) b!831322))

(assert (= (and d!106005 (not c!90159)) b!831323))

(assert (= (and d!106005 (not res!565952)) b!831324))

(declare-fun m!775193 () Bool)

(assert (=> d!106005 m!775193))

(declare-fun m!775195 () Bool)

(assert (=> b!831322 m!775195))

(assert (=> b!831322 m!773917))

(assert (=> b!831322 m!773917))

(declare-fun m!775197 () Bool)

(assert (=> b!831322 m!775197))

(assert (=> b!831324 m!773917))

(assert (=> b!831324 m!773917))

(assert (=> b!831324 m!775197))

(assert (=> d!105415 d!106005))

(declare-fun e!463600 () Option!420)

(declare-fun b!831327 () Bool)

(assert (=> b!831327 (= e!463600 (getValueByKey!414 (t!22376 lt!376941) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!831328 () Bool)

(assert (=> b!831328 (= e!463600 None!418)))

(declare-fun c!90160 () Bool)

(declare-fun d!106007 () Bool)

(assert (=> d!106007 (= c!90160 (and ((_ is Cons!15999) lt!376941) (= (_1!5097 (h!17128 lt!376941)) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!463599 () Option!420)

(assert (=> d!106007 (= (getValueByKey!414 lt!376941 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!463599)))

(declare-fun b!831325 () Bool)

(assert (=> b!831325 (= e!463599 (Some!419 (_2!5097 (h!17128 lt!376941))))))

(declare-fun b!831326 () Bool)

(assert (=> b!831326 (= e!463599 e!463600)))

(declare-fun c!90161 () Bool)

(assert (=> b!831326 (= c!90161 (and ((_ is Cons!15999) lt!376941) (not (= (_1!5097 (h!17128 lt!376941)) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!106007 c!90160) b!831325))

(assert (= (and d!106007 (not c!90160)) b!831326))

(assert (= (and b!831326 c!90161) b!831327))

(assert (= (and b!831326 (not c!90161)) b!831328))

(declare-fun m!775199 () Bool)

(assert (=> b!831327 m!775199))

(assert (=> d!105415 d!106007))

(declare-fun d!106009 () Bool)

(assert (=> d!106009 (= (getValueByKey!414 lt!376941 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377248 () Unit!28435)

(assert (=> d!106009 (= lt!377248 (choose!1427 lt!376941 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!463601 () Bool)

(assert (=> d!106009 e!463601))

(declare-fun res!565953 () Bool)

(assert (=> d!106009 (=> (not res!565953) (not e!463601))))

(assert (=> d!106009 (= res!565953 (isStrictlySorted!437 lt!376941))))

(assert (=> d!106009 (= (lemmaContainsTupThenGetReturnValue!230 lt!376941 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377248)))

(declare-fun b!831329 () Bool)

(declare-fun res!565954 () Bool)

(assert (=> b!831329 (=> (not res!565954) (not e!463601))))

(assert (=> b!831329 (= res!565954 (containsKey!400 lt!376941 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!831330 () Bool)

(assert (=> b!831330 (= e!463601 (contains!4209 lt!376941 (tuple2!10175 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!106009 res!565953) b!831329))

(assert (= (and b!831329 res!565954) b!831330))

(assert (=> d!106009 m!773911))

(declare-fun m!775201 () Bool)

(assert (=> d!106009 m!775201))

(declare-fun m!775203 () Bool)

(assert (=> d!106009 m!775203))

(declare-fun m!775205 () Bool)

(assert (=> b!831329 m!775205))

(declare-fun m!775207 () Bool)

(assert (=> b!831330 m!775207))

(assert (=> d!105415 d!106009))

(declare-fun b!831331 () Bool)

(declare-fun e!463602 () List!16003)

(declare-fun call!36340 () List!16003)

(assert (=> b!831331 (= e!463602 call!36340)))

(declare-fun bm!36335 () Bool)

(declare-fun call!36338 () List!16003)

(assert (=> bm!36335 (= call!36340 call!36338)))

(declare-fun b!831332 () Bool)

(declare-fun e!463604 () Bool)

(declare-fun lt!377249 () List!16003)

(assert (=> b!831332 (= e!463604 (contains!4209 lt!377249 (tuple2!10175 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!831333 () Bool)

(declare-fun c!90165 () Bool)

(declare-fun c!90164 () Bool)

(declare-fun e!463605 () List!16003)

(assert (=> b!831333 (= e!463605 (ite c!90165 (t!22376 (toList!4521 call!36257)) (ite c!90164 (Cons!15999 (h!17128 (toList!4521 call!36257)) (t!22376 (toList!4521 call!36257))) Nil!16000)))))

(declare-fun b!831334 () Bool)

(assert (=> b!831334 (= e!463605 (insertStrictlySorted!268 (t!22376 (toList!4521 call!36257)) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!831335 () Bool)

(assert (=> b!831335 (= e!463602 call!36340)))

(declare-fun call!36339 () List!16003)

(declare-fun bm!36336 () Bool)

(declare-fun c!90162 () Bool)

(assert (=> bm!36336 (= call!36339 ($colon$colon!535 e!463605 (ite c!90162 (h!17128 (toList!4521 call!36257)) (tuple2!10175 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!90163 () Bool)

(assert (=> bm!36336 (= c!90163 c!90162)))

(declare-fun b!831336 () Bool)

(declare-fun e!463606 () List!16003)

(assert (=> b!831336 (= e!463606 call!36338)))

(declare-fun b!831337 () Bool)

(declare-fun e!463603 () List!16003)

(assert (=> b!831337 (= e!463603 call!36339)))

(declare-fun b!831338 () Bool)

(assert (=> b!831338 (= e!463603 e!463606)))

(assert (=> b!831338 (= c!90165 (and ((_ is Cons!15999) (toList!4521 call!36257)) (= (_1!5097 (h!17128 (toList!4521 call!36257))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!831340 () Bool)

(declare-fun res!565955 () Bool)

(assert (=> b!831340 (=> (not res!565955) (not e!463604))))

(assert (=> b!831340 (= res!565955 (containsKey!400 lt!377249 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!36337 () Bool)

(assert (=> bm!36337 (= call!36338 call!36339)))

(declare-fun d!106011 () Bool)

(assert (=> d!106011 e!463604))

(declare-fun res!565956 () Bool)

(assert (=> d!106011 (=> (not res!565956) (not e!463604))))

(assert (=> d!106011 (= res!565956 (isStrictlySorted!437 lt!377249))))

(assert (=> d!106011 (= lt!377249 e!463603)))

(assert (=> d!106011 (= c!90162 (and ((_ is Cons!15999) (toList!4521 call!36257)) (bvslt (_1!5097 (h!17128 (toList!4521 call!36257))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!106011 (isStrictlySorted!437 (toList!4521 call!36257))))

(assert (=> d!106011 (= (insertStrictlySorted!268 (toList!4521 call!36257) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!377249)))

(declare-fun b!831339 () Bool)

(assert (=> b!831339 (= c!90164 (and ((_ is Cons!15999) (toList!4521 call!36257)) (bvsgt (_1!5097 (h!17128 (toList!4521 call!36257))) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) #b00000000000000000000000000000000) (get!11822 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!831339 (= e!463606 e!463602)))

(assert (= (and d!106011 c!90162) b!831337))

(assert (= (and d!106011 (not c!90162)) b!831338))

(assert (= (and b!831338 c!90165) b!831336))

(assert (= (and b!831338 (not c!90165)) b!831339))

(assert (= (and b!831339 c!90164) b!831331))

(assert (= (and b!831339 (not c!90164)) b!831335))

(assert (= (or b!831331 b!831335) bm!36335))

(assert (= (or b!831336 bm!36335) bm!36337))

(assert (= (or b!831337 bm!36337) bm!36336))

(assert (= (and bm!36336 c!90163) b!831334))

(assert (= (and bm!36336 (not c!90163)) b!831333))

(assert (= (and d!106011 res!565956) b!831340))

(assert (= (and b!831340 res!565955) b!831332))

(declare-fun m!775209 () Bool)

(assert (=> b!831340 m!775209))

(declare-fun m!775211 () Bool)

(assert (=> d!106011 m!775211))

(declare-fun m!775213 () Bool)

(assert (=> d!106011 m!775213))

(declare-fun m!775215 () Bool)

(assert (=> bm!36336 m!775215))

(declare-fun m!775217 () Bool)

(assert (=> b!831334 m!775217))

(declare-fun m!775219 () Bool)

(assert (=> b!831332 m!775219))

(assert (=> d!105415 d!106011))

(declare-fun d!106013 () Bool)

(declare-fun res!565957 () Bool)

(declare-fun e!463607 () Bool)

(assert (=> d!106013 (=> res!565957 e!463607)))

(assert (=> d!106013 (= res!565957 (and ((_ is Cons!15999) (toList!4521 lt!376729)) (= (_1!5097 (h!17128 (toList!4521 lt!376729))) (_1!5097 lt!376622))))))

(assert (=> d!106013 (= (containsKey!400 (toList!4521 lt!376729) (_1!5097 lt!376622)) e!463607)))

(declare-fun b!831341 () Bool)

(declare-fun e!463608 () Bool)

(assert (=> b!831341 (= e!463607 e!463608)))

(declare-fun res!565958 () Bool)

(assert (=> b!831341 (=> (not res!565958) (not e!463608))))

(assert (=> b!831341 (= res!565958 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376729))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376729))) (_1!5097 lt!376622))) ((_ is Cons!15999) (toList!4521 lt!376729)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376729))) (_1!5097 lt!376622))))))

(declare-fun b!831342 () Bool)

(assert (=> b!831342 (= e!463608 (containsKey!400 (t!22376 (toList!4521 lt!376729)) (_1!5097 lt!376622)))))

(assert (= (and d!106013 (not res!565957)) b!831341))

(assert (= (and b!831341 res!565958) b!831342))

(declare-fun m!775221 () Bool)

(assert (=> b!831342 m!775221))

(assert (=> d!105393 d!106013))

(declare-fun d!106015 () Bool)

(declare-fun res!565959 () Bool)

(declare-fun e!463609 () Bool)

(assert (=> d!106015 (=> res!565959 e!463609)))

(assert (=> d!106015 (= res!565959 (or ((_ is Nil!16000) lt!376916) ((_ is Nil!16000) (t!22376 lt!376916))))))

(assert (=> d!106015 (= (isStrictlySorted!437 lt!376916) e!463609)))

(declare-fun b!831343 () Bool)

(declare-fun e!463610 () Bool)

(assert (=> b!831343 (= e!463609 e!463610)))

(declare-fun res!565960 () Bool)

(assert (=> b!831343 (=> (not res!565960) (not e!463610))))

(assert (=> b!831343 (= res!565960 (bvslt (_1!5097 (h!17128 lt!376916)) (_1!5097 (h!17128 (t!22376 lt!376916)))))))

(declare-fun b!831344 () Bool)

(assert (=> b!831344 (= e!463610 (isStrictlySorted!437 (t!22376 lt!376916)))))

(assert (= (and d!106015 (not res!565959)) b!831343))

(assert (= (and b!831343 res!565960) b!831344))

(declare-fun m!775223 () Bool)

(assert (=> b!831344 m!775223))

(assert (=> d!105391 d!106015))

(declare-fun d!106017 () Bool)

(declare-fun res!565961 () Bool)

(declare-fun e!463611 () Bool)

(assert (=> d!106017 (=> res!565961 e!463611)))

(assert (=> d!106017 (= res!565961 (or ((_ is Nil!16000) (toList!4521 lt!376624)) ((_ is Nil!16000) (t!22376 (toList!4521 lt!376624)))))))

(assert (=> d!106017 (= (isStrictlySorted!437 (toList!4521 lt!376624)) e!463611)))

(declare-fun b!831345 () Bool)

(declare-fun e!463612 () Bool)

(assert (=> b!831345 (= e!463611 e!463612)))

(declare-fun res!565962 () Bool)

(assert (=> b!831345 (=> (not res!565962) (not e!463612))))

(assert (=> b!831345 (= res!565962 (bvslt (_1!5097 (h!17128 (toList!4521 lt!376624))) (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376624))))))))

(declare-fun b!831346 () Bool)

(assert (=> b!831346 (= e!463612 (isStrictlySorted!437 (t!22376 (toList!4521 lt!376624))))))

(assert (= (and d!106017 (not res!565961)) b!831345))

(assert (= (and b!831345 res!565962) b!831346))

(declare-fun m!775225 () Bool)

(assert (=> b!831346 m!775225))

(assert (=> d!105391 d!106017))

(declare-fun d!106019 () Bool)

(declare-fun lt!377250 () Bool)

(assert (=> d!106019 (= lt!377250 (select (content!389 (toList!4521 lt!377019)) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun e!463614 () Bool)

(assert (=> d!106019 (= lt!377250 e!463614)))

(declare-fun res!565964 () Bool)

(assert (=> d!106019 (=> (not res!565964) (not e!463614))))

(assert (=> d!106019 (= res!565964 ((_ is Cons!15999) (toList!4521 lt!377019)))))

(assert (=> d!106019 (= (contains!4209 (toList!4521 lt!377019) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!377250)))

(declare-fun b!831347 () Bool)

(declare-fun e!463613 () Bool)

(assert (=> b!831347 (= e!463614 e!463613)))

(declare-fun res!565963 () Bool)

(assert (=> b!831347 (=> res!565963 e!463613)))

(assert (=> b!831347 (= res!565963 (= (h!17128 (toList!4521 lt!377019)) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!831348 () Bool)

(assert (=> b!831348 (= e!463613 (contains!4209 (t!22376 (toList!4521 lt!377019)) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!106019 res!565964) b!831347))

(assert (= (and b!831347 (not res!565963)) b!831348))

(declare-fun m!775227 () Bool)

(assert (=> d!106019 m!775227))

(declare-fun m!775229 () Bool)

(assert (=> d!106019 m!775229))

(declare-fun m!775231 () Bool)

(assert (=> b!831348 m!775231))

(assert (=> b!830582 d!106019))

(declare-fun d!106021 () Bool)

(assert (=> d!106021 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377251 () Unit!28435)

(assert (=> d!106021 (= lt!377251 (choose!1429 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463615 () Bool)

(assert (=> d!106021 e!463615))

(declare-fun res!565965 () Bool)

(assert (=> d!106021 (=> (not res!565965) (not e!463615))))

(assert (=> d!106021 (= res!565965 (isStrictlySorted!437 (toList!4521 lt!376786)))))

(assert (=> d!106021 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000) lt!377251)))

(declare-fun b!831349 () Bool)

(assert (=> b!831349 (= e!463615 (containsKey!400 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106021 res!565965) b!831349))

(assert (=> d!106021 m!773967))

(assert (=> d!106021 m!773967))

(assert (=> d!106021 m!773969))

(declare-fun m!775233 () Bool)

(assert (=> d!106021 m!775233))

(assert (=> d!106021 m!774815))

(assert (=> b!831349 m!773963))

(assert (=> b!830512 d!106021))

(declare-fun d!106023 () Bool)

(assert (=> d!106023 (= (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!23231 () Bool)

(assert (= bs!23231 d!106023))

(assert (=> bs!23231 m!773967))

(declare-fun m!775235 () Bool)

(assert (=> bs!23231 m!775235))

(assert (=> b!830512 d!106023))

(declare-fun b!831352 () Bool)

(declare-fun e!463617 () Option!420)

(assert (=> b!831352 (= e!463617 (getValueByKey!414 (t!22376 (toList!4521 lt!376786)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831353 () Bool)

(assert (=> b!831353 (= e!463617 None!418)))

(declare-fun d!106025 () Bool)

(declare-fun c!90166 () Bool)

(assert (=> d!106025 (= c!90166 (and ((_ is Cons!15999) (toList!4521 lt!376786)) (= (_1!5097 (h!17128 (toList!4521 lt!376786))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!463616 () Option!420)

(assert (=> d!106025 (= (getValueByKey!414 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000) e!463616)))

(declare-fun b!831350 () Bool)

(assert (=> b!831350 (= e!463616 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376786)))))))

(declare-fun b!831351 () Bool)

(assert (=> b!831351 (= e!463616 e!463617)))

(declare-fun c!90167 () Bool)

(assert (=> b!831351 (= c!90167 (and ((_ is Cons!15999) (toList!4521 lt!376786)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376786))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!106025 c!90166) b!831350))

(assert (= (and d!106025 (not c!90166)) b!831351))

(assert (= (and b!831351 c!90167) b!831352))

(assert (= (and b!831351 (not c!90167)) b!831353))

(declare-fun m!775237 () Bool)

(assert (=> b!831352 m!775237))

(assert (=> b!830512 d!106025))

(declare-fun d!106027 () Bool)

(assert (=> d!106027 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742))))

(declare-fun lt!377252 () Unit!28435)

(assert (=> d!106027 (= lt!377252 (choose!1429 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742))))

(declare-fun e!463618 () Bool)

(assert (=> d!106027 e!463618))

(declare-fun res!565966 () Bool)

(assert (=> d!106027 (=> (not res!565966) (not e!463618))))

(assert (=> d!106027 (= res!565966 (isStrictlySorted!437 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(assert (=> d!106027 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742) lt!377252)))

(declare-fun b!831354 () Bool)

(assert (=> b!831354 (= e!463618 (containsKey!400 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742))))

(assert (= (and d!106027 res!565966) b!831354))

(assert (=> d!106027 m!774059))

(assert (=> d!106027 m!774059))

(assert (=> d!106027 m!774061))

(declare-fun m!775239 () Bool)

(assert (=> d!106027 m!775239))

(declare-fun m!775241 () Bool)

(assert (=> d!106027 m!775241))

(assert (=> b!831354 m!774055))

(assert (=> b!830546 d!106027))

(declare-fun d!106029 () Bool)

(assert (=> d!106029 (= (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742)) (not (isEmpty!661 (getValueByKey!414 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742))))))

(declare-fun bs!23232 () Bool)

(assert (= bs!23232 d!106029))

(assert (=> bs!23232 m!774059))

(declare-fun m!775243 () Bool)

(assert (=> bs!23232 m!775243))

(assert (=> b!830546 d!106029))

(declare-fun b!831357 () Bool)

(declare-fun e!463620 () Option!420)

(assert (=> b!831357 (= e!463620 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)))) lt!376742))))

(declare-fun b!831358 () Bool)

(assert (=> b!831358 (= e!463620 None!418)))

(declare-fun d!106031 () Bool)

(declare-fun c!90168 () Bool)

(assert (=> d!106031 (= c!90168 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))))) lt!376742)))))

(declare-fun e!463619 () Option!420)

(assert (=> d!106031 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742) e!463619)))

(declare-fun b!831355 () Bool)

(assert (=> b!831355 (= e!463619 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))))

(declare-fun b!831356 () Bool)

(assert (=> b!831356 (= e!463619 e!463620)))

(declare-fun c!90169 () Bool)

(assert (=> b!831356 (= c!90169 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))))) lt!376742))))))

(assert (= (and d!106031 c!90168) b!831355))

(assert (= (and d!106031 (not c!90168)) b!831356))

(assert (= (and b!831356 c!90169) b!831357))

(assert (= (and b!831356 (not c!90169)) b!831358))

(declare-fun m!775245 () Bool)

(assert (=> b!831357 m!775245))

(assert (=> b!830546 d!106031))

(declare-fun b!831359 () Bool)

(declare-fun e!463621 () List!16003)

(declare-fun call!36343 () List!16003)

(assert (=> b!831359 (= e!463621 call!36343)))

(declare-fun bm!36338 () Bool)

(declare-fun call!36341 () List!16003)

(assert (=> bm!36338 (= call!36343 call!36341)))

(declare-fun b!831360 () Bool)

(declare-fun e!463623 () Bool)

(declare-fun lt!377253 () List!16003)

(assert (=> b!831360 (= e!463623 (contains!4209 lt!377253 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun c!90173 () Bool)

(declare-fun e!463624 () List!16003)

(declare-fun b!831361 () Bool)

(declare-fun c!90172 () Bool)

(assert (=> b!831361 (= e!463624 (ite c!90173 (t!22376 (t!22376 (toList!4521 lt!376626))) (ite c!90172 (Cons!15999 (h!17128 (t!22376 (toList!4521 lt!376626))) (t!22376 (t!22376 (toList!4521 lt!376626)))) Nil!16000)))))

(declare-fun b!831362 () Bool)

(assert (=> b!831362 (= e!463624 (insertStrictlySorted!268 (t!22376 (t!22376 (toList!4521 lt!376626))) (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(declare-fun b!831363 () Bool)

(assert (=> b!831363 (= e!463621 call!36343)))

(declare-fun bm!36339 () Bool)

(declare-fun c!90170 () Bool)

(declare-fun call!36342 () List!16003)

(assert (=> bm!36339 (= call!36342 ($colon$colon!535 e!463624 (ite c!90170 (h!17128 (t!22376 (toList!4521 lt!376626))) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622)))))))

(declare-fun c!90171 () Bool)

(assert (=> bm!36339 (= c!90171 c!90170)))

(declare-fun b!831364 () Bool)

(declare-fun e!463625 () List!16003)

(assert (=> b!831364 (= e!463625 call!36341)))

(declare-fun b!831365 () Bool)

(declare-fun e!463622 () List!16003)

(assert (=> b!831365 (= e!463622 call!36342)))

(declare-fun b!831366 () Bool)

(assert (=> b!831366 (= e!463622 e!463625)))

(assert (=> b!831366 (= c!90173 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376626))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376626)))) (_1!5097 lt!376622))))))

(declare-fun b!831368 () Bool)

(declare-fun res!565967 () Bool)

(assert (=> b!831368 (=> (not res!565967) (not e!463623))))

(assert (=> b!831368 (= res!565967 (containsKey!400 lt!377253 (_1!5097 lt!376622)))))

(declare-fun bm!36340 () Bool)

(assert (=> bm!36340 (= call!36341 call!36342)))

(declare-fun d!106033 () Bool)

(assert (=> d!106033 e!463623))

(declare-fun res!565968 () Bool)

(assert (=> d!106033 (=> (not res!565968) (not e!463623))))

(assert (=> d!106033 (= res!565968 (isStrictlySorted!437 lt!377253))))

(assert (=> d!106033 (= lt!377253 e!463622)))

(assert (=> d!106033 (= c!90170 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376626))) (bvslt (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376626)))) (_1!5097 lt!376622))))))

(assert (=> d!106033 (isStrictlySorted!437 (t!22376 (toList!4521 lt!376626)))))

(assert (=> d!106033 (= (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376626)) (_1!5097 lt!376622) (_2!5097 lt!376622)) lt!377253)))

(declare-fun b!831367 () Bool)

(assert (=> b!831367 (= c!90172 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376626))) (bvsgt (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376626)))) (_1!5097 lt!376622))))))

(assert (=> b!831367 (= e!463625 e!463621)))

(assert (= (and d!106033 c!90170) b!831365))

(assert (= (and d!106033 (not c!90170)) b!831366))

(assert (= (and b!831366 c!90173) b!831364))

(assert (= (and b!831366 (not c!90173)) b!831367))

(assert (= (and b!831367 c!90172) b!831359))

(assert (= (and b!831367 (not c!90172)) b!831363))

(assert (= (or b!831359 b!831363) bm!36338))

(assert (= (or b!831364 bm!36338) bm!36340))

(assert (= (or b!831365 bm!36340) bm!36339))

(assert (= (and bm!36339 c!90171) b!831362))

(assert (= (and bm!36339 (not c!90171)) b!831361))

(assert (= (and d!106033 res!565968) b!831368))

(assert (= (and b!831368 res!565967) b!831360))

(declare-fun m!775247 () Bool)

(assert (=> b!831368 m!775247))

(declare-fun m!775249 () Bool)

(assert (=> d!106033 m!775249))

(assert (=> d!106033 m!774231))

(declare-fun m!775251 () Bool)

(assert (=> bm!36339 m!775251))

(declare-fun m!775253 () Bool)

(assert (=> b!831362 m!775253))

(declare-fun m!775255 () Bool)

(assert (=> b!831360 m!775255))

(assert (=> b!830450 d!106033))

(declare-fun d!106035 () Bool)

(declare-fun res!565969 () Bool)

(declare-fun e!463626 () Bool)

(assert (=> d!106035 (=> res!565969 e!463626)))

(assert (=> d!106035 (= res!565969 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))))) lt!376742)))))

(assert (=> d!106035 (= (containsKey!400 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!376742) e!463626)))

(declare-fun b!831369 () Bool)

(declare-fun e!463627 () Bool)

(assert (=> b!831369 (= e!463626 e!463627)))

(declare-fun res!565970 () Bool)

(assert (=> b!831369 (=> (not res!565970) (not e!463627))))

(assert (=> b!831369 (= res!565970 (and (or (not ((_ is Cons!15999) (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))))) (bvsle (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))))) lt!376742)) ((_ is Cons!15999) (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)))) (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34))))) lt!376742)))))

(declare-fun b!831370 () Bool)

(assert (=> b!831370 (= e!463627 (containsKey!400 (t!22376 (toList!4521 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)))) lt!376742))))

(assert (= (and d!106035 (not res!565969)) b!831369))

(assert (= (and b!831369 res!565970) b!831370))

(declare-fun m!775257 () Bool)

(assert (=> b!831370 m!775257))

(assert (=> d!105463 d!106035))

(declare-fun d!106037 () Bool)

(declare-fun c!90174 () Bool)

(assert (=> d!106037 (= c!90174 ((_ is Nil!16000) (toList!4521 lt!376733)))))

(declare-fun e!463628 () (InoxSet tuple2!10174))

(assert (=> d!106037 (= (content!389 (toList!4521 lt!376733)) e!463628)))

(declare-fun b!831371 () Bool)

(assert (=> b!831371 (= e!463628 ((as const (Array tuple2!10174 Bool)) false))))

(declare-fun b!831372 () Bool)

(assert (=> b!831372 (= e!463628 ((_ map or) (store ((as const (Array tuple2!10174 Bool)) false) (h!17128 (toList!4521 lt!376733)) true) (content!389 (t!22376 (toList!4521 lt!376733)))))))

(assert (= (and d!106037 c!90174) b!831371))

(assert (= (and d!106037 (not c!90174)) b!831372))

(declare-fun m!775259 () Bool)

(assert (=> b!831372 m!775259))

(assert (=> b!831372 m!774835))

(assert (=> d!105361 d!106037))

(declare-fun d!106039 () Bool)

(declare-fun res!565971 () Bool)

(declare-fun e!463629 () Bool)

(assert (=> d!106039 (=> res!565971 e!463629)))

(assert (=> d!106039 (= res!565971 (or ((_ is Nil!16000) lt!377017) ((_ is Nil!16000) (t!22376 lt!377017))))))

(assert (=> d!106039 (= (isStrictlySorted!437 lt!377017) e!463629)))

(declare-fun b!831373 () Bool)

(declare-fun e!463630 () Bool)

(assert (=> b!831373 (= e!463629 e!463630)))

(declare-fun res!565972 () Bool)

(assert (=> b!831373 (=> (not res!565972) (not e!463630))))

(assert (=> b!831373 (= res!565972 (bvslt (_1!5097 (h!17128 lt!377017)) (_1!5097 (h!17128 (t!22376 lt!377017)))))))

(declare-fun b!831374 () Bool)

(assert (=> b!831374 (= e!463630 (isStrictlySorted!437 (t!22376 lt!377017)))))

(assert (= (and d!106039 (not res!565971)) b!831373))

(assert (= (and b!831373 res!565972) b!831374))

(declare-fun m!775261 () Bool)

(assert (=> b!831374 m!775261))

(assert (=> d!105495 d!106039))

(declare-fun d!106041 () Bool)

(declare-fun res!565973 () Bool)

(declare-fun e!463631 () Bool)

(assert (=> d!106041 (=> res!565973 e!463631)))

(assert (=> d!106041 (= res!565973 (or ((_ is Nil!16000) (toList!4521 (+!1950 lt!376626 lt!376628))) ((_ is Nil!16000) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628))))))))

(assert (=> d!106041 (= (isStrictlySorted!437 (toList!4521 (+!1950 lt!376626 lt!376628))) e!463631)))

(declare-fun b!831375 () Bool)

(declare-fun e!463632 () Bool)

(assert (=> b!831375 (= e!463631 e!463632)))

(declare-fun res!565974 () Bool)

(assert (=> b!831375 (=> (not res!565974) (not e!463632))))

(assert (=> b!831375 (= res!565974 (bvslt (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376626 lt!376628)))) (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))))))))

(declare-fun b!831376 () Bool)

(assert (=> b!831376 (= e!463632 (isStrictlySorted!437 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))))))

(assert (= (and d!106041 (not res!565973)) b!831375))

(assert (= (and b!831375 res!565974) b!831376))

(declare-fun m!775263 () Bool)

(assert (=> b!831376 m!775263))

(assert (=> d!105495 d!106041))

(assert (=> b!830459 d!105869))

(assert (=> b!830459 d!105357))

(assert (=> d!105483 d!105463))

(assert (=> d!105483 d!105467))

(declare-fun d!106043 () Bool)

(assert (=> d!106043 (contains!4208 (+!1950 lt!376748 (tuple2!10175 lt!376741 zeroValueBefore!34)) lt!376742)))

(assert (=> d!106043 true))

(declare-fun _$35!423 () Unit!28435)

(assert (=> d!106043 (= (choose!1426 lt!376748 lt!376741 zeroValueBefore!34 lt!376742) _$35!423)))

(declare-fun bs!23233 () Bool)

(assert (= bs!23233 d!106043))

(assert (=> bs!23233 m!773397))

(assert (=> bs!23233 m!773397))

(assert (=> bs!23233 m!773399))

(assert (=> d!105483 d!106043))

(declare-fun d!106045 () Bool)

(declare-fun e!463634 () Bool)

(assert (=> d!106045 e!463634))

(declare-fun res!565975 () Bool)

(assert (=> d!106045 (=> res!565975 e!463634)))

(declare-fun lt!377257 () Bool)

(assert (=> d!106045 (= res!565975 (not lt!377257))))

(declare-fun lt!377256 () Bool)

(assert (=> d!106045 (= lt!377257 lt!377256)))

(declare-fun lt!377254 () Unit!28435)

(declare-fun e!463633 () Unit!28435)

(assert (=> d!106045 (= lt!377254 e!463633)))

(declare-fun c!90175 () Bool)

(assert (=> d!106045 (= c!90175 lt!377256)))

(assert (=> d!106045 (= lt!377256 (containsKey!400 (toList!4521 lt!376748) lt!376742))))

(assert (=> d!106045 (= (contains!4208 lt!376748 lt!376742) lt!377257)))

(declare-fun b!831378 () Bool)

(declare-fun lt!377255 () Unit!28435)

(assert (=> b!831378 (= e!463633 lt!377255)))

(assert (=> b!831378 (= lt!377255 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376748) lt!376742))))

(assert (=> b!831378 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376748) lt!376742))))

(declare-fun b!831379 () Bool)

(declare-fun Unit!28483 () Unit!28435)

(assert (=> b!831379 (= e!463633 Unit!28483)))

(declare-fun b!831380 () Bool)

(assert (=> b!831380 (= e!463634 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376748) lt!376742)))))

(assert (= (and d!106045 c!90175) b!831378))

(assert (= (and d!106045 (not c!90175)) b!831379))

(assert (= (and d!106045 (not res!565975)) b!831380))

(declare-fun m!775265 () Bool)

(assert (=> d!106045 m!775265))

(declare-fun m!775267 () Bool)

(assert (=> b!831378 m!775267))

(declare-fun m!775269 () Bool)

(assert (=> b!831378 m!775269))

(assert (=> b!831378 m!775269))

(declare-fun m!775271 () Bool)

(assert (=> b!831378 m!775271))

(assert (=> b!831380 m!775269))

(assert (=> b!831380 m!775269))

(assert (=> b!831380 m!775271))

(assert (=> d!105483 d!106045))

(declare-fun b!831383 () Bool)

(declare-fun e!463636 () Option!420)

(assert (=> b!831383 (= e!463636 (getValueByKey!414 (t!22376 (toList!4521 lt!376868)) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))

(declare-fun b!831384 () Bool)

(assert (=> b!831384 (= e!463636 None!418)))

(declare-fun d!106047 () Bool)

(declare-fun c!90176 () Bool)

(assert (=> d!106047 (= c!90176 (and ((_ is Cons!15999) (toList!4521 lt!376868)) (= (_1!5097 (h!17128 (toList!4521 lt!376868))) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34)))))))

(declare-fun e!463635 () Option!420)

(assert (=> d!106047 (= (getValueByKey!414 (toList!4521 lt!376868) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))) e!463635)))

(declare-fun b!831381 () Bool)

(assert (=> b!831381 (= e!463635 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376868)))))))

(declare-fun b!831382 () Bool)

(assert (=> b!831382 (= e!463635 e!463636)))

(declare-fun c!90177 () Bool)

(assert (=> b!831382 (= c!90177 (and ((_ is Cons!15999) (toList!4521 lt!376868)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376868))) (_1!5097 (tuple2!10175 lt!376707 zeroValueAfter!34))))))))

(assert (= (and d!106047 c!90176) b!831381))

(assert (= (and d!106047 (not c!90176)) b!831382))

(assert (= (and b!831382 c!90177) b!831383))

(assert (= (and b!831382 (not c!90177)) b!831384))

(declare-fun m!775273 () Bool)

(assert (=> b!831383 m!775273))

(assert (=> b!830348 d!106047))

(assert (=> b!830295 d!105537))

(declare-fun d!106049 () Bool)

(declare-fun e!463638 () Bool)

(assert (=> d!106049 e!463638))

(declare-fun res!565976 () Bool)

(assert (=> d!106049 (=> res!565976 e!463638)))

(declare-fun lt!377261 () Bool)

(assert (=> d!106049 (= res!565976 (not lt!377261))))

(declare-fun lt!377260 () Bool)

(assert (=> d!106049 (= lt!377261 lt!377260)))

(declare-fun lt!377258 () Unit!28435)

(declare-fun e!463637 () Unit!28435)

(assert (=> d!106049 (= lt!377258 e!463637)))

(declare-fun c!90178 () Bool)

(assert (=> d!106049 (= c!90178 lt!377260)))

(assert (=> d!106049 (= lt!377260 (containsKey!400 (toList!4521 lt!376998) (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))

(assert (=> d!106049 (= (contains!4208 lt!376998 (_1!5097 (tuple2!10175 lt!376746 minValue!754))) lt!377261)))

(declare-fun b!831385 () Bool)

(declare-fun lt!377259 () Unit!28435)

(assert (=> b!831385 (= e!463637 lt!377259)))

(assert (=> b!831385 (= lt!377259 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376998) (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))

(assert (=> b!831385 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376998) (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))

(declare-fun b!831386 () Bool)

(declare-fun Unit!28484 () Unit!28435)

(assert (=> b!831386 (= e!463637 Unit!28484)))

(declare-fun b!831387 () Bool)

(assert (=> b!831387 (= e!463638 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376998) (_1!5097 (tuple2!10175 lt!376746 minValue!754)))))))

(assert (= (and d!106049 c!90178) b!831385))

(assert (= (and d!106049 (not c!90178)) b!831386))

(assert (= (and d!106049 (not res!565976)) b!831387))

(declare-fun m!775275 () Bool)

(assert (=> d!106049 m!775275))

(declare-fun m!775277 () Bool)

(assert (=> b!831385 m!775277))

(assert (=> b!831385 m!774095))

(assert (=> b!831385 m!774095))

(declare-fun m!775279 () Bool)

(assert (=> b!831385 m!775279))

(assert (=> b!831387 m!774095))

(assert (=> b!831387 m!774095))

(assert (=> b!831387 m!775279))

(assert (=> d!105469 d!106049))

(declare-fun e!463640 () Option!420)

(declare-fun b!831390 () Bool)

(assert (=> b!831390 (= e!463640 (getValueByKey!414 (t!22376 lt!377000) (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))

(declare-fun b!831391 () Bool)

(assert (=> b!831391 (= e!463640 None!418)))

(declare-fun c!90179 () Bool)

(declare-fun d!106051 () Bool)

(assert (=> d!106051 (= c!90179 (and ((_ is Cons!15999) lt!377000) (= (_1!5097 (h!17128 lt!377000)) (_1!5097 (tuple2!10175 lt!376746 minValue!754)))))))

(declare-fun e!463639 () Option!420)

(assert (=> d!106051 (= (getValueByKey!414 lt!377000 (_1!5097 (tuple2!10175 lt!376746 minValue!754))) e!463639)))

(declare-fun b!831388 () Bool)

(assert (=> b!831388 (= e!463639 (Some!419 (_2!5097 (h!17128 lt!377000))))))

(declare-fun b!831389 () Bool)

(assert (=> b!831389 (= e!463639 e!463640)))

(declare-fun c!90180 () Bool)

(assert (=> b!831389 (= c!90180 (and ((_ is Cons!15999) lt!377000) (not (= (_1!5097 (h!17128 lt!377000)) (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))))

(assert (= (and d!106051 c!90179) b!831388))

(assert (= (and d!106051 (not c!90179)) b!831389))

(assert (= (and b!831389 c!90180) b!831390))

(assert (= (and b!831389 (not c!90180)) b!831391))

(declare-fun m!775281 () Bool)

(assert (=> b!831390 m!775281))

(assert (=> d!105469 d!106051))

(declare-fun d!106053 () Bool)

(assert (=> d!106053 (= (getValueByKey!414 lt!377000 (_1!5097 (tuple2!10175 lt!376746 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 lt!376746 minValue!754))))))

(declare-fun lt!377262 () Unit!28435)

(assert (=> d!106053 (= lt!377262 (choose!1427 lt!377000 (_1!5097 (tuple2!10175 lt!376746 minValue!754)) (_2!5097 (tuple2!10175 lt!376746 minValue!754))))))

(declare-fun e!463641 () Bool)

(assert (=> d!106053 e!463641))

(declare-fun res!565977 () Bool)

(assert (=> d!106053 (=> (not res!565977) (not e!463641))))

(assert (=> d!106053 (= res!565977 (isStrictlySorted!437 lt!377000))))

(assert (=> d!106053 (= (lemmaContainsTupThenGetReturnValue!230 lt!377000 (_1!5097 (tuple2!10175 lt!376746 minValue!754)) (_2!5097 (tuple2!10175 lt!376746 minValue!754))) lt!377262)))

(declare-fun b!831392 () Bool)

(declare-fun res!565978 () Bool)

(assert (=> b!831392 (=> (not res!565978) (not e!463641))))

(assert (=> b!831392 (= res!565978 (containsKey!400 lt!377000 (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))

(declare-fun b!831393 () Bool)

(assert (=> b!831393 (= e!463641 (contains!4209 lt!377000 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376746 minValue!754)) (_2!5097 (tuple2!10175 lt!376746 minValue!754)))))))

(assert (= (and d!106053 res!565977) b!831392))

(assert (= (and b!831392 res!565978) b!831393))

(assert (=> d!106053 m!774089))

(declare-fun m!775283 () Bool)

(assert (=> d!106053 m!775283))

(declare-fun m!775285 () Bool)

(assert (=> d!106053 m!775285))

(declare-fun m!775287 () Bool)

(assert (=> b!831392 m!775287))

(declare-fun m!775289 () Bool)

(assert (=> b!831393 m!775289))

(assert (=> d!105469 d!106053))

(declare-fun b!831394 () Bool)

(declare-fun e!463642 () List!16003)

(declare-fun call!36346 () List!16003)

(assert (=> b!831394 (= e!463642 call!36346)))

(declare-fun bm!36341 () Bool)

(declare-fun call!36344 () List!16003)

(assert (=> bm!36341 (= call!36346 call!36344)))

(declare-fun b!831395 () Bool)

(declare-fun lt!377263 () List!16003)

(declare-fun e!463644 () Bool)

(assert (=> b!831395 (= e!463644 (contains!4209 lt!377263 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376746 minValue!754)) (_2!5097 (tuple2!10175 lt!376746 minValue!754)))))))

(declare-fun c!90183 () Bool)

(declare-fun e!463645 () List!16003)

(declare-fun c!90184 () Bool)

(declare-fun b!831396 () Bool)

(assert (=> b!831396 (= e!463645 (ite c!90184 (t!22376 (toList!4521 lt!376749)) (ite c!90183 (Cons!15999 (h!17128 (toList!4521 lt!376749)) (t!22376 (toList!4521 lt!376749))) Nil!16000)))))

(declare-fun b!831397 () Bool)

(assert (=> b!831397 (= e!463645 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376749)) (_1!5097 (tuple2!10175 lt!376746 minValue!754)) (_2!5097 (tuple2!10175 lt!376746 minValue!754))))))

(declare-fun b!831398 () Bool)

(assert (=> b!831398 (= e!463642 call!36346)))

(declare-fun c!90181 () Bool)

(declare-fun call!36345 () List!16003)

(declare-fun bm!36342 () Bool)

(assert (=> bm!36342 (= call!36345 ($colon$colon!535 e!463645 (ite c!90181 (h!17128 (toList!4521 lt!376749)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376746 minValue!754)) (_2!5097 (tuple2!10175 lt!376746 minValue!754))))))))

(declare-fun c!90182 () Bool)

(assert (=> bm!36342 (= c!90182 c!90181)))

(declare-fun b!831399 () Bool)

(declare-fun e!463646 () List!16003)

(assert (=> b!831399 (= e!463646 call!36344)))

(declare-fun b!831400 () Bool)

(declare-fun e!463643 () List!16003)

(assert (=> b!831400 (= e!463643 call!36345)))

(declare-fun b!831401 () Bool)

(assert (=> b!831401 (= e!463643 e!463646)))

(assert (=> b!831401 (= c!90184 (and ((_ is Cons!15999) (toList!4521 lt!376749)) (= (_1!5097 (h!17128 (toList!4521 lt!376749))) (_1!5097 (tuple2!10175 lt!376746 minValue!754)))))))

(declare-fun b!831403 () Bool)

(declare-fun res!565979 () Bool)

(assert (=> b!831403 (=> (not res!565979) (not e!463644))))

(assert (=> b!831403 (= res!565979 (containsKey!400 lt!377263 (_1!5097 (tuple2!10175 lt!376746 minValue!754))))))

(declare-fun bm!36343 () Bool)

(assert (=> bm!36343 (= call!36344 call!36345)))

(declare-fun d!106055 () Bool)

(assert (=> d!106055 e!463644))

(declare-fun res!565980 () Bool)

(assert (=> d!106055 (=> (not res!565980) (not e!463644))))

(assert (=> d!106055 (= res!565980 (isStrictlySorted!437 lt!377263))))

(assert (=> d!106055 (= lt!377263 e!463643)))

(assert (=> d!106055 (= c!90181 (and ((_ is Cons!15999) (toList!4521 lt!376749)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376749))) (_1!5097 (tuple2!10175 lt!376746 minValue!754)))))))

(assert (=> d!106055 (isStrictlySorted!437 (toList!4521 lt!376749))))

(assert (=> d!106055 (= (insertStrictlySorted!268 (toList!4521 lt!376749) (_1!5097 (tuple2!10175 lt!376746 minValue!754)) (_2!5097 (tuple2!10175 lt!376746 minValue!754))) lt!377263)))

(declare-fun b!831402 () Bool)

(assert (=> b!831402 (= c!90183 (and ((_ is Cons!15999) (toList!4521 lt!376749)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376749))) (_1!5097 (tuple2!10175 lt!376746 minValue!754)))))))

(assert (=> b!831402 (= e!463646 e!463642)))

(assert (= (and d!106055 c!90181) b!831400))

(assert (= (and d!106055 (not c!90181)) b!831401))

(assert (= (and b!831401 c!90184) b!831399))

(assert (= (and b!831401 (not c!90184)) b!831402))

(assert (= (and b!831402 c!90183) b!831394))

(assert (= (and b!831402 (not c!90183)) b!831398))

(assert (= (or b!831394 b!831398) bm!36341))

(assert (= (or b!831399 bm!36341) bm!36343))

(assert (= (or b!831400 bm!36343) bm!36342))

(assert (= (and bm!36342 c!90182) b!831397))

(assert (= (and bm!36342 (not c!90182)) b!831396))

(assert (= (and d!106055 res!565980) b!831403))

(assert (= (and b!831403 res!565979) b!831395))

(declare-fun m!775291 () Bool)

(assert (=> b!831403 m!775291))

(declare-fun m!775293 () Bool)

(assert (=> d!106055 m!775293))

(declare-fun m!775295 () Bool)

(assert (=> d!106055 m!775295))

(declare-fun m!775297 () Bool)

(assert (=> bm!36342 m!775297))

(declare-fun m!775299 () Bool)

(assert (=> b!831397 m!775299))

(declare-fun m!775301 () Bool)

(assert (=> b!831395 m!775301))

(assert (=> d!105469 d!106055))

(declare-fun d!106057 () Bool)

(declare-fun res!565981 () Bool)

(declare-fun e!463647 () Bool)

(assert (=> d!106057 (=> res!565981 e!463647)))

(assert (=> d!106057 (= res!565981 (and ((_ is Cons!15999) lt!376661) (= (_1!5097 (h!17128 lt!376661)) (_1!5097 lt!376628))))))

(assert (=> d!106057 (= (containsKey!400 lt!376661 (_1!5097 lt!376628)) e!463647)))

(declare-fun b!831404 () Bool)

(declare-fun e!463648 () Bool)

(assert (=> b!831404 (= e!463647 e!463648)))

(declare-fun res!565982 () Bool)

(assert (=> b!831404 (=> (not res!565982) (not e!463648))))

(assert (=> b!831404 (= res!565982 (and (or (not ((_ is Cons!15999) lt!376661)) (bvsle (_1!5097 (h!17128 lt!376661)) (_1!5097 lt!376628))) ((_ is Cons!15999) lt!376661) (bvslt (_1!5097 (h!17128 lt!376661)) (_1!5097 lt!376628))))))

(declare-fun b!831405 () Bool)

(assert (=> b!831405 (= e!463648 (containsKey!400 (t!22376 lt!376661) (_1!5097 lt!376628)))))

(assert (= (and d!106057 (not res!565981)) b!831404))

(assert (= (and b!831404 res!565982) b!831405))

(declare-fun m!775303 () Bool)

(assert (=> b!831405 m!775303))

(assert (=> b!830464 d!106057))

(declare-fun d!106059 () Bool)

(assert (=> d!106059 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376749) lt!376753)) (v!10091 (getValueByKey!414 (toList!4521 lt!376749) lt!376753)))))

(assert (=> d!105459 d!106059))

(declare-fun b!831408 () Bool)

(declare-fun e!463650 () Option!420)

(assert (=> b!831408 (= e!463650 (getValueByKey!414 (t!22376 (toList!4521 lt!376749)) lt!376753))))

(declare-fun b!831409 () Bool)

(assert (=> b!831409 (= e!463650 None!418)))

(declare-fun d!106061 () Bool)

(declare-fun c!90185 () Bool)

(assert (=> d!106061 (= c!90185 (and ((_ is Cons!15999) (toList!4521 lt!376749)) (= (_1!5097 (h!17128 (toList!4521 lt!376749))) lt!376753)))))

(declare-fun e!463649 () Option!420)

(assert (=> d!106061 (= (getValueByKey!414 (toList!4521 lt!376749) lt!376753) e!463649)))

(declare-fun b!831406 () Bool)

(assert (=> b!831406 (= e!463649 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376749)))))))

(declare-fun b!831407 () Bool)

(assert (=> b!831407 (= e!463649 e!463650)))

(declare-fun c!90186 () Bool)

(assert (=> b!831407 (= c!90186 (and ((_ is Cons!15999) (toList!4521 lt!376749)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376749))) lt!376753))))))

(assert (= (and d!106061 c!90185) b!831406))

(assert (= (and d!106061 (not c!90185)) b!831407))

(assert (= (and b!831407 c!90186) b!831408))

(assert (= (and b!831407 (not c!90186)) b!831409))

(declare-fun m!775305 () Bool)

(assert (=> b!831408 m!775305))

(assert (=> d!105459 d!106061))

(declare-fun d!106063 () Bool)

(declare-fun res!565983 () Bool)

(declare-fun e!463651 () Bool)

(assert (=> d!106063 (=> res!565983 e!463651)))

(assert (=> d!106063 (= res!565983 (= (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!376799))))

(assert (=> d!106063 (= (arrayContainsKey!0 _keys!976 lt!376799 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!463651)))

(declare-fun b!831410 () Bool)

(declare-fun e!463652 () Bool)

(assert (=> b!831410 (= e!463651 e!463652)))

(declare-fun res!565984 () Bool)

(assert (=> b!831410 (=> (not res!565984) (not e!463652))))

(assert (=> b!831410 (= res!565984 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!831411 () Bool)

(assert (=> b!831411 (= e!463652 (arrayContainsKey!0 _keys!976 lt!376799 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!106063 (not res!565983)) b!831410))

(assert (= (and b!831410 res!565984) b!831411))

(assert (=> d!106063 m!773495))

(declare-fun m!775307 () Bool)

(assert (=> b!831411 m!775307))

(assert (=> b!830588 d!106063))

(declare-fun d!106065 () Bool)

(declare-fun e!463654 () Bool)

(assert (=> d!106065 e!463654))

(declare-fun res!565985 () Bool)

(assert (=> d!106065 (=> res!565985 e!463654)))

(declare-fun lt!377267 () Bool)

(assert (=> d!106065 (= res!565985 (not lt!377267))))

(declare-fun lt!377266 () Bool)

(assert (=> d!106065 (= lt!377267 lt!377266)))

(declare-fun lt!377264 () Unit!28435)

(declare-fun e!463653 () Unit!28435)

(assert (=> d!106065 (= lt!377264 e!463653)))

(declare-fun c!90187 () Bool)

(assert (=> d!106065 (= c!90187 lt!377266)))

(assert (=> d!106065 (= lt!377266 (containsKey!400 (toList!4521 lt!376824) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!106065 (= (contains!4208 lt!376824 #b1000000000000000000000000000000000000000000000000000000000000000) lt!377267)))

(declare-fun b!831412 () Bool)

(declare-fun lt!377265 () Unit!28435)

(assert (=> b!831412 (= e!463653 lt!377265)))

(assert (=> b!831412 (= lt!377265 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376824) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!831412 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376824) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!831413 () Bool)

(declare-fun Unit!28485 () Unit!28435)

(assert (=> b!831413 (= e!463653 Unit!28485)))

(declare-fun b!831414 () Bool)

(assert (=> b!831414 (= e!463654 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376824) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!106065 c!90187) b!831412))

(assert (= (and d!106065 (not c!90187)) b!831413))

(assert (= (and d!106065 (not res!565985)) b!831414))

(declare-fun m!775309 () Bool)

(assert (=> d!106065 m!775309))

(declare-fun m!775311 () Bool)

(assert (=> b!831412 m!775311))

(declare-fun m!775313 () Bool)

(assert (=> b!831412 m!775313))

(assert (=> b!831412 m!775313))

(declare-fun m!775315 () Bool)

(assert (=> b!831412 m!775315))

(assert (=> b!831414 m!775313))

(assert (=> b!831414 m!775313))

(assert (=> b!831414 m!775315))

(assert (=> b!830288 d!106065))

(declare-fun d!106067 () Bool)

(assert (=> d!106067 (= (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754))) lt!376721)) (v!10091 (getValueByKey!414 (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754))) lt!376721)))))

(assert (=> d!105349 d!106067))

(declare-fun e!463656 () Option!420)

(declare-fun b!831417 () Bool)

(assert (=> b!831417 (= e!463656 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754)))) lt!376721))))

(declare-fun b!831418 () Bool)

(assert (=> b!831418 (= e!463656 None!418)))

(declare-fun d!106069 () Bool)

(declare-fun c!90188 () Bool)

(assert (=> d!106069 (= c!90188 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754))))) lt!376721)))))

(declare-fun e!463655 () Option!420)

(assert (=> d!106069 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754))) lt!376721) e!463655)))

(declare-fun b!831415 () Bool)

(assert (=> b!831415 (= e!463655 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754)))))))))

(declare-fun b!831416 () Bool)

(assert (=> b!831416 (= e!463655 e!463656)))

(declare-fun c!90189 () Bool)

(assert (=> b!831416 (= c!90189 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754))))) lt!376721))))))

(assert (= (and d!106069 c!90188) b!831415))

(assert (= (and d!106069 (not c!90188)) b!831416))

(assert (= (and b!831416 c!90189) b!831417))

(assert (= (and b!831416 (not c!90189)) b!831418))

(declare-fun m!775317 () Bool)

(assert (=> b!831417 m!775317))

(assert (=> d!105349 d!106069))

(declare-fun d!106071 () Bool)

(declare-fun lt!377268 () Bool)

(assert (=> d!106071 (= lt!377268 (select (content!389 lt!376805) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun e!463658 () Bool)

(assert (=> d!106071 (= lt!377268 e!463658)))

(declare-fun res!565987 () Bool)

(assert (=> d!106071 (=> (not res!565987) (not e!463658))))

(assert (=> d!106071 (= res!565987 ((_ is Cons!15999) lt!376805))))

(assert (=> d!106071 (= (contains!4209 lt!376805 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))) lt!377268)))

(declare-fun b!831419 () Bool)

(declare-fun e!463657 () Bool)

(assert (=> b!831419 (= e!463658 e!463657)))

(declare-fun res!565986 () Bool)

(assert (=> b!831419 (=> res!565986 e!463657)))

(assert (=> b!831419 (= res!565986 (= (h!17128 lt!376805) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun b!831420 () Bool)

(assert (=> b!831420 (= e!463657 (contains!4209 (t!22376 lt!376805) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(assert (= (and d!106071 res!565987) b!831419))

(assert (= (and b!831419 (not res!565986)) b!831420))

(declare-fun m!775319 () Bool)

(assert (=> d!106071 m!775319))

(declare-fun m!775321 () Bool)

(assert (=> d!106071 m!775321))

(declare-fun m!775323 () Bool)

(assert (=> b!831420 m!775323))

(assert (=> b!830388 d!106071))

(declare-fun d!106073 () Bool)

(assert (=> d!106073 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) (v!10091 (getValueByKey!414 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!105293 d!106073))

(assert (=> d!105293 d!105563))

(assert (=> d!105327 d!105349))

(assert (=> d!105327 d!105333))

(assert (=> d!105327 d!105335))

(declare-fun d!106075 () Bool)

(declare-fun e!463660 () Bool)

(assert (=> d!106075 e!463660))

(declare-fun res!565988 () Bool)

(assert (=> d!106075 (=> res!565988 e!463660)))

(declare-fun lt!377272 () Bool)

(assert (=> d!106075 (= res!565988 (not lt!377272))))

(declare-fun lt!377271 () Bool)

(assert (=> d!106075 (= lt!377272 lt!377271)))

(declare-fun lt!377269 () Unit!28435)

(declare-fun e!463659 () Unit!28435)

(assert (=> d!106075 (= lt!377269 e!463659)))

(declare-fun c!90190 () Bool)

(assert (=> d!106075 (= c!90190 lt!377271)))

(assert (=> d!106075 (= lt!377271 (containsKey!400 (toList!4521 lt!376717) lt!376721))))

(assert (=> d!106075 (= (contains!4208 lt!376717 lt!376721) lt!377272)))

(declare-fun b!831421 () Bool)

(declare-fun lt!377270 () Unit!28435)

(assert (=> b!831421 (= e!463659 lt!377270)))

(assert (=> b!831421 (= lt!377270 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376717) lt!376721))))

(assert (=> b!831421 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376717) lt!376721))))

(declare-fun b!831422 () Bool)

(declare-fun Unit!28486 () Unit!28435)

(assert (=> b!831422 (= e!463659 Unit!28486)))

(declare-fun b!831423 () Bool)

(assert (=> b!831423 (= e!463660 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376717) lt!376721)))))

(assert (= (and d!106075 c!90190) b!831421))

(assert (= (and d!106075 (not c!90190)) b!831422))

(assert (= (and d!106075 (not res!565988)) b!831423))

(declare-fun m!775325 () Bool)

(assert (=> d!106075 m!775325))

(declare-fun m!775327 () Bool)

(assert (=> b!831421 m!775327))

(assert (=> b!831421 m!773653))

(assert (=> b!831421 m!773653))

(declare-fun m!775329 () Bool)

(assert (=> b!831421 m!775329))

(assert (=> b!831423 m!773653))

(assert (=> b!831423 m!773653))

(assert (=> b!831423 m!775329))

(assert (=> d!105327 d!106075))

(declare-fun d!106077 () Bool)

(assert (=> d!106077 (= (apply!372 (+!1950 lt!376717 (tuple2!10175 lt!376718 minValue!754)) lt!376721) (apply!372 lt!376717 lt!376721))))

(assert (=> d!106077 true))

(declare-fun _$34!1142 () Unit!28435)

(assert (=> d!106077 (= (choose!1425 lt!376717 lt!376718 minValue!754 lt!376721) _$34!1142)))

(declare-fun bs!23234 () Bool)

(assert (= bs!23234 d!106077))

(assert (=> bs!23234 m!773311))

(assert (=> bs!23234 m!773311))

(assert (=> bs!23234 m!773313))

(assert (=> bs!23234 m!773301))

(assert (=> d!105327 d!106077))

(declare-fun d!106079 () Bool)

(declare-fun res!565989 () Bool)

(declare-fun e!463661 () Bool)

(assert (=> d!106079 (=> res!565989 e!463661)))

(assert (=> d!106079 (= res!565989 (and ((_ is Cons!15999) (toList!4521 lt!376786)) (= (_1!5097 (h!17128 (toList!4521 lt!376786))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106079 (= (containsKey!400 (toList!4521 lt!376786) #b1000000000000000000000000000000000000000000000000000000000000000) e!463661)))

(declare-fun b!831424 () Bool)

(declare-fun e!463662 () Bool)

(assert (=> b!831424 (= e!463661 e!463662)))

(declare-fun res!565990 () Bool)

(assert (=> b!831424 (=> (not res!565990) (not e!463662))))

(assert (=> b!831424 (= res!565990 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376786))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376786))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!15999) (toList!4521 lt!376786)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376786))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831425 () Bool)

(assert (=> b!831425 (= e!463662 (containsKey!400 (t!22376 (toList!4521 lt!376786)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106079 (not res!565989)) b!831424))

(assert (= (and b!831424 res!565990) b!831425))

(declare-fun m!775331 () Bool)

(assert (=> b!831425 m!775331))

(assert (=> d!105435 d!106079))

(declare-fun b!831428 () Bool)

(declare-fun e!463664 () Option!420)

(assert (=> b!831428 (= e!463664 (getValueByKey!414 (t!22376 (toList!4521 lt!376930)) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!831429 () Bool)

(assert (=> b!831429 (= e!463664 None!418)))

(declare-fun c!90191 () Bool)

(declare-fun d!106081 () Bool)

(assert (=> d!106081 (= c!90191 (and ((_ is Cons!15999) (toList!4521 lt!376930)) (= (_1!5097 (h!17128 (toList!4521 lt!376930))) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun e!463663 () Option!420)

(assert (=> d!106081 (= (getValueByKey!414 (toList!4521 lt!376930) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) e!463663)))

(declare-fun b!831426 () Bool)

(assert (=> b!831426 (= e!463663 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376930)))))))

(declare-fun b!831427 () Bool)

(assert (=> b!831427 (= e!463663 e!463664)))

(declare-fun c!90192 () Bool)

(assert (=> b!831427 (= c!90192 (and ((_ is Cons!15999) (toList!4521 lt!376930)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376930))) (_1!5097 (ite (or c!89804 c!89803) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(assert (= (and d!106081 c!90191) b!831426))

(assert (= (and d!106081 (not c!90191)) b!831427))

(assert (= (and b!831427 c!90192) b!831428))

(assert (= (and b!831427 (not c!90192)) b!831429))

(declare-fun m!775333 () Bool)

(assert (=> b!831428 m!775333))

(assert (=> b!830476 d!106081))

(declare-fun d!106083 () Bool)

(declare-fun e!463666 () Bool)

(assert (=> d!106083 e!463666))

(declare-fun res!565991 () Bool)

(assert (=> d!106083 (=> res!565991 e!463666)))

(declare-fun lt!377276 () Bool)

(assert (=> d!106083 (= res!565991 (not lt!377276))))

(declare-fun lt!377275 () Bool)

(assert (=> d!106083 (= lt!377276 lt!377275)))

(declare-fun lt!377273 () Unit!28435)

(declare-fun e!463665 () Unit!28435)

(assert (=> d!106083 (= lt!377273 e!463665)))

(declare-fun c!90193 () Bool)

(assert (=> d!106083 (= c!90193 lt!377275)))

(assert (=> d!106083 (= lt!377275 (containsKey!400 (toList!4521 lt!377019) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!106083 (= (contains!4208 lt!377019 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377276)))

(declare-fun b!831430 () Bool)

(declare-fun lt!377274 () Unit!28435)

(assert (=> b!831430 (= e!463665 lt!377274)))

(assert (=> b!831430 (= lt!377274 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!377019) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> b!831430 (isDefined!311 (getValueByKey!414 (toList!4521 lt!377019) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!831431 () Bool)

(declare-fun Unit!28487 () Unit!28435)

(assert (=> b!831431 (= e!463665 Unit!28487)))

(declare-fun b!831432 () Bool)

(assert (=> b!831432 (= e!463666 (isDefined!311 (getValueByKey!414 (toList!4521 lt!377019) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!106083 c!90193) b!831430))

(assert (= (and d!106083 (not c!90193)) b!831431))

(assert (= (and d!106083 (not res!565991)) b!831432))

(declare-fun m!775335 () Bool)

(assert (=> d!106083 m!775335))

(declare-fun m!775337 () Bool)

(assert (=> b!831430 m!775337))

(assert (=> b!831430 m!774181))

(assert (=> b!831430 m!774181))

(declare-fun m!775339 () Bool)

(assert (=> b!831430 m!775339))

(assert (=> b!831432 m!774181))

(assert (=> b!831432 m!774181))

(assert (=> b!831432 m!775339))

(assert (=> d!105497 d!106083))

(declare-fun b!831435 () Bool)

(declare-fun e!463668 () Option!420)

(assert (=> b!831435 (= e!463668 (getValueByKey!414 (t!22376 lt!377021) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!831436 () Bool)

(assert (=> b!831436 (= e!463668 None!418)))

(declare-fun d!106085 () Bool)

(declare-fun c!90194 () Bool)

(assert (=> d!106085 (= c!90194 (and ((_ is Cons!15999) lt!377021) (= (_1!5097 (h!17128 lt!377021)) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun e!463667 () Option!420)

(assert (=> d!106085 (= (getValueByKey!414 lt!377021 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) e!463667)))

(declare-fun b!831433 () Bool)

(assert (=> b!831433 (= e!463667 (Some!419 (_2!5097 (h!17128 lt!377021))))))

(declare-fun b!831434 () Bool)

(assert (=> b!831434 (= e!463667 e!463668)))

(declare-fun c!90195 () Bool)

(assert (=> b!831434 (= c!90195 (and ((_ is Cons!15999) lt!377021) (not (= (_1!5097 (h!17128 lt!377021)) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(assert (= (and d!106085 c!90194) b!831433))

(assert (= (and d!106085 (not c!90194)) b!831434))

(assert (= (and b!831434 c!90195) b!831435))

(assert (= (and b!831434 (not c!90195)) b!831436))

(declare-fun m!775341 () Bool)

(assert (=> b!831435 m!775341))

(assert (=> d!105497 d!106085))

(declare-fun d!106087 () Bool)

(assert (=> d!106087 (= (getValueByKey!414 lt!377021 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!419 (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!377277 () Unit!28435)

(assert (=> d!106087 (= lt!377277 (choose!1427 lt!377021 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun e!463669 () Bool)

(assert (=> d!106087 e!463669))

(declare-fun res!565992 () Bool)

(assert (=> d!106087 (=> (not res!565992) (not e!463669))))

(assert (=> d!106087 (= res!565992 (isStrictlySorted!437 lt!377021))))

(assert (=> d!106087 (= (lemmaContainsTupThenGetReturnValue!230 lt!377021 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377277)))

(declare-fun b!831437 () Bool)

(declare-fun res!565993 () Bool)

(assert (=> b!831437 (=> (not res!565993) (not e!463669))))

(assert (=> b!831437 (= res!565993 (containsKey!400 lt!377021 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!831438 () Bool)

(assert (=> b!831438 (= e!463669 (contains!4209 lt!377021 (tuple2!10175 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (= (and d!106087 res!565992) b!831437))

(assert (= (and b!831437 res!565993) b!831438))

(assert (=> d!106087 m!774175))

(declare-fun m!775343 () Bool)

(assert (=> d!106087 m!775343))

(declare-fun m!775345 () Bool)

(assert (=> d!106087 m!775345))

(declare-fun m!775347 () Bool)

(assert (=> b!831437 m!775347))

(declare-fun m!775349 () Bool)

(assert (=> b!831438 m!775349))

(assert (=> d!105497 d!106087))

(declare-fun b!831439 () Bool)

(declare-fun e!463670 () List!16003)

(declare-fun call!36349 () List!16003)

(assert (=> b!831439 (= e!463670 call!36349)))

(declare-fun bm!36344 () Bool)

(declare-fun call!36347 () List!16003)

(assert (=> bm!36344 (= call!36349 call!36347)))

(declare-fun b!831440 () Bool)

(declare-fun e!463672 () Bool)

(declare-fun lt!377278 () List!16003)

(assert (=> b!831440 (= e!463672 (contains!4209 lt!377278 (tuple2!10175 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun c!90198 () Bool)

(declare-fun c!90199 () Bool)

(declare-fun e!463673 () List!16003)

(declare-fun b!831441 () Bool)

(assert (=> b!831441 (= e!463673 (ite c!90199 (t!22376 (toList!4521 call!36238)) (ite c!90198 (Cons!15999 (h!17128 (toList!4521 call!36238)) (t!22376 (toList!4521 call!36238))) Nil!16000)))))

(declare-fun b!831442 () Bool)

(assert (=> b!831442 (= e!463673 (insertStrictlySorted!268 (t!22376 (toList!4521 call!36238)) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!831443 () Bool)

(assert (=> b!831443 (= e!463670 call!36349)))

(declare-fun c!90196 () Bool)

(declare-fun call!36348 () List!16003)

(declare-fun bm!36345 () Bool)

(assert (=> bm!36345 (= call!36348 ($colon$colon!535 e!463673 (ite c!90196 (h!17128 (toList!4521 call!36238)) (tuple2!10175 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun c!90197 () Bool)

(assert (=> bm!36345 (= c!90197 c!90196)))

(declare-fun b!831444 () Bool)

(declare-fun e!463674 () List!16003)

(assert (=> b!831444 (= e!463674 call!36347)))

(declare-fun b!831445 () Bool)

(declare-fun e!463671 () List!16003)

(assert (=> b!831445 (= e!463671 call!36348)))

(declare-fun b!831446 () Bool)

(assert (=> b!831446 (= e!463671 e!463674)))

(assert (=> b!831446 (= c!90199 (and ((_ is Cons!15999) (toList!4521 call!36238)) (= (_1!5097 (h!17128 (toList!4521 call!36238))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!831448 () Bool)

(declare-fun res!565994 () Bool)

(assert (=> b!831448 (=> (not res!565994) (not e!463672))))

(assert (=> b!831448 (= res!565994 (containsKey!400 lt!377278 (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!36346 () Bool)

(assert (=> bm!36346 (= call!36347 call!36348)))

(declare-fun d!106089 () Bool)

(assert (=> d!106089 e!463672))

(declare-fun res!565995 () Bool)

(assert (=> d!106089 (=> (not res!565995) (not e!463672))))

(assert (=> d!106089 (= res!565995 (isStrictlySorted!437 lt!377278))))

(assert (=> d!106089 (= lt!377278 e!463671)))

(assert (=> d!106089 (= c!90196 (and ((_ is Cons!15999) (toList!4521 call!36238)) (bvslt (_1!5097 (h!17128 (toList!4521 call!36238))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> d!106089 (isStrictlySorted!437 (toList!4521 call!36238))))

(assert (=> d!106089 (= (insertStrictlySorted!268 (toList!4521 call!36238) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) lt!377278)))

(declare-fun b!831447 () Bool)

(assert (=> b!831447 (= c!90198 (and ((_ is Cons!15999) (toList!4521 call!36238)) (bvsgt (_1!5097 (h!17128 (toList!4521 call!36238))) (_1!5097 (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(assert (=> b!831447 (= e!463674 e!463670)))

(assert (= (and d!106089 c!90196) b!831445))

(assert (= (and d!106089 (not c!90196)) b!831446))

(assert (= (and b!831446 c!90199) b!831444))

(assert (= (and b!831446 (not c!90199)) b!831447))

(assert (= (and b!831447 c!90198) b!831439))

(assert (= (and b!831447 (not c!90198)) b!831443))

(assert (= (or b!831439 b!831443) bm!36344))

(assert (= (or b!831444 bm!36344) bm!36346))

(assert (= (or b!831445 bm!36346) bm!36345))

(assert (= (and bm!36345 c!90197) b!831442))

(assert (= (and bm!36345 (not c!90197)) b!831441))

(assert (= (and d!106089 res!565995) b!831448))

(assert (= (and b!831448 res!565994) b!831440))

(declare-fun m!775351 () Bool)

(assert (=> b!831448 m!775351))

(declare-fun m!775353 () Bool)

(assert (=> d!106089 m!775353))

(declare-fun m!775355 () Bool)

(assert (=> d!106089 m!775355))

(declare-fun m!775357 () Bool)

(assert (=> bm!36345 m!775357))

(declare-fun m!775359 () Bool)

(assert (=> b!831442 m!775359))

(declare-fun m!775361 () Bool)

(assert (=> b!831440 m!775361))

(assert (=> d!105497 d!106089))

(declare-fun d!106091 () Bool)

(declare-fun lt!377279 () Bool)

(assert (=> d!106091 (= lt!377279 (select (content!389 lt!376928) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun e!463676 () Bool)

(assert (=> d!106091 (= lt!377279 e!463676)))

(declare-fun res!565997 () Bool)

(assert (=> d!106091 (=> (not res!565997) (not e!463676))))

(assert (=> d!106091 (= res!565997 ((_ is Cons!15999) lt!376928))))

(assert (=> d!106091 (= (contains!4209 lt!376928 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))) lt!377279)))

(declare-fun b!831449 () Bool)

(declare-fun e!463675 () Bool)

(assert (=> b!831449 (= e!463676 e!463675)))

(declare-fun res!565996 () Bool)

(assert (=> b!831449 (=> res!565996 e!463675)))

(assert (=> b!831449 (= res!565996 (= (h!17128 lt!376928) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun b!831450 () Bool)

(assert (=> b!831450 (= e!463675 (contains!4209 (t!22376 lt!376928) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(assert (= (and d!106091 res!565997) b!831449))

(assert (= (and b!831449 (not res!565996)) b!831450))

(declare-fun m!775363 () Bool)

(assert (=> d!106091 m!775363))

(declare-fun m!775365 () Bool)

(assert (=> d!106091 m!775365))

(declare-fun m!775367 () Bool)

(assert (=> b!831450 m!775367))

(assert (=> b!830467 d!106091))

(assert (=> b!830497 d!105873))

(assert (=> b!830497 d!105831))

(declare-fun d!106093 () Bool)

(declare-fun c!90200 () Bool)

(assert (=> d!106093 (= c!90200 ((_ is Nil!16000) (toList!4521 lt!376807)))))

(declare-fun e!463677 () (InoxSet tuple2!10174))

(assert (=> d!106093 (= (content!389 (toList!4521 lt!376807)) e!463677)))

(declare-fun b!831451 () Bool)

(assert (=> b!831451 (= e!463677 ((as const (Array tuple2!10174 Bool)) false))))

(declare-fun b!831452 () Bool)

(assert (=> b!831452 (= e!463677 ((_ map or) (store ((as const (Array tuple2!10174 Bool)) false) (h!17128 (toList!4521 lt!376807)) true) (content!389 (t!22376 (toList!4521 lt!376807)))))))

(assert (= (and d!106093 c!90200) b!831451))

(assert (= (and d!106093 (not c!90200)) b!831452))

(declare-fun m!775369 () Bool)

(assert (=> b!831452 m!775369))

(declare-fun m!775371 () Bool)

(assert (=> b!831452 m!775371))

(assert (=> d!105323 d!106093))

(assert (=> d!105355 d!105331))

(declare-fun d!106095 () Bool)

(declare-fun e!463679 () Bool)

(assert (=> d!106095 e!463679))

(declare-fun res!565998 () Bool)

(assert (=> d!106095 (=> res!565998 e!463679)))

(declare-fun lt!377283 () Bool)

(assert (=> d!106095 (= res!565998 (not lt!377283))))

(declare-fun lt!377282 () Bool)

(assert (=> d!106095 (= lt!377283 lt!377282)))

(declare-fun lt!377280 () Unit!28435)

(declare-fun e!463678 () Unit!28435)

(assert (=> d!106095 (= lt!377280 e!463678)))

(declare-fun c!90201 () Bool)

(assert (=> d!106095 (= c!90201 lt!377282)))

(assert (=> d!106095 (= lt!377282 (containsKey!400 (toList!4521 lt!376709) lt!376722))))

(assert (=> d!106095 (= (contains!4208 lt!376709 lt!376722) lt!377283)))

(declare-fun b!831453 () Bool)

(declare-fun lt!377281 () Unit!28435)

(assert (=> b!831453 (= e!463678 lt!377281)))

(assert (=> b!831453 (= lt!377281 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376709) lt!376722))))

(assert (=> b!831453 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376709) lt!376722))))

(declare-fun b!831454 () Bool)

(declare-fun Unit!28488 () Unit!28435)

(assert (=> b!831454 (= e!463678 Unit!28488)))

(declare-fun b!831455 () Bool)

(assert (=> b!831455 (= e!463679 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376709) lt!376722)))))

(assert (= (and d!106095 c!90201) b!831453))

(assert (= (and d!106095 (not c!90201)) b!831454))

(assert (= (and d!106095 (not res!565998)) b!831455))

(declare-fun m!775373 () Bool)

(assert (=> d!106095 m!775373))

(declare-fun m!775375 () Bool)

(assert (=> b!831453 m!775375))

(assert (=> b!831453 m!773657))

(assert (=> b!831453 m!773657))

(declare-fun m!775377 () Bool)

(assert (=> b!831453 m!775377))

(assert (=> b!831455 m!773657))

(assert (=> b!831455 m!773657))

(assert (=> b!831455 m!775377))

(assert (=> d!105355 d!106095))

(assert (=> d!105355 d!105337))

(declare-fun d!106097 () Bool)

(assert (=> d!106097 (= (apply!372 (+!1950 lt!376709 (tuple2!10175 lt!376723 zeroValueAfter!34)) lt!376722) (apply!372 lt!376709 lt!376722))))

(assert (=> d!106097 true))

(declare-fun _$34!1143 () Unit!28435)

(assert (=> d!106097 (= (choose!1425 lt!376709 lt!376723 zeroValueAfter!34 lt!376722) _$34!1143)))

(declare-fun bs!23235 () Bool)

(assert (= bs!23235 d!106097))

(assert (=> bs!23235 m!773303))

(assert (=> bs!23235 m!773303))

(assert (=> bs!23235 m!773305))

(assert (=> bs!23235 m!773323))

(assert (=> d!105355 d!106097))

(assert (=> d!105355 d!105345))

(declare-fun d!106099 () Bool)

(assert (=> d!106099 (= (isEmpty!659 lt!376810) (isEmpty!660 (toList!4521 lt!376810)))))

(declare-fun bs!23236 () Bool)

(assert (= bs!23236 d!106099))

(declare-fun m!775379 () Bool)

(assert (=> bs!23236 m!775379))

(assert (=> b!830264 d!106099))

(assert (=> b!830517 d!105881))

(assert (=> b!830517 d!105883))

(declare-fun d!106101 () Bool)

(assert (=> d!106101 (= (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34))) lt!376756)) (v!10091 (getValueByKey!414 (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34))) lt!376756)))))

(assert (=> d!105473 d!106101))

(declare-fun e!463681 () Option!420)

(declare-fun b!831458 () Bool)

(assert (=> b!831458 (= e!463681 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34)))) lt!376756))))

(declare-fun b!831459 () Bool)

(assert (=> b!831459 (= e!463681 None!418)))

(declare-fun d!106103 () Bool)

(declare-fun c!90202 () Bool)

(assert (=> d!106103 (= c!90202 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34))))) lt!376756)))))

(declare-fun e!463680 () Option!420)

(assert (=> d!106103 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34))) lt!376756) e!463680)))

(declare-fun b!831456 () Bool)

(assert (=> b!831456 (= e!463680 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))))

(declare-fun b!831457 () Bool)

(assert (=> b!831457 (= e!463680 e!463681)))

(declare-fun c!90203 () Bool)

(assert (=> b!831457 (= c!90203 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376743 (tuple2!10175 lt!376757 zeroValueBefore!34))))) lt!376756))))))

(assert (= (and d!106103 c!90202) b!831456))

(assert (= (and d!106103 (not c!90202)) b!831457))

(assert (= (and b!831457 c!90203) b!831458))

(assert (= (and b!831457 (not c!90203)) b!831459))

(declare-fun m!775381 () Bool)

(assert (=> b!831458 m!775381))

(assert (=> d!105473 d!106103))

(declare-fun b!831460 () Bool)

(declare-fun e!463682 () List!16003)

(declare-fun call!36352 () List!16003)

(assert (=> b!831460 (= e!463682 call!36352)))

(declare-fun bm!36347 () Bool)

(declare-fun call!36350 () List!16003)

(assert (=> bm!36347 (= call!36352 call!36350)))

(declare-fun b!831461 () Bool)

(declare-fun e!463684 () Bool)

(declare-fun lt!377284 () List!16003)

(assert (=> b!831461 (= e!463684 (contains!4209 lt!377284 (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun c!90206 () Bool)

(declare-fun e!463685 () List!16003)

(declare-fun b!831462 () Bool)

(declare-fun c!90207 () Bool)

(assert (=> b!831462 (= e!463685 (ite c!90207 (t!22376 (t!22376 (toList!4521 lt!376624))) (ite c!90206 (Cons!15999 (h!17128 (t!22376 (toList!4521 lt!376624))) (t!22376 (t!22376 (toList!4521 lt!376624)))) Nil!16000)))))

(declare-fun b!831463 () Bool)

(assert (=> b!831463 (= e!463685 (insertStrictlySorted!268 (t!22376 (t!22376 (toList!4521 lt!376624))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!831464 () Bool)

(assert (=> b!831464 (= e!463682 call!36352)))

(declare-fun c!90204 () Bool)

(declare-fun bm!36348 () Bool)

(declare-fun call!36351 () List!16003)

(assert (=> bm!36348 (= call!36351 ($colon$colon!535 e!463685 (ite c!90204 (h!17128 (t!22376 (toList!4521 lt!376624))) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(declare-fun c!90205 () Bool)

(assert (=> bm!36348 (= c!90205 c!90204)))

(declare-fun b!831465 () Bool)

(declare-fun e!463686 () List!16003)

(assert (=> b!831465 (= e!463686 call!36350)))

(declare-fun b!831466 () Bool)

(declare-fun e!463683 () List!16003)

(assert (=> b!831466 (= e!463683 call!36351)))

(declare-fun b!831467 () Bool)

(assert (=> b!831467 (= e!463683 e!463686)))

(assert (=> b!831467 (= c!90207 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376624))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376624)))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!831469 () Bool)

(declare-fun res!565999 () Bool)

(assert (=> b!831469 (=> (not res!565999) (not e!463684))))

(assert (=> b!831469 (= res!565999 (containsKey!400 lt!377284 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun bm!36349 () Bool)

(assert (=> bm!36349 (= call!36350 call!36351)))

(declare-fun d!106105 () Bool)

(assert (=> d!106105 e!463684))

(declare-fun res!566000 () Bool)

(assert (=> d!106105 (=> (not res!566000) (not e!463684))))

(assert (=> d!106105 (= res!566000 (isStrictlySorted!437 lt!377284))))

(assert (=> d!106105 (= lt!377284 e!463683)))

(assert (=> d!106105 (= c!90204 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376624))) (bvslt (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376624)))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106105 (isStrictlySorted!437 (t!22376 (toList!4521 lt!376624)))))

(assert (=> d!106105 (= (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376624)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) lt!377284)))

(declare-fun b!831468 () Bool)

(assert (=> b!831468 (= c!90206 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376624))) (bvsgt (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376624)))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> b!831468 (= e!463686 e!463682)))

(assert (= (and d!106105 c!90204) b!831466))

(assert (= (and d!106105 (not c!90204)) b!831467))

(assert (= (and b!831467 c!90207) b!831465))

(assert (= (and b!831467 (not c!90207)) b!831468))

(assert (= (and b!831468 c!90206) b!831460))

(assert (= (and b!831468 (not c!90206)) b!831464))

(assert (= (or b!831460 b!831464) bm!36347))

(assert (= (or b!831465 bm!36347) bm!36349))

(assert (= (or b!831466 bm!36349) bm!36348))

(assert (= (and bm!36348 c!90205) b!831463))

(assert (= (and bm!36348 (not c!90205)) b!831462))

(assert (= (and d!106105 res!566000) b!831469))

(assert (= (and b!831469 res!565999) b!831461))

(declare-fun m!775383 () Bool)

(assert (=> b!831469 m!775383))

(declare-fun m!775385 () Bool)

(assert (=> d!106105 m!775385))

(assert (=> d!106105 m!775225))

(declare-fun m!775387 () Bool)

(assert (=> bm!36348 m!775387))

(declare-fun m!775389 () Bool)

(assert (=> b!831463 m!775389))

(declare-fun m!775391 () Bool)

(assert (=> b!831461 m!775391))

(assert (=> b!830431 d!106105))

(declare-fun d!106107 () Bool)

(assert (=> d!106107 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376709) lt!376722)) (v!10091 (getValueByKey!414 (toList!4521 lt!376709) lt!376722)))))

(assert (=> d!105337 d!106107))

(declare-fun b!831472 () Bool)

(declare-fun e!463688 () Option!420)

(assert (=> b!831472 (= e!463688 (getValueByKey!414 (t!22376 (toList!4521 lt!376709)) lt!376722))))

(declare-fun b!831473 () Bool)

(assert (=> b!831473 (= e!463688 None!418)))

(declare-fun d!106109 () Bool)

(declare-fun c!90208 () Bool)

(assert (=> d!106109 (= c!90208 (and ((_ is Cons!15999) (toList!4521 lt!376709)) (= (_1!5097 (h!17128 (toList!4521 lt!376709))) lt!376722)))))

(declare-fun e!463687 () Option!420)

(assert (=> d!106109 (= (getValueByKey!414 (toList!4521 lt!376709) lt!376722) e!463687)))

(declare-fun b!831470 () Bool)

(assert (=> b!831470 (= e!463687 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376709)))))))

(declare-fun b!831471 () Bool)

(assert (=> b!831471 (= e!463687 e!463688)))

(declare-fun c!90209 () Bool)

(assert (=> b!831471 (= c!90209 (and ((_ is Cons!15999) (toList!4521 lt!376709)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376709))) lt!376722))))))

(assert (= (and d!106109 c!90208) b!831470))

(assert (= (and d!106109 (not c!90208)) b!831471))

(assert (= (and b!831471 c!90209) b!831472))

(assert (= (and b!831471 (not c!90209)) b!831473))

(declare-fun m!775393 () Bool)

(assert (=> b!831472 m!775393))

(assert (=> d!105337 d!106109))

(declare-fun e!463690 () Option!420)

(declare-fun b!831476 () Bool)

(assert (=> b!831476 (= e!463690 (getValueByKey!414 (t!22376 (toList!4521 lt!376990)) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))

(declare-fun b!831477 () Bool)

(assert (=> b!831477 (= e!463690 None!418)))

(declare-fun d!106111 () Bool)

(declare-fun c!90210 () Bool)

(assert (=> d!106111 (= c!90210 (and ((_ is Cons!15999) (toList!4521 lt!376990)) (= (_1!5097 (h!17128 (toList!4521 lt!376990))) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34)))))))

(declare-fun e!463689 () Option!420)

(assert (=> d!106111 (= (getValueByKey!414 (toList!4521 lt!376990) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))) e!463689)))

(declare-fun b!831474 () Bool)

(assert (=> b!831474 (= e!463689 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376990)))))))

(declare-fun b!831475 () Bool)

(assert (=> b!831475 (= e!463689 e!463690)))

(declare-fun c!90211 () Bool)

(assert (=> b!831475 (= c!90211 (and ((_ is Cons!15999) (toList!4521 lt!376990)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376990))) (_1!5097 (tuple2!10175 lt!376757 zeroValueBefore!34))))))))

(assert (= (and d!106111 c!90210) b!831474))

(assert (= (and d!106111 (not c!90210)) b!831475))

(assert (= (and b!831475 c!90211) b!831476))

(assert (= (and b!831475 (not c!90211)) b!831477))

(declare-fun m!775395 () Bool)

(assert (=> b!831476 m!775395))

(assert (=> b!830549 d!106111))

(declare-fun b!831480 () Bool)

(declare-fun e!463692 () Option!420)

(assert (=> b!831480 (= e!463692 (getValueByKey!414 (t!22376 (t!22376 (toList!4521 lt!376659))) (_1!5097 lt!376628)))))

(declare-fun b!831481 () Bool)

(assert (=> b!831481 (= e!463692 None!418)))

(declare-fun d!106113 () Bool)

(declare-fun c!90212 () Bool)

(assert (=> d!106113 (= c!90212 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376659))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376659)))) (_1!5097 lt!376628))))))

(declare-fun e!463691 () Option!420)

(assert (=> d!106113 (= (getValueByKey!414 (t!22376 (toList!4521 lt!376659)) (_1!5097 lt!376628)) e!463691)))

(declare-fun b!831478 () Bool)

(assert (=> b!831478 (= e!463691 (Some!419 (_2!5097 (h!17128 (t!22376 (toList!4521 lt!376659))))))))

(declare-fun b!831479 () Bool)

(assert (=> b!831479 (= e!463691 e!463692)))

(declare-fun c!90213 () Bool)

(assert (=> b!831479 (= c!90213 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376659))) (not (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376659)))) (_1!5097 lt!376628)))))))

(assert (= (and d!106113 c!90212) b!831478))

(assert (= (and d!106113 (not c!90212)) b!831479))

(assert (= (and b!831479 c!90213) b!831480))

(assert (= (and b!831479 (not c!90213)) b!831481))

(declare-fun m!775397 () Bool)

(assert (=> b!831480 m!775397))

(assert (=> b!830360 d!106113))

(assert (=> b!830561 d!105911))

(assert (=> b!830561 d!105897))

(declare-fun e!463694 () Option!420)

(declare-fun b!831484 () Bool)

(assert (=> b!831484 (= e!463694 (getValueByKey!414 (t!22376 (toList!4521 lt!376844)) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!831485 () Bool)

(assert (=> b!831485 (= e!463694 None!418)))

(declare-fun d!106115 () Bool)

(declare-fun c!90214 () Bool)

(assert (=> d!106115 (= c!90214 (and ((_ is Cons!15999) (toList!4521 lt!376844)) (= (_1!5097 (h!17128 (toList!4521 lt!376844))) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))))

(declare-fun e!463693 () Option!420)

(assert (=> d!106115 (= (getValueByKey!414 (toList!4521 lt!376844) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))) e!463693)))

(declare-fun b!831482 () Bool)

(assert (=> b!831482 (= e!463693 (Some!419 (_2!5097 (h!17128 (toList!4521 lt!376844)))))))

(declare-fun b!831483 () Bool)

(assert (=> b!831483 (= e!463693 e!463694)))

(declare-fun c!90215 () Bool)

(assert (=> b!831483 (= c!90215 (and ((_ is Cons!15999) (toList!4521 lt!376844)) (not (= (_1!5097 (h!17128 (toList!4521 lt!376844))) (_1!5097 (ite (or c!89798 c!89797) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10175 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))))

(assert (= (and d!106115 c!90214) b!831482))

(assert (= (and d!106115 (not c!90214)) b!831483))

(assert (= (and b!831483 c!90215) b!831484))

(assert (= (and b!831483 (not c!90215)) b!831485))

(declare-fun m!775399 () Bool)

(assert (=> b!831484 m!775399))

(assert (=> b!830325 d!106115))

(declare-fun d!106117 () Bool)

(declare-fun res!566001 () Bool)

(declare-fun e!463695 () Bool)

(assert (=> d!106117 (=> res!566001 e!463695)))

(assert (=> d!106117 (= res!566001 (and ((_ is Cons!15999) lt!376731) (= (_1!5097 (h!17128 lt!376731)) (_1!5097 lt!376622))))))

(assert (=> d!106117 (= (containsKey!400 lt!376731 (_1!5097 lt!376622)) e!463695)))

(declare-fun b!831486 () Bool)

(declare-fun e!463696 () Bool)

(assert (=> b!831486 (= e!463695 e!463696)))

(declare-fun res!566002 () Bool)

(assert (=> b!831486 (=> (not res!566002) (not e!463696))))

(assert (=> b!831486 (= res!566002 (and (or (not ((_ is Cons!15999) lt!376731)) (bvsle (_1!5097 (h!17128 lt!376731)) (_1!5097 lt!376622))) ((_ is Cons!15999) lt!376731) (bvslt (_1!5097 (h!17128 lt!376731)) (_1!5097 lt!376622))))))

(declare-fun b!831487 () Bool)

(assert (=> b!831487 (= e!463696 (containsKey!400 (t!22376 lt!376731) (_1!5097 lt!376622)))))

(assert (= (and d!106117 (not res!566001)) b!831486))

(assert (= (and b!831486 res!566002) b!831487))

(declare-fun m!775401 () Bool)

(assert (=> b!831487 m!775401))

(assert (=> b!830445 d!106117))

(declare-fun d!106119 () Bool)

(assert (=> d!106119 (= (apply!372 lt!376810 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!11823 (getValueByKey!414 (toList!4521 lt!376810) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(declare-fun bs!23237 () Bool)

(assert (= bs!23237 d!106119))

(assert (=> bs!23237 m!773495))

(declare-fun m!775403 () Bool)

(assert (=> bs!23237 m!775403))

(assert (=> bs!23237 m!775403))

(declare-fun m!775405 () Bool)

(assert (=> bs!23237 m!775405))

(assert (=> b!830271 d!106119))

(assert (=> b!830271 d!105627))

(declare-fun d!106121 () Bool)

(assert (=> d!106121 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun lt!377285 () Unit!28435)

(assert (=> d!106121 (= lt!377285 (choose!1429 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun e!463697 () Bool)

(assert (=> d!106121 e!463697))

(declare-fun res!566003 () Bool)

(assert (=> d!106121 (=> (not res!566003) (not e!463697))))

(assert (=> d!106121 (= res!566003 (isStrictlySorted!437 (toList!4521 lt!376786)))))

(assert (=> d!106121 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) lt!377285)))

(declare-fun b!831488 () Bool)

(assert (=> b!831488 (= e!463697 (containsKey!400 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106121 res!566003) b!831488))

(assert (=> d!106121 m!773277))

(assert (=> d!106121 m!773521))

(assert (=> d!106121 m!773521))

(assert (=> d!106121 m!773747))

(assert (=> d!106121 m!773277))

(declare-fun m!775407 () Bool)

(assert (=> d!106121 m!775407))

(assert (=> d!106121 m!774815))

(assert (=> b!831488 m!773277))

(assert (=> b!831488 m!773743))

(assert (=> b!830367 d!106121))

(assert (=> b!830367 d!105561))

(assert (=> b!830367 d!105563))

(declare-fun d!106123 () Bool)

(declare-fun res!566004 () Bool)

(declare-fun e!463698 () Bool)

(assert (=> d!106123 (=> res!566004 e!463698)))

(assert (=> d!106123 (= res!566004 (and ((_ is Cons!15999) lt!376983) (= (_1!5097 (h!17128 lt!376983)) (_1!5097 lt!376628))))))

(assert (=> d!106123 (= (containsKey!400 lt!376983 (_1!5097 lt!376628)) e!463698)))

(declare-fun b!831489 () Bool)

(declare-fun e!463699 () Bool)

(assert (=> b!831489 (= e!463698 e!463699)))

(declare-fun res!566005 () Bool)

(assert (=> b!831489 (=> (not res!566005) (not e!463699))))

(assert (=> b!831489 (= res!566005 (and (or (not ((_ is Cons!15999) lt!376983)) (bvsle (_1!5097 (h!17128 lt!376983)) (_1!5097 lt!376628))) ((_ is Cons!15999) lt!376983) (bvslt (_1!5097 (h!17128 lt!376983)) (_1!5097 lt!376628))))))

(declare-fun b!831490 () Bool)

(assert (=> b!831490 (= e!463699 (containsKey!400 (t!22376 lt!376983) (_1!5097 lt!376628)))))

(assert (= (and d!106123 (not res!566004)) b!831489))

(assert (= (and b!831489 res!566005) b!831490))

(declare-fun m!775409 () Bool)

(assert (=> b!831490 m!775409))

(assert (=> b!830544 d!106123))

(declare-fun d!106125 () Bool)

(assert (=> d!106125 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377286 () Unit!28435)

(assert (=> d!106125 (= lt!377286 (choose!1429 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463700 () Bool)

(assert (=> d!106125 e!463700))

(declare-fun res!566006 () Bool)

(assert (=> d!106125 (=> (not res!566006) (not e!463700))))

(assert (=> d!106125 (= res!566006 (isStrictlySorted!437 (toList!4521 lt!376747)))))

(assert (=> d!106125 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000) lt!377286)))

(declare-fun b!831491 () Bool)

(assert (=> b!831491 (= e!463700 (containsKey!400 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106125 res!566006) b!831491))

(assert (=> d!106125 m!773755))

(assert (=> d!106125 m!773755))

(assert (=> d!106125 m!774013))

(declare-fun m!775411 () Bool)

(assert (=> d!106125 m!775411))

(assert (=> d!106125 m!774387))

(assert (=> b!831491 m!774009))

(assert (=> b!830523 d!106125))

(assert (=> b!830523 d!105651))

(assert (=> b!830523 d!105653))

(declare-fun d!106127 () Bool)

(declare-fun res!566007 () Bool)

(declare-fun e!463701 () Bool)

(assert (=> d!106127 (=> res!566007 e!463701)))

(assert (=> d!106127 (= res!566007 (and ((_ is Cons!15999) (toList!4521 lt!376737)) (= (_1!5097 (h!17128 (toList!4521 lt!376737))) (_1!5097 lt!376622))))))

(assert (=> d!106127 (= (containsKey!400 (toList!4521 lt!376737) (_1!5097 lt!376622)) e!463701)))

(declare-fun b!831492 () Bool)

(declare-fun e!463702 () Bool)

(assert (=> b!831492 (= e!463701 e!463702)))

(declare-fun res!566008 () Bool)

(assert (=> b!831492 (=> (not res!566008) (not e!463702))))

(assert (=> b!831492 (= res!566008 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376737))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376737))) (_1!5097 lt!376622))) ((_ is Cons!15999) (toList!4521 lt!376737)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376737))) (_1!5097 lt!376622))))))

(declare-fun b!831493 () Bool)

(assert (=> b!831493 (= e!463702 (containsKey!400 (t!22376 (toList!4521 lt!376737)) (_1!5097 lt!376622)))))

(assert (= (and d!106127 (not res!566007)) b!831492))

(assert (= (and b!831492 res!566008) b!831493))

(declare-fun m!775413 () Bool)

(assert (=> b!831493 m!775413))

(assert (=> d!105489 d!106127))

(assert (=> b!830440 d!105939))

(assert (=> b!830440 d!105427))

(declare-fun b!831494 () Bool)

(declare-fun e!463703 () List!16003)

(declare-fun call!36355 () List!16003)

(assert (=> b!831494 (= e!463703 call!36355)))

(declare-fun bm!36350 () Bool)

(declare-fun call!36353 () List!16003)

(assert (=> bm!36350 (= call!36355 call!36353)))

(declare-fun b!831495 () Bool)

(declare-fun e!463705 () Bool)

(declare-fun lt!377287 () List!16003)

(assert (=> b!831495 (= e!463705 (contains!4209 lt!377287 (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))))))

(declare-fun e!463706 () List!16003)

(declare-fun c!90219 () Bool)

(declare-fun c!90218 () Bool)

(declare-fun b!831496 () Bool)

(assert (=> b!831496 (= e!463706 (ite c!90219 (t!22376 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))) (ite c!90218 (Cons!15999 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))) (t!22376 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628))))) Nil!16000)))))

(declare-fun b!831497 () Bool)

(assert (=> b!831497 (= e!463706 (insertStrictlySorted!268 (t!22376 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))) (_1!5097 lt!376622) (_2!5097 lt!376622)))))

(declare-fun b!831498 () Bool)

(assert (=> b!831498 (= e!463703 call!36355)))

(declare-fun call!36354 () List!16003)

(declare-fun bm!36351 () Bool)

(declare-fun c!90216 () Bool)

(assert (=> bm!36351 (= call!36354 ($colon$colon!535 e!463706 (ite c!90216 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622)))))))

(declare-fun c!90217 () Bool)

(assert (=> bm!36351 (= c!90217 c!90216)))

(declare-fun b!831499 () Bool)

(declare-fun e!463707 () List!16003)

(assert (=> b!831499 (= e!463707 call!36353)))

(declare-fun b!831500 () Bool)

(declare-fun e!463704 () List!16003)

(assert (=> b!831500 (= e!463704 call!36354)))

(declare-fun b!831501 () Bool)

(assert (=> b!831501 (= e!463704 e!463707)))

(assert (=> b!831501 (= c!90219 (and ((_ is Cons!15999) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628))))) (_1!5097 lt!376622))))))

(declare-fun b!831503 () Bool)

(declare-fun res!566009 () Bool)

(assert (=> b!831503 (=> (not res!566009) (not e!463705))))

(assert (=> b!831503 (= res!566009 (containsKey!400 lt!377287 (_1!5097 lt!376622)))))

(declare-fun bm!36352 () Bool)

(assert (=> bm!36352 (= call!36353 call!36354)))

(declare-fun d!106129 () Bool)

(assert (=> d!106129 e!463705))

(declare-fun res!566010 () Bool)

(assert (=> d!106129 (=> (not res!566010) (not e!463705))))

(assert (=> d!106129 (= res!566010 (isStrictlySorted!437 lt!377287))))

(assert (=> d!106129 (= lt!377287 e!463704)))

(assert (=> d!106129 (= c!90216 (and ((_ is Cons!15999) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))) (bvslt (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628))))) (_1!5097 lt!376622))))))

(assert (=> d!106129 (isStrictlySorted!437 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628))))))

(assert (=> d!106129 (= (insertStrictlySorted!268 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628))) (_1!5097 lt!376622) (_2!5097 lt!376622)) lt!377287)))

(declare-fun b!831502 () Bool)

(assert (=> b!831502 (= c!90218 (and ((_ is Cons!15999) (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628)))) (bvsgt (_1!5097 (h!17128 (t!22376 (toList!4521 (+!1950 lt!376626 lt!376628))))) (_1!5097 lt!376622))))))

(assert (=> b!831502 (= e!463707 e!463703)))

(assert (= (and d!106129 c!90216) b!831500))

(assert (= (and d!106129 (not c!90216)) b!831501))

(assert (= (and b!831501 c!90219) b!831499))

(assert (= (and b!831501 (not c!90219)) b!831502))

(assert (= (and b!831502 c!90218) b!831494))

(assert (= (and b!831502 (not c!90218)) b!831498))

(assert (= (or b!831494 b!831498) bm!36350))

(assert (= (or b!831499 bm!36350) bm!36352))

(assert (= (or b!831500 bm!36352) bm!36351))

(assert (= (and bm!36351 c!90217) b!831497))

(assert (= (and bm!36351 (not c!90217)) b!831496))

(assert (= (and d!106129 res!566010) b!831503))

(assert (= (and b!831503 res!566009) b!831495))

(declare-fun m!775415 () Bool)

(assert (=> b!831503 m!775415))

(declare-fun m!775417 () Bool)

(assert (=> d!106129 m!775417))

(assert (=> d!106129 m!775263))

(declare-fun m!775419 () Bool)

(assert (=> bm!36351 m!775419))

(declare-fun m!775421 () Bool)

(assert (=> b!831497 m!775421))

(declare-fun m!775423 () Bool)

(assert (=> b!831495 m!775423))

(assert (=> b!830574 d!106129))

(declare-fun d!106131 () Bool)

(declare-fun e!463708 () Bool)

(assert (=> d!106131 e!463708))

(declare-fun res!566011 () Bool)

(assert (=> d!106131 (=> (not res!566011) (not e!463708))))

(declare-fun lt!377289 () ListLongMap!9011)

(assert (=> d!106131 (= res!566011 (contains!4208 lt!377289 (_1!5097 (tuple2!10175 lt!376830 lt!376828))))))

(declare-fun lt!377291 () List!16003)

(assert (=> d!106131 (= lt!377289 (ListLongMap!9012 lt!377291))))

(declare-fun lt!377290 () Unit!28435)

(declare-fun lt!377288 () Unit!28435)

(assert (=> d!106131 (= lt!377290 lt!377288)))

(assert (=> d!106131 (= (getValueByKey!414 lt!377291 (_1!5097 (tuple2!10175 lt!376830 lt!376828))) (Some!419 (_2!5097 (tuple2!10175 lt!376830 lt!376828))))))

(assert (=> d!106131 (= lt!377288 (lemmaContainsTupThenGetReturnValue!230 lt!377291 (_1!5097 (tuple2!10175 lt!376830 lt!376828)) (_2!5097 (tuple2!10175 lt!376830 lt!376828))))))

(assert (=> d!106131 (= lt!377291 (insertStrictlySorted!268 (toList!4521 lt!376829) (_1!5097 (tuple2!10175 lt!376830 lt!376828)) (_2!5097 (tuple2!10175 lt!376830 lt!376828))))))

(assert (=> d!106131 (= (+!1950 lt!376829 (tuple2!10175 lt!376830 lt!376828)) lt!377289)))

(declare-fun b!831504 () Bool)

(declare-fun res!566012 () Bool)

(assert (=> b!831504 (=> (not res!566012) (not e!463708))))

(assert (=> b!831504 (= res!566012 (= (getValueByKey!414 (toList!4521 lt!377289) (_1!5097 (tuple2!10175 lt!376830 lt!376828))) (Some!419 (_2!5097 (tuple2!10175 lt!376830 lt!376828)))))))

(declare-fun b!831505 () Bool)

(assert (=> b!831505 (= e!463708 (contains!4209 (toList!4521 lt!377289) (tuple2!10175 lt!376830 lt!376828)))))

(assert (= (and d!106131 res!566011) b!831504))

(assert (= (and b!831504 res!566012) b!831505))

(declare-fun m!775425 () Bool)

(assert (=> d!106131 m!775425))

(declare-fun m!775427 () Bool)

(assert (=> d!106131 m!775427))

(declare-fun m!775429 () Bool)

(assert (=> d!106131 m!775429))

(declare-fun m!775431 () Bool)

(assert (=> d!106131 m!775431))

(declare-fun m!775433 () Bool)

(assert (=> b!831504 m!775433))

(declare-fun m!775435 () Bool)

(assert (=> b!831505 m!775435))

(assert (=> b!830291 d!106131))

(declare-fun d!106133 () Bool)

(assert (=> d!106133 (not (contains!4208 (+!1950 lt!376829 (tuple2!10175 lt!376830 lt!376828)) lt!376825))))

(declare-fun lt!377292 () Unit!28435)

(assert (=> d!106133 (= lt!377292 (choose!1428 lt!376829 lt!376830 lt!376828 lt!376825))))

(declare-fun e!463709 () Bool)

(assert (=> d!106133 e!463709))

(declare-fun res!566013 () Bool)

(assert (=> d!106133 (=> (not res!566013) (not e!463709))))

(assert (=> d!106133 (= res!566013 (not (contains!4208 lt!376829 lt!376825)))))

(assert (=> d!106133 (= (addStillNotContains!199 lt!376829 lt!376830 lt!376828 lt!376825) lt!377292)))

(declare-fun b!831506 () Bool)

(assert (=> b!831506 (= e!463709 (not (= lt!376830 lt!376825)))))

(assert (= (and d!106133 res!566013) b!831506))

(assert (=> d!106133 m!773557))

(assert (=> d!106133 m!773557))

(assert (=> d!106133 m!773559))

(declare-fun m!775437 () Bool)

(assert (=> d!106133 m!775437))

(declare-fun m!775439 () Bool)

(assert (=> d!106133 m!775439))

(assert (=> b!830291 d!106133))

(assert (=> b!830291 d!105627))

(declare-fun d!106135 () Bool)

(declare-fun e!463711 () Bool)

(assert (=> d!106135 e!463711))

(declare-fun res!566014 () Bool)

(assert (=> d!106135 (=> res!566014 e!463711)))

(declare-fun lt!377296 () Bool)

(assert (=> d!106135 (= res!566014 (not lt!377296))))

(declare-fun lt!377295 () Bool)

(assert (=> d!106135 (= lt!377296 lt!377295)))

(declare-fun lt!377293 () Unit!28435)

(declare-fun e!463710 () Unit!28435)

(assert (=> d!106135 (= lt!377293 e!463710)))

(declare-fun c!90220 () Bool)

(assert (=> d!106135 (= c!90220 lt!377295)))

(assert (=> d!106135 (= lt!377295 (containsKey!400 (toList!4521 (+!1950 lt!376829 (tuple2!10175 lt!376830 lt!376828))) lt!376825))))

(assert (=> d!106135 (= (contains!4208 (+!1950 lt!376829 (tuple2!10175 lt!376830 lt!376828)) lt!376825) lt!377296)))

(declare-fun b!831507 () Bool)

(declare-fun lt!377294 () Unit!28435)

(assert (=> b!831507 (= e!463710 lt!377294)))

(assert (=> b!831507 (= lt!377294 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 (+!1950 lt!376829 (tuple2!10175 lt!376830 lt!376828))) lt!376825))))

(assert (=> b!831507 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376829 (tuple2!10175 lt!376830 lt!376828))) lt!376825))))

(declare-fun b!831508 () Bool)

(declare-fun Unit!28489 () Unit!28435)

(assert (=> b!831508 (= e!463710 Unit!28489)))

(declare-fun b!831509 () Bool)

(assert (=> b!831509 (= e!463711 (isDefined!311 (getValueByKey!414 (toList!4521 (+!1950 lt!376829 (tuple2!10175 lt!376830 lt!376828))) lt!376825)))))

(assert (= (and d!106135 c!90220) b!831507))

(assert (= (and d!106135 (not c!90220)) b!831508))

(assert (= (and d!106135 (not res!566014)) b!831509))

(declare-fun m!775441 () Bool)

(assert (=> d!106135 m!775441))

(declare-fun m!775443 () Bool)

(assert (=> b!831507 m!775443))

(declare-fun m!775445 () Bool)

(assert (=> b!831507 m!775445))

(assert (=> b!831507 m!775445))

(declare-fun m!775447 () Bool)

(assert (=> b!831507 m!775447))

(assert (=> b!831509 m!775445))

(assert (=> b!831509 m!775445))

(assert (=> b!831509 m!775447))

(assert (=> b!830291 d!106135))

(declare-fun d!106137 () Bool)

(declare-fun e!463712 () Bool)

(assert (=> d!106137 e!463712))

(declare-fun res!566015 () Bool)

(assert (=> d!106137 (=> (not res!566015) (not e!463712))))

(declare-fun lt!377298 () ListLongMap!9011)

(assert (=> d!106137 (= res!566015 (contains!4208 lt!377298 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!377300 () List!16003)

(assert (=> d!106137 (= lt!377298 (ListLongMap!9012 lt!377300))))

(declare-fun lt!377299 () Unit!28435)

(declare-fun lt!377297 () Unit!28435)

(assert (=> d!106137 (= lt!377299 lt!377297)))

(assert (=> d!106137 (= (getValueByKey!414 lt!377300 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106137 (= lt!377297 (lemmaContainsTupThenGetReturnValue!230 lt!377300 (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106137 (= lt!377300 (insertStrictlySorted!268 (toList!4521 call!36262) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!106137 (= (+!1950 call!36262 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!377298)))

(declare-fun b!831510 () Bool)

(declare-fun res!566016 () Bool)

(assert (=> b!831510 (=> (not res!566016) (not e!463712))))

(assert (=> b!831510 (= res!566016 (= (getValueByKey!414 (toList!4521 lt!377298) (_1!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!419 (_2!5097 (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!831511 () Bool)

(assert (=> b!831511 (= e!463712 (contains!4209 (toList!4521 lt!377298) (tuple2!10175 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!11822 (select (arr!22312 _values!788) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!106137 res!566015) b!831510))

(assert (= (and b!831510 res!566016) b!831511))

(declare-fun m!775449 () Bool)

(assert (=> d!106137 m!775449))

(declare-fun m!775451 () Bool)

(assert (=> d!106137 m!775451))

(declare-fun m!775453 () Bool)

(assert (=> d!106137 m!775453))

(declare-fun m!775455 () Bool)

(assert (=> d!106137 m!775455))

(declare-fun m!775457 () Bool)

(assert (=> b!831510 m!775457))

(declare-fun m!775459 () Bool)

(assert (=> b!831511 m!775459))

(assert (=> b!830291 d!106137))

(assert (=> d!105405 d!105403))

(declare-fun d!106139 () Bool)

(assert (=> d!106139 (= (getValueByKey!414 lt!376661 (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628)))))

(assert (=> d!106139 true))

(declare-fun _$22!571 () Unit!28435)

(assert (=> d!106139 (= (choose!1427 lt!376661 (_1!5097 lt!376628) (_2!5097 lt!376628)) _$22!571)))

(declare-fun bs!23238 () Bool)

(assert (= bs!23238 d!106139))

(assert (=> bs!23238 m!773265))

(assert (=> d!105405 d!106139))

(declare-fun d!106141 () Bool)

(declare-fun res!566017 () Bool)

(declare-fun e!463713 () Bool)

(assert (=> d!106141 (=> res!566017 e!463713)))

(assert (=> d!106141 (= res!566017 (or ((_ is Nil!16000) lt!376661) ((_ is Nil!16000) (t!22376 lt!376661))))))

(assert (=> d!106141 (= (isStrictlySorted!437 lt!376661) e!463713)))

(declare-fun b!831512 () Bool)

(declare-fun e!463714 () Bool)

(assert (=> b!831512 (= e!463713 e!463714)))

(declare-fun res!566018 () Bool)

(assert (=> b!831512 (=> (not res!566018) (not e!463714))))

(assert (=> b!831512 (= res!566018 (bvslt (_1!5097 (h!17128 lt!376661)) (_1!5097 (h!17128 (t!22376 lt!376661)))))))

(declare-fun b!831513 () Bool)

(assert (=> b!831513 (= e!463714 (isStrictlySorted!437 (t!22376 lt!376661)))))

(assert (= (and d!106141 (not res!566017)) b!831512))

(assert (= (and b!831512 res!566018) b!831513))

(declare-fun m!775461 () Bool)

(assert (=> b!831513 m!775461))

(assert (=> d!105405 d!106141))

(assert (=> b!830514 d!106023))

(assert (=> b!830514 d!106025))

(assert (=> b!830548 d!106029))

(assert (=> b!830548 d!106031))

(assert (=> b!830324 d!105963))

(assert (=> b!830324 d!105965))

(declare-fun d!106143 () Bool)

(assert (=> d!106143 (= ($colon$colon!535 e!463056 (ite c!89882 (h!17128 (toList!4521 lt!376626)) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622)))) (Cons!15999 (ite c!89882 (h!17128 (toList!4521 lt!376626)) (tuple2!10175 (_1!5097 lt!376622) (_2!5097 lt!376622))) e!463056))))

(assert (=> bm!36274 d!106143))

(declare-fun d!106145 () Bool)

(declare-fun res!566019 () Bool)

(declare-fun e!463715 () Bool)

(assert (=> d!106145 (=> res!566019 e!463715)))

(assert (=> d!106145 (= res!566019 (and ((_ is Cons!15999) lt!376916) (= (_1!5097 (h!17128 lt!376916)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (=> d!106145 (= (containsKey!400 lt!376916 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!463715)))

(declare-fun b!831514 () Bool)

(declare-fun e!463716 () Bool)

(assert (=> b!831514 (= e!463715 e!463716)))

(declare-fun res!566020 () Bool)

(assert (=> b!831514 (=> (not res!566020) (not e!463716))))

(assert (=> b!831514 (= res!566020 (and (or (not ((_ is Cons!15999) lt!376916)) (bvsle (_1!5097 (h!17128 lt!376916)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) ((_ is Cons!15999) lt!376916) (bvslt (_1!5097 (h!17128 lt!376916)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!831515 () Bool)

(assert (=> b!831515 (= e!463716 (containsKey!400 (t!22376 lt!376916) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and d!106145 (not res!566019)) b!831514))

(assert (= (and b!831514 res!566020) b!831515))

(declare-fun m!775463 () Bool)

(assert (=> b!831515 m!775463))

(assert (=> b!830437 d!106145))

(declare-fun d!106147 () Bool)

(declare-fun e!463718 () Bool)

(assert (=> d!106147 e!463718))

(declare-fun res!566021 () Bool)

(assert (=> d!106147 (=> res!566021 e!463718)))

(declare-fun lt!377304 () Bool)

(assert (=> d!106147 (= res!566021 (not lt!377304))))

(declare-fun lt!377303 () Bool)

(assert (=> d!106147 (= lt!377304 lt!377303)))

(declare-fun lt!377301 () Unit!28435)

(declare-fun e!463717 () Unit!28435)

(assert (=> d!106147 (= lt!377301 e!463717)))

(declare-fun c!90221 () Bool)

(assert (=> d!106147 (= c!90221 lt!377303)))

(assert (=> d!106147 (= lt!377303 (containsKey!400 (toList!4521 lt!376751) lt!376755))))

(assert (=> d!106147 (= (contains!4208 lt!376751 lt!376755) lt!377304)))

(declare-fun b!831516 () Bool)

(declare-fun lt!377302 () Unit!28435)

(assert (=> b!831516 (= e!463717 lt!377302)))

(assert (=> b!831516 (= lt!377302 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376751) lt!376755))))

(assert (=> b!831516 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376751) lt!376755))))

(declare-fun b!831517 () Bool)

(declare-fun Unit!28490 () Unit!28435)

(assert (=> b!831517 (= e!463717 Unit!28490)))

(declare-fun b!831518 () Bool)

(assert (=> b!831518 (= e!463718 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376751) lt!376755)))))

(assert (= (and d!106147 c!90221) b!831516))

(assert (= (and d!106147 (not c!90221)) b!831517))

(assert (= (and d!106147 (not res!566021)) b!831518))

(declare-fun m!775465 () Bool)

(assert (=> d!106147 m!775465))

(declare-fun m!775467 () Bool)

(assert (=> b!831516 m!775467))

(assert (=> b!831516 m!774043))

(assert (=> b!831516 m!774043))

(declare-fun m!775469 () Bool)

(assert (=> b!831516 m!775469))

(assert (=> b!831518 m!774043))

(assert (=> b!831518 m!774043))

(assert (=> b!831518 m!775469))

(assert (=> d!105475 d!106147))

(assert (=> d!105475 d!105471))

(assert (=> d!105475 d!105457))

(assert (=> d!105475 d!105479))

(declare-fun d!106149 () Bool)

(assert (=> d!106149 (= (apply!372 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754)) lt!376755) (apply!372 lt!376751 lt!376755))))

(assert (=> d!106149 true))

(declare-fun _$34!1144 () Unit!28435)

(assert (=> d!106149 (= (choose!1425 lt!376751 lt!376752 minValue!754 lt!376755) _$34!1144)))

(declare-fun bs!23239 () Bool)

(assert (= bs!23239 d!106149))

(assert (=> bs!23239 m!773393))

(assert (=> bs!23239 m!773393))

(assert (=> bs!23239 m!773395))

(assert (=> bs!23239 m!773383))

(assert (=> d!105475 d!106149))

(assert (=> d!105339 d!105347))

(assert (=> d!105339 d!105343))

(declare-fun d!106151 () Bool)

(assert (=> d!106151 (contains!4208 (+!1950 lt!376714 (tuple2!10175 lt!376707 zeroValueAfter!34)) lt!376708)))

(assert (=> d!106151 true))

(declare-fun _$35!424 () Unit!28435)

(assert (=> d!106151 (= (choose!1426 lt!376714 lt!376707 zeroValueAfter!34 lt!376708) _$35!424)))

(declare-fun bs!23240 () Bool)

(assert (= bs!23240 d!106151))

(assert (=> bs!23240 m!773315))

(assert (=> bs!23240 m!773315))

(assert (=> bs!23240 m!773317))

(assert (=> d!105339 d!106151))

(declare-fun d!106153 () Bool)

(declare-fun e!463720 () Bool)

(assert (=> d!106153 e!463720))

(declare-fun res!566022 () Bool)

(assert (=> d!106153 (=> res!566022 e!463720)))

(declare-fun lt!377308 () Bool)

(assert (=> d!106153 (= res!566022 (not lt!377308))))

(declare-fun lt!377307 () Bool)

(assert (=> d!106153 (= lt!377308 lt!377307)))

(declare-fun lt!377305 () Unit!28435)

(declare-fun e!463719 () Unit!28435)

(assert (=> d!106153 (= lt!377305 e!463719)))

(declare-fun c!90222 () Bool)

(assert (=> d!106153 (= c!90222 lt!377307)))

(assert (=> d!106153 (= lt!377307 (containsKey!400 (toList!4521 lt!376714) lt!376708))))

(assert (=> d!106153 (= (contains!4208 lt!376714 lt!376708) lt!377308)))

(declare-fun b!831519 () Bool)

(declare-fun lt!377306 () Unit!28435)

(assert (=> b!831519 (= e!463719 lt!377306)))

(assert (=> b!831519 (= lt!377306 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376714) lt!376708))))

(assert (=> b!831519 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376714) lt!376708))))

(declare-fun b!831520 () Bool)

(declare-fun Unit!28491 () Unit!28435)

(assert (=> b!831520 (= e!463719 Unit!28491)))

(declare-fun b!831521 () Bool)

(assert (=> b!831521 (= e!463720 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376714) lt!376708)))))

(assert (= (and d!106153 c!90222) b!831519))

(assert (= (and d!106153 (not c!90222)) b!831520))

(assert (= (and d!106153 (not res!566022)) b!831521))

(declare-fun m!775471 () Bool)

(assert (=> d!106153 m!775471))

(declare-fun m!775473 () Bool)

(assert (=> b!831519 m!775473))

(declare-fun m!775475 () Bool)

(assert (=> b!831519 m!775475))

(assert (=> b!831519 m!775475))

(declare-fun m!775477 () Bool)

(assert (=> b!831519 m!775477))

(assert (=> b!831521 m!775475))

(assert (=> b!831521 m!775475))

(assert (=> b!831521 m!775477))

(assert (=> d!105339 d!106153))

(declare-fun d!106155 () Bool)

(declare-fun e!463722 () Bool)

(assert (=> d!106155 e!463722))

(declare-fun res!566023 () Bool)

(assert (=> d!106155 (=> res!566023 e!463722)))

(declare-fun lt!377312 () Bool)

(assert (=> d!106155 (= res!566023 (not lt!377312))))

(declare-fun lt!377311 () Bool)

(assert (=> d!106155 (= lt!377312 lt!377311)))

(declare-fun lt!377309 () Unit!28435)

(declare-fun e!463721 () Unit!28435)

(assert (=> d!106155 (= lt!377309 e!463721)))

(declare-fun c!90223 () Bool)

(assert (=> d!106155 (= c!90223 lt!377311)))

(assert (=> d!106155 (= lt!377311 (containsKey!400 (toList!4521 lt!376810) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!106155 (= (contains!4208 lt!376810 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) lt!377312)))

(declare-fun b!831522 () Bool)

(declare-fun lt!377310 () Unit!28435)

(assert (=> b!831522 (= e!463721 lt!377310)))

(assert (=> b!831522 (= lt!377310 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376810) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!831522 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376810) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!831523 () Bool)

(declare-fun Unit!28492 () Unit!28435)

(assert (=> b!831523 (= e!463721 Unit!28492)))

(declare-fun b!831524 () Bool)

(assert (=> b!831524 (= e!463722 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376810) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))))

(assert (= (and d!106155 c!90223) b!831522))

(assert (= (and d!106155 (not c!90223)) b!831523))

(assert (= (and d!106155 (not res!566023)) b!831524))

(assert (=> d!106155 m!773495))

(declare-fun m!775479 () Bool)

(assert (=> d!106155 m!775479))

(assert (=> b!831522 m!773495))

(declare-fun m!775481 () Bool)

(assert (=> b!831522 m!775481))

(assert (=> b!831522 m!773495))

(assert (=> b!831522 m!775403))

(assert (=> b!831522 m!775403))

(declare-fun m!775483 () Bool)

(assert (=> b!831522 m!775483))

(assert (=> b!831524 m!773495))

(assert (=> b!831524 m!775403))

(assert (=> b!831524 m!775403))

(assert (=> b!831524 m!775483))

(assert (=> b!830263 d!106155))

(declare-fun d!106157 () Bool)

(declare-fun res!566024 () Bool)

(declare-fun e!463723 () Bool)

(assert (=> d!106157 (=> res!566024 e!463723)))

(assert (=> d!106157 (= res!566024 (and ((_ is Cons!15999) (toList!4521 lt!376786)) (= (_1!5097 (h!17128 (toList!4521 lt!376786))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(assert (=> d!106157 (= (containsKey!400 (toList!4521 lt!376786) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)) e!463723)))

(declare-fun b!831525 () Bool)

(declare-fun e!463724 () Bool)

(assert (=> b!831525 (= e!463723 e!463724)))

(declare-fun res!566025 () Bool)

(assert (=> b!831525 (=> (not res!566025) (not e!463724))))

(assert (=> b!831525 (= res!566025 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376786))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376786))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))) ((_ is Cons!15999) (toList!4521 lt!376786)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376786))) (select (arr!22311 _keys!976) #b00000000000000000000000000000000))))))

(declare-fun b!831526 () Bool)

(assert (=> b!831526 (= e!463724 (containsKey!400 (t!22376 (toList!4521 lt!376786)) (select (arr!22311 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!106157 (not res!566024)) b!831525))

(assert (= (and b!831525 res!566025) b!831526))

(assert (=> b!831526 m!773277))

(declare-fun m!775485 () Bool)

(assert (=> b!831526 m!775485))

(assert (=> d!105365 d!106157))

(declare-fun d!106159 () Bool)

(declare-fun res!566026 () Bool)

(declare-fun e!463725 () Bool)

(assert (=> d!106159 (=> res!566026 e!463725)))

(assert (=> d!106159 (= res!566026 (or ((_ is Nil!16000) lt!376928) ((_ is Nil!16000) (t!22376 lt!376928))))))

(assert (=> d!106159 (= (isStrictlySorted!437 lt!376928) e!463725)))

(declare-fun b!831527 () Bool)

(declare-fun e!463726 () Bool)

(assert (=> b!831527 (= e!463725 e!463726)))

(declare-fun res!566027 () Bool)

(assert (=> b!831527 (=> (not res!566027) (not e!463726))))

(assert (=> b!831527 (= res!566027 (bvslt (_1!5097 (h!17128 lt!376928)) (_1!5097 (h!17128 (t!22376 lt!376928)))))))

(declare-fun b!831528 () Bool)

(assert (=> b!831528 (= e!463726 (isStrictlySorted!437 (t!22376 lt!376928)))))

(assert (= (and d!106159 (not res!566026)) b!831527))

(assert (= (and b!831527 res!566027) b!831528))

(declare-fun m!775487 () Bool)

(assert (=> b!831528 m!775487))

(assert (=> d!105407 d!106159))

(assert (=> d!105407 d!105519))

(assert (=> d!105443 d!105439))

(assert (=> d!105443 d!105445))

(declare-fun d!106161 () Bool)

(assert (=> d!106161 (not (contains!4208 (+!1950 lt!376784 (tuple2!10175 lt!376785 lt!376783)) lt!376780))))

(assert (=> d!106161 true))

(declare-fun _$36!344 () Unit!28435)

(assert (=> d!106161 (= (choose!1428 lt!376784 lt!376785 lt!376783 lt!376780) _$36!344)))

(declare-fun bs!23241 () Bool)

(assert (= bs!23241 d!106161))

(assert (=> bs!23241 m!773425))

(assert (=> bs!23241 m!773425))

(assert (=> bs!23241 m!773427))

(assert (=> d!105443 d!106161))

(declare-fun d!106163 () Bool)

(declare-fun e!463728 () Bool)

(assert (=> d!106163 e!463728))

(declare-fun res!566028 () Bool)

(assert (=> d!106163 (=> res!566028 e!463728)))

(declare-fun lt!377316 () Bool)

(assert (=> d!106163 (= res!566028 (not lt!377316))))

(declare-fun lt!377315 () Bool)

(assert (=> d!106163 (= lt!377316 lt!377315)))

(declare-fun lt!377313 () Unit!28435)

(declare-fun e!463727 () Unit!28435)

(assert (=> d!106163 (= lt!377313 e!463727)))

(declare-fun c!90224 () Bool)

(assert (=> d!106163 (= c!90224 lt!377315)))

(assert (=> d!106163 (= lt!377315 (containsKey!400 (toList!4521 lt!376784) lt!376780))))

(assert (=> d!106163 (= (contains!4208 lt!376784 lt!376780) lt!377316)))

(declare-fun b!831529 () Bool)

(declare-fun lt!377314 () Unit!28435)

(assert (=> b!831529 (= e!463727 lt!377314)))

(assert (=> b!831529 (= lt!377314 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376784) lt!376780))))

(assert (=> b!831529 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376784) lt!376780))))

(declare-fun b!831530 () Bool)

(declare-fun Unit!28493 () Unit!28435)

(assert (=> b!831530 (= e!463727 Unit!28493)))

(declare-fun b!831531 () Bool)

(assert (=> b!831531 (= e!463728 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376784) lt!376780)))))

(assert (= (and d!106163 c!90224) b!831529))

(assert (= (and d!106163 (not c!90224)) b!831530))

(assert (= (and d!106163 (not res!566028)) b!831531))

(declare-fun m!775489 () Bool)

(assert (=> d!106163 m!775489))

(declare-fun m!775491 () Bool)

(assert (=> b!831529 m!775491))

(declare-fun m!775493 () Bool)

(assert (=> b!831529 m!775493))

(assert (=> b!831529 m!775493))

(declare-fun m!775495 () Bool)

(assert (=> b!831529 m!775495))

(assert (=> b!831531 m!775493))

(assert (=> b!831531 m!775493))

(assert (=> b!831531 m!775495))

(assert (=> d!105443 d!106163))

(assert (=> b!830298 d!105531))

(declare-fun d!106165 () Bool)

(assert (=> d!106165 (= (get!11823 (getValueByKey!414 (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754))) lt!376755)) (v!10091 (getValueByKey!414 (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754))) lt!376755)))))

(assert (=> d!105479 d!106165))

(declare-fun b!831534 () Bool)

(declare-fun e!463730 () Option!420)

(assert (=> b!831534 (= e!463730 (getValueByKey!414 (t!22376 (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754)))) lt!376755))))

(declare-fun b!831535 () Bool)

(assert (=> b!831535 (= e!463730 None!418)))

(declare-fun c!90225 () Bool)

(declare-fun d!106167 () Bool)

(assert (=> d!106167 (= c!90225 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754)))) (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754))))) lt!376755)))))

(declare-fun e!463729 () Option!420)

(assert (=> d!106167 (= (getValueByKey!414 (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754))) lt!376755) e!463729)))

(declare-fun b!831532 () Bool)

(assert (=> b!831532 (= e!463729 (Some!419 (_2!5097 (h!17128 (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754)))))))))

(declare-fun b!831533 () Bool)

(assert (=> b!831533 (= e!463729 e!463730)))

(declare-fun c!90226 () Bool)

(assert (=> b!831533 (= c!90226 (and ((_ is Cons!15999) (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754)))) (not (= (_1!5097 (h!17128 (toList!4521 (+!1950 lt!376751 (tuple2!10175 lt!376752 minValue!754))))) lt!376755))))))

(assert (= (and d!106167 c!90225) b!831532))

(assert (= (and d!106167 (not c!90225)) b!831533))

(assert (= (and b!831533 c!90226) b!831534))

(assert (= (and b!831533 (not c!90226)) b!831535))

(declare-fun m!775497 () Bool)

(assert (=> b!831534 m!775497))

(assert (=> d!105479 d!106167))

(declare-fun d!106169 () Bool)

(declare-fun lt!377317 () Bool)

(assert (=> d!106169 (= lt!377317 (select (content!389 (toList!4521 lt!376994)) (tuple2!10175 lt!376741 zeroValueBefore!34)))))

(declare-fun e!463732 () Bool)

(assert (=> d!106169 (= lt!377317 e!463732)))

(declare-fun res!566030 () Bool)

(assert (=> d!106169 (=> (not res!566030) (not e!463732))))

(assert (=> d!106169 (= res!566030 ((_ is Cons!15999) (toList!4521 lt!376994)))))

(assert (=> d!106169 (= (contains!4209 (toList!4521 lt!376994) (tuple2!10175 lt!376741 zeroValueBefore!34)) lt!377317)))

(declare-fun b!831536 () Bool)

(declare-fun e!463731 () Bool)

(assert (=> b!831536 (= e!463732 e!463731)))

(declare-fun res!566029 () Bool)

(assert (=> b!831536 (=> res!566029 e!463731)))

(assert (=> b!831536 (= res!566029 (= (h!17128 (toList!4521 lt!376994)) (tuple2!10175 lt!376741 zeroValueBefore!34)))))

(declare-fun b!831537 () Bool)

(assert (=> b!831537 (= e!463731 (contains!4209 (t!22376 (toList!4521 lt!376994)) (tuple2!10175 lt!376741 zeroValueBefore!34)))))

(assert (= (and d!106169 res!566030) b!831536))

(assert (= (and b!831536 (not res!566029)) b!831537))

(declare-fun m!775499 () Bool)

(assert (=> d!106169 m!775499))

(declare-fun m!775501 () Bool)

(assert (=> d!106169 m!775501))

(declare-fun m!775503 () Bool)

(assert (=> b!831537 m!775503))

(assert (=> b!830552 d!106169))

(declare-fun d!106171 () Bool)

(declare-fun e!463734 () Bool)

(assert (=> d!106171 e!463734))

(declare-fun res!566031 () Bool)

(assert (=> d!106171 (=> res!566031 e!463734)))

(declare-fun lt!377321 () Bool)

(assert (=> d!106171 (= res!566031 (not lt!377321))))

(declare-fun lt!377320 () Bool)

(assert (=> d!106171 (= lt!377321 lt!377320)))

(declare-fun lt!377318 () Unit!28435)

(declare-fun e!463733 () Unit!28435)

(assert (=> d!106171 (= lt!377318 e!463733)))

(declare-fun c!90227 () Bool)

(assert (=> d!106171 (= c!90227 lt!377320)))

(assert (=> d!106171 (= lt!377320 (containsKey!400 (toList!4521 lt!376994) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(assert (=> d!106171 (= (contains!4208 lt!376994 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!377321)))

(declare-fun b!831538 () Bool)

(declare-fun lt!377319 () Unit!28435)

(assert (=> b!831538 (= e!463733 lt!377319)))

(assert (=> b!831538 (= lt!377319 (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376994) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(assert (=> b!831538 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376994) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(declare-fun b!831539 () Bool)

(declare-fun Unit!28494 () Unit!28435)

(assert (=> b!831539 (= e!463733 Unit!28494)))

(declare-fun b!831540 () Bool)

(assert (=> b!831540 (= e!463734 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376994) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(assert (= (and d!106171 c!90227) b!831538))

(assert (= (and d!106171 (not c!90227)) b!831539))

(assert (= (and d!106171 (not res!566031)) b!831540))

(declare-fun m!775505 () Bool)

(assert (=> d!106171 m!775505))

(declare-fun m!775507 () Bool)

(assert (=> b!831538 m!775507))

(assert (=> b!831538 m!774083))

(assert (=> b!831538 m!774083))

(declare-fun m!775509 () Bool)

(assert (=> b!831538 m!775509))

(assert (=> b!831540 m!774083))

(assert (=> b!831540 m!774083))

(assert (=> b!831540 m!775509))

(assert (=> d!105467 d!106171))

(declare-fun e!463736 () Option!420)

(declare-fun b!831543 () Bool)

(assert (=> b!831543 (= e!463736 (getValueByKey!414 (t!22376 lt!376996) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(declare-fun b!831544 () Bool)

(assert (=> b!831544 (= e!463736 None!418)))

(declare-fun c!90228 () Bool)

(declare-fun d!106173 () Bool)

(assert (=> d!106173 (= c!90228 (and ((_ is Cons!15999) lt!376996) (= (_1!5097 (h!17128 lt!376996)) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(declare-fun e!463735 () Option!420)

(assert (=> d!106173 (= (getValueByKey!414 lt!376996 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))) e!463735)))

(declare-fun b!831541 () Bool)

(assert (=> b!831541 (= e!463735 (Some!419 (_2!5097 (h!17128 lt!376996))))))

(declare-fun b!831542 () Bool)

(assert (=> b!831542 (= e!463735 e!463736)))

(declare-fun c!90229 () Bool)

(assert (=> b!831542 (= c!90229 (and ((_ is Cons!15999) lt!376996) (not (= (_1!5097 (h!17128 lt!376996)) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))))

(assert (= (and d!106173 c!90228) b!831541))

(assert (= (and d!106173 (not c!90228)) b!831542))

(assert (= (and b!831542 c!90229) b!831543))

(assert (= (and b!831542 (not c!90229)) b!831544))

(declare-fun m!775511 () Bool)

(assert (=> b!831543 m!775511))

(assert (=> d!105467 d!106173))

(declare-fun d!106175 () Bool)

(assert (=> d!106175 (= (getValueByKey!414 lt!376996 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))) (Some!419 (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(declare-fun lt!377322 () Unit!28435)

(assert (=> d!106175 (= lt!377322 (choose!1427 lt!376996 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(declare-fun e!463737 () Bool)

(assert (=> d!106175 e!463737))

(declare-fun res!566032 () Bool)

(assert (=> d!106175 (=> (not res!566032) (not e!463737))))

(assert (=> d!106175 (= res!566032 (isStrictlySorted!437 lt!376996))))

(assert (=> d!106175 (= (lemmaContainsTupThenGetReturnValue!230 lt!376996 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!377322)))

(declare-fun b!831545 () Bool)

(declare-fun res!566033 () Bool)

(assert (=> b!831545 (=> (not res!566033) (not e!463737))))

(assert (=> b!831545 (= res!566033 (containsKey!400 lt!376996 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(declare-fun b!831546 () Bool)

(assert (=> b!831546 (= e!463737 (contains!4209 lt!376996 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(assert (= (and d!106175 res!566032) b!831545))

(assert (= (and b!831545 res!566033) b!831546))

(assert (=> d!106175 m!774077))

(declare-fun m!775513 () Bool)

(assert (=> d!106175 m!775513))

(declare-fun m!775515 () Bool)

(assert (=> d!106175 m!775515))

(declare-fun m!775517 () Bool)

(assert (=> b!831545 m!775517))

(declare-fun m!775519 () Bool)

(assert (=> b!831546 m!775519))

(assert (=> d!105467 d!106175))

(declare-fun b!831547 () Bool)

(declare-fun e!463738 () List!16003)

(declare-fun call!36358 () List!16003)

(assert (=> b!831547 (= e!463738 call!36358)))

(declare-fun bm!36353 () Bool)

(declare-fun call!36356 () List!16003)

(assert (=> bm!36353 (= call!36358 call!36356)))

(declare-fun e!463740 () Bool)

(declare-fun b!831548 () Bool)

(declare-fun lt!377323 () List!16003)

(assert (=> b!831548 (= e!463740 (contains!4209 lt!377323 (tuple2!10175 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(declare-fun b!831549 () Bool)

(declare-fun c!90233 () Bool)

(declare-fun e!463741 () List!16003)

(declare-fun c!90232 () Bool)

(assert (=> b!831549 (= e!463741 (ite c!90233 (t!22376 (toList!4521 lt!376748)) (ite c!90232 (Cons!15999 (h!17128 (toList!4521 lt!376748)) (t!22376 (toList!4521 lt!376748))) Nil!16000)))))

(declare-fun b!831550 () Bool)

(assert (=> b!831550 (= e!463741 (insertStrictlySorted!268 (t!22376 (toList!4521 lt!376748)) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(declare-fun b!831551 () Bool)

(assert (=> b!831551 (= e!463738 call!36358)))

(declare-fun call!36357 () List!16003)

(declare-fun bm!36354 () Bool)

(declare-fun c!90230 () Bool)

(assert (=> bm!36354 (= call!36357 ($colon$colon!535 e!463741 (ite c!90230 (h!17128 (toList!4521 lt!376748)) (tuple2!10175 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))))

(declare-fun c!90231 () Bool)

(assert (=> bm!36354 (= c!90231 c!90230)))

(declare-fun b!831552 () Bool)

(declare-fun e!463742 () List!16003)

(assert (=> b!831552 (= e!463742 call!36356)))

(declare-fun b!831553 () Bool)

(declare-fun e!463739 () List!16003)

(assert (=> b!831553 (= e!463739 call!36357)))

(declare-fun b!831554 () Bool)

(assert (=> b!831554 (= e!463739 e!463742)))

(assert (=> b!831554 (= c!90233 (and ((_ is Cons!15999) (toList!4521 lt!376748)) (= (_1!5097 (h!17128 (toList!4521 lt!376748))) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(declare-fun b!831556 () Bool)

(declare-fun res!566034 () Bool)

(assert (=> b!831556 (=> (not res!566034) (not e!463740))))

(assert (=> b!831556 (= res!566034 (containsKey!400 lt!377323 (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))))))

(declare-fun bm!36355 () Bool)

(assert (=> bm!36355 (= call!36356 call!36357)))

(declare-fun d!106177 () Bool)

(assert (=> d!106177 e!463740))

(declare-fun res!566035 () Bool)

(assert (=> d!106177 (=> (not res!566035) (not e!463740))))

(assert (=> d!106177 (= res!566035 (isStrictlySorted!437 lt!377323))))

(assert (=> d!106177 (= lt!377323 e!463739)))

(assert (=> d!106177 (= c!90230 (and ((_ is Cons!15999) (toList!4521 lt!376748)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376748))) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(assert (=> d!106177 (isStrictlySorted!437 (toList!4521 lt!376748))))

(assert (=> d!106177 (= (insertStrictlySorted!268 (toList!4521 lt!376748) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)) (_2!5097 (tuple2!10175 lt!376741 zeroValueBefore!34))) lt!377323)))

(declare-fun b!831555 () Bool)

(assert (=> b!831555 (= c!90232 (and ((_ is Cons!15999) (toList!4521 lt!376748)) (bvsgt (_1!5097 (h!17128 (toList!4521 lt!376748))) (_1!5097 (tuple2!10175 lt!376741 zeroValueBefore!34)))))))

(assert (=> b!831555 (= e!463742 e!463738)))

(assert (= (and d!106177 c!90230) b!831553))

(assert (= (and d!106177 (not c!90230)) b!831554))

(assert (= (and b!831554 c!90233) b!831552))

(assert (= (and b!831554 (not c!90233)) b!831555))

(assert (= (and b!831555 c!90232) b!831547))

(assert (= (and b!831555 (not c!90232)) b!831551))

(assert (= (or b!831547 b!831551) bm!36353))

(assert (= (or b!831552 bm!36353) bm!36355))

(assert (= (or b!831553 bm!36355) bm!36354))

(assert (= (and bm!36354 c!90231) b!831550))

(assert (= (and bm!36354 (not c!90231)) b!831549))

(assert (= (and d!106177 res!566035) b!831556))

(assert (= (and b!831556 res!566034) b!831548))

(declare-fun m!775521 () Bool)

(assert (=> b!831556 m!775521))

(declare-fun m!775523 () Bool)

(assert (=> d!106177 m!775523))

(declare-fun m!775525 () Bool)

(assert (=> d!106177 m!775525))

(declare-fun m!775527 () Bool)

(assert (=> bm!36354 m!775527))

(declare-fun m!775529 () Bool)

(assert (=> b!831550 m!775529))

(declare-fun m!775531 () Bool)

(assert (=> b!831548 m!775531))

(assert (=> d!105467 d!106177))

(declare-fun d!106179 () Bool)

(assert (=> d!106179 (isDefined!311 (getValueByKey!414 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!377324 () Unit!28435)

(assert (=> d!106179 (= lt!377324 (choose!1429 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463743 () Bool)

(assert (=> d!106179 e!463743))

(declare-fun res!566036 () Bool)

(assert (=> d!106179 (=> (not res!566036) (not e!463743))))

(assert (=> d!106179 (= res!566036 (isStrictlySorted!437 (toList!4521 lt!376713)))))

(assert (=> d!106179 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!310 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000) lt!377324)))

(declare-fun b!831557 () Bool)

(assert (=> b!831557 (= e!463743 (containsKey!400 (toList!4521 lt!376713) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106179 res!566036) b!831557))

(assert (=> d!106179 m!773571))

(assert (=> d!106179 m!773571))

(assert (=> d!106179 m!773615))

(declare-fun m!775533 () Bool)

(assert (=> d!106179 m!775533))

(assert (=> d!106179 m!774293))

(assert (=> b!831557 m!773611))

(assert (=> b!830333 d!106179))

(assert (=> b!830333 d!105693))

(assert (=> b!830333 d!105695))

(declare-fun d!106181 () Bool)

(assert (=> d!106181 (arrayContainsKey!0 _keys!976 lt!376953 #b00000000000000000000000000000000)))

(declare-fun lt!377325 () Unit!28435)

(assert (=> d!106181 (= lt!377325 (choose!13 _keys!976 lt!376953 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!106181 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!106181 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!376953 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!377325)))

(declare-fun bs!23242 () Bool)

(assert (= bs!23242 d!106181))

(assert (=> bs!23242 m!773949))

(declare-fun m!775535 () Bool)

(assert (=> bs!23242 m!775535))

(assert (=> b!830503 d!106181))

(declare-fun d!106183 () Bool)

(declare-fun res!566037 () Bool)

(declare-fun e!463744 () Bool)

(assert (=> d!106183 (=> res!566037 e!463744)))

(assert (=> d!106183 (= res!566037 (= (select (arr!22311 _keys!976) #b00000000000000000000000000000000) lt!376953))))

(assert (=> d!106183 (= (arrayContainsKey!0 _keys!976 lt!376953 #b00000000000000000000000000000000) e!463744)))

(declare-fun b!831558 () Bool)

(declare-fun e!463745 () Bool)

(assert (=> b!831558 (= e!463744 e!463745)))

(declare-fun res!566038 () Bool)

(assert (=> b!831558 (=> (not res!566038) (not e!463745))))

(assert (=> b!831558 (= res!566038 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!22732 _keys!976)))))

(declare-fun b!831559 () Bool)

(assert (=> b!831559 (= e!463745 (arrayContainsKey!0 _keys!976 lt!376953 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!106183 (not res!566037)) b!831558))

(assert (= (and b!831558 res!566038) b!831559))

(assert (=> d!106183 m!773277))

(declare-fun m!775537 () Bool)

(assert (=> b!831559 m!775537))

(assert (=> b!830503 d!106183))

(declare-fun d!106185 () Bool)

(declare-fun lt!377327 () SeekEntryResult!8733)

(assert (=> d!106185 (and (or ((_ is Undefined!8733) lt!377327) (not ((_ is Found!8733) lt!377327)) (and (bvsge (index!37303 lt!377327) #b00000000000000000000000000000000) (bvslt (index!37303 lt!377327) (size!22732 _keys!976)))) (or ((_ is Undefined!8733) lt!377327) ((_ is Found!8733) lt!377327) (not ((_ is MissingZero!8733) lt!377327)) (and (bvsge (index!37302 lt!377327) #b00000000000000000000000000000000) (bvslt (index!37302 lt!377327) (size!22732 _keys!976)))) (or ((_ is Undefined!8733) lt!377327) ((_ is Found!8733) lt!377327) ((_ is MissingZero!8733) lt!377327) (not ((_ is MissingVacant!8733) lt!377327)) (and (bvsge (index!37305 lt!377327) #b00000000000000000000000000000000) (bvslt (index!37305 lt!377327) (size!22732 _keys!976)))) (or ((_ is Undefined!8733) lt!377327) (ite ((_ is Found!8733) lt!377327) (= (select (arr!22311 _keys!976) (index!37303 lt!377327)) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite ((_ is MissingZero!8733) lt!377327) (= (select (arr!22311 _keys!976) (index!37302 lt!377327)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8733) lt!377327) (= (select (arr!22311 _keys!976) (index!37305 lt!377327)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!463748 () SeekEntryResult!8733)

(assert (=> d!106185 (= lt!377327 e!463748)))

(declare-fun c!90236 () Bool)

(declare-fun lt!377328 () SeekEntryResult!8733)

(assert (=> d!106185 (= c!90236 (and ((_ is Intermediate!8733) lt!377328) (undefined!9545 lt!377328)))))

(assert (=> d!106185 (= lt!377328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!1312) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!976 mask!1312))))

(assert (=> d!106185 (validMask!0 mask!1312)))

(assert (=> d!106185 (= (seekEntryOrOpen!0 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!976 mask!1312) lt!377327)))

(declare-fun b!831560 () Bool)

(declare-fun c!90234 () Bool)

(declare-fun lt!377326 () (_ BitVec 64))

(assert (=> b!831560 (= c!90234 (= lt!377326 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!463746 () SeekEntryResult!8733)

(declare-fun e!463747 () SeekEntryResult!8733)

(assert (=> b!831560 (= e!463746 e!463747)))

(declare-fun b!831561 () Bool)

(assert (=> b!831561 (= e!463747 (MissingZero!8733 (index!37304 lt!377328)))))

(declare-fun b!831562 () Bool)

(assert (=> b!831562 (= e!463748 Undefined!8733)))

(declare-fun b!831563 () Bool)

(assert (=> b!831563 (= e!463747 (seekKeyOrZeroReturnVacant!0 (x!70091 lt!377328) (index!37304 lt!377328) (index!37304 lt!377328) (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!976 mask!1312))))

(declare-fun b!831564 () Bool)

(assert (=> b!831564 (= e!463748 e!463746)))

(assert (=> b!831564 (= lt!377326 (select (arr!22311 _keys!976) (index!37304 lt!377328)))))

(declare-fun c!90235 () Bool)

(assert (=> b!831564 (= c!90235 (= lt!377326 (select (arr!22311 _keys!976) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!831565 () Bool)

(assert (=> b!831565 (= e!463746 (Found!8733 (index!37304 lt!377328)))))

(assert (= (and d!106185 c!90236) b!831562))

(assert (= (and d!106185 (not c!90236)) b!831564))

(assert (= (and b!831564 c!90235) b!831565))

(assert (= (and b!831564 (not c!90235)) b!831560))

(assert (= (and b!831560 c!90234) b!831561))

(assert (= (and b!831560 (not c!90234)) b!831563))

(declare-fun m!775539 () Bool)

(assert (=> d!106185 m!775539))

(declare-fun m!775541 () Bool)

(assert (=> d!106185 m!775541))

(declare-fun m!775543 () Bool)

(assert (=> d!106185 m!775543))

(declare-fun m!775545 () Bool)

(assert (=> d!106185 m!775545))

(assert (=> d!106185 m!773495))

(declare-fun m!775547 () Bool)

(assert (=> d!106185 m!775547))

(assert (=> d!106185 m!773209))

(assert (=> d!106185 m!773495))

(assert (=> d!106185 m!775545))

(assert (=> b!831563 m!773495))

(declare-fun m!775549 () Bool)

(assert (=> b!831563 m!775549))

(declare-fun m!775551 () Bool)

(assert (=> b!831564 m!775551))

(assert (=> b!830503 d!106185))

(declare-fun d!106187 () Bool)

(assert (=> d!106187 (= (get!11825 (select (arr!22312 _values!788) #b00000000000000000000000000000000) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!982 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!830278 d!106187))

(declare-fun d!106189 () Bool)

(assert (=> d!106189 (= (get!11823 (getValueByKey!414 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!10091 (getValueByKey!414 (toList!4521 lt!376713) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105507 d!106189))

(assert (=> d!105507 d!105747))

(assert (=> d!105453 d!105451))

(declare-fun d!106191 () Bool)

(assert (=> d!106191 (= (getValueByKey!414 lt!376735 (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628)))))

(assert (=> d!106191 true))

(declare-fun _$22!572 () Unit!28435)

(assert (=> d!106191 (= (choose!1427 lt!376735 (_1!5097 lt!376628) (_2!5097 lt!376628)) _$22!572)))

(declare-fun bs!23243 () Bool)

(assert (= bs!23243 d!106191))

(assert (=> bs!23243 m!773345))

(assert (=> d!105453 d!106191))

(declare-fun d!106193 () Bool)

(declare-fun res!566039 () Bool)

(declare-fun e!463749 () Bool)

(assert (=> d!106193 (=> res!566039 e!463749)))

(assert (=> d!106193 (= res!566039 (or ((_ is Nil!16000) lt!376735) ((_ is Nil!16000) (t!22376 lt!376735))))))

(assert (=> d!106193 (= (isStrictlySorted!437 lt!376735) e!463749)))

(declare-fun b!831566 () Bool)

(declare-fun e!463750 () Bool)

(assert (=> b!831566 (= e!463749 e!463750)))

(declare-fun res!566040 () Bool)

(assert (=> b!831566 (=> (not res!566040) (not e!463750))))

(assert (=> b!831566 (= res!566040 (bvslt (_1!5097 (h!17128 lt!376735)) (_1!5097 (h!17128 (t!22376 lt!376735)))))))

(declare-fun b!831567 () Bool)

(assert (=> b!831567 (= e!463750 (isStrictlySorted!437 (t!22376 lt!376735)))))

(assert (= (and d!106193 (not res!566039)) b!831566))

(assert (= (and b!831566 res!566040) b!831567))

(declare-fun m!775553 () Bool)

(assert (=> b!831567 m!775553))

(assert (=> d!105453 d!106193))

(declare-fun d!106195 () Bool)

(declare-fun c!90237 () Bool)

(assert (=> d!106195 (= c!90237 ((_ is Nil!16000) (toList!4521 lt!376803)))))

(declare-fun e!463751 () (InoxSet tuple2!10174))

(assert (=> d!106195 (= (content!389 (toList!4521 lt!376803)) e!463751)))

(declare-fun b!831568 () Bool)

(assert (=> b!831568 (= e!463751 ((as const (Array tuple2!10174 Bool)) false))))

(declare-fun b!831569 () Bool)

(assert (=> b!831569 (= e!463751 ((_ map or) (store ((as const (Array tuple2!10174 Bool)) false) (h!17128 (toList!4521 lt!376803)) true) (content!389 (t!22376 (toList!4521 lt!376803)))))))

(assert (= (and d!106195 c!90237) b!831568))

(assert (= (and d!106195 (not c!90237)) b!831569))

(declare-fun m!775555 () Bool)

(assert (=> b!831569 m!775555))

(assert (=> b!831569 m!775025))

(assert (=> d!105319 d!106195))

(declare-fun d!106197 () Bool)

(declare-fun lt!377329 () Bool)

(assert (=> d!106197 (= lt!377329 (select (content!389 lt!376916) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!463753 () Bool)

(assert (=> d!106197 (= lt!377329 e!463753)))

(declare-fun res!566042 () Bool)

(assert (=> d!106197 (=> (not res!566042) (not e!463753))))

(assert (=> d!106197 (= res!566042 ((_ is Cons!15999) lt!376916))))

(assert (=> d!106197 (= (contains!4209 lt!376916 (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))) lt!377329)))

(declare-fun b!831570 () Bool)

(declare-fun e!463752 () Bool)

(assert (=> b!831570 (= e!463753 e!463752)))

(declare-fun res!566041 () Bool)

(assert (=> b!831570 (=> res!566041 e!463752)))

(assert (=> b!831570 (= res!566041 (= (h!17128 lt!376916) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!831571 () Bool)

(assert (=> b!831571 (= e!463752 (contains!4209 (t!22376 lt!376916) (tuple2!10175 (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(assert (= (and d!106197 res!566042) b!831570))

(assert (= (and b!831570 (not res!566041)) b!831571))

(declare-fun m!775557 () Bool)

(assert (=> d!106197 m!775557))

(declare-fun m!775559 () Bool)

(assert (=> d!106197 m!775559))

(declare-fun m!775561 () Bool)

(assert (=> b!831571 m!775561))

(assert (=> b!830429 d!106197))

(declare-fun d!106199 () Bool)

(declare-fun lt!377330 () Bool)

(assert (=> d!106199 (= lt!377330 (select (content!389 lt!376983) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun e!463755 () Bool)

(assert (=> d!106199 (= lt!377330 e!463755)))

(declare-fun res!566044 () Bool)

(assert (=> d!106199 (=> (not res!566044) (not e!463755))))

(assert (=> d!106199 (= res!566044 ((_ is Cons!15999) lt!376983))))

(assert (=> d!106199 (= (contains!4209 lt!376983 (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))) lt!377330)))

(declare-fun b!831572 () Bool)

(declare-fun e!463754 () Bool)

(assert (=> b!831572 (= e!463755 e!463754)))

(declare-fun res!566043 () Bool)

(assert (=> b!831572 (=> res!566043 e!463754)))

(assert (=> b!831572 (= res!566043 (= (h!17128 lt!376983) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(declare-fun b!831573 () Bool)

(assert (=> b!831573 (= e!463754 (contains!4209 (t!22376 lt!376983) (tuple2!10175 (_1!5097 lt!376628) (_2!5097 lt!376628))))))

(assert (= (and d!106199 res!566044) b!831572))

(assert (= (and b!831572 (not res!566043)) b!831573))

(declare-fun m!775563 () Bool)

(assert (=> d!106199 m!775563))

(declare-fun m!775565 () Bool)

(assert (=> d!106199 m!775565))

(declare-fun m!775567 () Bool)

(assert (=> b!831573 m!775567))

(assert (=> b!830536 d!106199))

(declare-fun d!106201 () Bool)

(assert (=> d!106201 (= (content!388 Nil!16001) ((as const (Array (_ BitVec 64) Bool)) false))))

(assert (=> d!105301 d!106201))

(assert (=> d!105381 d!105379))

(declare-fun d!106203 () Bool)

(assert (=> d!106203 (= (getValueByKey!414 lt!376805 (_1!5097 lt!376628)) (Some!419 (_2!5097 lt!376628)))))

(assert (=> d!106203 true))

(declare-fun _$22!573 () Unit!28435)

(assert (=> d!106203 (= (choose!1427 lt!376805 (_1!5097 lt!376628) (_2!5097 lt!376628)) _$22!573)))

(declare-fun bs!23244 () Bool)

(assert (= bs!23244 d!106203))

(assert (=> bs!23244 m!773469))

(assert (=> d!105381 d!106203))

(declare-fun d!106205 () Bool)

(declare-fun res!566045 () Bool)

(declare-fun e!463756 () Bool)

(assert (=> d!106205 (=> res!566045 e!463756)))

(assert (=> d!106205 (= res!566045 (or ((_ is Nil!16000) lt!376805) ((_ is Nil!16000) (t!22376 lt!376805))))))

(assert (=> d!106205 (= (isStrictlySorted!437 lt!376805) e!463756)))

(declare-fun b!831574 () Bool)

(declare-fun e!463757 () Bool)

(assert (=> b!831574 (= e!463756 e!463757)))

(declare-fun res!566046 () Bool)

(assert (=> b!831574 (=> (not res!566046) (not e!463757))))

(assert (=> b!831574 (= res!566046 (bvslt (_1!5097 (h!17128 lt!376805)) (_1!5097 (h!17128 (t!22376 lt!376805)))))))

(declare-fun b!831575 () Bool)

(assert (=> b!831575 (= e!463757 (isStrictlySorted!437 (t!22376 lt!376805)))))

(assert (= (and d!106205 (not res!566045)) b!831574))

(assert (= (and b!831574 res!566046) b!831575))

(declare-fun m!775569 () Bool)

(assert (=> b!831575 m!775569))

(assert (=> d!105381 d!106205))

(declare-fun d!106207 () Bool)

(declare-fun res!566047 () Bool)

(declare-fun e!463758 () Bool)

(assert (=> d!106207 (=> res!566047 e!463758)))

(assert (=> d!106207 (= res!566047 (and ((_ is Cons!15999) (toList!4521 lt!376747)) (= (_1!5097 (h!17128 (toList!4521 lt!376747))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!106207 (= (containsKey!400 (toList!4521 lt!376747) #b1000000000000000000000000000000000000000000000000000000000000000) e!463758)))

(declare-fun b!831576 () Bool)

(declare-fun e!463759 () Bool)

(assert (=> b!831576 (= e!463758 e!463759)))

(declare-fun res!566048 () Bool)

(assert (=> b!831576 (=> (not res!566048) (not e!463759))))

(assert (=> b!831576 (= res!566048 (and (or (not ((_ is Cons!15999) (toList!4521 lt!376747))) (bvsle (_1!5097 (h!17128 (toList!4521 lt!376747))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!15999) (toList!4521 lt!376747)) (bvslt (_1!5097 (h!17128 (toList!4521 lt!376747))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!831577 () Bool)

(assert (=> b!831577 (= e!463759 (containsKey!400 (t!22376 (toList!4521 lt!376747)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!106207 (not res!566047)) b!831576))

(assert (= (and b!831576 res!566048) b!831577))

(declare-fun m!775571 () Bool)

(assert (=> b!831577 m!775571))

(assert (=> d!105447 d!106207))

(declare-fun d!106209 () Bool)

(declare-fun lt!377331 () Bool)

(assert (=> d!106209 (= lt!377331 (select (content!389 (t!22376 (toList!4521 lt!376807))) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun e!463761 () Bool)

(assert (=> d!106209 (= lt!377331 e!463761)))

(declare-fun res!566050 () Bool)

(assert (=> d!106209 (=> (not res!566050) (not e!463761))))

(assert (=> d!106209 (= res!566050 ((_ is Cons!15999) (t!22376 (toList!4521 lt!376807))))))

(assert (=> d!106209 (= (contains!4209 (t!22376 (toList!4521 lt!376807)) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!377331)))

(declare-fun b!831578 () Bool)

(declare-fun e!463760 () Bool)

(assert (=> b!831578 (= e!463761 e!463760)))

(declare-fun res!566049 () Bool)

(assert (=> b!831578 (=> res!566049 e!463760)))

(assert (=> b!831578 (= res!566049 (= (h!17128 (t!22376 (toList!4521 lt!376807))) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!831579 () Bool)

(assert (=> b!831579 (= e!463760 (contains!4209 (t!22376 (t!22376 (toList!4521 lt!376807))) (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!106209 res!566050) b!831578))

(assert (= (and b!831578 (not res!566049)) b!831579))

(assert (=> d!106209 m!775371))

(declare-fun m!775573 () Bool)

(assert (=> d!106209 m!775573))

(declare-fun m!775575 () Bool)

(assert (=> b!831579 m!775575))

(assert (=> b!830337 d!106209))

(declare-fun d!106211 () Bool)

(assert (not d!106211))

(assert (=> b!830286 d!106211))

(declare-fun d!106213 () Bool)

(assert (=> d!106213 (= (isEmpty!659 lt!376824) (isEmpty!660 (toList!4521 lt!376824)))))

(declare-fun bs!23245 () Bool)

(assert (= bs!23245 d!106213))

(declare-fun m!775577 () Bool)

(assert (=> bs!23245 m!775577))

(assert (=> b!830290 d!106213))

(declare-fun b!831582 () Bool)

(declare-fun e!463763 () Option!420)

(assert (=> b!831582 (= e!463763 (getValueByKey!414 (t!22376 (t!22376 (toList!4521 lt!376807))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!831583 () Bool)

(assert (=> b!831583 (= e!463763 None!418)))

(declare-fun d!106215 () Bool)

(declare-fun c!90238 () Bool)

(assert (=> d!106215 (= c!90238 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376807))) (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376807)))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun e!463762 () Option!420)

(assert (=> d!106215 (= (getValueByKey!414 (t!22376 (toList!4521 lt!376807)) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) e!463762)))

(declare-fun b!831580 () Bool)

(assert (=> b!831580 (= e!463762 (Some!419 (_2!5097 (h!17128 (t!22376 (toList!4521 lt!376807))))))))

(declare-fun b!831581 () Bool)

(assert (=> b!831581 (= e!463762 e!463763)))

(declare-fun c!90239 () Bool)

(assert (=> b!831581 (= c!90239 (and ((_ is Cons!15999) (t!22376 (toList!4521 lt!376807))) (not (= (_1!5097 (h!17128 (t!22376 (toList!4521 lt!376807)))) (_1!5097 (tuple2!10175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))))

(assert (= (and d!106215 c!90238) b!831580))

(assert (= (and d!106215 (not c!90238)) b!831581))

(assert (= (and b!831581 c!90239) b!831582))

(assert (= (and b!831581 (not c!90239)) b!831583))

(declare-fun m!775579 () Bool)

(assert (=> b!831582 m!775579))

(assert (=> b!830493 d!106215))

(declare-fun condMapEmpty!24471 () Bool)

(declare-fun mapDefault!24471 () ValueCell!7188)

(assert (=> mapNonEmpty!24470 (= condMapEmpty!24471 (= mapRest!24470 ((as const (Array (_ BitVec 32) ValueCell!7188)) mapDefault!24471)))))

(declare-fun e!463764 () Bool)

(declare-fun mapRes!24471 () Bool)

(assert (=> mapNonEmpty!24470 (= tp!47288 (and e!463764 mapRes!24471))))

(declare-fun mapIsEmpty!24471 () Bool)

(assert (=> mapIsEmpty!24471 mapRes!24471))

(declare-fun b!831584 () Bool)

(declare-fun e!463765 () Bool)

(assert (=> b!831584 (= e!463765 tp_is_empty!15207)))

(declare-fun mapNonEmpty!24471 () Bool)

(declare-fun tp!47289 () Bool)

(assert (=> mapNonEmpty!24471 (= mapRes!24471 (and tp!47289 e!463765))))

(declare-fun mapKey!24471 () (_ BitVec 32))

(declare-fun mapRest!24471 () (Array (_ BitVec 32) ValueCell!7188))

(declare-fun mapValue!24471 () ValueCell!7188)

(assert (=> mapNonEmpty!24471 (= mapRest!24470 (store mapRest!24471 mapKey!24471 mapValue!24471))))

(declare-fun b!831585 () Bool)

(assert (=> b!831585 (= e!463764 tp_is_empty!15207)))

(assert (= (and mapNonEmpty!24470 condMapEmpty!24471) mapIsEmpty!24471))

(assert (= (and mapNonEmpty!24470 (not condMapEmpty!24471)) mapNonEmpty!24471))

(assert (= (and mapNonEmpty!24471 ((_ is ValueCellFull!7188) mapValue!24471)) b!831584))

(assert (= (and mapNonEmpty!24470 ((_ is ValueCellFull!7188) mapDefault!24471)) b!831585))

(declare-fun m!775581 () Bool)

(assert (=> mapNonEmpty!24471 m!775581))

(declare-fun b_lambda!11425 () Bool)

(assert (= b_lambda!11417 (or (and start!71512 b_free!13497) b_lambda!11425)))

(declare-fun b_lambda!11427 () Bool)

(assert (= b_lambda!11423 (or (and start!71512 b_free!13497) b_lambda!11427)))

(declare-fun b_lambda!11429 () Bool)

(assert (= b_lambda!11419 (or (and start!71512 b_free!13497) b_lambda!11429)))

(declare-fun b_lambda!11431 () Bool)

(assert (= b_lambda!11421 (or (and start!71512 b_free!13497) b_lambda!11431)))

(check-sat (not b!831060) (not b_lambda!11389) (not b!831332) (not b!831348) (not b!831045) (not b!830646) (not b!831021) (not d!105537) (not d!106155) (not b!831322) (not b!831253) (not b!830749) (not b!831376) (not d!105971) (not b!830728) (not b!831524) (not d!106197) (not b!831329) (not b!831571) (not d!105569) (not b_lambda!11427) (not d!105571) (not d!105863) (not b!831118) (not d!105795) (not b!830938) (not b!831340) (not d!106161) (not b!830958) (not d!105787) (not d!105991) (not b!831068) (not d!105671) (not d!105773) (not b!831509) (not d!106175) (not b!830974) (not b!831243) (not b!831349) (not b!831545) (not b!830878) (not b!831080) (not d!105901) (not d!105623) (not b!831537) (not b_lambda!11413) (not b!831521) (not b!830780) (not b!831197) (not b!831469) (not b!831458) (not b!831211) (not b!830667) (not b!831324) (not b!831425) (not d!105881) (not b!831134) (not d!105885) (not b!830686) (not d!105539) (not b!831166) (not b!831304) (not d!106213) (not b!831531) (not b!831423) (not b!831115) (not d!105855) (not b!830785) (not b!830750) (not b!831024) (not b!831490) (not b!830668) (not b_lambda!11409) (not d!105731) (not b!831497) (not b!831529) (not b!831487) (not b!830884) (not b!831093) (not b!831408) (not b!830665) (not d!105871) (not b!830626) (not b!831387) (not b_lambda!11399) (not d!105995) (not d!105753) (not b!831233) (not b!831264) (not d!106029) (not b!831437) (not d!105615) (not b!831164) (not b!830643) (not b!830683) (not bm!36287) (not d!106095) tp_is_empty!15207 (not bm!36333) (not b!830964) (not b!831435) (not b!831557) (not d!105523) (not b!831357) (not b!831352) (not d!105937) (not d!105541) (not b!830720) (not b!830781) (not d!105907) (not b!831034) (not b!830658) (not b!831455) (not d!105609) (not d!106191) (not b!830624) (not d!106137) (not b!831036) (not d!106125) (not b!831301) (not b!831255) (not b!831123) (not bm!36342) (not b!831420) (not b!831271) (not b!831229) (not d!105963) (not b!830992) (not b!831575) (not b!831546) (not b!830860) (not b!831257) (not d!105949) (not b!831165) (not d!105631) (not b!830701) (not b!831448) (not d!105857) (not b!831559) (not bm!36303) (not d!106139) (not d!105577) (not b!830742) (not bm!36291) (not b!830882) (not d!105785) (not b!831428) (not b!830961) (not b!830943) (not b!830659) (not b!831044) (not b_lambda!11391) (not d!106209) (not d!105549) (not b!830839) (not d!105765) (not b_next!13497) (not b!831103) (not d!105997) (not d!105651) (not d!105839) (not b!831214) (not d!105727) (not b!831183) (not b!831346) (not d!105543) (not b!831522) (not b!831139) (not d!106133) (not b!831258) (not b!830899) (not b!831245) (not b!831360) (not b!831309) (not d!106163) (not b!831000) (not d!105931) (not d!105821) (not d!105875) (not b!831538) (not b!831144) (not d!106099) (not b!830769) (not b!831579) (not b!830972) (not b!831393) (not bm!36345) (not b!831495) (not b!831440) (not b!830700) (not d!106149) (not b!831453) (not b!831569) (not d!106045) (not b!830952) (not b!831278) (not b!830724) (not b!831261) (not b!831174) (not b!831577) (not b!831507) (not b!831385) (not b!830832) (not b!831319) (not b!830976) (not d!106053) (not bm!36299) (not b!831121) (not b!830862) (not d!105721) (not b!831342) (not b!830941) (not d!106019) (not b!830637) (not b!830931) (not d!105573) (not d!105693) (not b!830857) (not d!105851) (not d!105745) (not b!830901) (not b_lambda!11431) (not b!831158) (not b!830772) (not d!105947) (not d!105715) (not b!830775) (not b!830849) (not b!830855) (not b!831189) (not d!106179) (not b!830731) (not b!831281) (not b!831528) (not b!831092) (not d!106065) (not d!105559) (not d!106119) (not d!106033) (not b!831515) (not d!106009) (not b!831395) (not b!830858) (not b!831016) (not b_lambda!11397) (not b_lambda!11415) (not d!106049) (not d!105711) (not d!106023) (not b!830802) (not b!831414) (not d!105775) (not b!831273) (not d!105737) (not d!105925) (not b!831161) (not b!831223) (not b!831084) (not bm!36314) (not b!831383) (not b!831247) (not b!830949) (not b!830808) (not d!105999) (not b!831513) (not b!830969) (not d!106147) (not b!830734) (not d!106071) (not b!831149) (not b!831002) (not b!831049) (not d!106105) (not b!830712) (not b!830770) (not d!106001) (not b!831452) (not d!106131) (not b!831504) (not bm!36348) (not d!106135) (not b!831573) (not bm!36320) (not b!831142) (not d!106121) (not b!831472) (not b!830752) (not b!830685) (not b!830705) (not b!831066) (not d!105645) (not d!105799) (not b!830835) (not d!105601) (not bm!36354) (not d!105595) (not b!830794) (not b!830634) (not d!105565) (not d!105697) (not b!831105) (not b!830773) (not b!831510) (not d!105981) (not b!831112) (not bm!36311) (not d!105867) (not b!830711) (not b!830995) (not d!105527) (not b!831042) (not b!831147) (not d!105763) (not d!105817) (not b!831012) b_and!22575 (not b!831170) (not b!830998) (not d!106011) (not b!831397) (not b!830688) (not b!831136) (not b!831208) (not b!831378) (not d!105779) (not b!831052) (not d!105625) (not d!105607) (not b!831488) (not b!830985) (not b!831438) (not d!105909) (not d!106185) (not b!830868) (not d!105945) (not d!105793) (not b!831047) (not b!831205) (not b!831203) (not d!105735) (not bm!36305) (not b!831235) (not b!831354) (not d!105561) (not d!105677) (not b!830763) (not d!105741) (not b!831392) (not b!831556) (not b!831403) (not b!831417) (not b!830691) (not bm!36323) (not d!105845) (not b!830632) (not b!831294) (not b!830640) (not b!830768) (not bm!36336) (not bm!36326) (not b!831145) (not bm!36330) (not b!831010) (not b!831442) (not d!106199) (not b!830893) (not b!830936) (not d!105977) (not d!105599) (not b!831181) (not d!105757) (not d!106043) (not b!831031) (not bm!36351) (not bm!36308) (not b!830990) (not b!831503) (not b!831078) (not b!831582) (not d!106077) (not b!830713) (not b!830796) (not b!831023) (not b!830971) (not b_lambda!11411) (not b!831236) (not d!106089) (not b!830842) (not b!830778) (not b!831172) (not b!831519) (not b!830984) (not b!830955) (not b!831250) (not bm!36289) (not b!831540) (not b!831291) (not b!830716) (not b!831567) (not b!831200) (not b!830880) (not b!830930) (not b!831307) (not b!830799) (not b!831212) (not b!830661) (not d!105679) (not d!106087) (not b!831411) (not d!106055) (not b!830698) (not d!105749) (not b!831450) (not b!831275) (not b!830741) (not b!831526) (not b!831075) (not b!831285) (not b!831372) (not d!106005) (not b!831175) (not d!105611) (not b!831317) (not b!831097) (not b!831297) (not b!831534) (not b!831085) (not d!105879) (not bm!36339) (not b!830765) (not b!831124) (not b!830760) (not b!831374) (not b!830744) (not b!831029) (not b!831412) (not b_lambda!11429) (not b!831484) (not d!105825) (not d!105643) (not b!830887) (not b!831026) (not b!831480) (not b!831518) (not b!831405) (not b!831054) (not d!105557) (not b!831128) (not b!830846) (not b!831430) (not b!830747) (not d!105809) (not b!831563) (not bm!36317) (not b!830837) (not mapNonEmpty!24471) (not b!830803) (not d!105629) (not b!830891) (not d!105617) (not b!831330) (not b_lambda!11425) (not b!831192) (not b!830852) (not d!105579) (not d!105663) (not b!831095) (not b!831432) (not b!831108) (not d!105783) (not b!831216) (not b!831137) (not d!106169) (not b!830654) (not b!831032) (not b!831292) (not d!105739) (not b!830928) (not d!105939) (not b_lambda!11395) (not b!830997) (not d!105911) (not b!831321) (not d!105781) (not b!831163) (not bm!36301) (not b!830736) (not b!831126) (not bm!36294) (not d!105635) (not d!106203) (not d!105743) (not b!830676) (not d!105983) (not b!831344) (not b!831266) (not d!105553) (not b!830764) (not d!106129) (not b!831087) (not b!831390) (not d!106021) (not b!831167) (not b!830660) (not b!831334) (not b!831362) (not b!831368) (not b!830766) (not b!831090) (not d!106171) (not b!831543) (not b!831176) (not d!106075) (not d!105811) (not b!830791) (not b!830889) (not d!105665) (not b!831548) (not d!105967) (not d!105873) (not b!830762) (not d!106027) (not b!831306) (not d!105575) (not d!105529) (not b!831380) (not b!831421) (not b!830695) (not b!831516) (not b!831550) (not d!106091) (not b!831186) (not b!831476) (not b!831219) (not b!830988) (not b!830673) (not b!831493) (not b!830829) (not b!830933) (not d!105717) (not b!830670) (not b!831268) (not d!105843) (not b!830850) (not b!831082) (not b!831178) (not d!106097) (not b!830827) (not d!105637) (not b!831155) (not d!106153) (not b!830978) (not b!831013) (not d!105847) (not b!831116) (not b!831195) (not d!105655) (not b!831511) (not bm!36297) (not d!105823) (not d!105621) (not d!105673) (not b!831019) (not b!831461) (not b_lambda!11393) (not d!105833) (not d!105921) (not b!830871) (not b!830656) (not b!831283) (not b!830680) (not b!830801) (not d!105703) (not b!831299) (not b!830783) (not d!105969) (not b!830693) (not b!831311) (not d!105733) (not d!105987) (not d!105755) (not d!105593) (not b!831008) (not b!831280) (not b!831370) (not d!105869) (not bm!36328) (not b!831239) (not b!831505) (not b!831463) (not b!831226) (not b!831071) (not b!831327) (not b!830739) (not d!106083) (not d!105699) (not b!831231) (not d!106177) (not b!830648) (not b!830662) (not d!106181) (not b!830875) (not b!831173) (not b!830967) (not b!831057) (not d!105961) (not d!106151) (not d!105555) (not b!831242) (not b!831491) (not b!830754) (not b!831221) (not d!105789) (not b!830939) (not b!830703) (not b!830733))
(check-sat b_and!22575 (not b_next!13497))
