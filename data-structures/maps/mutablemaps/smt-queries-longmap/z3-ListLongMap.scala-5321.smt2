; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71192 () Bool)

(assert start!71192)

(declare-fun b_free!13335 () Bool)

(declare-fun b_next!13335 () Bool)

(assert (=> start!71192 (= b_free!13335 (not b_next!13335))))

(declare-fun tp!46765 () Bool)

(declare-fun b_and!22279 () Bool)

(assert (=> start!71192 (= tp!46765 b_and!22279)))

(declare-fun b!826535 () Bool)

(declare-fun e!460346 () Bool)

(declare-fun tp_is_empty!15045 () Bool)

(assert (=> b!826535 (= e!460346 tp_is_empty!15045)))

(declare-datatypes ((V!25061 0))(
  ( (V!25062 (val!7570 Int)) )
))
(declare-datatypes ((tuple2!10042 0))(
  ( (tuple2!10043 (_1!5031 (_ BitVec 64)) (_2!5031 V!25061)) )
))
(declare-datatypes ((List!15879 0))(
  ( (Nil!15876) (Cons!15875 (h!17004 tuple2!10042) (t!22234 List!15879)) )
))
(declare-datatypes ((ListLongMap!8879 0))(
  ( (ListLongMap!8880 (toList!4455 List!15879)) )
))
(declare-fun lt!374270 () ListLongMap!8879)

(declare-fun e!460353 () Bool)

(declare-fun zeroValueAfter!34 () V!25061)

(declare-fun lt!374269 () ListLongMap!8879)

(declare-fun b!826536 () Bool)

(declare-fun lt!374271 () tuple2!10042)

(declare-fun +!1916 (ListLongMap!8879 tuple2!10042) ListLongMap!8879)

