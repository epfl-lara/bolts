; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70342 () Bool)

(assert start!70342)

(declare-fun b_free!12693 () Bool)

(declare-fun b_next!12693 () Bool)

(assert (=> start!70342 (= b_free!12693 (not b_next!12693))))

(declare-fun tp!44803 () Bool)

(declare-fun b_and!21511 () Bool)

(assert (=> start!70342 (= tp!44803 b_and!21511)))

(declare-fun b!816789 () Bool)

(declare-fun res!557737 () Bool)

(declare-fun e!453203 () Bool)

(assert (=> b!816789 (=> (not res!557737) (not e!453203))))

(declare-datatypes ((array!44980 0))(
  ( (array!44981 (arr!21543 (Array (_ BitVec 32) (_ BitVec 64))) (size!21964 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44980)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44980 (_ BitVec 32)) Bool)

(assert (=> b!816789 (= res!557737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!557733 () Bool)

(assert (=> start!70342 (=> (not res!557733) (not e!453203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70342 (= res!557733 (validMask!0 mask!1312))))

(assert (=> start!70342 e!453203))

(declare-fun tp_is_empty!14403 () Bool)

(assert (=> start!70342 tp_is_empty!14403))

(declare-fun array_inv!17207 (array!44980) Bool)

(assert (=> start!70342 (array_inv!17207 _keys!976)))

(assert (=> start!70342 true))

(declare-datatypes ((V!24205 0))(
  ( (V!24206 (val!7249 Int)) )
))
(declare-datatypes ((ValueCell!6786 0))(
  ( (ValueCellFull!6786 (v!9673 V!24205)) (EmptyCell!6786) )
))
(declare-datatypes ((array!44982 0))(
  ( (array!44983 (arr!21544 (Array (_ BitVec 32) ValueCell!6786)) (size!21965 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44982)

(declare-fun e!453204 () Bool)

(declare-fun array_inv!17208 (array!44982) Bool)

(assert (=> start!70342 (and (array_inv!17208 _values!788) e!453204)))

(assert (=> start!70342 tp!44803))

(declare-fun b!816790 () Bool)

(declare-fun e!453202 () Bool)

(assert (=> b!816790 (= e!453202 tp_is_empty!14403)))

(declare-fun b!816791 () Bool)

(declare-fun res!557735 () Bool)

(assert (=> b!816791 (=> (not res!557735) (not e!453203))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!816791 (= res!557735 (and (= (size!21965 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21964 _keys!976) (size!21965 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816792 () Bool)

(declare-fun res!557734 () Bool)

(assert (=> b!816792 (=> (not res!557734) (not e!453203))))

(declare-datatypes ((List!15398 0))(
  ( (Nil!15395) (Cons!15394 (h!16523 (_ BitVec 64)) (t!21729 List!15398)) )
))
(declare-fun arrayNoDuplicates!0 (array!44980 (_ BitVec 32) List!15398) Bool)

(assert (=> b!816792 (= res!557734 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15395))))

(declare-fun mapNonEmpty!23194 () Bool)

(declare-fun mapRes!23194 () Bool)

(declare-fun tp!44802 () Bool)

(assert (=> mapNonEmpty!23194 (= mapRes!23194 (and tp!44802 e!453202))))

(declare-fun mapRest!23194 () (Array (_ BitVec 32) ValueCell!6786))

(declare-fun mapValue!23194 () ValueCell!6786)

(declare-fun mapKey!23194 () (_ BitVec 32))

(assert (=> mapNonEmpty!23194 (= (arr!21544 _values!788) (store mapRest!23194 mapKey!23194 mapValue!23194))))

(declare-fun b!816793 () Bool)

(declare-fun e!453200 () Bool)

(assert (=> b!816793 (= e!453203 (not e!453200))))

(declare-fun res!557738 () Bool)

(assert (=> b!816793 (=> res!557738 e!453200)))

(assert (=> b!816793 (= res!557738 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9528 0))(
  ( (tuple2!9529 (_1!4774 (_ BitVec 64)) (_2!4774 V!24205)) )
))
(declare-datatypes ((List!15399 0))(
  ( (Nil!15396) (Cons!15395 (h!16524 tuple2!9528) (t!21730 List!15399)) )
))
(declare-datatypes ((ListLongMap!8365 0))(
  ( (ListLongMap!8366 (toList!4198 List!15399)) )
))
(declare-fun lt!365923 () ListLongMap!8365)

(declare-fun lt!365924 () ListLongMap!8365)

(assert (=> b!816793 (= lt!365923 lt!365924)))

(declare-fun zeroValueAfter!34 () V!24205)

(declare-fun minValue!754 () V!24205)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27848 0))(
  ( (Unit!27849) )
))
(declare-fun lt!365925 () Unit!27848)

(declare-fun zeroValueBefore!34 () V!24205)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!360 (array!44980 array!44982 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24205 V!24205 V!24205 V!24205 (_ BitVec 32) Int) Unit!27848)

(assert (=> b!816793 (= lt!365925 (lemmaNoChangeToArrayThenSameMapNoExtras!360 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2244 (array!44980 array!44982 (_ BitVec 32) (_ BitVec 32) V!24205 V!24205 (_ BitVec 32) Int) ListLongMap!8365)

(assert (=> b!816793 (= lt!365924 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816793 (= lt!365923 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816794 () Bool)

(declare-fun res!557736 () Bool)

(assert (=> b!816794 (=> res!557736 e!453200)))

(declare-fun +!1782 (ListLongMap!8365 tuple2!9528) ListLongMap!8365)

(declare-fun getCurrentListMap!2383 (array!44980 array!44982 (_ BitVec 32) (_ BitVec 32) V!24205 V!24205 (_ BitVec 32) Int) ListLongMap!8365)

(assert (=> b!816794 (= res!557736 (not (= (+!1782 (getCurrentListMap!2383 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (getCurrentListMap!2383 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))))

(declare-fun b!816795 () Bool)

(assert (=> b!816795 (= e!453200 (bvsle #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun mapIsEmpty!23194 () Bool)

(assert (=> mapIsEmpty!23194 mapRes!23194))

(declare-fun b!816796 () Bool)

(declare-fun e!453201 () Bool)

(assert (=> b!816796 (= e!453201 tp_is_empty!14403)))

(declare-fun b!816797 () Bool)

(assert (=> b!816797 (= e!453204 (and e!453201 mapRes!23194))))

(declare-fun condMapEmpty!23194 () Bool)

(declare-fun mapDefault!23194 () ValueCell!6786)

(assert (=> b!816797 (= condMapEmpty!23194 (= (arr!21544 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6786)) mapDefault!23194)))))

(assert (= (and start!70342 res!557733) b!816791))

(assert (= (and b!816791 res!557735) b!816789))

(assert (= (and b!816789 res!557737) b!816792))

(assert (= (and b!816792 res!557734) b!816793))

(assert (= (and b!816793 (not res!557738)) b!816794))

(assert (= (and b!816794 (not res!557736)) b!816795))

(assert (= (and b!816797 condMapEmpty!23194) mapIsEmpty!23194))

(assert (= (and b!816797 (not condMapEmpty!23194)) mapNonEmpty!23194))

(get-info :version)

(assert (= (and mapNonEmpty!23194 ((_ is ValueCellFull!6786) mapValue!23194)) b!816790))

(assert (= (and b!816797 ((_ is ValueCellFull!6786) mapDefault!23194)) b!816796))

(assert (= start!70342 b!816797))

(declare-fun m!758509 () Bool)

(assert (=> start!70342 m!758509))

(declare-fun m!758511 () Bool)

(assert (=> start!70342 m!758511))

(declare-fun m!758513 () Bool)

(assert (=> start!70342 m!758513))

(declare-fun m!758515 () Bool)

(assert (=> b!816793 m!758515))

(declare-fun m!758517 () Bool)

(assert (=> b!816793 m!758517))

(declare-fun m!758519 () Bool)

(assert (=> b!816793 m!758519))

(declare-fun m!758521 () Bool)

(assert (=> b!816792 m!758521))

(declare-fun m!758523 () Bool)

(assert (=> b!816789 m!758523))

(declare-fun m!758525 () Bool)

(assert (=> b!816794 m!758525))

(assert (=> b!816794 m!758525))

(declare-fun m!758527 () Bool)

(assert (=> b!816794 m!758527))

(declare-fun m!758529 () Bool)

(assert (=> b!816794 m!758529))

(declare-fun m!758531 () Bool)

(assert (=> mapNonEmpty!23194 m!758531))

(check-sat (not b!816793) (not b!816792) (not start!70342) (not b!816794) tp_is_empty!14403 (not b_next!12693) b_and!21511 (not b!816789) (not mapNonEmpty!23194))
(check-sat b_and!21511 (not b_next!12693))
(get-model)

(declare-fun d!104465 () Bool)

(declare-fun e!453225 () Bool)

(assert (=> d!104465 e!453225))

(declare-fun res!557761 () Bool)

(assert (=> d!104465 (=> (not res!557761) (not e!453225))))

(declare-fun lt!365946 () ListLongMap!8365)

(declare-fun contains!4152 (ListLongMap!8365 (_ BitVec 64)) Bool)

(assert (=> d!104465 (= res!557761 (contains!4152 lt!365946 (_1!4774 (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!365944 () List!15399)

(assert (=> d!104465 (= lt!365946 (ListLongMap!8366 lt!365944))))

(declare-fun lt!365945 () Unit!27848)

(declare-fun lt!365943 () Unit!27848)

(assert (=> d!104465 (= lt!365945 lt!365943)))

(declare-datatypes ((Option!406 0))(
  ( (Some!405 (v!9675 V!24205)) (None!404) )
))
(declare-fun getValueByKey!400 (List!15399 (_ BitVec 64)) Option!406)

(assert (=> d!104465 (= (getValueByKey!400 lt!365944 (_1!4774 (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!405 (_2!4774 (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!216 (List!15399 (_ BitVec 64) V!24205) Unit!27848)

(assert (=> d!104465 (= lt!365943 (lemmaContainsTupThenGetReturnValue!216 lt!365944 (_1!4774 (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!4774 (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun insertStrictlySorted!254 (List!15399 (_ BitVec 64) V!24205) List!15399)

(assert (=> d!104465 (= lt!365944 (insertStrictlySorted!254 (toList!4198 (getCurrentListMap!2383 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796)) (_1!4774 (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!4774 (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!104465 (= (+!1782 (getCurrentListMap!2383 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!365946)))

(declare-fun b!816829 () Bool)

(declare-fun res!557762 () Bool)

(assert (=> b!816829 (=> (not res!557762) (not e!453225))))

(assert (=> b!816829 (= res!557762 (= (getValueByKey!400 (toList!4198 lt!365946) (_1!4774 (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!405 (_2!4774 (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!816830 () Bool)

(declare-fun contains!4153 (List!15399 tuple2!9528) Bool)

(assert (=> b!816830 (= e!453225 (contains!4153 (toList!4198 lt!365946) (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!104465 res!557761) b!816829))

(assert (= (and b!816829 res!557762) b!816830))

(declare-fun m!758557 () Bool)

(assert (=> d!104465 m!758557))

(declare-fun m!758559 () Bool)

(assert (=> d!104465 m!758559))

(declare-fun m!758561 () Bool)

(assert (=> d!104465 m!758561))

(declare-fun m!758563 () Bool)

(assert (=> d!104465 m!758563))

(declare-fun m!758565 () Bool)

(assert (=> b!816829 m!758565))

(declare-fun m!758567 () Bool)

(assert (=> b!816830 m!758567))

(assert (=> b!816794 d!104465))

(declare-fun b!816873 () Bool)

(declare-fun e!453264 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!816873 (= e!453264 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816874 () Bool)

(declare-fun res!557788 () Bool)

(declare-fun e!453252 () Bool)

(assert (=> b!816874 (=> (not res!557788) (not e!453252))))

(declare-fun e!453255 () Bool)

(assert (=> b!816874 (= res!557788 e!453255)))

(declare-fun res!557781 () Bool)

(assert (=> b!816874 (=> res!557781 e!453255)))

(declare-fun e!453254 () Bool)

(assert (=> b!816874 (= res!557781 (not e!453254))))

(declare-fun res!557783 () Bool)

(assert (=> b!816874 (=> (not res!557783) (not e!453254))))

(assert (=> b!816874 (= res!557783 (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun b!816875 () Bool)

(declare-fun e!453253 () Bool)

(assert (=> b!816875 (= e!453252 e!453253)))

(declare-fun c!88943 () Bool)

(assert (=> b!816875 (= c!88943 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!816876 () Bool)

(declare-fun e!453261 () Bool)

(declare-fun lt!365997 () ListLongMap!8365)

(declare-fun apply!351 (ListLongMap!8365 (_ BitVec 64)) V!24205)

(assert (=> b!816876 (= e!453261 (= (apply!351 lt!365997 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun bm!35569 () Bool)

(declare-fun call!35572 () ListLongMap!8365)

(declare-fun call!35575 () ListLongMap!8365)

(assert (=> bm!35569 (= call!35572 call!35575)))

(declare-fun b!816877 () Bool)

(declare-fun call!35576 () Bool)

(assert (=> b!816877 (= e!453253 (not call!35576))))

(declare-fun b!816878 () Bool)

(declare-fun e!453259 () ListLongMap!8365)

(assert (=> b!816878 (= e!453259 call!35572)))

(declare-fun d!104467 () Bool)

(assert (=> d!104467 e!453252))

(declare-fun res!557789 () Bool)

(assert (=> d!104467 (=> (not res!557789) (not e!453252))))

(assert (=> d!104467 (= res!557789 (or (bvsge #b00000000000000000000000000000000 (size!21964 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))))

(declare-fun lt!366011 () ListLongMap!8365)

(assert (=> d!104467 (= lt!365997 lt!366011)))

(declare-fun lt!365996 () Unit!27848)

(declare-fun e!453258 () Unit!27848)

(assert (=> d!104467 (= lt!365996 e!453258)))

(declare-fun c!88947 () Bool)

(assert (=> d!104467 (= c!88947 e!453264)))

(declare-fun res!557784 () Bool)

(assert (=> d!104467 (=> (not res!557784) (not e!453264))))

(assert (=> d!104467 (= res!557784 (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun e!453257 () ListLongMap!8365)

(assert (=> d!104467 (= lt!366011 e!453257)))

(declare-fun c!88944 () Bool)

(assert (=> d!104467 (= c!88944 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104467 (validMask!0 mask!1312)))

(assert (=> d!104467 (= (getCurrentListMap!2383 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!365997)))

(declare-fun b!816879 () Bool)

(declare-fun res!557785 () Bool)

(assert (=> b!816879 (=> (not res!557785) (not e!453252))))

(declare-fun e!453260 () Bool)

(assert (=> b!816879 (= res!557785 e!453260)))

(declare-fun c!88946 () Bool)

(assert (=> b!816879 (= c!88946 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!35570 () Bool)

(declare-fun call!35578 () ListLongMap!8365)

(declare-fun call!35573 () ListLongMap!8365)

(assert (=> bm!35570 (= call!35578 call!35573)))

(declare-fun b!816880 () Bool)

(declare-fun Unit!27852 () Unit!27848)

(assert (=> b!816880 (= e!453258 Unit!27852)))

(declare-fun b!816881 () Bool)

(assert (=> b!816881 (= e!453257 e!453259)))

(declare-fun c!88942 () Bool)

(assert (=> b!816881 (= c!88942 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!816882 () Bool)

(assert (=> b!816882 (= e!453257 (+!1782 call!35575 (tuple2!9529 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun e!453262 () Bool)

(declare-fun b!816883 () Bool)

(declare-fun get!11533 (ValueCell!6786 V!24205) V!24205)

(declare-fun dynLambda!961 (Int (_ BitVec 64)) V!24205)

(assert (=> b!816883 (= e!453262 (= (apply!351 lt!365997 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)) (get!11533 (select (arr!21544 _values!788) #b00000000000000000000000000000000) (dynLambda!961 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!816883 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21965 _values!788)))))

(assert (=> b!816883 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun b!816884 () Bool)

(assert (=> b!816884 (= e!453260 e!453261)))

(declare-fun res!557787 () Bool)

(declare-fun call!35574 () Bool)

(assert (=> b!816884 (= res!557787 call!35574)))

(assert (=> b!816884 (=> (not res!557787) (not e!453261))))

(declare-fun bm!35571 () Bool)

(assert (=> bm!35571 (= call!35576 (contains!4152 lt!365997 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!816885 () Bool)

(assert (=> b!816885 (= e!453254 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816886 () Bool)

(assert (=> b!816886 (= e!453260 (not call!35574))))

(declare-fun b!816887 () Bool)

(declare-fun c!88945 () Bool)

(assert (=> b!816887 (= c!88945 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!453256 () ListLongMap!8365)

(assert (=> b!816887 (= e!453259 e!453256)))

(declare-fun b!816888 () Bool)

(declare-fun e!453263 () Bool)

(assert (=> b!816888 (= e!453253 e!453263)))

(declare-fun res!557786 () Bool)

(assert (=> b!816888 (= res!557786 call!35576)))

(assert (=> b!816888 (=> (not res!557786) (not e!453263))))

(declare-fun bm!35572 () Bool)

(declare-fun call!35577 () ListLongMap!8365)

(assert (=> bm!35572 (= call!35577 call!35578)))

(declare-fun bm!35573 () Bool)

(assert (=> bm!35573 (= call!35573 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816889 () Bool)

(declare-fun lt!366009 () Unit!27848)

(assert (=> b!816889 (= e!453258 lt!366009)))

(declare-fun lt!366012 () ListLongMap!8365)

(assert (=> b!816889 (= lt!366012 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365994 () (_ BitVec 64))

(assert (=> b!816889 (= lt!365994 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366007 () (_ BitVec 64))

(assert (=> b!816889 (= lt!366007 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366010 () Unit!27848)

(declare-fun addStillContains!306 (ListLongMap!8365 (_ BitVec 64) V!24205 (_ BitVec 64)) Unit!27848)

(assert (=> b!816889 (= lt!366010 (addStillContains!306 lt!366012 lt!365994 zeroValueBefore!34 lt!366007))))

(assert (=> b!816889 (contains!4152 (+!1782 lt!366012 (tuple2!9529 lt!365994 zeroValueBefore!34)) lt!366007)))

(declare-fun lt!366000 () Unit!27848)

(assert (=> b!816889 (= lt!366000 lt!366010)))

(declare-fun lt!366005 () ListLongMap!8365)

(assert (=> b!816889 (= lt!366005 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366006 () (_ BitVec 64))

(assert (=> b!816889 (= lt!366006 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365991 () (_ BitVec 64))

(assert (=> b!816889 (= lt!365991 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!365992 () Unit!27848)

(declare-fun addApplyDifferent!306 (ListLongMap!8365 (_ BitVec 64) V!24205 (_ BitVec 64)) Unit!27848)

(assert (=> b!816889 (= lt!365992 (addApplyDifferent!306 lt!366005 lt!366006 minValue!754 lt!365991))))

(assert (=> b!816889 (= (apply!351 (+!1782 lt!366005 (tuple2!9529 lt!366006 minValue!754)) lt!365991) (apply!351 lt!366005 lt!365991))))

(declare-fun lt!366004 () Unit!27848)

(assert (=> b!816889 (= lt!366004 lt!365992)))

(declare-fun lt!366002 () ListLongMap!8365)

(assert (=> b!816889 (= lt!366002 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365993 () (_ BitVec 64))

(assert (=> b!816889 (= lt!365993 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366008 () (_ BitVec 64))

(assert (=> b!816889 (= lt!366008 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!365999 () Unit!27848)

(assert (=> b!816889 (= lt!365999 (addApplyDifferent!306 lt!366002 lt!365993 zeroValueBefore!34 lt!366008))))

(assert (=> b!816889 (= (apply!351 (+!1782 lt!366002 (tuple2!9529 lt!365993 zeroValueBefore!34)) lt!366008) (apply!351 lt!366002 lt!366008))))

(declare-fun lt!366003 () Unit!27848)

(assert (=> b!816889 (= lt!366003 lt!365999)))

(declare-fun lt!365995 () ListLongMap!8365)

(assert (=> b!816889 (= lt!365995 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366001 () (_ BitVec 64))

(assert (=> b!816889 (= lt!366001 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!365998 () (_ BitVec 64))

(assert (=> b!816889 (= lt!365998 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!816889 (= lt!366009 (addApplyDifferent!306 lt!365995 lt!366001 minValue!754 lt!365998))))

(assert (=> b!816889 (= (apply!351 (+!1782 lt!365995 (tuple2!9529 lt!366001 minValue!754)) lt!365998) (apply!351 lt!365995 lt!365998))))

(declare-fun b!816890 () Bool)

(assert (=> b!816890 (= e!453255 e!453262)))

(declare-fun res!557782 () Bool)

(assert (=> b!816890 (=> (not res!557782) (not e!453262))))

(assert (=> b!816890 (= res!557782 (contains!4152 lt!365997 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816890 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun bm!35574 () Bool)

(assert (=> bm!35574 (= call!35574 (contains!4152 lt!365997 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!816891 () Bool)

(assert (=> b!816891 (= e!453256 call!35577)))

(declare-fun b!816892 () Bool)

(assert (=> b!816892 (= e!453256 call!35572)))

(declare-fun b!816893 () Bool)

(assert (=> b!816893 (= e!453263 (= (apply!351 lt!365997 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun bm!35575 () Bool)

(assert (=> bm!35575 (= call!35575 (+!1782 (ite c!88944 call!35573 (ite c!88942 call!35578 call!35577)) (ite (or c!88944 c!88942) (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!9529 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!104467 c!88944) b!816882))

(assert (= (and d!104467 (not c!88944)) b!816881))

(assert (= (and b!816881 c!88942) b!816878))

(assert (= (and b!816881 (not c!88942)) b!816887))

(assert (= (and b!816887 c!88945) b!816892))

(assert (= (and b!816887 (not c!88945)) b!816891))

(assert (= (or b!816892 b!816891) bm!35572))

(assert (= (or b!816878 bm!35572) bm!35570))

(assert (= (or b!816878 b!816892) bm!35569))

(assert (= (or b!816882 bm!35570) bm!35573))

(assert (= (or b!816882 bm!35569) bm!35575))

(assert (= (and d!104467 res!557784) b!816873))

(assert (= (and d!104467 c!88947) b!816889))

(assert (= (and d!104467 (not c!88947)) b!816880))

(assert (= (and d!104467 res!557789) b!816874))

(assert (= (and b!816874 res!557783) b!816885))

(assert (= (and b!816874 (not res!557781)) b!816890))

(assert (= (and b!816890 res!557782) b!816883))

(assert (= (and b!816874 res!557788) b!816879))

(assert (= (and b!816879 c!88946) b!816884))

(assert (= (and b!816879 (not c!88946)) b!816886))

(assert (= (and b!816884 res!557787) b!816876))

(assert (= (or b!816884 b!816886) bm!35574))

(assert (= (and b!816879 res!557785) b!816875))

(assert (= (and b!816875 c!88943) b!816888))

(assert (= (and b!816875 (not c!88943)) b!816877))

(assert (= (and b!816888 res!557786) b!816893))

(assert (= (or b!816888 b!816877) bm!35571))

(declare-fun b_lambda!10917 () Bool)

(assert (=> (not b_lambda!10917) (not b!816883)))

(declare-fun t!21733 () Bool)

(declare-fun tb!4191 () Bool)

(assert (=> (and start!70342 (= defaultEntry!796 defaultEntry!796) t!21733) tb!4191))

(declare-fun result!7897 () Bool)

(assert (=> tb!4191 (= result!7897 tp_is_empty!14403)))

(assert (=> b!816883 t!21733))

(declare-fun b_and!21515 () Bool)

(assert (= b_and!21511 (and (=> t!21733 result!7897) b_and!21515)))

(declare-fun m!758569 () Bool)

(assert (=> b!816876 m!758569))

(assert (=> bm!35573 m!758519))

(declare-fun m!758571 () Bool)

(assert (=> b!816883 m!758571))

(declare-fun m!758573 () Bool)

(assert (=> b!816883 m!758573))

(assert (=> b!816883 m!758573))

(declare-fun m!758575 () Bool)

(assert (=> b!816883 m!758575))

(assert (=> b!816883 m!758571))

(declare-fun m!758577 () Bool)

(assert (=> b!816883 m!758577))

(declare-fun m!758579 () Bool)

(assert (=> b!816883 m!758579))

(assert (=> b!816883 m!758577))

(declare-fun m!758581 () Bool)

(assert (=> b!816889 m!758581))

(declare-fun m!758583 () Bool)

(assert (=> b!816889 m!758583))

(declare-fun m!758585 () Bool)

(assert (=> b!816889 m!758585))

(declare-fun m!758587 () Bool)

(assert (=> b!816889 m!758587))

(declare-fun m!758589 () Bool)

(assert (=> b!816889 m!758589))

(assert (=> b!816889 m!758585))

(declare-fun m!758591 () Bool)

(assert (=> b!816889 m!758591))

(assert (=> b!816889 m!758573))

(declare-fun m!758593 () Bool)

(assert (=> b!816889 m!758593))

(assert (=> b!816889 m!758583))

(declare-fun m!758595 () Bool)

(assert (=> b!816889 m!758595))

(assert (=> b!816889 m!758589))

(declare-fun m!758597 () Bool)

(assert (=> b!816889 m!758597))

(declare-fun m!758599 () Bool)

(assert (=> b!816889 m!758599))

(declare-fun m!758601 () Bool)

(assert (=> b!816889 m!758601))

(assert (=> b!816889 m!758599))

(declare-fun m!758603 () Bool)

(assert (=> b!816889 m!758603))

(declare-fun m!758605 () Bool)

(assert (=> b!816889 m!758605))

(assert (=> b!816889 m!758519))

(declare-fun m!758607 () Bool)

(assert (=> b!816889 m!758607))

(declare-fun m!758609 () Bool)

(assert (=> b!816889 m!758609))

(declare-fun m!758611 () Bool)

(assert (=> b!816893 m!758611))

(assert (=> b!816890 m!758573))

(assert (=> b!816890 m!758573))

(declare-fun m!758613 () Bool)

(assert (=> b!816890 m!758613))

(declare-fun m!758615 () Bool)

(assert (=> bm!35574 m!758615))

(assert (=> b!816873 m!758573))

(assert (=> b!816873 m!758573))

(declare-fun m!758617 () Bool)

(assert (=> b!816873 m!758617))

(assert (=> b!816885 m!758573))

(assert (=> b!816885 m!758573))

(assert (=> b!816885 m!758617))

(declare-fun m!758619 () Bool)

(assert (=> b!816882 m!758619))

(declare-fun m!758621 () Bool)

(assert (=> bm!35575 m!758621))

(assert (=> d!104467 m!758509))

(declare-fun m!758623 () Bool)

(assert (=> bm!35571 m!758623))

(assert (=> b!816794 d!104467))

(declare-fun b!816896 () Bool)

(declare-fun e!453277 () Bool)

(assert (=> b!816896 (= e!453277 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816897 () Bool)

(declare-fun res!557797 () Bool)

(declare-fun e!453265 () Bool)

(assert (=> b!816897 (=> (not res!557797) (not e!453265))))

(declare-fun e!453268 () Bool)

(assert (=> b!816897 (= res!557797 e!453268)))

(declare-fun res!557790 () Bool)

(assert (=> b!816897 (=> res!557790 e!453268)))

(declare-fun e!453267 () Bool)

(assert (=> b!816897 (= res!557790 (not e!453267))))

(declare-fun res!557792 () Bool)

(assert (=> b!816897 (=> (not res!557792) (not e!453267))))

(assert (=> b!816897 (= res!557792 (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun b!816898 () Bool)

(declare-fun e!453266 () Bool)

(assert (=> b!816898 (= e!453265 e!453266)))

(declare-fun c!88949 () Bool)

(assert (=> b!816898 (= c!88949 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!816899 () Bool)

(declare-fun e!453274 () Bool)

(declare-fun lt!366019 () ListLongMap!8365)

(assert (=> b!816899 (= e!453274 (= (apply!351 lt!366019 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun bm!35576 () Bool)

(declare-fun call!35579 () ListLongMap!8365)

(declare-fun call!35582 () ListLongMap!8365)

(assert (=> bm!35576 (= call!35579 call!35582)))

(declare-fun b!816900 () Bool)

(declare-fun call!35583 () Bool)

(assert (=> b!816900 (= e!453266 (not call!35583))))

(declare-fun b!816901 () Bool)

(declare-fun e!453272 () ListLongMap!8365)

(assert (=> b!816901 (= e!453272 call!35579)))

(declare-fun d!104469 () Bool)

(assert (=> d!104469 e!453265))

(declare-fun res!557798 () Bool)

(assert (=> d!104469 (=> (not res!557798) (not e!453265))))

(assert (=> d!104469 (= res!557798 (or (bvsge #b00000000000000000000000000000000 (size!21964 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))))

(declare-fun lt!366033 () ListLongMap!8365)

(assert (=> d!104469 (= lt!366019 lt!366033)))

(declare-fun lt!366018 () Unit!27848)

(declare-fun e!453271 () Unit!27848)

(assert (=> d!104469 (= lt!366018 e!453271)))

(declare-fun c!88953 () Bool)

(assert (=> d!104469 (= c!88953 e!453277)))

(declare-fun res!557793 () Bool)

(assert (=> d!104469 (=> (not res!557793) (not e!453277))))

(assert (=> d!104469 (= res!557793 (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun e!453270 () ListLongMap!8365)

(assert (=> d!104469 (= lt!366033 e!453270)))

(declare-fun c!88950 () Bool)

(assert (=> d!104469 (= c!88950 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104469 (validMask!0 mask!1312)))

(assert (=> d!104469 (= (getCurrentListMap!2383 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366019)))

(declare-fun b!816902 () Bool)

(declare-fun res!557794 () Bool)

(assert (=> b!816902 (=> (not res!557794) (not e!453265))))

(declare-fun e!453273 () Bool)

(assert (=> b!816902 (= res!557794 e!453273)))

(declare-fun c!88952 () Bool)

(assert (=> b!816902 (= c!88952 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!35577 () Bool)

(declare-fun call!35585 () ListLongMap!8365)

(declare-fun call!35580 () ListLongMap!8365)

(assert (=> bm!35577 (= call!35585 call!35580)))

(declare-fun b!816903 () Bool)

(declare-fun Unit!27853 () Unit!27848)

(assert (=> b!816903 (= e!453271 Unit!27853)))

(declare-fun b!816904 () Bool)

(assert (=> b!816904 (= e!453270 e!453272)))

(declare-fun c!88948 () Bool)

(assert (=> b!816904 (= c!88948 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!816905 () Bool)

(assert (=> b!816905 (= e!453270 (+!1782 call!35582 (tuple2!9529 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!816906 () Bool)

(declare-fun e!453275 () Bool)

(assert (=> b!816906 (= e!453275 (= (apply!351 lt!366019 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)) (get!11533 (select (arr!21544 _values!788) #b00000000000000000000000000000000) (dynLambda!961 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!816906 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21965 _values!788)))))

(assert (=> b!816906 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun b!816907 () Bool)

(assert (=> b!816907 (= e!453273 e!453274)))

(declare-fun res!557796 () Bool)

(declare-fun call!35581 () Bool)

(assert (=> b!816907 (= res!557796 call!35581)))

(assert (=> b!816907 (=> (not res!557796) (not e!453274))))

(declare-fun bm!35578 () Bool)

(assert (=> bm!35578 (= call!35583 (contains!4152 lt!366019 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!816908 () Bool)

(assert (=> b!816908 (= e!453267 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816909 () Bool)

(assert (=> b!816909 (= e!453273 (not call!35581))))

(declare-fun b!816910 () Bool)

(declare-fun c!88951 () Bool)

(assert (=> b!816910 (= c!88951 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!453269 () ListLongMap!8365)

(assert (=> b!816910 (= e!453272 e!453269)))

(declare-fun b!816911 () Bool)

(declare-fun e!453276 () Bool)

(assert (=> b!816911 (= e!453266 e!453276)))

(declare-fun res!557795 () Bool)

(assert (=> b!816911 (= res!557795 call!35583)))

(assert (=> b!816911 (=> (not res!557795) (not e!453276))))

(declare-fun bm!35579 () Bool)

(declare-fun call!35584 () ListLongMap!8365)

(assert (=> bm!35579 (= call!35584 call!35585)))

(declare-fun bm!35580 () Bool)

(assert (=> bm!35580 (= call!35580 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816912 () Bool)

(declare-fun lt!366031 () Unit!27848)

(assert (=> b!816912 (= e!453271 lt!366031)))

(declare-fun lt!366034 () ListLongMap!8365)

(assert (=> b!816912 (= lt!366034 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366016 () (_ BitVec 64))

(assert (=> b!816912 (= lt!366016 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366029 () (_ BitVec 64))

(assert (=> b!816912 (= lt!366029 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366032 () Unit!27848)

(assert (=> b!816912 (= lt!366032 (addStillContains!306 lt!366034 lt!366016 zeroValueAfter!34 lt!366029))))

(assert (=> b!816912 (contains!4152 (+!1782 lt!366034 (tuple2!9529 lt!366016 zeroValueAfter!34)) lt!366029)))

(declare-fun lt!366022 () Unit!27848)

(assert (=> b!816912 (= lt!366022 lt!366032)))

(declare-fun lt!366027 () ListLongMap!8365)

(assert (=> b!816912 (= lt!366027 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366028 () (_ BitVec 64))

(assert (=> b!816912 (= lt!366028 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366013 () (_ BitVec 64))

(assert (=> b!816912 (= lt!366013 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366014 () Unit!27848)

(assert (=> b!816912 (= lt!366014 (addApplyDifferent!306 lt!366027 lt!366028 minValue!754 lt!366013))))

(assert (=> b!816912 (= (apply!351 (+!1782 lt!366027 (tuple2!9529 lt!366028 minValue!754)) lt!366013) (apply!351 lt!366027 lt!366013))))

(declare-fun lt!366026 () Unit!27848)

(assert (=> b!816912 (= lt!366026 lt!366014)))

(declare-fun lt!366024 () ListLongMap!8365)

(assert (=> b!816912 (= lt!366024 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366015 () (_ BitVec 64))

(assert (=> b!816912 (= lt!366015 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366030 () (_ BitVec 64))

(assert (=> b!816912 (= lt!366030 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366021 () Unit!27848)

(assert (=> b!816912 (= lt!366021 (addApplyDifferent!306 lt!366024 lt!366015 zeroValueAfter!34 lt!366030))))

(assert (=> b!816912 (= (apply!351 (+!1782 lt!366024 (tuple2!9529 lt!366015 zeroValueAfter!34)) lt!366030) (apply!351 lt!366024 lt!366030))))

(declare-fun lt!366025 () Unit!27848)

(assert (=> b!816912 (= lt!366025 lt!366021)))

(declare-fun lt!366017 () ListLongMap!8365)

(assert (=> b!816912 (= lt!366017 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366023 () (_ BitVec 64))

(assert (=> b!816912 (= lt!366023 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!366020 () (_ BitVec 64))

(assert (=> b!816912 (= lt!366020 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!816912 (= lt!366031 (addApplyDifferent!306 lt!366017 lt!366023 minValue!754 lt!366020))))

(assert (=> b!816912 (= (apply!351 (+!1782 lt!366017 (tuple2!9529 lt!366023 minValue!754)) lt!366020) (apply!351 lt!366017 lt!366020))))

(declare-fun b!816913 () Bool)

(assert (=> b!816913 (= e!453268 e!453275)))

(declare-fun res!557791 () Bool)

(assert (=> b!816913 (=> (not res!557791) (not e!453275))))

(assert (=> b!816913 (= res!557791 (contains!4152 lt!366019 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816913 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun bm!35581 () Bool)

(assert (=> bm!35581 (= call!35581 (contains!4152 lt!366019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!816914 () Bool)

(assert (=> b!816914 (= e!453269 call!35584)))

(declare-fun b!816915 () Bool)

(assert (=> b!816915 (= e!453269 call!35579)))

(declare-fun b!816916 () Bool)

(assert (=> b!816916 (= e!453276 (= (apply!351 lt!366019 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun bm!35582 () Bool)

(assert (=> bm!35582 (= call!35582 (+!1782 (ite c!88950 call!35580 (ite c!88948 call!35585 call!35584)) (ite (or c!88950 c!88948) (tuple2!9529 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!9529 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (= (and d!104469 c!88950) b!816905))

(assert (= (and d!104469 (not c!88950)) b!816904))

(assert (= (and b!816904 c!88948) b!816901))

(assert (= (and b!816904 (not c!88948)) b!816910))

(assert (= (and b!816910 c!88951) b!816915))

(assert (= (and b!816910 (not c!88951)) b!816914))

(assert (= (or b!816915 b!816914) bm!35579))

(assert (= (or b!816901 bm!35579) bm!35577))

(assert (= (or b!816901 b!816915) bm!35576))

(assert (= (or b!816905 bm!35577) bm!35580))

(assert (= (or b!816905 bm!35576) bm!35582))

(assert (= (and d!104469 res!557793) b!816896))

(assert (= (and d!104469 c!88953) b!816912))

(assert (= (and d!104469 (not c!88953)) b!816903))

(assert (= (and d!104469 res!557798) b!816897))

(assert (= (and b!816897 res!557792) b!816908))

(assert (= (and b!816897 (not res!557790)) b!816913))

(assert (= (and b!816913 res!557791) b!816906))

(assert (= (and b!816897 res!557797) b!816902))

(assert (= (and b!816902 c!88952) b!816907))

(assert (= (and b!816902 (not c!88952)) b!816909))

(assert (= (and b!816907 res!557796) b!816899))

(assert (= (or b!816907 b!816909) bm!35581))

(assert (= (and b!816902 res!557794) b!816898))

(assert (= (and b!816898 c!88949) b!816911))

(assert (= (and b!816898 (not c!88949)) b!816900))

(assert (= (and b!816911 res!557795) b!816916))

(assert (= (or b!816911 b!816900) bm!35578))

(declare-fun b_lambda!10919 () Bool)

(assert (=> (not b_lambda!10919) (not b!816906)))

(assert (=> b!816906 t!21733))

(declare-fun b_and!21517 () Bool)

(assert (= b_and!21515 (and (=> t!21733 result!7897) b_and!21517)))

(declare-fun m!758625 () Bool)

(assert (=> b!816899 m!758625))

(assert (=> bm!35580 m!758517))

(assert (=> b!816906 m!758571))

(assert (=> b!816906 m!758573))

(assert (=> b!816906 m!758573))

(declare-fun m!758627 () Bool)

(assert (=> b!816906 m!758627))

(assert (=> b!816906 m!758571))

(assert (=> b!816906 m!758577))

(assert (=> b!816906 m!758579))

(assert (=> b!816906 m!758577))

(declare-fun m!758629 () Bool)

(assert (=> b!816912 m!758629))

(declare-fun m!758631 () Bool)

(assert (=> b!816912 m!758631))

(declare-fun m!758633 () Bool)

(assert (=> b!816912 m!758633))

(declare-fun m!758635 () Bool)

(assert (=> b!816912 m!758635))

(declare-fun m!758637 () Bool)

(assert (=> b!816912 m!758637))

(assert (=> b!816912 m!758633))

(declare-fun m!758639 () Bool)

(assert (=> b!816912 m!758639))

(assert (=> b!816912 m!758573))

(declare-fun m!758641 () Bool)

(assert (=> b!816912 m!758641))

(assert (=> b!816912 m!758631))

(declare-fun m!758643 () Bool)

(assert (=> b!816912 m!758643))

(assert (=> b!816912 m!758637))

(declare-fun m!758645 () Bool)

(assert (=> b!816912 m!758645))

(declare-fun m!758647 () Bool)

(assert (=> b!816912 m!758647))

(declare-fun m!758649 () Bool)

(assert (=> b!816912 m!758649))

(assert (=> b!816912 m!758647))

(declare-fun m!758651 () Bool)

(assert (=> b!816912 m!758651))

(declare-fun m!758653 () Bool)

(assert (=> b!816912 m!758653))

(assert (=> b!816912 m!758517))

(declare-fun m!758655 () Bool)

(assert (=> b!816912 m!758655))

(declare-fun m!758657 () Bool)

(assert (=> b!816912 m!758657))

(declare-fun m!758659 () Bool)

(assert (=> b!816916 m!758659))

(assert (=> b!816913 m!758573))

(assert (=> b!816913 m!758573))

(declare-fun m!758661 () Bool)

(assert (=> b!816913 m!758661))

(declare-fun m!758663 () Bool)

(assert (=> bm!35581 m!758663))

(assert (=> b!816896 m!758573))

(assert (=> b!816896 m!758573))

(assert (=> b!816896 m!758617))

(assert (=> b!816908 m!758573))

(assert (=> b!816908 m!758573))

(assert (=> b!816908 m!758617))

(declare-fun m!758665 () Bool)

(assert (=> b!816905 m!758665))

(declare-fun m!758667 () Bool)

(assert (=> bm!35582 m!758667))

(assert (=> d!104469 m!758509))

(declare-fun m!758669 () Bool)

(assert (=> bm!35578 m!758669))

(assert (=> b!816794 d!104469))

(declare-fun bm!35585 () Bool)

(declare-fun call!35588 () Bool)

(assert (=> bm!35585 (= call!35588 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!816925 () Bool)

(declare-fun e!453286 () Bool)

(declare-fun e!453285 () Bool)

(assert (=> b!816925 (= e!453286 e!453285)))

(declare-fun lt!366043 () (_ BitVec 64))

(assert (=> b!816925 (= lt!366043 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!366042 () Unit!27848)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44980 (_ BitVec 64) (_ BitVec 32)) Unit!27848)

(assert (=> b!816925 (= lt!366042 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!366043 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!816925 (arrayContainsKey!0 _keys!976 lt!366043 #b00000000000000000000000000000000)))

(declare-fun lt!366041 () Unit!27848)

(assert (=> b!816925 (= lt!366041 lt!366042)))

(declare-fun res!557804 () Bool)

(declare-datatypes ((SeekEntryResult!8712 0))(
  ( (MissingZero!8712 (index!37218 (_ BitVec 32))) (Found!8712 (index!37219 (_ BitVec 32))) (Intermediate!8712 (undefined!9524 Bool) (index!37220 (_ BitVec 32)) (x!68767 (_ BitVec 32))) (Undefined!8712) (MissingVacant!8712 (index!37221 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44980 (_ BitVec 32)) SeekEntryResult!8712)

(assert (=> b!816925 (= res!557804 (= (seekEntryOrOpen!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8712 #b00000000000000000000000000000000)))))

(assert (=> b!816925 (=> (not res!557804) (not e!453285))))

(declare-fun b!816926 () Bool)

(assert (=> b!816926 (= e!453286 call!35588)))

(declare-fun b!816927 () Bool)

(assert (=> b!816927 (= e!453285 call!35588)))

(declare-fun d!104471 () Bool)

(declare-fun res!557803 () Bool)

(declare-fun e!453284 () Bool)

(assert (=> d!104471 (=> res!557803 e!453284)))

(assert (=> d!104471 (= res!557803 (bvsge #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(assert (=> d!104471 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!453284)))

(declare-fun b!816928 () Bool)

(assert (=> b!816928 (= e!453284 e!453286)))

(declare-fun c!88956 () Bool)

(assert (=> b!816928 (= c!88956 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!104471 (not res!557803)) b!816928))

(assert (= (and b!816928 c!88956) b!816925))

(assert (= (and b!816928 (not c!88956)) b!816926))

(assert (= (and b!816925 res!557804) b!816927))

(assert (= (or b!816927 b!816926) bm!35585))

(declare-fun m!758671 () Bool)

(assert (=> bm!35585 m!758671))

(assert (=> b!816925 m!758573))

(declare-fun m!758673 () Bool)

(assert (=> b!816925 m!758673))

(declare-fun m!758675 () Bool)

(assert (=> b!816925 m!758675))

(assert (=> b!816925 m!758573))

(declare-fun m!758677 () Bool)

(assert (=> b!816925 m!758677))

(assert (=> b!816928 m!758573))

(assert (=> b!816928 m!758573))

(assert (=> b!816928 m!758617))

(assert (=> b!816789 d!104471))

(declare-fun d!104473 () Bool)

(assert (=> d!104473 (= (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!366046 () Unit!27848)

(declare-fun choose!1398 (array!44980 array!44982 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24205 V!24205 V!24205 V!24205 (_ BitVec 32) Int) Unit!27848)

(assert (=> d!104473 (= lt!366046 (choose!1398 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104473 (validMask!0 mask!1312)))

(assert (=> d!104473 (= (lemmaNoChangeToArrayThenSameMapNoExtras!360 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366046)))

(declare-fun bs!22747 () Bool)

(assert (= bs!22747 d!104473))

(assert (=> bs!22747 m!758519))

(assert (=> bs!22747 m!758517))

(declare-fun m!758679 () Bool)

(assert (=> bs!22747 m!758679))

(assert (=> bs!22747 m!758509))

(assert (=> b!816793 d!104473))

(declare-fun b!816954 () Bool)

(declare-fun e!453305 () Bool)

(declare-fun e!453306 () Bool)

(assert (=> b!816954 (= e!453305 e!453306)))

(declare-fun c!88966 () Bool)

(assert (=> b!816954 (= c!88966 (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun b!816955 () Bool)

(assert (=> b!816955 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(assert (=> b!816955 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21965 _values!788)))))

(declare-fun lt!366063 () ListLongMap!8365)

(declare-fun e!453307 () Bool)

(assert (=> b!816955 (= e!453307 (= (apply!351 lt!366063 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)) (get!11533 (select (arr!21544 _values!788) #b00000000000000000000000000000000) (dynLambda!961 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!816956 () Bool)

(declare-fun lt!366064 () Unit!27848)

(declare-fun lt!366066 () Unit!27848)

(assert (=> b!816956 (= lt!366064 lt!366066)))

(declare-fun lt!366061 () (_ BitVec 64))

(declare-fun lt!366062 () V!24205)

(declare-fun lt!366067 () (_ BitVec 64))

(declare-fun lt!366065 () ListLongMap!8365)

(assert (=> b!816956 (not (contains!4152 (+!1782 lt!366065 (tuple2!9529 lt!366067 lt!366062)) lt!366061))))

(declare-fun addStillNotContains!178 (ListLongMap!8365 (_ BitVec 64) V!24205 (_ BitVec 64)) Unit!27848)

(assert (=> b!816956 (= lt!366066 (addStillNotContains!178 lt!366065 lt!366067 lt!366062 lt!366061))))

(assert (=> b!816956 (= lt!366061 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!816956 (= lt!366062 (get!11533 (select (arr!21544 _values!788) #b00000000000000000000000000000000) (dynLambda!961 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!816956 (= lt!366067 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35591 () ListLongMap!8365)

(assert (=> b!816956 (= lt!366065 call!35591)))

(declare-fun e!453301 () ListLongMap!8365)

(assert (=> b!816956 (= e!453301 (+!1782 call!35591 (tuple2!9529 (select (arr!21543 _keys!976) #b00000000000000000000000000000000) (get!11533 (select (arr!21544 _values!788) #b00000000000000000000000000000000) (dynLambda!961 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!816957 () Bool)

(declare-fun e!453302 () Bool)

(assert (=> b!816957 (= e!453302 e!453305)))

(declare-fun c!88967 () Bool)

(declare-fun e!453303 () Bool)

(assert (=> b!816957 (= c!88967 e!453303)))

(declare-fun res!557816 () Bool)

(assert (=> b!816957 (=> (not res!557816) (not e!453303))))

(assert (=> b!816957 (= res!557816 (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun b!816958 () Bool)

(declare-fun e!453304 () ListLongMap!8365)

(assert (=> b!816958 (= e!453304 e!453301)))

(declare-fun c!88968 () Bool)

(assert (=> b!816958 (= c!88968 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816959 () Bool)

(assert (=> b!816959 (= e!453304 (ListLongMap!8366 Nil!15396))))

(declare-fun b!816960 () Bool)

(assert (=> b!816960 (= e!453303 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816960 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!816961 () Bool)

(declare-fun isEmpty!638 (ListLongMap!8365) Bool)

(assert (=> b!816961 (= e!453306 (isEmpty!638 lt!366063))))

(declare-fun b!816962 () Bool)

(assert (=> b!816962 (= e!453301 call!35591)))

(declare-fun bm!35588 () Bool)

(assert (=> bm!35588 (= call!35591 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!816953 () Bool)

(declare-fun res!557815 () Bool)

(assert (=> b!816953 (=> (not res!557815) (not e!453302))))

(assert (=> b!816953 (= res!557815 (not (contains!4152 lt!366063 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!104475 () Bool)

(assert (=> d!104475 e!453302))

(declare-fun res!557813 () Bool)

(assert (=> d!104475 (=> (not res!557813) (not e!453302))))

(assert (=> d!104475 (= res!557813 (not (contains!4152 lt!366063 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104475 (= lt!366063 e!453304)))

(declare-fun c!88965 () Bool)

(assert (=> d!104475 (= c!88965 (bvsge #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(assert (=> d!104475 (validMask!0 mask!1312)))

(assert (=> d!104475 (= (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366063)))

(declare-fun b!816963 () Bool)

(assert (=> b!816963 (= e!453306 (= lt!366063 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!816964 () Bool)

(assert (=> b!816964 (= e!453305 e!453307)))

(assert (=> b!816964 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun res!557814 () Bool)

(assert (=> b!816964 (= res!557814 (contains!4152 lt!366063 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816964 (=> (not res!557814) (not e!453307))))

(assert (= (and d!104475 c!88965) b!816959))

(assert (= (and d!104475 (not c!88965)) b!816958))

(assert (= (and b!816958 c!88968) b!816956))

(assert (= (and b!816958 (not c!88968)) b!816962))

(assert (= (or b!816956 b!816962) bm!35588))

(assert (= (and d!104475 res!557813) b!816953))

(assert (= (and b!816953 res!557815) b!816957))

(assert (= (and b!816957 res!557816) b!816960))

(assert (= (and b!816957 c!88967) b!816964))

(assert (= (and b!816957 (not c!88967)) b!816954))

(assert (= (and b!816964 res!557814) b!816955))

(assert (= (and b!816954 c!88966) b!816963))

(assert (= (and b!816954 (not c!88966)) b!816961))

(declare-fun b_lambda!10921 () Bool)

(assert (=> (not b_lambda!10921) (not b!816955)))

(assert (=> b!816955 t!21733))

(declare-fun b_and!21519 () Bool)

(assert (= b_and!21517 (and (=> t!21733 result!7897) b_and!21519)))

(declare-fun b_lambda!10923 () Bool)

(assert (=> (not b_lambda!10923) (not b!816956)))

(assert (=> b!816956 t!21733))

(declare-fun b_and!21521 () Bool)

(assert (= b_and!21519 (and (=> t!21733 result!7897) b_and!21521)))

(declare-fun m!758681 () Bool)

(assert (=> b!816963 m!758681))

(assert (=> b!816956 m!758573))

(declare-fun m!758683 () Bool)

(assert (=> b!816956 m!758683))

(declare-fun m!758685 () Bool)

(assert (=> b!816956 m!758685))

(assert (=> b!816956 m!758571))

(declare-fun m!758687 () Bool)

(assert (=> b!816956 m!758687))

(assert (=> b!816956 m!758571))

(assert (=> b!816956 m!758577))

(assert (=> b!816956 m!758579))

(assert (=> b!816956 m!758687))

(declare-fun m!758689 () Bool)

(assert (=> b!816956 m!758689))

(assert (=> b!816956 m!758577))

(declare-fun m!758691 () Bool)

(assert (=> d!104475 m!758691))

(assert (=> d!104475 m!758509))

(assert (=> bm!35588 m!758681))

(assert (=> b!816960 m!758573))

(assert (=> b!816960 m!758573))

(assert (=> b!816960 m!758617))

(declare-fun m!758693 () Bool)

(assert (=> b!816961 m!758693))

(assert (=> b!816958 m!758573))

(assert (=> b!816958 m!758573))

(assert (=> b!816958 m!758617))

(assert (=> b!816955 m!758573))

(declare-fun m!758695 () Bool)

(assert (=> b!816955 m!758695))

(assert (=> b!816955 m!758573))

(assert (=> b!816955 m!758571))

(assert (=> b!816955 m!758571))

(assert (=> b!816955 m!758577))

(assert (=> b!816955 m!758579))

(assert (=> b!816955 m!758577))

(declare-fun m!758697 () Bool)

(assert (=> b!816953 m!758697))

(assert (=> b!816964 m!758573))

(assert (=> b!816964 m!758573))

(declare-fun m!758699 () Bool)

(assert (=> b!816964 m!758699))

(assert (=> b!816793 d!104475))

(declare-fun b!816966 () Bool)

(declare-fun e!453312 () Bool)

(declare-fun e!453313 () Bool)

(assert (=> b!816966 (= e!453312 e!453313)))

(declare-fun c!88970 () Bool)

(assert (=> b!816966 (= c!88970 (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun b!816967 () Bool)

(assert (=> b!816967 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(assert (=> b!816967 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21965 _values!788)))))

(declare-fun lt!366070 () ListLongMap!8365)

(declare-fun e!453314 () Bool)

(assert (=> b!816967 (= e!453314 (= (apply!351 lt!366070 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)) (get!11533 (select (arr!21544 _values!788) #b00000000000000000000000000000000) (dynLambda!961 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!816968 () Bool)

(declare-fun lt!366071 () Unit!27848)

(declare-fun lt!366073 () Unit!27848)

(assert (=> b!816968 (= lt!366071 lt!366073)))

(declare-fun lt!366074 () (_ BitVec 64))

(declare-fun lt!366069 () V!24205)

(declare-fun lt!366072 () ListLongMap!8365)

(declare-fun lt!366068 () (_ BitVec 64))

(assert (=> b!816968 (not (contains!4152 (+!1782 lt!366072 (tuple2!9529 lt!366074 lt!366069)) lt!366068))))

(assert (=> b!816968 (= lt!366073 (addStillNotContains!178 lt!366072 lt!366074 lt!366069 lt!366068))))

(assert (=> b!816968 (= lt!366068 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!816968 (= lt!366069 (get!11533 (select (arr!21544 _values!788) #b00000000000000000000000000000000) (dynLambda!961 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!816968 (= lt!366074 (select (arr!21543 _keys!976) #b00000000000000000000000000000000))))

(declare-fun call!35592 () ListLongMap!8365)

(assert (=> b!816968 (= lt!366072 call!35592)))

(declare-fun e!453308 () ListLongMap!8365)

(assert (=> b!816968 (= e!453308 (+!1782 call!35592 (tuple2!9529 (select (arr!21543 _keys!976) #b00000000000000000000000000000000) (get!11533 (select (arr!21544 _values!788) #b00000000000000000000000000000000) (dynLambda!961 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!816969 () Bool)

(declare-fun e!453309 () Bool)

(assert (=> b!816969 (= e!453309 e!453312)))

(declare-fun c!88971 () Bool)

(declare-fun e!453310 () Bool)

(assert (=> b!816969 (= c!88971 e!453310)))

(declare-fun res!557820 () Bool)

(assert (=> b!816969 (=> (not res!557820) (not e!453310))))

(assert (=> b!816969 (= res!557820 (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun b!816970 () Bool)

(declare-fun e!453311 () ListLongMap!8365)

(assert (=> b!816970 (= e!453311 e!453308)))

(declare-fun c!88972 () Bool)

(assert (=> b!816970 (= c!88972 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816971 () Bool)

(assert (=> b!816971 (= e!453311 (ListLongMap!8366 Nil!15396))))

(declare-fun b!816972 () Bool)

(assert (=> b!816972 (= e!453310 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816972 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!816973 () Bool)

(assert (=> b!816973 (= e!453313 (isEmpty!638 lt!366070))))

(declare-fun b!816974 () Bool)

(assert (=> b!816974 (= e!453308 call!35592)))

(declare-fun bm!35589 () Bool)

(assert (=> bm!35589 (= call!35592 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!816965 () Bool)

(declare-fun res!557819 () Bool)

(assert (=> b!816965 (=> (not res!557819) (not e!453309))))

(assert (=> b!816965 (= res!557819 (not (contains!4152 lt!366070 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!104477 () Bool)

(assert (=> d!104477 e!453309))

(declare-fun res!557817 () Bool)

(assert (=> d!104477 (=> (not res!557817) (not e!453309))))

(assert (=> d!104477 (= res!557817 (not (contains!4152 lt!366070 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104477 (= lt!366070 e!453311)))

(declare-fun c!88969 () Bool)

(assert (=> d!104477 (= c!88969 (bvsge #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(assert (=> d!104477 (validMask!0 mask!1312)))

(assert (=> d!104477 (= (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!366070)))

(declare-fun b!816975 () Bool)

(assert (=> b!816975 (= e!453313 (= lt!366070 (getCurrentListMapNoExtraKeys!2244 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!816976 () Bool)

(assert (=> b!816976 (= e!453312 e!453314)))

(assert (=> b!816976 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(declare-fun res!557818 () Bool)

(assert (=> b!816976 (= res!557818 (contains!4152 lt!366070 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!816976 (=> (not res!557818) (not e!453314))))

(assert (= (and d!104477 c!88969) b!816971))

(assert (= (and d!104477 (not c!88969)) b!816970))

(assert (= (and b!816970 c!88972) b!816968))

(assert (= (and b!816970 (not c!88972)) b!816974))

(assert (= (or b!816968 b!816974) bm!35589))

(assert (= (and d!104477 res!557817) b!816965))

(assert (= (and b!816965 res!557819) b!816969))

(assert (= (and b!816969 res!557820) b!816972))

(assert (= (and b!816969 c!88971) b!816976))

(assert (= (and b!816969 (not c!88971)) b!816966))

(assert (= (and b!816976 res!557818) b!816967))

(assert (= (and b!816966 c!88970) b!816975))

(assert (= (and b!816966 (not c!88970)) b!816973))

(declare-fun b_lambda!10925 () Bool)

(assert (=> (not b_lambda!10925) (not b!816967)))

(assert (=> b!816967 t!21733))

(declare-fun b_and!21523 () Bool)

(assert (= b_and!21521 (and (=> t!21733 result!7897) b_and!21523)))

(declare-fun b_lambda!10927 () Bool)

(assert (=> (not b_lambda!10927) (not b!816968)))

(assert (=> b!816968 t!21733))

(declare-fun b_and!21525 () Bool)

(assert (= b_and!21523 (and (=> t!21733 result!7897) b_and!21525)))

(declare-fun m!758701 () Bool)

(assert (=> b!816975 m!758701))

(assert (=> b!816968 m!758573))

(declare-fun m!758703 () Bool)

(assert (=> b!816968 m!758703))

(declare-fun m!758705 () Bool)

(assert (=> b!816968 m!758705))

(assert (=> b!816968 m!758571))

(declare-fun m!758707 () Bool)

(assert (=> b!816968 m!758707))

(assert (=> b!816968 m!758571))

(assert (=> b!816968 m!758577))

(assert (=> b!816968 m!758579))

(assert (=> b!816968 m!758707))

(declare-fun m!758709 () Bool)

(assert (=> b!816968 m!758709))

(assert (=> b!816968 m!758577))

(declare-fun m!758711 () Bool)

(assert (=> d!104477 m!758711))

(assert (=> d!104477 m!758509))

(assert (=> bm!35589 m!758701))

(assert (=> b!816972 m!758573))

(assert (=> b!816972 m!758573))

(assert (=> b!816972 m!758617))

(declare-fun m!758713 () Bool)

(assert (=> b!816973 m!758713))

(assert (=> b!816970 m!758573))

(assert (=> b!816970 m!758573))

(assert (=> b!816970 m!758617))

(assert (=> b!816967 m!758573))

(declare-fun m!758715 () Bool)

(assert (=> b!816967 m!758715))

(assert (=> b!816967 m!758573))

(assert (=> b!816967 m!758571))

(assert (=> b!816967 m!758571))

(assert (=> b!816967 m!758577))

(assert (=> b!816967 m!758579))

(assert (=> b!816967 m!758577))

(declare-fun m!758717 () Bool)

(assert (=> b!816965 m!758717))

(assert (=> b!816976 m!758573))

(assert (=> b!816976 m!758573))

(declare-fun m!758719 () Bool)

(assert (=> b!816976 m!758719))

(assert (=> b!816793 d!104477))

(declare-fun d!104479 () Bool)

(assert (=> d!104479 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!70342 d!104479))

(declare-fun d!104481 () Bool)

(assert (=> d!104481 (= (array_inv!17207 _keys!976) (bvsge (size!21964 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!70342 d!104481))

(declare-fun d!104483 () Bool)

(assert (=> d!104483 (= (array_inv!17208 _values!788) (bvsge (size!21965 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!70342 d!104483))

(declare-fun d!104485 () Bool)

(declare-fun res!557829 () Bool)

(declare-fun e!453326 () Bool)

(assert (=> d!104485 (=> res!557829 e!453326)))

(assert (=> d!104485 (= res!557829 (bvsge #b00000000000000000000000000000000 (size!21964 _keys!976)))))

(assert (=> d!104485 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15395) e!453326)))

(declare-fun bm!35592 () Bool)

(declare-fun call!35595 () Bool)

(declare-fun c!88975 () Bool)

(assert (=> bm!35592 (= call!35595 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!88975 (Cons!15394 (select (arr!21543 _keys!976) #b00000000000000000000000000000000) Nil!15395) Nil!15395)))))

(declare-fun b!816987 () Bool)

(declare-fun e!453325 () Bool)

(declare-fun e!453324 () Bool)

(assert (=> b!816987 (= e!453325 e!453324)))

(assert (=> b!816987 (= c!88975 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816988 () Bool)

(assert (=> b!816988 (= e!453324 call!35595)))

(declare-fun b!816989 () Bool)

(declare-fun e!453323 () Bool)

(declare-fun contains!4154 (List!15398 (_ BitVec 64)) Bool)

(assert (=> b!816989 (= e!453323 (contains!4154 Nil!15395 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816990 () Bool)

(assert (=> b!816990 (= e!453326 e!453325)))

(declare-fun res!557828 () Bool)

(assert (=> b!816990 (=> (not res!557828) (not e!453325))))

(assert (=> b!816990 (= res!557828 (not e!453323))))

(declare-fun res!557827 () Bool)

(assert (=> b!816990 (=> (not res!557827) (not e!453323))))

(assert (=> b!816990 (= res!557827 (validKeyInArray!0 (select (arr!21543 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!816991 () Bool)

(assert (=> b!816991 (= e!453324 call!35595)))

(assert (= (and d!104485 (not res!557829)) b!816990))

(assert (= (and b!816990 res!557827) b!816989))

(assert (= (and b!816990 res!557828) b!816987))

(assert (= (and b!816987 c!88975) b!816991))

(assert (= (and b!816987 (not c!88975)) b!816988))

(assert (= (or b!816991 b!816988) bm!35592))

(assert (=> bm!35592 m!758573))

(declare-fun m!758721 () Bool)

(assert (=> bm!35592 m!758721))

(assert (=> b!816987 m!758573))

(assert (=> b!816987 m!758573))

(assert (=> b!816987 m!758617))

(assert (=> b!816989 m!758573))

(assert (=> b!816989 m!758573))

(declare-fun m!758723 () Bool)

(assert (=> b!816989 m!758723))

(assert (=> b!816990 m!758573))

(assert (=> b!816990 m!758573))

(assert (=> b!816990 m!758617))

(assert (=> b!816792 d!104485))

(declare-fun mapIsEmpty!23200 () Bool)

(declare-fun mapRes!23200 () Bool)

(assert (=> mapIsEmpty!23200 mapRes!23200))

(declare-fun b!816999 () Bool)

(declare-fun e!453332 () Bool)

(assert (=> b!816999 (= e!453332 tp_is_empty!14403)))

(declare-fun condMapEmpty!23200 () Bool)

(declare-fun mapDefault!23200 () ValueCell!6786)

(assert (=> mapNonEmpty!23194 (= condMapEmpty!23200 (= mapRest!23194 ((as const (Array (_ BitVec 32) ValueCell!6786)) mapDefault!23200)))))

(assert (=> mapNonEmpty!23194 (= tp!44802 (and e!453332 mapRes!23200))))

(declare-fun b!816998 () Bool)

(declare-fun e!453331 () Bool)

(assert (=> b!816998 (= e!453331 tp_is_empty!14403)))

(declare-fun mapNonEmpty!23200 () Bool)

(declare-fun tp!44812 () Bool)

(assert (=> mapNonEmpty!23200 (= mapRes!23200 (and tp!44812 e!453331))))

(declare-fun mapKey!23200 () (_ BitVec 32))

(declare-fun mapRest!23200 () (Array (_ BitVec 32) ValueCell!6786))

(declare-fun mapValue!23200 () ValueCell!6786)

(assert (=> mapNonEmpty!23200 (= mapRest!23194 (store mapRest!23200 mapKey!23200 mapValue!23200))))

(assert (= (and mapNonEmpty!23194 condMapEmpty!23200) mapIsEmpty!23200))

(assert (= (and mapNonEmpty!23194 (not condMapEmpty!23200)) mapNonEmpty!23200))

(assert (= (and mapNonEmpty!23200 ((_ is ValueCellFull!6786) mapValue!23200)) b!816998))

(assert (= (and mapNonEmpty!23194 ((_ is ValueCellFull!6786) mapDefault!23200)) b!816999))

(declare-fun m!758725 () Bool)

(assert (=> mapNonEmpty!23200 m!758725))

(declare-fun b_lambda!10929 () Bool)

(assert (= b_lambda!10919 (or (and start!70342 b_free!12693) b_lambda!10929)))

(declare-fun b_lambda!10931 () Bool)

(assert (= b_lambda!10927 (or (and start!70342 b_free!12693) b_lambda!10931)))

(declare-fun b_lambda!10933 () Bool)

(assert (= b_lambda!10917 (or (and start!70342 b_free!12693) b_lambda!10933)))

(declare-fun b_lambda!10935 () Bool)

(assert (= b_lambda!10921 (or (and start!70342 b_free!12693) b_lambda!10935)))

(declare-fun b_lambda!10937 () Bool)

(assert (= b_lambda!10923 (or (and start!70342 b_free!12693) b_lambda!10937)))

(declare-fun b_lambda!10939 () Bool)

(assert (= b_lambda!10925 (or (and start!70342 b_free!12693) b_lambda!10939)))

(check-sat (not b!816908) (not d!104475) (not b!816967) (not bm!35575) (not b_lambda!10935) (not b!816925) (not b!816953) (not b!816905) (not b_lambda!10931) (not d!104477) (not bm!35574) (not b_lambda!10937) (not b!816961) (not b!816963) (not d!104465) (not bm!35581) (not bm!35573) (not d!104473) (not bm!35580) (not b!816956) (not b!816976) (not d!104469) b_and!21525 (not bm!35582) (not b!816987) (not b!816873) (not b!816955) (not b!816899) (not b!816968) (not b!816885) (not b!816958) (not b!816965) (not bm!35589) (not b!816970) (not b!816830) (not b!816876) (not b!816989) tp_is_empty!14403 (not b!816912) (not b!816883) (not b!816964) (not b!816973) (not bm!35592) (not b!816928) (not b!816990) (not b!816882) (not b_lambda!10933) (not bm!35585) (not b!816975) (not b!816972) (not b!816829) (not b_lambda!10939) (not b!816960) (not mapNonEmpty!23200) (not bm!35588) (not bm!35571) (not b!816913) (not b!816906) (not b!816896) (not b!816916) (not b_next!12693) (not d!104467) (not b!816890) (not b_lambda!10929) (not b!816893) (not b!816889) (not bm!35578))
(check-sat b_and!21525 (not b_next!12693))
