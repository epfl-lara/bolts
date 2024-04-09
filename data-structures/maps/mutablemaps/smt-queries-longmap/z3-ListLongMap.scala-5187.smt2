; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70134 () Bool)

(assert start!70134)

(declare-fun b_free!12531 () Bool)

(declare-fun b_next!12531 () Bool)

(assert (=> start!70134 (= b_free!12531 (not b_next!12531))))

(declare-fun tp!44307 () Bool)

(declare-fun b_and!21321 () Bool)

(assert (=> start!70134 (= tp!44307 b_and!21321)))

(declare-fun res!556454 () Bool)

(declare-fun e!451610 () Bool)

(assert (=> start!70134 (=> (not res!556454) (not e!451610))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70134 (= res!556454 (validMask!0 mask!1312))))

(assert (=> start!70134 e!451610))

(declare-fun tp_is_empty!14241 () Bool)

(assert (=> start!70134 tp_is_empty!14241))

(declare-datatypes ((array!44668 0))(
  ( (array!44669 (arr!21390 (Array (_ BitVec 32) (_ BitVec 64))) (size!21811 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44668)

(declare-fun array_inv!17095 (array!44668) Bool)

(assert (=> start!70134 (array_inv!17095 _keys!976)))

(assert (=> start!70134 true))

(declare-datatypes ((V!23989 0))(
  ( (V!23990 (val!7168 Int)) )
))
(declare-datatypes ((ValueCell!6705 0))(
  ( (ValueCellFull!6705 (v!9591 V!23989)) (EmptyCell!6705) )
))
(declare-datatypes ((array!44670 0))(
  ( (array!44671 (arr!21391 (Array (_ BitVec 32) ValueCell!6705)) (size!21812 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44670)

(declare-fun e!451609 () Bool)

(declare-fun array_inv!17096 (array!44670) Bool)

(assert (=> start!70134 (and (array_inv!17096 _values!788) e!451609)))

(assert (=> start!70134 tp!44307))

(declare-fun mapNonEmpty!22942 () Bool)

(declare-fun mapRes!22942 () Bool)

(declare-fun tp!44308 () Bool)

(declare-fun e!451608 () Bool)

(assert (=> mapNonEmpty!22942 (= mapRes!22942 (and tp!44308 e!451608))))

(declare-fun mapRest!22942 () (Array (_ BitVec 32) ValueCell!6705))

(declare-fun mapValue!22942 () ValueCell!6705)

(declare-fun mapKey!22942 () (_ BitVec 32))

(assert (=> mapNonEmpty!22942 (= (arr!21391 _values!788) (store mapRest!22942 mapKey!22942 mapValue!22942))))

(declare-fun b!814571 () Bool)

(declare-fun res!556456 () Bool)

(assert (=> b!814571 (=> (not res!556456) (not e!451610))))

(declare-datatypes ((List!15275 0))(
  ( (Nil!15272) (Cons!15271 (h!16400 (_ BitVec 64)) (t!21600 List!15275)) )
))
(declare-fun arrayNoDuplicates!0 (array!44668 (_ BitVec 32) List!15275) Bool)

(assert (=> b!814571 (= res!556456 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15272))))

(declare-fun b!814572 () Bool)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!814572 (= e!451610 (not (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!21811 _keys!976)))))))

(declare-datatypes ((tuple2!9402 0))(
  ( (tuple2!9403 (_1!4711 (_ BitVec 64)) (_2!4711 V!23989)) )
))
(declare-datatypes ((List!15276 0))(
  ( (Nil!15273) (Cons!15272 (h!16401 tuple2!9402) (t!21601 List!15276)) )
))
(declare-datatypes ((ListLongMap!8239 0))(
  ( (ListLongMap!8240 (toList!4135 List!15276)) )
))
(declare-fun lt!364687 () ListLongMap!8239)

(declare-fun lt!364686 () ListLongMap!8239)

(assert (=> b!814572 (= lt!364687 lt!364686)))

(declare-fun zeroValueBefore!34 () V!23989)

(declare-fun zeroValueAfter!34 () V!23989)

(declare-fun minValue!754 () V!23989)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27726 0))(
  ( (Unit!27727) )
))
(declare-fun lt!364688 () Unit!27726)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!300 (array!44668 array!44670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23989 V!23989 V!23989 V!23989 (_ BitVec 32) Int) Unit!27726)

