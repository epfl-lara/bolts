; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70270 () Bool)

(assert start!70270)

(declare-fun b_free!12639 () Bool)

(declare-fun b_next!12639 () Bool)

(assert (=> start!70270 (= b_free!12639 (not b_next!12639))))

(declare-fun tp!44637 () Bool)

(declare-fun b_and!21445 () Bool)

(assert (=> start!70270 (= tp!44637 b_and!21445)))

(declare-fun b!815957 () Bool)

(declare-fun res!557247 () Bool)

(declare-fun e!452603 () Bool)

(assert (=> b!815957 (=> res!557247 e!452603)))

(declare-datatypes ((V!24133 0))(
  ( (V!24134 (val!7222 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24133)

(declare-datatypes ((array!44878 0))(
  ( (array!44879 (arr!21493 (Array (_ BitVec 32) (_ BitVec 64))) (size!21914 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44878)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24133)

(declare-datatypes ((ValueCell!6759 0))(
  ( (ValueCellFull!6759 (v!9645 V!24133)) (EmptyCell!6759) )
))
(declare-datatypes ((array!44880 0))(
  ( (array!44881 (arr!21494 (Array (_ BitVec 32) ValueCell!6759)) (size!21915 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44880)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!24133)

(declare-datatypes ((tuple2!9492 0))(
  ( (tuple2!9493 (_1!4756 (_ BitVec 64)) (_2!4756 V!24133)) )
))
(declare-datatypes ((List!15360 0))(
  ( (Nil!15357) (Cons!15356 (h!16485 tuple2!9492) (t!21689 List!15360)) )
))
(declare-datatypes ((ListLongMap!8329 0))(
  ( (ListLongMap!8330 (toList!4180 List!15360)) )
))
(declare-fun +!1767 (ListLongMap!8329 tuple2!9492) ListLongMap!8329)

(declare-fun getCurrentListMap!2368 (array!44878 array!44880 (_ BitVec 32) (_ BitVec 32) V!24133 V!24133 (_ BitVec 32) Int) ListLongMap!8329)

(assert (=> b!815957 (= res!557247 (not (= (+!1767 (getCurrentListMap!2368 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (getCurrentListMap!2368 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))))

(declare-fun b!815958 () Bool)

(declare-fun e!452608 () Bool)

(assert (=> b!815958 (= e!452608 (not e!452603))))

(declare-fun res!557251 () Bool)

(assert (=> b!815958 (=> res!557251 e!452603)))

(assert (=> b!815958 (= res!557251 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365397 () ListLongMap!8329)

(declare-fun lt!365398 () ListLongMap!8329)

(assert (=> b!815958 (= lt!365397 lt!365398)))

(declare-datatypes ((Unit!27816 0))(
  ( (Unit!27817) )
))
(declare-fun lt!365396 () Unit!27816)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!345 (array!44878 array!44880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24133 V!24133 V!24133 V!24133 (_ BitVec 32) Int) Unit!27816)

(assert (=> b!815958 (= lt!365396 (lemmaNoChangeToArrayThenSameMapNoExtras!345 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2229 (array!44878 array!44880 (_ BitVec 32) (_ BitVec 32) V!24133 V!24133 (_ BitVec 32) Int) ListLongMap!8329)

(assert (=> b!815958 (= lt!365398 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815958 (= lt!365397 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815959 () Bool)

(declare-fun res!557250 () Bool)

(assert (=> b!815959 (=> (not res!557250) (not e!452608))))

(assert (=> b!815959 (= res!557250 (and (= (size!21915 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21914 _keys!976) (size!21915 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815960 () Bool)

(declare-fun res!557249 () Bool)

(assert (=> b!815960 (=> (not res!557249) (not e!452608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44878 (_ BitVec 32)) Bool)

(assert (=> b!815960 (= res!557249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23110 () Bool)

(declare-fun mapRes!23110 () Bool)

(declare-fun tp!44638 () Bool)

(declare-fun e!452604 () Bool)

(assert (=> mapNonEmpty!23110 (= mapRes!23110 (and tp!44638 e!452604))))

(declare-fun mapRest!23110 () (Array (_ BitVec 32) ValueCell!6759))

(declare-fun mapValue!23110 () ValueCell!6759)

(declare-fun mapKey!23110 () (_ BitVec 32))

(assert (=> mapNonEmpty!23110 (= (arr!21494 _values!788) (store mapRest!23110 mapKey!23110 mapValue!23110))))

(declare-fun b!815961 () Bool)

(declare-fun tp_is_empty!14349 () Bool)

(assert (=> b!815961 (= e!452604 tp_is_empty!14349)))

(declare-fun b!815962 () Bool)

(declare-fun e!452606 () Bool)

(declare-fun e!452605 () Bool)

(assert (=> b!815962 (= e!452606 (and e!452605 mapRes!23110))))

(declare-fun condMapEmpty!23110 () Bool)

(declare-fun mapDefault!23110 () ValueCell!6759)

(assert (=> b!815962 (= condMapEmpty!23110 (= (arr!21494 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6759)) mapDefault!23110)))))

(declare-fun mapIsEmpty!23110 () Bool)

(assert (=> mapIsEmpty!23110 mapRes!23110))

(declare-fun b!815963 () Bool)

(declare-fun res!557246 () Bool)

(assert (=> b!815963 (=> (not res!557246) (not e!452608))))

(declare-datatypes ((List!15361 0))(
  ( (Nil!15358) (Cons!15357 (h!16486 (_ BitVec 64)) (t!21690 List!15361)) )
))
(declare-fun arrayNoDuplicates!0 (array!44878 (_ BitVec 32) List!15361) Bool)

(assert (=> b!815963 (= res!557246 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15358))))

(declare-fun res!557248 () Bool)

(assert (=> start!70270 (=> (not res!557248) (not e!452608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70270 (= res!557248 (validMask!0 mask!1312))))

(assert (=> start!70270 e!452608))

(assert (=> start!70270 tp_is_empty!14349))

(declare-fun array_inv!17175 (array!44878) Bool)

(assert (=> start!70270 (array_inv!17175 _keys!976)))

(assert (=> start!70270 true))

(declare-fun array_inv!17176 (array!44880) Bool)

(assert (=> start!70270 (and (array_inv!17176 _values!788) e!452606)))

(assert (=> start!70270 tp!44637))

(declare-fun b!815964 () Bool)

(assert (=> b!815964 (= e!452605 tp_is_empty!14349)))

(declare-fun b!815965 () Bool)

(assert (=> b!815965 (= e!452603 (bvsle #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(assert (= (and start!70270 res!557248) b!815959))

(assert (= (and b!815959 res!557250) b!815960))

(assert (= (and b!815960 res!557249) b!815963))

(assert (= (and b!815963 res!557246) b!815958))

(assert (= (and b!815958 (not res!557251)) b!815957))

(assert (= (and b!815957 (not res!557247)) b!815965))

(assert (= (and b!815962 condMapEmpty!23110) mapIsEmpty!23110))

(assert (= (and b!815962 (not condMapEmpty!23110)) mapNonEmpty!23110))

(get-info :version)

(assert (= (and mapNonEmpty!23110 ((_ is ValueCellFull!6759) mapValue!23110)) b!815961))

(assert (= (and b!815962 ((_ is ValueCellFull!6759) mapDefault!23110)) b!815964))

(assert (= start!70270 b!815962))

(declare-fun m!757691 () Bool)

(assert (=> b!815957 m!757691))

(assert (=> b!815957 m!757691))

(declare-fun m!757693 () Bool)

(assert (=> b!815957 m!757693))

(declare-fun m!757695 () Bool)

(assert (=> b!815957 m!757695))

(declare-fun m!757697 () Bool)

(assert (=> b!815958 m!757697))

(declare-fun m!757699 () Bool)

(assert (=> b!815958 m!757699))

(declare-fun m!757701 () Bool)

(assert (=> b!815958 m!757701))

(declare-fun m!757703 () Bool)

(assert (=> mapNonEmpty!23110 m!757703))

(declare-fun m!757705 () Bool)

(assert (=> b!815960 m!757705))

(declare-fun m!757707 () Bool)

(assert (=> b!815963 m!757707))

(declare-fun m!757709 () Bool)

(assert (=> start!70270 m!757709))

(declare-fun m!757711 () Bool)

(assert (=> start!70270 m!757711))

(declare-fun m!757713 () Bool)

(assert (=> start!70270 m!757713))

(check-sat (not b!815957) (not b!815958) b_and!21445 (not b!815960) (not start!70270) (not mapNonEmpty!23110) (not b_next!12639) (not b!815963) tp_is_empty!14349)
(check-sat b_and!21445 (not b_next!12639))
(get-model)

(declare-fun d!104425 () Bool)

(declare-fun e!452629 () Bool)

(assert (=> d!104425 e!452629))

(declare-fun res!557274 () Bool)

(assert (=> d!104425 (=> (not res!557274) (not e!452629))))

(declare-fun lt!365416 () ListLongMap!8329)

(declare-fun contains!4149 (ListLongMap!8329 (_ BitVec 64)) Bool)

(assert (=> d!104425 (= res!557274 (contains!4149 lt!365416 (_1!4756 (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!365417 () List!15360)

(assert (=> d!104425 (= lt!365416 (ListLongMap!8330 lt!365417))))

(declare-fun lt!365419 () Unit!27816)

(declare-fun lt!365418 () Unit!27816)

(assert (=> d!104425 (= lt!365419 lt!365418)))

(declare-datatypes ((Option!405 0))(
  ( (Some!404 (v!9647 V!24133)) (None!403) )
))
(declare-fun getValueByKey!399 (List!15360 (_ BitVec 64)) Option!405)

(assert (=> d!104425 (= (getValueByKey!399 lt!365417 (_1!4756 (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!404 (_2!4756 (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!215 (List!15360 (_ BitVec 64) V!24133) Unit!27816)

(assert (=> d!104425 (= lt!365418 (lemmaContainsTupThenGetReturnValue!215 lt!365417 (_1!4756 (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!4756 (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun insertStrictlySorted!253 (List!15360 (_ BitVec 64) V!24133) List!15360)

(assert (=> d!104425 (= lt!365417 (insertStrictlySorted!253 (toList!4180 (getCurrentListMap!2368 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796)) (_1!4756 (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!4756 (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!104425 (= (+!1767 (getCurrentListMap!2368 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!365416)))

(declare-fun b!815997 () Bool)

(declare-fun res!557275 () Bool)

(assert (=> b!815997 (=> (not res!557275) (not e!452629))))

(assert (=> b!815997 (= res!557275 (= (getValueByKey!399 (toList!4180 lt!365416) (_1!4756 (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!404 (_2!4756 (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!815998 () Bool)

(declare-fun contains!4150 (List!15360 tuple2!9492) Bool)

(assert (=> b!815998 (= e!452629 (contains!4150 (toList!4180 lt!365416) (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!104425 res!557274) b!815997))

(assert (= (and b!815997 res!557275) b!815998))

(declare-fun m!757739 () Bool)

(assert (=> d!104425 m!757739))

(declare-fun m!757741 () Bool)

(assert (=> d!104425 m!757741))

(declare-fun m!757743 () Bool)

(assert (=> d!104425 m!757743))

(declare-fun m!757745 () Bool)

(assert (=> d!104425 m!757745))

(declare-fun m!757747 () Bool)

(assert (=> b!815997 m!757747))

(declare-fun m!757749 () Bool)

(assert (=> b!815998 m!757749))

(assert (=> b!815957 d!104425))

(declare-fun b!816042 () Bool)

(declare-fun e!452667 () Bool)

(declare-fun call!35540 () Bool)

(assert (=> b!816042 (= e!452667 (not call!35540))))

(declare-fun b!816043 () Bool)

(declare-fun e!452668 () ListLongMap!8329)

(declare-fun call!35534 () ListLongMap!8329)

(assert (=> b!816043 (= e!452668 call!35534)))

(declare-fun b!816044 () Bool)

(declare-fun e!452656 () Bool)

(declare-fun lt!365478 () ListLongMap!8329)

(declare-fun apply!350 (ListLongMap!8329 (_ BitVec 64)) V!24133)

(assert (=> b!816044 (= e!452656 (= (apply!350 lt!365478 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!816045 () Bool)

(declare-fun e!452665 () ListLongMap!8329)

(assert (=> b!816045 (= e!452665 e!452668)))

(declare-fun c!88896 () Bool)

(assert (=> b!816045 (= c!88896 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!816046 () Bool)

(declare-fun e!452666 () Unit!27816)

(declare-fun lt!365470 () Unit!27816)

(assert (=> b!816046 (= e!452666 lt!365470)))

(declare-fun lt!365464 () ListLongMap!8329)

(assert (=> b!816046 (= lt!365464 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365469 () (_ BitVec 64))

(assert (=> b!816046 (= lt!365469 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365480 () (_ BitVec 64))

(assert (=> b!816046 (= lt!365480 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!365471 () Unit!27816)

(declare-fun addStillContains!305 (ListLongMap!8329 (_ BitVec 64) V!24133 (_ BitVec 64)) Unit!27816)

(assert (=> b!816046 (= lt!365471 (addStillContains!305 lt!365464 lt!365469 zeroValueBefore!34 lt!365480))))

(assert (=> b!816046 (contains!4149 (+!1767 lt!365464 (tuple2!9493 lt!365469 zeroValueBefore!34)) lt!365480)))

(declare-fun lt!365474 () Unit!27816)

(assert (=> b!816046 (= lt!365474 lt!365471)))

(declare-fun lt!365484 () ListLongMap!8329)

(assert (=> b!816046 (= lt!365484 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365479 () (_ BitVec 64))

(assert (=> b!816046 (= lt!365479 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365476 () (_ BitVec 64))

(assert (=> b!816046 (= lt!365476 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!365465 () Unit!27816)

(declare-fun addApplyDifferent!305 (ListLongMap!8329 (_ BitVec 64) V!24133 (_ BitVec 64)) Unit!27816)

(assert (=> b!816046 (= lt!365465 (addApplyDifferent!305 lt!365484 lt!365479 minValue!754 lt!365476))))

(assert (=> b!816046 (= (apply!350 (+!1767 lt!365484 (tuple2!9493 lt!365479 minValue!754)) lt!365476) (apply!350 lt!365484 lt!365476))))

(declare-fun lt!365477 () Unit!27816)

(assert (=> b!816046 (= lt!365477 lt!365465)))

(declare-fun lt!365483 () ListLongMap!8329)

(assert (=> b!816046 (= lt!365483 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365468 () (_ BitVec 64))

(assert (=> b!816046 (= lt!365468 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365485 () (_ BitVec 64))

(assert (=> b!816046 (= lt!365485 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!365482 () Unit!27816)

(assert (=> b!816046 (= lt!365482 (addApplyDifferent!305 lt!365483 lt!365468 zeroValueBefore!34 lt!365485))))

(assert (=> b!816046 (= (apply!350 (+!1767 lt!365483 (tuple2!9493 lt!365468 zeroValueBefore!34)) lt!365485) (apply!350 lt!365483 lt!365485))))

(declare-fun lt!365473 () Unit!27816)

(assert (=> b!816046 (= lt!365473 lt!365482)))

(declare-fun lt!365467 () ListLongMap!8329)

(assert (=> b!816046 (= lt!365467 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365466 () (_ BitVec 64))

(assert (=> b!816046 (= lt!365466 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365481 () (_ BitVec 64))

(assert (=> b!816046 (= lt!365481 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!816046 (= lt!365470 (addApplyDifferent!305 lt!365467 lt!365466 minValue!754 lt!365481))))

(assert (=> b!816046 (= (apply!350 (+!1767 lt!365467 (tuple2!9493 lt!365466 minValue!754)) lt!365481) (apply!350 lt!365467 lt!365481))))

(declare-fun call!35538 () ListLongMap!8329)

(declare-fun call!35537 () ListLongMap!8329)

(declare-fun call!35539 () ListLongMap!8329)

(declare-fun call!35535 () ListLongMap!8329)

(declare-fun c!88898 () Bool)

(declare-fun bm!35531 () Bool)

(assert (=> bm!35531 (= call!35539 (+!1767 (ite c!88898 call!35535 (ite c!88896 call!35537 call!35538)) (ite (or c!88898 c!88896) (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!9493 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!816047 () Bool)

(declare-fun e!452664 () Bool)

(assert (=> b!816047 (= e!452667 e!452664)))

(declare-fun res!557300 () Bool)

(assert (=> b!816047 (= res!557300 call!35540)))

(assert (=> b!816047 (=> (not res!557300) (not e!452664))))

(declare-fun b!816048 () Bool)

(declare-fun e!452660 () Bool)

(declare-fun call!35536 () Bool)

(assert (=> b!816048 (= e!452660 (not call!35536))))

(declare-fun b!816049 () Bool)

(declare-fun e!452663 () Bool)

(declare-fun e!452659 () Bool)

(assert (=> b!816049 (= e!452663 e!452659)))

(declare-fun res!557297 () Bool)

(assert (=> b!816049 (=> (not res!557297) (not e!452659))))

(assert (=> b!816049 (= res!557297 (contains!4149 lt!365478 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816049 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun bm!35532 () Bool)

(assert (=> bm!35532 (= call!35538 call!35537)))

(declare-fun b!816050 () Bool)

(assert (=> b!816050 (= e!452664 (= (apply!350 lt!365478 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!816041 () Bool)

(declare-fun e!452658 () ListLongMap!8329)

(assert (=> b!816041 (= e!452658 call!35538)))

(declare-fun d!104427 () Bool)

(declare-fun e!452657 () Bool)

(assert (=> d!104427 e!452657))

(declare-fun res!557295 () Bool)

(assert (=> d!104427 (=> (not res!557295) (not e!452657))))

(assert (=> d!104427 (= res!557295 (or (bvsge #b00000000000000000000000000000000 (size!21914 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))))

(declare-fun lt!365475 () ListLongMap!8329)

(assert (=> d!104427 (= lt!365478 lt!365475)))

(declare-fun lt!365472 () Unit!27816)

(assert (=> d!104427 (= lt!365472 e!452666)))

(declare-fun c!88897 () Bool)

(declare-fun e!452662 () Bool)

(assert (=> d!104427 (= c!88897 e!452662)))

(declare-fun res!557298 () Bool)

(assert (=> d!104427 (=> (not res!557298) (not e!452662))))

(assert (=> d!104427 (= res!557298 (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(assert (=> d!104427 (= lt!365475 e!452665)))

(assert (=> d!104427 (= c!88898 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104427 (validMask!0 mask!1312)))

(assert (=> d!104427 (= (getCurrentListMap!2368 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!365478)))

(declare-fun bm!35533 () Bool)

(assert (=> bm!35533 (= call!35534 call!35539)))

(declare-fun b!816051 () Bool)

(declare-fun get!11514 (ValueCell!6759 V!24133) V!24133)

(declare-fun dynLambda!960 (Int (_ BitVec 64)) V!24133)

(assert (=> b!816051 (= e!452659 (= (apply!350 lt!365478 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)) (get!11514 (select (arr!21494 _values!788) #b00000000000000000000000000000000) (dynLambda!960 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!816051 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21915 _values!788)))))

(assert (=> b!816051 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun b!816052 () Bool)

(declare-fun e!452661 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!816052 (= e!452661 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816053 () Bool)

(declare-fun c!88901 () Bool)

(assert (=> b!816053 (= c!88901 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!816053 (= e!452668 e!452658)))

(declare-fun b!816054 () Bool)

(declare-fun Unit!27818 () Unit!27816)

(assert (=> b!816054 (= e!452666 Unit!27818)))

(declare-fun bm!35534 () Bool)

(assert (=> bm!35534 (= call!35535 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816055 () Bool)

(assert (=> b!816055 (= e!452665 (+!1767 call!35539 (tuple2!9493 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!35535 () Bool)

(assert (=> bm!35535 (= call!35536 (contains!4149 lt!365478 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!816056 () Bool)

(declare-fun res!557302 () Bool)

(assert (=> b!816056 (=> (not res!557302) (not e!452657))))

(assert (=> b!816056 (= res!557302 e!452660)))

(declare-fun c!88899 () Bool)

(assert (=> b!816056 (= c!88899 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!816057 () Bool)

(assert (=> b!816057 (= e!452657 e!452667)))

(declare-fun c!88900 () Bool)

(assert (=> b!816057 (= c!88900 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!816058 () Bool)

(assert (=> b!816058 (= e!452658 call!35534)))

(declare-fun bm!35536 () Bool)

(assert (=> bm!35536 (= call!35537 call!35535)))

(declare-fun b!816059 () Bool)

(assert (=> b!816059 (= e!452660 e!452656)))

(declare-fun res!557299 () Bool)

(assert (=> b!816059 (= res!557299 call!35536)))

(assert (=> b!816059 (=> (not res!557299) (not e!452656))))

(declare-fun b!816060 () Bool)

(declare-fun res!557294 () Bool)

(assert (=> b!816060 (=> (not res!557294) (not e!452657))))

(assert (=> b!816060 (= res!557294 e!452663)))

(declare-fun res!557296 () Bool)

(assert (=> b!816060 (=> res!557296 e!452663)))

(assert (=> b!816060 (= res!557296 (not e!452661))))

(declare-fun res!557301 () Bool)

(assert (=> b!816060 (=> (not res!557301) (not e!452661))))

(assert (=> b!816060 (= res!557301 (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun bm!35537 () Bool)

(assert (=> bm!35537 (= call!35540 (contains!4149 lt!365478 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!816061 () Bool)

(assert (=> b!816061 (= e!452662 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104427 c!88898) b!816055))

(assert (= (and d!104427 (not c!88898)) b!816045))

(assert (= (and b!816045 c!88896) b!816043))

(assert (= (and b!816045 (not c!88896)) b!816053))

(assert (= (and b!816053 c!88901) b!816058))

(assert (= (and b!816053 (not c!88901)) b!816041))

(assert (= (or b!816058 b!816041) bm!35532))

(assert (= (or b!816043 bm!35532) bm!35536))

(assert (= (or b!816043 b!816058) bm!35533))

(assert (= (or b!816055 bm!35536) bm!35534))

(assert (= (or b!816055 bm!35533) bm!35531))

(assert (= (and d!104427 res!557298) b!816061))

(assert (= (and d!104427 c!88897) b!816046))

(assert (= (and d!104427 (not c!88897)) b!816054))

(assert (= (and d!104427 res!557295) b!816060))

(assert (= (and b!816060 res!557301) b!816052))

(assert (= (and b!816060 (not res!557296)) b!816049))

(assert (= (and b!816049 res!557297) b!816051))

(assert (= (and b!816060 res!557294) b!816056))

(assert (= (and b!816056 c!88899) b!816059))

(assert (= (and b!816056 (not c!88899)) b!816048))

(assert (= (and b!816059 res!557299) b!816044))

(assert (= (or b!816059 b!816048) bm!35535))

(assert (= (and b!816056 res!557302) b!816057))

(assert (= (and b!816057 c!88900) b!816047))

(assert (= (and b!816057 (not c!88900)) b!816042))

(assert (= (and b!816047 res!557300) b!816050))

(assert (= (or b!816047 b!816042) bm!35537))

(declare-fun b_lambda!10893 () Bool)

(assert (=> (not b_lambda!10893) (not b!816051)))

(declare-fun t!21692 () Bool)

(declare-fun tb!4189 () Bool)

(assert (=> (and start!70270 (= defaultEntry!796 defaultEntry!796) t!21692) tb!4189))

(declare-fun result!7891 () Bool)

(assert (=> tb!4189 (= result!7891 tp_is_empty!14349)))

(assert (=> b!816051 t!21692))

(declare-fun b_and!21449 () Bool)

(assert (= b_and!21445 (and (=> t!21692 result!7891) b_and!21449)))

(declare-fun m!757751 () Bool)

(assert (=> b!816055 m!757751))

(assert (=> bm!35534 m!757701))

(declare-fun m!757753 () Bool)

(assert (=> b!816049 m!757753))

(assert (=> b!816049 m!757753))

(declare-fun m!757755 () Bool)

(assert (=> b!816049 m!757755))

(assert (=> b!816052 m!757753))

(assert (=> b!816052 m!757753))

(declare-fun m!757757 () Bool)

(assert (=> b!816052 m!757757))

(declare-fun m!757759 () Bool)

(assert (=> b!816046 m!757759))

(declare-fun m!757761 () Bool)

(assert (=> b!816046 m!757761))

(declare-fun m!757763 () Bool)

(assert (=> b!816046 m!757763))

(declare-fun m!757765 () Bool)

(assert (=> b!816046 m!757765))

(declare-fun m!757767 () Bool)

(assert (=> b!816046 m!757767))

(declare-fun m!757769 () Bool)

(assert (=> b!816046 m!757769))

(assert (=> b!816046 m!757753))

(declare-fun m!757771 () Bool)

(assert (=> b!816046 m!757771))

(declare-fun m!757773 () Bool)

(assert (=> b!816046 m!757773))

(assert (=> b!816046 m!757701))

(assert (=> b!816046 m!757763))

(declare-fun m!757775 () Bool)

(assert (=> b!816046 m!757775))

(declare-fun m!757777 () Bool)

(assert (=> b!816046 m!757777))

(assert (=> b!816046 m!757767))

(declare-fun m!757779 () Bool)

(assert (=> b!816046 m!757779))

(assert (=> b!816046 m!757769))

(declare-fun m!757781 () Bool)

(assert (=> b!816046 m!757781))

(declare-fun m!757783 () Bool)

(assert (=> b!816046 m!757783))

(assert (=> b!816046 m!757771))

(declare-fun m!757785 () Bool)

(assert (=> b!816046 m!757785))

(declare-fun m!757787 () Bool)

(assert (=> b!816046 m!757787))

(declare-fun m!757789 () Bool)

(assert (=> b!816050 m!757789))

(assert (=> b!816061 m!757753))

(assert (=> b!816061 m!757753))

(assert (=> b!816061 m!757757))

(assert (=> b!816051 m!757753))

(declare-fun m!757791 () Bool)

(assert (=> b!816051 m!757791))

(declare-fun m!757793 () Bool)

(assert (=> b!816051 m!757793))

(declare-fun m!757795 () Bool)

(assert (=> b!816051 m!757795))

(assert (=> b!816051 m!757793))

(declare-fun m!757797 () Bool)

(assert (=> b!816051 m!757797))

(assert (=> b!816051 m!757753))

(assert (=> b!816051 m!757795))

(declare-fun m!757799 () Bool)

(assert (=> bm!35531 m!757799))

(declare-fun m!757801 () Bool)

(assert (=> bm!35535 m!757801))

(declare-fun m!757803 () Bool)

(assert (=> bm!35537 m!757803))

(declare-fun m!757805 () Bool)

(assert (=> b!816044 m!757805))

(assert (=> d!104427 m!757709))

(assert (=> b!815957 d!104427))

(declare-fun b!816065 () Bool)

(declare-fun e!452680 () Bool)

(declare-fun call!35547 () Bool)

(assert (=> b!816065 (= e!452680 (not call!35547))))

(declare-fun b!816066 () Bool)

(declare-fun e!452681 () ListLongMap!8329)

(declare-fun call!35541 () ListLongMap!8329)

(assert (=> b!816066 (= e!452681 call!35541)))

(declare-fun b!816067 () Bool)

(declare-fun e!452669 () Bool)

(declare-fun lt!365500 () ListLongMap!8329)

(assert (=> b!816067 (= e!452669 (= (apply!350 lt!365500 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!816068 () Bool)

(declare-fun e!452678 () ListLongMap!8329)

(assert (=> b!816068 (= e!452678 e!452681)))

(declare-fun c!88902 () Bool)

(assert (=> b!816068 (= c!88902 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!816069 () Bool)

(declare-fun e!452679 () Unit!27816)

(declare-fun lt!365492 () Unit!27816)

(assert (=> b!816069 (= e!452679 lt!365492)))

(declare-fun lt!365486 () ListLongMap!8329)

(assert (=> b!816069 (= lt!365486 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365491 () (_ BitVec 64))

(assert (=> b!816069 (= lt!365491 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365502 () (_ BitVec 64))

(assert (=> b!816069 (= lt!365502 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!365493 () Unit!27816)

(assert (=> b!816069 (= lt!365493 (addStillContains!305 lt!365486 lt!365491 zeroValueAfter!34 lt!365502))))

(assert (=> b!816069 (contains!4149 (+!1767 lt!365486 (tuple2!9493 lt!365491 zeroValueAfter!34)) lt!365502)))

(declare-fun lt!365496 () Unit!27816)

(assert (=> b!816069 (= lt!365496 lt!365493)))

(declare-fun lt!365506 () ListLongMap!8329)

(assert (=> b!816069 (= lt!365506 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365501 () (_ BitVec 64))

(assert (=> b!816069 (= lt!365501 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365498 () (_ BitVec 64))

(assert (=> b!816069 (= lt!365498 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!365487 () Unit!27816)

(assert (=> b!816069 (= lt!365487 (addApplyDifferent!305 lt!365506 lt!365501 minValue!754 lt!365498))))

(assert (=> b!816069 (= (apply!350 (+!1767 lt!365506 (tuple2!9493 lt!365501 minValue!754)) lt!365498) (apply!350 lt!365506 lt!365498))))

(declare-fun lt!365499 () Unit!27816)

(assert (=> b!816069 (= lt!365499 lt!365487)))

(declare-fun lt!365505 () ListLongMap!8329)

(assert (=> b!816069 (= lt!365505 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365490 () (_ BitVec 64))

(assert (=> b!816069 (= lt!365490 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365507 () (_ BitVec 64))

(assert (=> b!816069 (= lt!365507 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!365504 () Unit!27816)

(assert (=> b!816069 (= lt!365504 (addApplyDifferent!305 lt!365505 lt!365490 zeroValueAfter!34 lt!365507))))

(assert (=> b!816069 (= (apply!350 (+!1767 lt!365505 (tuple2!9493 lt!365490 zeroValueAfter!34)) lt!365507) (apply!350 lt!365505 lt!365507))))

(declare-fun lt!365495 () Unit!27816)

(assert (=> b!816069 (= lt!365495 lt!365504)))

(declare-fun lt!365489 () ListLongMap!8329)

(assert (=> b!816069 (= lt!365489 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365488 () (_ BitVec 64))

(assert (=> b!816069 (= lt!365488 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365503 () (_ BitVec 64))

(assert (=> b!816069 (= lt!365503 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!816069 (= lt!365492 (addApplyDifferent!305 lt!365489 lt!365488 minValue!754 lt!365503))))

(assert (=> b!816069 (= (apply!350 (+!1767 lt!365489 (tuple2!9493 lt!365488 minValue!754)) lt!365503) (apply!350 lt!365489 lt!365503))))

(declare-fun c!88904 () Bool)

(declare-fun bm!35538 () Bool)

(declare-fun call!35545 () ListLongMap!8329)

(declare-fun call!35546 () ListLongMap!8329)

(declare-fun call!35542 () ListLongMap!8329)

(declare-fun call!35544 () ListLongMap!8329)

(assert (=> bm!35538 (= call!35546 (+!1767 (ite c!88904 call!35542 (ite c!88902 call!35544 call!35545)) (ite (or c!88904 c!88902) (tuple2!9493 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!9493 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!816070 () Bool)

(declare-fun e!452677 () Bool)

(assert (=> b!816070 (= e!452680 e!452677)))

(declare-fun res!557309 () Bool)

(assert (=> b!816070 (= res!557309 call!35547)))

(assert (=> b!816070 (=> (not res!557309) (not e!452677))))

(declare-fun b!816071 () Bool)

(declare-fun e!452673 () Bool)

(declare-fun call!35543 () Bool)

(assert (=> b!816071 (= e!452673 (not call!35543))))

(declare-fun b!816072 () Bool)

(declare-fun e!452676 () Bool)

(declare-fun e!452672 () Bool)

(assert (=> b!816072 (= e!452676 e!452672)))

(declare-fun res!557306 () Bool)

(assert (=> b!816072 (=> (not res!557306) (not e!452672))))

(assert (=> b!816072 (= res!557306 (contains!4149 lt!365500 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816072 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun bm!35539 () Bool)

(assert (=> bm!35539 (= call!35545 call!35544)))

(declare-fun b!816073 () Bool)

(assert (=> b!816073 (= e!452677 (= (apply!350 lt!365500 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!816064 () Bool)

(declare-fun e!452671 () ListLongMap!8329)

(assert (=> b!816064 (= e!452671 call!35545)))

(declare-fun d!104429 () Bool)

(declare-fun e!452670 () Bool)

(assert (=> d!104429 e!452670))

(declare-fun res!557304 () Bool)

(assert (=> d!104429 (=> (not res!557304) (not e!452670))))

(assert (=> d!104429 (= res!557304 (or (bvsge #b00000000000000000000000000000000 (size!21914 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))))

(declare-fun lt!365497 () ListLongMap!8329)

(assert (=> d!104429 (= lt!365500 lt!365497)))

(declare-fun lt!365494 () Unit!27816)

(assert (=> d!104429 (= lt!365494 e!452679)))

(declare-fun c!88903 () Bool)

(declare-fun e!452675 () Bool)

(assert (=> d!104429 (= c!88903 e!452675)))

(declare-fun res!557307 () Bool)

(assert (=> d!104429 (=> (not res!557307) (not e!452675))))

(assert (=> d!104429 (= res!557307 (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(assert (=> d!104429 (= lt!365497 e!452678)))

(assert (=> d!104429 (= c!88904 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104429 (validMask!0 mask!1312)))

(assert (=> d!104429 (= (getCurrentListMap!2368 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!365500)))

(declare-fun bm!35540 () Bool)

(assert (=> bm!35540 (= call!35541 call!35546)))

(declare-fun b!816074 () Bool)

(assert (=> b!816074 (= e!452672 (= (apply!350 lt!365500 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)) (get!11514 (select (arr!21494 _values!788) #b00000000000000000000000000000000) (dynLambda!960 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!816074 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21915 _values!788)))))

(assert (=> b!816074 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun b!816075 () Bool)

(declare-fun e!452674 () Bool)

(assert (=> b!816075 (= e!452674 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816076 () Bool)

(declare-fun c!88907 () Bool)

(assert (=> b!816076 (= c!88907 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!816076 (= e!452681 e!452671)))

(declare-fun b!816077 () Bool)

(declare-fun Unit!27819 () Unit!27816)

(assert (=> b!816077 (= e!452679 Unit!27819)))

(declare-fun bm!35541 () Bool)

(assert (=> bm!35541 (= call!35542 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816078 () Bool)

(assert (=> b!816078 (= e!452678 (+!1767 call!35546 (tuple2!9493 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!35542 () Bool)

(assert (=> bm!35542 (= call!35543 (contains!4149 lt!365500 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!816079 () Bool)

(declare-fun res!557311 () Bool)

(assert (=> b!816079 (=> (not res!557311) (not e!452670))))

(assert (=> b!816079 (= res!557311 e!452673)))

(declare-fun c!88905 () Bool)

(assert (=> b!816079 (= c!88905 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!816080 () Bool)

(assert (=> b!816080 (= e!452670 e!452680)))

(declare-fun c!88906 () Bool)

(assert (=> b!816080 (= c!88906 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!816081 () Bool)

(assert (=> b!816081 (= e!452671 call!35541)))

(declare-fun bm!35543 () Bool)

(assert (=> bm!35543 (= call!35544 call!35542)))

(declare-fun b!816082 () Bool)

(assert (=> b!816082 (= e!452673 e!452669)))

(declare-fun res!557308 () Bool)

(assert (=> b!816082 (= res!557308 call!35543)))

(assert (=> b!816082 (=> (not res!557308) (not e!452669))))

(declare-fun b!816083 () Bool)

(declare-fun res!557303 () Bool)

(assert (=> b!816083 (=> (not res!557303) (not e!452670))))

(assert (=> b!816083 (= res!557303 e!452676)))

(declare-fun res!557305 () Bool)

(assert (=> b!816083 (=> res!557305 e!452676)))

(assert (=> b!816083 (= res!557305 (not e!452674))))

(declare-fun res!557310 () Bool)

(assert (=> b!816083 (=> (not res!557310) (not e!452674))))

(assert (=> b!816083 (= res!557310 (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun bm!35544 () Bool)

(assert (=> bm!35544 (= call!35547 (contains!4149 lt!365500 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!816084 () Bool)

(assert (=> b!816084 (= e!452675 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104429 c!88904) b!816078))

(assert (= (and d!104429 (not c!88904)) b!816068))

(assert (= (and b!816068 c!88902) b!816066))

(assert (= (and b!816068 (not c!88902)) b!816076))

(assert (= (and b!816076 c!88907) b!816081))

(assert (= (and b!816076 (not c!88907)) b!816064))

(assert (= (or b!816081 b!816064) bm!35539))

(assert (= (or b!816066 bm!35539) bm!35543))

(assert (= (or b!816066 b!816081) bm!35540))

(assert (= (or b!816078 bm!35543) bm!35541))

(assert (= (or b!816078 bm!35540) bm!35538))

(assert (= (and d!104429 res!557307) b!816084))

(assert (= (and d!104429 c!88903) b!816069))

(assert (= (and d!104429 (not c!88903)) b!816077))

(assert (= (and d!104429 res!557304) b!816083))

(assert (= (and b!816083 res!557310) b!816075))

(assert (= (and b!816083 (not res!557305)) b!816072))

(assert (= (and b!816072 res!557306) b!816074))

(assert (= (and b!816083 res!557303) b!816079))

(assert (= (and b!816079 c!88905) b!816082))

(assert (= (and b!816079 (not c!88905)) b!816071))

(assert (= (and b!816082 res!557308) b!816067))

(assert (= (or b!816082 b!816071) bm!35542))

(assert (= (and b!816079 res!557311) b!816080))

(assert (= (and b!816080 c!88906) b!816070))

(assert (= (and b!816080 (not c!88906)) b!816065))

(assert (= (and b!816070 res!557309) b!816073))

(assert (= (or b!816070 b!816065) bm!35544))

(declare-fun b_lambda!10895 () Bool)

(assert (=> (not b_lambda!10895) (not b!816074)))

(assert (=> b!816074 t!21692))

(declare-fun b_and!21451 () Bool)

(assert (= b_and!21449 (and (=> t!21692 result!7891) b_and!21451)))

(declare-fun m!757807 () Bool)

(assert (=> b!816078 m!757807))

(assert (=> bm!35541 m!757699))

(assert (=> b!816072 m!757753))

(assert (=> b!816072 m!757753))

(declare-fun m!757809 () Bool)

(assert (=> b!816072 m!757809))

(assert (=> b!816075 m!757753))

(assert (=> b!816075 m!757753))

(assert (=> b!816075 m!757757))

(declare-fun m!757811 () Bool)

(assert (=> b!816069 m!757811))

(declare-fun m!757813 () Bool)

(assert (=> b!816069 m!757813))

(declare-fun m!757815 () Bool)

(assert (=> b!816069 m!757815))

(declare-fun m!757817 () Bool)

(assert (=> b!816069 m!757817))

(declare-fun m!757819 () Bool)

(assert (=> b!816069 m!757819))

(declare-fun m!757821 () Bool)

(assert (=> b!816069 m!757821))

(assert (=> b!816069 m!757753))

(declare-fun m!757823 () Bool)

(assert (=> b!816069 m!757823))

(declare-fun m!757825 () Bool)

(assert (=> b!816069 m!757825))

(assert (=> b!816069 m!757699))

(assert (=> b!816069 m!757815))

(declare-fun m!757827 () Bool)

(assert (=> b!816069 m!757827))

(declare-fun m!757829 () Bool)

(assert (=> b!816069 m!757829))

(assert (=> b!816069 m!757819))

(declare-fun m!757831 () Bool)

(assert (=> b!816069 m!757831))

(assert (=> b!816069 m!757821))

(declare-fun m!757833 () Bool)

(assert (=> b!816069 m!757833))

(declare-fun m!757835 () Bool)

(assert (=> b!816069 m!757835))

(assert (=> b!816069 m!757823))

(declare-fun m!757837 () Bool)

(assert (=> b!816069 m!757837))

(declare-fun m!757839 () Bool)

(assert (=> b!816069 m!757839))

(declare-fun m!757841 () Bool)

(assert (=> b!816073 m!757841))

(assert (=> b!816084 m!757753))

(assert (=> b!816084 m!757753))

(assert (=> b!816084 m!757757))

(assert (=> b!816074 m!757753))

(declare-fun m!757843 () Bool)

(assert (=> b!816074 m!757843))

(assert (=> b!816074 m!757793))

(assert (=> b!816074 m!757795))

(assert (=> b!816074 m!757793))

(assert (=> b!816074 m!757797))

(assert (=> b!816074 m!757753))

(assert (=> b!816074 m!757795))

(declare-fun m!757845 () Bool)

(assert (=> bm!35538 m!757845))

(declare-fun m!757847 () Bool)

(assert (=> bm!35542 m!757847))

(declare-fun m!757849 () Bool)

(assert (=> bm!35544 m!757849))

(declare-fun m!757851 () Bool)

(assert (=> b!816067 m!757851))

(assert (=> d!104429 m!757709))

(assert (=> b!815957 d!104429))

(declare-fun d!104431 () Bool)

(assert (=> d!104431 (= (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365510 () Unit!27816)

(declare-fun choose!1397 (array!44878 array!44880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24133 V!24133 V!24133 V!24133 (_ BitVec 32) Int) Unit!27816)

(assert (=> d!104431 (= lt!365510 (choose!1397 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104431 (validMask!0 mask!1312)))

(assert (=> d!104431 (= (lemmaNoChangeToArrayThenSameMapNoExtras!345 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!365510)))

(declare-fun bs!22719 () Bool)

(assert (= bs!22719 d!104431))

(assert (=> bs!22719 m!757701))

(assert (=> bs!22719 m!757699))

(declare-fun m!757853 () Bool)

(assert (=> bs!22719 m!757853))

(assert (=> bs!22719 m!757709))

(assert (=> b!815958 d!104431))

(declare-fun b!816109 () Bool)

(declare-fun lt!365526 () Unit!27816)

(declare-fun lt!365530 () Unit!27816)

(assert (=> b!816109 (= lt!365526 lt!365530)))

(declare-fun lt!365525 () (_ BitVec 64))

(declare-fun lt!365531 () ListLongMap!8329)

(declare-fun lt!365527 () (_ BitVec 64))

(declare-fun lt!365528 () V!24133)

(assert (=> b!816109 (not (contains!4149 (+!1767 lt!365531 (tuple2!9493 lt!365527 lt!365528)) lt!365525))))

(declare-fun addStillNotContains!177 (ListLongMap!8329 (_ BitVec 64) V!24133 (_ BitVec 64)) Unit!27816)

(assert (=> b!816109 (= lt!365530 (addStillNotContains!177 lt!365531 lt!365527 lt!365528 lt!365525))))

(assert (=> b!816109 (= lt!365525 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!816109 (= lt!365528 (get!11514 (select (arr!21494 _values!788) #b00000000000000000000000000000000) (dynLambda!960 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!816109 (= lt!365527 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35550 () ListLongMap!8329)

(assert (=> b!816109 (= lt!365531 call!35550)))

(declare-fun e!452696 () ListLongMap!8329)

(assert (=> b!816109 (= e!452696 (+!1767 call!35550 (tuple2!9493 (select (arr!21493 _keys!976) #b00000000000000000000000000000000) (get!11514 (select (arr!21494 _values!788) #b00000000000000000000000000000000) (dynLambda!960 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!816110 () Bool)

(declare-fun e!452700 () ListLongMap!8329)

(assert (=> b!816110 (= e!452700 e!452696)))

(declare-fun c!88916 () Bool)

(assert (=> b!816110 (= c!88916 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816111 () Bool)

(declare-fun e!452699 () Bool)

(declare-fun e!452697 () Bool)

(assert (=> b!816111 (= e!452699 e!452697)))

(declare-fun c!88918 () Bool)

(assert (=> b!816111 (= c!88918 (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun d!104433 () Bool)

(declare-fun e!452701 () Bool)

(assert (=> d!104433 e!452701))

(declare-fun res!557322 () Bool)

(assert (=> d!104433 (=> (not res!557322) (not e!452701))))

(declare-fun lt!365529 () ListLongMap!8329)

(assert (=> d!104433 (= res!557322 (not (contains!4149 lt!365529 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104433 (= lt!365529 e!452700)))

(declare-fun c!88917 () Bool)

(assert (=> d!104433 (= c!88917 (bvsge #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(assert (=> d!104433 (validMask!0 mask!1312)))

(assert (=> d!104433 (= (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!365529)))

(declare-fun b!816112 () Bool)

(assert (=> b!816112 (= e!452697 (= lt!365529 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!816113 () Bool)

(assert (=> b!816113 (= e!452696 call!35550)))

(declare-fun b!816114 () Bool)

(assert (=> b!816114 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(assert (=> b!816114 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21915 _values!788)))))

(declare-fun e!452702 () Bool)

(assert (=> b!816114 (= e!452702 (= (apply!350 lt!365529 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)) (get!11514 (select (arr!21494 _values!788) #b00000000000000000000000000000000) (dynLambda!960 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!816115 () Bool)

(assert (=> b!816115 (= e!452700 (ListLongMap!8330 Nil!15357))))

(declare-fun b!816116 () Bool)

(assert (=> b!816116 (= e!452699 e!452702)))

(assert (=> b!816116 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun res!557323 () Bool)

(assert (=> b!816116 (= res!557323 (contains!4149 lt!365529 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816116 (=> (not res!557323) (not e!452702))))

(declare-fun bm!35547 () Bool)

(assert (=> bm!35547 (= call!35550 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!816117 () Bool)

(declare-fun e!452698 () Bool)

(assert (=> b!816117 (= e!452698 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816117 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!816118 () Bool)

(declare-fun isEmpty!637 (ListLongMap!8329) Bool)

(assert (=> b!816118 (= e!452697 (isEmpty!637 lt!365529))))

(declare-fun b!816119 () Bool)

(assert (=> b!816119 (= e!452701 e!452699)))

(declare-fun c!88919 () Bool)

(assert (=> b!816119 (= c!88919 e!452698)))

(declare-fun res!557320 () Bool)

(assert (=> b!816119 (=> (not res!557320) (not e!452698))))

(assert (=> b!816119 (= res!557320 (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun b!816120 () Bool)

(declare-fun res!557321 () Bool)

(assert (=> b!816120 (=> (not res!557321) (not e!452701))))

(assert (=> b!816120 (= res!557321 (not (contains!4149 lt!365529 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!104433 c!88917) b!816115))

(assert (= (and d!104433 (not c!88917)) b!816110))

(assert (= (and b!816110 c!88916) b!816109))

(assert (= (and b!816110 (not c!88916)) b!816113))

(assert (= (or b!816109 b!816113) bm!35547))

(assert (= (and d!104433 res!557322) b!816120))

(assert (= (and b!816120 res!557321) b!816119))

(assert (= (and b!816119 res!557320) b!816117))

(assert (= (and b!816119 c!88919) b!816116))

(assert (= (and b!816119 (not c!88919)) b!816111))

(assert (= (and b!816116 res!557323) b!816114))

(assert (= (and b!816111 c!88918) b!816112))

(assert (= (and b!816111 (not c!88918)) b!816118))

(declare-fun b_lambda!10897 () Bool)

(assert (=> (not b_lambda!10897) (not b!816109)))

(assert (=> b!816109 t!21692))

(declare-fun b_and!21453 () Bool)

(assert (= b_and!21451 (and (=> t!21692 result!7891) b_and!21453)))

(declare-fun b_lambda!10899 () Bool)

(assert (=> (not b_lambda!10899) (not b!816114)))

(assert (=> b!816114 t!21692))

(declare-fun b_and!21455 () Bool)

(assert (= b_and!21453 (and (=> t!21692 result!7891) b_and!21455)))

(declare-fun m!757855 () Bool)

(assert (=> d!104433 m!757855))

(assert (=> d!104433 m!757709))

(declare-fun m!757857 () Bool)

(assert (=> bm!35547 m!757857))

(declare-fun m!757859 () Bool)

(assert (=> b!816120 m!757859))

(declare-fun m!757861 () Bool)

(assert (=> b!816109 m!757861))

(declare-fun m!757863 () Bool)

(assert (=> b!816109 m!757863))

(assert (=> b!816109 m!757861))

(declare-fun m!757865 () Bool)

(assert (=> b!816109 m!757865))

(declare-fun m!757867 () Bool)

(assert (=> b!816109 m!757867))

(assert (=> b!816109 m!757795))

(assert (=> b!816109 m!757793))

(assert (=> b!816109 m!757797))

(assert (=> b!816109 m!757793))

(assert (=> b!816109 m!757795))

(assert (=> b!816109 m!757753))

(declare-fun m!757869 () Bool)

(assert (=> b!816118 m!757869))

(assert (=> b!816110 m!757753))

(assert (=> b!816110 m!757753))

(assert (=> b!816110 m!757757))

(assert (=> b!816116 m!757753))

(assert (=> b!816116 m!757753))

(declare-fun m!757871 () Bool)

(assert (=> b!816116 m!757871))

(assert (=> b!816117 m!757753))

(assert (=> b!816117 m!757753))

(assert (=> b!816117 m!757757))

(assert (=> b!816114 m!757795))

(assert (=> b!816114 m!757793))

(assert (=> b!816114 m!757797))

(assert (=> b!816114 m!757753))

(declare-fun m!757873 () Bool)

(assert (=> b!816114 m!757873))

(assert (=> b!816114 m!757793))

(assert (=> b!816114 m!757795))

(assert (=> b!816114 m!757753))

(assert (=> b!816112 m!757857))

(assert (=> b!815958 d!104433))

(declare-fun b!816121 () Bool)

(declare-fun lt!365533 () Unit!27816)

(declare-fun lt!365537 () Unit!27816)

(assert (=> b!816121 (= lt!365533 lt!365537)))

(declare-fun lt!365534 () (_ BitVec 64))

(declare-fun lt!365535 () V!24133)

(declare-fun lt!365538 () ListLongMap!8329)

(declare-fun lt!365532 () (_ BitVec 64))

(assert (=> b!816121 (not (contains!4149 (+!1767 lt!365538 (tuple2!9493 lt!365534 lt!365535)) lt!365532))))

(assert (=> b!816121 (= lt!365537 (addStillNotContains!177 lt!365538 lt!365534 lt!365535 lt!365532))))

(assert (=> b!816121 (= lt!365532 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!816121 (= lt!365535 (get!11514 (select (arr!21494 _values!788) #b00000000000000000000000000000000) (dynLambda!960 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!816121 (= lt!365534 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35551 () ListLongMap!8329)

(assert (=> b!816121 (= lt!365538 call!35551)))

(declare-fun e!452703 () ListLongMap!8329)

(assert (=> b!816121 (= e!452703 (+!1767 call!35551 (tuple2!9493 (select (arr!21493 _keys!976) #b00000000000000000000000000000000) (get!11514 (select (arr!21494 _values!788) #b00000000000000000000000000000000) (dynLambda!960 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!816122 () Bool)

(declare-fun e!452707 () ListLongMap!8329)

(assert (=> b!816122 (= e!452707 e!452703)))

(declare-fun c!88920 () Bool)

(assert (=> b!816122 (= c!88920 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816123 () Bool)

(declare-fun e!452706 () Bool)

(declare-fun e!452704 () Bool)

(assert (=> b!816123 (= e!452706 e!452704)))

(declare-fun c!88922 () Bool)

(assert (=> b!816123 (= c!88922 (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun d!104435 () Bool)

(declare-fun e!452708 () Bool)

(assert (=> d!104435 e!452708))

(declare-fun res!557326 () Bool)

(assert (=> d!104435 (=> (not res!557326) (not e!452708))))

(declare-fun lt!365536 () ListLongMap!8329)

(assert (=> d!104435 (= res!557326 (not (contains!4149 lt!365536 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104435 (= lt!365536 e!452707)))

(declare-fun c!88921 () Bool)

(assert (=> d!104435 (= c!88921 (bvsge #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(assert (=> d!104435 (validMask!0 mask!1312)))

(assert (=> d!104435 (= (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!365536)))

(declare-fun b!816124 () Bool)

(assert (=> b!816124 (= e!452704 (= lt!365536 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!816125 () Bool)

(assert (=> b!816125 (= e!452703 call!35551)))

(declare-fun b!816126 () Bool)

(assert (=> b!816126 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(assert (=> b!816126 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21915 _values!788)))))

(declare-fun e!452709 () Bool)

(assert (=> b!816126 (= e!452709 (= (apply!350 lt!365536 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)) (get!11514 (select (arr!21494 _values!788) #b00000000000000000000000000000000) (dynLambda!960 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!816127 () Bool)

(assert (=> b!816127 (= e!452707 (ListLongMap!8330 Nil!15357))))

(declare-fun b!816128 () Bool)

(assert (=> b!816128 (= e!452706 e!452709)))

(assert (=> b!816128 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun res!557327 () Bool)

(assert (=> b!816128 (= res!557327 (contains!4149 lt!365536 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816128 (=> (not res!557327) (not e!452709))))

(declare-fun bm!35548 () Bool)

(assert (=> bm!35548 (= call!35551 (getCurrentListMapNoExtraKeys!2229 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!816129 () Bool)

(declare-fun e!452705 () Bool)

(assert (=> b!816129 (= e!452705 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816129 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!816130 () Bool)

(assert (=> b!816130 (= e!452704 (isEmpty!637 lt!365536))))

(declare-fun b!816131 () Bool)

(assert (=> b!816131 (= e!452708 e!452706)))

(declare-fun c!88923 () Bool)

(assert (=> b!816131 (= c!88923 e!452705)))

(declare-fun res!557324 () Bool)

(assert (=> b!816131 (=> (not res!557324) (not e!452705))))

(assert (=> b!816131 (= res!557324 (bvslt #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(declare-fun b!816132 () Bool)

(declare-fun res!557325 () Bool)

(assert (=> b!816132 (=> (not res!557325) (not e!452708))))

(assert (=> b!816132 (= res!557325 (not (contains!4149 lt!365536 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!104435 c!88921) b!816127))

(assert (= (and d!104435 (not c!88921)) b!816122))

(assert (= (and b!816122 c!88920) b!816121))

(assert (= (and b!816122 (not c!88920)) b!816125))

(assert (= (or b!816121 b!816125) bm!35548))

(assert (= (and d!104435 res!557326) b!816132))

(assert (= (and b!816132 res!557325) b!816131))

(assert (= (and b!816131 res!557324) b!816129))

(assert (= (and b!816131 c!88923) b!816128))

(assert (= (and b!816131 (not c!88923)) b!816123))

(assert (= (and b!816128 res!557327) b!816126))

(assert (= (and b!816123 c!88922) b!816124))

(assert (= (and b!816123 (not c!88922)) b!816130))

(declare-fun b_lambda!10901 () Bool)

(assert (=> (not b_lambda!10901) (not b!816121)))

(assert (=> b!816121 t!21692))

(declare-fun b_and!21457 () Bool)

(assert (= b_and!21455 (and (=> t!21692 result!7891) b_and!21457)))

(declare-fun b_lambda!10903 () Bool)

(assert (=> (not b_lambda!10903) (not b!816126)))

(assert (=> b!816126 t!21692))

(declare-fun b_and!21459 () Bool)

(assert (= b_and!21457 (and (=> t!21692 result!7891) b_and!21459)))

(declare-fun m!757875 () Bool)

(assert (=> d!104435 m!757875))

(assert (=> d!104435 m!757709))

(declare-fun m!757877 () Bool)

(assert (=> bm!35548 m!757877))

(declare-fun m!757879 () Bool)

(assert (=> b!816132 m!757879))

(declare-fun m!757881 () Bool)

(assert (=> b!816121 m!757881))

(declare-fun m!757883 () Bool)

(assert (=> b!816121 m!757883))

(assert (=> b!816121 m!757881))

(declare-fun m!757885 () Bool)

(assert (=> b!816121 m!757885))

(declare-fun m!757887 () Bool)

(assert (=> b!816121 m!757887))

(assert (=> b!816121 m!757795))

(assert (=> b!816121 m!757793))

(assert (=> b!816121 m!757797))

(assert (=> b!816121 m!757793))

(assert (=> b!816121 m!757795))

(assert (=> b!816121 m!757753))

(declare-fun m!757889 () Bool)

(assert (=> b!816130 m!757889))

(assert (=> b!816122 m!757753))

(assert (=> b!816122 m!757753))

(assert (=> b!816122 m!757757))

(assert (=> b!816128 m!757753))

(assert (=> b!816128 m!757753))

(declare-fun m!757891 () Bool)

(assert (=> b!816128 m!757891))

(assert (=> b!816129 m!757753))

(assert (=> b!816129 m!757753))

(assert (=> b!816129 m!757757))

(assert (=> b!816126 m!757795))

(assert (=> b!816126 m!757793))

(assert (=> b!816126 m!757797))

(assert (=> b!816126 m!757753))

(declare-fun m!757893 () Bool)

(assert (=> b!816126 m!757893))

(assert (=> b!816126 m!757793))

(assert (=> b!816126 m!757795))

(assert (=> b!816126 m!757753))

(assert (=> b!816124 m!757877))

(assert (=> b!815958 d!104435))

(declare-fun d!104437 () Bool)

(assert (=> d!104437 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70270 d!104437))

(declare-fun d!104439 () Bool)

(assert (=> d!104439 (= (array_inv!17175 _keys!976) (bvsge (size!21914 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70270 d!104439))

(declare-fun d!104441 () Bool)

(assert (=> d!104441 (= (array_inv!17176 _values!788) (bvsge (size!21915 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70270 d!104441))

(declare-fun b!816141 () Bool)

(declare-fun e!452716 () Bool)

(declare-fun call!35554 () Bool)

(assert (=> b!816141 (= e!452716 call!35554)))

(declare-fun b!816142 () Bool)

(declare-fun e!452718 () Bool)

(assert (=> b!816142 (= e!452718 e!452716)))

(declare-fun lt!365545 () (_ BitVec 64))

(assert (=> b!816142 (= lt!365545 (select (arr!21493 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!365546 () Unit!27816)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44878 (_ BitVec 64) (_ BitVec 32)) Unit!27816)

(assert (=> b!816142 (= lt!365546 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!365545 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!816142 (arrayContainsKey!0 _keys!976 lt!365545 #b00000000000000000000000000000000)))

(declare-fun lt!365547 () Unit!27816)

(assert (=> b!816142 (= lt!365547 lt!365546)))

(declare-fun res!557332 () Bool)

(declare-datatypes ((SeekEntryResult!8711 0))(
  ( (MissingZero!8711 (index!37214 (_ BitVec 32))) (Found!8711 (index!37215 (_ BitVec 32))) (Intermediate!8711 (undefined!9523 Bool) (index!37216 (_ BitVec 32)) (x!68683 (_ BitVec 32))) (Undefined!8711) (MissingVacant!8711 (index!37217 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44878 (_ BitVec 32)) SeekEntryResult!8711)

(assert (=> b!816142 (= res!557332 (= (seekEntryOrOpen!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8711 #b00000000000000000000000000000000)))))

(assert (=> b!816142 (=> (not res!557332) (not e!452716))))

(declare-fun bm!35551 () Bool)

(assert (=> bm!35551 (= call!35554 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun d!104443 () Bool)

(declare-fun res!557333 () Bool)

(declare-fun e!452717 () Bool)

(assert (=> d!104443 (=> res!557333 e!452717)))

(assert (=> d!104443 (= res!557333 (bvsge #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(assert (=> d!104443 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!452717)))

(declare-fun b!816143 () Bool)

(assert (=> b!816143 (= e!452718 call!35554)))

(declare-fun b!816144 () Bool)

(assert (=> b!816144 (= e!452717 e!452718)))

(declare-fun c!88926 () Bool)

(assert (=> b!816144 (= c!88926 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104443 (not res!557333)) b!816144))

(assert (= (and b!816144 c!88926) b!816142))

(assert (= (and b!816144 (not c!88926)) b!816143))

(assert (= (and b!816142 res!557332) b!816141))

(assert (= (or b!816141 b!816143) bm!35551))

(assert (=> b!816142 m!757753))

(declare-fun m!757895 () Bool)

(assert (=> b!816142 m!757895))

(declare-fun m!757897 () Bool)

(assert (=> b!816142 m!757897))

(assert (=> b!816142 m!757753))

(declare-fun m!757899 () Bool)

(assert (=> b!816142 m!757899))

(declare-fun m!757901 () Bool)

(assert (=> bm!35551 m!757901))

(assert (=> b!816144 m!757753))

(assert (=> b!816144 m!757753))

(assert (=> b!816144 m!757757))

(assert (=> b!815960 d!104443))

(declare-fun bm!35554 () Bool)

(declare-fun call!35557 () Bool)

(declare-fun c!88929 () Bool)

(assert (=> bm!35554 (= call!35557 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88929 (Cons!15357 (select (arr!21493 _keys!976) #b00000000000000000000000000000000) Nil!15358) Nil!15358)))))

(declare-fun b!816155 () Bool)

(declare-fun e!452728 () Bool)

(declare-fun e!452729 () Bool)

(assert (=> b!816155 (= e!452728 e!452729)))

(assert (=> b!816155 (= c!88929 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816156 () Bool)

(assert (=> b!816156 (= e!452729 call!35557)))

(declare-fun b!816157 () Bool)

(assert (=> b!816157 (= e!452729 call!35557)))

(declare-fun b!816158 () Bool)

(declare-fun e!452727 () Bool)

(declare-fun contains!4151 (List!15361 (_ BitVec 64)) Bool)

(assert (=> b!816158 (= e!452727 (contains!4151 Nil!15358 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816159 () Bool)

(declare-fun e!452730 () Bool)

(assert (=> b!816159 (= e!452730 e!452728)))

(declare-fun res!557342 () Bool)

(assert (=> b!816159 (=> (not res!557342) (not e!452728))))

(assert (=> b!816159 (= res!557342 (not e!452727))))

(declare-fun res!557341 () Bool)

(assert (=> b!816159 (=> (not res!557341) (not e!452727))))

(assert (=> b!816159 (= res!557341 (validKeyInArray!0 (select (arr!21493 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104445 () Bool)

(declare-fun res!557340 () Bool)

(assert (=> d!104445 (=> res!557340 e!452730)))

(assert (=> d!104445 (= res!557340 (bvsge #b00000000000000000000000000000000 (size!21914 _keys!976)))))

(assert (=> d!104445 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15358) e!452730)))

(assert (= (and d!104445 (not res!557340)) b!816159))

(assert (= (and b!816159 res!557341) b!816158))

(assert (= (and b!816159 res!557342) b!816155))

(assert (= (and b!816155 c!88929) b!816156))

(assert (= (and b!816155 (not c!88929)) b!816157))

(assert (= (or b!816156 b!816157) bm!35554))

(assert (=> bm!35554 m!757753))

(declare-fun m!757903 () Bool)

(assert (=> bm!35554 m!757903))

(assert (=> b!816155 m!757753))

(assert (=> b!816155 m!757753))

(assert (=> b!816155 m!757757))

(assert (=> b!816158 m!757753))

(assert (=> b!816158 m!757753))

(declare-fun m!757905 () Bool)

(assert (=> b!816158 m!757905))

(assert (=> b!816159 m!757753))

(assert (=> b!816159 m!757753))

(assert (=> b!816159 m!757757))

(assert (=> b!815963 d!104445))

(declare-fun mapNonEmpty!23116 () Bool)

(declare-fun mapRes!23116 () Bool)

(declare-fun tp!44647 () Bool)

(declare-fun e!452735 () Bool)

(assert (=> mapNonEmpty!23116 (= mapRes!23116 (and tp!44647 e!452735))))

(declare-fun mapKey!23116 () (_ BitVec 32))

(declare-fun mapRest!23116 () (Array (_ BitVec 32) ValueCell!6759))

(declare-fun mapValue!23116 () ValueCell!6759)

(assert (=> mapNonEmpty!23116 (= mapRest!23110 (store mapRest!23116 mapKey!23116 mapValue!23116))))

(declare-fun b!816166 () Bool)

(assert (=> b!816166 (= e!452735 tp_is_empty!14349)))

(declare-fun condMapEmpty!23116 () Bool)

(declare-fun mapDefault!23116 () ValueCell!6759)

(assert (=> mapNonEmpty!23110 (= condMapEmpty!23116 (= mapRest!23110 ((as const (Array (_ BitVec 32) ValueCell!6759)) mapDefault!23116)))))

(declare-fun e!452736 () Bool)

(assert (=> mapNonEmpty!23110 (= tp!44638 (and e!452736 mapRes!23116))))

(declare-fun mapIsEmpty!23116 () Bool)

(assert (=> mapIsEmpty!23116 mapRes!23116))

(declare-fun b!816167 () Bool)

(assert (=> b!816167 (= e!452736 tp_is_empty!14349)))

(assert (= (and mapNonEmpty!23110 condMapEmpty!23116) mapIsEmpty!23116))

(assert (= (and mapNonEmpty!23110 (not condMapEmpty!23116)) mapNonEmpty!23116))

(assert (= (and mapNonEmpty!23116 ((_ is ValueCellFull!6759) mapValue!23116)) b!816166))

(assert (= (and mapNonEmpty!23110 ((_ is ValueCellFull!6759) mapDefault!23116)) b!816167))

(declare-fun m!757907 () Bool)

(assert (=> mapNonEmpty!23116 m!757907))

(declare-fun b_lambda!10905 () Bool)

(assert (= b_lambda!10897 (or (and start!70270 b_free!12639) b_lambda!10905)))

(declare-fun b_lambda!10907 () Bool)

(assert (= b_lambda!10899 (or (and start!70270 b_free!12639) b_lambda!10907)))

(declare-fun b_lambda!10909 () Bool)

(assert (= b_lambda!10903 (or (and start!70270 b_free!12639) b_lambda!10909)))

(declare-fun b_lambda!10911 () Bool)

(assert (= b_lambda!10901 (or (and start!70270 b_free!12639) b_lambda!10911)))

(declare-fun b_lambda!10913 () Bool)

(assert (= b_lambda!10895 (or (and start!70270 b_free!12639) b_lambda!10913)))

(declare-fun b_lambda!10915 () Bool)

(assert (= b_lambda!10893 (or (and start!70270 b_free!12639) b_lambda!10915)))

(check-sat (not b!816069) (not b!816116) (not b!816075) (not b!816049) (not b!816142) (not bm!35535) (not bm!35531) (not b!816144) (not b!816046) (not bm!35542) (not b!815997) (not b!816078) (not bm!35551) (not b!816126) (not b!816110) (not mapNonEmpty!23116) (not d!104425) (not b_lambda!10911) (not b!816121) (not b!816118) (not b_next!12639) (not d!104429) b_and!21459 (not b_lambda!10909) (not b!816052) (not b!816158) (not b!816072) (not b!816129) (not b!816044) (not bm!35537) (not b!816055) (not b!816067) (not b!816050) (not b!816130) (not b!816124) (not b!816155) (not bm!35547) (not bm!35538) (not d!104435) (not b!816132) (not b!816122) (not b!816159) (not d!104427) (not b!816117) (not b_lambda!10915) (not bm!35544) tp_is_empty!14349 (not bm!35554) (not b!816112) (not b!816061) (not b!816073) (not b_lambda!10913) (not d!104431) (not bm!35548) (not b!816114) (not b!816051) (not b!816109) (not b!816074) (not b!815998) (not b!816128) (not bm!35541) (not b!816084) (not b!816120) (not bm!35534) (not b_lambda!10905) (not d!104433) (not b_lambda!10907))
(check-sat b_and!21459 (not b_next!12639))
