; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41516 () Bool)

(assert start!41516)

(declare-fun b_free!11175 () Bool)

(declare-fun b_next!11175 () Bool)

(assert (=> start!41516 (= b_free!11175 (not b_next!11175))))

(declare-fun tp!39523 () Bool)

(declare-fun b_and!19533 () Bool)

(assert (=> start!41516 (= tp!39523 b_and!19533)))

(declare-fun mapNonEmpty!20581 () Bool)

(declare-fun mapRes!20581 () Bool)

(declare-fun tp!39522 () Bool)

(declare-fun e!270655 () Bool)

(assert (=> mapNonEmpty!20581 (= mapRes!20581 (and tp!39522 e!270655))))

(declare-datatypes ((V!17909 0))(
  ( (V!17910 (val!6346 Int)) )
))
(declare-datatypes ((ValueCell!5958 0))(
  ( (ValueCellFull!5958 (v!8629 V!17909)) (EmptyCell!5958) )
))
(declare-fun mapValue!20581 () ValueCell!5958)

(declare-datatypes ((array!28965 0))(
  ( (array!28966 (arr!13911 (Array (_ BitVec 32) ValueCell!5958)) (size!14263 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28965)

(declare-fun mapRest!20581 () (Array (_ BitVec 32) ValueCell!5958))

(declare-fun mapKey!20581 () (_ BitVec 32))

(assert (=> mapNonEmpty!20581 (= (arr!13911 _values!833) (store mapRest!20581 mapKey!20581 mapValue!20581))))

(declare-fun b!463489 () Bool)

(declare-fun e!270653 () Bool)

(declare-fun e!270652 () Bool)

(assert (=> b!463489 (= e!270653 (and e!270652 mapRes!20581))))

(declare-fun condMapEmpty!20581 () Bool)

(declare-fun mapDefault!20581 () ValueCell!5958)

(assert (=> b!463489 (= condMapEmpty!20581 (= (arr!13911 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5958)) mapDefault!20581)))))

(declare-fun b!463490 () Bool)

(declare-fun res!277198 () Bool)

(declare-fun e!270651 () Bool)

(assert (=> b!463490 (=> (not res!277198) (not e!270651))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!28967 0))(
  ( (array!28968 (arr!13912 (Array (_ BitVec 32) (_ BitVec 64))) (size!14264 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28967)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!463490 (= res!277198 (and (= (size!14263 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14264 _keys!1025) (size!14263 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!463491 () Bool)

(declare-fun tp_is_empty!12603 () Bool)

(assert (=> b!463491 (= e!270655 tp_is_empty!12603)))

(declare-fun b!463492 () Bool)

(assert (=> b!463492 (= e!270652 tp_is_empty!12603)))

(declare-fun res!277196 () Bool)

(assert (=> start!41516 (=> (not res!277196) (not e!270651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41516 (= res!277196 (validMask!0 mask!1365))))

(assert (=> start!41516 e!270651))

(assert (=> start!41516 tp_is_empty!12603))

(assert (=> start!41516 tp!39523))

(assert (=> start!41516 true))

(declare-fun array_inv!10034 (array!28967) Bool)

(assert (=> start!41516 (array_inv!10034 _keys!1025)))

(declare-fun array_inv!10035 (array!28965) Bool)

(assert (=> start!41516 (and (array_inv!10035 _values!833) e!270653)))

(declare-fun b!463493 () Bool)

(declare-fun res!277197 () Bool)

(assert (=> b!463493 (=> (not res!277197) (not e!270651))))

(declare-datatypes ((List!8415 0))(
  ( (Nil!8412) (Cons!8411 (h!9267 (_ BitVec 64)) (t!14369 List!8415)) )
))
(declare-fun arrayNoDuplicates!0 (array!28967 (_ BitVec 32) List!8415) Bool)

(assert (=> b!463493 (= res!277197 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8412))))

(declare-fun b!463494 () Bool)

(assert (=> b!463494 (= e!270651 false)))

(declare-fun zeroValue!794 () V!17909)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8290 0))(
  ( (tuple2!8291 (_1!4155 (_ BitVec 64)) (_2!4155 V!17909)) )
))
(declare-datatypes ((List!8416 0))(
  ( (Nil!8413) (Cons!8412 (h!9268 tuple2!8290) (t!14370 List!8416)) )
))
(declare-datatypes ((ListLongMap!7217 0))(
  ( (ListLongMap!7218 (toList!3624 List!8416)) )
))
(declare-fun lt!209411 () ListLongMap!7217)

(declare-fun minValueAfter!38 () V!17909)

(declare-fun getCurrentListMapNoExtraKeys!1792 (array!28967 array!28965 (_ BitVec 32) (_ BitVec 32) V!17909 V!17909 (_ BitVec 32) Int) ListLongMap!7217)

(assert (=> b!463494 (= lt!209411 (getCurrentListMapNoExtraKeys!1792 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!17909)

(declare-fun lt!209412 () ListLongMap!7217)

(assert (=> b!463494 (= lt!209412 (getCurrentListMapNoExtraKeys!1792 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20581 () Bool)

(assert (=> mapIsEmpty!20581 mapRes!20581))

(declare-fun b!463495 () Bool)

(declare-fun res!277199 () Bool)

(assert (=> b!463495 (=> (not res!277199) (not e!270651))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28967 (_ BitVec 32)) Bool)

(assert (=> b!463495 (= res!277199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41516 res!277196) b!463490))

(assert (= (and b!463490 res!277198) b!463495))

(assert (= (and b!463495 res!277199) b!463493))

(assert (= (and b!463493 res!277197) b!463494))

(assert (= (and b!463489 condMapEmpty!20581) mapIsEmpty!20581))

(assert (= (and b!463489 (not condMapEmpty!20581)) mapNonEmpty!20581))

(get-info :version)

(assert (= (and mapNonEmpty!20581 ((_ is ValueCellFull!5958) mapValue!20581)) b!463491))

(assert (= (and b!463489 ((_ is ValueCellFull!5958) mapDefault!20581)) b!463492))

(assert (= start!41516 b!463489))

(declare-fun m!446057 () Bool)

(assert (=> b!463494 m!446057))

(declare-fun m!446059 () Bool)

(assert (=> b!463494 m!446059))

(declare-fun m!446061 () Bool)

(assert (=> start!41516 m!446061))

(declare-fun m!446063 () Bool)

(assert (=> start!41516 m!446063))

(declare-fun m!446065 () Bool)

(assert (=> start!41516 m!446065))

(declare-fun m!446067 () Bool)

(assert (=> mapNonEmpty!20581 m!446067))

(declare-fun m!446069 () Bool)

(assert (=> b!463495 m!446069))

(declare-fun m!446071 () Bool)

(assert (=> b!463493 m!446071))

(check-sat (not b!463494) b_and!19533 (not b!463495) (not mapNonEmpty!20581) (not b!463493) tp_is_empty!12603 (not start!41516) (not b_next!11175))
(check-sat b_and!19533 (not b_next!11175))
