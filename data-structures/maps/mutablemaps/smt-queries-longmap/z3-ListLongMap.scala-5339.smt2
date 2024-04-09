; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71368 () Bool)

(assert start!71368)

(declare-fun b_free!13443 () Bool)

(declare-fun b_next!13443 () Bool)

(assert (=> start!71368 (= b_free!13443 (not b_next!13443))))

(declare-fun tp!47100 () Bool)

(declare-fun b_and!22431 () Bool)

(assert (=> start!71368 (= tp!47100 b_and!22431)))

(declare-fun b!828418 () Bool)

(declare-fun res!564585 () Bool)

(declare-fun e!461671 () Bool)

(assert (=> b!828418 (=> (not res!564585) (not e!461671))))

(declare-datatypes ((array!46444 0))(
  ( (array!46445 (arr!22259 (Array (_ BitVec 32) (_ BitVec 64))) (size!22680 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46444)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46444 (_ BitVec 32)) Bool)

(assert (=> b!828418 (= res!564585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!828420 () Bool)

(declare-fun res!564584 () Bool)

(assert (=> b!828420 (=> (not res!564584) (not e!461671))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25205 0))(
  ( (V!25206 (val!7624 Int)) )
))
(declare-datatypes ((ValueCell!7161 0))(
  ( (ValueCellFull!7161 (v!10057 V!25205)) (EmptyCell!7161) )
))
(declare-datatypes ((array!46446 0))(
  ( (array!46447 (arr!22260 (Array (_ BitVec 32) ValueCell!7161)) (size!22681 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46446)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!828420 (= res!564584 (and (= (size!22681 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22680 _keys!976) (size!22681 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!828421 () Bool)

(declare-fun e!461669 () Bool)

(assert (=> b!828421 (= e!461671 (not e!461669))))

(declare-fun res!564586 () Bool)

(assert (=> b!828421 (=> res!564586 e!461669)))

(assert (=> b!828421 (= res!564586 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!461670 () Bool)

(assert (=> b!828421 e!461670))

(declare-fun res!564583 () Bool)

(assert (=> b!828421 (=> (not res!564583) (not e!461670))))

(declare-datatypes ((tuple2!10128 0))(
  ( (tuple2!10129 (_1!5074 (_ BitVec 64)) (_2!5074 V!25205)) )
))
(declare-datatypes ((List!15964 0))(
  ( (Nil!15961) (Cons!15960 (h!17089 tuple2!10128) (t!22327 List!15964)) )
))
(declare-datatypes ((ListLongMap!8965 0))(
  ( (ListLongMap!8966 (toList!4498 List!15964)) )
))
(declare-fun lt!375417 () ListLongMap!8965)

(declare-fun lt!375415 () ListLongMap!8965)

(assert (=> b!828421 (= res!564583 (= lt!375417 lt!375415))))

(declare-fun zeroValueBefore!34 () V!25205)

(declare-fun zeroValueAfter!34 () V!25205)

(declare-fun minValue!754 () V!25205)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28383 0))(
  ( (Unit!28384) )
))
(declare-fun lt!375416 () Unit!28383)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!593 (array!46444 array!46446 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25205 V!25205 V!25205 V!25205 (_ BitVec 32) Int) Unit!28383)

(assert (=> b!828421 (= lt!375416 (lemmaNoChangeToArrayThenSameMapNoExtras!593 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2503 (array!46444 array!46446 (_ BitVec 32) (_ BitVec 32) V!25205 V!25205 (_ BitVec 32) Int) ListLongMap!8965)

(assert (=> b!828421 (= lt!375415 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828421 (= lt!375417 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828419 () Bool)

(declare-fun e!461674 () Bool)

(assert (=> b!828419 (= e!461670 e!461674)))

(declare-fun res!564589 () Bool)

(assert (=> b!828419 (=> res!564589 e!461674)))

(assert (=> b!828419 (= res!564589 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!564587 () Bool)

(assert (=> start!71368 (=> (not res!564587) (not e!461671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71368 (= res!564587 (validMask!0 mask!1312))))

(assert (=> start!71368 e!461671))

(declare-fun tp_is_empty!15153 () Bool)

(assert (=> start!71368 tp_is_empty!15153))

(declare-fun array_inv!17713 (array!46444) Bool)

(assert (=> start!71368 (array_inv!17713 _keys!976)))

(assert (=> start!71368 true))

(declare-fun e!461673 () Bool)

(declare-fun array_inv!17714 (array!46446) Bool)

(assert (=> start!71368 (and (array_inv!17714 _values!788) e!461673)))

(assert (=> start!71368 tp!47100))

(declare-fun b!828422 () Bool)

(declare-fun res!564588 () Bool)

(assert (=> b!828422 (=> (not res!564588) (not e!461671))))

(declare-datatypes ((List!15965 0))(
  ( (Nil!15962) (Cons!15961 (h!17090 (_ BitVec 64)) (t!22328 List!15965)) )
))
(declare-fun arrayNoDuplicates!0 (array!46444 (_ BitVec 32) List!15965) Bool)

(assert (=> b!828422 (= res!564588 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15962))))

(declare-fun mapIsEmpty!24367 () Bool)

(declare-fun mapRes!24367 () Bool)

(assert (=> mapIsEmpty!24367 mapRes!24367))

(declare-fun b!828423 () Bool)

(declare-fun e!461676 () Bool)

(assert (=> b!828423 (= e!461676 tp_is_empty!15153)))

(declare-fun b!828424 () Bool)

(declare-fun getCurrentListMap!2573 (array!46444 array!46446 (_ BitVec 32) (_ BitVec 32) V!25205 V!25205 (_ BitVec 32) Int) ListLongMap!8965)

(declare-fun +!1931 (ListLongMap!8965 tuple2!10128) ListLongMap!8965)

(assert (=> b!828424 (= e!461674 (= (getCurrentListMap!2573 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1931 lt!375417 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun mapNonEmpty!24367 () Bool)

(declare-fun tp!47101 () Bool)

(assert (=> mapNonEmpty!24367 (= mapRes!24367 (and tp!47101 e!461676))))

(declare-fun mapKey!24367 () (_ BitVec 32))

(declare-fun mapRest!24367 () (Array (_ BitVec 32) ValueCell!7161))

(declare-fun mapValue!24367 () ValueCell!7161)

(assert (=> mapNonEmpty!24367 (= (arr!22260 _values!788) (store mapRest!24367 mapKey!24367 mapValue!24367))))

(declare-fun b!828425 () Bool)

(declare-fun e!461672 () Bool)

(assert (=> b!828425 (= e!461672 tp_is_empty!15153)))

(declare-fun b!828426 () Bool)

(assert (=> b!828426 (= e!461673 (and e!461672 mapRes!24367))))

(declare-fun condMapEmpty!24367 () Bool)

(declare-fun mapDefault!24367 () ValueCell!7161)

(assert (=> b!828426 (= condMapEmpty!24367 (= (arr!22260 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7161)) mapDefault!24367)))))

(declare-fun b!828427 () Bool)

(assert (=> b!828427 (= e!461669 (= (getCurrentListMap!2573 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1931 lt!375415 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (= (and start!71368 res!564587) b!828420))

(assert (= (and b!828420 res!564584) b!828418))

(assert (= (and b!828418 res!564585) b!828422))

(assert (= (and b!828422 res!564588) b!828421))

(assert (= (and b!828421 res!564583) b!828419))

(assert (= (and b!828419 (not res!564589)) b!828424))

(assert (= (and b!828421 (not res!564586)) b!828427))

(assert (= (and b!828426 condMapEmpty!24367) mapIsEmpty!24367))

(assert (= (and b!828426 (not condMapEmpty!24367)) mapNonEmpty!24367))

(get-info :version)

(assert (= (and mapNonEmpty!24367 ((_ is ValueCellFull!7161) mapValue!24367)) b!828423))

(assert (= (and b!828426 ((_ is ValueCellFull!7161) mapDefault!24367)) b!828425))

(assert (= start!71368 b!828426))

(declare-fun m!771443 () Bool)

(assert (=> b!828422 m!771443))

(declare-fun m!771445 () Bool)

(assert (=> start!71368 m!771445))

(declare-fun m!771447 () Bool)

(assert (=> start!71368 m!771447))

(declare-fun m!771449 () Bool)

(assert (=> start!71368 m!771449))

(declare-fun m!771451 () Bool)

(assert (=> b!828421 m!771451))

(declare-fun m!771453 () Bool)

(assert (=> b!828421 m!771453))

(declare-fun m!771455 () Bool)

(assert (=> b!828421 m!771455))

(declare-fun m!771457 () Bool)

(assert (=> b!828418 m!771457))

(declare-fun m!771459 () Bool)

(assert (=> b!828427 m!771459))

(declare-fun m!771461 () Bool)

(assert (=> b!828427 m!771461))

(declare-fun m!771463 () Bool)

(assert (=> mapNonEmpty!24367 m!771463))

(declare-fun m!771465 () Bool)

(assert (=> b!828424 m!771465))

(declare-fun m!771467 () Bool)

(assert (=> b!828424 m!771467))

(check-sat (not b!828427) tp_is_empty!15153 (not b!828421) (not b!828424) b_and!22431 (not mapNonEmpty!24367) (not start!71368) (not b!828418) (not b_next!13443) (not b!828422))
(check-sat b_and!22431 (not b_next!13443))
(get-model)

(declare-fun b!828468 () Bool)

(declare-fun e!461709 () Bool)

(declare-fun e!461711 () Bool)

(assert (=> b!828468 (= e!461709 e!461711)))

(declare-fun res!564619 () Bool)

(assert (=> b!828468 (=> (not res!564619) (not e!461711))))

(declare-fun e!461712 () Bool)

(assert (=> b!828468 (= res!564619 (not e!461712))))

(declare-fun res!564617 () Bool)

(assert (=> b!828468 (=> (not res!564617) (not e!461712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!828468 (= res!564617 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828469 () Bool)

(declare-fun e!461710 () Bool)

(declare-fun call!36035 () Bool)

(assert (=> b!828469 (= e!461710 call!36035)))

(declare-fun b!828470 () Bool)

(assert (=> b!828470 (= e!461710 call!36035)))

(declare-fun b!828471 () Bool)

(declare-fun contains!4193 (List!15965 (_ BitVec 64)) Bool)

(assert (=> b!828471 (= e!461712 (contains!4193 Nil!15962 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105117 () Bool)

(declare-fun res!564618 () Bool)

(assert (=> d!105117 (=> res!564618 e!461709)))

(assert (=> d!105117 (= res!564618 (bvsge #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(assert (=> d!105117 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15962) e!461709)))

(declare-fun bm!36032 () Bool)

(declare-fun c!89554 () Bool)

(assert (=> bm!36032 (= call!36035 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89554 (Cons!15961 (select (arr!22259 _keys!976) #b00000000000000000000000000000000) Nil!15962) Nil!15962)))))

(declare-fun b!828472 () Bool)

(assert (=> b!828472 (= e!461711 e!461710)))

(assert (=> b!828472 (= c!89554 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105117 (not res!564618)) b!828468))

(assert (= (and b!828468 res!564617) b!828471))

(assert (= (and b!828468 res!564619) b!828472))

(assert (= (and b!828472 c!89554) b!828469))

(assert (= (and b!828472 (not c!89554)) b!828470))

(assert (= (or b!828469 b!828470) bm!36032))

(declare-fun m!771495 () Bool)

(assert (=> b!828468 m!771495))

(assert (=> b!828468 m!771495))

(declare-fun m!771497 () Bool)

(assert (=> b!828468 m!771497))

(assert (=> b!828471 m!771495))

(assert (=> b!828471 m!771495))

(declare-fun m!771499 () Bool)

(assert (=> b!828471 m!771499))

(assert (=> bm!36032 m!771495))

(declare-fun m!771501 () Bool)

(assert (=> bm!36032 m!771501))

(assert (=> b!828472 m!771495))

(assert (=> b!828472 m!771495))

(assert (=> b!828472 m!771497))

(assert (=> b!828422 d!105117))

(declare-fun d!105119 () Bool)

(assert (=> d!105119 (= (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375429 () Unit!28383)

(declare-fun choose!1419 (array!46444 array!46446 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25205 V!25205 V!25205 V!25205 (_ BitVec 32) Int) Unit!28383)

(assert (=> d!105119 (= lt!375429 (choose!1419 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!105119 (validMask!0 mask!1312)))

(assert (=> d!105119 (= (lemmaNoChangeToArrayThenSameMapNoExtras!593 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375429)))

(declare-fun bs!23143 () Bool)

(assert (= bs!23143 d!105119))

(assert (=> bs!23143 m!771455))

(assert (=> bs!23143 m!771453))

(declare-fun m!771503 () Bool)

(assert (=> bs!23143 m!771503))

(assert (=> bs!23143 m!771445))

(assert (=> b!828421 d!105119))

(declare-fun b!828497 () Bool)

(declare-fun res!564631 () Bool)

(declare-fun e!461728 () Bool)

(assert (=> b!828497 (=> (not res!564631) (not e!461728))))

(declare-fun lt!375450 () ListLongMap!8965)

(declare-fun contains!4194 (ListLongMap!8965 (_ BitVec 64)) Bool)

(assert (=> b!828497 (= res!564631 (not (contains!4194 lt!375450 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!828498 () Bool)

(assert (=> b!828498 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(assert (=> b!828498 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22681 _values!788)))))

(declare-fun e!461729 () Bool)

(declare-fun apply!367 (ListLongMap!8965 (_ BitVec 64)) V!25205)

(declare-fun get!11799 (ValueCell!7161 V!25205) V!25205)

(declare-fun dynLambda!977 (Int (_ BitVec 64)) V!25205)

(assert (=> b!828498 (= e!461729 (= (apply!367 lt!375450 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)) (get!11799 (select (arr!22260 _values!788) #b00000000000000000000000000000000) (dynLambda!977 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!828499 () Bool)

(declare-fun lt!375445 () Unit!28383)

(declare-fun lt!375448 () Unit!28383)

(assert (=> b!828499 (= lt!375445 lt!375448)))

(declare-fun lt!375449 () (_ BitVec 64))

(declare-fun lt!375447 () V!25205)

(declare-fun lt!375446 () ListLongMap!8965)

(declare-fun lt!375444 () (_ BitVec 64))

(assert (=> b!828499 (not (contains!4194 (+!1931 lt!375446 (tuple2!10129 lt!375444 lt!375447)) lt!375449))))

(declare-fun addStillNotContains!194 (ListLongMap!8965 (_ BitVec 64) V!25205 (_ BitVec 64)) Unit!28383)

(assert (=> b!828499 (= lt!375448 (addStillNotContains!194 lt!375446 lt!375444 lt!375447 lt!375449))))

(assert (=> b!828499 (= lt!375449 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!828499 (= lt!375447 (get!11799 (select (arr!22260 _values!788) #b00000000000000000000000000000000) (dynLambda!977 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!828499 (= lt!375444 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36038 () ListLongMap!8965)

(assert (=> b!828499 (= lt!375446 call!36038)))

(declare-fun e!461727 () ListLongMap!8965)

(assert (=> b!828499 (= e!461727 (+!1931 call!36038 (tuple2!10129 (select (arr!22259 _keys!976) #b00000000000000000000000000000000) (get!11799 (select (arr!22260 _values!788) #b00000000000000000000000000000000) (dynLambda!977 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!828500 () Bool)

(declare-fun e!461733 () Bool)

(declare-fun isEmpty!654 (ListLongMap!8965) Bool)

(assert (=> b!828500 (= e!461733 (isEmpty!654 lt!375450))))

(declare-fun b!828501 () Bool)

(declare-fun e!461732 () ListLongMap!8965)

(assert (=> b!828501 (= e!461732 (ListLongMap!8966 Nil!15961))))

(declare-fun b!828503 () Bool)

(declare-fun e!461730 () Bool)

(assert (=> b!828503 (= e!461730 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828503 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!828504 () Bool)

(declare-fun e!461731 () Bool)

(assert (=> b!828504 (= e!461731 e!461729)))

(assert (=> b!828504 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun res!564630 () Bool)

(assert (=> b!828504 (= res!564630 (contains!4194 lt!375450 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828504 (=> (not res!564630) (not e!461729))))

(declare-fun bm!36035 () Bool)

(assert (=> bm!36035 (= call!36038 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!828505 () Bool)

(assert (=> b!828505 (= e!461732 e!461727)))

(declare-fun c!89564 () Bool)

(assert (=> b!828505 (= c!89564 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828506 () Bool)

(assert (=> b!828506 (= e!461728 e!461731)))

(declare-fun c!89563 () Bool)

(assert (=> b!828506 (= c!89563 e!461730)))

(declare-fun res!564628 () Bool)

(assert (=> b!828506 (=> (not res!564628) (not e!461730))))

(assert (=> b!828506 (= res!564628 (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun b!828507 () Bool)

(assert (=> b!828507 (= e!461733 (= lt!375450 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!828508 () Bool)

(assert (=> b!828508 (= e!461731 e!461733)))

(declare-fun c!89566 () Bool)

(assert (=> b!828508 (= c!89566 (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun d!105121 () Bool)

(assert (=> d!105121 e!461728))

(declare-fun res!564629 () Bool)

(assert (=> d!105121 (=> (not res!564629) (not e!461728))))

(assert (=> d!105121 (= res!564629 (not (contains!4194 lt!375450 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105121 (= lt!375450 e!461732)))

(declare-fun c!89565 () Bool)

(assert (=> d!105121 (= c!89565 (bvsge #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(assert (=> d!105121 (validMask!0 mask!1312)))

(assert (=> d!105121 (= (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375450)))

(declare-fun b!828502 () Bool)

(assert (=> b!828502 (= e!461727 call!36038)))

(assert (= (and d!105121 c!89565) b!828501))

(assert (= (and d!105121 (not c!89565)) b!828505))

(assert (= (and b!828505 c!89564) b!828499))

(assert (= (and b!828505 (not c!89564)) b!828502))

(assert (= (or b!828499 b!828502) bm!36035))

(assert (= (and d!105121 res!564629) b!828497))

(assert (= (and b!828497 res!564631) b!828506))

(assert (= (and b!828506 res!564628) b!828503))

(assert (= (and b!828506 c!89563) b!828504))

(assert (= (and b!828506 (not c!89563)) b!828508))

(assert (= (and b!828504 res!564630) b!828498))

(assert (= (and b!828508 c!89566) b!828507))

(assert (= (and b!828508 (not c!89566)) b!828500))

(declare-fun b_lambda!11257 () Bool)

(assert (=> (not b_lambda!11257) (not b!828498)))

(declare-fun t!22332 () Bool)

(declare-fun tb!4223 () Bool)

(assert (=> (and start!71368 (= defaultEntry!796 defaultEntry!796) t!22332) tb!4223))

(declare-fun result!7993 () Bool)

(assert (=> tb!4223 (= result!7993 tp_is_empty!15153)))

(assert (=> b!828498 t!22332))

(declare-fun b_and!22435 () Bool)

(assert (= b_and!22431 (and (=> t!22332 result!7993) b_and!22435)))

(declare-fun b_lambda!11259 () Bool)

(assert (=> (not b_lambda!11259) (not b!828499)))

(assert (=> b!828499 t!22332))

(declare-fun b_and!22437 () Bool)

(assert (= b_and!22435 (and (=> t!22332 result!7993) b_and!22437)))

(declare-fun m!771505 () Bool)

(assert (=> b!828497 m!771505))

(assert (=> b!828505 m!771495))

(assert (=> b!828505 m!771495))

(assert (=> b!828505 m!771497))

(declare-fun m!771507 () Bool)

(assert (=> b!828498 m!771507))

(declare-fun m!771509 () Bool)

(assert (=> b!828498 m!771509))

(declare-fun m!771511 () Bool)

(assert (=> b!828498 m!771511))

(assert (=> b!828498 m!771495))

(declare-fun m!771513 () Bool)

(assert (=> b!828498 m!771513))

(assert (=> b!828498 m!771509))

(assert (=> b!828498 m!771495))

(assert (=> b!828498 m!771507))

(declare-fun m!771515 () Bool)

(assert (=> b!828500 m!771515))

(declare-fun m!771517 () Bool)

(assert (=> d!105121 m!771517))

(assert (=> d!105121 m!771445))

(declare-fun m!771519 () Bool)

(assert (=> bm!36035 m!771519))

(assert (=> b!828503 m!771495))

(assert (=> b!828503 m!771495))

(assert (=> b!828503 m!771497))

(assert (=> b!828507 m!771519))

(assert (=> b!828504 m!771495))

(assert (=> b!828504 m!771495))

(declare-fun m!771521 () Bool)

(assert (=> b!828504 m!771521))

(declare-fun m!771523 () Bool)

(assert (=> b!828499 m!771523))

(assert (=> b!828499 m!771507))

(assert (=> b!828499 m!771509))

(assert (=> b!828499 m!771511))

(declare-fun m!771525 () Bool)

(assert (=> b!828499 m!771525))

(assert (=> b!828499 m!771495))

(declare-fun m!771527 () Bool)

(assert (=> b!828499 m!771527))

(assert (=> b!828499 m!771507))

(assert (=> b!828499 m!771509))

(assert (=> b!828499 m!771525))

(declare-fun m!771529 () Bool)

(assert (=> b!828499 m!771529))

(assert (=> b!828421 d!105121))

(declare-fun b!828511 () Bool)

(declare-fun res!564635 () Bool)

(declare-fun e!461735 () Bool)

(assert (=> b!828511 (=> (not res!564635) (not e!461735))))

(declare-fun lt!375457 () ListLongMap!8965)

(assert (=> b!828511 (= res!564635 (not (contains!4194 lt!375457 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!828512 () Bool)

(assert (=> b!828512 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(assert (=> b!828512 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22681 _values!788)))))

(declare-fun e!461736 () Bool)

(assert (=> b!828512 (= e!461736 (= (apply!367 lt!375457 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)) (get!11799 (select (arr!22260 _values!788) #b00000000000000000000000000000000) (dynLambda!977 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!828513 () Bool)

(declare-fun lt!375452 () Unit!28383)

(declare-fun lt!375455 () Unit!28383)

(assert (=> b!828513 (= lt!375452 lt!375455)))

(declare-fun lt!375451 () (_ BitVec 64))

(declare-fun lt!375456 () (_ BitVec 64))

(declare-fun lt!375454 () V!25205)

(declare-fun lt!375453 () ListLongMap!8965)

(assert (=> b!828513 (not (contains!4194 (+!1931 lt!375453 (tuple2!10129 lt!375451 lt!375454)) lt!375456))))

(assert (=> b!828513 (= lt!375455 (addStillNotContains!194 lt!375453 lt!375451 lt!375454 lt!375456))))

(assert (=> b!828513 (= lt!375456 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!828513 (= lt!375454 (get!11799 (select (arr!22260 _values!788) #b00000000000000000000000000000000) (dynLambda!977 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!828513 (= lt!375451 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!36039 () ListLongMap!8965)

(assert (=> b!828513 (= lt!375453 call!36039)))

(declare-fun e!461734 () ListLongMap!8965)

(assert (=> b!828513 (= e!461734 (+!1931 call!36039 (tuple2!10129 (select (arr!22259 _keys!976) #b00000000000000000000000000000000) (get!11799 (select (arr!22260 _values!788) #b00000000000000000000000000000000) (dynLambda!977 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!828514 () Bool)

(declare-fun e!461740 () Bool)

(assert (=> b!828514 (= e!461740 (isEmpty!654 lt!375457))))

(declare-fun b!828515 () Bool)

(declare-fun e!461739 () ListLongMap!8965)

(assert (=> b!828515 (= e!461739 (ListLongMap!8966 Nil!15961))))

(declare-fun b!828517 () Bool)

(declare-fun e!461737 () Bool)

(assert (=> b!828517 (= e!461737 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828517 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!828518 () Bool)

(declare-fun e!461738 () Bool)

(assert (=> b!828518 (= e!461738 e!461736)))

(assert (=> b!828518 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun res!564634 () Bool)

(assert (=> b!828518 (= res!564634 (contains!4194 lt!375457 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828518 (=> (not res!564634) (not e!461736))))

(declare-fun bm!36036 () Bool)

(assert (=> bm!36036 (= call!36039 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!828519 () Bool)

(assert (=> b!828519 (= e!461739 e!461734)))

(declare-fun c!89568 () Bool)

(assert (=> b!828519 (= c!89568 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828520 () Bool)

(assert (=> b!828520 (= e!461735 e!461738)))

(declare-fun c!89567 () Bool)

(assert (=> b!828520 (= c!89567 e!461737)))

(declare-fun res!564632 () Bool)

(assert (=> b!828520 (=> (not res!564632) (not e!461737))))

(assert (=> b!828520 (= res!564632 (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun b!828521 () Bool)

(assert (=> b!828521 (= e!461740 (= lt!375457 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!828522 () Bool)

(assert (=> b!828522 (= e!461738 e!461740)))

(declare-fun c!89570 () Bool)

(assert (=> b!828522 (= c!89570 (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun d!105123 () Bool)

(assert (=> d!105123 e!461735))

(declare-fun res!564633 () Bool)

(assert (=> d!105123 (=> (not res!564633) (not e!461735))))

(assert (=> d!105123 (= res!564633 (not (contains!4194 lt!375457 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!105123 (= lt!375457 e!461739)))

(declare-fun c!89569 () Bool)

(assert (=> d!105123 (= c!89569 (bvsge #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(assert (=> d!105123 (validMask!0 mask!1312)))

(assert (=> d!105123 (= (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375457)))

(declare-fun b!828516 () Bool)

(assert (=> b!828516 (= e!461734 call!36039)))

(assert (= (and d!105123 c!89569) b!828515))

(assert (= (and d!105123 (not c!89569)) b!828519))

(assert (= (and b!828519 c!89568) b!828513))

(assert (= (and b!828519 (not c!89568)) b!828516))

(assert (= (or b!828513 b!828516) bm!36036))

(assert (= (and d!105123 res!564633) b!828511))

(assert (= (and b!828511 res!564635) b!828520))

(assert (= (and b!828520 res!564632) b!828517))

(assert (= (and b!828520 c!89567) b!828518))

(assert (= (and b!828520 (not c!89567)) b!828522))

(assert (= (and b!828518 res!564634) b!828512))

(assert (= (and b!828522 c!89570) b!828521))

(assert (= (and b!828522 (not c!89570)) b!828514))

(declare-fun b_lambda!11261 () Bool)

(assert (=> (not b_lambda!11261) (not b!828512)))

(assert (=> b!828512 t!22332))

(declare-fun b_and!22439 () Bool)

(assert (= b_and!22437 (and (=> t!22332 result!7993) b_and!22439)))

(declare-fun b_lambda!11263 () Bool)

(assert (=> (not b_lambda!11263) (not b!828513)))

(assert (=> b!828513 t!22332))

(declare-fun b_and!22441 () Bool)

(assert (= b_and!22439 (and (=> t!22332 result!7993) b_and!22441)))

(declare-fun m!771531 () Bool)

(assert (=> b!828511 m!771531))

(assert (=> b!828519 m!771495))

(assert (=> b!828519 m!771495))

(assert (=> b!828519 m!771497))

(assert (=> b!828512 m!771507))

(assert (=> b!828512 m!771509))

(assert (=> b!828512 m!771511))

(assert (=> b!828512 m!771495))

(declare-fun m!771533 () Bool)

(assert (=> b!828512 m!771533))

(assert (=> b!828512 m!771509))

(assert (=> b!828512 m!771495))

(assert (=> b!828512 m!771507))

(declare-fun m!771535 () Bool)

(assert (=> b!828514 m!771535))

(declare-fun m!771537 () Bool)

(assert (=> d!105123 m!771537))

(assert (=> d!105123 m!771445))

(declare-fun m!771539 () Bool)

(assert (=> bm!36036 m!771539))

(assert (=> b!828517 m!771495))

(assert (=> b!828517 m!771495))

(assert (=> b!828517 m!771497))

(assert (=> b!828521 m!771539))

(assert (=> b!828518 m!771495))

(assert (=> b!828518 m!771495))

(declare-fun m!771541 () Bool)

(assert (=> b!828518 m!771541))

(declare-fun m!771543 () Bool)

(assert (=> b!828513 m!771543))

(assert (=> b!828513 m!771507))

(assert (=> b!828513 m!771509))

(assert (=> b!828513 m!771511))

(declare-fun m!771545 () Bool)

(assert (=> b!828513 m!771545))

(assert (=> b!828513 m!771495))

(declare-fun m!771547 () Bool)

(assert (=> b!828513 m!771547))

(assert (=> b!828513 m!771507))

(assert (=> b!828513 m!771509))

(assert (=> b!828513 m!771545))

(declare-fun m!771549 () Bool)

(assert (=> b!828513 m!771549))

(assert (=> b!828421 d!105123))

(declare-fun b!828565 () Bool)

(declare-fun res!564658 () Bool)

(declare-fun e!461775 () Bool)

(assert (=> b!828565 (=> (not res!564658) (not e!461775))))

(declare-fun e!461771 () Bool)

(assert (=> b!828565 (= res!564658 e!461771)))

(declare-fun c!89584 () Bool)

(assert (=> b!828565 (= c!89584 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun c!89588 () Bool)

(declare-fun call!36059 () ListLongMap!8965)

(declare-fun c!89586 () Bool)

(declare-fun call!36057 () ListLongMap!8965)

(declare-fun call!36058 () ListLongMap!8965)

(declare-fun call!36060 () ListLongMap!8965)

(declare-fun bm!36051 () Bool)

(assert (=> bm!36051 (= call!36060 (+!1931 (ite c!89588 call!36058 (ite c!89586 call!36059 call!36057)) (ite (or c!89588 c!89586) (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10129 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!828566 () Bool)

(declare-fun e!461770 () ListLongMap!8965)

(assert (=> b!828566 (= e!461770 (+!1931 call!36060 (tuple2!10129 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!828567 () Bool)

(declare-fun e!461778 () ListLongMap!8965)

(declare-fun call!36055 () ListLongMap!8965)

(assert (=> b!828567 (= e!461778 call!36055)))

(declare-fun b!828568 () Bool)

(declare-fun e!461769 () Bool)

(declare-fun call!36056 () Bool)

(assert (=> b!828568 (= e!461769 (not call!36056))))

(declare-fun bm!36052 () Bool)

(declare-fun call!36054 () Bool)

(declare-fun lt!375505 () ListLongMap!8965)

(assert (=> bm!36052 (= call!36054 (contains!4194 lt!375505 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!828569 () Bool)

(assert (=> b!828569 (= e!461771 (not call!36054))))

(declare-fun b!828570 () Bool)

(assert (=> b!828570 (= e!461778 call!36057)))

(declare-fun bm!36053 () Bool)

(assert (=> bm!36053 (= call!36059 call!36058)))

(declare-fun b!828571 () Bool)

(declare-fun e!461776 () Bool)

(assert (=> b!828571 (= e!461769 e!461776)))

(declare-fun res!564657 () Bool)

(assert (=> b!828571 (= res!564657 call!36056)))

(assert (=> b!828571 (=> (not res!564657) (not e!461776))))

(declare-fun b!828572 () Bool)

(declare-fun e!461768 () Unit!28383)

(declare-fun Unit!28387 () Unit!28383)

(assert (=> b!828572 (= e!461768 Unit!28387)))

(declare-fun b!828573 () Bool)

(declare-fun e!461777 () Bool)

(declare-fun e!461772 () Bool)

(assert (=> b!828573 (= e!461777 e!461772)))

(declare-fun res!564659 () Bool)

(assert (=> b!828573 (=> (not res!564659) (not e!461772))))

(assert (=> b!828573 (= res!564659 (contains!4194 lt!375505 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828573 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun b!828574 () Bool)

(declare-fun e!461767 () Bool)

(assert (=> b!828574 (= e!461767 (= (apply!367 lt!375505 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!828575 () Bool)

(assert (=> b!828575 (= e!461772 (= (apply!367 lt!375505 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)) (get!11799 (select (arr!22260 _values!788) #b00000000000000000000000000000000) (dynLambda!977 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!828575 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22681 _values!788)))))

(assert (=> b!828575 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun b!828576 () Bool)

(declare-fun lt!375511 () Unit!28383)

(assert (=> b!828576 (= e!461768 lt!375511)))

(declare-fun lt!375515 () ListLongMap!8965)

(assert (=> b!828576 (= lt!375515 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375504 () (_ BitVec 64))

(assert (=> b!828576 (= lt!375504 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375513 () (_ BitVec 64))

(assert (=> b!828576 (= lt!375513 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375518 () Unit!28383)

(declare-fun addStillContains!318 (ListLongMap!8965 (_ BitVec 64) V!25205 (_ BitVec 64)) Unit!28383)

(assert (=> b!828576 (= lt!375518 (addStillContains!318 lt!375515 lt!375504 zeroValueBefore!34 lt!375513))))

(assert (=> b!828576 (contains!4194 (+!1931 lt!375515 (tuple2!10129 lt!375504 zeroValueBefore!34)) lt!375513)))

(declare-fun lt!375517 () Unit!28383)

(assert (=> b!828576 (= lt!375517 lt!375518)))

(declare-fun lt!375520 () ListLongMap!8965)

(assert (=> b!828576 (= lt!375520 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375523 () (_ BitVec 64))

(assert (=> b!828576 (= lt!375523 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375512 () (_ BitVec 64))

(assert (=> b!828576 (= lt!375512 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375522 () Unit!28383)

(declare-fun addApplyDifferent!318 (ListLongMap!8965 (_ BitVec 64) V!25205 (_ BitVec 64)) Unit!28383)

(assert (=> b!828576 (= lt!375522 (addApplyDifferent!318 lt!375520 lt!375523 minValue!754 lt!375512))))

(assert (=> b!828576 (= (apply!367 (+!1931 lt!375520 (tuple2!10129 lt!375523 minValue!754)) lt!375512) (apply!367 lt!375520 lt!375512))))

(declare-fun lt!375502 () Unit!28383)

(assert (=> b!828576 (= lt!375502 lt!375522)))

(declare-fun lt!375503 () ListLongMap!8965)

(assert (=> b!828576 (= lt!375503 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375507 () (_ BitVec 64))

(assert (=> b!828576 (= lt!375507 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375510 () (_ BitVec 64))

(assert (=> b!828576 (= lt!375510 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375506 () Unit!28383)

(assert (=> b!828576 (= lt!375506 (addApplyDifferent!318 lt!375503 lt!375507 zeroValueBefore!34 lt!375510))))

(assert (=> b!828576 (= (apply!367 (+!1931 lt!375503 (tuple2!10129 lt!375507 zeroValueBefore!34)) lt!375510) (apply!367 lt!375503 lt!375510))))

(declare-fun lt!375509 () Unit!28383)

(assert (=> b!828576 (= lt!375509 lt!375506)))

(declare-fun lt!375514 () ListLongMap!8965)

(assert (=> b!828576 (= lt!375514 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375508 () (_ BitVec 64))

(assert (=> b!828576 (= lt!375508 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375516 () (_ BitVec 64))

(assert (=> b!828576 (= lt!375516 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!828576 (= lt!375511 (addApplyDifferent!318 lt!375514 lt!375508 minValue!754 lt!375516))))

(assert (=> b!828576 (= (apply!367 (+!1931 lt!375514 (tuple2!10129 lt!375508 minValue!754)) lt!375516) (apply!367 lt!375514 lt!375516))))

(declare-fun b!828577 () Bool)

(declare-fun e!461774 () ListLongMap!8965)

(assert (=> b!828577 (= e!461770 e!461774)))

(assert (=> b!828577 (= c!89586 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!36054 () Bool)

(assert (=> bm!36054 (= call!36055 call!36060)))

(declare-fun bm!36055 () Bool)

(assert (=> bm!36055 (= call!36058 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828578 () Bool)

(assert (=> b!828578 (= e!461775 e!461769)))

(declare-fun c!89585 () Bool)

(assert (=> b!828578 (= c!89585 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!828579 () Bool)

(assert (=> b!828579 (= e!461774 call!36055)))

(declare-fun b!828580 () Bool)

(declare-fun e!461773 () Bool)

(assert (=> b!828580 (= e!461773 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828581 () Bool)

(assert (=> b!828581 (= e!461771 e!461767)))

(declare-fun res!564662 () Bool)

(assert (=> b!828581 (= res!564662 call!36054)))

(assert (=> b!828581 (=> (not res!564662) (not e!461767))))

(declare-fun b!828582 () Bool)

(assert (=> b!828582 (= e!461776 (= (apply!367 lt!375505 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!828583 () Bool)

(declare-fun e!461779 () Bool)

(assert (=> b!828583 (= e!461779 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36056 () Bool)

(assert (=> bm!36056 (= call!36056 (contains!4194 lt!375505 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!36057 () Bool)

(assert (=> bm!36057 (= call!36057 call!36059)))

(declare-fun b!828585 () Bool)

(declare-fun c!89583 () Bool)

(assert (=> b!828585 (= c!89583 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!828585 (= e!461774 e!461778)))

(declare-fun b!828584 () Bool)

(declare-fun res!564654 () Bool)

(assert (=> b!828584 (=> (not res!564654) (not e!461775))))

(assert (=> b!828584 (= res!564654 e!461777)))

(declare-fun res!564661 () Bool)

(assert (=> b!828584 (=> res!564661 e!461777)))

(assert (=> b!828584 (= res!564661 (not e!461773))))

(declare-fun res!564660 () Bool)

(assert (=> b!828584 (=> (not res!564660) (not e!461773))))

(assert (=> b!828584 (= res!564660 (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun d!105125 () Bool)

(assert (=> d!105125 e!461775))

(declare-fun res!564656 () Bool)

(assert (=> d!105125 (=> (not res!564656) (not e!461775))))

(assert (=> d!105125 (= res!564656 (or (bvsge #b00000000000000000000000000000000 (size!22680 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))))

(declare-fun lt!375519 () ListLongMap!8965)

(assert (=> d!105125 (= lt!375505 lt!375519)))

(declare-fun lt!375521 () Unit!28383)

(assert (=> d!105125 (= lt!375521 e!461768)))

(declare-fun c!89587 () Bool)

(assert (=> d!105125 (= c!89587 e!461779)))

(declare-fun res!564655 () Bool)

(assert (=> d!105125 (=> (not res!564655) (not e!461779))))

(assert (=> d!105125 (= res!564655 (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(assert (=> d!105125 (= lt!375519 e!461770)))

(assert (=> d!105125 (= c!89588 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105125 (validMask!0 mask!1312)))

(assert (=> d!105125 (= (getCurrentListMap!2573 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375505)))

(assert (= (and d!105125 c!89588) b!828566))

(assert (= (and d!105125 (not c!89588)) b!828577))

(assert (= (and b!828577 c!89586) b!828579))

(assert (= (and b!828577 (not c!89586)) b!828585))

(assert (= (and b!828585 c!89583) b!828567))

(assert (= (and b!828585 (not c!89583)) b!828570))

(assert (= (or b!828567 b!828570) bm!36057))

(assert (= (or b!828579 bm!36057) bm!36053))

(assert (= (or b!828579 b!828567) bm!36054))

(assert (= (or b!828566 bm!36053) bm!36055))

(assert (= (or b!828566 bm!36054) bm!36051))

(assert (= (and d!105125 res!564655) b!828583))

(assert (= (and d!105125 c!89587) b!828576))

(assert (= (and d!105125 (not c!89587)) b!828572))

(assert (= (and d!105125 res!564656) b!828584))

(assert (= (and b!828584 res!564660) b!828580))

(assert (= (and b!828584 (not res!564661)) b!828573))

(assert (= (and b!828573 res!564659) b!828575))

(assert (= (and b!828584 res!564654) b!828565))

(assert (= (and b!828565 c!89584) b!828581))

(assert (= (and b!828565 (not c!89584)) b!828569))

(assert (= (and b!828581 res!564662) b!828574))

(assert (= (or b!828581 b!828569) bm!36052))

(assert (= (and b!828565 res!564658) b!828578))

(assert (= (and b!828578 c!89585) b!828571))

(assert (= (and b!828578 (not c!89585)) b!828568))

(assert (= (and b!828571 res!564657) b!828582))

(assert (= (or b!828571 b!828568) bm!36056))

(declare-fun b_lambda!11265 () Bool)

(assert (=> (not b_lambda!11265) (not b!828575)))

(assert (=> b!828575 t!22332))

(declare-fun b_and!22443 () Bool)

(assert (= b_and!22441 (and (=> t!22332 result!7993) b_and!22443)))

(declare-fun m!771551 () Bool)

(assert (=> bm!36051 m!771551))

(assert (=> d!105125 m!771445))

(declare-fun m!771553 () Bool)

(assert (=> b!828582 m!771553))

(assert (=> b!828573 m!771495))

(assert (=> b!828573 m!771495))

(declare-fun m!771555 () Bool)

(assert (=> b!828573 m!771555))

(declare-fun m!771557 () Bool)

(assert (=> b!828576 m!771557))

(declare-fun m!771559 () Bool)

(assert (=> b!828576 m!771559))

(declare-fun m!771561 () Bool)

(assert (=> b!828576 m!771561))

(declare-fun m!771563 () Bool)

(assert (=> b!828576 m!771563))

(assert (=> b!828576 m!771455))

(declare-fun m!771565 () Bool)

(assert (=> b!828576 m!771565))

(assert (=> b!828576 m!771495))

(declare-fun m!771567 () Bool)

(assert (=> b!828576 m!771567))

(declare-fun m!771569 () Bool)

(assert (=> b!828576 m!771569))

(declare-fun m!771571 () Bool)

(assert (=> b!828576 m!771571))

(declare-fun m!771573 () Bool)

(assert (=> b!828576 m!771573))

(assert (=> b!828576 m!771557))

(declare-fun m!771575 () Bool)

(assert (=> b!828576 m!771575))

(assert (=> b!828576 m!771567))

(assert (=> b!828576 m!771575))

(declare-fun m!771577 () Bool)

(assert (=> b!828576 m!771577))

(assert (=> b!828576 m!771571))

(declare-fun m!771579 () Bool)

(assert (=> b!828576 m!771579))

(declare-fun m!771581 () Bool)

(assert (=> b!828576 m!771581))

(declare-fun m!771583 () Bool)

(assert (=> b!828576 m!771583))

(declare-fun m!771585 () Bool)

(assert (=> b!828576 m!771585))

(declare-fun m!771587 () Bool)

(assert (=> bm!36056 m!771587))

(declare-fun m!771589 () Bool)

(assert (=> b!828566 m!771589))

(declare-fun m!771591 () Bool)

(assert (=> b!828574 m!771591))

(assert (=> bm!36055 m!771455))

(assert (=> b!828580 m!771495))

(assert (=> b!828580 m!771495))

(assert (=> b!828580 m!771497))

(declare-fun m!771593 () Bool)

(assert (=> bm!36052 m!771593))

(assert (=> b!828575 m!771495))

(declare-fun m!771595 () Bool)

(assert (=> b!828575 m!771595))

(assert (=> b!828575 m!771509))

(assert (=> b!828575 m!771507))

(assert (=> b!828575 m!771495))

(assert (=> b!828575 m!771507))

(assert (=> b!828575 m!771509))

(assert (=> b!828575 m!771511))

(assert (=> b!828583 m!771495))

(assert (=> b!828583 m!771495))

(assert (=> b!828583 m!771497))

(assert (=> b!828424 d!105125))

(declare-fun d!105127 () Bool)

(declare-fun e!461782 () Bool)

(assert (=> d!105127 e!461782))

(declare-fun res!564668 () Bool)

(assert (=> d!105127 (=> (not res!564668) (not e!461782))))

(declare-fun lt!375533 () ListLongMap!8965)

(assert (=> d!105127 (= res!564668 (contains!4194 lt!375533 (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun lt!375532 () List!15964)

(assert (=> d!105127 (= lt!375533 (ListLongMap!8966 lt!375532))))

(declare-fun lt!375534 () Unit!28383)

(declare-fun lt!375535 () Unit!28383)

(assert (=> d!105127 (= lt!375534 lt!375535)))

(declare-datatypes ((Option!415 0))(
  ( (Some!414 (v!10059 V!25205)) (None!413) )
))
(declare-fun getValueByKey!409 (List!15964 (_ BitVec 64)) Option!415)

(assert (=> d!105127 (= (getValueByKey!409 lt!375532 (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (Some!414 (_2!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!225 (List!15964 (_ BitVec 64) V!25205) Unit!28383)

(assert (=> d!105127 (= lt!375535 (lemmaContainsTupThenGetReturnValue!225 lt!375532 (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (_2!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(declare-fun insertStrictlySorted!263 (List!15964 (_ BitVec 64) V!25205) List!15964)

(assert (=> d!105127 (= lt!375532 (insertStrictlySorted!263 (toList!4498 lt!375417) (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (_2!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))))

(assert (=> d!105127 (= (+!1931 lt!375417 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) lt!375533)))

(declare-fun b!828590 () Bool)

(declare-fun res!564667 () Bool)

(assert (=> b!828590 (=> (not res!564667) (not e!461782))))

(assert (=> b!828590 (= res!564667 (= (getValueByKey!409 (toList!4498 lt!375533) (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))) (Some!414 (_2!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)))))))

(declare-fun b!828591 () Bool)

(declare-fun contains!4195 (List!15964 tuple2!10128) Bool)

(assert (=> b!828591 (= e!461782 (contains!4195 (toList!4498 lt!375533) (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)))))

(assert (= (and d!105127 res!564668) b!828590))

(assert (= (and b!828590 res!564667) b!828591))

(declare-fun m!771597 () Bool)

(assert (=> d!105127 m!771597))

(declare-fun m!771599 () Bool)

(assert (=> d!105127 m!771599))

(declare-fun m!771601 () Bool)

(assert (=> d!105127 m!771601))

(declare-fun m!771603 () Bool)

(assert (=> d!105127 m!771603))

(declare-fun m!771605 () Bool)

(assert (=> b!828590 m!771605))

(declare-fun m!771607 () Bool)

(assert (=> b!828591 m!771607))

(assert (=> b!828424 d!105127))

(declare-fun d!105129 () Bool)

(assert (=> d!105129 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71368 d!105129))

(declare-fun d!105131 () Bool)

(assert (=> d!105131 (= (array_inv!17713 _keys!976) (bvsge (size!22680 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71368 d!105131))

(declare-fun d!105133 () Bool)

(assert (=> d!105133 (= (array_inv!17714 _values!788) (bvsge (size!22681 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71368 d!105133))

(declare-fun b!828592 () Bool)

(declare-fun res!564673 () Bool)

(declare-fun e!461791 () Bool)

(assert (=> b!828592 (=> (not res!564673) (not e!461791))))

(declare-fun e!461787 () Bool)

(assert (=> b!828592 (= res!564673 e!461787)))

(declare-fun c!89590 () Bool)

(assert (=> b!828592 (= c!89590 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!36065 () ListLongMap!8965)

(declare-fun call!36067 () ListLongMap!8965)

(declare-fun c!89592 () Bool)

(declare-fun bm!36058 () Bool)

(declare-fun call!36064 () ListLongMap!8965)

(declare-fun call!36066 () ListLongMap!8965)

(declare-fun c!89594 () Bool)

(assert (=> bm!36058 (= call!36067 (+!1931 (ite c!89594 call!36065 (ite c!89592 call!36066 call!36064)) (ite (or c!89594 c!89592) (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10129 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!828593 () Bool)

(declare-fun e!461786 () ListLongMap!8965)

(assert (=> b!828593 (= e!461786 (+!1931 call!36067 (tuple2!10129 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!828594 () Bool)

(declare-fun e!461794 () ListLongMap!8965)

(declare-fun call!36062 () ListLongMap!8965)

(assert (=> b!828594 (= e!461794 call!36062)))

(declare-fun b!828595 () Bool)

(declare-fun e!461785 () Bool)

(declare-fun call!36063 () Bool)

(assert (=> b!828595 (= e!461785 (not call!36063))))

(declare-fun bm!36059 () Bool)

(declare-fun call!36061 () Bool)

(declare-fun lt!375539 () ListLongMap!8965)

(assert (=> bm!36059 (= call!36061 (contains!4194 lt!375539 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!828596 () Bool)

(assert (=> b!828596 (= e!461787 (not call!36061))))

(declare-fun b!828597 () Bool)

(assert (=> b!828597 (= e!461794 call!36064)))

(declare-fun bm!36060 () Bool)

(assert (=> bm!36060 (= call!36066 call!36065)))

(declare-fun b!828598 () Bool)

(declare-fun e!461792 () Bool)

(assert (=> b!828598 (= e!461785 e!461792)))

(declare-fun res!564672 () Bool)

(assert (=> b!828598 (= res!564672 call!36063)))

(assert (=> b!828598 (=> (not res!564672) (not e!461792))))

(declare-fun b!828599 () Bool)

(declare-fun e!461784 () Unit!28383)

(declare-fun Unit!28388 () Unit!28383)

(assert (=> b!828599 (= e!461784 Unit!28388)))

(declare-fun b!828600 () Bool)

(declare-fun e!461793 () Bool)

(declare-fun e!461788 () Bool)

(assert (=> b!828600 (= e!461793 e!461788)))

(declare-fun res!564674 () Bool)

(assert (=> b!828600 (=> (not res!564674) (not e!461788))))

(assert (=> b!828600 (= res!564674 (contains!4194 lt!375539 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!828600 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun b!828601 () Bool)

(declare-fun e!461783 () Bool)

(assert (=> b!828601 (= e!461783 (= (apply!367 lt!375539 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!828602 () Bool)

(assert (=> b!828602 (= e!461788 (= (apply!367 lt!375539 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)) (get!11799 (select (arr!22260 _values!788) #b00000000000000000000000000000000) (dynLambda!977 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!828602 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22681 _values!788)))))

(assert (=> b!828602 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun b!828603 () Bool)

(declare-fun lt!375545 () Unit!28383)

(assert (=> b!828603 (= e!461784 lt!375545)))

(declare-fun lt!375549 () ListLongMap!8965)

(assert (=> b!828603 (= lt!375549 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375538 () (_ BitVec 64))

(assert (=> b!828603 (= lt!375538 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375547 () (_ BitVec 64))

(assert (=> b!828603 (= lt!375547 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375552 () Unit!28383)

(assert (=> b!828603 (= lt!375552 (addStillContains!318 lt!375549 lt!375538 zeroValueAfter!34 lt!375547))))

(assert (=> b!828603 (contains!4194 (+!1931 lt!375549 (tuple2!10129 lt!375538 zeroValueAfter!34)) lt!375547)))

(declare-fun lt!375551 () Unit!28383)

(assert (=> b!828603 (= lt!375551 lt!375552)))

(declare-fun lt!375554 () ListLongMap!8965)

(assert (=> b!828603 (= lt!375554 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375557 () (_ BitVec 64))

(assert (=> b!828603 (= lt!375557 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375546 () (_ BitVec 64))

(assert (=> b!828603 (= lt!375546 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375556 () Unit!28383)

(assert (=> b!828603 (= lt!375556 (addApplyDifferent!318 lt!375554 lt!375557 minValue!754 lt!375546))))

(assert (=> b!828603 (= (apply!367 (+!1931 lt!375554 (tuple2!10129 lt!375557 minValue!754)) lt!375546) (apply!367 lt!375554 lt!375546))))

(declare-fun lt!375536 () Unit!28383)

(assert (=> b!828603 (= lt!375536 lt!375556)))

(declare-fun lt!375537 () ListLongMap!8965)

(assert (=> b!828603 (= lt!375537 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375541 () (_ BitVec 64))

(assert (=> b!828603 (= lt!375541 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375544 () (_ BitVec 64))

(assert (=> b!828603 (= lt!375544 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375540 () Unit!28383)

(assert (=> b!828603 (= lt!375540 (addApplyDifferent!318 lt!375537 lt!375541 zeroValueAfter!34 lt!375544))))

(assert (=> b!828603 (= (apply!367 (+!1931 lt!375537 (tuple2!10129 lt!375541 zeroValueAfter!34)) lt!375544) (apply!367 lt!375537 lt!375544))))

(declare-fun lt!375543 () Unit!28383)

(assert (=> b!828603 (= lt!375543 lt!375540)))

(declare-fun lt!375548 () ListLongMap!8965)

(assert (=> b!828603 (= lt!375548 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375542 () (_ BitVec 64))

(assert (=> b!828603 (= lt!375542 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!375550 () (_ BitVec 64))

(assert (=> b!828603 (= lt!375550 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!828603 (= lt!375545 (addApplyDifferent!318 lt!375548 lt!375542 minValue!754 lt!375550))))

(assert (=> b!828603 (= (apply!367 (+!1931 lt!375548 (tuple2!10129 lt!375542 minValue!754)) lt!375550) (apply!367 lt!375548 lt!375550))))

(declare-fun b!828604 () Bool)

(declare-fun e!461790 () ListLongMap!8965)

(assert (=> b!828604 (= e!461786 e!461790)))

(assert (=> b!828604 (= c!89592 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!36061 () Bool)

(assert (=> bm!36061 (= call!36062 call!36067)))

(declare-fun bm!36062 () Bool)

(assert (=> bm!36062 (= call!36065 (getCurrentListMapNoExtraKeys!2503 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828605 () Bool)

(assert (=> b!828605 (= e!461791 e!461785)))

(declare-fun c!89591 () Bool)

(assert (=> b!828605 (= c!89591 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!828606 () Bool)

(assert (=> b!828606 (= e!461790 call!36062)))

(declare-fun b!828607 () Bool)

(declare-fun e!461789 () Bool)

(assert (=> b!828607 (= e!461789 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!828608 () Bool)

(assert (=> b!828608 (= e!461787 e!461783)))

(declare-fun res!564677 () Bool)

(assert (=> b!828608 (= res!564677 call!36061)))

(assert (=> b!828608 (=> (not res!564677) (not e!461783))))

(declare-fun b!828609 () Bool)

(assert (=> b!828609 (= e!461792 (= (apply!367 lt!375539 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!828610 () Bool)

(declare-fun e!461795 () Bool)

(assert (=> b!828610 (= e!461795 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36063 () Bool)

(assert (=> bm!36063 (= call!36063 (contains!4194 lt!375539 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!36064 () Bool)

(assert (=> bm!36064 (= call!36064 call!36066)))

(declare-fun b!828612 () Bool)

(declare-fun c!89589 () Bool)

(assert (=> b!828612 (= c!89589 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!828612 (= e!461790 e!461794)))

(declare-fun b!828611 () Bool)

(declare-fun res!564669 () Bool)

(assert (=> b!828611 (=> (not res!564669) (not e!461791))))

(assert (=> b!828611 (= res!564669 e!461793)))

(declare-fun res!564676 () Bool)

(assert (=> b!828611 (=> res!564676 e!461793)))

(assert (=> b!828611 (= res!564676 (not e!461789))))

(declare-fun res!564675 () Bool)

(assert (=> b!828611 (=> (not res!564675) (not e!461789))))

(assert (=> b!828611 (= res!564675 (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(declare-fun d!105135 () Bool)

(assert (=> d!105135 e!461791))

(declare-fun res!564671 () Bool)

(assert (=> d!105135 (=> (not res!564671) (not e!461791))))

(assert (=> d!105135 (= res!564671 (or (bvsge #b00000000000000000000000000000000 (size!22680 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))))

(declare-fun lt!375553 () ListLongMap!8965)

(assert (=> d!105135 (= lt!375539 lt!375553)))

(declare-fun lt!375555 () Unit!28383)

(assert (=> d!105135 (= lt!375555 e!461784)))

(declare-fun c!89593 () Bool)

(assert (=> d!105135 (= c!89593 e!461795)))

(declare-fun res!564670 () Bool)

(assert (=> d!105135 (=> (not res!564670) (not e!461795))))

(assert (=> d!105135 (= res!564670 (bvslt #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(assert (=> d!105135 (= lt!375553 e!461786)))

(assert (=> d!105135 (= c!89594 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105135 (validMask!0 mask!1312)))

(assert (=> d!105135 (= (getCurrentListMap!2573 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375539)))

(assert (= (and d!105135 c!89594) b!828593))

(assert (= (and d!105135 (not c!89594)) b!828604))

(assert (= (and b!828604 c!89592) b!828606))

(assert (= (and b!828604 (not c!89592)) b!828612))

(assert (= (and b!828612 c!89589) b!828594))

(assert (= (and b!828612 (not c!89589)) b!828597))

(assert (= (or b!828594 b!828597) bm!36064))

(assert (= (or b!828606 bm!36064) bm!36060))

(assert (= (or b!828606 b!828594) bm!36061))

(assert (= (or b!828593 bm!36060) bm!36062))

(assert (= (or b!828593 bm!36061) bm!36058))

(assert (= (and d!105135 res!564670) b!828610))

(assert (= (and d!105135 c!89593) b!828603))

(assert (= (and d!105135 (not c!89593)) b!828599))

(assert (= (and d!105135 res!564671) b!828611))

(assert (= (and b!828611 res!564675) b!828607))

(assert (= (and b!828611 (not res!564676)) b!828600))

(assert (= (and b!828600 res!564674) b!828602))

(assert (= (and b!828611 res!564669) b!828592))

(assert (= (and b!828592 c!89590) b!828608))

(assert (= (and b!828592 (not c!89590)) b!828596))

(assert (= (and b!828608 res!564677) b!828601))

(assert (= (or b!828608 b!828596) bm!36059))

(assert (= (and b!828592 res!564673) b!828605))

(assert (= (and b!828605 c!89591) b!828598))

(assert (= (and b!828605 (not c!89591)) b!828595))

(assert (= (and b!828598 res!564672) b!828609))

(assert (= (or b!828598 b!828595) bm!36063))

(declare-fun b_lambda!11267 () Bool)

(assert (=> (not b_lambda!11267) (not b!828602)))

(assert (=> b!828602 t!22332))

(declare-fun b_and!22445 () Bool)

(assert (= b_and!22443 (and (=> t!22332 result!7993) b_and!22445)))

(declare-fun m!771609 () Bool)

(assert (=> bm!36058 m!771609))

(assert (=> d!105135 m!771445))

(declare-fun m!771611 () Bool)

(assert (=> b!828609 m!771611))

(assert (=> b!828600 m!771495))

(assert (=> b!828600 m!771495))

(declare-fun m!771613 () Bool)

(assert (=> b!828600 m!771613))

(declare-fun m!771615 () Bool)

(assert (=> b!828603 m!771615))

(declare-fun m!771617 () Bool)

(assert (=> b!828603 m!771617))

(declare-fun m!771619 () Bool)

(assert (=> b!828603 m!771619))

(declare-fun m!771621 () Bool)

(assert (=> b!828603 m!771621))

(assert (=> b!828603 m!771453))

(declare-fun m!771623 () Bool)

(assert (=> b!828603 m!771623))

(assert (=> b!828603 m!771495))

(declare-fun m!771625 () Bool)

(assert (=> b!828603 m!771625))

(declare-fun m!771627 () Bool)

(assert (=> b!828603 m!771627))

(declare-fun m!771629 () Bool)

(assert (=> b!828603 m!771629))

(declare-fun m!771631 () Bool)

(assert (=> b!828603 m!771631))

(assert (=> b!828603 m!771615))

(declare-fun m!771633 () Bool)

(assert (=> b!828603 m!771633))

(assert (=> b!828603 m!771625))

(assert (=> b!828603 m!771633))

(declare-fun m!771635 () Bool)

(assert (=> b!828603 m!771635))

(assert (=> b!828603 m!771629))

(declare-fun m!771637 () Bool)

(assert (=> b!828603 m!771637))

(declare-fun m!771639 () Bool)

(assert (=> b!828603 m!771639))

(declare-fun m!771641 () Bool)

(assert (=> b!828603 m!771641))

(declare-fun m!771643 () Bool)

(assert (=> b!828603 m!771643))

(declare-fun m!771645 () Bool)

(assert (=> bm!36063 m!771645))

(declare-fun m!771647 () Bool)

(assert (=> b!828593 m!771647))

(declare-fun m!771649 () Bool)

(assert (=> b!828601 m!771649))

(assert (=> bm!36062 m!771453))

(assert (=> b!828607 m!771495))

(assert (=> b!828607 m!771495))

(assert (=> b!828607 m!771497))

(declare-fun m!771651 () Bool)

(assert (=> bm!36059 m!771651))

(assert (=> b!828602 m!771495))

(declare-fun m!771653 () Bool)

(assert (=> b!828602 m!771653))

(assert (=> b!828602 m!771509))

(assert (=> b!828602 m!771507))

(assert (=> b!828602 m!771495))

(assert (=> b!828602 m!771507))

(assert (=> b!828602 m!771509))

(assert (=> b!828602 m!771511))

(assert (=> b!828610 m!771495))

(assert (=> b!828610 m!771495))

(assert (=> b!828610 m!771497))

(assert (=> b!828427 d!105135))

(declare-fun d!105137 () Bool)

(declare-fun e!461796 () Bool)

(assert (=> d!105137 e!461796))

(declare-fun res!564679 () Bool)

(assert (=> d!105137 (=> (not res!564679) (not e!461796))))

(declare-fun lt!375559 () ListLongMap!8965)

(assert (=> d!105137 (= res!564679 (contains!4194 lt!375559 (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!375558 () List!15964)

(assert (=> d!105137 (= lt!375559 (ListLongMap!8966 lt!375558))))

(declare-fun lt!375560 () Unit!28383)

(declare-fun lt!375561 () Unit!28383)

(assert (=> d!105137 (= lt!375560 lt!375561)))

(assert (=> d!105137 (= (getValueByKey!409 lt!375558 (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!414 (_2!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105137 (= lt!375561 (lemmaContainsTupThenGetReturnValue!225 lt!375558 (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105137 (= lt!375558 (insertStrictlySorted!263 (toList!4498 lt!375415) (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105137 (= (+!1931 lt!375415 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!375559)))

(declare-fun b!828613 () Bool)

(declare-fun res!564678 () Bool)

(assert (=> b!828613 (=> (not res!564678) (not e!461796))))

(assert (=> b!828613 (= res!564678 (= (getValueByKey!409 (toList!4498 lt!375559) (_1!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!414 (_2!5074 (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!828614 () Bool)

(assert (=> b!828614 (= e!461796 (contains!4195 (toList!4498 lt!375559) (tuple2!10129 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!105137 res!564679) b!828613))

(assert (= (and b!828613 res!564678) b!828614))

(declare-fun m!771655 () Bool)

(assert (=> d!105137 m!771655))

(declare-fun m!771657 () Bool)

(assert (=> d!105137 m!771657))

(declare-fun m!771659 () Bool)

(assert (=> d!105137 m!771659))

(declare-fun m!771661 () Bool)

(assert (=> d!105137 m!771661))

(declare-fun m!771663 () Bool)

(assert (=> b!828613 m!771663))

(declare-fun m!771665 () Bool)

(assert (=> b!828614 m!771665))

(assert (=> b!828427 d!105137))

(declare-fun b!828623 () Bool)

(declare-fun e!461804 () Bool)

(declare-fun e!461803 () Bool)

(assert (=> b!828623 (= e!461804 e!461803)))

(declare-fun lt!375570 () (_ BitVec 64))

(assert (=> b!828623 (= lt!375570 (select (arr!22259 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!375569 () Unit!28383)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46444 (_ BitVec 64) (_ BitVec 32)) Unit!28383)

(assert (=> b!828623 (= lt!375569 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!375570 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!828623 (arrayContainsKey!0 _keys!976 lt!375570 #b00000000000000000000000000000000)))

(declare-fun lt!375568 () Unit!28383)

(assert (=> b!828623 (= lt!375568 lt!375569)))

(declare-fun res!564684 () Bool)

(declare-datatypes ((SeekEntryResult!8728 0))(
  ( (MissingZero!8728 (index!37282 (_ BitVec 32))) (Found!8728 (index!37283 (_ BitVec 32))) (Intermediate!8728 (undefined!9540 Bool) (index!37284 (_ BitVec 32)) (x!69959 (_ BitVec 32))) (Undefined!8728) (MissingVacant!8728 (index!37285 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46444 (_ BitVec 32)) SeekEntryResult!8728)

(assert (=> b!828623 (= res!564684 (= (seekEntryOrOpen!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8728 #b00000000000000000000000000000000)))))

(assert (=> b!828623 (=> (not res!564684) (not e!461803))))

(declare-fun b!828624 () Bool)

(declare-fun call!36070 () Bool)

(assert (=> b!828624 (= e!461804 call!36070)))

(declare-fun bm!36067 () Bool)

(assert (=> bm!36067 (= call!36070 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun d!105139 () Bool)

(declare-fun res!564685 () Bool)

(declare-fun e!461805 () Bool)

(assert (=> d!105139 (=> res!564685 e!461805)))

(assert (=> d!105139 (= res!564685 (bvsge #b00000000000000000000000000000000 (size!22680 _keys!976)))))

(assert (=> d!105139 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!461805)))

(declare-fun b!828625 () Bool)

(assert (=> b!828625 (= e!461803 call!36070)))

(declare-fun b!828626 () Bool)

(assert (=> b!828626 (= e!461805 e!461804)))

(declare-fun c!89597 () Bool)

(assert (=> b!828626 (= c!89597 (validKeyInArray!0 (select (arr!22259 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105139 (not res!564685)) b!828626))

(assert (= (and b!828626 c!89597) b!828623))

(assert (= (and b!828626 (not c!89597)) b!828624))

(assert (= (and b!828623 res!564684) b!828625))

(assert (= (or b!828625 b!828624) bm!36067))

(assert (=> b!828623 m!771495))

(declare-fun m!771667 () Bool)

(assert (=> b!828623 m!771667))

(declare-fun m!771669 () Bool)

(assert (=> b!828623 m!771669))

(assert (=> b!828623 m!771495))

(declare-fun m!771671 () Bool)

(assert (=> b!828623 m!771671))

(declare-fun m!771673 () Bool)

(assert (=> bm!36067 m!771673))

(assert (=> b!828626 m!771495))

(assert (=> b!828626 m!771495))

(assert (=> b!828626 m!771497))

(assert (=> b!828418 d!105139))

(declare-fun mapIsEmpty!24373 () Bool)

(declare-fun mapRes!24373 () Bool)

(assert (=> mapIsEmpty!24373 mapRes!24373))

(declare-fun condMapEmpty!24373 () Bool)

(declare-fun mapDefault!24373 () ValueCell!7161)

(assert (=> mapNonEmpty!24367 (= condMapEmpty!24373 (= mapRest!24367 ((as const (Array (_ BitVec 32) ValueCell!7161)) mapDefault!24373)))))

(declare-fun e!461811 () Bool)

(assert (=> mapNonEmpty!24367 (= tp!47101 (and e!461811 mapRes!24373))))

(declare-fun b!828633 () Bool)

(declare-fun e!461810 () Bool)

(assert (=> b!828633 (= e!461810 tp_is_empty!15153)))

(declare-fun mapNonEmpty!24373 () Bool)

(declare-fun tp!47110 () Bool)

(assert (=> mapNonEmpty!24373 (= mapRes!24373 (and tp!47110 e!461810))))

(declare-fun mapRest!24373 () (Array (_ BitVec 32) ValueCell!7161))

(declare-fun mapValue!24373 () ValueCell!7161)

(declare-fun mapKey!24373 () (_ BitVec 32))

(assert (=> mapNonEmpty!24373 (= mapRest!24367 (store mapRest!24373 mapKey!24373 mapValue!24373))))

(declare-fun b!828634 () Bool)

(assert (=> b!828634 (= e!461811 tp_is_empty!15153)))

(assert (= (and mapNonEmpty!24367 condMapEmpty!24373) mapIsEmpty!24373))

(assert (= (and mapNonEmpty!24367 (not condMapEmpty!24373)) mapNonEmpty!24373))

(assert (= (and mapNonEmpty!24373 ((_ is ValueCellFull!7161) mapValue!24373)) b!828633))

(assert (= (and mapNonEmpty!24367 ((_ is ValueCellFull!7161) mapDefault!24373)) b!828634))

(declare-fun m!771675 () Bool)

(assert (=> mapNonEmpty!24373 m!771675))

(declare-fun b_lambda!11269 () Bool)

(assert (= b_lambda!11257 (or (and start!71368 b_free!13443) b_lambda!11269)))

(declare-fun b_lambda!11271 () Bool)

(assert (= b_lambda!11267 (or (and start!71368 b_free!13443) b_lambda!11271)))

(declare-fun b_lambda!11273 () Bool)

(assert (= b_lambda!11263 (or (and start!71368 b_free!13443) b_lambda!11273)))

(declare-fun b_lambda!11275 () Bool)

(assert (= b_lambda!11265 (or (and start!71368 b_free!13443) b_lambda!11275)))

(declare-fun b_lambda!11277 () Bool)

(assert (= b_lambda!11259 (or (and start!71368 b_free!13443) b_lambda!11277)))

(declare-fun b_lambda!11279 () Bool)

(assert (= b_lambda!11261 (or (and start!71368 b_free!13443) b_lambda!11279)))

(check-sat (not mapNonEmpty!24373) (not bm!36056) (not b!828500) (not b!828504) (not bm!36035) (not b!828591) (not d!105127) (not b!828573) (not b!828609) (not b_lambda!11279) (not b!828518) tp_is_empty!15153 (not bm!36059) (not b!828626) (not b!828521) (not bm!36052) (not b!828505) (not bm!36062) (not b_lambda!11275) (not b!828580) (not b!828566) (not b!828511) (not b!828498) (not b!828603) (not b!828576) (not b!828593) (not bm!36067) (not d!105121) (not b!828514) (not b!828602) (not b!828607) (not b!828512) (not b!828517) (not bm!36051) (not b!828590) (not d!105137) (not b!828503) (not b!828507) (not b!828613) b_and!22445 (not d!105119) (not d!105135) (not bm!36063) (not b!828497) (not b!828499) (not bm!36055) (not bm!36058) (not b!828583) (not b!828610) (not b!828614) (not b!828600) (not b!828623) (not b_lambda!11277) (not b!828582) (not b!828519) (not b!828575) (not b!828513) (not b_lambda!11269) (not b_lambda!11273) (not b!828601) (not d!105125) (not bm!36032) (not b!828468) (not b!828471) (not d!105123) (not b_next!13443) (not bm!36036) (not b!828574) (not b!828472) (not b_lambda!11271))
(check-sat b_and!22445 (not b_next!13443))
