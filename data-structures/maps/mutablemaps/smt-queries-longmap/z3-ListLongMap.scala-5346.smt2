; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71464 () Bool)

(assert start!71464)

(declare-fun b_free!13485 () Bool)

(declare-fun b_next!13485 () Bool)

(assert (=> start!71464 (= b_free!13485 (not b_next!13485))))

(declare-fun tp!47236 () Bool)

(declare-fun b_and!22509 () Bool)

(assert (=> start!71464 (= tp!47236 b_and!22509)))

(declare-fun res!565189 () Bool)

(declare-fun e!462447 () Bool)

(assert (=> start!71464 (=> (not res!565189) (not e!462447))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71464 (= res!565189 (validMask!0 mask!1312))))

(assert (=> start!71464 e!462447))

(declare-fun tp_is_empty!15195 () Bool)

(assert (=> start!71464 tp_is_empty!15195))

(declare-datatypes ((array!46532 0))(
  ( (array!46533 (arr!22300 (Array (_ BitVec 32) (_ BitVec 64))) (size!22721 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46532)

(declare-fun array_inv!17739 (array!46532) Bool)

(assert (=> start!71464 (array_inv!17739 _keys!976)))

(assert (=> start!71464 true))

(declare-datatypes ((V!25261 0))(
  ( (V!25262 (val!7645 Int)) )
))
(declare-datatypes ((ValueCell!7182 0))(
  ( (ValueCellFull!7182 (v!10081 V!25261)) (EmptyCell!7182) )
))
(declare-datatypes ((array!46534 0))(
  ( (array!46535 (arr!22301 (Array (_ BitVec 32) ValueCell!7182)) (size!22722 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46534)

(declare-fun e!462446 () Bool)

(declare-fun array_inv!17740 (array!46534) Bool)

(assert (=> start!71464 (and (array_inv!17740 _values!788) e!462446)))

(assert (=> start!71464 tp!47236))

(declare-fun b!829515 () Bool)

(declare-fun e!462444 () Bool)

(declare-fun mapRes!24439 () Bool)

(assert (=> b!829515 (= e!462446 (and e!462444 mapRes!24439))))

(declare-fun condMapEmpty!24439 () Bool)

(declare-fun mapDefault!24439 () ValueCell!7182)

(assert (=> b!829515 (= condMapEmpty!24439 (= (arr!22301 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7182)) mapDefault!24439)))))

(declare-fun b!829516 () Bool)

(declare-fun res!565185 () Bool)

(assert (=> b!829516 (=> (not res!565185) (not e!462447))))

(declare-datatypes ((List!15995 0))(
  ( (Nil!15992) (Cons!15991 (h!17120 (_ BitVec 64)) (t!22364 List!15995)) )
))
(declare-fun arrayNoDuplicates!0 (array!46532 (_ BitVec 32) List!15995) Bool)

(assert (=> b!829516 (= res!565185 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15992))))

(declare-fun mapIsEmpty!24439 () Bool)

(assert (=> mapIsEmpty!24439 mapRes!24439))

(declare-fun b!829517 () Bool)

(declare-fun res!565188 () Bool)

(assert (=> b!829517 (=> (not res!565188) (not e!462447))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!829517 (= res!565188 (and (= (size!22722 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22721 _keys!976) (size!22722 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!24439 () Bool)

(declare-fun tp!47235 () Bool)

(declare-fun e!462442 () Bool)

(assert (=> mapNonEmpty!24439 (= mapRes!24439 (and tp!47235 e!462442))))

(declare-fun mapValue!24439 () ValueCell!7182)

(declare-fun mapRest!24439 () (Array (_ BitVec 32) ValueCell!7182))

(declare-fun mapKey!24439 () (_ BitVec 32))

(assert (=> mapNonEmpty!24439 (= (arr!22301 _values!788) (store mapRest!24439 mapKey!24439 mapValue!24439))))

(declare-fun b!829518 () Bool)

(assert (=> b!829518 (= e!462442 tp_is_empty!15195)))

(declare-fun b!829519 () Bool)

(assert (=> b!829519 (= e!462444 tp_is_empty!15195)))

(declare-datatypes ((tuple2!10164 0))(
  ( (tuple2!10165 (_1!5092 (_ BitVec 64)) (_2!5092 V!25261)) )
))
(declare-datatypes ((List!15996 0))(
  ( (Nil!15993) (Cons!15992 (h!17121 tuple2!10164) (t!22365 List!15996)) )
))
(declare-datatypes ((ListLongMap!9001 0))(
  ( (ListLongMap!9002 (toList!4516 List!15996)) )
))
(declare-fun lt!376251 () ListLongMap!9001)

(declare-fun zeroValueBefore!34 () V!25261)

(declare-fun e!462443 () Bool)

(declare-fun minValue!754 () V!25261)

(declare-fun defaultEntry!796 () Int)

(declare-fun b!829520 () Bool)

(declare-fun getCurrentListMap!2588 (array!46532 array!46534 (_ BitVec 32) (_ BitVec 32) V!25261 V!25261 (_ BitVec 32) Int) ListLongMap!9001)

(declare-fun +!1946 (ListLongMap!9001 tuple2!10164) ListLongMap!9001)

(assert (=> b!829520 (= e!462443 (= (getCurrentListMap!2588 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1946 (+!1946 lt!376251 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun zeroValueAfter!34 () V!25261)

(declare-fun lt!376250 () ListLongMap!9001)

(assert (=> b!829520 (= lt!376250 (getCurrentListMap!2588 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829521 () Bool)

(assert (=> b!829521 (= e!462447 (not e!462443))))

(declare-fun res!565187 () Bool)

(assert (=> b!829521 (=> res!565187 e!462443)))

(assert (=> b!829521 (= res!565187 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!376249 () ListLongMap!9001)

(assert (=> b!829521 (= lt!376251 lt!376249)))

(declare-datatypes ((Unit!28421 0))(
  ( (Unit!28422) )
))
(declare-fun lt!376248 () Unit!28421)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!606 (array!46532 array!46534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25261 V!25261 V!25261 V!25261 (_ BitVec 32) Int) Unit!28421)

(assert (=> b!829521 (= lt!376248 (lemmaNoChangeToArrayThenSameMapNoExtras!606 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2516 (array!46532 array!46534 (_ BitVec 32) (_ BitVec 32) V!25261 V!25261 (_ BitVec 32) Int) ListLongMap!9001)

(assert (=> b!829521 (= lt!376249 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829521 (= lt!376251 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829522 () Bool)

(declare-fun res!565186 () Bool)

(assert (=> b!829522 (=> (not res!565186) (not e!462447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46532 (_ BitVec 32)) Bool)

(assert (=> b!829522 (= res!565186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!71464 res!565189) b!829517))

(assert (= (and b!829517 res!565188) b!829522))

(assert (= (and b!829522 res!565186) b!829516))

(assert (= (and b!829516 res!565185) b!829521))

(assert (= (and b!829521 (not res!565187)) b!829520))

(assert (= (and b!829515 condMapEmpty!24439) mapIsEmpty!24439))

(assert (= (and b!829515 (not condMapEmpty!24439)) mapNonEmpty!24439))

(get-info :version)

(assert (= (and mapNonEmpty!24439 ((_ is ValueCellFull!7182) mapValue!24439)) b!829518))

(assert (= (and b!829515 ((_ is ValueCellFull!7182) mapDefault!24439)) b!829519))

(assert (= start!71464 b!829515))

(declare-fun m!772631 () Bool)

(assert (=> start!71464 m!772631))

(declare-fun m!772633 () Bool)

(assert (=> start!71464 m!772633))

(declare-fun m!772635 () Bool)

(assert (=> start!71464 m!772635))

(declare-fun m!772637 () Bool)

(assert (=> b!829521 m!772637))

(declare-fun m!772639 () Bool)

(assert (=> b!829521 m!772639))

(declare-fun m!772641 () Bool)

(assert (=> b!829521 m!772641))

(declare-fun m!772643 () Bool)

(assert (=> b!829516 m!772643))

(declare-fun m!772645 () Bool)

(assert (=> b!829520 m!772645))

(declare-fun m!772647 () Bool)

(assert (=> b!829520 m!772647))

(assert (=> b!829520 m!772647))

(declare-fun m!772649 () Bool)

(assert (=> b!829520 m!772649))

(declare-fun m!772651 () Bool)

(assert (=> b!829520 m!772651))

(declare-fun m!772653 () Bool)

(assert (=> mapNonEmpty!24439 m!772653))

(declare-fun m!772655 () Bool)

(assert (=> b!829522 m!772655))

(check-sat (not b!829516) (not mapNonEmpty!24439) (not b_next!13485) (not b!829521) b_and!22509 (not start!71464) tp_is_empty!15195 (not b!829522) (not b!829520))
(check-sat b_and!22509 (not b_next!13485))
(get-model)

(declare-fun d!105203 () Bool)

(assert (=> d!105203 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71464 d!105203))

(declare-fun d!105205 () Bool)

(assert (=> d!105205 (= (array_inv!17739 _keys!976) (bvsge (size!22721 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71464 d!105205))

(declare-fun d!105207 () Bool)

(assert (=> d!105207 (= (array_inv!17740 _values!788) (bvsge (size!22722 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71464 d!105207))

(declare-fun b!829555 () Bool)

(declare-fun e!462473 () Bool)

(declare-fun call!36149 () Bool)

(assert (=> b!829555 (= e!462473 call!36149)))

(declare-fun b!829556 () Bool)

(declare-fun e!462472 () Bool)

(assert (=> b!829556 (= e!462472 e!462473)))

(declare-fun c!89692 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!829556 (= c!89692 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829557 () Bool)

(declare-fun e!462474 () Bool)

(assert (=> b!829557 (= e!462473 e!462474)))

(declare-fun lt!376271 () (_ BitVec 64))

(assert (=> b!829557 (= lt!376271 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376272 () Unit!28421)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46532 (_ BitVec 64) (_ BitVec 32)) Unit!28421)

(assert (=> b!829557 (= lt!376272 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!376271 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!829557 (arrayContainsKey!0 _keys!976 lt!376271 #b00000000000000000000000000000000)))

(declare-fun lt!376270 () Unit!28421)

(assert (=> b!829557 (= lt!376270 lt!376272)))

(declare-fun res!565209 () Bool)

(declare-datatypes ((SeekEntryResult!8731 0))(
  ( (MissingZero!8731 (index!37294 (_ BitVec 32))) (Found!8731 (index!37295 (_ BitVec 32))) (Intermediate!8731 (undefined!9543 Bool) (index!37296 (_ BitVec 32)) (x!70051 (_ BitVec 32))) (Undefined!8731) (MissingVacant!8731 (index!37297 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46532 (_ BitVec 32)) SeekEntryResult!8731)

(assert (=> b!829557 (= res!565209 (= (seekEntryOrOpen!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8731 #b00000000000000000000000000000000)))))

(assert (=> b!829557 (=> (not res!565209) (not e!462474))))

(declare-fun bm!36146 () Bool)

(assert (=> bm!36146 (= call!36149 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!829558 () Bool)

(assert (=> b!829558 (= e!462474 call!36149)))

(declare-fun d!105209 () Bool)

(declare-fun res!565210 () Bool)

(assert (=> d!105209 (=> res!565210 e!462472)))

(assert (=> d!105209 (= res!565210 (bvsge #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(assert (=> d!105209 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!462472)))

(assert (= (and d!105209 (not res!565210)) b!829556))

(assert (= (and b!829556 c!89692) b!829557))

(assert (= (and b!829556 (not c!89692)) b!829555))

(assert (= (and b!829557 res!565209) b!829558))

(assert (= (or b!829558 b!829555) bm!36146))

(declare-fun m!772683 () Bool)

(assert (=> b!829556 m!772683))

(assert (=> b!829556 m!772683))

(declare-fun m!772685 () Bool)

(assert (=> b!829556 m!772685))

(assert (=> b!829557 m!772683))

(declare-fun m!772687 () Bool)

(assert (=> b!829557 m!772687))

(declare-fun m!772689 () Bool)

(assert (=> b!829557 m!772689))

(assert (=> b!829557 m!772683))

(declare-fun m!772691 () Bool)

(assert (=> b!829557 m!772691))

(declare-fun m!772693 () Bool)

(assert (=> bm!36146 m!772693))

(assert (=> b!829522 d!105209))

(declare-fun d!105211 () Bool)

(assert (=> d!105211 (= (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376275 () Unit!28421)

(declare-fun choose!1422 (array!46532 array!46534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25261 V!25261 V!25261 V!25261 (_ BitVec 32) Int) Unit!28421)

(assert (=> d!105211 (= lt!376275 (choose!1422 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!105211 (validMask!0 mask!1312)))

(assert (=> d!105211 (= (lemmaNoChangeToArrayThenSameMapNoExtras!606 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376275)))

(declare-fun bs!23167 () Bool)

(assert (= bs!23167 d!105211))

(assert (=> bs!23167 m!772641))

(assert (=> bs!23167 m!772639))

(declare-fun m!772695 () Bool)

(assert (=> bs!23167 m!772695))

(assert (=> bs!23167 m!772631))

(assert (=> b!829521 d!105211))

(declare-fun b!829583 () Bool)

(declare-fun e!462492 () ListLongMap!9001)

(declare-fun e!462495 () ListLongMap!9001)

(assert (=> b!829583 (= e!462492 e!462495)))

(declare-fun c!89704 () Bool)

(assert (=> b!829583 (= c!89704 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829584 () Bool)

(declare-fun res!565219 () Bool)

(declare-fun e!462494 () Bool)

(assert (=> b!829584 (=> (not res!565219) (not e!462494))))

(declare-fun lt!376291 () ListLongMap!9001)

(declare-fun contains!4202 (ListLongMap!9001 (_ BitVec 64)) Bool)

(assert (=> b!829584 (= res!565219 (not (contains!4202 lt!376291 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!829585 () Bool)

(declare-fun e!462489 () Bool)

(declare-fun e!462490 () Bool)

(assert (=> b!829585 (= e!462489 e!462490)))

(assert (=> b!829585 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun res!565221 () Bool)

(assert (=> b!829585 (= res!565221 (contains!4202 lt!376291 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829585 (=> (not res!565221) (not e!462490))))

(declare-fun b!829586 () Bool)

(declare-fun e!462493 () Bool)

(assert (=> b!829586 (= e!462493 (= lt!376291 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!105213 () Bool)

(assert (=> d!105213 e!462494))

(declare-fun res!565220 () Bool)

(assert (=> d!105213 (=> (not res!565220) (not e!462494))))

(assert (=> d!105213 (= res!565220 (not (contains!4202 lt!376291 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105213 (= lt!376291 e!462492)))

(declare-fun c!89702 () Bool)

(assert (=> d!105213 (= c!89702 (bvsge #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(assert (=> d!105213 (validMask!0 mask!1312)))

(assert (=> d!105213 (= (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376291)))

(declare-fun b!829587 () Bool)

(assert (=> b!829587 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(assert (=> b!829587 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22722 _values!788)))))

(declare-fun apply!370 (ListLongMap!9001 (_ BitVec 64)) V!25261)

(declare-fun get!11816 (ValueCell!7182 V!25261) V!25261)

(declare-fun dynLambda!980 (Int (_ BitVec 64)) V!25261)

(assert (=> b!829587 (= e!462490 (= (apply!370 lt!376291 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)) (get!11816 (select (arr!22301 _values!788) #b00000000000000000000000000000000) (dynLambda!980 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!829588 () Bool)

(declare-fun isEmpty!657 (ListLongMap!9001) Bool)

(assert (=> b!829588 (= e!462493 (isEmpty!657 lt!376291))))

(declare-fun b!829589 () Bool)

(assert (=> b!829589 (= e!462494 e!462489)))

(declare-fun c!89703 () Bool)

(declare-fun e!462491 () Bool)

(assert (=> b!829589 (= c!89703 e!462491)))

(declare-fun res!565222 () Bool)

(assert (=> b!829589 (=> (not res!565222) (not e!462491))))

(assert (=> b!829589 (= res!565222 (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun b!829590 () Bool)

(declare-fun lt!376290 () Unit!28421)

(declare-fun lt!376292 () Unit!28421)

(assert (=> b!829590 (= lt!376290 lt!376292)))

(declare-fun lt!376293 () (_ BitVec 64))

(declare-fun lt!376294 () ListLongMap!9001)

(declare-fun lt!376296 () V!25261)

(declare-fun lt!376295 () (_ BitVec 64))

(assert (=> b!829590 (not (contains!4202 (+!1946 lt!376294 (tuple2!10165 lt!376293 lt!376296)) lt!376295))))

(declare-fun addStillNotContains!197 (ListLongMap!9001 (_ BitVec 64) V!25261 (_ BitVec 64)) Unit!28421)

(assert (=> b!829590 (= lt!376292 (addStillNotContains!197 lt!376294 lt!376293 lt!376296 lt!376295))))

(assert (=> b!829590 (= lt!376295 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!829590 (= lt!376296 (get!11816 (select (arr!22301 _values!788) #b00000000000000000000000000000000) (dynLambda!980 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!829590 (= lt!376293 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36152 () ListLongMap!9001)

(assert (=> b!829590 (= lt!376294 call!36152)))

(assert (=> b!829590 (= e!462495 (+!1946 call!36152 (tuple2!10165 (select (arr!22300 _keys!976) #b00000000000000000000000000000000) (get!11816 (select (arr!22301 _values!788) #b00000000000000000000000000000000) (dynLambda!980 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!829591 () Bool)

(assert (=> b!829591 (= e!462489 e!462493)))

(declare-fun c!89701 () Bool)

(assert (=> b!829591 (= c!89701 (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun bm!36149 () Bool)

(assert (=> bm!36149 (= call!36152 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!829592 () Bool)

(assert (=> b!829592 (= e!462492 (ListLongMap!9002 Nil!15993))))

(declare-fun b!829593 () Bool)

(assert (=> b!829593 (= e!462491 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829593 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!829594 () Bool)

(assert (=> b!829594 (= e!462495 call!36152)))

(assert (= (and d!105213 c!89702) b!829592))

(assert (= (and d!105213 (not c!89702)) b!829583))

(assert (= (and b!829583 c!89704) b!829590))

(assert (= (and b!829583 (not c!89704)) b!829594))

(assert (= (or b!829590 b!829594) bm!36149))

(assert (= (and d!105213 res!565220) b!829584))

(assert (= (and b!829584 res!565219) b!829589))

(assert (= (and b!829589 res!565222) b!829593))

(assert (= (and b!829589 c!89703) b!829585))

(assert (= (and b!829589 (not c!89703)) b!829591))

(assert (= (and b!829585 res!565221) b!829587))

(assert (= (and b!829591 c!89701) b!829586))

(assert (= (and b!829591 (not c!89701)) b!829588))

(declare-fun b_lambda!11329 () Bool)

(assert (=> (not b_lambda!11329) (not b!829587)))

(declare-fun t!22369 () Bool)

(declare-fun tb!4229 () Bool)

(assert (=> (and start!71464 (= defaultEntry!796 defaultEntry!796) t!22369) tb!4229))

(declare-fun result!8011 () Bool)

(assert (=> tb!4229 (= result!8011 tp_is_empty!15195)))

(assert (=> b!829587 t!22369))

(declare-fun b_and!22513 () Bool)

(assert (= b_and!22509 (and (=> t!22369 result!8011) b_and!22513)))

(declare-fun b_lambda!11331 () Bool)

(assert (=> (not b_lambda!11331) (not b!829590)))

(assert (=> b!829590 t!22369))

(declare-fun b_and!22515 () Bool)

(assert (= b_and!22513 (and (=> t!22369 result!8011) b_and!22515)))

(assert (=> b!829583 m!772683))

(assert (=> b!829583 m!772683))

(assert (=> b!829583 m!772685))

(declare-fun m!772697 () Bool)

(assert (=> d!105213 m!772697))

(assert (=> d!105213 m!772631))

(declare-fun m!772699 () Bool)

(assert (=> b!829584 m!772699))

(declare-fun m!772701 () Bool)

(assert (=> b!829588 m!772701))

(declare-fun m!772703 () Bool)

(assert (=> b!829587 m!772703))

(assert (=> b!829587 m!772683))

(declare-fun m!772705 () Bool)

(assert (=> b!829587 m!772705))

(declare-fun m!772707 () Bool)

(assert (=> b!829587 m!772707))

(assert (=> b!829587 m!772703))

(assert (=> b!829587 m!772707))

(declare-fun m!772709 () Bool)

(assert (=> b!829587 m!772709))

(assert (=> b!829587 m!772683))

(assert (=> b!829593 m!772683))

(assert (=> b!829593 m!772683))

(assert (=> b!829593 m!772685))

(assert (=> b!829585 m!772683))

(assert (=> b!829585 m!772683))

(declare-fun m!772711 () Bool)

(assert (=> b!829585 m!772711))

(assert (=> b!829590 m!772703))

(declare-fun m!772713 () Bool)

(assert (=> b!829590 m!772713))

(declare-fun m!772715 () Bool)

(assert (=> b!829590 m!772715))

(assert (=> b!829590 m!772707))

(assert (=> b!829590 m!772713))

(declare-fun m!772717 () Bool)

(assert (=> b!829590 m!772717))

(declare-fun m!772719 () Bool)

(assert (=> b!829590 m!772719))

(assert (=> b!829590 m!772703))

(assert (=> b!829590 m!772707))

(assert (=> b!829590 m!772709))

(assert (=> b!829590 m!772683))

(declare-fun m!772721 () Bool)

(assert (=> bm!36149 m!772721))

(assert (=> b!829586 m!772721))

(assert (=> b!829521 d!105213))

(declare-fun b!829597 () Bool)

(declare-fun e!462499 () ListLongMap!9001)

(declare-fun e!462502 () ListLongMap!9001)

(assert (=> b!829597 (= e!462499 e!462502)))

(declare-fun c!89708 () Bool)

(assert (=> b!829597 (= c!89708 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829598 () Bool)

(declare-fun res!565223 () Bool)

(declare-fun e!462501 () Bool)

(assert (=> b!829598 (=> (not res!565223) (not e!462501))))

(declare-fun lt!376298 () ListLongMap!9001)

(assert (=> b!829598 (= res!565223 (not (contains!4202 lt!376298 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!829599 () Bool)

(declare-fun e!462496 () Bool)

(declare-fun e!462497 () Bool)

(assert (=> b!829599 (= e!462496 e!462497)))

(assert (=> b!829599 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun res!565225 () Bool)

(assert (=> b!829599 (= res!565225 (contains!4202 lt!376298 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829599 (=> (not res!565225) (not e!462497))))

(declare-fun e!462500 () Bool)

(declare-fun b!829600 () Bool)

(assert (=> b!829600 (= e!462500 (= lt!376298 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun d!105215 () Bool)

(assert (=> d!105215 e!462501))

(declare-fun res!565224 () Bool)

(assert (=> d!105215 (=> (not res!565224) (not e!462501))))

(assert (=> d!105215 (= res!565224 (not (contains!4202 lt!376298 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105215 (= lt!376298 e!462499)))

(declare-fun c!89706 () Bool)

(assert (=> d!105215 (= c!89706 (bvsge #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(assert (=> d!105215 (validMask!0 mask!1312)))

(assert (=> d!105215 (= (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376298)))

(declare-fun b!829601 () Bool)

(assert (=> b!829601 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(assert (=> b!829601 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22722 _values!788)))))

(assert (=> b!829601 (= e!462497 (= (apply!370 lt!376298 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)) (get!11816 (select (arr!22301 _values!788) #b00000000000000000000000000000000) (dynLambda!980 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!829602 () Bool)

(assert (=> b!829602 (= e!462500 (isEmpty!657 lt!376298))))

(declare-fun b!829603 () Bool)

(assert (=> b!829603 (= e!462501 e!462496)))

(declare-fun c!89707 () Bool)

(declare-fun e!462498 () Bool)

(assert (=> b!829603 (= c!89707 e!462498)))

(declare-fun res!565226 () Bool)

(assert (=> b!829603 (=> (not res!565226) (not e!462498))))

(assert (=> b!829603 (= res!565226 (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun b!829604 () Bool)

(declare-fun lt!376297 () Unit!28421)

(declare-fun lt!376299 () Unit!28421)

(assert (=> b!829604 (= lt!376297 lt!376299)))

(declare-fun lt!376303 () V!25261)

(declare-fun lt!376301 () ListLongMap!9001)

(declare-fun lt!376302 () (_ BitVec 64))

(declare-fun lt!376300 () (_ BitVec 64))

(assert (=> b!829604 (not (contains!4202 (+!1946 lt!376301 (tuple2!10165 lt!376300 lt!376303)) lt!376302))))

(assert (=> b!829604 (= lt!376299 (addStillNotContains!197 lt!376301 lt!376300 lt!376303 lt!376302))))

(assert (=> b!829604 (= lt!376302 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!829604 (= lt!376303 (get!11816 (select (arr!22301 _values!788) #b00000000000000000000000000000000) (dynLambda!980 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!829604 (= lt!376300 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36153 () ListLongMap!9001)

(assert (=> b!829604 (= lt!376301 call!36153)))

(assert (=> b!829604 (= e!462502 (+!1946 call!36153 (tuple2!10165 (select (arr!22300 _keys!976) #b00000000000000000000000000000000) (get!11816 (select (arr!22301 _values!788) #b00000000000000000000000000000000) (dynLambda!980 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!829605 () Bool)

(assert (=> b!829605 (= e!462496 e!462500)))

(declare-fun c!89705 () Bool)

(assert (=> b!829605 (= c!89705 (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun bm!36150 () Bool)

(assert (=> bm!36150 (= call!36153 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!829606 () Bool)

(assert (=> b!829606 (= e!462499 (ListLongMap!9002 Nil!15993))))

(declare-fun b!829607 () Bool)

(assert (=> b!829607 (= e!462498 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829607 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!829608 () Bool)

(assert (=> b!829608 (= e!462502 call!36153)))

(assert (= (and d!105215 c!89706) b!829606))

(assert (= (and d!105215 (not c!89706)) b!829597))

(assert (= (and b!829597 c!89708) b!829604))

(assert (= (and b!829597 (not c!89708)) b!829608))

(assert (= (or b!829604 b!829608) bm!36150))

(assert (= (and d!105215 res!565224) b!829598))

(assert (= (and b!829598 res!565223) b!829603))

(assert (= (and b!829603 res!565226) b!829607))

(assert (= (and b!829603 c!89707) b!829599))

(assert (= (and b!829603 (not c!89707)) b!829605))

(assert (= (and b!829599 res!565225) b!829601))

(assert (= (and b!829605 c!89705) b!829600))

(assert (= (and b!829605 (not c!89705)) b!829602))

(declare-fun b_lambda!11333 () Bool)

(assert (=> (not b_lambda!11333) (not b!829601)))

(assert (=> b!829601 t!22369))

(declare-fun b_and!22517 () Bool)

(assert (= b_and!22515 (and (=> t!22369 result!8011) b_and!22517)))

(declare-fun b_lambda!11335 () Bool)

(assert (=> (not b_lambda!11335) (not b!829604)))

(assert (=> b!829604 t!22369))

(declare-fun b_and!22519 () Bool)

(assert (= b_and!22517 (and (=> t!22369 result!8011) b_and!22519)))

(assert (=> b!829597 m!772683))

(assert (=> b!829597 m!772683))

(assert (=> b!829597 m!772685))

(declare-fun m!772723 () Bool)

(assert (=> d!105215 m!772723))

(assert (=> d!105215 m!772631))

(declare-fun m!772725 () Bool)

(assert (=> b!829598 m!772725))

(declare-fun m!772727 () Bool)

(assert (=> b!829602 m!772727))

(assert (=> b!829601 m!772703))

(assert (=> b!829601 m!772683))

(declare-fun m!772729 () Bool)

(assert (=> b!829601 m!772729))

(assert (=> b!829601 m!772707))

(assert (=> b!829601 m!772703))

(assert (=> b!829601 m!772707))

(assert (=> b!829601 m!772709))

(assert (=> b!829601 m!772683))

(assert (=> b!829607 m!772683))

(assert (=> b!829607 m!772683))

(assert (=> b!829607 m!772685))

(assert (=> b!829599 m!772683))

(assert (=> b!829599 m!772683))

(declare-fun m!772731 () Bool)

(assert (=> b!829599 m!772731))

(assert (=> b!829604 m!772703))

(declare-fun m!772733 () Bool)

(assert (=> b!829604 m!772733))

(declare-fun m!772735 () Bool)

(assert (=> b!829604 m!772735))

(assert (=> b!829604 m!772707))

(assert (=> b!829604 m!772733))

(declare-fun m!772737 () Bool)

(assert (=> b!829604 m!772737))

(declare-fun m!772739 () Bool)

(assert (=> b!829604 m!772739))

(assert (=> b!829604 m!772703))

(assert (=> b!829604 m!772707))

(assert (=> b!829604 m!772709))

(assert (=> b!829604 m!772683))

(declare-fun m!772741 () Bool)

(assert (=> bm!36150 m!772741))

(assert (=> b!829600 m!772741))

(assert (=> b!829521 d!105215))

(declare-fun b!829651 () Bool)

(declare-fun e!462537 () Bool)

(assert (=> b!829651 (= e!462537 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829652 () Bool)

(declare-fun e!462541 () ListLongMap!9001)

(declare-fun call!36174 () ListLongMap!9001)

(assert (=> b!829652 (= e!462541 (+!1946 call!36174 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!829653 () Bool)

(declare-fun e!462540 () Unit!28421)

(declare-fun lt!376366 () Unit!28421)

(assert (=> b!829653 (= e!462540 lt!376366)))

(declare-fun lt!376353 () ListLongMap!9001)

(assert (=> b!829653 (= lt!376353 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376357 () (_ BitVec 64))

(assert (=> b!829653 (= lt!376357 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376365 () (_ BitVec 64))

(assert (=> b!829653 (= lt!376365 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376361 () Unit!28421)

(declare-fun addStillContains!321 (ListLongMap!9001 (_ BitVec 64) V!25261 (_ BitVec 64)) Unit!28421)

(assert (=> b!829653 (= lt!376361 (addStillContains!321 lt!376353 lt!376357 zeroValueBefore!34 lt!376365))))

(assert (=> b!829653 (contains!4202 (+!1946 lt!376353 (tuple2!10165 lt!376357 zeroValueBefore!34)) lt!376365)))

(declare-fun lt!376352 () Unit!28421)

(assert (=> b!829653 (= lt!376352 lt!376361)))

(declare-fun lt!376360 () ListLongMap!9001)

(assert (=> b!829653 (= lt!376360 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376368 () (_ BitVec 64))

(assert (=> b!829653 (= lt!376368 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376369 () (_ BitVec 64))

(assert (=> b!829653 (= lt!376369 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376356 () Unit!28421)

(declare-fun addApplyDifferent!321 (ListLongMap!9001 (_ BitVec 64) V!25261 (_ BitVec 64)) Unit!28421)

(assert (=> b!829653 (= lt!376356 (addApplyDifferent!321 lt!376360 lt!376368 minValue!754 lt!376369))))

(assert (=> b!829653 (= (apply!370 (+!1946 lt!376360 (tuple2!10165 lt!376368 minValue!754)) lt!376369) (apply!370 lt!376360 lt!376369))))

(declare-fun lt!376351 () Unit!28421)

(assert (=> b!829653 (= lt!376351 lt!376356)))

(declare-fun lt!376364 () ListLongMap!9001)

(assert (=> b!829653 (= lt!376364 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376358 () (_ BitVec 64))

(assert (=> b!829653 (= lt!376358 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376349 () (_ BitVec 64))

(assert (=> b!829653 (= lt!376349 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376367 () Unit!28421)

(assert (=> b!829653 (= lt!376367 (addApplyDifferent!321 lt!376364 lt!376358 zeroValueBefore!34 lt!376349))))

(assert (=> b!829653 (= (apply!370 (+!1946 lt!376364 (tuple2!10165 lt!376358 zeroValueBefore!34)) lt!376349) (apply!370 lt!376364 lt!376349))))

(declare-fun lt!376363 () Unit!28421)

(assert (=> b!829653 (= lt!376363 lt!376367)))

(declare-fun lt!376354 () ListLongMap!9001)

(assert (=> b!829653 (= lt!376354 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376362 () (_ BitVec 64))

(assert (=> b!829653 (= lt!376362 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376348 () (_ BitVec 64))

(assert (=> b!829653 (= lt!376348 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829653 (= lt!376366 (addApplyDifferent!321 lt!376354 lt!376362 minValue!754 lt!376348))))

(assert (=> b!829653 (= (apply!370 (+!1946 lt!376354 (tuple2!10165 lt!376362 minValue!754)) lt!376348) (apply!370 lt!376354 lt!376348))))

(declare-fun b!829654 () Bool)

(declare-fun e!462529 () ListLongMap!9001)

(assert (=> b!829654 (= e!462541 e!462529)))

(declare-fun c!89725 () Bool)

(assert (=> b!829654 (= c!89725 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!829655 () Bool)

(declare-fun res!565252 () Bool)

(declare-fun e!462536 () Bool)

(assert (=> b!829655 (=> (not res!565252) (not e!462536))))

(declare-fun e!462530 () Bool)

(assert (=> b!829655 (= res!565252 e!462530)))

(declare-fun res!565246 () Bool)

(assert (=> b!829655 (=> res!565246 e!462530)))

(assert (=> b!829655 (= res!565246 (not e!462537))))

(declare-fun res!565253 () Bool)

(assert (=> b!829655 (=> (not res!565253) (not e!462537))))

(assert (=> b!829655 (= res!565253 (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun b!829656 () Bool)

(declare-fun e!462538 () ListLongMap!9001)

(declare-fun call!36173 () ListLongMap!9001)

(assert (=> b!829656 (= e!462538 call!36173)))

(declare-fun b!829657 () Bool)

(declare-fun e!462531 () Bool)

(declare-fun call!36172 () Bool)

(assert (=> b!829657 (= e!462531 (not call!36172))))

(declare-fun bm!36165 () Bool)

(declare-fun call!36169 () Bool)

(declare-fun lt!376350 () ListLongMap!9001)

(assert (=> bm!36165 (= call!36169 (contains!4202 lt!376350 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829658 () Bool)

(declare-fun call!36168 () ListLongMap!9001)

(assert (=> b!829658 (= e!462538 call!36168)))

(declare-fun bm!36166 () Bool)

(assert (=> bm!36166 (= call!36173 call!36174)))

(declare-fun b!829659 () Bool)

(declare-fun e!462533 () Bool)

(assert (=> b!829659 (= e!462533 (= (apply!370 lt!376350 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!829660 () Bool)

(declare-fun Unit!28425 () Unit!28421)

(assert (=> b!829660 (= e!462540 Unit!28425)))

(declare-fun b!829661 () Bool)

(declare-fun e!462534 () Bool)

(assert (=> b!829661 (= e!462534 (= (apply!370 lt!376350 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)) (get!11816 (select (arr!22301 _values!788) #b00000000000000000000000000000000) (dynLambda!980 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!829661 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22722 _values!788)))))

(assert (=> b!829661 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun b!829663 () Bool)

(declare-fun e!462539 () Bool)

(assert (=> b!829663 (= e!462539 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun call!36171 () ListLongMap!9001)

(declare-fun bm!36167 () Bool)

(assert (=> bm!36167 (= call!36171 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829664 () Bool)

(declare-fun c!89721 () Bool)

(assert (=> b!829664 (= c!89721 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!829664 (= e!462529 e!462538)))

(declare-fun b!829665 () Bool)

(declare-fun e!462532 () Bool)

(declare-fun e!462535 () Bool)

(assert (=> b!829665 (= e!462532 e!462535)))

(declare-fun res!565249 () Bool)

(assert (=> b!829665 (= res!565249 call!36169)))

(assert (=> b!829665 (=> (not res!565249) (not e!462535))))

(declare-fun b!829666 () Bool)

(assert (=> b!829666 (= e!462530 e!462534)))

(declare-fun res!565250 () Bool)

(assert (=> b!829666 (=> (not res!565250) (not e!462534))))

(assert (=> b!829666 (= res!565250 (contains!4202 lt!376350 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829666 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun bm!36168 () Bool)

(declare-fun c!89724 () Bool)

(declare-fun call!36170 () ListLongMap!9001)

(assert (=> bm!36168 (= call!36174 (+!1946 (ite c!89724 call!36171 (ite c!89725 call!36170 call!36168)) (ite (or c!89724 c!89725) (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!829667 () Bool)

(declare-fun res!565248 () Bool)

(assert (=> b!829667 (=> (not res!565248) (not e!462536))))

(assert (=> b!829667 (= res!565248 e!462531)))

(declare-fun c!89723 () Bool)

(assert (=> b!829667 (= c!89723 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!829668 () Bool)

(assert (=> b!829668 (= e!462536 e!462532)))

(declare-fun c!89726 () Bool)

(assert (=> b!829668 (= c!89726 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!36169 () Bool)

(assert (=> bm!36169 (= call!36168 call!36170)))

(declare-fun bm!36170 () Bool)

(assert (=> bm!36170 (= call!36172 (contains!4202 lt!376350 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!105217 () Bool)

(assert (=> d!105217 e!462536))

(declare-fun res!565251 () Bool)

(assert (=> d!105217 (=> (not res!565251) (not e!462536))))

(assert (=> d!105217 (= res!565251 (or (bvsge #b00000000000000000000000000000000 (size!22721 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))))

(declare-fun lt!376359 () ListLongMap!9001)

(assert (=> d!105217 (= lt!376350 lt!376359)))

(declare-fun lt!376355 () Unit!28421)

(assert (=> d!105217 (= lt!376355 e!462540)))

(declare-fun c!89722 () Bool)

(assert (=> d!105217 (= c!89722 e!462539)))

(declare-fun res!565245 () Bool)

(assert (=> d!105217 (=> (not res!565245) (not e!462539))))

(assert (=> d!105217 (= res!565245 (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(assert (=> d!105217 (= lt!376359 e!462541)))

(assert (=> d!105217 (= c!89724 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105217 (validMask!0 mask!1312)))

(assert (=> d!105217 (= (getCurrentListMap!2588 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376350)))

(declare-fun b!829662 () Bool)

(assert (=> b!829662 (= e!462535 (= (apply!370 lt!376350 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!829669 () Bool)

(assert (=> b!829669 (= e!462532 (not call!36169))))

(declare-fun bm!36171 () Bool)

(assert (=> bm!36171 (= call!36170 call!36171)))

(declare-fun b!829670 () Bool)

(assert (=> b!829670 (= e!462531 e!462533)))

(declare-fun res!565247 () Bool)

(assert (=> b!829670 (= res!565247 call!36172)))

(assert (=> b!829670 (=> (not res!565247) (not e!462533))))

(declare-fun b!829671 () Bool)

(assert (=> b!829671 (= e!462529 call!36173)))

(assert (= (and d!105217 c!89724) b!829652))

(assert (= (and d!105217 (not c!89724)) b!829654))

(assert (= (and b!829654 c!89725) b!829671))

(assert (= (and b!829654 (not c!89725)) b!829664))

(assert (= (and b!829664 c!89721) b!829656))

(assert (= (and b!829664 (not c!89721)) b!829658))

(assert (= (or b!829656 b!829658) bm!36169))

(assert (= (or b!829671 bm!36169) bm!36171))

(assert (= (or b!829671 b!829656) bm!36166))

(assert (= (or b!829652 bm!36171) bm!36167))

(assert (= (or b!829652 bm!36166) bm!36168))

(assert (= (and d!105217 res!565245) b!829663))

(assert (= (and d!105217 c!89722) b!829653))

(assert (= (and d!105217 (not c!89722)) b!829660))

(assert (= (and d!105217 res!565251) b!829655))

(assert (= (and b!829655 res!565253) b!829651))

(assert (= (and b!829655 (not res!565246)) b!829666))

(assert (= (and b!829666 res!565250) b!829661))

(assert (= (and b!829655 res!565252) b!829667))

(assert (= (and b!829667 c!89723) b!829670))

(assert (= (and b!829667 (not c!89723)) b!829657))

(assert (= (and b!829670 res!565247) b!829659))

(assert (= (or b!829670 b!829657) bm!36170))

(assert (= (and b!829667 res!565248) b!829668))

(assert (= (and b!829668 c!89726) b!829665))

(assert (= (and b!829668 (not c!89726)) b!829669))

(assert (= (and b!829665 res!565249) b!829662))

(assert (= (or b!829665 b!829669) bm!36165))

(declare-fun b_lambda!11337 () Bool)

(assert (=> (not b_lambda!11337) (not b!829661)))

(assert (=> b!829661 t!22369))

(declare-fun b_and!22521 () Bool)

(assert (= b_and!22519 (and (=> t!22369 result!8011) b_and!22521)))

(declare-fun m!772743 () Bool)

(assert (=> b!829652 m!772743))

(declare-fun m!772745 () Bool)

(assert (=> b!829659 m!772745))

(assert (=> d!105217 m!772631))

(assert (=> b!829651 m!772683))

(assert (=> b!829651 m!772683))

(assert (=> b!829651 m!772685))

(assert (=> b!829661 m!772703))

(assert (=> b!829661 m!772683))

(assert (=> b!829661 m!772683))

(declare-fun m!772747 () Bool)

(assert (=> b!829661 m!772747))

(assert (=> b!829661 m!772707))

(assert (=> b!829661 m!772703))

(assert (=> b!829661 m!772707))

(assert (=> b!829661 m!772709))

(declare-fun m!772749 () Bool)

(assert (=> b!829653 m!772749))

(assert (=> b!829653 m!772749))

(declare-fun m!772751 () Bool)

(assert (=> b!829653 m!772751))

(declare-fun m!772753 () Bool)

(assert (=> b!829653 m!772753))

(declare-fun m!772755 () Bool)

(assert (=> b!829653 m!772755))

(declare-fun m!772757 () Bool)

(assert (=> b!829653 m!772757))

(declare-fun m!772759 () Bool)

(assert (=> b!829653 m!772759))

(assert (=> b!829653 m!772759))

(declare-fun m!772761 () Bool)

(assert (=> b!829653 m!772761))

(declare-fun m!772763 () Bool)

(assert (=> b!829653 m!772763))

(assert (=> b!829653 m!772641))

(assert (=> b!829653 m!772763))

(declare-fun m!772765 () Bool)

(assert (=> b!829653 m!772765))

(declare-fun m!772767 () Bool)

(assert (=> b!829653 m!772767))

(declare-fun m!772769 () Bool)

(assert (=> b!829653 m!772769))

(declare-fun m!772771 () Bool)

(assert (=> b!829653 m!772771))

(assert (=> b!829653 m!772683))

(declare-fun m!772773 () Bool)

(assert (=> b!829653 m!772773))

(declare-fun m!772775 () Bool)

(assert (=> b!829653 m!772775))

(declare-fun m!772777 () Bool)

(assert (=> b!829653 m!772777))

(assert (=> b!829653 m!772755))

(declare-fun m!772779 () Bool)

(assert (=> bm!36165 m!772779))

(assert (=> b!829666 m!772683))

(assert (=> b!829666 m!772683))

(declare-fun m!772781 () Bool)

(assert (=> b!829666 m!772781))

(declare-fun m!772783 () Bool)

(assert (=> bm!36170 m!772783))

(declare-fun m!772785 () Bool)

(assert (=> b!829662 m!772785))

(assert (=> b!829663 m!772683))

(assert (=> b!829663 m!772683))

(assert (=> b!829663 m!772685))

(declare-fun m!772787 () Bool)

(assert (=> bm!36168 m!772787))

(assert (=> bm!36167 m!772641))

(assert (=> b!829520 d!105217))

(declare-fun d!105219 () Bool)

(declare-fun e!462544 () Bool)

(assert (=> d!105219 e!462544))

(declare-fun res!565258 () Bool)

(assert (=> d!105219 (=> (not res!565258) (not e!462544))))

(declare-fun lt!376381 () ListLongMap!9001)

(assert (=> d!105219 (= res!565258 (contains!4202 lt!376381 (_1!5092 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!376380 () List!15996)

(assert (=> d!105219 (= lt!376381 (ListLongMap!9002 lt!376380))))

(declare-fun lt!376378 () Unit!28421)

(declare-fun lt!376379 () Unit!28421)

(assert (=> d!105219 (= lt!376378 lt!376379)))

(declare-datatypes ((Option!418 0))(
  ( (Some!417 (v!10083 V!25261)) (None!416) )
))
(declare-fun getValueByKey!412 (List!15996 (_ BitVec 64)) Option!418)

(assert (=> d!105219 (= (getValueByKey!412 lt!376380 (_1!5092 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!417 (_2!5092 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lemmaContainsTupThenGetReturnValue!228 (List!15996 (_ BitVec 64) V!25261) Unit!28421)

(assert (=> d!105219 (= lt!376379 (lemmaContainsTupThenGetReturnValue!228 lt!376380 (_1!5092 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5092 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun insertStrictlySorted!266 (List!15996 (_ BitVec 64) V!25261) List!15996)

(assert (=> d!105219 (= lt!376380 (insertStrictlySorted!266 (toList!4516 (+!1946 lt!376251 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (_1!5092 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5092 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105219 (= (+!1946 (+!1946 lt!376251 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!376381)))

(declare-fun b!829676 () Bool)

(declare-fun res!565259 () Bool)

(assert (=> b!829676 (=> (not res!565259) (not e!462544))))

(assert (=> b!829676 (= res!565259 (= (getValueByKey!412 (toList!4516 lt!376381) (_1!5092 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!417 (_2!5092 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!829677 () Bool)

(declare-fun contains!4203 (List!15996 tuple2!10164) Bool)

(assert (=> b!829677 (= e!462544 (contains!4203 (toList!4516 lt!376381) (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!105219 res!565258) b!829676))

(assert (= (and b!829676 res!565259) b!829677))

(declare-fun m!772789 () Bool)

(assert (=> d!105219 m!772789))

(declare-fun m!772791 () Bool)

(assert (=> d!105219 m!772791))

(declare-fun m!772793 () Bool)

(assert (=> d!105219 m!772793))

(declare-fun m!772795 () Bool)

(assert (=> d!105219 m!772795))

(declare-fun m!772797 () Bool)

(assert (=> b!829676 m!772797))

(declare-fun m!772799 () Bool)

(assert (=> b!829677 m!772799))

(assert (=> b!829520 d!105219))

(declare-fun d!105221 () Bool)

(declare-fun e!462545 () Bool)

(assert (=> d!105221 e!462545))

(declare-fun res!565260 () Bool)

(assert (=> d!105221 (=> (not res!565260) (not e!462545))))

(declare-fun lt!376385 () ListLongMap!9001)

(assert (=> d!105221 (= res!565260 (contains!4202 lt!376385 (_1!5092 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun lt!376384 () List!15996)

(assert (=> d!105221 (= lt!376385 (ListLongMap!9002 lt!376384))))

(declare-fun lt!376382 () Unit!28421)

(declare-fun lt!376383 () Unit!28421)

(assert (=> d!105221 (= lt!376382 lt!376383)))

(assert (=> d!105221 (= (getValueByKey!412 lt!376384 (_1!5092 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (Some!417 (_2!5092 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(assert (=> d!105221 (= lt!376383 (lemmaContainsTupThenGetReturnValue!228 lt!376384 (_1!5092 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (_2!5092 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(assert (=> d!105221 (= lt!376384 (insertStrictlySorted!266 (toList!4516 lt!376251) (_1!5092 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (_2!5092 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(assert (=> d!105221 (= (+!1946 lt!376251 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) lt!376385)))

(declare-fun b!829678 () Bool)

(declare-fun res!565261 () Bool)

(assert (=> b!829678 (=> (not res!565261) (not e!462545))))

(assert (=> b!829678 (= res!565261 (= (getValueByKey!412 (toList!4516 lt!376385) (_1!5092 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (Some!417 (_2!5092 (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)))))))

(declare-fun b!829679 () Bool)

(assert (=> b!829679 (= e!462545 (contains!4203 (toList!4516 lt!376385) (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)))))

(assert (= (and d!105221 res!565260) b!829678))

(assert (= (and b!829678 res!565261) b!829679))

(declare-fun m!772801 () Bool)

(assert (=> d!105221 m!772801))

(declare-fun m!772803 () Bool)

(assert (=> d!105221 m!772803))

(declare-fun m!772805 () Bool)

(assert (=> d!105221 m!772805))

(declare-fun m!772807 () Bool)

(assert (=> d!105221 m!772807))

(declare-fun m!772809 () Bool)

(assert (=> b!829678 m!772809))

(declare-fun m!772811 () Bool)

(assert (=> b!829679 m!772811))

(assert (=> b!829520 d!105221))

(declare-fun b!829680 () Bool)

(declare-fun e!462554 () Bool)

(assert (=> b!829680 (= e!462554 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829681 () Bool)

(declare-fun e!462558 () ListLongMap!9001)

(declare-fun call!36181 () ListLongMap!9001)

(assert (=> b!829681 (= e!462558 (+!1946 call!36181 (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!829682 () Bool)

(declare-fun e!462557 () Unit!28421)

(declare-fun lt!376404 () Unit!28421)

(assert (=> b!829682 (= e!462557 lt!376404)))

(declare-fun lt!376391 () ListLongMap!9001)

(assert (=> b!829682 (= lt!376391 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376395 () (_ BitVec 64))

(assert (=> b!829682 (= lt!376395 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376403 () (_ BitVec 64))

(assert (=> b!829682 (= lt!376403 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376399 () Unit!28421)

(assert (=> b!829682 (= lt!376399 (addStillContains!321 lt!376391 lt!376395 zeroValueAfter!34 lt!376403))))

(assert (=> b!829682 (contains!4202 (+!1946 lt!376391 (tuple2!10165 lt!376395 zeroValueAfter!34)) lt!376403)))

(declare-fun lt!376390 () Unit!28421)

(assert (=> b!829682 (= lt!376390 lt!376399)))

(declare-fun lt!376398 () ListLongMap!9001)

(assert (=> b!829682 (= lt!376398 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376406 () (_ BitVec 64))

(assert (=> b!829682 (= lt!376406 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376407 () (_ BitVec 64))

(assert (=> b!829682 (= lt!376407 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376394 () Unit!28421)

(assert (=> b!829682 (= lt!376394 (addApplyDifferent!321 lt!376398 lt!376406 minValue!754 lt!376407))))

(assert (=> b!829682 (= (apply!370 (+!1946 lt!376398 (tuple2!10165 lt!376406 minValue!754)) lt!376407) (apply!370 lt!376398 lt!376407))))

(declare-fun lt!376389 () Unit!28421)

(assert (=> b!829682 (= lt!376389 lt!376394)))

(declare-fun lt!376402 () ListLongMap!9001)

(assert (=> b!829682 (= lt!376402 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376396 () (_ BitVec 64))

(assert (=> b!829682 (= lt!376396 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376387 () (_ BitVec 64))

(assert (=> b!829682 (= lt!376387 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376405 () Unit!28421)

(assert (=> b!829682 (= lt!376405 (addApplyDifferent!321 lt!376402 lt!376396 zeroValueAfter!34 lt!376387))))

(assert (=> b!829682 (= (apply!370 (+!1946 lt!376402 (tuple2!10165 lt!376396 zeroValueAfter!34)) lt!376387) (apply!370 lt!376402 lt!376387))))

(declare-fun lt!376401 () Unit!28421)

(assert (=> b!829682 (= lt!376401 lt!376405)))

(declare-fun lt!376392 () ListLongMap!9001)

(assert (=> b!829682 (= lt!376392 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376400 () (_ BitVec 64))

(assert (=> b!829682 (= lt!376400 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376386 () (_ BitVec 64))

(assert (=> b!829682 (= lt!376386 (select (arr!22300 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829682 (= lt!376404 (addApplyDifferent!321 lt!376392 lt!376400 minValue!754 lt!376386))))

(assert (=> b!829682 (= (apply!370 (+!1946 lt!376392 (tuple2!10165 lt!376400 minValue!754)) lt!376386) (apply!370 lt!376392 lt!376386))))

(declare-fun b!829683 () Bool)

(declare-fun e!462546 () ListLongMap!9001)

(assert (=> b!829683 (= e!462558 e!462546)))

(declare-fun c!89731 () Bool)

(assert (=> b!829683 (= c!89731 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!829684 () Bool)

(declare-fun res!565269 () Bool)

(declare-fun e!462553 () Bool)

(assert (=> b!829684 (=> (not res!565269) (not e!462553))))

(declare-fun e!462547 () Bool)

(assert (=> b!829684 (= res!565269 e!462547)))

(declare-fun res!565263 () Bool)

(assert (=> b!829684 (=> res!565263 e!462547)))

(assert (=> b!829684 (= res!565263 (not e!462554))))

(declare-fun res!565270 () Bool)

(assert (=> b!829684 (=> (not res!565270) (not e!462554))))

(assert (=> b!829684 (= res!565270 (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun b!829685 () Bool)

(declare-fun e!462555 () ListLongMap!9001)

(declare-fun call!36180 () ListLongMap!9001)

(assert (=> b!829685 (= e!462555 call!36180)))

(declare-fun b!829686 () Bool)

(declare-fun e!462548 () Bool)

(declare-fun call!36179 () Bool)

(assert (=> b!829686 (= e!462548 (not call!36179))))

(declare-fun bm!36172 () Bool)

(declare-fun call!36176 () Bool)

(declare-fun lt!376388 () ListLongMap!9001)

(assert (=> bm!36172 (= call!36176 (contains!4202 lt!376388 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829687 () Bool)

(declare-fun call!36175 () ListLongMap!9001)

(assert (=> b!829687 (= e!462555 call!36175)))

(declare-fun bm!36173 () Bool)

(assert (=> bm!36173 (= call!36180 call!36181)))

(declare-fun b!829688 () Bool)

(declare-fun e!462550 () Bool)

(assert (=> b!829688 (= e!462550 (= (apply!370 lt!376388 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!829689 () Bool)

(declare-fun Unit!28426 () Unit!28421)

(assert (=> b!829689 (= e!462557 Unit!28426)))

(declare-fun e!462551 () Bool)

(declare-fun b!829690 () Bool)

(assert (=> b!829690 (= e!462551 (= (apply!370 lt!376388 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)) (get!11816 (select (arr!22301 _values!788) #b00000000000000000000000000000000) (dynLambda!980 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!829690 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22722 _values!788)))))

(assert (=> b!829690 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun b!829692 () Bool)

(declare-fun e!462556 () Bool)

(assert (=> b!829692 (= e!462556 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36174 () Bool)

(declare-fun call!36178 () ListLongMap!9001)

(assert (=> bm!36174 (= call!36178 (getCurrentListMapNoExtraKeys!2516 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829693 () Bool)

(declare-fun c!89727 () Bool)

(assert (=> b!829693 (= c!89727 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!829693 (= e!462546 e!462555)))

(declare-fun b!829694 () Bool)

(declare-fun e!462549 () Bool)

(declare-fun e!462552 () Bool)

(assert (=> b!829694 (= e!462549 e!462552)))

(declare-fun res!565266 () Bool)

(assert (=> b!829694 (= res!565266 call!36176)))

(assert (=> b!829694 (=> (not res!565266) (not e!462552))))

(declare-fun b!829695 () Bool)

(assert (=> b!829695 (= e!462547 e!462551)))

(declare-fun res!565267 () Bool)

(assert (=> b!829695 (=> (not res!565267) (not e!462551))))

(assert (=> b!829695 (= res!565267 (contains!4202 lt!376388 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829695 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(declare-fun call!36177 () ListLongMap!9001)

(declare-fun c!89730 () Bool)

(declare-fun bm!36175 () Bool)

(assert (=> bm!36175 (= call!36181 (+!1946 (ite c!89730 call!36178 (ite c!89731 call!36177 call!36175)) (ite (or c!89730 c!89731) (tuple2!10165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!829696 () Bool)

(declare-fun res!565265 () Bool)

(assert (=> b!829696 (=> (not res!565265) (not e!462553))))

(assert (=> b!829696 (= res!565265 e!462548)))

(declare-fun c!89729 () Bool)

(assert (=> b!829696 (= c!89729 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!829697 () Bool)

(assert (=> b!829697 (= e!462553 e!462549)))

(declare-fun c!89732 () Bool)

(assert (=> b!829697 (= c!89732 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!36176 () Bool)

(assert (=> bm!36176 (= call!36175 call!36177)))

(declare-fun bm!36177 () Bool)

(assert (=> bm!36177 (= call!36179 (contains!4202 lt!376388 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!105223 () Bool)

(assert (=> d!105223 e!462553))

(declare-fun res!565268 () Bool)

(assert (=> d!105223 (=> (not res!565268) (not e!462553))))

(assert (=> d!105223 (= res!565268 (or (bvsge #b00000000000000000000000000000000 (size!22721 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))))

(declare-fun lt!376397 () ListLongMap!9001)

(assert (=> d!105223 (= lt!376388 lt!376397)))

(declare-fun lt!376393 () Unit!28421)

(assert (=> d!105223 (= lt!376393 e!462557)))

(declare-fun c!89728 () Bool)

(assert (=> d!105223 (= c!89728 e!462556)))

(declare-fun res!565262 () Bool)

(assert (=> d!105223 (=> (not res!565262) (not e!462556))))

(assert (=> d!105223 (= res!565262 (bvslt #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(assert (=> d!105223 (= lt!376397 e!462558)))

(assert (=> d!105223 (= c!89730 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105223 (validMask!0 mask!1312)))

(assert (=> d!105223 (= (getCurrentListMap!2588 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376388)))

(declare-fun b!829691 () Bool)

(assert (=> b!829691 (= e!462552 (= (apply!370 lt!376388 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!829698 () Bool)

(assert (=> b!829698 (= e!462549 (not call!36176))))

(declare-fun bm!36178 () Bool)

(assert (=> bm!36178 (= call!36177 call!36178)))

(declare-fun b!829699 () Bool)

(assert (=> b!829699 (= e!462548 e!462550)))

(declare-fun res!565264 () Bool)

(assert (=> b!829699 (= res!565264 call!36179)))

(assert (=> b!829699 (=> (not res!565264) (not e!462550))))

(declare-fun b!829700 () Bool)

(assert (=> b!829700 (= e!462546 call!36180)))

(assert (= (and d!105223 c!89730) b!829681))

(assert (= (and d!105223 (not c!89730)) b!829683))

(assert (= (and b!829683 c!89731) b!829700))

(assert (= (and b!829683 (not c!89731)) b!829693))

(assert (= (and b!829693 c!89727) b!829685))

(assert (= (and b!829693 (not c!89727)) b!829687))

(assert (= (or b!829685 b!829687) bm!36176))

(assert (= (or b!829700 bm!36176) bm!36178))

(assert (= (or b!829700 b!829685) bm!36173))

(assert (= (or b!829681 bm!36178) bm!36174))

(assert (= (or b!829681 bm!36173) bm!36175))

(assert (= (and d!105223 res!565262) b!829692))

(assert (= (and d!105223 c!89728) b!829682))

(assert (= (and d!105223 (not c!89728)) b!829689))

(assert (= (and d!105223 res!565268) b!829684))

(assert (= (and b!829684 res!565270) b!829680))

(assert (= (and b!829684 (not res!565263)) b!829695))

(assert (= (and b!829695 res!565267) b!829690))

(assert (= (and b!829684 res!565269) b!829696))

(assert (= (and b!829696 c!89729) b!829699))

(assert (= (and b!829696 (not c!89729)) b!829686))

(assert (= (and b!829699 res!565264) b!829688))

(assert (= (or b!829699 b!829686) bm!36177))

(assert (= (and b!829696 res!565265) b!829697))

(assert (= (and b!829697 c!89732) b!829694))

(assert (= (and b!829697 (not c!89732)) b!829698))

(assert (= (and b!829694 res!565266) b!829691))

(assert (= (or b!829694 b!829698) bm!36172))

(declare-fun b_lambda!11339 () Bool)

(assert (=> (not b_lambda!11339) (not b!829690)))

(assert (=> b!829690 t!22369))

(declare-fun b_and!22523 () Bool)

(assert (= b_and!22521 (and (=> t!22369 result!8011) b_and!22523)))

(declare-fun m!772813 () Bool)

(assert (=> b!829681 m!772813))

(declare-fun m!772815 () Bool)

(assert (=> b!829688 m!772815))

(assert (=> d!105223 m!772631))

(assert (=> b!829680 m!772683))

(assert (=> b!829680 m!772683))

(assert (=> b!829680 m!772685))

(assert (=> b!829690 m!772703))

(assert (=> b!829690 m!772683))

(assert (=> b!829690 m!772683))

(declare-fun m!772817 () Bool)

(assert (=> b!829690 m!772817))

(assert (=> b!829690 m!772707))

(assert (=> b!829690 m!772703))

(assert (=> b!829690 m!772707))

(assert (=> b!829690 m!772709))

(declare-fun m!772819 () Bool)

(assert (=> b!829682 m!772819))

(assert (=> b!829682 m!772819))

(declare-fun m!772821 () Bool)

(assert (=> b!829682 m!772821))

(declare-fun m!772823 () Bool)

(assert (=> b!829682 m!772823))

(declare-fun m!772825 () Bool)

(assert (=> b!829682 m!772825))

(declare-fun m!772827 () Bool)

(assert (=> b!829682 m!772827))

(declare-fun m!772829 () Bool)

(assert (=> b!829682 m!772829))

(assert (=> b!829682 m!772829))

(declare-fun m!772831 () Bool)

(assert (=> b!829682 m!772831))

(declare-fun m!772833 () Bool)

(assert (=> b!829682 m!772833))

(assert (=> b!829682 m!772639))

(assert (=> b!829682 m!772833))

(declare-fun m!772835 () Bool)

(assert (=> b!829682 m!772835))

(declare-fun m!772837 () Bool)

(assert (=> b!829682 m!772837))

(declare-fun m!772839 () Bool)

(assert (=> b!829682 m!772839))

(declare-fun m!772841 () Bool)

(assert (=> b!829682 m!772841))

(assert (=> b!829682 m!772683))

(declare-fun m!772843 () Bool)

(assert (=> b!829682 m!772843))

(declare-fun m!772845 () Bool)

(assert (=> b!829682 m!772845))

(declare-fun m!772847 () Bool)

(assert (=> b!829682 m!772847))

(assert (=> b!829682 m!772825))

(declare-fun m!772849 () Bool)

(assert (=> bm!36172 m!772849))

(assert (=> b!829695 m!772683))

(assert (=> b!829695 m!772683))

(declare-fun m!772851 () Bool)

(assert (=> b!829695 m!772851))

(declare-fun m!772853 () Bool)

(assert (=> bm!36177 m!772853))

(declare-fun m!772855 () Bool)

(assert (=> b!829691 m!772855))

(assert (=> b!829692 m!772683))

(assert (=> b!829692 m!772683))

(assert (=> b!829692 m!772685))

(declare-fun m!772857 () Bool)

(assert (=> bm!36175 m!772857))

(assert (=> bm!36174 m!772639))

(assert (=> b!829520 d!105223))

(declare-fun b!829711 () Bool)

(declare-fun e!462570 () Bool)

(declare-fun call!36184 () Bool)

(assert (=> b!829711 (= e!462570 call!36184)))

(declare-fun b!829712 () Bool)

(assert (=> b!829712 (= e!462570 call!36184)))

(declare-fun b!829713 () Bool)

(declare-fun e!462567 () Bool)

(declare-fun contains!4204 (List!15995 (_ BitVec 64)) Bool)

(assert (=> b!829713 (= e!462567 (contains!4204 Nil!15992 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829714 () Bool)

(declare-fun e!462569 () Bool)

(declare-fun e!462568 () Bool)

(assert (=> b!829714 (= e!462569 e!462568)))

(declare-fun res!565278 () Bool)

(assert (=> b!829714 (=> (not res!565278) (not e!462568))))

(assert (=> b!829714 (= res!565278 (not e!462567))))

(declare-fun res!565279 () Bool)

(assert (=> b!829714 (=> (not res!565279) (not e!462567))))

(assert (=> b!829714 (= res!565279 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105225 () Bool)

(declare-fun res!565277 () Bool)

(assert (=> d!105225 (=> res!565277 e!462569)))

(assert (=> d!105225 (= res!565277 (bvsge #b00000000000000000000000000000000 (size!22721 _keys!976)))))

(assert (=> d!105225 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15992) e!462569)))

(declare-fun b!829715 () Bool)

(assert (=> b!829715 (= e!462568 e!462570)))

(declare-fun c!89735 () Bool)

(assert (=> b!829715 (= c!89735 (validKeyInArray!0 (select (arr!22300 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36181 () Bool)

(assert (=> bm!36181 (= call!36184 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89735 (Cons!15991 (select (arr!22300 _keys!976) #b00000000000000000000000000000000) Nil!15992) Nil!15992)))))

(assert (= (and d!105225 (not res!565277)) b!829714))

(assert (= (and b!829714 res!565279) b!829713))

(assert (= (and b!829714 res!565278) b!829715))

(assert (= (and b!829715 c!89735) b!829711))

(assert (= (and b!829715 (not c!89735)) b!829712))

(assert (= (or b!829711 b!829712) bm!36181))

(assert (=> b!829713 m!772683))

(assert (=> b!829713 m!772683))

(declare-fun m!772859 () Bool)

(assert (=> b!829713 m!772859))

(assert (=> b!829714 m!772683))

(assert (=> b!829714 m!772683))

(assert (=> b!829714 m!772685))

(assert (=> b!829715 m!772683))

(assert (=> b!829715 m!772683))

(assert (=> b!829715 m!772685))

(assert (=> bm!36181 m!772683))

(declare-fun m!772861 () Bool)

(assert (=> bm!36181 m!772861))

(assert (=> b!829516 d!105225))

(declare-fun mapIsEmpty!24445 () Bool)

(declare-fun mapRes!24445 () Bool)

(assert (=> mapIsEmpty!24445 mapRes!24445))

(declare-fun b!829723 () Bool)

(declare-fun e!462576 () Bool)

(assert (=> b!829723 (= e!462576 tp_is_empty!15195)))

(declare-fun condMapEmpty!24445 () Bool)

(declare-fun mapDefault!24445 () ValueCell!7182)

(assert (=> mapNonEmpty!24439 (= condMapEmpty!24445 (= mapRest!24439 ((as const (Array (_ BitVec 32) ValueCell!7182)) mapDefault!24445)))))

(assert (=> mapNonEmpty!24439 (= tp!47235 (and e!462576 mapRes!24445))))

(declare-fun mapNonEmpty!24445 () Bool)

(declare-fun tp!47245 () Bool)

(declare-fun e!462575 () Bool)

(assert (=> mapNonEmpty!24445 (= mapRes!24445 (and tp!47245 e!462575))))

(declare-fun mapValue!24445 () ValueCell!7182)

(declare-fun mapKey!24445 () (_ BitVec 32))

(declare-fun mapRest!24445 () (Array (_ BitVec 32) ValueCell!7182))

(assert (=> mapNonEmpty!24445 (= mapRest!24439 (store mapRest!24445 mapKey!24445 mapValue!24445))))

(declare-fun b!829722 () Bool)

(assert (=> b!829722 (= e!462575 tp_is_empty!15195)))

(assert (= (and mapNonEmpty!24439 condMapEmpty!24445) mapIsEmpty!24445))

(assert (= (and mapNonEmpty!24439 (not condMapEmpty!24445)) mapNonEmpty!24445))

(assert (= (and mapNonEmpty!24445 ((_ is ValueCellFull!7182) mapValue!24445)) b!829722))

(assert (= (and mapNonEmpty!24439 ((_ is ValueCellFull!7182) mapDefault!24445)) b!829723))

(declare-fun m!772863 () Bool)

(assert (=> mapNonEmpty!24445 m!772863))

(declare-fun b_lambda!11341 () Bool)

(assert (= b_lambda!11335 (or (and start!71464 b_free!13485) b_lambda!11341)))

(declare-fun b_lambda!11343 () Bool)

(assert (= b_lambda!11331 (or (and start!71464 b_free!13485) b_lambda!11343)))

(declare-fun b_lambda!11345 () Bool)

(assert (= b_lambda!11337 (or (and start!71464 b_free!13485) b_lambda!11345)))

(declare-fun b_lambda!11347 () Bool)

(assert (= b_lambda!11333 (or (and start!71464 b_free!13485) b_lambda!11347)))

(declare-fun b_lambda!11349 () Bool)

(assert (= b_lambda!11329 (or (and start!71464 b_free!13485) b_lambda!11349)))

(declare-fun b_lambda!11351 () Bool)

(assert (= b_lambda!11339 (or (and start!71464 b_free!13485) b_lambda!11351)))

(check-sat (not d!105217) (not b_next!13485) (not b!829662) (not b!829599) (not b_lambda!11349) (not b!829678) (not b!829593) (not b!829607) (not d!105219) (not b!829590) (not bm!36177) (not b!829714) (not b!829666) (not b!829682) b_and!22523 (not b!829681) (not bm!36146) (not b!829587) (not b_lambda!11341) (not bm!36149) (not b!829653) (not b!829659) (not bm!36150) (not d!105213) (not d!105221) (not b_lambda!11347) (not b!829604) (not b!829557) (not d!105211) (not bm!36174) (not b!829600) (not bm!36165) (not mapNonEmpty!24445) (not b!829715) (not b!829651) (not bm!36167) (not b!829677) (not b!829691) (not b!829695) (not b!829585) (not b!829598) (not bm!36181) (not bm!36175) (not b!829713) (not b!829583) (not bm!36168) (not b!829602) (not b!829586) tp_is_empty!15195 (not b_lambda!11351) (not bm!36170) (not b_lambda!11345) (not b!829688) (not d!105215) (not b!829652) (not b!829584) (not b!829676) (not b_lambda!11343) (not b!829597) (not b!829690) (not b!829661) (not b!829556) (not b!829692) (not b!829679) (not b!829588) (not d!105223) (not b!829663) (not b!829680) (not bm!36172) (not b!829601))
(check-sat b_and!22523 (not b_next!13485))
