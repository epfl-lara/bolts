; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41856 () Bool)

(assert start!41856)

(declare-fun b_free!11451 () Bool)

(declare-fun b_next!11451 () Bool)

(assert (=> start!41856 (= b_free!11451 (not b_next!11451))))

(declare-fun tp!40363 () Bool)

(declare-fun b_and!19849 () Bool)

(assert (=> start!41856 (= tp!40363 b_and!19849)))

(declare-fun b!467087 () Bool)

(declare-fun e!273216 () Bool)

(declare-fun tp_is_empty!12879 () Bool)

(assert (=> b!467087 (= e!273216 tp_is_empty!12879)))

(declare-fun b!467088 () Bool)

(declare-fun e!273217 () Bool)

(assert (=> b!467088 (= e!273217 tp_is_empty!12879)))

(declare-fun mapNonEmpty!21007 () Bool)

(declare-fun mapRes!21007 () Bool)

(declare-fun tp!40362 () Bool)

(assert (=> mapNonEmpty!21007 (= mapRes!21007 (and tp!40362 e!273216))))

(declare-datatypes ((V!18277 0))(
  ( (V!18278 (val!6484 Int)) )
))
(declare-datatypes ((ValueCell!6096 0))(
  ( (ValueCellFull!6096 (v!8769 V!18277)) (EmptyCell!6096) )
))
(declare-fun mapRest!21007 () (Array (_ BitVec 32) ValueCell!6096))

(declare-datatypes ((array!29493 0))(
  ( (array!29494 (arr!14171 (Array (_ BitVec 32) ValueCell!6096)) (size!14523 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29493)

(declare-fun mapValue!21007 () ValueCell!6096)

(declare-fun mapKey!21007 () (_ BitVec 32))

(assert (=> mapNonEmpty!21007 (= (arr!14171 _values!833) (store mapRest!21007 mapKey!21007 mapValue!21007))))

(declare-fun b!467089 () Bool)

(declare-fun e!273215 () Bool)

(assert (=> b!467089 (= e!273215 (not true))))

(declare-datatypes ((tuple2!8500 0))(
  ( (tuple2!8501 (_1!4260 (_ BitVec 64)) (_2!4260 V!18277)) )
))
(declare-datatypes ((List!8615 0))(
  ( (Nil!8612) (Cons!8611 (h!9467 tuple2!8500) (t!14577 List!8615)) )
))
(declare-datatypes ((ListLongMap!7427 0))(
  ( (ListLongMap!7428 (toList!3729 List!8615)) )
))
(declare-fun lt!211245 () ListLongMap!7427)

(declare-fun lt!211243 () ListLongMap!7427)

(assert (=> b!467089 (= lt!211245 lt!211243)))

(declare-fun zeroValue!794 () V!18277)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18277)

(declare-datatypes ((Unit!13579 0))(
  ( (Unit!13580) )
))
(declare-fun lt!211244 () Unit!13579)

(declare-datatypes ((array!29495 0))(
  ( (array!29496 (arr!14172 (Array (_ BitVec 32) (_ BitVec 64))) (size!14524 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29495)

(declare-fun minValueAfter!38 () V!18277)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!90 (array!29495 array!29493 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18277 V!18277 V!18277 V!18277 (_ BitVec 32) Int) Unit!13579)

(assert (=> b!467089 (= lt!211244 (lemmaNoChangeToArrayThenSameMapNoExtras!90 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1895 (array!29495 array!29493 (_ BitVec 32) (_ BitVec 32) V!18277 V!18277 (_ BitVec 32) Int) ListLongMap!7427)

(assert (=> b!467089 (= lt!211243 (getCurrentListMapNoExtraKeys!1895 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467089 (= lt!211245 (getCurrentListMapNoExtraKeys!1895 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467090 () Bool)

(declare-fun res!279241 () Bool)

(assert (=> b!467090 (=> (not res!279241) (not e!273215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29495 (_ BitVec 32)) Bool)

(assert (=> b!467090 (= res!279241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467091 () Bool)

(declare-fun res!279240 () Bool)

(assert (=> b!467091 (=> (not res!279240) (not e!273215))))

(declare-datatypes ((List!8616 0))(
  ( (Nil!8613) (Cons!8612 (h!9468 (_ BitVec 64)) (t!14578 List!8616)) )
))
(declare-fun arrayNoDuplicates!0 (array!29495 (_ BitVec 32) List!8616) Bool)

(assert (=> b!467091 (= res!279240 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8613))))

(declare-fun b!467092 () Bool)

(declare-fun res!279243 () Bool)

(assert (=> b!467092 (=> (not res!279243) (not e!273215))))

(assert (=> b!467092 (= res!279243 (and (= (size!14523 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14524 _keys!1025) (size!14523 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467093 () Bool)

(declare-fun e!273213 () Bool)

(assert (=> b!467093 (= e!273213 (and e!273217 mapRes!21007))))

(declare-fun condMapEmpty!21007 () Bool)

(declare-fun mapDefault!21007 () ValueCell!6096)

(assert (=> b!467093 (= condMapEmpty!21007 (= (arr!14171 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6096)) mapDefault!21007)))))

(declare-fun mapIsEmpty!21007 () Bool)

(assert (=> mapIsEmpty!21007 mapRes!21007))

(declare-fun res!279242 () Bool)

(assert (=> start!41856 (=> (not res!279242) (not e!273215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41856 (= res!279242 (validMask!0 mask!1365))))

(assert (=> start!41856 e!273215))

(assert (=> start!41856 tp_is_empty!12879))

(assert (=> start!41856 tp!40363))

(assert (=> start!41856 true))

(declare-fun array_inv!10216 (array!29495) Bool)

(assert (=> start!41856 (array_inv!10216 _keys!1025)))

(declare-fun array_inv!10217 (array!29493) Bool)

(assert (=> start!41856 (and (array_inv!10217 _values!833) e!273213)))

(assert (= (and start!41856 res!279242) b!467092))

(assert (= (and b!467092 res!279243) b!467090))

(assert (= (and b!467090 res!279241) b!467091))

(assert (= (and b!467091 res!279240) b!467089))

(assert (= (and b!467093 condMapEmpty!21007) mapIsEmpty!21007))

(assert (= (and b!467093 (not condMapEmpty!21007)) mapNonEmpty!21007))

(get-info :version)

(assert (= (and mapNonEmpty!21007 ((_ is ValueCellFull!6096) mapValue!21007)) b!467087))

(assert (= (and b!467093 ((_ is ValueCellFull!6096) mapDefault!21007)) b!467088))

(assert (= start!41856 b!467093))

(declare-fun m!449297 () Bool)

(assert (=> b!467089 m!449297))

(declare-fun m!449299 () Bool)

(assert (=> b!467089 m!449299))

(declare-fun m!449301 () Bool)

(assert (=> b!467089 m!449301))

(declare-fun m!449303 () Bool)

(assert (=> b!467091 m!449303))

(declare-fun m!449305 () Bool)

(assert (=> mapNonEmpty!21007 m!449305))

(declare-fun m!449307 () Bool)

(assert (=> start!41856 m!449307))

(declare-fun m!449309 () Bool)

(assert (=> start!41856 m!449309))

(declare-fun m!449311 () Bool)

(assert (=> start!41856 m!449311))

(declare-fun m!449313 () Bool)

(assert (=> b!467090 m!449313))

(check-sat (not b!467091) (not b!467090) (not b_next!11451) (not mapNonEmpty!21007) (not b!467089) b_and!19849 (not start!41856) tp_is_empty!12879)
(check-sat b_and!19849 (not b_next!11451))
