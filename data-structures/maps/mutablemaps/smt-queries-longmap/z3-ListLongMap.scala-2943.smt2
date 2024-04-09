; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41874 () Bool)

(assert start!41874)

(declare-fun b_free!11469 () Bool)

(declare-fun b_next!11469 () Bool)

(assert (=> start!41874 (= b_free!11469 (not b_next!11469))))

(declare-fun tp!40416 () Bool)

(declare-fun b_and!19867 () Bool)

(assert (=> start!41874 (= tp!40416 b_and!19867)))

(declare-fun mapIsEmpty!21034 () Bool)

(declare-fun mapRes!21034 () Bool)

(assert (=> mapIsEmpty!21034 mapRes!21034))

(declare-fun b!467276 () Bool)

(declare-fun e!273350 () Bool)

(declare-fun e!273349 () Bool)

(assert (=> b!467276 (= e!273350 (and e!273349 mapRes!21034))))

(declare-fun condMapEmpty!21034 () Bool)

(declare-datatypes ((V!18301 0))(
  ( (V!18302 (val!6493 Int)) )
))
(declare-datatypes ((ValueCell!6105 0))(
  ( (ValueCellFull!6105 (v!8778 V!18301)) (EmptyCell!6105) )
))
(declare-datatypes ((array!29529 0))(
  ( (array!29530 (arr!14189 (Array (_ BitVec 32) ValueCell!6105)) (size!14541 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29529)

(declare-fun mapDefault!21034 () ValueCell!6105)

(assert (=> b!467276 (= condMapEmpty!21034 (= (arr!14189 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6105)) mapDefault!21034)))))

(declare-fun b!467277 () Bool)

(declare-fun res!279351 () Bool)

(declare-fun e!273352 () Bool)

(assert (=> b!467277 (=> (not res!279351) (not e!273352))))

(declare-datatypes ((array!29531 0))(
  ( (array!29532 (arr!14190 (Array (_ BitVec 32) (_ BitVec 64))) (size!14542 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29531)

(declare-datatypes ((List!8626 0))(
  ( (Nil!8623) (Cons!8622 (h!9478 (_ BitVec 64)) (t!14588 List!8626)) )
))
(declare-fun arrayNoDuplicates!0 (array!29531 (_ BitVec 32) List!8626) Bool)

(assert (=> b!467277 (= res!279351 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8623))))

(declare-fun res!279349 () Bool)

(assert (=> start!41874 (=> (not res!279349) (not e!273352))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41874 (= res!279349 (validMask!0 mask!1365))))

(assert (=> start!41874 e!273352))

(declare-fun tp_is_empty!12897 () Bool)

(assert (=> start!41874 tp_is_empty!12897))

(assert (=> start!41874 tp!40416))

(assert (=> start!41874 true))

(declare-fun array_inv!10234 (array!29531) Bool)

(assert (=> start!41874 (array_inv!10234 _keys!1025)))

(declare-fun array_inv!10235 (array!29529) Bool)

(assert (=> start!41874 (and (array_inv!10235 _values!833) e!273350)))

(declare-fun b!467278 () Bool)

(declare-fun res!279348 () Bool)

(assert (=> b!467278 (=> (not res!279348) (not e!273352))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!467278 (= res!279348 (and (= (size!14541 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14542 _keys!1025) (size!14541 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467279 () Bool)

(declare-fun res!279350 () Bool)

(assert (=> b!467279 (=> (not res!279350) (not e!273352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29531 (_ BitVec 32)) Bool)

(assert (=> b!467279 (= res!279350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467280 () Bool)

(assert (=> b!467280 (= e!273352 (not true))))

(declare-datatypes ((tuple2!8512 0))(
  ( (tuple2!8513 (_1!4266 (_ BitVec 64)) (_2!4266 V!18301)) )
))
(declare-datatypes ((List!8627 0))(
  ( (Nil!8624) (Cons!8623 (h!9479 tuple2!8512) (t!14589 List!8627)) )
))
(declare-datatypes ((ListLongMap!7439 0))(
  ( (ListLongMap!7440 (toList!3735 List!8627)) )
))
(declare-fun lt!211325 () ListLongMap!7439)

(declare-fun lt!211326 () ListLongMap!7439)

(assert (=> b!467280 (= lt!211325 lt!211326)))

(declare-fun minValueBefore!38 () V!18301)

(declare-fun zeroValue!794 () V!18301)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13591 0))(
  ( (Unit!13592) )
))
(declare-fun lt!211324 () Unit!13591)

(declare-fun minValueAfter!38 () V!18301)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!96 (array!29531 array!29529 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18301 V!18301 V!18301 V!18301 (_ BitVec 32) Int) Unit!13591)

(assert (=> b!467280 (= lt!211324 (lemmaNoChangeToArrayThenSameMapNoExtras!96 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1901 (array!29531 array!29529 (_ BitVec 32) (_ BitVec 32) V!18301 V!18301 (_ BitVec 32) Int) ListLongMap!7439)

(assert (=> b!467280 (= lt!211326 (getCurrentListMapNoExtraKeys!1901 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467280 (= lt!211325 (getCurrentListMapNoExtraKeys!1901 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21034 () Bool)

(declare-fun tp!40417 () Bool)

(declare-fun e!273351 () Bool)

(assert (=> mapNonEmpty!21034 (= mapRes!21034 (and tp!40417 e!273351))))

(declare-fun mapKey!21034 () (_ BitVec 32))

(declare-fun mapRest!21034 () (Array (_ BitVec 32) ValueCell!6105))

(declare-fun mapValue!21034 () ValueCell!6105)

(assert (=> mapNonEmpty!21034 (= (arr!14189 _values!833) (store mapRest!21034 mapKey!21034 mapValue!21034))))

(declare-fun b!467281 () Bool)

(assert (=> b!467281 (= e!273351 tp_is_empty!12897)))

(declare-fun b!467282 () Bool)

(assert (=> b!467282 (= e!273349 tp_is_empty!12897)))

(assert (= (and start!41874 res!279349) b!467278))

(assert (= (and b!467278 res!279348) b!467279))

(assert (= (and b!467279 res!279350) b!467277))

(assert (= (and b!467277 res!279351) b!467280))

(assert (= (and b!467276 condMapEmpty!21034) mapIsEmpty!21034))

(assert (= (and b!467276 (not condMapEmpty!21034)) mapNonEmpty!21034))

(get-info :version)

(assert (= (and mapNonEmpty!21034 ((_ is ValueCellFull!6105) mapValue!21034)) b!467281))

(assert (= (and b!467276 ((_ is ValueCellFull!6105) mapDefault!21034)) b!467282))

(assert (= start!41874 b!467276))

(declare-fun m!449459 () Bool)

(assert (=> mapNonEmpty!21034 m!449459))

(declare-fun m!449461 () Bool)

(assert (=> b!467280 m!449461))

(declare-fun m!449463 () Bool)

(assert (=> b!467280 m!449463))

(declare-fun m!449465 () Bool)

(assert (=> b!467280 m!449465))

(declare-fun m!449467 () Bool)

(assert (=> start!41874 m!449467))

(declare-fun m!449469 () Bool)

(assert (=> start!41874 m!449469))

(declare-fun m!449471 () Bool)

(assert (=> start!41874 m!449471))

(declare-fun m!449473 () Bool)

(assert (=> b!467279 m!449473))

(declare-fun m!449475 () Bool)

(assert (=> b!467277 m!449475))

(check-sat (not b!467279) (not mapNonEmpty!21034) (not b!467277) tp_is_empty!12897 (not start!41874) (not b_next!11469) (not b!467280) b_and!19867)
(check-sat b_and!19867 (not b_next!11469))
