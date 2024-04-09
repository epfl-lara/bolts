; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41778 () Bool)

(assert start!41778)

(declare-fun b_free!11391 () Bool)

(declare-fun b_next!11391 () Bool)

(assert (=> start!41778 (= b_free!11391 (not b_next!11391))))

(declare-fun tp!40179 () Bool)

(declare-fun b_and!19777 () Bool)

(assert (=> start!41778 (= tp!40179 b_and!19777)))

(declare-fun res!278740 () Bool)

(declare-fun e!272597 () Bool)

(assert (=> start!41778 (=> (not res!278740) (not e!272597))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41778 (= res!278740 (validMask!0 mask!1365))))

(assert (=> start!41778 e!272597))

(declare-fun tp_is_empty!12819 () Bool)

(assert (=> start!41778 tp_is_empty!12819))

(assert (=> start!41778 tp!40179))

(assert (=> start!41778 true))

(declare-datatypes ((array!29375 0))(
  ( (array!29376 (arr!14113 (Array (_ BitVec 32) (_ BitVec 64))) (size!14465 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29375)

(declare-fun array_inv!10170 (array!29375) Bool)

(assert (=> start!41778 (array_inv!10170 _keys!1025)))

(declare-datatypes ((V!18197 0))(
  ( (V!18198 (val!6454 Int)) )
))
(declare-datatypes ((ValueCell!6066 0))(
  ( (ValueCellFull!6066 (v!8738 V!18197)) (EmptyCell!6066) )
))
(declare-datatypes ((array!29377 0))(
  ( (array!29378 (arr!14114 (Array (_ BitVec 32) ValueCell!6066)) (size!14466 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29377)

(declare-fun e!272595 () Bool)

(declare-fun array_inv!10171 (array!29377) Bool)

(assert (=> start!41778 (and (array_inv!10171 _values!833) e!272595)))

(declare-fun b!466215 () Bool)

(declare-fun e!272596 () Bool)

(assert (=> b!466215 (= e!272596 tp_is_empty!12819)))

(declare-fun b!466216 () Bool)

(declare-fun res!278741 () Bool)

(assert (=> b!466216 (=> (not res!278741) (not e!272597))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!466216 (= res!278741 (and (= (size!14466 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14465 _keys!1025) (size!14466 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466217 () Bool)

(declare-fun res!278744 () Bool)

(assert (=> b!466217 (=> (not res!278744) (not e!272597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29375 (_ BitVec 32)) Bool)

(assert (=> b!466217 (= res!278744 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466218 () Bool)

(declare-fun e!272598 () Bool)

(assert (=> b!466218 (= e!272597 (not e!272598))))

(declare-fun res!278742 () Bool)

(assert (=> b!466218 (=> res!278742 e!272598)))

(assert (=> b!466218 (= res!278742 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8444 0))(
  ( (tuple2!8445 (_1!4232 (_ BitVec 64)) (_2!4232 V!18197)) )
))
(declare-datatypes ((List!8564 0))(
  ( (Nil!8561) (Cons!8560 (h!9416 tuple2!8444) (t!14524 List!8564)) )
))
(declare-datatypes ((ListLongMap!7371 0))(
  ( (ListLongMap!7372 (toList!3701 List!8564)) )
))
(declare-fun lt!210736 () ListLongMap!7371)

(declare-fun lt!210737 () ListLongMap!7371)

(assert (=> b!466218 (= lt!210736 lt!210737)))

(declare-fun minValueBefore!38 () V!18197)

(declare-datatypes ((Unit!13521 0))(
  ( (Unit!13522) )
))
(declare-fun lt!210735 () Unit!13521)

(declare-fun zeroValue!794 () V!18197)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18197)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!62 (array!29375 array!29377 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18197 V!18197 V!18197 V!18197 (_ BitVec 32) Int) Unit!13521)

(assert (=> b!466218 (= lt!210735 (lemmaNoChangeToArrayThenSameMapNoExtras!62 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1867 (array!29375 array!29377 (_ BitVec 32) (_ BitVec 32) V!18197 V!18197 (_ BitVec 32) Int) ListLongMap!7371)

(assert (=> b!466218 (= lt!210737 (getCurrentListMapNoExtraKeys!1867 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466218 (= lt!210736 (getCurrentListMapNoExtraKeys!1867 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466219 () Bool)

(declare-fun res!278743 () Bool)

(assert (=> b!466219 (=> (not res!278743) (not e!272597))))

(declare-datatypes ((List!8565 0))(
  ( (Nil!8562) (Cons!8561 (h!9417 (_ BitVec 64)) (t!14525 List!8565)) )
))
(declare-fun arrayNoDuplicates!0 (array!29375 (_ BitVec 32) List!8565) Bool)

(assert (=> b!466219 (= res!278743 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8562))))

(declare-fun b!466220 () Bool)

(declare-fun e!272600 () Bool)

(declare-fun mapRes!20914 () Bool)

(assert (=> b!466220 (= e!272595 (and e!272600 mapRes!20914))))

(declare-fun condMapEmpty!20914 () Bool)

(declare-fun mapDefault!20914 () ValueCell!6066)

(assert (=> b!466220 (= condMapEmpty!20914 (= (arr!14114 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6066)) mapDefault!20914)))))

(declare-fun b!466221 () Bool)

(assert (=> b!466221 (= e!272600 tp_is_empty!12819)))

(declare-fun mapIsEmpty!20914 () Bool)

(assert (=> mapIsEmpty!20914 mapRes!20914))

(declare-fun b!466222 () Bool)

(assert (=> b!466222 (= e!272598 true)))

(declare-fun lt!210739 () ListLongMap!7371)

(declare-fun getCurrentListMap!2142 (array!29375 array!29377 (_ BitVec 32) (_ BitVec 32) V!18197 V!18197 (_ BitVec 32) Int) ListLongMap!7371)

(assert (=> b!466222 (= lt!210739 (getCurrentListMap!2142 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210738 () ListLongMap!7371)

(declare-fun +!1633 (ListLongMap!7371 tuple2!8444) ListLongMap!7371)

(assert (=> b!466222 (= lt!210738 (+!1633 (getCurrentListMap!2142 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8445 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun mapNonEmpty!20914 () Bool)

(declare-fun tp!40180 () Bool)

(assert (=> mapNonEmpty!20914 (= mapRes!20914 (and tp!40180 e!272596))))

(declare-fun mapRest!20914 () (Array (_ BitVec 32) ValueCell!6066))

(declare-fun mapKey!20914 () (_ BitVec 32))

(declare-fun mapValue!20914 () ValueCell!6066)

(assert (=> mapNonEmpty!20914 (= (arr!14114 _values!833) (store mapRest!20914 mapKey!20914 mapValue!20914))))

(assert (= (and start!41778 res!278740) b!466216))

(assert (= (and b!466216 res!278741) b!466217))

(assert (= (and b!466217 res!278744) b!466219))

(assert (= (and b!466219 res!278743) b!466218))

(assert (= (and b!466218 (not res!278742)) b!466222))

(assert (= (and b!466220 condMapEmpty!20914) mapIsEmpty!20914))

(assert (= (and b!466220 (not condMapEmpty!20914)) mapNonEmpty!20914))

(get-info :version)

(assert (= (and mapNonEmpty!20914 ((_ is ValueCellFull!6066) mapValue!20914)) b!466215))

(assert (= (and b!466220 ((_ is ValueCellFull!6066) mapDefault!20914)) b!466221))

(assert (= start!41778 b!466220))

(declare-fun m!448467 () Bool)

(assert (=> start!41778 m!448467))

(declare-fun m!448469 () Bool)

(assert (=> start!41778 m!448469))

(declare-fun m!448471 () Bool)

(assert (=> start!41778 m!448471))

(declare-fun m!448473 () Bool)

(assert (=> mapNonEmpty!20914 m!448473))

(declare-fun m!448475 () Bool)

(assert (=> b!466222 m!448475))

(declare-fun m!448477 () Bool)

(assert (=> b!466222 m!448477))

(assert (=> b!466222 m!448477))

(declare-fun m!448479 () Bool)

(assert (=> b!466222 m!448479))

(declare-fun m!448481 () Bool)

(assert (=> b!466218 m!448481))

(declare-fun m!448483 () Bool)

(assert (=> b!466218 m!448483))

(declare-fun m!448485 () Bool)

(assert (=> b!466218 m!448485))

(declare-fun m!448487 () Bool)

(assert (=> b!466217 m!448487))

(declare-fun m!448489 () Bool)

(assert (=> b!466219 m!448489))

(check-sat (not start!41778) (not b!466217) tp_is_empty!12819 (not mapNonEmpty!20914) (not b!466218) (not b!466219) (not b_next!11391) b_and!19777 (not b!466222))
(check-sat b_and!19777 (not b_next!11391))
