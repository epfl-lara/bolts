; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41868 () Bool)

(assert start!41868)

(declare-fun b_free!11463 () Bool)

(declare-fun b_next!11463 () Bool)

(assert (=> start!41868 (= b_free!11463 (not b_next!11463))))

(declare-fun tp!40399 () Bool)

(declare-fun b_and!19861 () Bool)

(assert (=> start!41868 (= tp!40399 b_and!19861)))

(declare-fun b!467213 () Bool)

(declare-fun e!273307 () Bool)

(assert (=> b!467213 (= e!273307 (not true))))

(declare-datatypes ((V!18293 0))(
  ( (V!18294 (val!6490 Int)) )
))
(declare-datatypes ((tuple2!8510 0))(
  ( (tuple2!8511 (_1!4265 (_ BitVec 64)) (_2!4265 V!18293)) )
))
(declare-datatypes ((List!8623 0))(
  ( (Nil!8620) (Cons!8619 (h!9475 tuple2!8510) (t!14585 List!8623)) )
))
(declare-datatypes ((ListLongMap!7437 0))(
  ( (ListLongMap!7438 (toList!3734 List!8623)) )
))
(declare-fun lt!211297 () ListLongMap!7437)

(declare-fun lt!211298 () ListLongMap!7437)

(assert (=> b!467213 (= lt!211297 lt!211298)))

(declare-fun minValueBefore!38 () V!18293)

(declare-fun zeroValue!794 () V!18293)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29517 0))(
  ( (array!29518 (arr!14183 (Array (_ BitVec 32) (_ BitVec 64))) (size!14535 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29517)

(declare-datatypes ((ValueCell!6102 0))(
  ( (ValueCellFull!6102 (v!8775 V!18293)) (EmptyCell!6102) )
))
(declare-datatypes ((array!29519 0))(
  ( (array!29520 (arr!14184 (Array (_ BitVec 32) ValueCell!6102)) (size!14536 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29519)

(declare-fun minValueAfter!38 () V!18293)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13589 0))(
  ( (Unit!13590) )
))
(declare-fun lt!211299 () Unit!13589)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!95 (array!29517 array!29519 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18293 V!18293 V!18293 V!18293 (_ BitVec 32) Int) Unit!13589)

(assert (=> b!467213 (= lt!211299 (lemmaNoChangeToArrayThenSameMapNoExtras!95 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1900 (array!29517 array!29519 (_ BitVec 32) (_ BitVec 32) V!18293 V!18293 (_ BitVec 32) Int) ListLongMap!7437)

(assert (=> b!467213 (= lt!211298 (getCurrentListMapNoExtraKeys!1900 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467213 (= lt!211297 (getCurrentListMapNoExtraKeys!1900 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21025 () Bool)

(declare-fun mapRes!21025 () Bool)

(assert (=> mapIsEmpty!21025 mapRes!21025))

(declare-fun res!279312 () Bool)

(assert (=> start!41868 (=> (not res!279312) (not e!273307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41868 (= res!279312 (validMask!0 mask!1365))))

(assert (=> start!41868 e!273307))

(declare-fun tp_is_empty!12891 () Bool)

(assert (=> start!41868 tp_is_empty!12891))

(assert (=> start!41868 tp!40399))

(assert (=> start!41868 true))

(declare-fun array_inv!10228 (array!29517) Bool)

(assert (=> start!41868 (array_inv!10228 _keys!1025)))

(declare-fun e!273305 () Bool)

(declare-fun array_inv!10229 (array!29519) Bool)

(assert (=> start!41868 (and (array_inv!10229 _values!833) e!273305)))

(declare-fun b!467214 () Bool)

(declare-fun res!279313 () Bool)

(assert (=> b!467214 (=> (not res!279313) (not e!273307))))

(declare-datatypes ((List!8624 0))(
  ( (Nil!8621) (Cons!8620 (h!9476 (_ BitVec 64)) (t!14586 List!8624)) )
))
(declare-fun arrayNoDuplicates!0 (array!29517 (_ BitVec 32) List!8624) Bool)

(assert (=> b!467214 (= res!279313 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8621))))

(declare-fun b!467215 () Bool)

(declare-fun e!273303 () Bool)

(assert (=> b!467215 (= e!273303 tp_is_empty!12891)))

(declare-fun b!467216 () Bool)

(declare-fun e!273306 () Bool)

(assert (=> b!467216 (= e!273306 tp_is_empty!12891)))

(declare-fun b!467217 () Bool)

(declare-fun res!279314 () Bool)

(assert (=> b!467217 (=> (not res!279314) (not e!273307))))

(assert (=> b!467217 (= res!279314 (and (= (size!14536 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14535 _keys!1025) (size!14536 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21025 () Bool)

(declare-fun tp!40398 () Bool)

(assert (=> mapNonEmpty!21025 (= mapRes!21025 (and tp!40398 e!273306))))

(declare-fun mapKey!21025 () (_ BitVec 32))

(declare-fun mapRest!21025 () (Array (_ BitVec 32) ValueCell!6102))

(declare-fun mapValue!21025 () ValueCell!6102)

(assert (=> mapNonEmpty!21025 (= (arr!14184 _values!833) (store mapRest!21025 mapKey!21025 mapValue!21025))))

(declare-fun b!467218 () Bool)

(declare-fun res!279315 () Bool)

(assert (=> b!467218 (=> (not res!279315) (not e!273307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29517 (_ BitVec 32)) Bool)

(assert (=> b!467218 (= res!279315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467219 () Bool)

(assert (=> b!467219 (= e!273305 (and e!273303 mapRes!21025))))

(declare-fun condMapEmpty!21025 () Bool)

(declare-fun mapDefault!21025 () ValueCell!6102)

(assert (=> b!467219 (= condMapEmpty!21025 (= (arr!14184 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6102)) mapDefault!21025)))))

(assert (= (and start!41868 res!279312) b!467217))

(assert (= (and b!467217 res!279314) b!467218))

(assert (= (and b!467218 res!279315) b!467214))

(assert (= (and b!467214 res!279313) b!467213))

(assert (= (and b!467219 condMapEmpty!21025) mapIsEmpty!21025))

(assert (= (and b!467219 (not condMapEmpty!21025)) mapNonEmpty!21025))

(get-info :version)

(assert (= (and mapNonEmpty!21025 ((_ is ValueCellFull!6102) mapValue!21025)) b!467216))

(assert (= (and b!467219 ((_ is ValueCellFull!6102) mapDefault!21025)) b!467215))

(assert (= start!41868 b!467219))

(declare-fun m!449405 () Bool)

(assert (=> b!467214 m!449405))

(declare-fun m!449407 () Bool)

(assert (=> start!41868 m!449407))

(declare-fun m!449409 () Bool)

(assert (=> start!41868 m!449409))

(declare-fun m!449411 () Bool)

(assert (=> start!41868 m!449411))

(declare-fun m!449413 () Bool)

(assert (=> b!467213 m!449413))

(declare-fun m!449415 () Bool)

(assert (=> b!467213 m!449415))

(declare-fun m!449417 () Bool)

(assert (=> b!467213 m!449417))

(declare-fun m!449419 () Bool)

(assert (=> b!467218 m!449419))

(declare-fun m!449421 () Bool)

(assert (=> mapNonEmpty!21025 m!449421))

(check-sat (not b_next!11463) (not start!41868) (not mapNonEmpty!21025) b_and!19861 (not b!467218) (not b!467213) tp_is_empty!12891 (not b!467214))
(check-sat b_and!19861 (not b_next!11463))