(assert (=> b!826536 (= e!460353 (= lt!374269 (+!1916 (+!1916 lt!374270 (tuple2!10043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374271)))))

(declare-fun mapIsEmpty!24193 () Bool)

(declare-fun mapRes!24193 () Bool)

(assert (=> mapIsEmpty!24193 mapRes!24193))

(declare-fun b!826537 () Bool)

(declare-fun res!563548 () Bool)

(declare-fun e!460349 () Bool)

(assert (=> b!826537 (=> (not res!563548) (not e!460349))))

(declare-datatypes ((array!46230 0))(
  ( (array!46231 (arr!22156 (Array (_ BitVec 32) (_ BitVec 64))) (size!22577 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46230)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46230 (_ BitVec 32)) Bool)

(assert (=> b!826537 (= res!563548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826539 () Bool)

(declare-fun e!460350 () Bool)

(assert (=> b!826539 (= e!460350 (and e!460346 mapRes!24193))))

(declare-fun condMapEmpty!24193 () Bool)

(declare-datatypes ((ValueCell!7107 0))(
  ( (ValueCellFull!7107 (v!10000 V!25061)) (EmptyCell!7107) )
))
(declare-datatypes ((array!46232 0))(
  ( (array!46233 (arr!22157 (Array (_ BitVec 32) ValueCell!7107)) (size!22578 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46232)

(declare-fun mapDefault!24193 () ValueCell!7107)

(assert (=> b!826539 (= condMapEmpty!24193 (= (arr!22157 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7107)) mapDefault!24193)))))

(declare-fun b!826540 () Bool)

(declare-fun e!460347 () Bool)

(assert (=> b!826540 (= e!460347 true)))

(declare-fun lt!374268 () tuple2!10042)

(declare-fun lt!374277 () ListLongMap!8879)

(declare-fun lt!374265 () ListLongMap!8879)

(assert (=> b!826540 (= lt!374277 (+!1916 (+!1916 lt!374265 lt!374268) lt!374271))))

(declare-fun lt!374274 () ListLongMap!8879)

(declare-fun lt!374273 () ListLongMap!8879)

(assert (=> b!826540 (and (= lt!374274 lt!374273) (= lt!374269 lt!374273) (= lt!374269 lt!374274))))

(declare-fun lt!374275 () ListLongMap!8879)

(assert (=> b!826540 (= lt!374273 (+!1916 lt!374275 lt!374268))))

(declare-fun lt!374266 () ListLongMap!8879)

(assert (=> b!826540 (= lt!374274 (+!1916 lt!374266 lt!374268))))

(declare-fun zeroValueBefore!34 () V!25061)

(declare-datatypes ((Unit!28345 0))(
  ( (Unit!28346) )
))
(declare-fun lt!374272 () Unit!28345)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!238 (ListLongMap!8879 (_ BitVec 64) V!25061 V!25061) Unit!28345)

(assert (=> b!826540 (= lt!374272 (addSameAsAddTwiceSameKeyDiffValues!238 lt!374266 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460351 () Bool)

(assert (=> b!826540 e!460351))

(declare-fun res!563549 () Bool)

(assert (=> b!826540 (=> (not res!563549) (not e!460351))))

(declare-fun lt!374264 () ListLongMap!8879)

(assert (=> b!826540 (= res!563549 (= lt!374264 lt!374275))))

(declare-fun lt!374276 () tuple2!10042)

(assert (=> b!826540 (= lt!374275 (+!1916 lt!374266 lt!374276))))

(assert (=> b!826540 (= lt!374266 (+!1916 lt!374265 lt!374271))))

(assert (=> b!826540 (= lt!374268 (tuple2!10043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!826540 e!460353))

(declare-fun res!563550 () Bool)

(assert (=> b!826540 (=> (not res!563550) (not e!460353))))

(assert (=> b!826540 (= res!563550 (= lt!374264 (+!1916 (+!1916 lt!374265 lt!374276) lt!374271)))))

(declare-fun minValue!754 () V!25061)

(assert (=> b!826540 (= lt!374271 (tuple2!10043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826540 (= lt!374276 (tuple2!10043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2560 (array!46230 array!46232 (_ BitVec 32) (_ BitVec 32) V!25061 V!25061 (_ BitVec 32) Int) ListLongMap!8879)

(assert (=> b!826540 (= lt!374269 (getCurrentListMap!2560 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826540 (= lt!374264 (getCurrentListMap!2560 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826541 () Bool)

(assert (=> b!826541 (= e!460351 (= lt!374269 (+!1916 (+!1916 lt!374270 lt!374271) lt!374268)))))

(declare-fun b!826542 () Bool)

(declare-fun res!563547 () Bool)

(assert (=> b!826542 (=> (not res!563547) (not e!460349))))

(assert (=> b!826542 (= res!563547 (and (= (size!22578 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22577 _keys!976) (size!22578 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!24193 () Bool)

(declare-fun tp!46764 () Bool)

(declare-fun e!460348 () Bool)

(assert (=> mapNonEmpty!24193 (= mapRes!24193 (and tp!46764 e!460348))))

(declare-fun mapKey!24193 () (_ BitVec 32))

(declare-fun mapRest!24193 () (Array (_ BitVec 32) ValueCell!7107))

(declare-fun mapValue!24193 () ValueCell!7107)

(assert (=> mapNonEmpty!24193 (= (arr!22157 _values!788) (store mapRest!24193 mapKey!24193 mapValue!24193))))

(declare-fun b!826543 () Bool)

(declare-fun res!563546 () Bool)

(assert (=> b!826543 (=> (not res!563546) (not e!460349))))

(declare-datatypes ((List!15880 0))(
  ( (Nil!15877) (Cons!15876 (h!17005 (_ BitVec 64)) (t!22235 List!15880)) )
))
(declare-fun arrayNoDuplicates!0 (array!46230 (_ BitVec 32) List!15880) Bool)

(assert (=> b!826543 (= res!563546 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15877))))

(declare-fun b!826544 () Bool)

(assert (=> b!826544 (= e!460348 tp_is_empty!15045)))

(declare-fun b!826538 () Bool)

(assert (=> b!826538 (= e!460349 (not e!460347))))

(declare-fun res!563551 () Bool)

(assert (=> b!826538 (=> res!563551 e!460347)))

(assert (=> b!826538 (= res!563551 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!826538 (= lt!374265 lt!374270)))

(declare-fun lt!374267 () Unit!28345)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!579 (array!46230 array!46232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25061 V!25061 V!25061 V!25061 (_ BitVec 32) Int) Unit!28345)

(assert (=> b!826538 (= lt!374267 (lemmaNoChangeToArrayThenSameMapNoExtras!579 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2463 (array!46230 array!46232 (_ BitVec 32) (_ BitVec 32) V!25061 V!25061 (_ BitVec 32) Int) ListLongMap!8879)

(assert (=> b!826538 (= lt!374270 (getCurrentListMapNoExtraKeys!2463 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826538 (= lt!374265 (getCurrentListMapNoExtraKeys!2463 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!563552 () Bool)

(assert (=> start!71192 (=> (not res!563552) (not e!460349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71192 (= res!563552 (validMask!0 mask!1312))))

(assert (=> start!71192 e!460349))

(assert (=> start!71192 tp_is_empty!15045))

(declare-fun array_inv!17645 (array!46230) Bool)

(assert (=> start!71192 (array_inv!17645 _keys!976)))

(assert (=> start!71192 true))

(declare-fun array_inv!17646 (array!46232) Bool)

(assert (=> start!71192 (and (array_inv!17646 _values!788) e!460350)))

(assert (=> start!71192 tp!46765))

(assert (= (and start!71192 res!563552) b!826542))

(assert (= (and b!826542 res!563547) b!826537))

(assert (= (and b!826537 res!563548) b!826543))

(assert (= (and b!826543 res!563546) b!826538))

(assert (= (and b!826538 (not res!563551)) b!826540))

(assert (= (and b!826540 res!563550) b!826536))

(assert (= (and b!826540 res!563549) b!826541))

(assert (= (and b!826539 condMapEmpty!24193) mapIsEmpty!24193))

(assert (= (and b!826539 (not condMapEmpty!24193)) mapNonEmpty!24193))

(get-info :version)

(assert (= (and mapNonEmpty!24193 ((_ is ValueCellFull!7107) mapValue!24193)) b!826544))

(assert (= (and b!826539 ((_ is ValueCellFull!7107) mapDefault!24193)) b!826535))

(assert (= start!71192 b!826539))

(declare-fun m!769521 () Bool)

(assert (=> b!826538 m!769521))

(declare-fun m!769523 () Bool)

(assert (=> b!826538 m!769523))

(declare-fun m!769525 () Bool)

(assert (=> b!826538 m!769525))

(declare-fun m!769527 () Bool)

(assert (=> b!826536 m!769527))

(assert (=> b!826536 m!769527))

(declare-fun m!769529 () Bool)

(assert (=> b!826536 m!769529))

(declare-fun m!769531 () Bool)

(assert (=> b!826537 m!769531))

(declare-fun m!769533 () Bool)

(assert (=> start!71192 m!769533))

(declare-fun m!769535 () Bool)

(assert (=> start!71192 m!769535))

(declare-fun m!769537 () Bool)

(assert (=> start!71192 m!769537))

(declare-fun m!769539 () Bool)

(assert (=> b!826541 m!769539))

(assert (=> b!826541 m!769539))

(declare-fun m!769541 () Bool)

(assert (=> b!826541 m!769541))

(declare-fun m!769543 () Bool)

(assert (=> b!826543 m!769543))

(declare-fun m!769545 () Bool)

(assert (=> b!826540 m!769545))

(declare-fun m!769547 () Bool)

(assert (=> b!826540 m!769547))

(declare-fun m!769549 () Bool)

(assert (=> b!826540 m!769549))

(declare-fun m!769551 () Bool)

(assert (=> b!826540 m!769551))

(assert (=> b!826540 m!769549))

(declare-fun m!769553 () Bool)

(assert (=> b!826540 m!769553))

(declare-fun m!769555 () Bool)

(assert (=> b!826540 m!769555))

(declare-fun m!769557 () Bool)

(assert (=> b!826540 m!769557))

(declare-fun m!769559 () Bool)

(assert (=> b!826540 m!769559))

(declare-fun m!769561 () Bool)

(assert (=> b!826540 m!769561))

(assert (=> b!826540 m!769545))

(declare-fun m!769563 () Bool)

(assert (=> b!826540 m!769563))

(declare-fun m!769565 () Bool)

(assert (=> b!826540 m!769565))

(declare-fun m!769567 () Bool)

(assert (=> mapNonEmpty!24193 m!769567))

(check-sat (not start!71192) (not b!826541) (not b!826536) (not b_next!13335) (not b!826543) (not b!826538) (not b!826537) b_and!22279 (not mapNonEmpty!24193) (not b!826540) tp_is_empty!15045)
(check-sat b_and!22279 (not b_next!13335))
