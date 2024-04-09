; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70504 () Bool)

(assert start!70504)

(declare-fun b_free!12807 () Bool)

(declare-fun b_next!12807 () Bool)

(assert (=> start!70504 (= b_free!12807 (not b_next!12807))))

(declare-fun tp!45153 () Bool)

(declare-fun b_and!21655 () Bool)

(assert (=> start!70504 (= tp!45153 b_and!21655)))

(declare-fun b!818493 () Bool)

(declare-fun e!454412 () Bool)

(declare-fun e!454414 () Bool)

(declare-fun mapRes!23374 () Bool)

(assert (=> b!818493 (= e!454412 (and e!454414 mapRes!23374))))

(declare-fun condMapEmpty!23374 () Bool)

(declare-datatypes ((V!24357 0))(
  ( (V!24358 (val!7306 Int)) )
))
(declare-datatypes ((ValueCell!6843 0))(
  ( (ValueCellFull!6843 (v!9731 V!24357)) (EmptyCell!6843) )
))
(declare-datatypes ((array!45206 0))(
  ( (array!45207 (arr!21653 (Array (_ BitVec 32) ValueCell!6843)) (size!22074 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45206)

(declare-fun mapDefault!23374 () ValueCell!6843)

(assert (=> b!818493 (= condMapEmpty!23374 (= (arr!21653 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6843)) mapDefault!23374)))))

(declare-fun b!818494 () Bool)

(declare-fun e!454409 () Bool)

(declare-fun tp_is_empty!14517 () Bool)

(assert (=> b!818494 (= e!454409 tp_is_empty!14517)))

(declare-fun res!558678 () Bool)

(declare-fun e!454408 () Bool)

(assert (=> start!70504 (=> (not res!558678) (not e!454408))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70504 (= res!558678 (validMask!0 mask!1312))))

(assert (=> start!70504 e!454408))

(assert (=> start!70504 tp_is_empty!14517))

(declare-datatypes ((array!45208 0))(
  ( (array!45209 (arr!21654 (Array (_ BitVec 32) (_ BitVec 64))) (size!22075 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45208)

(declare-fun array_inv!17283 (array!45208) Bool)

(assert (=> start!70504 (array_inv!17283 _keys!976)))

(assert (=> start!70504 true))

(declare-fun array_inv!17284 (array!45206) Bool)

(assert (=> start!70504 (and (array_inv!17284 _values!788) e!454412)))

(assert (=> start!70504 tp!45153))

(declare-fun b!818495 () Bool)

(assert (=> b!818495 (= e!454414 tp_is_empty!14517)))

(declare-fun zeroValueAfter!34 () V!24357)

(declare-fun e!454410 () Bool)

(declare-datatypes ((tuple2!9614 0))(
  ( (tuple2!9615 (_1!4817 (_ BitVec 64)) (_2!4817 V!24357)) )
))
(declare-datatypes ((List!15479 0))(
  ( (Nil!15476) (Cons!15475 (h!16604 tuple2!9614) (t!21816 List!15479)) )
))
(declare-datatypes ((ListLongMap!8451 0))(
  ( (ListLongMap!8452 (toList!4241 List!15479)) )
))
(declare-fun lt!366839 () ListLongMap!8451)

(declare-fun lt!366845 () ListLongMap!8451)

(declare-fun b!818496 () Bool)

(declare-fun +!1786 (ListLongMap!8451 tuple2!9614) ListLongMap!8451)

(assert (=> b!818496 (= e!454410 (= lt!366845 (+!1786 lt!366839 (tuple2!9615 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun mapIsEmpty!23374 () Bool)

(assert (=> mapIsEmpty!23374 mapRes!23374))

(declare-fun b!818497 () Bool)

(declare-fun e!454413 () Bool)

(assert (=> b!818497 (= e!454408 (not e!454413))))

(declare-fun res!558681 () Bool)

(assert (=> b!818497 (=> res!558681 e!454413)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818497 (= res!558681 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366844 () ListLongMap!8451)

(assert (=> b!818497 (= lt!366844 lt!366839)))

(declare-fun zeroValueBefore!34 () V!24357)

(declare-fun minValue!754 () V!24357)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27931 0))(
  ( (Unit!27932) )
))
(declare-fun lt!366847 () Unit!27931)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!400 (array!45208 array!45206 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24357 V!24357 V!24357 V!24357 (_ BitVec 32) Int) Unit!27931)

(assert (=> b!818497 (= lt!366847 (lemmaNoChangeToArrayThenSameMapNoExtras!400 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2284 (array!45208 array!45206 (_ BitVec 32) (_ BitVec 32) V!24357 V!24357 (_ BitVec 32) Int) ListLongMap!8451)

(assert (=> b!818497 (= lt!366839 (getCurrentListMapNoExtraKeys!2284 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818497 (= lt!366844 (getCurrentListMapNoExtraKeys!2284 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818498 () Bool)

(assert (=> b!818498 (= e!454413 true)))

(declare-fun lt!366846 () ListLongMap!8451)

(declare-fun lt!366838 () tuple2!9614)

(declare-fun lt!366840 () tuple2!9614)

(assert (=> b!818498 (= lt!366846 (+!1786 (+!1786 lt!366839 lt!366838) lt!366840))))

(declare-fun lt!366841 () ListLongMap!8451)

(assert (=> b!818498 (= (+!1786 lt!366844 lt!366840) (+!1786 lt!366841 lt!366840))))

(declare-fun lt!366842 () Unit!27931)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!166 (ListLongMap!8451 (_ BitVec 64) V!24357 V!24357) Unit!27931)

(assert (=> b!818498 (= lt!366842 (addSameAsAddTwiceSameKeyDiffValues!166 lt!366844 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818498 (= lt!366840 (tuple2!9615 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!818498 e!454410))

(declare-fun res!558679 () Bool)

(assert (=> b!818498 (=> (not res!558679) (not e!454410))))

(declare-fun lt!366843 () ListLongMap!8451)

(assert (=> b!818498 (= res!558679 (= lt!366843 lt!366841))))

(assert (=> b!818498 (= lt!366841 (+!1786 lt!366844 lt!366838))))

(assert (=> b!818498 (= lt!366838 (tuple2!9615 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2401 (array!45208 array!45206 (_ BitVec 32) (_ BitVec 32) V!24357 V!24357 (_ BitVec 32) Int) ListLongMap!8451)

(assert (=> b!818498 (= lt!366845 (getCurrentListMap!2401 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818498 (= lt!366843 (getCurrentListMap!2401 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818499 () Bool)

(declare-fun res!558680 () Bool)

(assert (=> b!818499 (=> (not res!558680) (not e!454408))))

(declare-datatypes ((List!15480 0))(
  ( (Nil!15477) (Cons!15476 (h!16605 (_ BitVec 64)) (t!21817 List!15480)) )
))
(declare-fun arrayNoDuplicates!0 (array!45208 (_ BitVec 32) List!15480) Bool)

(assert (=> b!818499 (= res!558680 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15477))))

(declare-fun mapNonEmpty!23374 () Bool)

(declare-fun tp!45154 () Bool)

(assert (=> mapNonEmpty!23374 (= mapRes!23374 (and tp!45154 e!454409))))

(declare-fun mapKey!23374 () (_ BitVec 32))

(declare-fun mapRest!23374 () (Array (_ BitVec 32) ValueCell!6843))

(declare-fun mapValue!23374 () ValueCell!6843)

(assert (=> mapNonEmpty!23374 (= (arr!21653 _values!788) (store mapRest!23374 mapKey!23374 mapValue!23374))))

(declare-fun b!818500 () Bool)

(declare-fun res!558682 () Bool)

(assert (=> b!818500 (=> (not res!558682) (not e!454408))))

(assert (=> b!818500 (= res!558682 (and (= (size!22074 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22075 _keys!976) (size!22074 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818501 () Bool)

(declare-fun res!558683 () Bool)

(assert (=> b!818501 (=> (not res!558683) (not e!454408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45208 (_ BitVec 32)) Bool)

(assert (=> b!818501 (= res!558683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70504 res!558678) b!818500))

(assert (= (and b!818500 res!558682) b!818501))

(assert (= (and b!818501 res!558683) b!818499))

(assert (= (and b!818499 res!558680) b!818497))

(assert (= (and b!818497 (not res!558681)) b!818498))

(assert (= (and b!818498 res!558679) b!818496))

(assert (= (and b!818493 condMapEmpty!23374) mapIsEmpty!23374))

(assert (= (and b!818493 (not condMapEmpty!23374)) mapNonEmpty!23374))

(get-info :version)

(assert (= (and mapNonEmpty!23374 ((_ is ValueCellFull!6843) mapValue!23374)) b!818494))

(assert (= (and b!818493 ((_ is ValueCellFull!6843) mapDefault!23374)) b!818495))

(assert (= start!70504 b!818493))

(declare-fun m!759967 () Bool)

(assert (=> mapNonEmpty!23374 m!759967))

(declare-fun m!759969 () Bool)

(assert (=> b!818497 m!759969))

(declare-fun m!759971 () Bool)

(assert (=> b!818497 m!759971))

(declare-fun m!759973 () Bool)

(assert (=> b!818497 m!759973))

(declare-fun m!759975 () Bool)

(assert (=> b!818499 m!759975))

(declare-fun m!759977 () Bool)

(assert (=> start!70504 m!759977))

(declare-fun m!759979 () Bool)

(assert (=> start!70504 m!759979))

(declare-fun m!759981 () Bool)

(assert (=> start!70504 m!759981))

(declare-fun m!759983 () Bool)

(assert (=> b!818498 m!759983))

(declare-fun m!759985 () Bool)

(assert (=> b!818498 m!759985))

(declare-fun m!759987 () Bool)

(assert (=> b!818498 m!759987))

(declare-fun m!759989 () Bool)

(assert (=> b!818498 m!759989))

(declare-fun m!759991 () Bool)

(assert (=> b!818498 m!759991))

(declare-fun m!759993 () Bool)

(assert (=> b!818498 m!759993))

(assert (=> b!818498 m!759983))

(declare-fun m!759995 () Bool)

(assert (=> b!818498 m!759995))

(declare-fun m!759997 () Bool)

(assert (=> b!818498 m!759997))

(declare-fun m!759999 () Bool)

(assert (=> b!818501 m!759999))

(declare-fun m!760001 () Bool)

(assert (=> b!818496 m!760001))

(check-sat (not b!818498) (not start!70504) (not b!818496) (not b!818501) (not b!818499) (not mapNonEmpty!23374) tp_is_empty!14517 b_and!21655 (not b_next!12807) (not b!818497))
(check-sat b_and!21655 (not b_next!12807))
