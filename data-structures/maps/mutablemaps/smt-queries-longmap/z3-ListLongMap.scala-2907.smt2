; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41594 () Bool)

(assert start!41594)

(declare-fun b_free!11253 () Bool)

(declare-fun b_next!11253 () Bool)

(assert (=> start!41594 (= b_free!11253 (not b_next!11253))))

(declare-fun tp!39756 () Bool)

(declare-fun b_and!19611 () Bool)

(assert (=> start!41594 (= tp!39756 b_and!19611)))

(declare-fun b!464308 () Bool)

(declare-fun res!277665 () Bool)

(declare-fun e!271240 () Bool)

(assert (=> b!464308 (=> (not res!277665) (not e!271240))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29109 0))(
  ( (array!29110 (arr!13983 (Array (_ BitVec 32) (_ BitVec 64))) (size!14335 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29109)

(declare-datatypes ((V!18013 0))(
  ( (V!18014 (val!6385 Int)) )
))
(declare-datatypes ((ValueCell!5997 0))(
  ( (ValueCellFull!5997 (v!8668 V!18013)) (EmptyCell!5997) )
))
(declare-datatypes ((array!29111 0))(
  ( (array!29112 (arr!13984 (Array (_ BitVec 32) ValueCell!5997)) (size!14336 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29111)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!464308 (= res!277665 (and (= (size!14336 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14335 _keys!1025) (size!14336 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464309 () Bool)

(declare-fun res!277666 () Bool)

(assert (=> b!464309 (=> (not res!277666) (not e!271240))))

(declare-datatypes ((List!8470 0))(
  ( (Nil!8467) (Cons!8466 (h!9322 (_ BitVec 64)) (t!14424 List!8470)) )
))
(declare-fun arrayNoDuplicates!0 (array!29109 (_ BitVec 32) List!8470) Bool)

(assert (=> b!464309 (= res!277666 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8467))))

(declare-fun b!464310 () Bool)

(declare-fun e!271238 () Bool)

(declare-fun e!271239 () Bool)

(declare-fun mapRes!20698 () Bool)

(assert (=> b!464310 (= e!271238 (and e!271239 mapRes!20698))))

(declare-fun condMapEmpty!20698 () Bool)

(declare-fun mapDefault!20698 () ValueCell!5997)

(assert (=> b!464310 (= condMapEmpty!20698 (= (arr!13984 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5997)) mapDefault!20698)))))

(declare-fun mapNonEmpty!20698 () Bool)

(declare-fun tp!39757 () Bool)

(declare-fun e!271237 () Bool)

(assert (=> mapNonEmpty!20698 (= mapRes!20698 (and tp!39757 e!271237))))

(declare-fun mapKey!20698 () (_ BitVec 32))

(declare-fun mapValue!20698 () ValueCell!5997)

(declare-fun mapRest!20698 () (Array (_ BitVec 32) ValueCell!5997))

(assert (=> mapNonEmpty!20698 (= (arr!13984 _values!833) (store mapRest!20698 mapKey!20698 mapValue!20698))))

(declare-fun b!464311 () Bool)

(declare-fun tp_is_empty!12681 () Bool)

(assert (=> b!464311 (= e!271237 tp_is_empty!12681)))

(declare-fun b!464312 () Bool)

(assert (=> b!464312 (= e!271240 (not true))))

(declare-datatypes ((tuple2!8342 0))(
  ( (tuple2!8343 (_1!4181 (_ BitVec 64)) (_2!4181 V!18013)) )
))
(declare-datatypes ((List!8471 0))(
  ( (Nil!8468) (Cons!8467 (h!9323 tuple2!8342) (t!14425 List!8471)) )
))
(declare-datatypes ((ListLongMap!7269 0))(
  ( (ListLongMap!7270 (toList!3650 List!8471)) )
))
(declare-fun lt!209704 () ListLongMap!7269)

(declare-fun lt!209706 () ListLongMap!7269)

(assert (=> b!464312 (= lt!209704 lt!209706)))

(declare-datatypes ((Unit!13421 0))(
  ( (Unit!13422) )
))
(declare-fun lt!209705 () Unit!13421)

(declare-fun minValueBefore!38 () V!18013)

(declare-fun zeroValue!794 () V!18013)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18013)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!13 (array!29109 array!29111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18013 V!18013 V!18013 V!18013 (_ BitVec 32) Int) Unit!13421)

(assert (=> b!464312 (= lt!209705 (lemmaNoChangeToArrayThenSameMapNoExtras!13 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1818 (array!29109 array!29111 (_ BitVec 32) (_ BitVec 32) V!18013 V!18013 (_ BitVec 32) Int) ListLongMap!7269)

(assert (=> b!464312 (= lt!209706 (getCurrentListMapNoExtraKeys!1818 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464312 (= lt!209704 (getCurrentListMapNoExtraKeys!1818 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!277664 () Bool)

(assert (=> start!41594 (=> (not res!277664) (not e!271240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41594 (= res!277664 (validMask!0 mask!1365))))

(assert (=> start!41594 e!271240))

(assert (=> start!41594 tp_is_empty!12681))

(assert (=> start!41594 tp!39756))

(assert (=> start!41594 true))

(declare-fun array_inv!10080 (array!29109) Bool)

(assert (=> start!41594 (array_inv!10080 _keys!1025)))

(declare-fun array_inv!10081 (array!29111) Bool)

(assert (=> start!41594 (and (array_inv!10081 _values!833) e!271238)))

(declare-fun mapIsEmpty!20698 () Bool)

(assert (=> mapIsEmpty!20698 mapRes!20698))

(declare-fun b!464313 () Bool)

(declare-fun res!277667 () Bool)

(assert (=> b!464313 (=> (not res!277667) (not e!271240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29109 (_ BitVec 32)) Bool)

(assert (=> b!464313 (= res!277667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464314 () Bool)

(assert (=> b!464314 (= e!271239 tp_is_empty!12681)))

(assert (= (and start!41594 res!277664) b!464308))

(assert (= (and b!464308 res!277665) b!464313))

(assert (= (and b!464313 res!277667) b!464309))

(assert (= (and b!464309 res!277666) b!464312))

(assert (= (and b!464310 condMapEmpty!20698) mapIsEmpty!20698))

(assert (= (and b!464310 (not condMapEmpty!20698)) mapNonEmpty!20698))

(get-info :version)

(assert (= (and mapNonEmpty!20698 ((_ is ValueCellFull!5997) mapValue!20698)) b!464311))

(assert (= (and b!464310 ((_ is ValueCellFull!5997) mapDefault!20698)) b!464314))

(assert (= start!41594 b!464310))

(declare-fun m!446719 () Bool)

(assert (=> b!464312 m!446719))

(declare-fun m!446721 () Bool)

(assert (=> b!464312 m!446721))

(declare-fun m!446723 () Bool)

(assert (=> b!464312 m!446723))

(declare-fun m!446725 () Bool)

(assert (=> mapNonEmpty!20698 m!446725))

(declare-fun m!446727 () Bool)

(assert (=> start!41594 m!446727))

(declare-fun m!446729 () Bool)

(assert (=> start!41594 m!446729))

(declare-fun m!446731 () Bool)

(assert (=> start!41594 m!446731))

(declare-fun m!446733 () Bool)

(assert (=> b!464313 m!446733))

(declare-fun m!446735 () Bool)

(assert (=> b!464309 m!446735))

(check-sat (not b_next!11253) (not b!464309) (not mapNonEmpty!20698) (not start!41594) (not b!464313) (not b!464312) b_and!19611 tp_is_empty!12681)
(check-sat b_and!19611 (not b_next!11253))