(assert (=> b!814572 (= lt!364688 (lemmaNoChangeToArrayThenSameMapNoExtras!300 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2184 (array!44668 array!44670 (_ BitVec 32) (_ BitVec 32) V!23989 V!23989 (_ BitVec 32) Int) ListLongMap!8239)

(assert (=> b!814572 (= lt!364686 (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814572 (= lt!364687 (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814573 () Bool)

(declare-fun e!451607 () Bool)

(assert (=> b!814573 (= e!451607 tp_is_empty!14241)))

(declare-fun b!814574 () Bool)

(declare-fun res!556455 () Bool)

(assert (=> b!814574 (=> (not res!556455) (not e!451610))))

(assert (=> b!814574 (= res!556455 (and (= (size!21812 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21811 _keys!976) (size!21812 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814575 () Bool)

(assert (=> b!814575 (= e!451609 (and e!451607 mapRes!22942))))

(declare-fun condMapEmpty!22942 () Bool)

(declare-fun mapDefault!22942 () ValueCell!6705)

(assert (=> b!814575 (= condMapEmpty!22942 (= (arr!21391 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6705)) mapDefault!22942)))))

(declare-fun mapIsEmpty!22942 () Bool)

(assert (=> mapIsEmpty!22942 mapRes!22942))

(declare-fun b!814576 () Bool)

(assert (=> b!814576 (= e!451608 tp_is_empty!14241)))

(declare-fun b!814577 () Bool)

(declare-fun res!556457 () Bool)

(assert (=> b!814577 (=> (not res!556457) (not e!451610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44668 (_ BitVec 32)) Bool)

(assert (=> b!814577 (= res!556457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70134 res!556454) b!814574))

(assert (= (and b!814574 res!556455) b!814577))

(assert (= (and b!814577 res!556457) b!814571))

(assert (= (and b!814571 res!556456) b!814572))

(assert (= (and b!814575 condMapEmpty!22942) mapIsEmpty!22942))

(assert (= (and b!814575 (not condMapEmpty!22942)) mapNonEmpty!22942))

(get-info :version)

(assert (= (and mapNonEmpty!22942 ((_ is ValueCellFull!6705) mapValue!22942)) b!814576))

(assert (= (and b!814575 ((_ is ValueCellFull!6705) mapDefault!22942)) b!814573))

(assert (= start!70134 b!814575))

(declare-fun m!756437 () Bool)

(assert (=> mapNonEmpty!22942 m!756437))

(declare-fun m!756439 () Bool)

(assert (=> b!814577 m!756439))

(declare-fun m!756441 () Bool)

(assert (=> start!70134 m!756441))

(declare-fun m!756443 () Bool)

(assert (=> start!70134 m!756443))

(declare-fun m!756445 () Bool)

(assert (=> start!70134 m!756445))

(declare-fun m!756447 () Bool)

(assert (=> b!814571 m!756447))

(declare-fun m!756449 () Bool)

(assert (=> b!814572 m!756449))

(declare-fun m!756451 () Bool)

(assert (=> b!814572 m!756451))

(declare-fun m!756453 () Bool)

(assert (=> b!814572 m!756453))

(check-sat tp_is_empty!14241 (not b!814571) (not b!814577) (not b_next!12531) (not b!814572) (not mapNonEmpty!22942) (not start!70134) b_and!21321)
(check-sat b_and!21321 (not b_next!12531))
(get-model)

(declare-fun b!814609 () Bool)

(declare-fun e!451635 () Bool)

(declare-fun call!35502 () Bool)

(assert (=> b!814609 (= e!451635 call!35502)))

(declare-fun b!814610 () Bool)

(declare-fun e!451634 () Bool)

(declare-fun contains!4145 (List!15275 (_ BitVec 64)) Bool)

(assert (=> b!814610 (= e!451634 (contains!4145 Nil!15272 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!814611 () Bool)

(assert (=> b!814611 (= e!451635 call!35502)))

(declare-fun d!104357 () Bool)

(declare-fun res!556476 () Bool)

(declare-fun e!451636 () Bool)

(assert (=> d!104357 (=> res!556476 e!451636)))

(assert (=> d!104357 (= res!556476 (bvsge #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(assert (=> d!104357 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15272) e!451636)))

(declare-fun bm!35499 () Bool)

(declare-fun c!88842 () Bool)

(assert (=> bm!35499 (= call!35502 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88842 (Cons!15271 (select (arr!21390 _keys!976) #b00000000000000000000000000000000) Nil!15272) Nil!15272)))))

(declare-fun b!814612 () Bool)

(declare-fun e!451637 () Bool)

(assert (=> b!814612 (= e!451636 e!451637)))

(declare-fun res!556477 () Bool)

(assert (=> b!814612 (=> (not res!556477) (not e!451637))))

(assert (=> b!814612 (= res!556477 (not e!451634))))

(declare-fun res!556478 () Bool)

(assert (=> b!814612 (=> (not res!556478) (not e!451634))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!814612 (= res!556478 (validKeyInArray!0 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!814613 () Bool)

(assert (=> b!814613 (= e!451637 e!451635)))

(assert (=> b!814613 (= c!88842 (validKeyInArray!0 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104357 (not res!556476)) b!814612))

(assert (= (and b!814612 res!556478) b!814610))

(assert (= (and b!814612 res!556477) b!814613))

(assert (= (and b!814613 c!88842) b!814611))

(assert (= (and b!814613 (not c!88842)) b!814609))

(assert (= (or b!814611 b!814609) bm!35499))

(declare-fun m!756473 () Bool)

(assert (=> b!814610 m!756473))

(assert (=> b!814610 m!756473))

(declare-fun m!756475 () Bool)

(assert (=> b!814610 m!756475))

(assert (=> bm!35499 m!756473))

(declare-fun m!756477 () Bool)

(assert (=> bm!35499 m!756477))

(assert (=> b!814612 m!756473))

(assert (=> b!814612 m!756473))

(declare-fun m!756479 () Bool)

(assert (=> b!814612 m!756479))

(assert (=> b!814613 m!756473))

(assert (=> b!814613 m!756473))

(assert (=> b!814613 m!756479))

(assert (=> b!814571 d!104357))

(declare-fun d!104359 () Bool)

(assert (=> d!104359 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70134 d!104359))

(declare-fun d!104361 () Bool)

(assert (=> d!104361 (= (array_inv!17095 _keys!976) (bvsge (size!21811 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70134 d!104361))

(declare-fun d!104363 () Bool)

(assert (=> d!104363 (= (array_inv!17096 _values!788) (bvsge (size!21812 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70134 d!104363))

(declare-fun d!104365 () Bool)

(assert (=> d!104365 (= (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!364700 () Unit!27726)

(declare-fun choose!1395 (array!44668 array!44670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23989 V!23989 V!23989 V!23989 (_ BitVec 32) Int) Unit!27726)

(assert (=> d!104365 (= lt!364700 (choose!1395 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104365 (validMask!0 mask!1312)))

(assert (=> d!104365 (= (lemmaNoChangeToArrayThenSameMapNoExtras!300 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!364700)))

(declare-fun bs!22663 () Bool)

(assert (= bs!22663 d!104365))

(assert (=> bs!22663 m!756453))

(assert (=> bs!22663 m!756451))

(declare-fun m!756481 () Bool)

(assert (=> bs!22663 m!756481))

(assert (=> bs!22663 m!756441))

(assert (=> b!814572 d!104365))

(declare-fun b!814638 () Bool)

(declare-fun lt!364715 () Unit!27726)

(declare-fun lt!364719 () Unit!27726)

(assert (=> b!814638 (= lt!364715 lt!364719)))

(declare-fun lt!364716 () ListLongMap!8239)

(declare-fun lt!364720 () (_ BitVec 64))

(declare-fun lt!364717 () V!23989)

(declare-fun lt!364718 () (_ BitVec 64))

(declare-fun contains!4146 (ListLongMap!8239 (_ BitVec 64)) Bool)

(declare-fun +!1751 (ListLongMap!8239 tuple2!9402) ListLongMap!8239)

(assert (=> b!814638 (not (contains!4146 (+!1751 lt!364716 (tuple2!9403 lt!364720 lt!364717)) lt!364718))))

(declare-fun addStillNotContains!175 (ListLongMap!8239 (_ BitVec 64) V!23989 (_ BitVec 64)) Unit!27726)

(assert (=> b!814638 (= lt!364719 (addStillNotContains!175 lt!364716 lt!364720 lt!364717 lt!364718))))

(assert (=> b!814638 (= lt!364718 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11476 (ValueCell!6705 V!23989) V!23989)

(declare-fun dynLambda!958 (Int (_ BitVec 64)) V!23989)

(assert (=> b!814638 (= lt!364717 (get!11476 (select (arr!21391 _values!788) #b00000000000000000000000000000000) (dynLambda!958 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!814638 (= lt!364720 (select (arr!21390 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35505 () ListLongMap!8239)

(assert (=> b!814638 (= lt!364716 call!35505)))

(declare-fun e!451654 () ListLongMap!8239)

(assert (=> b!814638 (= e!451654 (+!1751 call!35505 (tuple2!9403 (select (arr!21390 _keys!976) #b00000000000000000000000000000000) (get!11476 (select (arr!21391 _values!788) #b00000000000000000000000000000000) (dynLambda!958 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!814639 () Bool)

(declare-fun e!451656 () Bool)

(declare-fun lt!364721 () ListLongMap!8239)

(declare-fun isEmpty!635 (ListLongMap!8239) Bool)

(assert (=> b!814639 (= e!451656 (isEmpty!635 lt!364721))))

(declare-fun b!814640 () Bool)

(declare-fun res!556488 () Bool)

(declare-fun e!451658 () Bool)

(assert (=> b!814640 (=> (not res!556488) (not e!451658))))

(assert (=> b!814640 (= res!556488 (not (contains!4146 lt!364721 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!814641 () Bool)

(assert (=> b!814641 (= e!451656 (= lt!364721 (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!814642 () Bool)

(declare-fun e!451657 () ListLongMap!8239)

(assert (=> b!814642 (= e!451657 e!451654)))

(declare-fun c!88851 () Bool)

(assert (=> b!814642 (= c!88851 (validKeyInArray!0 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!814643 () Bool)

(declare-fun e!451652 () Bool)

(declare-fun e!451655 () Bool)

(assert (=> b!814643 (= e!451652 e!451655)))

(assert (=> b!814643 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(declare-fun res!556489 () Bool)

(assert (=> b!814643 (= res!556489 (contains!4146 lt!364721 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!814643 (=> (not res!556489) (not e!451655))))

(declare-fun d!104367 () Bool)

(assert (=> d!104367 e!451658))

(declare-fun res!556490 () Bool)

(assert (=> d!104367 (=> (not res!556490) (not e!451658))))

(assert (=> d!104367 (= res!556490 (not (contains!4146 lt!364721 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104367 (= lt!364721 e!451657)))

(declare-fun c!88854 () Bool)

(assert (=> d!104367 (= c!88854 (bvsge #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(assert (=> d!104367 (validMask!0 mask!1312)))

(assert (=> d!104367 (= (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!364721)))

(declare-fun b!814644 () Bool)

(assert (=> b!814644 (= e!451657 (ListLongMap!8240 Nil!15273))))

(declare-fun b!814645 () Bool)

(assert (=> b!814645 (= e!451658 e!451652)))

(declare-fun c!88853 () Bool)

(declare-fun e!451653 () Bool)

(assert (=> b!814645 (= c!88853 e!451653)))

(declare-fun res!556487 () Bool)

(assert (=> b!814645 (=> (not res!556487) (not e!451653))))

(assert (=> b!814645 (= res!556487 (bvslt #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(declare-fun b!814646 () Bool)

(assert (=> b!814646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(assert (=> b!814646 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21812 _values!788)))))

(declare-fun apply!348 (ListLongMap!8239 (_ BitVec 64)) V!23989)

(assert (=> b!814646 (= e!451655 (= (apply!348 lt!364721 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)) (get!11476 (select (arr!21391 _values!788) #b00000000000000000000000000000000) (dynLambda!958 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!814647 () Bool)

(assert (=> b!814647 (= e!451654 call!35505)))

(declare-fun bm!35502 () Bool)

(assert (=> bm!35502 (= call!35505 (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!814648 () Bool)

(assert (=> b!814648 (= e!451653 (validKeyInArray!0 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!814648 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!814649 () Bool)

(assert (=> b!814649 (= e!451652 e!451656)))

(declare-fun c!88852 () Bool)

(assert (=> b!814649 (= c!88852 (bvslt #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(assert (= (and d!104367 c!88854) b!814644))

(assert (= (and d!104367 (not c!88854)) b!814642))

(assert (= (and b!814642 c!88851) b!814638))

(assert (= (and b!814642 (not c!88851)) b!814647))

(assert (= (or b!814638 b!814647) bm!35502))

(assert (= (and d!104367 res!556490) b!814640))

(assert (= (and b!814640 res!556488) b!814645))

(assert (= (and b!814645 res!556487) b!814648))

(assert (= (and b!814645 c!88853) b!814643))

(assert (= (and b!814645 (not c!88853)) b!814649))

(assert (= (and b!814643 res!556489) b!814646))

(assert (= (and b!814649 c!88852) b!814641))

(assert (= (and b!814649 (not c!88852)) b!814639))

(declare-fun b_lambda!10861 () Bool)

(assert (=> (not b_lambda!10861) (not b!814638)))

(declare-fun t!21604 () Bool)

(declare-fun tb!4185 () Bool)

(assert (=> (and start!70134 (= defaultEntry!796 defaultEntry!796) t!21604) tb!4185))

(declare-fun result!7879 () Bool)

(assert (=> tb!4185 (= result!7879 tp_is_empty!14241)))

(assert (=> b!814638 t!21604))

(declare-fun b_and!21325 () Bool)

(assert (= b_and!21321 (and (=> t!21604 result!7879) b_and!21325)))

(declare-fun b_lambda!10863 () Bool)

(assert (=> (not b_lambda!10863) (not b!814646)))

(assert (=> b!814646 t!21604))

(declare-fun b_and!21327 () Bool)

(assert (= b_and!21325 (and (=> t!21604 result!7879) b_and!21327)))

(declare-fun m!756483 () Bool)

(assert (=> b!814639 m!756483))

(declare-fun m!756485 () Bool)

(assert (=> bm!35502 m!756485))

(assert (=> b!814642 m!756473))

(assert (=> b!814642 m!756473))

(assert (=> b!814642 m!756479))

(assert (=> b!814641 m!756485))

(assert (=> b!814638 m!756473))

(declare-fun m!756487 () Bool)

(assert (=> b!814638 m!756487))

(declare-fun m!756489 () Bool)

(assert (=> b!814638 m!756489))

(declare-fun m!756491 () Bool)

(assert (=> b!814638 m!756491))

(declare-fun m!756493 () Bool)

(assert (=> b!814638 m!756493))

(declare-fun m!756495 () Bool)

(assert (=> b!814638 m!756495))

(assert (=> b!814638 m!756493))

(assert (=> b!814638 m!756487))

(assert (=> b!814638 m!756489))

(declare-fun m!756497 () Bool)

(assert (=> b!814638 m!756497))

(declare-fun m!756499 () Bool)

(assert (=> b!814638 m!756499))

(declare-fun m!756501 () Bool)

(assert (=> d!104367 m!756501))

(assert (=> d!104367 m!756441))

(assert (=> b!814648 m!756473))

(assert (=> b!814648 m!756473))

(assert (=> b!814648 m!756479))

(declare-fun m!756503 () Bool)

(assert (=> b!814640 m!756503))

(assert (=> b!814646 m!756473))

(assert (=> b!814646 m!756473))

(declare-fun m!756505 () Bool)

(assert (=> b!814646 m!756505))

(assert (=> b!814646 m!756487))

(assert (=> b!814646 m!756489))

(assert (=> b!814646 m!756491))

(assert (=> b!814646 m!756487))

(assert (=> b!814646 m!756489))

(assert (=> b!814643 m!756473))

(assert (=> b!814643 m!756473))

(declare-fun m!756507 () Bool)

(assert (=> b!814643 m!756507))

(assert (=> b!814572 d!104367))

(declare-fun b!814652 () Bool)

(declare-fun lt!364722 () Unit!27726)

(declare-fun lt!364726 () Unit!27726)

(assert (=> b!814652 (= lt!364722 lt!364726)))

(declare-fun lt!364724 () V!23989)

(declare-fun lt!364725 () (_ BitVec 64))

(declare-fun lt!364723 () ListLongMap!8239)

(declare-fun lt!364727 () (_ BitVec 64))

(assert (=> b!814652 (not (contains!4146 (+!1751 lt!364723 (tuple2!9403 lt!364727 lt!364724)) lt!364725))))

(assert (=> b!814652 (= lt!364726 (addStillNotContains!175 lt!364723 lt!364727 lt!364724 lt!364725))))

(assert (=> b!814652 (= lt!364725 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!814652 (= lt!364724 (get!11476 (select (arr!21391 _values!788) #b00000000000000000000000000000000) (dynLambda!958 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!814652 (= lt!364727 (select (arr!21390 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35506 () ListLongMap!8239)

(assert (=> b!814652 (= lt!364723 call!35506)))

(declare-fun e!451661 () ListLongMap!8239)

(assert (=> b!814652 (= e!451661 (+!1751 call!35506 (tuple2!9403 (select (arr!21390 _keys!976) #b00000000000000000000000000000000) (get!11476 (select (arr!21391 _values!788) #b00000000000000000000000000000000) (dynLambda!958 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!814653 () Bool)

(declare-fun e!451663 () Bool)

(declare-fun lt!364728 () ListLongMap!8239)

(assert (=> b!814653 (= e!451663 (isEmpty!635 lt!364728))))

(declare-fun b!814654 () Bool)

(declare-fun res!556492 () Bool)

(declare-fun e!451665 () Bool)

(assert (=> b!814654 (=> (not res!556492) (not e!451665))))

(assert (=> b!814654 (= res!556492 (not (contains!4146 lt!364728 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!814655 () Bool)

(assert (=> b!814655 (= e!451663 (= lt!364728 (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!814656 () Bool)

(declare-fun e!451664 () ListLongMap!8239)

(assert (=> b!814656 (= e!451664 e!451661)))

(declare-fun c!88855 () Bool)

(assert (=> b!814656 (= c!88855 (validKeyInArray!0 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!814657 () Bool)

(declare-fun e!451659 () Bool)

(declare-fun e!451662 () Bool)

(assert (=> b!814657 (= e!451659 e!451662)))

(assert (=> b!814657 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(declare-fun res!556493 () Bool)

(assert (=> b!814657 (= res!556493 (contains!4146 lt!364728 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!814657 (=> (not res!556493) (not e!451662))))

(declare-fun d!104369 () Bool)

(assert (=> d!104369 e!451665))

(declare-fun res!556494 () Bool)

(assert (=> d!104369 (=> (not res!556494) (not e!451665))))

(assert (=> d!104369 (= res!556494 (not (contains!4146 lt!364728 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104369 (= lt!364728 e!451664)))

(declare-fun c!88858 () Bool)

(assert (=> d!104369 (= c!88858 (bvsge #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(assert (=> d!104369 (validMask!0 mask!1312)))

(assert (=> d!104369 (= (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!364728)))

(declare-fun b!814658 () Bool)

(assert (=> b!814658 (= e!451664 (ListLongMap!8240 Nil!15273))))

(declare-fun b!814659 () Bool)

(assert (=> b!814659 (= e!451665 e!451659)))

(declare-fun c!88857 () Bool)

(declare-fun e!451660 () Bool)

(assert (=> b!814659 (= c!88857 e!451660)))

(declare-fun res!556491 () Bool)

(assert (=> b!814659 (=> (not res!556491) (not e!451660))))

(assert (=> b!814659 (= res!556491 (bvslt #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(declare-fun b!814660 () Bool)

(assert (=> b!814660 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(assert (=> b!814660 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21812 _values!788)))))

(assert (=> b!814660 (= e!451662 (= (apply!348 lt!364728 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)) (get!11476 (select (arr!21391 _values!788) #b00000000000000000000000000000000) (dynLambda!958 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!814661 () Bool)

(assert (=> b!814661 (= e!451661 call!35506)))

(declare-fun bm!35503 () Bool)

(assert (=> bm!35503 (= call!35506 (getCurrentListMapNoExtraKeys!2184 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!814662 () Bool)

(assert (=> b!814662 (= e!451660 (validKeyInArray!0 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!814662 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!814663 () Bool)

(assert (=> b!814663 (= e!451659 e!451663)))

(declare-fun c!88856 () Bool)

(assert (=> b!814663 (= c!88856 (bvslt #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(assert (= (and d!104369 c!88858) b!814658))

(assert (= (and d!104369 (not c!88858)) b!814656))

(assert (= (and b!814656 c!88855) b!814652))

(assert (= (and b!814656 (not c!88855)) b!814661))

(assert (= (or b!814652 b!814661) bm!35503))

(assert (= (and d!104369 res!556494) b!814654))

(assert (= (and b!814654 res!556492) b!814659))

(assert (= (and b!814659 res!556491) b!814662))

(assert (= (and b!814659 c!88857) b!814657))

(assert (= (and b!814659 (not c!88857)) b!814663))

(assert (= (and b!814657 res!556493) b!814660))

(assert (= (and b!814663 c!88856) b!814655))

(assert (= (and b!814663 (not c!88856)) b!814653))

(declare-fun b_lambda!10865 () Bool)

(assert (=> (not b_lambda!10865) (not b!814652)))

(assert (=> b!814652 t!21604))

(declare-fun b_and!21329 () Bool)

(assert (= b_and!21327 (and (=> t!21604 result!7879) b_and!21329)))

(declare-fun b_lambda!10867 () Bool)

(assert (=> (not b_lambda!10867) (not b!814660)))

(assert (=> b!814660 t!21604))

(declare-fun b_and!21331 () Bool)

(assert (= b_and!21329 (and (=> t!21604 result!7879) b_and!21331)))

(declare-fun m!756509 () Bool)

(assert (=> b!814653 m!756509))

(declare-fun m!756511 () Bool)

(assert (=> bm!35503 m!756511))

(assert (=> b!814656 m!756473))

(assert (=> b!814656 m!756473))

(assert (=> b!814656 m!756479))

(assert (=> b!814655 m!756511))

(assert (=> b!814652 m!756473))

(assert (=> b!814652 m!756487))

(assert (=> b!814652 m!756489))

(assert (=> b!814652 m!756491))

(declare-fun m!756513 () Bool)

(assert (=> b!814652 m!756513))

(declare-fun m!756515 () Bool)

(assert (=> b!814652 m!756515))

(assert (=> b!814652 m!756513))

(assert (=> b!814652 m!756487))

(assert (=> b!814652 m!756489))

(declare-fun m!756517 () Bool)

(assert (=> b!814652 m!756517))

(declare-fun m!756519 () Bool)

(assert (=> b!814652 m!756519))

(declare-fun m!756521 () Bool)

(assert (=> d!104369 m!756521))

(assert (=> d!104369 m!756441))

(assert (=> b!814662 m!756473))

(assert (=> b!814662 m!756473))

(assert (=> b!814662 m!756479))

(declare-fun m!756523 () Bool)

(assert (=> b!814654 m!756523))

(assert (=> b!814660 m!756473))

(assert (=> b!814660 m!756473))

(declare-fun m!756525 () Bool)

(assert (=> b!814660 m!756525))

(assert (=> b!814660 m!756487))

(assert (=> b!814660 m!756489))

(assert (=> b!814660 m!756491))

(assert (=> b!814660 m!756487))

(assert (=> b!814660 m!756489))

(assert (=> b!814657 m!756473))

(assert (=> b!814657 m!756473))

(declare-fun m!756527 () Bool)

(assert (=> b!814657 m!756527))

(assert (=> b!814572 d!104369))

(declare-fun b!814672 () Bool)

(declare-fun e!451674 () Bool)

(declare-fun call!35509 () Bool)

(assert (=> b!814672 (= e!451674 call!35509)))

(declare-fun b!814673 () Bool)

(declare-fun e!451673 () Bool)

(assert (=> b!814673 (= e!451673 call!35509)))

(declare-fun b!814674 () Bool)

(assert (=> b!814674 (= e!451674 e!451673)))

(declare-fun lt!364737 () (_ BitVec 64))

(assert (=> b!814674 (= lt!364737 (select (arr!21390 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!364736 () Unit!27726)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44668 (_ BitVec 64) (_ BitVec 32)) Unit!27726)

(assert (=> b!814674 (= lt!364736 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!364737 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!814674 (arrayContainsKey!0 _keys!976 lt!364737 #b00000000000000000000000000000000)))

(declare-fun lt!364735 () Unit!27726)

(assert (=> b!814674 (= lt!364735 lt!364736)))

(declare-fun res!556500 () Bool)

(declare-datatypes ((SeekEntryResult!8709 0))(
  ( (MissingZero!8709 (index!37206 (_ BitVec 32))) (Found!8709 (index!37207 (_ BitVec 32))) (Intermediate!8709 (undefined!9521 Bool) (index!37208 (_ BitVec 32)) (x!68515 (_ BitVec 32))) (Undefined!8709) (MissingVacant!8709 (index!37209 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44668 (_ BitVec 32)) SeekEntryResult!8709)

(assert (=> b!814674 (= res!556500 (= (seekEntryOrOpen!0 (select (arr!21390 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8709 #b00000000000000000000000000000000)))))

(assert (=> b!814674 (=> (not res!556500) (not e!451673))))

(declare-fun d!104371 () Bool)

(declare-fun res!556499 () Bool)

(declare-fun e!451672 () Bool)

(assert (=> d!104371 (=> res!556499 e!451672)))

(assert (=> d!104371 (= res!556499 (bvsge #b00000000000000000000000000000000 (size!21811 _keys!976)))))

(assert (=> d!104371 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!451672)))

(declare-fun b!814675 () Bool)

(assert (=> b!814675 (= e!451672 e!451674)))

(declare-fun c!88861 () Bool)

(assert (=> b!814675 (= c!88861 (validKeyInArray!0 (select (arr!21390 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35506 () Bool)

(assert (=> bm!35506 (= call!35509 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(assert (= (and d!104371 (not res!556499)) b!814675))

(assert (= (and b!814675 c!88861) b!814674))

(assert (= (and b!814675 (not c!88861)) b!814672))

(assert (= (and b!814674 res!556500) b!814673))

(assert (= (or b!814673 b!814672) bm!35506))

(assert (=> b!814674 m!756473))

(declare-fun m!756529 () Bool)

(assert (=> b!814674 m!756529))

(declare-fun m!756531 () Bool)

(assert (=> b!814674 m!756531))

(assert (=> b!814674 m!756473))

(declare-fun m!756533 () Bool)

(assert (=> b!814674 m!756533))

(assert (=> b!814675 m!756473))

(assert (=> b!814675 m!756473))

(assert (=> b!814675 m!756479))

(declare-fun m!756535 () Bool)

(assert (=> bm!35506 m!756535))

(assert (=> b!814577 d!104371))

(declare-fun mapIsEmpty!22948 () Bool)

(declare-fun mapRes!22948 () Bool)

(assert (=> mapIsEmpty!22948 mapRes!22948))

(declare-fun condMapEmpty!22948 () Bool)

(declare-fun mapDefault!22948 () ValueCell!6705)

(assert (=> mapNonEmpty!22942 (= condMapEmpty!22948 (= mapRest!22942 ((as const (Array (_ BitVec 32) ValueCell!6705)) mapDefault!22948)))))

(declare-fun e!451679 () Bool)

(assert (=> mapNonEmpty!22942 (= tp!44308 (and e!451679 mapRes!22948))))

(declare-fun mapNonEmpty!22948 () Bool)

(declare-fun tp!44317 () Bool)

(declare-fun e!451680 () Bool)

(assert (=> mapNonEmpty!22948 (= mapRes!22948 (and tp!44317 e!451680))))

(declare-fun mapKey!22948 () (_ BitVec 32))

(declare-fun mapValue!22948 () ValueCell!6705)

(declare-fun mapRest!22948 () (Array (_ BitVec 32) ValueCell!6705))

(assert (=> mapNonEmpty!22948 (= mapRest!22942 (store mapRest!22948 mapKey!22948 mapValue!22948))))

(declare-fun b!814682 () Bool)

(assert (=> b!814682 (= e!451680 tp_is_empty!14241)))

(declare-fun b!814683 () Bool)

(assert (=> b!814683 (= e!451679 tp_is_empty!14241)))

(assert (= (and mapNonEmpty!22942 condMapEmpty!22948) mapIsEmpty!22948))

(assert (= (and mapNonEmpty!22942 (not condMapEmpty!22948)) mapNonEmpty!22948))

(assert (= (and mapNonEmpty!22948 ((_ is ValueCellFull!6705) mapValue!22948)) b!814682))

(assert (= (and mapNonEmpty!22942 ((_ is ValueCellFull!6705) mapDefault!22948)) b!814683))

(declare-fun m!756537 () Bool)

(assert (=> mapNonEmpty!22948 m!756537))

(declare-fun b_lambda!10869 () Bool)

(assert (= b_lambda!10867 (or (and start!70134 b_free!12531) b_lambda!10869)))

(declare-fun b_lambda!10871 () Bool)

(assert (= b_lambda!10861 (or (and start!70134 b_free!12531) b_lambda!10871)))

(declare-fun b_lambda!10873 () Bool)

(assert (= b_lambda!10863 (or (and start!70134 b_free!12531) b_lambda!10873)))

(declare-fun b_lambda!10875 () Bool)

(assert (= b_lambda!10865 (or (and start!70134 b_free!12531) b_lambda!10875)))

(check-sat (not b!814674) (not b!814660) (not bm!35503) (not b!814648) (not b!814657) (not b!814643) b_and!21331 (not b_lambda!10871) (not bm!35506) (not b!814646) (not b!814654) (not b!814613) (not mapNonEmpty!22948) (not b_lambda!10875) tp_is_empty!14241 (not b!814638) (not b!814652) (not b!814640) (not d!104367) (not b!814653) (not b_lambda!10873) (not b!814639) (not b!814655) (not b!814641) (not b!814675) (not d!104369) (not bm!35502) (not b_next!12531) (not bm!35499) (not b_lambda!10869) (not b!814612) (not b!814642) (not b!814610) (not b!814662) (not d!104365) (not b!814656))
(check-sat b_and!21331 (not b_next!12531))
