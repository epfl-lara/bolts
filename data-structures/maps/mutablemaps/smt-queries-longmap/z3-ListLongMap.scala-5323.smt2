; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71204 () Bool)

(assert start!71204)

(declare-fun b_free!13347 () Bool)

(declare-fun b_next!13347 () Bool)

(assert (=> start!71204 (= b_free!13347 (not b_next!13347))))

(declare-fun tp!46801 () Bool)

(declare-fun b_and!22291 () Bool)

(assert (=> start!71204 (= tp!46801 b_and!22291)))

(declare-fun b!826720 () Bool)

(declare-fun e!460498 () Bool)

(declare-fun e!460497 () Bool)

(assert (=> b!826720 (= e!460498 e!460497)))

(declare-fun res!563680 () Bool)

(assert (=> b!826720 (=> res!563680 e!460497)))

(declare-datatypes ((V!25077 0))(
  ( (V!25078 (val!7576 Int)) )
))
(declare-datatypes ((tuple2!10048 0))(
  ( (tuple2!10049 (_1!5034 (_ BitVec 64)) (_2!5034 V!25077)) )
))
(declare-datatypes ((List!15885 0))(
  ( (Nil!15882) (Cons!15881 (h!17010 tuple2!10048) (t!22240 List!15885)) )
))
(declare-datatypes ((ListLongMap!8885 0))(
  ( (ListLongMap!8886 (toList!4458 List!15885)) )
))
(declare-fun lt!374518 () ListLongMap!8885)

(declare-fun lt!374516 () tuple2!10048)

(declare-fun lt!374513 () tuple2!10048)

(declare-fun lt!374512 () ListLongMap!8885)

(declare-fun +!1919 (ListLongMap!8885 tuple2!10048) ListLongMap!8885)

(assert (=> b!826720 (= res!563680 (not (= lt!374512 (+!1919 (+!1919 lt!374518 lt!374516) lt!374513))))))

(declare-fun lt!374520 () ListLongMap!8885)

(declare-fun lt!374519 () ListLongMap!8885)

(assert (=> b!826720 (and (= lt!374520 lt!374519) (= lt!374512 lt!374519) (= lt!374512 lt!374520))))

(declare-fun lt!374515 () ListLongMap!8885)

(assert (=> b!826720 (= lt!374519 (+!1919 lt!374515 lt!374516))))

(declare-fun lt!374521 () ListLongMap!8885)

(assert (=> b!826720 (= lt!374520 (+!1919 lt!374521 lt!374516))))

(declare-fun zeroValueBefore!34 () V!25077)

(declare-datatypes ((Unit!28351 0))(
  ( (Unit!28352) )
))
(declare-fun lt!374523 () Unit!28351)

(declare-fun zeroValueAfter!34 () V!25077)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!241 (ListLongMap!8885 (_ BitVec 64) V!25077 V!25077) Unit!28351)

