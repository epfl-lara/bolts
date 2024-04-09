; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70578 () Bool)

(assert start!70578)

(declare-fun b_free!12861 () Bool)

(declare-fun b_next!12861 () Bool)

(assert (=> start!70578 (= b_free!12861 (not b_next!12861))))

(declare-fun tp!45319 () Bool)

(declare-fun b_and!21721 () Bool)

(assert (=> start!70578 (= tp!45319 b_and!21721)))

(declare-fun mapNonEmpty!23458 () Bool)

(declare-fun mapRes!23458 () Bool)

(declare-fun tp!45318 () Bool)

(declare-fun e!455100 () Bool)

(assert (=> mapNonEmpty!23458 (= mapRes!23458 (and tp!45318 e!455100))))

(declare-fun mapKey!23458 () (_ BitVec 32))

(declare-datatypes ((V!24429 0))(
  ( (V!24430 (val!7333 Int)) )
))
(declare-datatypes ((ValueCell!6870 0))(
  ( (ValueCellFull!6870 (v!9759 V!24429)) (EmptyCell!6870) )
))
(declare-datatypes ((array!45312 0))(
  ( (array!45313 (arr!21705 (Array (_ BitVec 32) ValueCell!6870)) (size!22126 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45312)

(declare-fun mapValue!23458 () ValueCell!6870)

(declare-fun mapRest!23458 () (Array (_ BitVec 32) ValueCell!6870))

(assert (=> mapNonEmpty!23458 (= (arr!21705 _values!788) (store mapRest!23458 mapKey!23458 mapValue!23458))))

(declare-fun b!819416 () Bool)

(declare-fun e!455102 () Bool)

(declare-fun e!455103 () Bool)

(assert (=> b!819416 (= e!455102 (not e!455103))))

(declare-fun res!559259 () Bool)

(assert (=> b!819416 (=> res!559259 e!455103)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819416 (= res!559259 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9662 0))(
  ( (tuple2!9663 (_1!4841 (_ BitVec 64)) (_2!4841 V!24429)) )
))
(declare-datatypes ((List!15523 0))(
  ( (Nil!15520) (Cons!15519 (h!16648 tuple2!9662) (t!21862 List!15523)) )
))
(declare-datatypes ((ListLongMap!8499 0))(
  ( (ListLongMap!8500 (toList!4265 List!15523)) )
))
(declare-fun lt!367806 () ListLongMap!8499)

(declare-fun lt!367810 () ListLongMap!8499)

(assert (=> b!819416 (= lt!367806 lt!367810)))

(declare-fun zeroValueBefore!34 () V!24429)

(declare-datatypes ((array!45314 0))(
  ( (array!45315 (arr!21706 (Array (_ BitVec 32) (_ BitVec 64))) (size!22127 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45314)

(declare-fun minValue!754 () V!24429)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27981 0))(
  ( (Unit!27982) )
))
(declare-fun lt!367809 () Unit!27981)

(declare-fun zeroValueAfter!34 () V!24429)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!419 (array!45314 array!45312 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24429 V!24429 V!24429 V!24429 (_ BitVec 32) Int) Unit!27981)

(assert (=> b!819416 (= lt!367809 (lemmaNoChangeToArrayThenSameMapNoExtras!419 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2303 (array!45314 array!45312 (_ BitVec 32) (_ BitVec 32) V!24429 V!24429 (_ BitVec 32) Int) ListLongMap!8499)

(assert (=> b!819416 (= lt!367810 (getCurrentListMapNoExtraKeys!2303 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819416 (= lt!367806 (getCurrentListMapNoExtraKeys!2303 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819418 () Bool)

(declare-fun res!559260 () Bool)

(assert (=> b!819418 (=> (not res!559260) (not e!455102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45314 (_ BitVec 32)) Bool)

(assert (=> b!819418 (= res!559260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819419 () Bool)

(declare-fun e!455101 () Bool)

(declare-fun tp_is_empty!14571 () Bool)

(assert (=> b!819419 (= e!455101 tp_is_empty!14571)))

(declare-fun e!455099 () Bool)

(declare-fun b!819420 () Bool)

(declare-fun lt!367803 () ListLongMap!8499)

(declare-fun +!1808 (ListLongMap!8499 tuple2!9662) ListLongMap!8499)

(assert (=> b!819420 (= e!455099 (= lt!367803 (+!1808 lt!367810 (tuple2!9663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819421 () Bool)

(declare-fun e!455104 () Bool)

(assert (=> b!819421 (= e!455104 (and e!455101 mapRes!23458))))

(declare-fun condMapEmpty!23458 () Bool)

(declare-fun mapDefault!23458 () ValueCell!6870)

(assert (=> b!819421 (= condMapEmpty!23458 (= (arr!21705 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6870)) mapDefault!23458)))))

(declare-fun b!819422 () Bool)

(assert (=> b!819422 (= e!455103 true)))

(declare-fun lt!367802 () tuple2!9662)

(declare-fun lt!367805 () ListLongMap!8499)

(declare-fun lt!367808 () tuple2!9662)

(assert (=> b!819422 (= lt!367805 (+!1808 (+!1808 lt!367810 lt!367802) lt!367808))))

(declare-fun lt!367807 () ListLongMap!8499)

(assert (=> b!819422 (= (+!1808 lt!367806 lt!367808) (+!1808 lt!367807 lt!367808))))

(declare-fun lt!367804 () Unit!27981)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!186 (ListLongMap!8499 (_ BitVec 64) V!24429 V!24429) Unit!27981)

(assert (=> b!819422 (= lt!367804 (addSameAsAddTwiceSameKeyDiffValues!186 lt!367806 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819422 (= lt!367808 (tuple2!9663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!819422 e!455099))

(declare-fun res!559261 () Bool)

(assert (=> b!819422 (=> (not res!559261) (not e!455099))))

(declare-fun lt!367811 () ListLongMap!8499)

(assert (=> b!819422 (= res!559261 (= lt!367811 lt!367807))))

(assert (=> b!819422 (= lt!367807 (+!1808 lt!367806 lt!367802))))

(assert (=> b!819422 (= lt!367802 (tuple2!9663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2421 (array!45314 array!45312 (_ BitVec 32) (_ BitVec 32) V!24429 V!24429 (_ BitVec 32) Int) ListLongMap!8499)

(assert (=> b!819422 (= lt!367803 (getCurrentListMap!2421 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819422 (= lt!367811 (getCurrentListMap!2421 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819423 () Bool)

(declare-fun res!559257 () Bool)

(assert (=> b!819423 (=> (not res!559257) (not e!455102))))

(assert (=> b!819423 (= res!559257 (and (= (size!22126 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22127 _keys!976) (size!22126 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!559256 () Bool)

(assert (=> start!70578 (=> (not res!559256) (not e!455102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70578 (= res!559256 (validMask!0 mask!1312))))

(assert (=> start!70578 e!455102))

(assert (=> start!70578 tp_is_empty!14571))

(declare-fun array_inv!17321 (array!45314) Bool)

(assert (=> start!70578 (array_inv!17321 _keys!976)))

(assert (=> start!70578 true))

(declare-fun array_inv!17322 (array!45312) Bool)

(assert (=> start!70578 (and (array_inv!17322 _values!788) e!455104)))

(assert (=> start!70578 tp!45319))

(declare-fun b!819417 () Bool)

(assert (=> b!819417 (= e!455100 tp_is_empty!14571)))

(declare-fun mapIsEmpty!23458 () Bool)

(assert (=> mapIsEmpty!23458 mapRes!23458))

(declare-fun b!819424 () Bool)

(declare-fun res!559258 () Bool)

(assert (=> b!819424 (=> (not res!559258) (not e!455102))))

(declare-datatypes ((List!15524 0))(
  ( (Nil!15521) (Cons!15520 (h!16649 (_ BitVec 64)) (t!21863 List!15524)) )
))
(declare-fun arrayNoDuplicates!0 (array!45314 (_ BitVec 32) List!15524) Bool)

(assert (=> b!819424 (= res!559258 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15521))))

(assert (= (and start!70578 res!559256) b!819423))

(assert (= (and b!819423 res!559257) b!819418))

(assert (= (and b!819418 res!559260) b!819424))

(assert (= (and b!819424 res!559258) b!819416))

(assert (= (and b!819416 (not res!559259)) b!819422))

(assert (= (and b!819422 res!559261) b!819420))

(assert (= (and b!819421 condMapEmpty!23458) mapIsEmpty!23458))

(assert (= (and b!819421 (not condMapEmpty!23458)) mapNonEmpty!23458))

(get-info :version)

(assert (= (and mapNonEmpty!23458 ((_ is ValueCellFull!6870) mapValue!23458)) b!819417))

(assert (= (and b!819421 ((_ is ValueCellFull!6870) mapDefault!23458)) b!819419))

(assert (= start!70578 b!819421))

(declare-fun m!761177 () Bool)

(assert (=> b!819424 m!761177))

(declare-fun m!761179 () Bool)

(assert (=> b!819418 m!761179))

(declare-fun m!761181 () Bool)

(assert (=> start!70578 m!761181))

(declare-fun m!761183 () Bool)

(assert (=> start!70578 m!761183))

(declare-fun m!761185 () Bool)

(assert (=> start!70578 m!761185))

(declare-fun m!761187 () Bool)

(assert (=> b!819422 m!761187))

(declare-fun m!761189 () Bool)

(assert (=> b!819422 m!761189))

(declare-fun m!761191 () Bool)

(assert (=> b!819422 m!761191))

(declare-fun m!761193 () Bool)

(assert (=> b!819422 m!761193))

(declare-fun m!761195 () Bool)

(assert (=> b!819422 m!761195))

(declare-fun m!761197 () Bool)

(assert (=> b!819422 m!761197))

(assert (=> b!819422 m!761189))

(declare-fun m!761199 () Bool)

(assert (=> b!819422 m!761199))

(declare-fun m!761201 () Bool)

(assert (=> b!819422 m!761201))

(declare-fun m!761203 () Bool)

(assert (=> b!819420 m!761203))

(declare-fun m!761205 () Bool)

(assert (=> b!819416 m!761205))

(declare-fun m!761207 () Bool)

(assert (=> b!819416 m!761207))

(declare-fun m!761209 () Bool)

(assert (=> b!819416 m!761209))

(declare-fun m!761211 () Bool)

(assert (=> mapNonEmpty!23458 m!761211))

(check-sat (not b!819424) (not b!819418) b_and!21721 (not b!819416) (not start!70578) (not b!819420) (not mapNonEmpty!23458) (not b!819422) (not b_next!12861) tp_is_empty!14571)
(check-sat b_and!21721 (not b_next!12861))
