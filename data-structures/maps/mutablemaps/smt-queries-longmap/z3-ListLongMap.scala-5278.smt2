; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70844 () Bool)

(assert start!70844)

(declare-fun b_free!13077 () Bool)

(declare-fun b_next!13077 () Bool)

(assert (=> start!70844 (= b_free!13077 (not b_next!13077))))

(declare-fun tp!45975 () Bool)

(declare-fun b_and!21967 () Bool)

(assert (=> start!70844 (= tp!45975 b_and!21967)))

(declare-fun b!822439 () Bool)

(declare-fun res!561064 () Bool)

(declare-fun e!457322 () Bool)

(assert (=> b!822439 (=> (not res!561064) (not e!457322))))

(declare-datatypes ((array!45726 0))(
  ( (array!45727 (arr!21909 (Array (_ BitVec 32) (_ BitVec 64))) (size!22330 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45726)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45726 (_ BitVec 32)) Bool)

(assert (=> b!822439 (= res!561064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822440 () Bool)

(declare-fun e!457324 () Bool)

(declare-fun e!457323 () Bool)

(declare-fun mapRes!23791 () Bool)

(assert (=> b!822440 (= e!457324 (and e!457323 mapRes!23791))))

(declare-fun condMapEmpty!23791 () Bool)

(declare-datatypes ((V!24717 0))(
  ( (V!24718 (val!7441 Int)) )
))
(declare-datatypes ((ValueCell!6978 0))(
  ( (ValueCellFull!6978 (v!9868 V!24717)) (EmptyCell!6978) )
))
(declare-datatypes ((array!45728 0))(
  ( (array!45729 (arr!21910 (Array (_ BitVec 32) ValueCell!6978)) (size!22331 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45728)

(declare-fun mapDefault!23791 () ValueCell!6978)

(assert (=> b!822440 (= condMapEmpty!23791 (= (arr!21910 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6978)) mapDefault!23791)))))

(declare-fun b!822441 () Bool)

(declare-fun res!561063 () Bool)

(assert (=> b!822441 (=> (not res!561063) (not e!457322))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!822441 (= res!561063 (and (= (size!22331 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22330 _keys!976) (size!22331 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822442 () Bool)

(declare-fun e!457325 () Bool)

(assert (=> b!822442 (= e!457325 (bvsle #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-datatypes ((tuple2!9824 0))(
  ( (tuple2!9825 (_1!4922 (_ BitVec 64)) (_2!4922 V!24717)) )
))
(declare-datatypes ((List!15683 0))(
  ( (Nil!15680) (Cons!15679 (h!16808 tuple2!9824) (t!22028 List!15683)) )
))
(declare-datatypes ((ListLongMap!8661 0))(
  ( (ListLongMap!8662 (toList!4346 List!15683)) )
))
(declare-fun lt!370260 () ListLongMap!8661)

(declare-fun lt!370256 () ListLongMap!8661)

(declare-fun lt!370254 () tuple2!9824)

(declare-fun +!1849 (ListLongMap!8661 tuple2!9824) ListLongMap!8661)

(assert (=> b!822442 (= lt!370260 (+!1849 lt!370256 lt!370254))))

(declare-fun lt!370262 () ListLongMap!8661)

(declare-fun zeroValueAfter!34 () V!24717)

(declare-fun minValue!754 () V!24717)

(declare-datatypes ((Unit!28134 0))(
  ( (Unit!28135) )
))
(declare-fun lt!370253 () Unit!28134)

(declare-fun addCommutativeForDiffKeys!444 (ListLongMap!8661 (_ BitVec 64) V!24717 (_ BitVec 64) V!24717) Unit!28134)

(assert (=> b!822442 (= lt!370253 (addCommutativeForDiffKeys!444 lt!370262 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370261 () ListLongMap!8661)

(assert (=> b!822442 (= lt!370261 lt!370260)))

(declare-fun lt!370255 () tuple2!9824)

(assert (=> b!822442 (= lt!370260 (+!1849 (+!1849 lt!370262 lt!370254) lt!370255))))

(assert (=> b!822442 (= lt!370254 (tuple2!9825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370257 () ListLongMap!8661)

(assert (=> b!822442 (= lt!370257 lt!370256)))

(assert (=> b!822442 (= lt!370256 (+!1849 lt!370262 lt!370255))))

(assert (=> b!822442 (= lt!370255 (tuple2!9825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2479 (array!45726 array!45728 (_ BitVec 32) (_ BitVec 32) V!24717 V!24717 (_ BitVec 32) Int) ListLongMap!8661)

(assert (=> b!822442 (= lt!370261 (getCurrentListMap!2479 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24717)

(assert (=> b!822442 (= lt!370257 (getCurrentListMap!2479 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!561061 () Bool)

(assert (=> start!70844 (=> (not res!561061) (not e!457322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70844 (= res!561061 (validMask!0 mask!1312))))

(assert (=> start!70844 e!457322))

(declare-fun tp_is_empty!14787 () Bool)

(assert (=> start!70844 tp_is_empty!14787))

(declare-fun array_inv!17467 (array!45726) Bool)

(assert (=> start!70844 (array_inv!17467 _keys!976)))

(assert (=> start!70844 true))

(declare-fun array_inv!17468 (array!45728) Bool)

(assert (=> start!70844 (and (array_inv!17468 _values!788) e!457324)))

(assert (=> start!70844 tp!45975))

(declare-fun b!822443 () Bool)

(assert (=> b!822443 (= e!457322 (not e!457325))))

(declare-fun res!561062 () Bool)

(assert (=> b!822443 (=> res!561062 e!457325)))

(assert (=> b!822443 (= res!561062 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!370258 () ListLongMap!8661)

(assert (=> b!822443 (= lt!370262 lt!370258)))

(declare-fun lt!370259 () Unit!28134)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!488 (array!45726 array!45728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24717 V!24717 V!24717 V!24717 (_ BitVec 32) Int) Unit!28134)

(assert (=> b!822443 (= lt!370259 (lemmaNoChangeToArrayThenSameMapNoExtras!488 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2372 (array!45726 array!45728 (_ BitVec 32) (_ BitVec 32) V!24717 V!24717 (_ BitVec 32) Int) ListLongMap!8661)

(assert (=> b!822443 (= lt!370258 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822443 (= lt!370262 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23791 () Bool)

(declare-fun tp!45976 () Bool)

(declare-fun e!457320 () Bool)

(assert (=> mapNonEmpty!23791 (= mapRes!23791 (and tp!45976 e!457320))))

(declare-fun mapValue!23791 () ValueCell!6978)

(declare-fun mapRest!23791 () (Array (_ BitVec 32) ValueCell!6978))

(declare-fun mapKey!23791 () (_ BitVec 32))

(assert (=> mapNonEmpty!23791 (= (arr!21910 _values!788) (store mapRest!23791 mapKey!23791 mapValue!23791))))

(declare-fun b!822444 () Bool)

(assert (=> b!822444 (= e!457323 tp_is_empty!14787)))

(declare-fun mapIsEmpty!23791 () Bool)

(assert (=> mapIsEmpty!23791 mapRes!23791))

(declare-fun b!822445 () Bool)

(declare-fun res!561065 () Bool)

(assert (=> b!822445 (=> (not res!561065) (not e!457322))))

(declare-datatypes ((List!15684 0))(
  ( (Nil!15681) (Cons!15680 (h!16809 (_ BitVec 64)) (t!22029 List!15684)) )
))
(declare-fun arrayNoDuplicates!0 (array!45726 (_ BitVec 32) List!15684) Bool)

(assert (=> b!822445 (= res!561065 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15681))))

(declare-fun b!822446 () Bool)

(assert (=> b!822446 (= e!457320 tp_is_empty!14787)))

(assert (= (and start!70844 res!561061) b!822441))

(assert (= (and b!822441 res!561063) b!822439))

(assert (= (and b!822439 res!561064) b!822445))

(assert (= (and b!822445 res!561065) b!822443))

(assert (= (and b!822443 (not res!561062)) b!822442))

(assert (= (and b!822440 condMapEmpty!23791) mapIsEmpty!23791))

(assert (= (and b!822440 (not condMapEmpty!23791)) mapNonEmpty!23791))

(get-info :version)

(assert (= (and mapNonEmpty!23791 ((_ is ValueCellFull!6978) mapValue!23791)) b!822446))

(assert (= (and b!822440 ((_ is ValueCellFull!6978) mapDefault!23791)) b!822444))

(assert (= start!70844 b!822440))

(declare-fun m!764439 () Bool)

(assert (=> b!822439 m!764439))

(declare-fun m!764441 () Bool)

(assert (=> b!822442 m!764441))

(declare-fun m!764443 () Bool)

(assert (=> b!822442 m!764443))

(declare-fun m!764445 () Bool)

(assert (=> b!822442 m!764445))

(declare-fun m!764447 () Bool)

(assert (=> b!822442 m!764447))

(assert (=> b!822442 m!764445))

(declare-fun m!764449 () Bool)

(assert (=> b!822442 m!764449))

(declare-fun m!764451 () Bool)

(assert (=> b!822442 m!764451))

(declare-fun m!764453 () Bool)

(assert (=> b!822442 m!764453))

(declare-fun m!764455 () Bool)

(assert (=> start!70844 m!764455))

(declare-fun m!764457 () Bool)

(assert (=> start!70844 m!764457))

(declare-fun m!764459 () Bool)

(assert (=> start!70844 m!764459))

(declare-fun m!764461 () Bool)

(assert (=> b!822443 m!764461))

(declare-fun m!764463 () Bool)

(assert (=> b!822443 m!764463))

(declare-fun m!764465 () Bool)

(assert (=> b!822443 m!764465))

(declare-fun m!764467 () Bool)

(assert (=> mapNonEmpty!23791 m!764467))

(declare-fun m!764469 () Bool)

(assert (=> b!822445 m!764469))

(check-sat (not b!822439) (not start!70844) (not b!822442) tp_is_empty!14787 (not b!822445) (not b_next!13077) (not b!822443) b_and!21967 (not mapNonEmpty!23791))
(check-sat b_and!21967 (not b_next!13077))
(get-model)

(declare-fun b!822479 () Bool)

(declare-fun e!457351 () Bool)

(declare-fun call!35756 () Bool)

(assert (=> b!822479 (= e!457351 call!35756)))

(declare-fun b!822480 () Bool)

(declare-fun e!457350 () Bool)

(assert (=> b!822480 (= e!457350 call!35756)))

(declare-fun bm!35753 () Bool)

(assert (=> bm!35753 (= call!35756 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!822481 () Bool)

(declare-fun e!457352 () Bool)

(assert (=> b!822481 (= e!457352 e!457351)))

(declare-fun c!89194 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!822481 (= c!89194 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!104751 () Bool)

(declare-fun res!561085 () Bool)

(assert (=> d!104751 (=> res!561085 e!457352)))

(assert (=> d!104751 (= res!561085 (bvsge #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(assert (=> d!104751 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!457352)))

(declare-fun b!822482 () Bool)

(assert (=> b!822482 (= e!457351 e!457350)))

(declare-fun lt!370301 () (_ BitVec 64))

(assert (=> b!822482 (= lt!370301 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!370299 () Unit!28134)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!45726 (_ BitVec 64) (_ BitVec 32)) Unit!28134)

(assert (=> b!822482 (= lt!370299 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!370301 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!45726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!822482 (arrayContainsKey!0 _keys!976 lt!370301 #b00000000000000000000000000000000)))

(declare-fun lt!370300 () Unit!28134)

(assert (=> b!822482 (= lt!370300 lt!370299)))

(declare-fun res!561086 () Bool)

(declare-datatypes ((SeekEntryResult!8719 0))(
  ( (MissingZero!8719 (index!37246 (_ BitVec 32))) (Found!8719 (index!37247 (_ BitVec 32))) (Intermediate!8719 (undefined!9531 Bool) (index!37248 (_ BitVec 32)) (x!69363 (_ BitVec 32))) (Undefined!8719) (MissingVacant!8719 (index!37249 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!45726 (_ BitVec 32)) SeekEntryResult!8719)

(assert (=> b!822482 (= res!561086 (= (seekEntryOrOpen!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8719 #b00000000000000000000000000000000)))))

(assert (=> b!822482 (=> (not res!561086) (not e!457350))))

(assert (= (and d!104751 (not res!561085)) b!822481))

(assert (= (and b!822481 c!89194) b!822482))

(assert (= (and b!822481 (not c!89194)) b!822479))

(assert (= (and b!822482 res!561086) b!822480))

(assert (= (or b!822480 b!822479) bm!35753))

(declare-fun m!764503 () Bool)

(assert (=> bm!35753 m!764503))

(declare-fun m!764505 () Bool)

(assert (=> b!822481 m!764505))

(assert (=> b!822481 m!764505))

(declare-fun m!764507 () Bool)

(assert (=> b!822481 m!764507))

(assert (=> b!822482 m!764505))

(declare-fun m!764509 () Bool)

(assert (=> b!822482 m!764509))

(declare-fun m!764511 () Bool)

(assert (=> b!822482 m!764511))

(assert (=> b!822482 m!764505))

(declare-fun m!764513 () Bool)

(assert (=> b!822482 m!764513))

(assert (=> b!822439 d!104751))

(declare-fun d!104753 () Bool)

(assert (=> d!104753 (= (+!1849 (+!1849 lt!370262 (tuple2!9825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (tuple2!9825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (+!1849 (+!1849 lt!370262 (tuple2!9825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (tuple2!9825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun lt!370304 () Unit!28134)

(declare-fun choose!1407 (ListLongMap!8661 (_ BitVec 64) V!24717 (_ BitVec 64) V!24717) Unit!28134)

(assert (=> d!104753 (= lt!370304 (choose!1407 lt!370262 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> d!104753 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!104753 (= (addCommutativeForDiffKeys!444 lt!370262 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754) lt!370304)))

(declare-fun bs!22948 () Bool)

(assert (= bs!22948 d!104753))

(declare-fun m!764515 () Bool)

(assert (=> bs!22948 m!764515))

(declare-fun m!764517 () Bool)

(assert (=> bs!22948 m!764517))

(declare-fun m!764519 () Bool)

(assert (=> bs!22948 m!764519))

(declare-fun m!764521 () Bool)

(assert (=> bs!22948 m!764521))

(assert (=> bs!22948 m!764515))

(declare-fun m!764523 () Bool)

(assert (=> bs!22948 m!764523))

(assert (=> bs!22948 m!764517))

(assert (=> b!822442 d!104753))

(declare-fun d!104755 () Bool)

(declare-fun e!457355 () Bool)

(assert (=> d!104755 e!457355))

(declare-fun res!561091 () Bool)

(assert (=> d!104755 (=> (not res!561091) (not e!457355))))

(declare-fun lt!370313 () ListLongMap!8661)

(declare-fun contains!4169 (ListLongMap!8661 (_ BitVec 64)) Bool)

(assert (=> d!104755 (= res!561091 (contains!4169 lt!370313 (_1!4922 lt!370255)))))

(declare-fun lt!370316 () List!15683)

(assert (=> d!104755 (= lt!370313 (ListLongMap!8662 lt!370316))))

(declare-fun lt!370315 () Unit!28134)

(declare-fun lt!370314 () Unit!28134)

(assert (=> d!104755 (= lt!370315 lt!370314)))

(declare-datatypes ((Option!409 0))(
  ( (Some!408 (v!9870 V!24717)) (None!407) )
))
(declare-fun getValueByKey!403 (List!15683 (_ BitVec 64)) Option!409)

(assert (=> d!104755 (= (getValueByKey!403 lt!370316 (_1!4922 lt!370255)) (Some!408 (_2!4922 lt!370255)))))

(declare-fun lemmaContainsTupThenGetReturnValue!219 (List!15683 (_ BitVec 64) V!24717) Unit!28134)

(assert (=> d!104755 (= lt!370314 (lemmaContainsTupThenGetReturnValue!219 lt!370316 (_1!4922 lt!370255) (_2!4922 lt!370255)))))

(declare-fun insertStrictlySorted!257 (List!15683 (_ BitVec 64) V!24717) List!15683)

(assert (=> d!104755 (= lt!370316 (insertStrictlySorted!257 (toList!4346 (+!1849 lt!370262 lt!370254)) (_1!4922 lt!370255) (_2!4922 lt!370255)))))

(assert (=> d!104755 (= (+!1849 (+!1849 lt!370262 lt!370254) lt!370255) lt!370313)))

(declare-fun b!822487 () Bool)

(declare-fun res!561092 () Bool)

(assert (=> b!822487 (=> (not res!561092) (not e!457355))))

(assert (=> b!822487 (= res!561092 (= (getValueByKey!403 (toList!4346 lt!370313) (_1!4922 lt!370255)) (Some!408 (_2!4922 lt!370255))))))

(declare-fun b!822488 () Bool)

(declare-fun contains!4170 (List!15683 tuple2!9824) Bool)

(assert (=> b!822488 (= e!457355 (contains!4170 (toList!4346 lt!370313) lt!370255))))

(assert (= (and d!104755 res!561091) b!822487))

(assert (= (and b!822487 res!561092) b!822488))

(declare-fun m!764525 () Bool)

(assert (=> d!104755 m!764525))

(declare-fun m!764527 () Bool)

(assert (=> d!104755 m!764527))

(declare-fun m!764529 () Bool)

(assert (=> d!104755 m!764529))

(declare-fun m!764531 () Bool)

(assert (=> d!104755 m!764531))

(declare-fun m!764533 () Bool)

(assert (=> b!822487 m!764533))

(declare-fun m!764535 () Bool)

(assert (=> b!822488 m!764535))

(assert (=> b!822442 d!104755))

(declare-fun b!822531 () Bool)

(declare-fun e!457386 () Bool)

(declare-fun e!457390 () Bool)

(assert (=> b!822531 (= e!457386 e!457390)))

(declare-fun res!561116 () Bool)

(assert (=> b!822531 (=> (not res!561116) (not e!457390))))

(declare-fun lt!370366 () ListLongMap!8661)

(assert (=> b!822531 (= res!561116 (contains!4169 lt!370366 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!822531 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun b!822532 () Bool)

(declare-fun e!457393 () Bool)

(declare-fun apply!358 (ListLongMap!8661 (_ BitVec 64)) V!24717)

(assert (=> b!822532 (= e!457393 (= (apply!358 lt!370366 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!822533 () Bool)

(declare-fun res!561118 () Bool)

(declare-fun e!457385 () Bool)

(assert (=> b!822533 (=> (not res!561118) (not e!457385))))

(declare-fun e!457383 () Bool)

(assert (=> b!822533 (= res!561118 e!457383)))

(declare-fun c!89208 () Bool)

(assert (=> b!822533 (= c!89208 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!822534 () Bool)

(declare-fun e!457388 () Bool)

(declare-fun e!457394 () Bool)

(assert (=> b!822534 (= e!457388 e!457394)))

(declare-fun res!561114 () Bool)

(declare-fun call!35775 () Bool)

(assert (=> b!822534 (= res!561114 call!35775)))

(assert (=> b!822534 (=> (not res!561114) (not e!457394))))

(declare-fun b!822535 () Bool)

(declare-fun call!35771 () Bool)

(assert (=> b!822535 (= e!457383 (not call!35771))))

(declare-fun b!822536 () Bool)

(assert (=> b!822536 (= e!457394 (= (apply!358 lt!370366 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!822537 () Bool)

(declare-fun get!11668 (ValueCell!6978 V!24717) V!24717)

(declare-fun dynLambda!968 (Int (_ BitVec 64)) V!24717)

(assert (=> b!822537 (= e!457390 (= (apply!358 lt!370366 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)) (get!11668 (select (arr!21910 _values!788) #b00000000000000000000000000000000) (dynLambda!968 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!822537 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22331 _values!788)))))

(assert (=> b!822537 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun b!822538 () Bool)

(declare-fun e!457384 () ListLongMap!8661)

(declare-fun e!457391 () ListLongMap!8661)

(assert (=> b!822538 (= e!457384 e!457391)))

(declare-fun c!89209 () Bool)

(assert (=> b!822538 (= c!89209 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!822539 () Bool)

(declare-fun c!89211 () Bool)

(assert (=> b!822539 (= c!89211 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!457387 () ListLongMap!8661)

(assert (=> b!822539 (= e!457391 e!457387)))

(declare-fun b!822540 () Bool)

(declare-fun e!457389 () Bool)

(assert (=> b!822540 (= e!457389 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!822541 () Bool)

(declare-fun res!561111 () Bool)

(assert (=> b!822541 (=> (not res!561111) (not e!457385))))

(assert (=> b!822541 (= res!561111 e!457386)))

(declare-fun res!561117 () Bool)

(assert (=> b!822541 (=> res!561117 e!457386)))

(assert (=> b!822541 (= res!561117 (not e!457389))))

(declare-fun res!561113 () Bool)

(assert (=> b!822541 (=> (not res!561113) (not e!457389))))

(assert (=> b!822541 (= res!561113 (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun b!822542 () Bool)

(declare-fun call!35776 () ListLongMap!8661)

(assert (=> b!822542 (= e!457387 call!35776)))

(declare-fun b!822543 () Bool)

(declare-fun call!35777 () ListLongMap!8661)

(assert (=> b!822543 (= e!457391 call!35777)))

(declare-fun b!822544 () Bool)

(declare-fun call!35774 () ListLongMap!8661)

(assert (=> b!822544 (= e!457384 (+!1849 call!35774 (tuple2!9825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!822545 () Bool)

(declare-fun e!457382 () Unit!28134)

(declare-fun lt!370368 () Unit!28134)

(assert (=> b!822545 (= e!457382 lt!370368)))

(declare-fun lt!370363 () ListLongMap!8661)

(assert (=> b!822545 (= lt!370363 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!370376 () (_ BitVec 64))

(assert (=> b!822545 (= lt!370376 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!370382 () (_ BitVec 64))

(assert (=> b!822545 (= lt!370382 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!370369 () Unit!28134)

(declare-fun addStillContains!311 (ListLongMap!8661 (_ BitVec 64) V!24717 (_ BitVec 64)) Unit!28134)

(assert (=> b!822545 (= lt!370369 (addStillContains!311 lt!370363 lt!370376 zeroValueAfter!34 lt!370382))))

(assert (=> b!822545 (contains!4169 (+!1849 lt!370363 (tuple2!9825 lt!370376 zeroValueAfter!34)) lt!370382)))

(declare-fun lt!370374 () Unit!28134)

(assert (=> b!822545 (= lt!370374 lt!370369)))

(declare-fun lt!370362 () ListLongMap!8661)

(assert (=> b!822545 (= lt!370362 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!370377 () (_ BitVec 64))

(assert (=> b!822545 (= lt!370377 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!370373 () (_ BitVec 64))

(assert (=> b!822545 (= lt!370373 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!370379 () Unit!28134)

(declare-fun addApplyDifferent!311 (ListLongMap!8661 (_ BitVec 64) V!24717 (_ BitVec 64)) Unit!28134)

(assert (=> b!822545 (= lt!370379 (addApplyDifferent!311 lt!370362 lt!370377 minValue!754 lt!370373))))

(assert (=> b!822545 (= (apply!358 (+!1849 lt!370362 (tuple2!9825 lt!370377 minValue!754)) lt!370373) (apply!358 lt!370362 lt!370373))))

(declare-fun lt!370378 () Unit!28134)

(assert (=> b!822545 (= lt!370378 lt!370379)))

(declare-fun lt!370367 () ListLongMap!8661)

(assert (=> b!822545 (= lt!370367 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!370380 () (_ BitVec 64))

(assert (=> b!822545 (= lt!370380 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!370371 () (_ BitVec 64))

(assert (=> b!822545 (= lt!370371 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!370372 () Unit!28134)

(assert (=> b!822545 (= lt!370372 (addApplyDifferent!311 lt!370367 lt!370380 zeroValueAfter!34 lt!370371))))

(assert (=> b!822545 (= (apply!358 (+!1849 lt!370367 (tuple2!9825 lt!370380 zeroValueAfter!34)) lt!370371) (apply!358 lt!370367 lt!370371))))

(declare-fun lt!370375 () Unit!28134)

(assert (=> b!822545 (= lt!370375 lt!370372)))

(declare-fun lt!370365 () ListLongMap!8661)

(assert (=> b!822545 (= lt!370365 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!370361 () (_ BitVec 64))

(assert (=> b!822545 (= lt!370361 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!370364 () (_ BitVec 64))

(assert (=> b!822545 (= lt!370364 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!822545 (= lt!370368 (addApplyDifferent!311 lt!370365 lt!370361 minValue!754 lt!370364))))

(assert (=> b!822545 (= (apply!358 (+!1849 lt!370365 (tuple2!9825 lt!370361 minValue!754)) lt!370364) (apply!358 lt!370365 lt!370364))))

(declare-fun b!822546 () Bool)

(assert (=> b!822546 (= e!457383 e!457393)))

(declare-fun res!561112 () Bool)

(assert (=> b!822546 (= res!561112 call!35771)))

(assert (=> b!822546 (=> (not res!561112) (not e!457393))))

(declare-fun b!822547 () Bool)

(assert (=> b!822547 (= e!457387 call!35777)))

(declare-fun call!35773 () ListLongMap!8661)

(declare-fun bm!35768 () Bool)

(assert (=> bm!35768 (= call!35773 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822548 () Bool)

(assert (=> b!822548 (= e!457385 e!457388)))

(declare-fun c!89212 () Bool)

(assert (=> b!822548 (= c!89212 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!35769 () Bool)

(assert (=> bm!35769 (= call!35771 (contains!4169 lt!370366 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!104757 () Bool)

(assert (=> d!104757 e!457385))

(declare-fun res!561115 () Bool)

(assert (=> d!104757 (=> (not res!561115) (not e!457385))))

(assert (=> d!104757 (= res!561115 (or (bvsge #b00000000000000000000000000000000 (size!22330 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))))

(declare-fun lt!370370 () ListLongMap!8661)

(assert (=> d!104757 (= lt!370366 lt!370370)))

(declare-fun lt!370381 () Unit!28134)

(assert (=> d!104757 (= lt!370381 e!457382)))

(declare-fun c!89207 () Bool)

(declare-fun e!457392 () Bool)

(assert (=> d!104757 (= c!89207 e!457392)))

(declare-fun res!561119 () Bool)

(assert (=> d!104757 (=> (not res!561119) (not e!457392))))

(assert (=> d!104757 (= res!561119 (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(assert (=> d!104757 (= lt!370370 e!457384)))

(declare-fun c!89210 () Bool)

(assert (=> d!104757 (= c!89210 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104757 (validMask!0 mask!1312)))

(assert (=> d!104757 (= (getCurrentListMap!2479 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!370366)))

(declare-fun bm!35770 () Bool)

(declare-fun call!35772 () ListLongMap!8661)

(assert (=> bm!35770 (= call!35776 call!35772)))

(declare-fun b!822549 () Bool)

(assert (=> b!822549 (= e!457388 (not call!35775))))

(declare-fun bm!35771 () Bool)

(assert (=> bm!35771 (= call!35774 (+!1849 (ite c!89210 call!35773 (ite c!89209 call!35772 call!35776)) (ite (or c!89210 c!89209) (tuple2!9825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!9825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!35772 () Bool)

(assert (=> bm!35772 (= call!35777 call!35774)))

(declare-fun b!822550 () Bool)

(assert (=> b!822550 (= e!457392 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!822551 () Bool)

(declare-fun Unit!28136 () Unit!28134)

(assert (=> b!822551 (= e!457382 Unit!28136)))

(declare-fun bm!35773 () Bool)

(assert (=> bm!35773 (= call!35772 call!35773)))

(declare-fun bm!35774 () Bool)

(assert (=> bm!35774 (= call!35775 (contains!4169 lt!370366 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!104757 c!89210) b!822544))

(assert (= (and d!104757 (not c!89210)) b!822538))

(assert (= (and b!822538 c!89209) b!822543))

(assert (= (and b!822538 (not c!89209)) b!822539))

(assert (= (and b!822539 c!89211) b!822547))

(assert (= (and b!822539 (not c!89211)) b!822542))

(assert (= (or b!822547 b!822542) bm!35770))

(assert (= (or b!822543 bm!35770) bm!35773))

(assert (= (or b!822543 b!822547) bm!35772))

(assert (= (or b!822544 bm!35773) bm!35768))

(assert (= (or b!822544 bm!35772) bm!35771))

(assert (= (and d!104757 res!561119) b!822550))

(assert (= (and d!104757 c!89207) b!822545))

(assert (= (and d!104757 (not c!89207)) b!822551))

(assert (= (and d!104757 res!561115) b!822541))

(assert (= (and b!822541 res!561113) b!822540))

(assert (= (and b!822541 (not res!561117)) b!822531))

(assert (= (and b!822531 res!561116) b!822537))

(assert (= (and b!822541 res!561111) b!822533))

(assert (= (and b!822533 c!89208) b!822546))

(assert (= (and b!822533 (not c!89208)) b!822535))

(assert (= (and b!822546 res!561112) b!822532))

(assert (= (or b!822546 b!822535) bm!35769))

(assert (= (and b!822533 res!561118) b!822548))

(assert (= (and b!822548 c!89212) b!822534))

(assert (= (and b!822548 (not c!89212)) b!822549))

(assert (= (and b!822534 res!561114) b!822536))

(assert (= (or b!822534 b!822549) bm!35774))

(declare-fun b_lambda!11061 () Bool)

(assert (=> (not b_lambda!11061) (not b!822537)))

(declare-fun t!22032 () Bool)

(declare-fun tb!4205 () Bool)

(assert (=> (and start!70844 (= defaultEntry!796 defaultEntry!796) t!22032) tb!4205))

(declare-fun result!7939 () Bool)

(assert (=> tb!4205 (= result!7939 tp_is_empty!14787)))

(assert (=> b!822537 t!22032))

(declare-fun b_and!21971 () Bool)

(assert (= b_and!21967 (and (=> t!22032 result!7939) b_and!21971)))

(assert (=> b!822550 m!764505))

(assert (=> b!822550 m!764505))

(assert (=> b!822550 m!764507))

(declare-fun m!764537 () Bool)

(assert (=> bm!35774 m!764537))

(assert (=> b!822540 m!764505))

(assert (=> b!822540 m!764505))

(assert (=> b!822540 m!764507))

(declare-fun m!764539 () Bool)

(assert (=> b!822544 m!764539))

(declare-fun m!764541 () Bool)

(assert (=> bm!35771 m!764541))

(assert (=> d!104757 m!764455))

(declare-fun m!764543 () Bool)

(assert (=> bm!35769 m!764543))

(assert (=> bm!35768 m!764463))

(assert (=> b!822531 m!764505))

(assert (=> b!822531 m!764505))

(declare-fun m!764545 () Bool)

(assert (=> b!822531 m!764545))

(declare-fun m!764547 () Bool)

(assert (=> b!822536 m!764547))

(declare-fun m!764549 () Bool)

(assert (=> b!822545 m!764549))

(declare-fun m!764551 () Bool)

(assert (=> b!822545 m!764551))

(declare-fun m!764553 () Bool)

(assert (=> b!822545 m!764553))

(declare-fun m!764555 () Bool)

(assert (=> b!822545 m!764555))

(declare-fun m!764557 () Bool)

(assert (=> b!822545 m!764557))

(declare-fun m!764559 () Bool)

(assert (=> b!822545 m!764559))

(declare-fun m!764561 () Bool)

(assert (=> b!822545 m!764561))

(declare-fun m!764563 () Bool)

(assert (=> b!822545 m!764563))

(declare-fun m!764565 () Bool)

(assert (=> b!822545 m!764565))

(declare-fun m!764567 () Bool)

(assert (=> b!822545 m!764567))

(declare-fun m!764569 () Bool)

(assert (=> b!822545 m!764569))

(declare-fun m!764571 () Bool)

(assert (=> b!822545 m!764571))

(assert (=> b!822545 m!764463))

(assert (=> b!822545 m!764563))

(assert (=> b!822545 m!764549))

(declare-fun m!764573 () Bool)

(assert (=> b!822545 m!764573))

(assert (=> b!822545 m!764555))

(declare-fun m!764575 () Bool)

(assert (=> b!822545 m!764575))

(declare-fun m!764577 () Bool)

(assert (=> b!822545 m!764577))

(assert (=> b!822545 m!764505))

(assert (=> b!822545 m!764559))

(declare-fun m!764579 () Bool)

(assert (=> b!822532 m!764579))

(declare-fun m!764581 () Bool)

(assert (=> b!822537 m!764581))

(declare-fun m!764583 () Bool)

(assert (=> b!822537 m!764583))

(assert (=> b!822537 m!764505))

(declare-fun m!764585 () Bool)

(assert (=> b!822537 m!764585))

(assert (=> b!822537 m!764505))

(assert (=> b!822537 m!764583))

(assert (=> b!822537 m!764581))

(declare-fun m!764587 () Bool)

(assert (=> b!822537 m!764587))

(assert (=> b!822442 d!104757))

(declare-fun d!104759 () Bool)

(declare-fun e!457395 () Bool)

(assert (=> d!104759 e!457395))

(declare-fun res!561120 () Bool)

(assert (=> d!104759 (=> (not res!561120) (not e!457395))))

(declare-fun lt!370383 () ListLongMap!8661)

(assert (=> d!104759 (= res!561120 (contains!4169 lt!370383 (_1!4922 lt!370254)))))

(declare-fun lt!370386 () List!15683)

(assert (=> d!104759 (= lt!370383 (ListLongMap!8662 lt!370386))))

(declare-fun lt!370385 () Unit!28134)

(declare-fun lt!370384 () Unit!28134)

(assert (=> d!104759 (= lt!370385 lt!370384)))

(assert (=> d!104759 (= (getValueByKey!403 lt!370386 (_1!4922 lt!370254)) (Some!408 (_2!4922 lt!370254)))))

(assert (=> d!104759 (= lt!370384 (lemmaContainsTupThenGetReturnValue!219 lt!370386 (_1!4922 lt!370254) (_2!4922 lt!370254)))))

(assert (=> d!104759 (= lt!370386 (insertStrictlySorted!257 (toList!4346 lt!370256) (_1!4922 lt!370254) (_2!4922 lt!370254)))))

(assert (=> d!104759 (= (+!1849 lt!370256 lt!370254) lt!370383)))

(declare-fun b!822554 () Bool)

(declare-fun res!561121 () Bool)

(assert (=> b!822554 (=> (not res!561121) (not e!457395))))

(assert (=> b!822554 (= res!561121 (= (getValueByKey!403 (toList!4346 lt!370383) (_1!4922 lt!370254)) (Some!408 (_2!4922 lt!370254))))))

(declare-fun b!822555 () Bool)

(assert (=> b!822555 (= e!457395 (contains!4170 (toList!4346 lt!370383) lt!370254))))

(assert (= (and d!104759 res!561120) b!822554))

(assert (= (and b!822554 res!561121) b!822555))

(declare-fun m!764589 () Bool)

(assert (=> d!104759 m!764589))

(declare-fun m!764591 () Bool)

(assert (=> d!104759 m!764591))

(declare-fun m!764593 () Bool)

(assert (=> d!104759 m!764593))

(declare-fun m!764595 () Bool)

(assert (=> d!104759 m!764595))

(declare-fun m!764597 () Bool)

(assert (=> b!822554 m!764597))

(declare-fun m!764599 () Bool)

(assert (=> b!822555 m!764599))

(assert (=> b!822442 d!104759))

(declare-fun d!104761 () Bool)

(declare-fun e!457396 () Bool)

(assert (=> d!104761 e!457396))

(declare-fun res!561122 () Bool)

(assert (=> d!104761 (=> (not res!561122) (not e!457396))))

(declare-fun lt!370387 () ListLongMap!8661)

(assert (=> d!104761 (= res!561122 (contains!4169 lt!370387 (_1!4922 lt!370254)))))

(declare-fun lt!370390 () List!15683)

(assert (=> d!104761 (= lt!370387 (ListLongMap!8662 lt!370390))))

(declare-fun lt!370389 () Unit!28134)

(declare-fun lt!370388 () Unit!28134)

(assert (=> d!104761 (= lt!370389 lt!370388)))

(assert (=> d!104761 (= (getValueByKey!403 lt!370390 (_1!4922 lt!370254)) (Some!408 (_2!4922 lt!370254)))))

(assert (=> d!104761 (= lt!370388 (lemmaContainsTupThenGetReturnValue!219 lt!370390 (_1!4922 lt!370254) (_2!4922 lt!370254)))))

(assert (=> d!104761 (= lt!370390 (insertStrictlySorted!257 (toList!4346 lt!370262) (_1!4922 lt!370254) (_2!4922 lt!370254)))))

(assert (=> d!104761 (= (+!1849 lt!370262 lt!370254) lt!370387)))

(declare-fun b!822556 () Bool)

(declare-fun res!561123 () Bool)

(assert (=> b!822556 (=> (not res!561123) (not e!457396))))

(assert (=> b!822556 (= res!561123 (= (getValueByKey!403 (toList!4346 lt!370387) (_1!4922 lt!370254)) (Some!408 (_2!4922 lt!370254))))))

(declare-fun b!822557 () Bool)

(assert (=> b!822557 (= e!457396 (contains!4170 (toList!4346 lt!370387) lt!370254))))

(assert (= (and d!104761 res!561122) b!822556))

(assert (= (and b!822556 res!561123) b!822557))

(declare-fun m!764601 () Bool)

(assert (=> d!104761 m!764601))

(declare-fun m!764603 () Bool)

(assert (=> d!104761 m!764603))

(declare-fun m!764605 () Bool)

(assert (=> d!104761 m!764605))

(declare-fun m!764607 () Bool)

(assert (=> d!104761 m!764607))

(declare-fun m!764609 () Bool)

(assert (=> b!822556 m!764609))

(declare-fun m!764611 () Bool)

(assert (=> b!822557 m!764611))

(assert (=> b!822442 d!104761))

(declare-fun d!104763 () Bool)

(declare-fun e!457397 () Bool)

(assert (=> d!104763 e!457397))

(declare-fun res!561124 () Bool)

(assert (=> d!104763 (=> (not res!561124) (not e!457397))))

(declare-fun lt!370391 () ListLongMap!8661)

(assert (=> d!104763 (= res!561124 (contains!4169 lt!370391 (_1!4922 lt!370255)))))

(declare-fun lt!370394 () List!15683)

(assert (=> d!104763 (= lt!370391 (ListLongMap!8662 lt!370394))))

(declare-fun lt!370393 () Unit!28134)

(declare-fun lt!370392 () Unit!28134)

(assert (=> d!104763 (= lt!370393 lt!370392)))

(assert (=> d!104763 (= (getValueByKey!403 lt!370394 (_1!4922 lt!370255)) (Some!408 (_2!4922 lt!370255)))))

(assert (=> d!104763 (= lt!370392 (lemmaContainsTupThenGetReturnValue!219 lt!370394 (_1!4922 lt!370255) (_2!4922 lt!370255)))))

(assert (=> d!104763 (= lt!370394 (insertStrictlySorted!257 (toList!4346 lt!370262) (_1!4922 lt!370255) (_2!4922 lt!370255)))))

(assert (=> d!104763 (= (+!1849 lt!370262 lt!370255) lt!370391)))

(declare-fun b!822558 () Bool)

(declare-fun res!561125 () Bool)

(assert (=> b!822558 (=> (not res!561125) (not e!457397))))

(assert (=> b!822558 (= res!561125 (= (getValueByKey!403 (toList!4346 lt!370391) (_1!4922 lt!370255)) (Some!408 (_2!4922 lt!370255))))))

(declare-fun b!822559 () Bool)

(assert (=> b!822559 (= e!457397 (contains!4170 (toList!4346 lt!370391) lt!370255))))

(assert (= (and d!104763 res!561124) b!822558))

(assert (= (and b!822558 res!561125) b!822559))

(declare-fun m!764613 () Bool)

(assert (=> d!104763 m!764613))

(declare-fun m!764615 () Bool)

(assert (=> d!104763 m!764615))

(declare-fun m!764617 () Bool)

(assert (=> d!104763 m!764617))

(declare-fun m!764619 () Bool)

(assert (=> d!104763 m!764619))

(declare-fun m!764621 () Bool)

(assert (=> b!822558 m!764621))

(declare-fun m!764623 () Bool)

(assert (=> b!822559 m!764623))

(assert (=> b!822442 d!104763))

(declare-fun b!822560 () Bool)

(declare-fun e!457402 () Bool)

(declare-fun e!457406 () Bool)

(assert (=> b!822560 (= e!457402 e!457406)))

(declare-fun res!561131 () Bool)

(assert (=> b!822560 (=> (not res!561131) (not e!457406))))

(declare-fun lt!370400 () ListLongMap!8661)

(assert (=> b!822560 (= res!561131 (contains!4169 lt!370400 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!822560 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun b!822561 () Bool)

(declare-fun e!457409 () Bool)

(assert (=> b!822561 (= e!457409 (= (apply!358 lt!370400 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!822562 () Bool)

(declare-fun res!561133 () Bool)

(declare-fun e!457401 () Bool)

(assert (=> b!822562 (=> (not res!561133) (not e!457401))))

(declare-fun e!457399 () Bool)

(assert (=> b!822562 (= res!561133 e!457399)))

(declare-fun c!89214 () Bool)

(assert (=> b!822562 (= c!89214 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!822563 () Bool)

(declare-fun e!457404 () Bool)

(declare-fun e!457410 () Bool)

(assert (=> b!822563 (= e!457404 e!457410)))

(declare-fun res!561129 () Bool)

(declare-fun call!35782 () Bool)

(assert (=> b!822563 (= res!561129 call!35782)))

(assert (=> b!822563 (=> (not res!561129) (not e!457410))))

(declare-fun b!822564 () Bool)

(declare-fun call!35778 () Bool)

(assert (=> b!822564 (= e!457399 (not call!35778))))

(declare-fun b!822565 () Bool)

(assert (=> b!822565 (= e!457410 (= (apply!358 lt!370400 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!822566 () Bool)

(assert (=> b!822566 (= e!457406 (= (apply!358 lt!370400 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)) (get!11668 (select (arr!21910 _values!788) #b00000000000000000000000000000000) (dynLambda!968 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!822566 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22331 _values!788)))))

(assert (=> b!822566 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun b!822567 () Bool)

(declare-fun e!457400 () ListLongMap!8661)

(declare-fun e!457407 () ListLongMap!8661)

(assert (=> b!822567 (= e!457400 e!457407)))

(declare-fun c!89215 () Bool)

(assert (=> b!822567 (= c!89215 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!822568 () Bool)

(declare-fun c!89217 () Bool)

(assert (=> b!822568 (= c!89217 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!457403 () ListLongMap!8661)

(assert (=> b!822568 (= e!457407 e!457403)))

(declare-fun b!822569 () Bool)

(declare-fun e!457405 () Bool)

(assert (=> b!822569 (= e!457405 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!822570 () Bool)

(declare-fun res!561126 () Bool)

(assert (=> b!822570 (=> (not res!561126) (not e!457401))))

(assert (=> b!822570 (= res!561126 e!457402)))

(declare-fun res!561132 () Bool)

(assert (=> b!822570 (=> res!561132 e!457402)))

(assert (=> b!822570 (= res!561132 (not e!457405))))

(declare-fun res!561128 () Bool)

(assert (=> b!822570 (=> (not res!561128) (not e!457405))))

(assert (=> b!822570 (= res!561128 (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun b!822571 () Bool)

(declare-fun call!35783 () ListLongMap!8661)

(assert (=> b!822571 (= e!457403 call!35783)))

(declare-fun b!822572 () Bool)

(declare-fun call!35784 () ListLongMap!8661)

(assert (=> b!822572 (= e!457407 call!35784)))

(declare-fun b!822573 () Bool)

(declare-fun call!35781 () ListLongMap!8661)

(assert (=> b!822573 (= e!457400 (+!1849 call!35781 (tuple2!9825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!822574 () Bool)

(declare-fun e!457398 () Unit!28134)

(declare-fun lt!370402 () Unit!28134)

(assert (=> b!822574 (= e!457398 lt!370402)))

(declare-fun lt!370397 () ListLongMap!8661)

(assert (=> b!822574 (= lt!370397 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!370410 () (_ BitVec 64))

(assert (=> b!822574 (= lt!370410 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!370416 () (_ BitVec 64))

(assert (=> b!822574 (= lt!370416 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!370403 () Unit!28134)

(assert (=> b!822574 (= lt!370403 (addStillContains!311 lt!370397 lt!370410 zeroValueBefore!34 lt!370416))))

(assert (=> b!822574 (contains!4169 (+!1849 lt!370397 (tuple2!9825 lt!370410 zeroValueBefore!34)) lt!370416)))

(declare-fun lt!370408 () Unit!28134)

(assert (=> b!822574 (= lt!370408 lt!370403)))

(declare-fun lt!370396 () ListLongMap!8661)

(assert (=> b!822574 (= lt!370396 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!370411 () (_ BitVec 64))

(assert (=> b!822574 (= lt!370411 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!370407 () (_ BitVec 64))

(assert (=> b!822574 (= lt!370407 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!370413 () Unit!28134)

(assert (=> b!822574 (= lt!370413 (addApplyDifferent!311 lt!370396 lt!370411 minValue!754 lt!370407))))

(assert (=> b!822574 (= (apply!358 (+!1849 lt!370396 (tuple2!9825 lt!370411 minValue!754)) lt!370407) (apply!358 lt!370396 lt!370407))))

(declare-fun lt!370412 () Unit!28134)

(assert (=> b!822574 (= lt!370412 lt!370413)))

(declare-fun lt!370401 () ListLongMap!8661)

(assert (=> b!822574 (= lt!370401 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!370414 () (_ BitVec 64))

(assert (=> b!822574 (= lt!370414 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!370405 () (_ BitVec 64))

(assert (=> b!822574 (= lt!370405 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!370406 () Unit!28134)

(assert (=> b!822574 (= lt!370406 (addApplyDifferent!311 lt!370401 lt!370414 zeroValueBefore!34 lt!370405))))

(assert (=> b!822574 (= (apply!358 (+!1849 lt!370401 (tuple2!9825 lt!370414 zeroValueBefore!34)) lt!370405) (apply!358 lt!370401 lt!370405))))

(declare-fun lt!370409 () Unit!28134)

(assert (=> b!822574 (= lt!370409 lt!370406)))

(declare-fun lt!370399 () ListLongMap!8661)

(assert (=> b!822574 (= lt!370399 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!370395 () (_ BitVec 64))

(assert (=> b!822574 (= lt!370395 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!370398 () (_ BitVec 64))

(assert (=> b!822574 (= lt!370398 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!822574 (= lt!370402 (addApplyDifferent!311 lt!370399 lt!370395 minValue!754 lt!370398))))

(assert (=> b!822574 (= (apply!358 (+!1849 lt!370399 (tuple2!9825 lt!370395 minValue!754)) lt!370398) (apply!358 lt!370399 lt!370398))))

(declare-fun b!822575 () Bool)

(assert (=> b!822575 (= e!457399 e!457409)))

(declare-fun res!561127 () Bool)

(assert (=> b!822575 (= res!561127 call!35778)))

(assert (=> b!822575 (=> (not res!561127) (not e!457409))))

(declare-fun b!822576 () Bool)

(assert (=> b!822576 (= e!457403 call!35784)))

(declare-fun call!35780 () ListLongMap!8661)

(declare-fun bm!35775 () Bool)

(assert (=> bm!35775 (= call!35780 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822577 () Bool)

(assert (=> b!822577 (= e!457401 e!457404)))

(declare-fun c!89218 () Bool)

(assert (=> b!822577 (= c!89218 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!35776 () Bool)

(assert (=> bm!35776 (= call!35778 (contains!4169 lt!370400 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!104765 () Bool)

(assert (=> d!104765 e!457401))

(declare-fun res!561130 () Bool)

(assert (=> d!104765 (=> (not res!561130) (not e!457401))))

(assert (=> d!104765 (= res!561130 (or (bvsge #b00000000000000000000000000000000 (size!22330 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))))

(declare-fun lt!370404 () ListLongMap!8661)

(assert (=> d!104765 (= lt!370400 lt!370404)))

(declare-fun lt!370415 () Unit!28134)

(assert (=> d!104765 (= lt!370415 e!457398)))

(declare-fun c!89213 () Bool)

(declare-fun e!457408 () Bool)

(assert (=> d!104765 (= c!89213 e!457408)))

(declare-fun res!561134 () Bool)

(assert (=> d!104765 (=> (not res!561134) (not e!457408))))

(assert (=> d!104765 (= res!561134 (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(assert (=> d!104765 (= lt!370404 e!457400)))

(declare-fun c!89216 () Bool)

(assert (=> d!104765 (= c!89216 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104765 (validMask!0 mask!1312)))

(assert (=> d!104765 (= (getCurrentListMap!2479 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!370400)))

(declare-fun bm!35777 () Bool)

(declare-fun call!35779 () ListLongMap!8661)

(assert (=> bm!35777 (= call!35783 call!35779)))

(declare-fun b!822578 () Bool)

(assert (=> b!822578 (= e!457404 (not call!35782))))

(declare-fun bm!35778 () Bool)

(assert (=> bm!35778 (= call!35781 (+!1849 (ite c!89216 call!35780 (ite c!89215 call!35779 call!35783)) (ite (or c!89216 c!89215) (tuple2!9825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!9825 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun bm!35779 () Bool)

(assert (=> bm!35779 (= call!35784 call!35781)))

(declare-fun b!822579 () Bool)

(assert (=> b!822579 (= e!457408 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!822580 () Bool)

(declare-fun Unit!28137 () Unit!28134)

(assert (=> b!822580 (= e!457398 Unit!28137)))

(declare-fun bm!35780 () Bool)

(assert (=> bm!35780 (= call!35779 call!35780)))

(declare-fun bm!35781 () Bool)

(assert (=> bm!35781 (= call!35782 (contains!4169 lt!370400 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!104765 c!89216) b!822573))

(assert (= (and d!104765 (not c!89216)) b!822567))

(assert (= (and b!822567 c!89215) b!822572))

(assert (= (and b!822567 (not c!89215)) b!822568))

(assert (= (and b!822568 c!89217) b!822576))

(assert (= (and b!822568 (not c!89217)) b!822571))

(assert (= (or b!822576 b!822571) bm!35777))

(assert (= (or b!822572 bm!35777) bm!35780))

(assert (= (or b!822572 b!822576) bm!35779))

(assert (= (or b!822573 bm!35780) bm!35775))

(assert (= (or b!822573 bm!35779) bm!35778))

(assert (= (and d!104765 res!561134) b!822579))

(assert (= (and d!104765 c!89213) b!822574))

(assert (= (and d!104765 (not c!89213)) b!822580))

(assert (= (and d!104765 res!561130) b!822570))

(assert (= (and b!822570 res!561128) b!822569))

(assert (= (and b!822570 (not res!561132)) b!822560))

(assert (= (and b!822560 res!561131) b!822566))

(assert (= (and b!822570 res!561126) b!822562))

(assert (= (and b!822562 c!89214) b!822575))

(assert (= (and b!822562 (not c!89214)) b!822564))

(assert (= (and b!822575 res!561127) b!822561))

(assert (= (or b!822575 b!822564) bm!35776))

(assert (= (and b!822562 res!561133) b!822577))

(assert (= (and b!822577 c!89218) b!822563))

(assert (= (and b!822577 (not c!89218)) b!822578))

(assert (= (and b!822563 res!561129) b!822565))

(assert (= (or b!822563 b!822578) bm!35781))

(declare-fun b_lambda!11063 () Bool)

(assert (=> (not b_lambda!11063) (not b!822566)))

(assert (=> b!822566 t!22032))

(declare-fun b_and!21973 () Bool)

(assert (= b_and!21971 (and (=> t!22032 result!7939) b_and!21973)))

(assert (=> b!822579 m!764505))

(assert (=> b!822579 m!764505))

(assert (=> b!822579 m!764507))

(declare-fun m!764625 () Bool)

(assert (=> bm!35781 m!764625))

(assert (=> b!822569 m!764505))

(assert (=> b!822569 m!764505))

(assert (=> b!822569 m!764507))

(declare-fun m!764627 () Bool)

(assert (=> b!822573 m!764627))

(declare-fun m!764629 () Bool)

(assert (=> bm!35778 m!764629))

(assert (=> d!104765 m!764455))

(declare-fun m!764631 () Bool)

(assert (=> bm!35776 m!764631))

(assert (=> bm!35775 m!764465))

(assert (=> b!822560 m!764505))

(assert (=> b!822560 m!764505))

(declare-fun m!764633 () Bool)

(assert (=> b!822560 m!764633))

(declare-fun m!764635 () Bool)

(assert (=> b!822565 m!764635))

(declare-fun m!764637 () Bool)

(assert (=> b!822574 m!764637))

(declare-fun m!764639 () Bool)

(assert (=> b!822574 m!764639))

(declare-fun m!764641 () Bool)

(assert (=> b!822574 m!764641))

(declare-fun m!764643 () Bool)

(assert (=> b!822574 m!764643))

(declare-fun m!764645 () Bool)

(assert (=> b!822574 m!764645))

(declare-fun m!764647 () Bool)

(assert (=> b!822574 m!764647))

(declare-fun m!764649 () Bool)

(assert (=> b!822574 m!764649))

(declare-fun m!764651 () Bool)

(assert (=> b!822574 m!764651))

(declare-fun m!764653 () Bool)

(assert (=> b!822574 m!764653))

(declare-fun m!764655 () Bool)

(assert (=> b!822574 m!764655))

(declare-fun m!764657 () Bool)

(assert (=> b!822574 m!764657))

(declare-fun m!764659 () Bool)

(assert (=> b!822574 m!764659))

(assert (=> b!822574 m!764465))

(assert (=> b!822574 m!764651))

(assert (=> b!822574 m!764637))

(declare-fun m!764661 () Bool)

(assert (=> b!822574 m!764661))

(assert (=> b!822574 m!764643))

(declare-fun m!764663 () Bool)

(assert (=> b!822574 m!764663))

(declare-fun m!764665 () Bool)

(assert (=> b!822574 m!764665))

(assert (=> b!822574 m!764505))

(assert (=> b!822574 m!764647))

(declare-fun m!764667 () Bool)

(assert (=> b!822561 m!764667))

(assert (=> b!822566 m!764581))

(assert (=> b!822566 m!764583))

(assert (=> b!822566 m!764505))

(declare-fun m!764669 () Bool)

(assert (=> b!822566 m!764669))

(assert (=> b!822566 m!764505))

(assert (=> b!822566 m!764583))

(assert (=> b!822566 m!764581))

(assert (=> b!822566 m!764587))

(assert (=> b!822442 d!104765))

(declare-fun d!104767 () Bool)

(assert (=> d!104767 (= (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!370419 () Unit!28134)

(declare-fun choose!1408 (array!45726 array!45728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24717 V!24717 V!24717 V!24717 (_ BitVec 32) Int) Unit!28134)

(assert (=> d!104767 (= lt!370419 (choose!1408 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104767 (validMask!0 mask!1312)))

(assert (=> d!104767 (= (lemmaNoChangeToArrayThenSameMapNoExtras!488 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!370419)))

(declare-fun bs!22949 () Bool)

(assert (= bs!22949 d!104767))

(assert (=> bs!22949 m!764465))

(assert (=> bs!22949 m!764463))

(declare-fun m!764671 () Bool)

(assert (=> bs!22949 m!764671))

(assert (=> bs!22949 m!764455))

(assert (=> b!822443 d!104767))

(declare-fun b!822605 () Bool)

(declare-fun e!457430 () ListLongMap!8661)

(declare-fun e!457427 () ListLongMap!8661)

(assert (=> b!822605 (= e!457430 e!457427)))

(declare-fun c!89228 () Bool)

(assert (=> b!822605 (= c!89228 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!822606 () Bool)

(declare-fun e!457428 () Bool)

(declare-fun lt!370438 () ListLongMap!8661)

(declare-fun isEmpty!645 (ListLongMap!8661) Bool)

(assert (=> b!822606 (= e!457428 (isEmpty!645 lt!370438))))

(declare-fun b!822607 () Bool)

(declare-fun call!35787 () ListLongMap!8661)

(assert (=> b!822607 (= e!457427 call!35787)))

(declare-fun b!822608 () Bool)

(declare-fun res!561143 () Bool)

(declare-fun e!457429 () Bool)

(assert (=> b!822608 (=> (not res!561143) (not e!457429))))

(assert (=> b!822608 (= res!561143 (not (contains!4169 lt!370438 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!822610 () Bool)

(declare-fun e!457426 () Bool)

(assert (=> b!822610 (= e!457426 e!457428)))

(declare-fun c!89227 () Bool)

(assert (=> b!822610 (= c!89227 (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun b!822611 () Bool)

(assert (=> b!822611 (= e!457430 (ListLongMap!8662 Nil!15680))))

(declare-fun b!822612 () Bool)

(assert (=> b!822612 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(assert (=> b!822612 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22331 _values!788)))))

(declare-fun e!457431 () Bool)

(assert (=> b!822612 (= e!457431 (= (apply!358 lt!370438 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)) (get!11668 (select (arr!21910 _values!788) #b00000000000000000000000000000000) (dynLambda!968 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!822613 () Bool)

(declare-fun e!457425 () Bool)

(assert (=> b!822613 (= e!457425 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!822613 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!822614 () Bool)

(assert (=> b!822614 (= e!457429 e!457426)))

(declare-fun c!89230 () Bool)

(assert (=> b!822614 (= c!89230 e!457425)))

(declare-fun res!561146 () Bool)

(assert (=> b!822614 (=> (not res!561146) (not e!457425))))

(assert (=> b!822614 (= res!561146 (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun bm!35784 () Bool)

(assert (=> bm!35784 (= call!35787 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!822615 () Bool)

(declare-fun lt!370436 () Unit!28134)

(declare-fun lt!370434 () Unit!28134)

(assert (=> b!822615 (= lt!370436 lt!370434)))

(declare-fun lt!370440 () ListLongMap!8661)

(declare-fun lt!370439 () (_ BitVec 64))

(declare-fun lt!370435 () (_ BitVec 64))

(declare-fun lt!370437 () V!24717)

(assert (=> b!822615 (not (contains!4169 (+!1849 lt!370440 (tuple2!9825 lt!370439 lt!370437)) lt!370435))))

(declare-fun addStillNotContains!185 (ListLongMap!8661 (_ BitVec 64) V!24717 (_ BitVec 64)) Unit!28134)

(assert (=> b!822615 (= lt!370434 (addStillNotContains!185 lt!370440 lt!370439 lt!370437 lt!370435))))

(assert (=> b!822615 (= lt!370435 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!822615 (= lt!370437 (get!11668 (select (arr!21910 _values!788) #b00000000000000000000000000000000) (dynLambda!968 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!822615 (= lt!370439 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!822615 (= lt!370440 call!35787)))

(assert (=> b!822615 (= e!457427 (+!1849 call!35787 (tuple2!9825 (select (arr!21909 _keys!976) #b00000000000000000000000000000000) (get!11668 (select (arr!21910 _values!788) #b00000000000000000000000000000000) (dynLambda!968 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!822616 () Bool)

(assert (=> b!822616 (= e!457428 (= lt!370438 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!104769 () Bool)

(assert (=> d!104769 e!457429))

(declare-fun res!561145 () Bool)

(assert (=> d!104769 (=> (not res!561145) (not e!457429))))

(assert (=> d!104769 (= res!561145 (not (contains!4169 lt!370438 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104769 (= lt!370438 e!457430)))

(declare-fun c!89229 () Bool)

(assert (=> d!104769 (= c!89229 (bvsge #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(assert (=> d!104769 (validMask!0 mask!1312)))

(assert (=> d!104769 (= (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!370438)))

(declare-fun b!822609 () Bool)

(assert (=> b!822609 (= e!457426 e!457431)))

(assert (=> b!822609 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun res!561144 () Bool)

(assert (=> b!822609 (= res!561144 (contains!4169 lt!370438 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!822609 (=> (not res!561144) (not e!457431))))

(assert (= (and d!104769 c!89229) b!822611))

(assert (= (and d!104769 (not c!89229)) b!822605))

(assert (= (and b!822605 c!89228) b!822615))

(assert (= (and b!822605 (not c!89228)) b!822607))

(assert (= (or b!822615 b!822607) bm!35784))

(assert (= (and d!104769 res!561145) b!822608))

(assert (= (and b!822608 res!561143) b!822614))

(assert (= (and b!822614 res!561146) b!822613))

(assert (= (and b!822614 c!89230) b!822609))

(assert (= (and b!822614 (not c!89230)) b!822610))

(assert (= (and b!822609 res!561144) b!822612))

(assert (= (and b!822610 c!89227) b!822616))

(assert (= (and b!822610 (not c!89227)) b!822606))

(declare-fun b_lambda!11065 () Bool)

(assert (=> (not b_lambda!11065) (not b!822612)))

(assert (=> b!822612 t!22032))

(declare-fun b_and!21975 () Bool)

(assert (= b_and!21973 (and (=> t!22032 result!7939) b_and!21975)))

(declare-fun b_lambda!11067 () Bool)

(assert (=> (not b_lambda!11067) (not b!822615)))

(assert (=> b!822615 t!22032))

(declare-fun b_and!21977 () Bool)

(assert (= b_and!21975 (and (=> t!22032 result!7939) b_and!21977)))

(assert (=> b!822605 m!764505))

(assert (=> b!822605 m!764505))

(assert (=> b!822605 m!764507))

(declare-fun m!764673 () Bool)

(assert (=> b!822616 m!764673))

(assert (=> b!822612 m!764583))

(assert (=> b!822612 m!764505))

(assert (=> b!822612 m!764505))

(declare-fun m!764675 () Bool)

(assert (=> b!822612 m!764675))

(assert (=> b!822612 m!764583))

(assert (=> b!822612 m!764581))

(assert (=> b!822612 m!764587))

(assert (=> b!822612 m!764581))

(declare-fun m!764677 () Bool)

(assert (=> b!822606 m!764677))

(declare-fun m!764679 () Bool)

(assert (=> b!822608 m!764679))

(declare-fun m!764681 () Bool)

(assert (=> d!104769 m!764681))

(assert (=> d!104769 m!764455))

(assert (=> b!822615 m!764583))

(declare-fun m!764683 () Bool)

(assert (=> b!822615 m!764683))

(assert (=> b!822615 m!764505))

(declare-fun m!764685 () Bool)

(assert (=> b!822615 m!764685))

(assert (=> b!822615 m!764583))

(assert (=> b!822615 m!764581))

(assert (=> b!822615 m!764587))

(assert (=> b!822615 m!764581))

(declare-fun m!764687 () Bool)

(assert (=> b!822615 m!764687))

(assert (=> b!822615 m!764683))

(declare-fun m!764689 () Bool)

(assert (=> b!822615 m!764689))

(assert (=> b!822609 m!764505))

(assert (=> b!822609 m!764505))

(declare-fun m!764691 () Bool)

(assert (=> b!822609 m!764691))

(assert (=> b!822613 m!764505))

(assert (=> b!822613 m!764505))

(assert (=> b!822613 m!764507))

(assert (=> bm!35784 m!764673))

(assert (=> b!822443 d!104769))

(declare-fun b!822617 () Bool)

(declare-fun e!457437 () ListLongMap!8661)

(declare-fun e!457434 () ListLongMap!8661)

(assert (=> b!822617 (= e!457437 e!457434)))

(declare-fun c!89232 () Bool)

(assert (=> b!822617 (= c!89232 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!822618 () Bool)

(declare-fun e!457435 () Bool)

(declare-fun lt!370445 () ListLongMap!8661)

(assert (=> b!822618 (= e!457435 (isEmpty!645 lt!370445))))

(declare-fun b!822619 () Bool)

(declare-fun call!35788 () ListLongMap!8661)

(assert (=> b!822619 (= e!457434 call!35788)))

(declare-fun b!822620 () Bool)

(declare-fun res!561147 () Bool)

(declare-fun e!457436 () Bool)

(assert (=> b!822620 (=> (not res!561147) (not e!457436))))

(assert (=> b!822620 (= res!561147 (not (contains!4169 lt!370445 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!822622 () Bool)

(declare-fun e!457433 () Bool)

(assert (=> b!822622 (= e!457433 e!457435)))

(declare-fun c!89231 () Bool)

(assert (=> b!822622 (= c!89231 (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun b!822623 () Bool)

(assert (=> b!822623 (= e!457437 (ListLongMap!8662 Nil!15680))))

(declare-fun b!822624 () Bool)

(assert (=> b!822624 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(assert (=> b!822624 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22331 _values!788)))))

(declare-fun e!457438 () Bool)

(assert (=> b!822624 (= e!457438 (= (apply!358 lt!370445 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)) (get!11668 (select (arr!21910 _values!788) #b00000000000000000000000000000000) (dynLambda!968 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!822625 () Bool)

(declare-fun e!457432 () Bool)

(assert (=> b!822625 (= e!457432 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!822625 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!822626 () Bool)

(assert (=> b!822626 (= e!457436 e!457433)))

(declare-fun c!89234 () Bool)

(assert (=> b!822626 (= c!89234 e!457432)))

(declare-fun res!561150 () Bool)

(assert (=> b!822626 (=> (not res!561150) (not e!457432))))

(assert (=> b!822626 (= res!561150 (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun bm!35785 () Bool)

(assert (=> bm!35785 (= call!35788 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!822627 () Bool)

(declare-fun lt!370443 () Unit!28134)

(declare-fun lt!370441 () Unit!28134)

(assert (=> b!822627 (= lt!370443 lt!370441)))

(declare-fun lt!370444 () V!24717)

(declare-fun lt!370446 () (_ BitVec 64))

(declare-fun lt!370447 () ListLongMap!8661)

(declare-fun lt!370442 () (_ BitVec 64))

(assert (=> b!822627 (not (contains!4169 (+!1849 lt!370447 (tuple2!9825 lt!370446 lt!370444)) lt!370442))))

(assert (=> b!822627 (= lt!370441 (addStillNotContains!185 lt!370447 lt!370446 lt!370444 lt!370442))))

(assert (=> b!822627 (= lt!370442 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!822627 (= lt!370444 (get!11668 (select (arr!21910 _values!788) #b00000000000000000000000000000000) (dynLambda!968 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!822627 (= lt!370446 (select (arr!21909 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!822627 (= lt!370447 call!35788)))

(assert (=> b!822627 (= e!457434 (+!1849 call!35788 (tuple2!9825 (select (arr!21909 _keys!976) #b00000000000000000000000000000000) (get!11668 (select (arr!21910 _values!788) #b00000000000000000000000000000000) (dynLambda!968 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!822628 () Bool)

(assert (=> b!822628 (= e!457435 (= lt!370445 (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!104771 () Bool)

(assert (=> d!104771 e!457436))

(declare-fun res!561149 () Bool)

(assert (=> d!104771 (=> (not res!561149) (not e!457436))))

(assert (=> d!104771 (= res!561149 (not (contains!4169 lt!370445 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104771 (= lt!370445 e!457437)))

(declare-fun c!89233 () Bool)

(assert (=> d!104771 (= c!89233 (bvsge #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(assert (=> d!104771 (validMask!0 mask!1312)))

(assert (=> d!104771 (= (getCurrentListMapNoExtraKeys!2372 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!370445)))

(declare-fun b!822621 () Bool)

(assert (=> b!822621 (= e!457433 e!457438)))

(assert (=> b!822621 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(declare-fun res!561148 () Bool)

(assert (=> b!822621 (= res!561148 (contains!4169 lt!370445 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!822621 (=> (not res!561148) (not e!457438))))

(assert (= (and d!104771 c!89233) b!822623))

(assert (= (and d!104771 (not c!89233)) b!822617))

(assert (= (and b!822617 c!89232) b!822627))

(assert (= (and b!822617 (not c!89232)) b!822619))

(assert (= (or b!822627 b!822619) bm!35785))

(assert (= (and d!104771 res!561149) b!822620))

(assert (= (and b!822620 res!561147) b!822626))

(assert (= (and b!822626 res!561150) b!822625))

(assert (= (and b!822626 c!89234) b!822621))

(assert (= (and b!822626 (not c!89234)) b!822622))

(assert (= (and b!822621 res!561148) b!822624))

(assert (= (and b!822622 c!89231) b!822628))

(assert (= (and b!822622 (not c!89231)) b!822618))

(declare-fun b_lambda!11069 () Bool)

(assert (=> (not b_lambda!11069) (not b!822624)))

(assert (=> b!822624 t!22032))

(declare-fun b_and!21979 () Bool)

(assert (= b_and!21977 (and (=> t!22032 result!7939) b_and!21979)))

(declare-fun b_lambda!11071 () Bool)

(assert (=> (not b_lambda!11071) (not b!822627)))

(assert (=> b!822627 t!22032))

(declare-fun b_and!21981 () Bool)

(assert (= b_and!21979 (and (=> t!22032 result!7939) b_and!21981)))

(assert (=> b!822617 m!764505))

(assert (=> b!822617 m!764505))

(assert (=> b!822617 m!764507))

(declare-fun m!764693 () Bool)

(assert (=> b!822628 m!764693))

(assert (=> b!822624 m!764583))

(assert (=> b!822624 m!764505))

(assert (=> b!822624 m!764505))

(declare-fun m!764695 () Bool)

(assert (=> b!822624 m!764695))

(assert (=> b!822624 m!764583))

(assert (=> b!822624 m!764581))

(assert (=> b!822624 m!764587))

(assert (=> b!822624 m!764581))

(declare-fun m!764697 () Bool)

(assert (=> b!822618 m!764697))

(declare-fun m!764699 () Bool)

(assert (=> b!822620 m!764699))

(declare-fun m!764701 () Bool)

(assert (=> d!104771 m!764701))

(assert (=> d!104771 m!764455))

(assert (=> b!822627 m!764583))

(declare-fun m!764703 () Bool)

(assert (=> b!822627 m!764703))

(assert (=> b!822627 m!764505))

(declare-fun m!764705 () Bool)

(assert (=> b!822627 m!764705))

(assert (=> b!822627 m!764583))

(assert (=> b!822627 m!764581))

(assert (=> b!822627 m!764587))

(assert (=> b!822627 m!764581))

(declare-fun m!764707 () Bool)

(assert (=> b!822627 m!764707))

(assert (=> b!822627 m!764703))

(declare-fun m!764709 () Bool)

(assert (=> b!822627 m!764709))

(assert (=> b!822621 m!764505))

(assert (=> b!822621 m!764505))

(declare-fun m!764711 () Bool)

(assert (=> b!822621 m!764711))

(assert (=> b!822625 m!764505))

(assert (=> b!822625 m!764505))

(assert (=> b!822625 m!764507))

(assert (=> bm!35785 m!764693))

(assert (=> b!822443 d!104771))

(declare-fun bm!35788 () Bool)

(declare-fun call!35791 () Bool)

(declare-fun c!89237 () Bool)

(assert (=> bm!35788 (= call!35791 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89237 (Cons!15680 (select (arr!21909 _keys!976) #b00000000000000000000000000000000) Nil!15681) Nil!15681)))))

(declare-fun b!822639 () Bool)

(declare-fun e!457449 () Bool)

(declare-fun contains!4171 (List!15684 (_ BitVec 64)) Bool)

(assert (=> b!822639 (= e!457449 (contains!4171 Nil!15681 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!822640 () Bool)

(declare-fun e!457450 () Bool)

(assert (=> b!822640 (= e!457450 call!35791)))

(declare-fun d!104773 () Bool)

(declare-fun res!561157 () Bool)

(declare-fun e!457448 () Bool)

(assert (=> d!104773 (=> res!561157 e!457448)))

(assert (=> d!104773 (= res!561157 (bvsge #b00000000000000000000000000000000 (size!22330 _keys!976)))))

(assert (=> d!104773 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15681) e!457448)))

(declare-fun b!822641 () Bool)

(declare-fun e!457447 () Bool)

(assert (=> b!822641 (= e!457448 e!457447)))

(declare-fun res!561159 () Bool)

(assert (=> b!822641 (=> (not res!561159) (not e!457447))))

(assert (=> b!822641 (= res!561159 (not e!457449))))

(declare-fun res!561158 () Bool)

(assert (=> b!822641 (=> (not res!561158) (not e!457449))))

(assert (=> b!822641 (= res!561158 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!822642 () Bool)

(assert (=> b!822642 (= e!457447 e!457450)))

(assert (=> b!822642 (= c!89237 (validKeyInArray!0 (select (arr!21909 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!822643 () Bool)

(assert (=> b!822643 (= e!457450 call!35791)))

(assert (= (and d!104773 (not res!561157)) b!822641))

(assert (= (and b!822641 res!561158) b!822639))

(assert (= (and b!822641 res!561159) b!822642))

(assert (= (and b!822642 c!89237) b!822640))

(assert (= (and b!822642 (not c!89237)) b!822643))

(assert (= (or b!822640 b!822643) bm!35788))

(assert (=> bm!35788 m!764505))

(declare-fun m!764713 () Bool)

(assert (=> bm!35788 m!764713))

(assert (=> b!822639 m!764505))

(assert (=> b!822639 m!764505))

(declare-fun m!764715 () Bool)

(assert (=> b!822639 m!764715))

(assert (=> b!822641 m!764505))

(assert (=> b!822641 m!764505))

(assert (=> b!822641 m!764507))

(assert (=> b!822642 m!764505))

(assert (=> b!822642 m!764505))

(assert (=> b!822642 m!764507))

(assert (=> b!822445 d!104773))

(declare-fun d!104775 () Bool)

(assert (=> d!104775 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70844 d!104775))

(declare-fun d!104777 () Bool)

(assert (=> d!104777 (= (array_inv!17467 _keys!976) (bvsge (size!22330 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70844 d!104777))

(declare-fun d!104779 () Bool)

(assert (=> d!104779 (= (array_inv!17468 _values!788) (bvsge (size!22331 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70844 d!104779))

(declare-fun condMapEmpty!23797 () Bool)

(declare-fun mapDefault!23797 () ValueCell!6978)

(assert (=> mapNonEmpty!23791 (= condMapEmpty!23797 (= mapRest!23791 ((as const (Array (_ BitVec 32) ValueCell!6978)) mapDefault!23797)))))

(declare-fun e!457455 () Bool)

(declare-fun mapRes!23797 () Bool)

(assert (=> mapNonEmpty!23791 (= tp!45976 (and e!457455 mapRes!23797))))

(declare-fun mapNonEmpty!23797 () Bool)

(declare-fun tp!45985 () Bool)

(declare-fun e!457456 () Bool)

(assert (=> mapNonEmpty!23797 (= mapRes!23797 (and tp!45985 e!457456))))

(declare-fun mapKey!23797 () (_ BitVec 32))

(declare-fun mapValue!23797 () ValueCell!6978)

(declare-fun mapRest!23797 () (Array (_ BitVec 32) ValueCell!6978))

(assert (=> mapNonEmpty!23797 (= mapRest!23791 (store mapRest!23797 mapKey!23797 mapValue!23797))))

(declare-fun b!822651 () Bool)

(assert (=> b!822651 (= e!457455 tp_is_empty!14787)))

(declare-fun b!822650 () Bool)

(assert (=> b!822650 (= e!457456 tp_is_empty!14787)))

(declare-fun mapIsEmpty!23797 () Bool)

(assert (=> mapIsEmpty!23797 mapRes!23797))

(assert (= (and mapNonEmpty!23791 condMapEmpty!23797) mapIsEmpty!23797))

(assert (= (and mapNonEmpty!23791 (not condMapEmpty!23797)) mapNonEmpty!23797))

(assert (= (and mapNonEmpty!23797 ((_ is ValueCellFull!6978) mapValue!23797)) b!822650))

(assert (= (and mapNonEmpty!23791 ((_ is ValueCellFull!6978) mapDefault!23797)) b!822651))

(declare-fun m!764717 () Bool)

(assert (=> mapNonEmpty!23797 m!764717))

(declare-fun b_lambda!11073 () Bool)

(assert (= b_lambda!11063 (or (and start!70844 b_free!13077) b_lambda!11073)))

(declare-fun b_lambda!11075 () Bool)

(assert (= b_lambda!11061 (or (and start!70844 b_free!13077) b_lambda!11075)))

(declare-fun b_lambda!11077 () Bool)

(assert (= b_lambda!11071 (or (and start!70844 b_free!13077) b_lambda!11077)))

(declare-fun b_lambda!11079 () Bool)

(assert (= b_lambda!11067 (or (and start!70844 b_free!13077) b_lambda!11079)))

(declare-fun b_lambda!11081 () Bool)

(assert (= b_lambda!11065 (or (and start!70844 b_free!13077) b_lambda!11081)))

(declare-fun b_lambda!11083 () Bool)

(assert (= b_lambda!11069 (or (and start!70844 b_free!13077) b_lambda!11083)))

(check-sat (not b!822573) (not d!104755) (not bm!35788) (not b!822642) (not d!104763) (not b!822569) (not b!822481) (not bm!35753) (not b!822608) (not b!822540) (not b!822536) (not b!822613) (not b!822554) (not b!822555) (not b!822550) (not b!822488) (not b_lambda!11075) (not b!822617) (not bm!35776) (not b!822620) (not b!822557) (not bm!35778) (not d!104765) (not d!104761) (not bm!35775) (not b!822616) (not bm!35785) (not b!822627) (not b!822628) (not b!822560) (not d!104769) (not b!822558) (not d!104757) (not d!104759) (not b!822487) (not b!822532) (not b!822559) (not b!822612) tp_is_empty!14787 (not b!822618) (not b!822545) (not b!822544) (not b!822615) (not b!822639) (not b!822609) (not b!822579) (not bm!35774) (not b!822574) (not b_lambda!11081) (not b!822624) (not b!822621) (not b_lambda!11073) (not mapNonEmpty!23797) (not b!822625) b_and!21981 (not d!104771) (not b!822537) (not b!822482) (not b!822606) (not b!822556) (not bm!35771) (not b_lambda!11077) (not d!104753) (not b!822566) (not b!822561) (not b_lambda!11079) (not bm!35784) (not b!822641) (not b_next!13077) (not bm!35781) (not b!822531) (not bm!35769) (not b_lambda!11083) (not b!822605) (not b!822565) (not bm!35768) (not d!104767))
(check-sat b_and!21981 (not b_next!13077))
