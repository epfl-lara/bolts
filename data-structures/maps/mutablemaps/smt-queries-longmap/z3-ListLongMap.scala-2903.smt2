; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41570 () Bool)

(assert start!41570)

(declare-fun b_free!11229 () Bool)

(declare-fun b_next!11229 () Bool)

(assert (=> start!41570 (= b_free!11229 (not b_next!11229))))

(declare-fun tp!39685 () Bool)

(declare-fun b_and!19587 () Bool)

(assert (=> start!41570 (= tp!39685 b_and!19587)))

(declare-fun res!277523 () Bool)

(declare-fun e!271056 () Bool)

(assert (=> start!41570 (=> (not res!277523) (not e!271056))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41570 (= res!277523 (validMask!0 mask!1365))))

(assert (=> start!41570 e!271056))

(declare-fun tp_is_empty!12657 () Bool)

(assert (=> start!41570 tp_is_empty!12657))

(assert (=> start!41570 tp!39685))

(assert (=> start!41570 true))

(declare-datatypes ((array!29067 0))(
  ( (array!29068 (arr!13962 (Array (_ BitVec 32) (_ BitVec 64))) (size!14314 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29067)

(declare-fun array_inv!10068 (array!29067) Bool)

(assert (=> start!41570 (array_inv!10068 _keys!1025)))

(declare-datatypes ((V!17981 0))(
  ( (V!17982 (val!6373 Int)) )
))
(declare-datatypes ((ValueCell!5985 0))(
  ( (ValueCellFull!5985 (v!8656 V!17981)) (EmptyCell!5985) )
))
(declare-datatypes ((array!29069 0))(
  ( (array!29070 (arr!13963 (Array (_ BitVec 32) ValueCell!5985)) (size!14315 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29069)

(declare-fun e!271057 () Bool)

(declare-fun array_inv!10069 (array!29069) Bool)

(assert (=> start!41570 (and (array_inv!10069 _values!833) e!271057)))

(declare-fun mapNonEmpty!20662 () Bool)

(declare-fun mapRes!20662 () Bool)

(declare-fun tp!39684 () Bool)

(declare-fun e!271060 () Bool)

(assert (=> mapNonEmpty!20662 (= mapRes!20662 (and tp!39684 e!271060))))

(declare-fun mapValue!20662 () ValueCell!5985)

(declare-fun mapKey!20662 () (_ BitVec 32))

(declare-fun mapRest!20662 () (Array (_ BitVec 32) ValueCell!5985))

(assert (=> mapNonEmpty!20662 (= (arr!13963 _values!833) (store mapRest!20662 mapKey!20662 mapValue!20662))))

(declare-fun b!464056 () Bool)

(declare-fun e!271059 () Bool)

(assert (=> b!464056 (= e!271057 (and e!271059 mapRes!20662))))

(declare-fun condMapEmpty!20662 () Bool)

(declare-fun mapDefault!20662 () ValueCell!5985)

(assert (=> b!464056 (= condMapEmpty!20662 (= (arr!13963 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5985)) mapDefault!20662)))))

(declare-fun b!464057 () Bool)

(declare-fun res!277521 () Bool)

(assert (=> b!464057 (=> (not res!277521) (not e!271056))))

(declare-datatypes ((List!8456 0))(
  ( (Nil!8453) (Cons!8452 (h!9308 (_ BitVec 64)) (t!14410 List!8456)) )
))
(declare-fun arrayNoDuplicates!0 (array!29067 (_ BitVec 32) List!8456) Bool)

(assert (=> b!464057 (= res!277521 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8453))))

(declare-fun b!464058 () Bool)

(declare-fun res!277520 () Bool)

(assert (=> b!464058 (=> (not res!277520) (not e!271056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29067 (_ BitVec 32)) Bool)

(assert (=> b!464058 (= res!277520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464059 () Bool)

(assert (=> b!464059 (= e!271059 tp_is_empty!12657)))

(declare-fun mapIsEmpty!20662 () Bool)

(assert (=> mapIsEmpty!20662 mapRes!20662))

(declare-fun b!464060 () Bool)

(assert (=> b!464060 (= e!271060 tp_is_empty!12657)))

(declare-fun b!464061 () Bool)

(declare-fun res!277522 () Bool)

(assert (=> b!464061 (=> (not res!277522) (not e!271056))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!464061 (= res!277522 (and (= (size!14315 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14314 _keys!1025) (size!14315 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464062 () Bool)

(assert (=> b!464062 (= e!271056 (not true))))

(declare-datatypes ((tuple2!8328 0))(
  ( (tuple2!8329 (_1!4174 (_ BitVec 64)) (_2!4174 V!17981)) )
))
(declare-datatypes ((List!8457 0))(
  ( (Nil!8454) (Cons!8453 (h!9309 tuple2!8328) (t!14411 List!8457)) )
))
(declare-datatypes ((ListLongMap!7255 0))(
  ( (ListLongMap!7256 (toList!3643 List!8457)) )
))
(declare-fun lt!209596 () ListLongMap!7255)

(declare-fun lt!209597 () ListLongMap!7255)

(assert (=> b!464062 (= lt!209596 lt!209597)))

(declare-fun minValueBefore!38 () V!17981)

(declare-fun defaultEntry!841 () Int)

(declare-fun zeroValue!794 () V!17981)

(declare-datatypes ((Unit!13407 0))(
  ( (Unit!13408) )
))
(declare-fun lt!209598 () Unit!13407)

(declare-fun minValueAfter!38 () V!17981)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!6 (array!29067 array!29069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17981 V!17981 V!17981 V!17981 (_ BitVec 32) Int) Unit!13407)

(assert (=> b!464062 (= lt!209598 (lemmaNoChangeToArrayThenSameMapNoExtras!6 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1811 (array!29067 array!29069 (_ BitVec 32) (_ BitVec 32) V!17981 V!17981 (_ BitVec 32) Int) ListLongMap!7255)

(assert (=> b!464062 (= lt!209597 (getCurrentListMapNoExtraKeys!1811 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464062 (= lt!209596 (getCurrentListMapNoExtraKeys!1811 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41570 res!277523) b!464061))

(assert (= (and b!464061 res!277522) b!464058))

(assert (= (and b!464058 res!277520) b!464057))

(assert (= (and b!464057 res!277521) b!464062))

(assert (= (and b!464056 condMapEmpty!20662) mapIsEmpty!20662))

(assert (= (and b!464056 (not condMapEmpty!20662)) mapNonEmpty!20662))

(get-info :version)

(assert (= (and mapNonEmpty!20662 ((_ is ValueCellFull!5985) mapValue!20662)) b!464060))

(assert (= (and b!464056 ((_ is ValueCellFull!5985) mapDefault!20662)) b!464059))

(assert (= start!41570 b!464056))

(declare-fun m!446503 () Bool)

(assert (=> b!464057 m!446503))

(declare-fun m!446505 () Bool)

(assert (=> start!41570 m!446505))

(declare-fun m!446507 () Bool)

(assert (=> start!41570 m!446507))

(declare-fun m!446509 () Bool)

(assert (=> start!41570 m!446509))

(declare-fun m!446511 () Bool)

(assert (=> b!464058 m!446511))

(declare-fun m!446513 () Bool)

(assert (=> mapNonEmpty!20662 m!446513))

(declare-fun m!446515 () Bool)

(assert (=> b!464062 m!446515))

(declare-fun m!446517 () Bool)

(assert (=> b!464062 m!446517))

(declare-fun m!446519 () Bool)

(assert (=> b!464062 m!446519))

(check-sat tp_is_empty!12657 (not b_next!11229) (not mapNonEmpty!20662) (not b!464062) b_and!19587 (not b!464058) (not b!464057) (not start!41570))
(check-sat b_and!19587 (not b_next!11229))
