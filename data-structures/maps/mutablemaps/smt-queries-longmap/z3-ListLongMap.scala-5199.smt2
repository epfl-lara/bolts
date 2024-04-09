; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70234 () Bool)

(assert start!70234)

(declare-fun b_free!12603 () Bool)

(declare-fun b_next!12603 () Bool)

(assert (=> start!70234 (= b_free!12603 (not b_next!12603))))

(declare-fun tp!44530 () Bool)

(declare-fun b_and!21409 () Bool)

(assert (=> start!70234 (= tp!44530 b_and!21409)))

(declare-fun b!815520 () Bool)

(declare-fun res!556971 () Bool)

(declare-fun e!452282 () Bool)

(assert (=> b!815520 (=> (not res!556971) (not e!452282))))

(declare-datatypes ((array!44814 0))(
  ( (array!44815 (arr!21461 (Array (_ BitVec 32) (_ BitVec 64))) (size!21882 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44814)

(declare-datatypes ((List!15335 0))(
  ( (Nil!15332) (Cons!15331 (h!16460 (_ BitVec 64)) (t!21664 List!15335)) )
))
(declare-fun arrayNoDuplicates!0 (array!44814 (_ BitVec 32) List!15335) Bool)

(assert (=> b!815520 (= res!556971 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15332))))

(declare-fun b!815521 () Bool)

(declare-fun e!452281 () Bool)

(declare-fun tp_is_empty!14313 () Bool)

(assert (=> b!815521 (= e!452281 tp_is_empty!14313)))

(declare-fun b!815522 () Bool)

(declare-fun e!452280 () Bool)

(declare-fun mapRes!23056 () Bool)

(assert (=> b!815522 (= e!452280 (and e!452281 mapRes!23056))))

(declare-fun condMapEmpty!23056 () Bool)

(declare-datatypes ((V!24085 0))(
  ( (V!24086 (val!7204 Int)) )
))
(declare-datatypes ((ValueCell!6741 0))(
  ( (ValueCellFull!6741 (v!9627 V!24085)) (EmptyCell!6741) )
))
(declare-datatypes ((array!44816 0))(
  ( (array!44817 (arr!21462 (Array (_ BitVec 32) ValueCell!6741)) (size!21883 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44816)

(declare-fun mapDefault!23056 () ValueCell!6741)

(assert (=> b!815522 (= condMapEmpty!23056 (= (arr!21462 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6741)) mapDefault!23056)))))

(declare-fun b!815523 () Bool)

(declare-fun e!452279 () Bool)

(assert (=> b!815523 (= e!452279 true)))

(declare-fun zeroValueAfter!34 () V!24085)

(declare-fun minValue!754 () V!24085)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9464 0))(
  ( (tuple2!9465 (_1!4742 (_ BitVec 64)) (_2!4742 V!24085)) )
))
(declare-datatypes ((List!15336 0))(
  ( (Nil!15333) (Cons!15332 (h!16461 tuple2!9464) (t!21665 List!15336)) )
))
(declare-datatypes ((ListLongMap!8301 0))(
  ( (ListLongMap!8302 (toList!4166 List!15336)) )
))
(declare-fun lt!365140 () ListLongMap!8301)

(declare-fun getCurrentListMap!2359 (array!44814 array!44816 (_ BitVec 32) (_ BitVec 32) V!24085 V!24085 (_ BitVec 32) Int) ListLongMap!8301)

(assert (=> b!815523 (= lt!365140 (getCurrentListMap!2359 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24085)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!365136 () ListLongMap!8301)

(declare-fun +!1758 (ListLongMap!8301 tuple2!9464) ListLongMap!8301)

(assert (=> b!815523 (= lt!365136 (+!1758 (getCurrentListMap!2359 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815524 () Bool)

(declare-fun e!452283 () Bool)

(assert (=> b!815524 (= e!452283 tp_is_empty!14313)))

(declare-fun mapNonEmpty!23056 () Bool)

(declare-fun tp!44529 () Bool)

(assert (=> mapNonEmpty!23056 (= mapRes!23056 (and tp!44529 e!452283))))

(declare-fun mapValue!23056 () ValueCell!6741)

(declare-fun mapKey!23056 () (_ BitVec 32))

(declare-fun mapRest!23056 () (Array (_ BitVec 32) ValueCell!6741))

(assert (=> mapNonEmpty!23056 (= (arr!21462 _values!788) (store mapRest!23056 mapKey!23056 mapValue!23056))))

(declare-fun b!815525 () Bool)

(assert (=> b!815525 (= e!452282 (not e!452279))))

(declare-fun res!556974 () Bool)

(assert (=> b!815525 (=> res!556974 e!452279)))

(assert (=> b!815525 (= res!556974 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365137 () ListLongMap!8301)

(declare-fun lt!365139 () ListLongMap!8301)

(assert (=> b!815525 (= lt!365137 lt!365139)))

(declare-datatypes ((Unit!27788 0))(
  ( (Unit!27789) )
))
(declare-fun lt!365138 () Unit!27788)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!331 (array!44814 array!44816 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24085 V!24085 V!24085 V!24085 (_ BitVec 32) Int) Unit!27788)

(assert (=> b!815525 (= lt!365138 (lemmaNoChangeToArrayThenSameMapNoExtras!331 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2215 (array!44814 array!44816 (_ BitVec 32) (_ BitVec 32) V!24085 V!24085 (_ BitVec 32) Int) ListLongMap!8301)

(assert (=> b!815525 (= lt!365139 (getCurrentListMapNoExtraKeys!2215 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815525 (= lt!365137 (getCurrentListMapNoExtraKeys!2215 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815526 () Bool)

(declare-fun res!556973 () Bool)

(assert (=> b!815526 (=> (not res!556973) (not e!452282))))

(assert (=> b!815526 (= res!556973 (and (= (size!21883 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21882 _keys!976) (size!21883 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815527 () Bool)

(declare-fun res!556972 () Bool)

(assert (=> b!815527 (=> (not res!556972) (not e!452282))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44814 (_ BitVec 32)) Bool)

(assert (=> b!815527 (= res!556972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!556975 () Bool)

(assert (=> start!70234 (=> (not res!556975) (not e!452282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70234 (= res!556975 (validMask!0 mask!1312))))

(assert (=> start!70234 e!452282))

(assert (=> start!70234 tp_is_empty!14313))

(declare-fun array_inv!17151 (array!44814) Bool)

(assert (=> start!70234 (array_inv!17151 _keys!976)))

(assert (=> start!70234 true))

(declare-fun array_inv!17152 (array!44816) Bool)

(assert (=> start!70234 (and (array_inv!17152 _values!788) e!452280)))

(assert (=> start!70234 tp!44530))

(declare-fun mapIsEmpty!23056 () Bool)

(assert (=> mapIsEmpty!23056 mapRes!23056))

(assert (= (and start!70234 res!556975) b!815526))

(assert (= (and b!815526 res!556973) b!815527))

(assert (= (and b!815527 res!556972) b!815520))

(assert (= (and b!815520 res!556971) b!815525))

(assert (= (and b!815525 (not res!556974)) b!815523))

(assert (= (and b!815522 condMapEmpty!23056) mapIsEmpty!23056))

(assert (= (and b!815522 (not condMapEmpty!23056)) mapNonEmpty!23056))

(get-info :version)

(assert (= (and mapNonEmpty!23056 ((_ is ValueCellFull!6741) mapValue!23056)) b!815524))

(assert (= (and b!815522 ((_ is ValueCellFull!6741) mapDefault!23056)) b!815521))

(assert (= start!70234 b!815522))

(declare-fun m!757259 () Bool)

(assert (=> mapNonEmpty!23056 m!757259))

(declare-fun m!757261 () Bool)

(assert (=> b!815520 m!757261))

(declare-fun m!757263 () Bool)

(assert (=> b!815525 m!757263))

(declare-fun m!757265 () Bool)

(assert (=> b!815525 m!757265))

(declare-fun m!757267 () Bool)

(assert (=> b!815525 m!757267))

(declare-fun m!757269 () Bool)

(assert (=> start!70234 m!757269))

(declare-fun m!757271 () Bool)

(assert (=> start!70234 m!757271))

(declare-fun m!757273 () Bool)

(assert (=> start!70234 m!757273))

(declare-fun m!757275 () Bool)

(assert (=> b!815527 m!757275))

(declare-fun m!757277 () Bool)

(assert (=> b!815523 m!757277))

(declare-fun m!757279 () Bool)

(assert (=> b!815523 m!757279))

(assert (=> b!815523 m!757279))

(declare-fun m!757281 () Bool)

(assert (=> b!815523 m!757281))

(check-sat b_and!21409 (not mapNonEmpty!23056) (not b_next!12603) tp_is_empty!14313 (not start!70234) (not b!815525) (not b!815527) (not b!815520) (not b!815523))
(check-sat b_and!21409 (not b_next!12603))