(assert (=> b!826720 (= lt!374523 (addSameAsAddTwiceSameKeyDiffValues!241 lt!374521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460503 () Bool)

(assert (=> b!826720 e!460503))

(declare-fun res!563682 () Bool)

(assert (=> b!826720 (=> (not res!563682) (not e!460503))))

(declare-fun lt!374514 () ListLongMap!8885)

(assert (=> b!826720 (= res!563682 (= lt!374514 lt!374515))))

(declare-fun lt!374511 () tuple2!10048)

(assert (=> b!826720 (= lt!374515 (+!1919 lt!374521 lt!374511))))

(assert (=> b!826720 (= lt!374521 (+!1919 lt!374518 lt!374513))))

(assert (=> b!826720 (= lt!374516 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460496 () Bool)

(assert (=> b!826720 e!460496))

(declare-fun res!563683 () Bool)

(assert (=> b!826720 (=> (not res!563683) (not e!460496))))

(assert (=> b!826720 (= res!563683 (= lt!374514 (+!1919 (+!1919 lt!374518 lt!374511) lt!374513)))))

(declare-fun minValue!754 () V!25077)

(assert (=> b!826720 (= lt!374513 (tuple2!10049 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826720 (= lt!374511 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46250 0))(
  ( (array!46251 (arr!22166 (Array (_ BitVec 32) (_ BitVec 64))) (size!22587 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46250)

(declare-datatypes ((ValueCell!7113 0))(
  ( (ValueCellFull!7113 (v!10006 V!25077)) (EmptyCell!7113) )
))
(declare-datatypes ((array!46252 0))(
  ( (array!46253 (arr!22167 (Array (_ BitVec 32) ValueCell!7113)) (size!22588 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46252)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2563 (array!46250 array!46252 (_ BitVec 32) (_ BitVec 32) V!25077 V!25077 (_ BitVec 32) Int) ListLongMap!8885)

(assert (=> b!826720 (= lt!374512 (getCurrentListMap!2563 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826720 (= lt!374514 (getCurrentListMap!2563 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826721 () Bool)

(declare-fun res!563679 () Bool)

(declare-fun e!460502 () Bool)

(assert (=> b!826721 (=> (not res!563679) (not e!460502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46250 (_ BitVec 32)) Bool)

(assert (=> b!826721 (= res!563679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826722 () Bool)

(assert (=> b!826722 (= e!460502 (not e!460498))))

(declare-fun res!563684 () Bool)

(assert (=> b!826722 (=> res!563684 e!460498)))

(assert (=> b!826722 (= res!563684 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!374522 () ListLongMap!8885)

(assert (=> b!826722 (= lt!374518 lt!374522)))

(declare-fun lt!374517 () Unit!28351)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!581 (array!46250 array!46252 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25077 V!25077 V!25077 V!25077 (_ BitVec 32) Int) Unit!28351)

(assert (=> b!826722 (= lt!374517 (lemmaNoChangeToArrayThenSameMapNoExtras!581 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2465 (array!46250 array!46252 (_ BitVec 32) (_ BitVec 32) V!25077 V!25077 (_ BitVec 32) Int) ListLongMap!8885)

(assert (=> b!826722 (= lt!374522 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826722 (= lt!374518 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826724 () Bool)

(declare-fun res!563677 () Bool)

(assert (=> b!826724 (=> (not res!563677) (not e!460502))))

(assert (=> b!826724 (= res!563677 (and (= (size!22588 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22587 _keys!976) (size!22588 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!24211 () Bool)

(declare-fun mapRes!24211 () Bool)

(assert (=> mapIsEmpty!24211 mapRes!24211))

(declare-fun b!826725 () Bool)

(declare-fun res!563681 () Bool)

(assert (=> b!826725 (=> (not res!563681) (not e!460502))))

(declare-datatypes ((List!15886 0))(
  ( (Nil!15883) (Cons!15882 (h!17011 (_ BitVec 64)) (t!22241 List!15886)) )
))
(declare-fun arrayNoDuplicates!0 (array!46250 (_ BitVec 32) List!15886) Bool)

(assert (=> b!826725 (= res!563681 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15883))))

(declare-fun mapNonEmpty!24211 () Bool)

(declare-fun tp!46800 () Bool)

(declare-fun e!460499 () Bool)

(assert (=> mapNonEmpty!24211 (= mapRes!24211 (and tp!46800 e!460499))))

(declare-fun mapValue!24211 () ValueCell!7113)

(declare-fun mapRest!24211 () (Array (_ BitVec 32) ValueCell!7113))

(declare-fun mapKey!24211 () (_ BitVec 32))

(assert (=> mapNonEmpty!24211 (= (arr!22167 _values!788) (store mapRest!24211 mapKey!24211 mapValue!24211))))

(declare-fun b!826726 () Bool)

(declare-fun e!460501 () Bool)

(declare-fun e!460495 () Bool)

(assert (=> b!826726 (= e!460501 (and e!460495 mapRes!24211))))

(declare-fun condMapEmpty!24211 () Bool)

(declare-fun mapDefault!24211 () ValueCell!7113)

(assert (=> b!826726 (= condMapEmpty!24211 (= (arr!22167 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7113)) mapDefault!24211)))))

(declare-fun b!826727 () Bool)

(declare-fun tp_is_empty!15057 () Bool)

(assert (=> b!826727 (= e!460495 tp_is_empty!15057)))

(declare-fun b!826728 () Bool)

(assert (=> b!826728 (= e!460503 (= lt!374512 (+!1919 (+!1919 lt!374522 lt!374513) lt!374516)))))

(declare-fun b!826729 () Bool)

(assert (=> b!826729 (= e!460497 (bvsle #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun b!826730 () Bool)

(assert (=> b!826730 (= e!460496 (= lt!374512 (+!1919 (+!1919 lt!374522 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374513)))))

(declare-fun b!826723 () Bool)

(assert (=> b!826723 (= e!460499 tp_is_empty!15057)))

(declare-fun res!563678 () Bool)

(assert (=> start!71204 (=> (not res!563678) (not e!460502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71204 (= res!563678 (validMask!0 mask!1312))))

(assert (=> start!71204 e!460502))

(assert (=> start!71204 tp_is_empty!15057))

(declare-fun array_inv!17651 (array!46250) Bool)

(assert (=> start!71204 (array_inv!17651 _keys!976)))

(assert (=> start!71204 true))

(declare-fun array_inv!17652 (array!46252) Bool)

(assert (=> start!71204 (and (array_inv!17652 _values!788) e!460501)))

(assert (=> start!71204 tp!46801))

(assert (= (and start!71204 res!563678) b!826724))

(assert (= (and b!826724 res!563677) b!826721))

(assert (= (and b!826721 res!563679) b!826725))

(assert (= (and b!826725 res!563681) b!826722))

(assert (= (and b!826722 (not res!563684)) b!826720))

(assert (= (and b!826720 res!563683) b!826730))

(assert (= (and b!826720 res!563682) b!826728))

(assert (= (and b!826720 (not res!563680)) b!826729))

(assert (= (and b!826726 condMapEmpty!24211) mapIsEmpty!24211))

(assert (= (and b!826726 (not condMapEmpty!24211)) mapNonEmpty!24211))

(get-info :version)

(assert (= (and mapNonEmpty!24211 ((_ is ValueCellFull!7113) mapValue!24211)) b!826723))

(assert (= (and b!826726 ((_ is ValueCellFull!7113) mapDefault!24211)) b!826727))

(assert (= start!71204 b!826726))

(declare-fun m!769809 () Bool)

(assert (=> b!826720 m!769809))

(declare-fun m!769811 () Bool)

(assert (=> b!826720 m!769811))

(declare-fun m!769813 () Bool)

(assert (=> b!826720 m!769813))

(assert (=> b!826720 m!769811))

(declare-fun m!769815 () Bool)

(assert (=> b!826720 m!769815))

(declare-fun m!769817 () Bool)

(assert (=> b!826720 m!769817))

(declare-fun m!769819 () Bool)

(assert (=> b!826720 m!769819))

(declare-fun m!769821 () Bool)

(assert (=> b!826720 m!769821))

(declare-fun m!769823 () Bool)

(assert (=> b!826720 m!769823))

(declare-fun m!769825 () Bool)

(assert (=> b!826720 m!769825))

(declare-fun m!769827 () Bool)

(assert (=> b!826720 m!769827))

(assert (=> b!826720 m!769827))

(declare-fun m!769829 () Bool)

(assert (=> b!826720 m!769829))

(declare-fun m!769831 () Bool)

(assert (=> b!826730 m!769831))

(assert (=> b!826730 m!769831))

(declare-fun m!769833 () Bool)

(assert (=> b!826730 m!769833))

(declare-fun m!769835 () Bool)

(assert (=> b!826721 m!769835))

(declare-fun m!769837 () Bool)

(assert (=> start!71204 m!769837))

(declare-fun m!769839 () Bool)

(assert (=> start!71204 m!769839))

(declare-fun m!769841 () Bool)

(assert (=> start!71204 m!769841))

(declare-fun m!769843 () Bool)

(assert (=> b!826722 m!769843))

(declare-fun m!769845 () Bool)

(assert (=> b!826722 m!769845))

(declare-fun m!769847 () Bool)

(assert (=> b!826722 m!769847))

(declare-fun m!769849 () Bool)

(assert (=> mapNonEmpty!24211 m!769849))

(declare-fun m!769851 () Bool)

(assert (=> b!826725 m!769851))

(declare-fun m!769853 () Bool)

(assert (=> b!826728 m!769853))

(assert (=> b!826728 m!769853))

(declare-fun m!769855 () Bool)

(assert (=> b!826728 m!769855))

(check-sat b_and!22291 tp_is_empty!15057 (not b!826720) (not mapNonEmpty!24211) (not b!826721) (not b_next!13347) (not b!826730) (not start!71204) (not b!826722) (not b!826728) (not b!826725))
(check-sat b_and!22291 (not b_next!13347))
(get-model)

(declare-fun d!104981 () Bool)

(assert (=> d!104981 (= (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374565 () Unit!28351)

(declare-fun choose!1415 (array!46250 array!46252 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25077 V!25077 V!25077 V!25077 (_ BitVec 32) Int) Unit!28351)

(assert (=> d!104981 (= lt!374565 (choose!1415 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!104981 (validMask!0 mask!1312)))

(assert (=> d!104981 (= (lemmaNoChangeToArrayThenSameMapNoExtras!581 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!374565)))

(declare-fun bs!23091 () Bool)

(assert (= bs!23091 d!104981))

(assert (=> bs!23091 m!769847))

(assert (=> bs!23091 m!769845))

(declare-fun m!769905 () Bool)

(assert (=> bs!23091 m!769905))

(assert (=> bs!23091 m!769837))

(assert (=> b!826722 d!104981))

(declare-fun b!826788 () Bool)

(declare-fun res!563720 () Bool)

(declare-fun e!460550 () Bool)

(assert (=> b!826788 (=> (not res!563720) (not e!460550))))

(declare-fun lt!374584 () ListLongMap!8885)

(declare-fun contains!4182 (ListLongMap!8885 (_ BitVec 64)) Bool)

(assert (=> b!826788 (= res!563720 (not (contains!4182 lt!374584 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!826789 () Bool)

(declare-fun e!460548 () ListLongMap!8885)

(assert (=> b!826789 (= e!460548 (ListLongMap!8886 Nil!15882))))

(declare-fun b!826790 () Bool)

(declare-fun e!460546 () Bool)

(declare-fun e!460547 () Bool)

(assert (=> b!826790 (= e!460546 e!460547)))

(declare-fun c!89403 () Bool)

(assert (=> b!826790 (= c!89403 (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun b!826791 () Bool)

(declare-fun e!460551 () ListLongMap!8885)

(declare-fun call!35911 () ListLongMap!8885)

(assert (=> b!826791 (= e!460551 call!35911)))

(declare-fun b!826792 () Bool)

(declare-fun e!460549 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!826792 (= e!460549 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!826792 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!826793 () Bool)

(assert (=> b!826793 (= e!460550 e!460546)))

(declare-fun c!89401 () Bool)

(assert (=> b!826793 (= c!89401 e!460549)))

(declare-fun res!563719 () Bool)

(assert (=> b!826793 (=> (not res!563719) (not e!460549))))

(assert (=> b!826793 (= res!563719 (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun d!104983 () Bool)

(assert (=> d!104983 e!460550))

(declare-fun res!563718 () Bool)

(assert (=> d!104983 (=> (not res!563718) (not e!460550))))

(assert (=> d!104983 (= res!563718 (not (contains!4182 lt!374584 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104983 (= lt!374584 e!460548)))

(declare-fun c!89400 () Bool)

(assert (=> d!104983 (= c!89400 (bvsge #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(assert (=> d!104983 (validMask!0 mask!1312)))

(assert (=> d!104983 (= (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!374584)))

(declare-fun b!826794 () Bool)

(declare-fun isEmpty!650 (ListLongMap!8885) Bool)

(assert (=> b!826794 (= e!460547 (isEmpty!650 lt!374584))))

(declare-fun b!826795 () Bool)

(declare-fun lt!374583 () Unit!28351)

(declare-fun lt!374585 () Unit!28351)

(assert (=> b!826795 (= lt!374583 lt!374585)))

(declare-fun lt!374582 () ListLongMap!8885)

(declare-fun lt!374586 () (_ BitVec 64))

(declare-fun lt!374581 () V!25077)

(declare-fun lt!374580 () (_ BitVec 64))

(assert (=> b!826795 (not (contains!4182 (+!1919 lt!374582 (tuple2!10049 lt!374586 lt!374581)) lt!374580))))

(declare-fun addStillNotContains!190 (ListLongMap!8885 (_ BitVec 64) V!25077 (_ BitVec 64)) Unit!28351)

(assert (=> b!826795 (= lt!374585 (addStillNotContains!190 lt!374582 lt!374586 lt!374581 lt!374580))))

(assert (=> b!826795 (= lt!374580 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11763 (ValueCell!7113 V!25077) V!25077)

(declare-fun dynLambda!973 (Int (_ BitVec 64)) V!25077)

(assert (=> b!826795 (= lt!374581 (get!11763 (select (arr!22167 _values!788) #b00000000000000000000000000000000) (dynLambda!973 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!826795 (= lt!374586 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!826795 (= lt!374582 call!35911)))

(assert (=> b!826795 (= e!460551 (+!1919 call!35911 (tuple2!10049 (select (arr!22166 _keys!976) #b00000000000000000000000000000000) (get!11763 (select (arr!22167 _values!788) #b00000000000000000000000000000000) (dynLambda!973 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!826796 () Bool)

(declare-fun e!460545 () Bool)

(assert (=> b!826796 (= e!460546 e!460545)))

(assert (=> b!826796 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun res!563717 () Bool)

(assert (=> b!826796 (= res!563717 (contains!4182 lt!374584 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!826796 (=> (not res!563717) (not e!460545))))

(declare-fun b!826797 () Bool)

(assert (=> b!826797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(assert (=> b!826797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22588 _values!788)))))

(declare-fun apply!363 (ListLongMap!8885 (_ BitVec 64)) V!25077)

(assert (=> b!826797 (= e!460545 (= (apply!363 lt!374584 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)) (get!11763 (select (arr!22167 _values!788) #b00000000000000000000000000000000) (dynLambda!973 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!826798 () Bool)

(assert (=> b!826798 (= e!460548 e!460551)))

(declare-fun c!89402 () Bool)

(assert (=> b!826798 (= c!89402 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!826799 () Bool)

(assert (=> b!826799 (= e!460547 (= lt!374584 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!35908 () Bool)

(assert (=> bm!35908 (= call!35911 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(assert (= (and d!104983 c!89400) b!826789))

(assert (= (and d!104983 (not c!89400)) b!826798))

(assert (= (and b!826798 c!89402) b!826795))

(assert (= (and b!826798 (not c!89402)) b!826791))

(assert (= (or b!826795 b!826791) bm!35908))

(assert (= (and d!104983 res!563718) b!826788))

(assert (= (and b!826788 res!563720) b!826793))

(assert (= (and b!826793 res!563719) b!826792))

(assert (= (and b!826793 c!89401) b!826796))

(assert (= (and b!826793 (not c!89401)) b!826790))

(assert (= (and b!826796 res!563717) b!826797))

(assert (= (and b!826790 c!89403) b!826799))

(assert (= (and b!826790 (not c!89403)) b!826794))

(declare-fun b_lambda!11169 () Bool)

(assert (=> (not b_lambda!11169) (not b!826795)))

(declare-fun t!22245 () Bool)

(declare-fun tb!4215 () Bool)

(assert (=> (and start!71204 (= defaultEntry!796 defaultEntry!796) t!22245) tb!4215))

(declare-fun result!7969 () Bool)

(assert (=> tb!4215 (= result!7969 tp_is_empty!15057)))

(assert (=> b!826795 t!22245))

(declare-fun b_and!22295 () Bool)

(assert (= b_and!22291 (and (=> t!22245 result!7969) b_and!22295)))

(declare-fun b_lambda!11171 () Bool)

(assert (=> (not b_lambda!11171) (not b!826797)))

(assert (=> b!826797 t!22245))

(declare-fun b_and!22297 () Bool)

(assert (= b_and!22295 (and (=> t!22245 result!7969) b_and!22297)))

(declare-fun m!769907 () Bool)

(assert (=> b!826792 m!769907))

(assert (=> b!826792 m!769907))

(declare-fun m!769909 () Bool)

(assert (=> b!826792 m!769909))

(assert (=> b!826798 m!769907))

(assert (=> b!826798 m!769907))

(assert (=> b!826798 m!769909))

(declare-fun m!769911 () Bool)

(assert (=> b!826799 m!769911))

(declare-fun m!769913 () Bool)

(assert (=> b!826795 m!769913))

(declare-fun m!769915 () Bool)

(assert (=> b!826795 m!769915))

(declare-fun m!769917 () Bool)

(assert (=> b!826795 m!769917))

(declare-fun m!769919 () Bool)

(assert (=> b!826795 m!769919))

(declare-fun m!769921 () Bool)

(assert (=> b!826795 m!769921))

(assert (=> b!826795 m!769907))

(declare-fun m!769923 () Bool)

(assert (=> b!826795 m!769923))

(assert (=> b!826795 m!769921))

(assert (=> b!826795 m!769923))

(declare-fun m!769925 () Bool)

(assert (=> b!826795 m!769925))

(assert (=> b!826795 m!769915))

(declare-fun m!769927 () Bool)

(assert (=> b!826794 m!769927))

(assert (=> b!826797 m!769921))

(assert (=> b!826797 m!769907))

(assert (=> b!826797 m!769923))

(assert (=> b!826797 m!769921))

(assert (=> b!826797 m!769923))

(assert (=> b!826797 m!769925))

(assert (=> b!826797 m!769907))

(declare-fun m!769929 () Bool)

(assert (=> b!826797 m!769929))

(assert (=> b!826796 m!769907))

(assert (=> b!826796 m!769907))

(declare-fun m!769931 () Bool)

(assert (=> b!826796 m!769931))

(declare-fun m!769933 () Bool)

(assert (=> b!826788 m!769933))

(assert (=> bm!35908 m!769911))

(declare-fun m!769935 () Bool)

(assert (=> d!104983 m!769935))

(assert (=> d!104983 m!769837))

(assert (=> b!826722 d!104983))

(declare-fun b!826802 () Bool)

(declare-fun res!563724 () Bool)

(declare-fun e!460557 () Bool)

(assert (=> b!826802 (=> (not res!563724) (not e!460557))))

(declare-fun lt!374591 () ListLongMap!8885)

(assert (=> b!826802 (= res!563724 (not (contains!4182 lt!374591 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!826803 () Bool)

(declare-fun e!460555 () ListLongMap!8885)

(assert (=> b!826803 (= e!460555 (ListLongMap!8886 Nil!15882))))

(declare-fun b!826804 () Bool)

(declare-fun e!460553 () Bool)

(declare-fun e!460554 () Bool)

(assert (=> b!826804 (= e!460553 e!460554)))

(declare-fun c!89407 () Bool)

(assert (=> b!826804 (= c!89407 (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun b!826805 () Bool)

(declare-fun e!460558 () ListLongMap!8885)

(declare-fun call!35912 () ListLongMap!8885)

(assert (=> b!826805 (= e!460558 call!35912)))

(declare-fun b!826806 () Bool)

(declare-fun e!460556 () Bool)

(assert (=> b!826806 (= e!460556 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!826806 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!826807 () Bool)

(assert (=> b!826807 (= e!460557 e!460553)))

(declare-fun c!89405 () Bool)

(assert (=> b!826807 (= c!89405 e!460556)))

(declare-fun res!563723 () Bool)

(assert (=> b!826807 (=> (not res!563723) (not e!460556))))

(assert (=> b!826807 (= res!563723 (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun d!104985 () Bool)

(assert (=> d!104985 e!460557))

(declare-fun res!563722 () Bool)

(assert (=> d!104985 (=> (not res!563722) (not e!460557))))

(assert (=> d!104985 (= res!563722 (not (contains!4182 lt!374591 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!104985 (= lt!374591 e!460555)))

(declare-fun c!89404 () Bool)

(assert (=> d!104985 (= c!89404 (bvsge #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(assert (=> d!104985 (validMask!0 mask!1312)))

(assert (=> d!104985 (= (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!374591)))

(declare-fun b!826808 () Bool)

(assert (=> b!826808 (= e!460554 (isEmpty!650 lt!374591))))

(declare-fun b!826809 () Bool)

(declare-fun lt!374590 () Unit!28351)

(declare-fun lt!374592 () Unit!28351)

(assert (=> b!826809 (= lt!374590 lt!374592)))

(declare-fun lt!374589 () ListLongMap!8885)

(declare-fun lt!374587 () (_ BitVec 64))

(declare-fun lt!374593 () (_ BitVec 64))

(declare-fun lt!374588 () V!25077)

(assert (=> b!826809 (not (contains!4182 (+!1919 lt!374589 (tuple2!10049 lt!374593 lt!374588)) lt!374587))))

(assert (=> b!826809 (= lt!374592 (addStillNotContains!190 lt!374589 lt!374593 lt!374588 lt!374587))))

(assert (=> b!826809 (= lt!374587 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!826809 (= lt!374588 (get!11763 (select (arr!22167 _values!788) #b00000000000000000000000000000000) (dynLambda!973 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!826809 (= lt!374593 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!826809 (= lt!374589 call!35912)))

(assert (=> b!826809 (= e!460558 (+!1919 call!35912 (tuple2!10049 (select (arr!22166 _keys!976) #b00000000000000000000000000000000) (get!11763 (select (arr!22167 _values!788) #b00000000000000000000000000000000) (dynLambda!973 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!826810 () Bool)

(declare-fun e!460552 () Bool)

(assert (=> b!826810 (= e!460553 e!460552)))

(assert (=> b!826810 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun res!563721 () Bool)

(assert (=> b!826810 (= res!563721 (contains!4182 lt!374591 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!826810 (=> (not res!563721) (not e!460552))))

(declare-fun b!826811 () Bool)

(assert (=> b!826811 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(assert (=> b!826811 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22588 _values!788)))))

(assert (=> b!826811 (= e!460552 (= (apply!363 lt!374591 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)) (get!11763 (select (arr!22167 _values!788) #b00000000000000000000000000000000) (dynLambda!973 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!826812 () Bool)

(assert (=> b!826812 (= e!460555 e!460558)))

(declare-fun c!89406 () Bool)

(assert (=> b!826812 (= c!89406 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!826813 () Bool)

(assert (=> b!826813 (= e!460554 (= lt!374591 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun bm!35909 () Bool)

(assert (=> bm!35909 (= call!35912 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(assert (= (and d!104985 c!89404) b!826803))

(assert (= (and d!104985 (not c!89404)) b!826812))

(assert (= (and b!826812 c!89406) b!826809))

(assert (= (and b!826812 (not c!89406)) b!826805))

(assert (= (or b!826809 b!826805) bm!35909))

(assert (= (and d!104985 res!563722) b!826802))

(assert (= (and b!826802 res!563724) b!826807))

(assert (= (and b!826807 res!563723) b!826806))

(assert (= (and b!826807 c!89405) b!826810))

(assert (= (and b!826807 (not c!89405)) b!826804))

(assert (= (and b!826810 res!563721) b!826811))

(assert (= (and b!826804 c!89407) b!826813))

(assert (= (and b!826804 (not c!89407)) b!826808))

(declare-fun b_lambda!11173 () Bool)

(assert (=> (not b_lambda!11173) (not b!826809)))

(assert (=> b!826809 t!22245))

(declare-fun b_and!22299 () Bool)

(assert (= b_and!22297 (and (=> t!22245 result!7969) b_and!22299)))

(declare-fun b_lambda!11175 () Bool)

(assert (=> (not b_lambda!11175) (not b!826811)))

(assert (=> b!826811 t!22245))

(declare-fun b_and!22301 () Bool)

(assert (= b_and!22299 (and (=> t!22245 result!7969) b_and!22301)))

(assert (=> b!826806 m!769907))

(assert (=> b!826806 m!769907))

(assert (=> b!826806 m!769909))

(assert (=> b!826812 m!769907))

(assert (=> b!826812 m!769907))

(assert (=> b!826812 m!769909))

(declare-fun m!769937 () Bool)

(assert (=> b!826813 m!769937))

(declare-fun m!769939 () Bool)

(assert (=> b!826809 m!769939))

(declare-fun m!769941 () Bool)

(assert (=> b!826809 m!769941))

(declare-fun m!769943 () Bool)

(assert (=> b!826809 m!769943))

(declare-fun m!769945 () Bool)

(assert (=> b!826809 m!769945))

(assert (=> b!826809 m!769921))

(assert (=> b!826809 m!769907))

(assert (=> b!826809 m!769923))

(assert (=> b!826809 m!769921))

(assert (=> b!826809 m!769923))

(assert (=> b!826809 m!769925))

(assert (=> b!826809 m!769941))

(declare-fun m!769947 () Bool)

(assert (=> b!826808 m!769947))

(assert (=> b!826811 m!769921))

(assert (=> b!826811 m!769907))

(assert (=> b!826811 m!769923))

(assert (=> b!826811 m!769921))

(assert (=> b!826811 m!769923))

(assert (=> b!826811 m!769925))

(assert (=> b!826811 m!769907))

(declare-fun m!769949 () Bool)

(assert (=> b!826811 m!769949))

(assert (=> b!826810 m!769907))

(assert (=> b!826810 m!769907))

(declare-fun m!769951 () Bool)

(assert (=> b!826810 m!769951))

(declare-fun m!769953 () Bool)

(assert (=> b!826802 m!769953))

(assert (=> bm!35909 m!769937))

(declare-fun m!769955 () Bool)

(assert (=> d!104985 m!769955))

(assert (=> d!104985 m!769837))

(assert (=> b!826722 d!104985))

(declare-fun d!104987 () Bool)

(declare-fun e!460561 () Bool)

(assert (=> d!104987 e!460561))

(declare-fun res!563729 () Bool)

(assert (=> d!104987 (=> (not res!563729) (not e!460561))))

(declare-fun lt!374602 () ListLongMap!8885)

(assert (=> d!104987 (= res!563729 (contains!4182 lt!374602 (_1!5034 lt!374513)))))

(declare-fun lt!374604 () List!15885)

(assert (=> d!104987 (= lt!374602 (ListLongMap!8886 lt!374604))))

(declare-fun lt!374603 () Unit!28351)

(declare-fun lt!374605 () Unit!28351)

(assert (=> d!104987 (= lt!374603 lt!374605)))

(declare-datatypes ((Option!412 0))(
  ( (Some!411 (v!10008 V!25077)) (None!410) )
))
(declare-fun getValueByKey!406 (List!15885 (_ BitVec 64)) Option!412)

(assert (=> d!104987 (= (getValueByKey!406 lt!374604 (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513)))))

(declare-fun lemmaContainsTupThenGetReturnValue!222 (List!15885 (_ BitVec 64) V!25077) Unit!28351)

(assert (=> d!104987 (= lt!374605 (lemmaContainsTupThenGetReturnValue!222 lt!374604 (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(declare-fun insertStrictlySorted!260 (List!15885 (_ BitVec 64) V!25077) List!15885)

(assert (=> d!104987 (= lt!374604 (insertStrictlySorted!260 (toList!4458 lt!374518) (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(assert (=> d!104987 (= (+!1919 lt!374518 lt!374513) lt!374602)))

(declare-fun b!826818 () Bool)

(declare-fun res!563730 () Bool)

(assert (=> b!826818 (=> (not res!563730) (not e!460561))))

(assert (=> b!826818 (= res!563730 (= (getValueByKey!406 (toList!4458 lt!374602) (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513))))))

(declare-fun b!826819 () Bool)

(declare-fun contains!4183 (List!15885 tuple2!10048) Bool)

(assert (=> b!826819 (= e!460561 (contains!4183 (toList!4458 lt!374602) lt!374513))))

(assert (= (and d!104987 res!563729) b!826818))

(assert (= (and b!826818 res!563730) b!826819))

(declare-fun m!769957 () Bool)

(assert (=> d!104987 m!769957))

(declare-fun m!769959 () Bool)

(assert (=> d!104987 m!769959))

(declare-fun m!769961 () Bool)

(assert (=> d!104987 m!769961))

(declare-fun m!769963 () Bool)

(assert (=> d!104987 m!769963))

(declare-fun m!769965 () Bool)

(assert (=> b!826818 m!769965))

(declare-fun m!769967 () Bool)

(assert (=> b!826819 m!769967))

(assert (=> b!826720 d!104987))

(declare-fun b!826862 () Bool)

(declare-fun e!460591 () Unit!28351)

(declare-fun Unit!28355 () Unit!28351)

(assert (=> b!826862 (= e!460591 Unit!28355)))

(declare-fun d!104989 () Bool)

(declare-fun e!460597 () Bool)

(assert (=> d!104989 e!460597))

(declare-fun res!563755 () Bool)

(assert (=> d!104989 (=> (not res!563755) (not e!460597))))

(assert (=> d!104989 (= res!563755 (or (bvsge #b00000000000000000000000000000000 (size!22587 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))))

(declare-fun lt!374671 () ListLongMap!8885)

(declare-fun lt!374660 () ListLongMap!8885)

(assert (=> d!104989 (= lt!374671 lt!374660)))

(declare-fun lt!374658 () Unit!28351)

(assert (=> d!104989 (= lt!374658 e!460591)))

(declare-fun c!89425 () Bool)

(declare-fun e!460594 () Bool)

(assert (=> d!104989 (= c!89425 e!460594)))

(declare-fun res!563754 () Bool)

(assert (=> d!104989 (=> (not res!563754) (not e!460594))))

(assert (=> d!104989 (= res!563754 (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun e!460598 () ListLongMap!8885)

(assert (=> d!104989 (= lt!374660 e!460598)))

(declare-fun c!89424 () Bool)

(assert (=> d!104989 (= c!89424 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!104989 (validMask!0 mask!1312)))

(assert (=> d!104989 (= (getCurrentListMap!2563 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!374671)))

(declare-fun bm!35924 () Bool)

(declare-fun call!35932 () Bool)

(assert (=> bm!35924 (= call!35932 (contains!4182 lt!374671 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!826863 () Bool)

(declare-fun res!563752 () Bool)

(assert (=> b!826863 (=> (not res!563752) (not e!460597))))

(declare-fun e!460599 () Bool)

(assert (=> b!826863 (= res!563752 e!460599)))

(declare-fun res!563749 () Bool)

(assert (=> b!826863 (=> res!563749 e!460599)))

(declare-fun e!460595 () Bool)

(assert (=> b!826863 (= res!563749 (not e!460595))))

(declare-fun res!563756 () Bool)

(assert (=> b!826863 (=> (not res!563756) (not e!460595))))

(assert (=> b!826863 (= res!563756 (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun b!826864 () Bool)

(declare-fun e!460588 () ListLongMap!8885)

(declare-fun call!35929 () ListLongMap!8885)

(assert (=> b!826864 (= e!460588 call!35929)))

(declare-fun bm!35925 () Bool)

(declare-fun call!35933 () Bool)

(assert (=> bm!35925 (= call!35933 (contains!4182 lt!374671 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!826865 () Bool)

(declare-fun e!460600 () Bool)

(assert (=> b!826865 (= e!460600 (= (apply!363 lt!374671 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!826866 () Bool)

(declare-fun c!89423 () Bool)

(assert (=> b!826866 (= c!89423 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!460592 () ListLongMap!8885)

(assert (=> b!826866 (= e!460592 e!460588)))

(declare-fun bm!35926 () Bool)

(declare-fun call!35927 () ListLongMap!8885)

(declare-fun call!35930 () ListLongMap!8885)

(assert (=> bm!35926 (= call!35927 call!35930)))

(declare-fun bm!35927 () Bool)

(declare-fun call!35928 () ListLongMap!8885)

(assert (=> bm!35927 (= call!35929 call!35928)))

(declare-fun b!826867 () Bool)

(assert (=> b!826867 (= e!460598 e!460592)))

(declare-fun c!89421 () Bool)

(assert (=> b!826867 (= c!89421 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!826868 () Bool)

(assert (=> b!826868 (= e!460595 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35928 () Bool)

(declare-fun call!35931 () ListLongMap!8885)

(assert (=> bm!35928 (= call!35930 call!35931)))

(declare-fun b!826869 () Bool)

(declare-fun e!460590 () Bool)

(assert (=> b!826869 (= e!460599 e!460590)))

(declare-fun res!563750 () Bool)

(assert (=> b!826869 (=> (not res!563750) (not e!460590))))

(assert (=> b!826869 (= res!563750 (contains!4182 lt!374671 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!826869 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun b!826870 () Bool)

(assert (=> b!826870 (= e!460592 call!35929)))

(declare-fun b!826871 () Bool)

(assert (=> b!826871 (= e!460590 (= (apply!363 lt!374671 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)) (get!11763 (select (arr!22167 _values!788) #b00000000000000000000000000000000) (dynLambda!973 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!826871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22588 _values!788)))))

(assert (=> b!826871 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun b!826872 () Bool)

(assert (=> b!826872 (= e!460588 call!35927)))

(declare-fun bm!35929 () Bool)

(assert (=> bm!35929 (= call!35931 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826873 () Bool)

(declare-fun e!460596 () Bool)

(assert (=> b!826873 (= e!460596 (= (apply!363 lt!374671 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!826874 () Bool)

(declare-fun lt!374661 () Unit!28351)

(assert (=> b!826874 (= e!460591 lt!374661)))

(declare-fun lt!374667 () ListLongMap!8885)

(assert (=> b!826874 (= lt!374667 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374663 () (_ BitVec 64))

(assert (=> b!826874 (= lt!374663 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!374653 () (_ BitVec 64))

(assert (=> b!826874 (= lt!374653 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!374664 () Unit!28351)

(declare-fun addStillContains!315 (ListLongMap!8885 (_ BitVec 64) V!25077 (_ BitVec 64)) Unit!28351)

(assert (=> b!826874 (= lt!374664 (addStillContains!315 lt!374667 lt!374663 zeroValueBefore!34 lt!374653))))

(assert (=> b!826874 (contains!4182 (+!1919 lt!374667 (tuple2!10049 lt!374663 zeroValueBefore!34)) lt!374653)))

(declare-fun lt!374670 () Unit!28351)

(assert (=> b!826874 (= lt!374670 lt!374664)))

(declare-fun lt!374651 () ListLongMap!8885)

(assert (=> b!826874 (= lt!374651 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374669 () (_ BitVec 64))

(assert (=> b!826874 (= lt!374669 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!374655 () (_ BitVec 64))

(assert (=> b!826874 (= lt!374655 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!374665 () Unit!28351)

(declare-fun addApplyDifferent!315 (ListLongMap!8885 (_ BitVec 64) V!25077 (_ BitVec 64)) Unit!28351)

(assert (=> b!826874 (= lt!374665 (addApplyDifferent!315 lt!374651 lt!374669 minValue!754 lt!374655))))

(assert (=> b!826874 (= (apply!363 (+!1919 lt!374651 (tuple2!10049 lt!374669 minValue!754)) lt!374655) (apply!363 lt!374651 lt!374655))))

(declare-fun lt!374656 () Unit!28351)

(assert (=> b!826874 (= lt!374656 lt!374665)))

(declare-fun lt!374652 () ListLongMap!8885)

(assert (=> b!826874 (= lt!374652 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374666 () (_ BitVec 64))

(assert (=> b!826874 (= lt!374666 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!374654 () (_ BitVec 64))

(assert (=> b!826874 (= lt!374654 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!374659 () Unit!28351)

(assert (=> b!826874 (= lt!374659 (addApplyDifferent!315 lt!374652 lt!374666 zeroValueBefore!34 lt!374654))))

(assert (=> b!826874 (= (apply!363 (+!1919 lt!374652 (tuple2!10049 lt!374666 zeroValueBefore!34)) lt!374654) (apply!363 lt!374652 lt!374654))))

(declare-fun lt!374662 () Unit!28351)

(assert (=> b!826874 (= lt!374662 lt!374659)))

(declare-fun lt!374657 () ListLongMap!8885)

(assert (=> b!826874 (= lt!374657 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374668 () (_ BitVec 64))

(assert (=> b!826874 (= lt!374668 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!374650 () (_ BitVec 64))

(assert (=> b!826874 (= lt!374650 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!826874 (= lt!374661 (addApplyDifferent!315 lt!374657 lt!374668 minValue!754 lt!374650))))

(assert (=> b!826874 (= (apply!363 (+!1919 lt!374657 (tuple2!10049 lt!374668 minValue!754)) lt!374650) (apply!363 lt!374657 lt!374650))))

(declare-fun b!826875 () Bool)

(declare-fun e!460593 () Bool)

(assert (=> b!826875 (= e!460593 (not call!35932))))

(declare-fun b!826876 () Bool)

(declare-fun e!460589 () Bool)

(assert (=> b!826876 (= e!460589 (not call!35933))))

(declare-fun b!826877 () Bool)

(declare-fun res!563757 () Bool)

(assert (=> b!826877 (=> (not res!563757) (not e!460597))))

(assert (=> b!826877 (= res!563757 e!460589)))

(declare-fun c!89420 () Bool)

(assert (=> b!826877 (= c!89420 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!826878 () Bool)

(assert (=> b!826878 (= e!460594 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!826879 () Bool)

(assert (=> b!826879 (= e!460598 (+!1919 call!35928 (tuple2!10049 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!826880 () Bool)

(assert (=> b!826880 (= e!460593 e!460600)))

(declare-fun res!563751 () Bool)

(assert (=> b!826880 (= res!563751 call!35932)))

(assert (=> b!826880 (=> (not res!563751) (not e!460600))))

(declare-fun bm!35930 () Bool)

(assert (=> bm!35930 (= call!35928 (+!1919 (ite c!89424 call!35931 (ite c!89421 call!35930 call!35927)) (ite (or c!89424 c!89421) (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10049 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!826881 () Bool)

(assert (=> b!826881 (= e!460597 e!460593)))

(declare-fun c!89422 () Bool)

(assert (=> b!826881 (= c!89422 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!826882 () Bool)

(assert (=> b!826882 (= e!460589 e!460596)))

(declare-fun res!563753 () Bool)

(assert (=> b!826882 (= res!563753 call!35933)))

(assert (=> b!826882 (=> (not res!563753) (not e!460596))))

(assert (= (and d!104989 c!89424) b!826879))

(assert (= (and d!104989 (not c!89424)) b!826867))

(assert (= (and b!826867 c!89421) b!826870))

(assert (= (and b!826867 (not c!89421)) b!826866))

(assert (= (and b!826866 c!89423) b!826864))

(assert (= (and b!826866 (not c!89423)) b!826872))

(assert (= (or b!826864 b!826872) bm!35926))

(assert (= (or b!826870 bm!35926) bm!35928))

(assert (= (or b!826870 b!826864) bm!35927))

(assert (= (or b!826879 bm!35928) bm!35929))

(assert (= (or b!826879 bm!35927) bm!35930))

(assert (= (and d!104989 res!563754) b!826878))

(assert (= (and d!104989 c!89425) b!826874))

(assert (= (and d!104989 (not c!89425)) b!826862))

(assert (= (and d!104989 res!563755) b!826863))

(assert (= (and b!826863 res!563756) b!826868))

(assert (= (and b!826863 (not res!563749)) b!826869))

(assert (= (and b!826869 res!563750) b!826871))

(assert (= (and b!826863 res!563752) b!826877))

(assert (= (and b!826877 c!89420) b!826882))

(assert (= (and b!826877 (not c!89420)) b!826876))

(assert (= (and b!826882 res!563753) b!826873))

(assert (= (or b!826882 b!826876) bm!35925))

(assert (= (and b!826877 res!563757) b!826881))

(assert (= (and b!826881 c!89422) b!826880))

(assert (= (and b!826881 (not c!89422)) b!826875))

(assert (= (and b!826880 res!563751) b!826865))

(assert (= (or b!826880 b!826875) bm!35924))

(declare-fun b_lambda!11177 () Bool)

(assert (=> (not b_lambda!11177) (not b!826871)))

(assert (=> b!826871 t!22245))

(declare-fun b_and!22303 () Bool)

(assert (= b_and!22301 (and (=> t!22245 result!7969) b_and!22303)))

(assert (=> b!826869 m!769907))

(assert (=> b!826869 m!769907))

(declare-fun m!769969 () Bool)

(assert (=> b!826869 m!769969))

(declare-fun m!769971 () Bool)

(assert (=> bm!35930 m!769971))

(declare-fun m!769973 () Bool)

(assert (=> b!826865 m!769973))

(assert (=> b!826868 m!769907))

(assert (=> b!826868 m!769907))

(assert (=> b!826868 m!769909))

(assert (=> b!826878 m!769907))

(assert (=> b!826878 m!769907))

(assert (=> b!826878 m!769909))

(assert (=> b!826871 m!769921))

(assert (=> b!826871 m!769907))

(assert (=> b!826871 m!769921))

(assert (=> b!826871 m!769923))

(assert (=> b!826871 m!769925))

(assert (=> b!826871 m!769907))

(declare-fun m!769975 () Bool)

(assert (=> b!826871 m!769975))

(assert (=> b!826871 m!769923))

(declare-fun m!769977 () Bool)

(assert (=> b!826874 m!769977))

(declare-fun m!769979 () Bool)

(assert (=> b!826874 m!769979))

(declare-fun m!769981 () Bool)

(assert (=> b!826874 m!769981))

(declare-fun m!769983 () Bool)

(assert (=> b!826874 m!769983))

(declare-fun m!769985 () Bool)

(assert (=> b!826874 m!769985))

(assert (=> b!826874 m!769847))

(assert (=> b!826874 m!769985))

(declare-fun m!769987 () Bool)

(assert (=> b!826874 m!769987))

(declare-fun m!769989 () Bool)

(assert (=> b!826874 m!769989))

(declare-fun m!769991 () Bool)

(assert (=> b!826874 m!769991))

(declare-fun m!769993 () Bool)

(assert (=> b!826874 m!769993))

(declare-fun m!769995 () Bool)

(assert (=> b!826874 m!769995))

(declare-fun m!769997 () Bool)

(assert (=> b!826874 m!769997))

(declare-fun m!769999 () Bool)

(assert (=> b!826874 m!769999))

(assert (=> b!826874 m!769981))

(declare-fun m!770001 () Bool)

(assert (=> b!826874 m!770001))

(assert (=> b!826874 m!769907))

(declare-fun m!770003 () Bool)

(assert (=> b!826874 m!770003))

(assert (=> b!826874 m!769993))

(assert (=> b!826874 m!769979))

(declare-fun m!770005 () Bool)

(assert (=> b!826874 m!770005))

(assert (=> d!104989 m!769837))

(assert (=> bm!35929 m!769847))

(declare-fun m!770007 () Bool)

(assert (=> b!826873 m!770007))

(declare-fun m!770009 () Bool)

(assert (=> bm!35924 m!770009))

(declare-fun m!770011 () Bool)

(assert (=> b!826879 m!770011))

(declare-fun m!770013 () Bool)

(assert (=> bm!35925 m!770013))

(assert (=> b!826720 d!104989))

(declare-fun d!104991 () Bool)

(declare-fun e!460601 () Bool)

(assert (=> d!104991 e!460601))

(declare-fun res!563758 () Bool)

(assert (=> d!104991 (=> (not res!563758) (not e!460601))))

(declare-fun lt!374672 () ListLongMap!8885)

(assert (=> d!104991 (= res!563758 (contains!4182 lt!374672 (_1!5034 lt!374516)))))

(declare-fun lt!374674 () List!15885)

(assert (=> d!104991 (= lt!374672 (ListLongMap!8886 lt!374674))))

(declare-fun lt!374673 () Unit!28351)

(declare-fun lt!374675 () Unit!28351)

(assert (=> d!104991 (= lt!374673 lt!374675)))

(assert (=> d!104991 (= (getValueByKey!406 lt!374674 (_1!5034 lt!374516)) (Some!411 (_2!5034 lt!374516)))))

(assert (=> d!104991 (= lt!374675 (lemmaContainsTupThenGetReturnValue!222 lt!374674 (_1!5034 lt!374516) (_2!5034 lt!374516)))))

(assert (=> d!104991 (= lt!374674 (insertStrictlySorted!260 (toList!4458 lt!374518) (_1!5034 lt!374516) (_2!5034 lt!374516)))))

(assert (=> d!104991 (= (+!1919 lt!374518 lt!374516) lt!374672)))

(declare-fun b!826883 () Bool)

(declare-fun res!563759 () Bool)

(assert (=> b!826883 (=> (not res!563759) (not e!460601))))

(assert (=> b!826883 (= res!563759 (= (getValueByKey!406 (toList!4458 lt!374672) (_1!5034 lt!374516)) (Some!411 (_2!5034 lt!374516))))))

(declare-fun b!826884 () Bool)

(assert (=> b!826884 (= e!460601 (contains!4183 (toList!4458 lt!374672) lt!374516))))

(assert (= (and d!104991 res!563758) b!826883))

(assert (= (and b!826883 res!563759) b!826884))

(declare-fun m!770015 () Bool)

(assert (=> d!104991 m!770015))

(declare-fun m!770017 () Bool)

(assert (=> d!104991 m!770017))

(declare-fun m!770019 () Bool)

(assert (=> d!104991 m!770019))

(declare-fun m!770021 () Bool)

(assert (=> d!104991 m!770021))

(declare-fun m!770023 () Bool)

(assert (=> b!826883 m!770023))

(declare-fun m!770025 () Bool)

(assert (=> b!826884 m!770025))

(assert (=> b!826720 d!104991))

(declare-fun d!104993 () Bool)

(declare-fun e!460602 () Bool)

(assert (=> d!104993 e!460602))

(declare-fun res!563760 () Bool)

(assert (=> d!104993 (=> (not res!563760) (not e!460602))))

(declare-fun lt!374676 () ListLongMap!8885)

(assert (=> d!104993 (= res!563760 (contains!4182 lt!374676 (_1!5034 lt!374516)))))

(declare-fun lt!374678 () List!15885)

(assert (=> d!104993 (= lt!374676 (ListLongMap!8886 lt!374678))))

(declare-fun lt!374677 () Unit!28351)

(declare-fun lt!374679 () Unit!28351)

(assert (=> d!104993 (= lt!374677 lt!374679)))

(assert (=> d!104993 (= (getValueByKey!406 lt!374678 (_1!5034 lt!374516)) (Some!411 (_2!5034 lt!374516)))))

(assert (=> d!104993 (= lt!374679 (lemmaContainsTupThenGetReturnValue!222 lt!374678 (_1!5034 lt!374516) (_2!5034 lt!374516)))))

(assert (=> d!104993 (= lt!374678 (insertStrictlySorted!260 (toList!4458 lt!374521) (_1!5034 lt!374516) (_2!5034 lt!374516)))))

(assert (=> d!104993 (= (+!1919 lt!374521 lt!374516) lt!374676)))

(declare-fun b!826885 () Bool)

(declare-fun res!563761 () Bool)

(assert (=> b!826885 (=> (not res!563761) (not e!460602))))

(assert (=> b!826885 (= res!563761 (= (getValueByKey!406 (toList!4458 lt!374676) (_1!5034 lt!374516)) (Some!411 (_2!5034 lt!374516))))))

(declare-fun b!826886 () Bool)

(assert (=> b!826886 (= e!460602 (contains!4183 (toList!4458 lt!374676) lt!374516))))

(assert (= (and d!104993 res!563760) b!826885))

(assert (= (and b!826885 res!563761) b!826886))

(declare-fun m!770027 () Bool)

(assert (=> d!104993 m!770027))

(declare-fun m!770029 () Bool)

(assert (=> d!104993 m!770029))

(declare-fun m!770031 () Bool)

(assert (=> d!104993 m!770031))

(declare-fun m!770033 () Bool)

(assert (=> d!104993 m!770033))

(declare-fun m!770035 () Bool)

(assert (=> b!826885 m!770035))

(declare-fun m!770037 () Bool)

(assert (=> b!826886 m!770037))

(assert (=> b!826720 d!104993))

(declare-fun d!104995 () Bool)

(declare-fun e!460603 () Bool)

(assert (=> d!104995 e!460603))

(declare-fun res!563762 () Bool)

(assert (=> d!104995 (=> (not res!563762) (not e!460603))))

(declare-fun lt!374680 () ListLongMap!8885)

(assert (=> d!104995 (= res!563762 (contains!4182 lt!374680 (_1!5034 lt!374511)))))

(declare-fun lt!374682 () List!15885)

(assert (=> d!104995 (= lt!374680 (ListLongMap!8886 lt!374682))))

(declare-fun lt!374681 () Unit!28351)

(declare-fun lt!374683 () Unit!28351)

(assert (=> d!104995 (= lt!374681 lt!374683)))

(assert (=> d!104995 (= (getValueByKey!406 lt!374682 (_1!5034 lt!374511)) (Some!411 (_2!5034 lt!374511)))))

(assert (=> d!104995 (= lt!374683 (lemmaContainsTupThenGetReturnValue!222 lt!374682 (_1!5034 lt!374511) (_2!5034 lt!374511)))))

(assert (=> d!104995 (= lt!374682 (insertStrictlySorted!260 (toList!4458 lt!374521) (_1!5034 lt!374511) (_2!5034 lt!374511)))))

(assert (=> d!104995 (= (+!1919 lt!374521 lt!374511) lt!374680)))

(declare-fun b!826887 () Bool)

(declare-fun res!563763 () Bool)

(assert (=> b!826887 (=> (not res!563763) (not e!460603))))

(assert (=> b!826887 (= res!563763 (= (getValueByKey!406 (toList!4458 lt!374680) (_1!5034 lt!374511)) (Some!411 (_2!5034 lt!374511))))))

(declare-fun b!826888 () Bool)

(assert (=> b!826888 (= e!460603 (contains!4183 (toList!4458 lt!374680) lt!374511))))

(assert (= (and d!104995 res!563762) b!826887))

(assert (= (and b!826887 res!563763) b!826888))

(declare-fun m!770039 () Bool)

(assert (=> d!104995 m!770039))

(declare-fun m!770041 () Bool)

(assert (=> d!104995 m!770041))

(declare-fun m!770043 () Bool)

(assert (=> d!104995 m!770043))

(declare-fun m!770045 () Bool)

(assert (=> d!104995 m!770045))

(declare-fun m!770047 () Bool)

(assert (=> b!826887 m!770047))

(declare-fun m!770049 () Bool)

(assert (=> b!826888 m!770049))

(assert (=> b!826720 d!104995))

(declare-fun d!104997 () Bool)

(declare-fun e!460604 () Bool)

(assert (=> d!104997 e!460604))

(declare-fun res!563764 () Bool)

(assert (=> d!104997 (=> (not res!563764) (not e!460604))))

(declare-fun lt!374684 () ListLongMap!8885)

(assert (=> d!104997 (= res!563764 (contains!4182 lt!374684 (_1!5034 lt!374513)))))

(declare-fun lt!374686 () List!15885)

(assert (=> d!104997 (= lt!374684 (ListLongMap!8886 lt!374686))))

(declare-fun lt!374685 () Unit!28351)

(declare-fun lt!374687 () Unit!28351)

(assert (=> d!104997 (= lt!374685 lt!374687)))

(assert (=> d!104997 (= (getValueByKey!406 lt!374686 (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513)))))

(assert (=> d!104997 (= lt!374687 (lemmaContainsTupThenGetReturnValue!222 lt!374686 (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(assert (=> d!104997 (= lt!374686 (insertStrictlySorted!260 (toList!4458 (+!1919 lt!374518 lt!374511)) (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(assert (=> d!104997 (= (+!1919 (+!1919 lt!374518 lt!374511) lt!374513) lt!374684)))

(declare-fun b!826889 () Bool)

(declare-fun res!563765 () Bool)

(assert (=> b!826889 (=> (not res!563765) (not e!460604))))

(assert (=> b!826889 (= res!563765 (= (getValueByKey!406 (toList!4458 lt!374684) (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513))))))

(declare-fun b!826890 () Bool)

(assert (=> b!826890 (= e!460604 (contains!4183 (toList!4458 lt!374684) lt!374513))))

(assert (= (and d!104997 res!563764) b!826889))

(assert (= (and b!826889 res!563765) b!826890))

(declare-fun m!770051 () Bool)

(assert (=> d!104997 m!770051))

(declare-fun m!770053 () Bool)

(assert (=> d!104997 m!770053))

(declare-fun m!770055 () Bool)

(assert (=> d!104997 m!770055))

(declare-fun m!770057 () Bool)

(assert (=> d!104997 m!770057))

(declare-fun m!770059 () Bool)

(assert (=> b!826889 m!770059))

(declare-fun m!770061 () Bool)

(assert (=> b!826890 m!770061))

(assert (=> b!826720 d!104997))

(declare-fun d!104999 () Bool)

(assert (=> d!104999 (= (+!1919 lt!374521 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (+!1919 (+!1919 lt!374521 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34)) (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun lt!374690 () Unit!28351)

(declare-fun choose!1416 (ListLongMap!8885 (_ BitVec 64) V!25077 V!25077) Unit!28351)

(assert (=> d!104999 (= lt!374690 (choose!1416 lt!374521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> d!104999 (= (addSameAsAddTwiceSameKeyDiffValues!241 lt!374521 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34) lt!374690)))

(declare-fun bs!23092 () Bool)

(assert (= bs!23092 d!104999))

(declare-fun m!770063 () Bool)

(assert (=> bs!23092 m!770063))

(declare-fun m!770065 () Bool)

(assert (=> bs!23092 m!770065))

(assert (=> bs!23092 m!770065))

(declare-fun m!770067 () Bool)

(assert (=> bs!23092 m!770067))

(declare-fun m!770069 () Bool)

(assert (=> bs!23092 m!770069))

(assert (=> b!826720 d!104999))

(declare-fun d!105001 () Bool)

(declare-fun e!460605 () Bool)

(assert (=> d!105001 e!460605))

(declare-fun res!563766 () Bool)

(assert (=> d!105001 (=> (not res!563766) (not e!460605))))

(declare-fun lt!374691 () ListLongMap!8885)

(assert (=> d!105001 (= res!563766 (contains!4182 lt!374691 (_1!5034 lt!374516)))))

(declare-fun lt!374693 () List!15885)

(assert (=> d!105001 (= lt!374691 (ListLongMap!8886 lt!374693))))

(declare-fun lt!374692 () Unit!28351)

(declare-fun lt!374694 () Unit!28351)

(assert (=> d!105001 (= lt!374692 lt!374694)))

(assert (=> d!105001 (= (getValueByKey!406 lt!374693 (_1!5034 lt!374516)) (Some!411 (_2!5034 lt!374516)))))

(assert (=> d!105001 (= lt!374694 (lemmaContainsTupThenGetReturnValue!222 lt!374693 (_1!5034 lt!374516) (_2!5034 lt!374516)))))

(assert (=> d!105001 (= lt!374693 (insertStrictlySorted!260 (toList!4458 lt!374515) (_1!5034 lt!374516) (_2!5034 lt!374516)))))

(assert (=> d!105001 (= (+!1919 lt!374515 lt!374516) lt!374691)))

(declare-fun b!826891 () Bool)

(declare-fun res!563767 () Bool)

(assert (=> b!826891 (=> (not res!563767) (not e!460605))))

(assert (=> b!826891 (= res!563767 (= (getValueByKey!406 (toList!4458 lt!374691) (_1!5034 lt!374516)) (Some!411 (_2!5034 lt!374516))))))

(declare-fun b!826892 () Bool)

(assert (=> b!826892 (= e!460605 (contains!4183 (toList!4458 lt!374691) lt!374516))))

(assert (= (and d!105001 res!563766) b!826891))

(assert (= (and b!826891 res!563767) b!826892))

(declare-fun m!770071 () Bool)

(assert (=> d!105001 m!770071))

(declare-fun m!770073 () Bool)

(assert (=> d!105001 m!770073))

(declare-fun m!770075 () Bool)

(assert (=> d!105001 m!770075))

(declare-fun m!770077 () Bool)

(assert (=> d!105001 m!770077))

(declare-fun m!770079 () Bool)

(assert (=> b!826891 m!770079))

(declare-fun m!770081 () Bool)

(assert (=> b!826892 m!770081))

(assert (=> b!826720 d!105001))

(declare-fun b!826893 () Bool)

(declare-fun e!460609 () Unit!28351)

(declare-fun Unit!28356 () Unit!28351)

(assert (=> b!826893 (= e!460609 Unit!28356)))

(declare-fun d!105003 () Bool)

(declare-fun e!460615 () Bool)

(assert (=> d!105003 e!460615))

(declare-fun res!563774 () Bool)

(assert (=> d!105003 (=> (not res!563774) (not e!460615))))

(assert (=> d!105003 (= res!563774 (or (bvsge #b00000000000000000000000000000000 (size!22587 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))))

(declare-fun lt!374716 () ListLongMap!8885)

(declare-fun lt!374705 () ListLongMap!8885)

(assert (=> d!105003 (= lt!374716 lt!374705)))

(declare-fun lt!374703 () Unit!28351)

(assert (=> d!105003 (= lt!374703 e!460609)))

(declare-fun c!89431 () Bool)

(declare-fun e!460612 () Bool)

(assert (=> d!105003 (= c!89431 e!460612)))

(declare-fun res!563773 () Bool)

(assert (=> d!105003 (=> (not res!563773) (not e!460612))))

(assert (=> d!105003 (= res!563773 (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun e!460616 () ListLongMap!8885)

(assert (=> d!105003 (= lt!374705 e!460616)))

(declare-fun c!89430 () Bool)

(assert (=> d!105003 (= c!89430 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105003 (validMask!0 mask!1312)))

(assert (=> d!105003 (= (getCurrentListMap!2563 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!374716)))

(declare-fun bm!35931 () Bool)

(declare-fun call!35939 () Bool)

(assert (=> bm!35931 (= call!35939 (contains!4182 lt!374716 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!826894 () Bool)

(declare-fun res!563771 () Bool)

(assert (=> b!826894 (=> (not res!563771) (not e!460615))))

(declare-fun e!460617 () Bool)

(assert (=> b!826894 (= res!563771 e!460617)))

(declare-fun res!563768 () Bool)

(assert (=> b!826894 (=> res!563768 e!460617)))

(declare-fun e!460613 () Bool)

(assert (=> b!826894 (= res!563768 (not e!460613))))

(declare-fun res!563775 () Bool)

(assert (=> b!826894 (=> (not res!563775) (not e!460613))))

(assert (=> b!826894 (= res!563775 (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun b!826895 () Bool)

(declare-fun e!460606 () ListLongMap!8885)

(declare-fun call!35936 () ListLongMap!8885)

(assert (=> b!826895 (= e!460606 call!35936)))

(declare-fun bm!35932 () Bool)

(declare-fun call!35940 () Bool)

(assert (=> bm!35932 (= call!35940 (contains!4182 lt!374716 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!826896 () Bool)

(declare-fun e!460618 () Bool)

(assert (=> b!826896 (= e!460618 (= (apply!363 lt!374716 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!826897 () Bool)

(declare-fun c!89429 () Bool)

(assert (=> b!826897 (= c!89429 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!460610 () ListLongMap!8885)

(assert (=> b!826897 (= e!460610 e!460606)))

(declare-fun bm!35933 () Bool)

(declare-fun call!35934 () ListLongMap!8885)

(declare-fun call!35937 () ListLongMap!8885)

(assert (=> bm!35933 (= call!35934 call!35937)))

(declare-fun bm!35934 () Bool)

(declare-fun call!35935 () ListLongMap!8885)

(assert (=> bm!35934 (= call!35936 call!35935)))

(declare-fun b!826898 () Bool)

(assert (=> b!826898 (= e!460616 e!460610)))

(declare-fun c!89427 () Bool)

(assert (=> b!826898 (= c!89427 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!826899 () Bool)

(assert (=> b!826899 (= e!460613 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35935 () Bool)

(declare-fun call!35938 () ListLongMap!8885)

(assert (=> bm!35935 (= call!35937 call!35938)))

(declare-fun b!826900 () Bool)

(declare-fun e!460608 () Bool)

(assert (=> b!826900 (= e!460617 e!460608)))

(declare-fun res!563769 () Bool)

(assert (=> b!826900 (=> (not res!563769) (not e!460608))))

(assert (=> b!826900 (= res!563769 (contains!4182 lt!374716 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!826900 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun b!826901 () Bool)

(assert (=> b!826901 (= e!460610 call!35936)))

(declare-fun b!826902 () Bool)

(assert (=> b!826902 (= e!460608 (= (apply!363 lt!374716 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)) (get!11763 (select (arr!22167 _values!788) #b00000000000000000000000000000000) (dynLambda!973 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!826902 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22588 _values!788)))))

(assert (=> b!826902 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(declare-fun b!826903 () Bool)

(assert (=> b!826903 (= e!460606 call!35934)))

(declare-fun bm!35936 () Bool)

(assert (=> bm!35936 (= call!35938 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826904 () Bool)

(declare-fun e!460614 () Bool)

(assert (=> b!826904 (= e!460614 (= (apply!363 lt!374716 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!826905 () Bool)

(declare-fun lt!374706 () Unit!28351)

(assert (=> b!826905 (= e!460609 lt!374706)))

(declare-fun lt!374712 () ListLongMap!8885)

(assert (=> b!826905 (= lt!374712 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374708 () (_ BitVec 64))

(assert (=> b!826905 (= lt!374708 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!374698 () (_ BitVec 64))

(assert (=> b!826905 (= lt!374698 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!374709 () Unit!28351)

(assert (=> b!826905 (= lt!374709 (addStillContains!315 lt!374712 lt!374708 zeroValueAfter!34 lt!374698))))

(assert (=> b!826905 (contains!4182 (+!1919 lt!374712 (tuple2!10049 lt!374708 zeroValueAfter!34)) lt!374698)))

(declare-fun lt!374715 () Unit!28351)

(assert (=> b!826905 (= lt!374715 lt!374709)))

(declare-fun lt!374696 () ListLongMap!8885)

(assert (=> b!826905 (= lt!374696 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374714 () (_ BitVec 64))

(assert (=> b!826905 (= lt!374714 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!374700 () (_ BitVec 64))

(assert (=> b!826905 (= lt!374700 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!374710 () Unit!28351)

(assert (=> b!826905 (= lt!374710 (addApplyDifferent!315 lt!374696 lt!374714 minValue!754 lt!374700))))

(assert (=> b!826905 (= (apply!363 (+!1919 lt!374696 (tuple2!10049 lt!374714 minValue!754)) lt!374700) (apply!363 lt!374696 lt!374700))))

(declare-fun lt!374701 () Unit!28351)

(assert (=> b!826905 (= lt!374701 lt!374710)))

(declare-fun lt!374697 () ListLongMap!8885)

(assert (=> b!826905 (= lt!374697 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374711 () (_ BitVec 64))

(assert (=> b!826905 (= lt!374711 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!374699 () (_ BitVec 64))

(assert (=> b!826905 (= lt!374699 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!374704 () Unit!28351)

(assert (=> b!826905 (= lt!374704 (addApplyDifferent!315 lt!374697 lt!374711 zeroValueAfter!34 lt!374699))))

(assert (=> b!826905 (= (apply!363 (+!1919 lt!374697 (tuple2!10049 lt!374711 zeroValueAfter!34)) lt!374699) (apply!363 lt!374697 lt!374699))))

(declare-fun lt!374707 () Unit!28351)

(assert (=> b!826905 (= lt!374707 lt!374704)))

(declare-fun lt!374702 () ListLongMap!8885)

(assert (=> b!826905 (= lt!374702 (getCurrentListMapNoExtraKeys!2465 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374713 () (_ BitVec 64))

(assert (=> b!826905 (= lt!374713 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!374695 () (_ BitVec 64))

(assert (=> b!826905 (= lt!374695 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!826905 (= lt!374706 (addApplyDifferent!315 lt!374702 lt!374713 minValue!754 lt!374695))))

(assert (=> b!826905 (= (apply!363 (+!1919 lt!374702 (tuple2!10049 lt!374713 minValue!754)) lt!374695) (apply!363 lt!374702 lt!374695))))

(declare-fun b!826906 () Bool)

(declare-fun e!460611 () Bool)

(assert (=> b!826906 (= e!460611 (not call!35939))))

(declare-fun b!826907 () Bool)

(declare-fun e!460607 () Bool)

(assert (=> b!826907 (= e!460607 (not call!35940))))

(declare-fun b!826908 () Bool)

(declare-fun res!563776 () Bool)

(assert (=> b!826908 (=> (not res!563776) (not e!460615))))

(assert (=> b!826908 (= res!563776 e!460607)))

(declare-fun c!89426 () Bool)

(assert (=> b!826908 (= c!89426 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!826909 () Bool)

(assert (=> b!826909 (= e!460612 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!826910 () Bool)

(assert (=> b!826910 (= e!460616 (+!1919 call!35935 (tuple2!10049 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun b!826911 () Bool)

(assert (=> b!826911 (= e!460611 e!460618)))

(declare-fun res!563770 () Bool)

(assert (=> b!826911 (= res!563770 call!35939)))

(assert (=> b!826911 (=> (not res!563770) (not e!460618))))

(declare-fun bm!35937 () Bool)

(assert (=> bm!35937 (= call!35935 (+!1919 (ite c!89430 call!35938 (ite c!89427 call!35937 call!35934)) (ite (or c!89430 c!89427) (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10049 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!826912 () Bool)

(assert (=> b!826912 (= e!460615 e!460611)))

(declare-fun c!89428 () Bool)

(assert (=> b!826912 (= c!89428 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!826913 () Bool)

(assert (=> b!826913 (= e!460607 e!460614)))

(declare-fun res!563772 () Bool)

(assert (=> b!826913 (= res!563772 call!35940)))

(assert (=> b!826913 (=> (not res!563772) (not e!460614))))

(assert (= (and d!105003 c!89430) b!826910))

(assert (= (and d!105003 (not c!89430)) b!826898))

(assert (= (and b!826898 c!89427) b!826901))

(assert (= (and b!826898 (not c!89427)) b!826897))

(assert (= (and b!826897 c!89429) b!826895))

(assert (= (and b!826897 (not c!89429)) b!826903))

(assert (= (or b!826895 b!826903) bm!35933))

(assert (= (or b!826901 bm!35933) bm!35935))

(assert (= (or b!826901 b!826895) bm!35934))

(assert (= (or b!826910 bm!35935) bm!35936))

(assert (= (or b!826910 bm!35934) bm!35937))

(assert (= (and d!105003 res!563773) b!826909))

(assert (= (and d!105003 c!89431) b!826905))

(assert (= (and d!105003 (not c!89431)) b!826893))

(assert (= (and d!105003 res!563774) b!826894))

(assert (= (and b!826894 res!563775) b!826899))

(assert (= (and b!826894 (not res!563768)) b!826900))

(assert (= (and b!826900 res!563769) b!826902))

(assert (= (and b!826894 res!563771) b!826908))

(assert (= (and b!826908 c!89426) b!826913))

(assert (= (and b!826908 (not c!89426)) b!826907))

(assert (= (and b!826913 res!563772) b!826904))

(assert (= (or b!826913 b!826907) bm!35932))

(assert (= (and b!826908 res!563776) b!826912))

(assert (= (and b!826912 c!89428) b!826911))

(assert (= (and b!826912 (not c!89428)) b!826906))

(assert (= (and b!826911 res!563770) b!826896))

(assert (= (or b!826911 b!826906) bm!35931))

(declare-fun b_lambda!11179 () Bool)

(assert (=> (not b_lambda!11179) (not b!826902)))

(assert (=> b!826902 t!22245))

(declare-fun b_and!22305 () Bool)

(assert (= b_and!22303 (and (=> t!22245 result!7969) b_and!22305)))

(assert (=> b!826900 m!769907))

(assert (=> b!826900 m!769907))

(declare-fun m!770083 () Bool)

(assert (=> b!826900 m!770083))

(declare-fun m!770085 () Bool)

(assert (=> bm!35937 m!770085))

(declare-fun m!770087 () Bool)

(assert (=> b!826896 m!770087))

(assert (=> b!826899 m!769907))

(assert (=> b!826899 m!769907))

(assert (=> b!826899 m!769909))

(assert (=> b!826909 m!769907))

(assert (=> b!826909 m!769907))

(assert (=> b!826909 m!769909))

(assert (=> b!826902 m!769921))

(assert (=> b!826902 m!769907))

(assert (=> b!826902 m!769921))

(assert (=> b!826902 m!769923))

(assert (=> b!826902 m!769925))

(assert (=> b!826902 m!769907))

(declare-fun m!770089 () Bool)

(assert (=> b!826902 m!770089))

(assert (=> b!826902 m!769923))

(declare-fun m!770091 () Bool)

(assert (=> b!826905 m!770091))

(declare-fun m!770093 () Bool)

(assert (=> b!826905 m!770093))

(declare-fun m!770095 () Bool)

(assert (=> b!826905 m!770095))

(declare-fun m!770097 () Bool)

(assert (=> b!826905 m!770097))

(declare-fun m!770099 () Bool)

(assert (=> b!826905 m!770099))

(assert (=> b!826905 m!769845))

(assert (=> b!826905 m!770099))

(declare-fun m!770101 () Bool)

(assert (=> b!826905 m!770101))

(declare-fun m!770103 () Bool)

(assert (=> b!826905 m!770103))

(declare-fun m!770105 () Bool)

(assert (=> b!826905 m!770105))

(declare-fun m!770107 () Bool)

(assert (=> b!826905 m!770107))

(declare-fun m!770109 () Bool)

(assert (=> b!826905 m!770109))

(declare-fun m!770111 () Bool)

(assert (=> b!826905 m!770111))

(declare-fun m!770113 () Bool)

(assert (=> b!826905 m!770113))

(assert (=> b!826905 m!770095))

(declare-fun m!770115 () Bool)

(assert (=> b!826905 m!770115))

(assert (=> b!826905 m!769907))

(declare-fun m!770117 () Bool)

(assert (=> b!826905 m!770117))

(assert (=> b!826905 m!770107))

(assert (=> b!826905 m!770093))

(declare-fun m!770119 () Bool)

(assert (=> b!826905 m!770119))

(assert (=> d!105003 m!769837))

(assert (=> bm!35936 m!769845))

(declare-fun m!770121 () Bool)

(assert (=> b!826904 m!770121))

(declare-fun m!770123 () Bool)

(assert (=> bm!35931 m!770123))

(declare-fun m!770125 () Bool)

(assert (=> b!826910 m!770125))

(declare-fun m!770127 () Bool)

(assert (=> bm!35932 m!770127))

(assert (=> b!826720 d!105003))

(declare-fun d!105005 () Bool)

(declare-fun e!460619 () Bool)

(assert (=> d!105005 e!460619))

(declare-fun res!563777 () Bool)

(assert (=> d!105005 (=> (not res!563777) (not e!460619))))

(declare-fun lt!374717 () ListLongMap!8885)

(assert (=> d!105005 (= res!563777 (contains!4182 lt!374717 (_1!5034 lt!374511)))))

(declare-fun lt!374719 () List!15885)

(assert (=> d!105005 (= lt!374717 (ListLongMap!8886 lt!374719))))

(declare-fun lt!374718 () Unit!28351)

(declare-fun lt!374720 () Unit!28351)

(assert (=> d!105005 (= lt!374718 lt!374720)))

(assert (=> d!105005 (= (getValueByKey!406 lt!374719 (_1!5034 lt!374511)) (Some!411 (_2!5034 lt!374511)))))

(assert (=> d!105005 (= lt!374720 (lemmaContainsTupThenGetReturnValue!222 lt!374719 (_1!5034 lt!374511) (_2!5034 lt!374511)))))

(assert (=> d!105005 (= lt!374719 (insertStrictlySorted!260 (toList!4458 lt!374518) (_1!5034 lt!374511) (_2!5034 lt!374511)))))

(assert (=> d!105005 (= (+!1919 lt!374518 lt!374511) lt!374717)))

(declare-fun b!826914 () Bool)

(declare-fun res!563778 () Bool)

(assert (=> b!826914 (=> (not res!563778) (not e!460619))))

(assert (=> b!826914 (= res!563778 (= (getValueByKey!406 (toList!4458 lt!374717) (_1!5034 lt!374511)) (Some!411 (_2!5034 lt!374511))))))

(declare-fun b!826915 () Bool)

(assert (=> b!826915 (= e!460619 (contains!4183 (toList!4458 lt!374717) lt!374511))))

(assert (= (and d!105005 res!563777) b!826914))

(assert (= (and b!826914 res!563778) b!826915))

(declare-fun m!770129 () Bool)

(assert (=> d!105005 m!770129))

(declare-fun m!770131 () Bool)

(assert (=> d!105005 m!770131))

(declare-fun m!770133 () Bool)

(assert (=> d!105005 m!770133))

(declare-fun m!770135 () Bool)

(assert (=> d!105005 m!770135))

(declare-fun m!770137 () Bool)

(assert (=> b!826914 m!770137))

(declare-fun m!770139 () Bool)

(assert (=> b!826915 m!770139))

(assert (=> b!826720 d!105005))

(declare-fun d!105007 () Bool)

(declare-fun e!460620 () Bool)

(assert (=> d!105007 e!460620))

(declare-fun res!563779 () Bool)

(assert (=> d!105007 (=> (not res!563779) (not e!460620))))

(declare-fun lt!374721 () ListLongMap!8885)

(assert (=> d!105007 (= res!563779 (contains!4182 lt!374721 (_1!5034 lt!374513)))))

(declare-fun lt!374723 () List!15885)

(assert (=> d!105007 (= lt!374721 (ListLongMap!8886 lt!374723))))

(declare-fun lt!374722 () Unit!28351)

(declare-fun lt!374724 () Unit!28351)

(assert (=> d!105007 (= lt!374722 lt!374724)))

(assert (=> d!105007 (= (getValueByKey!406 lt!374723 (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513)))))

(assert (=> d!105007 (= lt!374724 (lemmaContainsTupThenGetReturnValue!222 lt!374723 (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(assert (=> d!105007 (= lt!374723 (insertStrictlySorted!260 (toList!4458 (+!1919 lt!374518 lt!374516)) (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(assert (=> d!105007 (= (+!1919 (+!1919 lt!374518 lt!374516) lt!374513) lt!374721)))

(declare-fun b!826916 () Bool)

(declare-fun res!563780 () Bool)

(assert (=> b!826916 (=> (not res!563780) (not e!460620))))

(assert (=> b!826916 (= res!563780 (= (getValueByKey!406 (toList!4458 lt!374721) (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513))))))

(declare-fun b!826917 () Bool)

(assert (=> b!826917 (= e!460620 (contains!4183 (toList!4458 lt!374721) lt!374513))))

(assert (= (and d!105007 res!563779) b!826916))

(assert (= (and b!826916 res!563780) b!826917))

(declare-fun m!770141 () Bool)

(assert (=> d!105007 m!770141))

(declare-fun m!770143 () Bool)

(assert (=> d!105007 m!770143))

(declare-fun m!770145 () Bool)

(assert (=> d!105007 m!770145))

(declare-fun m!770147 () Bool)

(assert (=> d!105007 m!770147))

(declare-fun m!770149 () Bool)

(assert (=> b!826916 m!770149))

(declare-fun m!770151 () Bool)

(assert (=> b!826917 m!770151))

(assert (=> b!826720 d!105007))

(declare-fun d!105009 () Bool)

(assert (=> d!105009 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71204 d!105009))

(declare-fun d!105011 () Bool)

(assert (=> d!105011 (= (array_inv!17651 _keys!976) (bvsge (size!22587 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71204 d!105011))

(declare-fun d!105013 () Bool)

(assert (=> d!105013 (= (array_inv!17652 _values!788) (bvsge (size!22588 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71204 d!105013))

(declare-fun d!105015 () Bool)

(declare-fun e!460621 () Bool)

(assert (=> d!105015 e!460621))

(declare-fun res!563781 () Bool)

(assert (=> d!105015 (=> (not res!563781) (not e!460621))))

(declare-fun lt!374725 () ListLongMap!8885)

(assert (=> d!105015 (= res!563781 (contains!4182 lt!374725 (_1!5034 lt!374516)))))

(declare-fun lt!374727 () List!15885)

(assert (=> d!105015 (= lt!374725 (ListLongMap!8886 lt!374727))))

(declare-fun lt!374726 () Unit!28351)

(declare-fun lt!374728 () Unit!28351)

(assert (=> d!105015 (= lt!374726 lt!374728)))

(assert (=> d!105015 (= (getValueByKey!406 lt!374727 (_1!5034 lt!374516)) (Some!411 (_2!5034 lt!374516)))))

(assert (=> d!105015 (= lt!374728 (lemmaContainsTupThenGetReturnValue!222 lt!374727 (_1!5034 lt!374516) (_2!5034 lt!374516)))))

(assert (=> d!105015 (= lt!374727 (insertStrictlySorted!260 (toList!4458 (+!1919 lt!374522 lt!374513)) (_1!5034 lt!374516) (_2!5034 lt!374516)))))

(assert (=> d!105015 (= (+!1919 (+!1919 lt!374522 lt!374513) lt!374516) lt!374725)))

(declare-fun b!826918 () Bool)

(declare-fun res!563782 () Bool)

(assert (=> b!826918 (=> (not res!563782) (not e!460621))))

(assert (=> b!826918 (= res!563782 (= (getValueByKey!406 (toList!4458 lt!374725) (_1!5034 lt!374516)) (Some!411 (_2!5034 lt!374516))))))

(declare-fun b!826919 () Bool)

(assert (=> b!826919 (= e!460621 (contains!4183 (toList!4458 lt!374725) lt!374516))))

(assert (= (and d!105015 res!563781) b!826918))

(assert (= (and b!826918 res!563782) b!826919))

(declare-fun m!770153 () Bool)

(assert (=> d!105015 m!770153))

(declare-fun m!770155 () Bool)

(assert (=> d!105015 m!770155))

(declare-fun m!770157 () Bool)

(assert (=> d!105015 m!770157))

(declare-fun m!770159 () Bool)

(assert (=> d!105015 m!770159))

(declare-fun m!770161 () Bool)

(assert (=> b!826918 m!770161))

(declare-fun m!770163 () Bool)

(assert (=> b!826919 m!770163))

(assert (=> b!826728 d!105015))

(declare-fun d!105017 () Bool)

(declare-fun e!460622 () Bool)

(assert (=> d!105017 e!460622))

(declare-fun res!563783 () Bool)

(assert (=> d!105017 (=> (not res!563783) (not e!460622))))

(declare-fun lt!374729 () ListLongMap!8885)

(assert (=> d!105017 (= res!563783 (contains!4182 lt!374729 (_1!5034 lt!374513)))))

(declare-fun lt!374731 () List!15885)

(assert (=> d!105017 (= lt!374729 (ListLongMap!8886 lt!374731))))

(declare-fun lt!374730 () Unit!28351)

(declare-fun lt!374732 () Unit!28351)

(assert (=> d!105017 (= lt!374730 lt!374732)))

(assert (=> d!105017 (= (getValueByKey!406 lt!374731 (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513)))))

(assert (=> d!105017 (= lt!374732 (lemmaContainsTupThenGetReturnValue!222 lt!374731 (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(assert (=> d!105017 (= lt!374731 (insertStrictlySorted!260 (toList!4458 lt!374522) (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(assert (=> d!105017 (= (+!1919 lt!374522 lt!374513) lt!374729)))

(declare-fun b!826920 () Bool)

(declare-fun res!563784 () Bool)

(assert (=> b!826920 (=> (not res!563784) (not e!460622))))

(assert (=> b!826920 (= res!563784 (= (getValueByKey!406 (toList!4458 lt!374729) (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513))))))

(declare-fun b!826921 () Bool)

(assert (=> b!826921 (= e!460622 (contains!4183 (toList!4458 lt!374729) lt!374513))))

(assert (= (and d!105017 res!563783) b!826920))

(assert (= (and b!826920 res!563784) b!826921))

(declare-fun m!770165 () Bool)

(assert (=> d!105017 m!770165))

(declare-fun m!770167 () Bool)

(assert (=> d!105017 m!770167))

(declare-fun m!770169 () Bool)

(assert (=> d!105017 m!770169))

(declare-fun m!770171 () Bool)

(assert (=> d!105017 m!770171))

(declare-fun m!770173 () Bool)

(assert (=> b!826920 m!770173))

(declare-fun m!770175 () Bool)

(assert (=> b!826921 m!770175))

(assert (=> b!826728 d!105017))

(declare-fun b!826930 () Bool)

(declare-fun e!460631 () Bool)

(declare-fun call!35943 () Bool)

(assert (=> b!826930 (= e!460631 call!35943)))

(declare-fun d!105019 () Bool)

(declare-fun res!563789 () Bool)

(declare-fun e!460630 () Bool)

(assert (=> d!105019 (=> res!563789 e!460630)))

(assert (=> d!105019 (= res!563789 (bvsge #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(assert (=> d!105019 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!460630)))

(declare-fun b!826931 () Bool)

(assert (=> b!826931 (= e!460630 e!460631)))

(declare-fun c!89434 () Bool)

(assert (=> b!826931 (= c!89434 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!826932 () Bool)

(declare-fun e!460629 () Bool)

(assert (=> b!826932 (= e!460629 call!35943)))

(declare-fun bm!35940 () Bool)

(assert (=> bm!35940 (= call!35943 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!826933 () Bool)

(assert (=> b!826933 (= e!460631 e!460629)))

(declare-fun lt!374740 () (_ BitVec 64))

(assert (=> b!826933 (= lt!374740 (select (arr!22166 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!374741 () Unit!28351)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46250 (_ BitVec 64) (_ BitVec 32)) Unit!28351)

(assert (=> b!826933 (= lt!374741 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!374740 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!826933 (arrayContainsKey!0 _keys!976 lt!374740 #b00000000000000000000000000000000)))

(declare-fun lt!374739 () Unit!28351)

(assert (=> b!826933 (= lt!374739 lt!374741)))

(declare-fun res!563790 () Bool)

(declare-datatypes ((SeekEntryResult!8724 0))(
  ( (MissingZero!8724 (index!37266 (_ BitVec 32))) (Found!8724 (index!37267 (_ BitVec 32))) (Intermediate!8724 (undefined!9536 Bool) (index!37268 (_ BitVec 32)) (x!69783 (_ BitVec 32))) (Undefined!8724) (MissingVacant!8724 (index!37269 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46250 (_ BitVec 32)) SeekEntryResult!8724)

(assert (=> b!826933 (= res!563790 (= (seekEntryOrOpen!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8724 #b00000000000000000000000000000000)))))

(assert (=> b!826933 (=> (not res!563790) (not e!460629))))

(assert (= (and d!105019 (not res!563789)) b!826931))

(assert (= (and b!826931 c!89434) b!826933))

(assert (= (and b!826931 (not c!89434)) b!826930))

(assert (= (and b!826933 res!563790) b!826932))

(assert (= (or b!826932 b!826930) bm!35940))

(assert (=> b!826931 m!769907))

(assert (=> b!826931 m!769907))

(assert (=> b!826931 m!769909))

(declare-fun m!770177 () Bool)

(assert (=> bm!35940 m!770177))

(assert (=> b!826933 m!769907))

(declare-fun m!770179 () Bool)

(assert (=> b!826933 m!770179))

(declare-fun m!770181 () Bool)

(assert (=> b!826933 m!770181))

(assert (=> b!826933 m!769907))

(declare-fun m!770183 () Bool)

(assert (=> b!826933 m!770183))

(assert (=> b!826721 d!105019))

(declare-fun d!105021 () Bool)

(declare-fun e!460632 () Bool)

(assert (=> d!105021 e!460632))

(declare-fun res!563791 () Bool)

(assert (=> d!105021 (=> (not res!563791) (not e!460632))))

(declare-fun lt!374742 () ListLongMap!8885)

(assert (=> d!105021 (= res!563791 (contains!4182 lt!374742 (_1!5034 lt!374513)))))

(declare-fun lt!374744 () List!15885)

(assert (=> d!105021 (= lt!374742 (ListLongMap!8886 lt!374744))))

(declare-fun lt!374743 () Unit!28351)

(declare-fun lt!374745 () Unit!28351)

(assert (=> d!105021 (= lt!374743 lt!374745)))

(assert (=> d!105021 (= (getValueByKey!406 lt!374744 (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513)))))

(assert (=> d!105021 (= lt!374745 (lemmaContainsTupThenGetReturnValue!222 lt!374744 (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(assert (=> d!105021 (= lt!374744 (insertStrictlySorted!260 (toList!4458 (+!1919 lt!374522 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (_1!5034 lt!374513) (_2!5034 lt!374513)))))

(assert (=> d!105021 (= (+!1919 (+!1919 lt!374522 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374513) lt!374742)))

(declare-fun b!826934 () Bool)

(declare-fun res!563792 () Bool)

(assert (=> b!826934 (=> (not res!563792) (not e!460632))))

(assert (=> b!826934 (= res!563792 (= (getValueByKey!406 (toList!4458 lt!374742) (_1!5034 lt!374513)) (Some!411 (_2!5034 lt!374513))))))

(declare-fun b!826935 () Bool)

(assert (=> b!826935 (= e!460632 (contains!4183 (toList!4458 lt!374742) lt!374513))))

(assert (= (and d!105021 res!563791) b!826934))

(assert (= (and b!826934 res!563792) b!826935))

(declare-fun m!770185 () Bool)

(assert (=> d!105021 m!770185))

(declare-fun m!770187 () Bool)

(assert (=> d!105021 m!770187))

(declare-fun m!770189 () Bool)

(assert (=> d!105021 m!770189))

(declare-fun m!770191 () Bool)

(assert (=> d!105021 m!770191))

(declare-fun m!770193 () Bool)

(assert (=> b!826934 m!770193))

(declare-fun m!770195 () Bool)

(assert (=> b!826935 m!770195))

(assert (=> b!826730 d!105021))

(declare-fun d!105023 () Bool)

(declare-fun e!460633 () Bool)

(assert (=> d!105023 e!460633))

(declare-fun res!563793 () Bool)

(assert (=> d!105023 (=> (not res!563793) (not e!460633))))

(declare-fun lt!374746 () ListLongMap!8885)

(assert (=> d!105023 (= res!563793 (contains!4182 lt!374746 (_1!5034 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!374748 () List!15885)

(assert (=> d!105023 (= lt!374746 (ListLongMap!8886 lt!374748))))

(declare-fun lt!374747 () Unit!28351)

(declare-fun lt!374749 () Unit!28351)

(assert (=> d!105023 (= lt!374747 lt!374749)))

(assert (=> d!105023 (= (getValueByKey!406 lt!374748 (_1!5034 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!411 (_2!5034 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105023 (= lt!374749 (lemmaContainsTupThenGetReturnValue!222 lt!374748 (_1!5034 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5034 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105023 (= lt!374748 (insertStrictlySorted!260 (toList!4458 lt!374522) (_1!5034 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5034 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105023 (= (+!1919 lt!374522 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!374746)))

(declare-fun b!826936 () Bool)

(declare-fun res!563794 () Bool)

(assert (=> b!826936 (=> (not res!563794) (not e!460633))))

(assert (=> b!826936 (= res!563794 (= (getValueByKey!406 (toList!4458 lt!374746) (_1!5034 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!411 (_2!5034 (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!826937 () Bool)

(assert (=> b!826937 (= e!460633 (contains!4183 (toList!4458 lt!374746) (tuple2!10049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!105023 res!563793) b!826936))

(assert (= (and b!826936 res!563794) b!826937))

(declare-fun m!770197 () Bool)

(assert (=> d!105023 m!770197))

(declare-fun m!770199 () Bool)

(assert (=> d!105023 m!770199))

(declare-fun m!770201 () Bool)

(assert (=> d!105023 m!770201))

(declare-fun m!770203 () Bool)

(assert (=> d!105023 m!770203))

(declare-fun m!770205 () Bool)

(assert (=> b!826936 m!770205))

(declare-fun m!770207 () Bool)

(assert (=> b!826937 m!770207))

(assert (=> b!826730 d!105023))

(declare-fun d!105025 () Bool)

(declare-fun res!563802 () Bool)

(declare-fun e!460645 () Bool)

(assert (=> d!105025 (=> res!563802 e!460645)))

(assert (=> d!105025 (= res!563802 (bvsge #b00000000000000000000000000000000 (size!22587 _keys!976)))))

(assert (=> d!105025 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15883) e!460645)))

(declare-fun b!826948 () Bool)

(declare-fun e!460644 () Bool)

(declare-fun call!35946 () Bool)

(assert (=> b!826948 (= e!460644 call!35946)))

(declare-fun b!826949 () Bool)

(declare-fun e!460642 () Bool)

(declare-fun contains!4184 (List!15886 (_ BitVec 64)) Bool)

(assert (=> b!826949 (= e!460642 (contains!4184 Nil!15883 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!826950 () Bool)

(assert (=> b!826950 (= e!460644 call!35946)))

(declare-fun b!826951 () Bool)

(declare-fun e!460643 () Bool)

(assert (=> b!826951 (= e!460645 e!460643)))

(declare-fun res!563801 () Bool)

(assert (=> b!826951 (=> (not res!563801) (not e!460643))))

(assert (=> b!826951 (= res!563801 (not e!460642))))

(declare-fun res!563803 () Bool)

(assert (=> b!826951 (=> (not res!563803) (not e!460642))))

(assert (=> b!826951 (= res!563803 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!826952 () Bool)

(assert (=> b!826952 (= e!460643 e!460644)))

(declare-fun c!89437 () Bool)

(assert (=> b!826952 (= c!89437 (validKeyInArray!0 (select (arr!22166 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!35943 () Bool)

(assert (=> bm!35943 (= call!35946 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89437 (Cons!15882 (select (arr!22166 _keys!976) #b00000000000000000000000000000000) Nil!15883) Nil!15883)))))

(assert (= (and d!105025 (not res!563802)) b!826951))

(assert (= (and b!826951 res!563803) b!826949))

(assert (= (and b!826951 res!563801) b!826952))

(assert (= (and b!826952 c!89437) b!826950))

(assert (= (and b!826952 (not c!89437)) b!826948))

(assert (= (or b!826950 b!826948) bm!35943))

(assert (=> b!826949 m!769907))

(assert (=> b!826949 m!769907))

(declare-fun m!770209 () Bool)

(assert (=> b!826949 m!770209))

(assert (=> b!826951 m!769907))

(assert (=> b!826951 m!769907))

(assert (=> b!826951 m!769909))

(assert (=> b!826952 m!769907))

(assert (=> b!826952 m!769907))

(assert (=> b!826952 m!769909))

(assert (=> bm!35943 m!769907))

(declare-fun m!770211 () Bool)

(assert (=> bm!35943 m!770211))

(assert (=> b!826725 d!105025))

(declare-fun mapNonEmpty!24217 () Bool)

(declare-fun mapRes!24217 () Bool)

(declare-fun tp!46810 () Bool)

(declare-fun e!460651 () Bool)

(assert (=> mapNonEmpty!24217 (= mapRes!24217 (and tp!46810 e!460651))))

(declare-fun mapKey!24217 () (_ BitVec 32))

(declare-fun mapValue!24217 () ValueCell!7113)

(declare-fun mapRest!24217 () (Array (_ BitVec 32) ValueCell!7113))

(assert (=> mapNonEmpty!24217 (= mapRest!24211 (store mapRest!24217 mapKey!24217 mapValue!24217))))

(declare-fun condMapEmpty!24217 () Bool)

(declare-fun mapDefault!24217 () ValueCell!7113)

(assert (=> mapNonEmpty!24211 (= condMapEmpty!24217 (= mapRest!24211 ((as const (Array (_ BitVec 32) ValueCell!7113)) mapDefault!24217)))))

(declare-fun e!460650 () Bool)

(assert (=> mapNonEmpty!24211 (= tp!46800 (and e!460650 mapRes!24217))))

(declare-fun mapIsEmpty!24217 () Bool)

(assert (=> mapIsEmpty!24217 mapRes!24217))

(declare-fun b!826960 () Bool)

(assert (=> b!826960 (= e!460650 tp_is_empty!15057)))

(declare-fun b!826959 () Bool)

(assert (=> b!826959 (= e!460651 tp_is_empty!15057)))

(assert (= (and mapNonEmpty!24211 condMapEmpty!24217) mapIsEmpty!24217))

(assert (= (and mapNonEmpty!24211 (not condMapEmpty!24217)) mapNonEmpty!24217))

(assert (= (and mapNonEmpty!24217 ((_ is ValueCellFull!7113) mapValue!24217)) b!826959))

(assert (= (and mapNonEmpty!24211 ((_ is ValueCellFull!7113) mapDefault!24217)) b!826960))

(declare-fun m!770213 () Bool)

(assert (=> mapNonEmpty!24217 m!770213))

(declare-fun b_lambda!11181 () Bool)

(assert (= b_lambda!11171 (or (and start!71204 b_free!13347) b_lambda!11181)))

(declare-fun b_lambda!11183 () Bool)

(assert (= b_lambda!11175 (or (and start!71204 b_free!13347) b_lambda!11183)))

(declare-fun b_lambda!11185 () Bool)

(assert (= b_lambda!11169 (or (and start!71204 b_free!13347) b_lambda!11185)))

(declare-fun b_lambda!11187 () Bool)

(assert (= b_lambda!11173 (or (and start!71204 b_free!13347) b_lambda!11187)))

(declare-fun b_lambda!11189 () Bool)

(assert (= b_lambda!11179 (or (and start!71204 b_free!13347) b_lambda!11189)))

(declare-fun b_lambda!11191 () Bool)

(assert (= b_lambda!11177 (or (and start!71204 b_free!13347) b_lambda!11191)))

(check-sat (not bm!35943) (not b!826818) (not b!826892) (not d!105021) (not b!826899) (not d!105007) (not b!826871) (not b!826874) (not b!826933) (not d!104985) (not b!826921) (not b!826916) (not d!104995) b_and!22305 (not d!104981) (not b!826891) (not b!826904) (not b!826920) (not bm!35930) (not d!104997) tp_is_empty!15057 (not b!826812) (not d!105001) (not b!826931) (not b!826795) (not bm!35932) (not bm!35931) (not b_lambda!11189) (not b!826873) (not b!826934) (not bm!35924) (not b_lambda!11185) (not b!826900) (not b!826935) (not b!826886) (not b!826806) (not b!826914) (not b!826865) (not b!826878) (not b!826788) (not bm!35937) (not b!826819) (not d!104989) (not b!826887) (not b!826936) (not b!826809) (not b!826798) (not b!826905) (not d!104993) (not b!826949) (not b!826868) (not b_lambda!11181) (not b!826902) (not d!104999) (not b!826810) (not bm!35908) (not b!826811) (not b!826883) (not b!826797) (not b!826909) (not b!826792) (not b!826918) (not mapNonEmpty!24217) (not b_lambda!11187) (not b!826799) (not b!826915) (not b_lambda!11191) (not b!826917) (not b!826910) (not b!826796) (not b_next!13347) (not bm!35936) (not b!826951) (not bm!35925) (not b!826952) (not d!105003) (not b!826794) (not d!105017) (not d!105015) (not bm!35929) (not bm!35940) (not b!826885) (not bm!35909) (not b!826889) (not d!105023) (not b!826888) (not b!826813) (not b!826896) (not b!826890) (not b!826919) (not b!826884) (not b!826937) (not d!105005) (not b!826802) (not d!104987) (not d!104991) (not b!826869) (not b!826808) (not b_lambda!11183) (not d!104983) (not b!826879))
(check-sat b_and!22305 (not b_next!13347))
