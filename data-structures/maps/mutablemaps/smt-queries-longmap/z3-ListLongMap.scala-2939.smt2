; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41850 () Bool)

(assert start!41850)

(declare-fun b_free!11445 () Bool)

(declare-fun b_next!11445 () Bool)

(assert (=> start!41850 (= b_free!11445 (not b_next!11445))))

(declare-fun tp!40345 () Bool)

(declare-fun b_and!19843 () Bool)

(assert (=> start!41850 (= tp!40345 b_and!19843)))

(declare-fun b!467024 () Bool)

(declare-fun e!273169 () Bool)

(declare-fun tp_is_empty!12873 () Bool)

(assert (=> b!467024 (= e!273169 tp_is_empty!12873)))

(declare-fun b!467025 () Bool)

(declare-fun e!273170 () Bool)

(assert (=> b!467025 (= e!273170 tp_is_empty!12873)))

(declare-fun b!467026 () Bool)

(declare-fun e!273168 () Bool)

(assert (=> b!467026 (= e!273168 (not true))))

(declare-datatypes ((V!18269 0))(
  ( (V!18270 (val!6481 Int)) )
))
(declare-datatypes ((tuple2!8494 0))(
  ( (tuple2!8495 (_1!4257 (_ BitVec 64)) (_2!4257 V!18269)) )
))
(declare-datatypes ((List!8611 0))(
  ( (Nil!8608) (Cons!8607 (h!9463 tuple2!8494) (t!14573 List!8611)) )
))
(declare-datatypes ((ListLongMap!7421 0))(
  ( (ListLongMap!7422 (toList!3726 List!8611)) )
))
(declare-fun lt!211217 () ListLongMap!7421)

(declare-fun lt!211216 () ListLongMap!7421)

(assert (=> b!467026 (= lt!211217 lt!211216)))

(declare-fun minValueBefore!38 () V!18269)

(declare-fun zeroValue!794 () V!18269)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13573 0))(
  ( (Unit!13574) )
))
(declare-fun lt!211218 () Unit!13573)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29481 0))(
  ( (array!29482 (arr!14165 (Array (_ BitVec 32) (_ BitVec 64))) (size!14517 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29481)

(declare-datatypes ((ValueCell!6093 0))(
  ( (ValueCellFull!6093 (v!8766 V!18269)) (EmptyCell!6093) )
))
(declare-datatypes ((array!29483 0))(
  ( (array!29484 (arr!14166 (Array (_ BitVec 32) ValueCell!6093)) (size!14518 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29483)

(declare-fun minValueAfter!38 () V!18269)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!87 (array!29481 array!29483 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18269 V!18269 V!18269 V!18269 (_ BitVec 32) Int) Unit!13573)

(assert (=> b!467026 (= lt!211218 (lemmaNoChangeToArrayThenSameMapNoExtras!87 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1892 (array!29481 array!29483 (_ BitVec 32) (_ BitVec 32) V!18269 V!18269 (_ BitVec 32) Int) ListLongMap!7421)

(assert (=> b!467026 (= lt!211216 (getCurrentListMapNoExtraKeys!1892 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467026 (= lt!211217 (getCurrentListMapNoExtraKeys!1892 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467027 () Bool)

(declare-fun res!279204 () Bool)

(assert (=> b!467027 (=> (not res!279204) (not e!273168))))

(declare-datatypes ((List!8612 0))(
  ( (Nil!8609) (Cons!8608 (h!9464 (_ BitVec 64)) (t!14574 List!8612)) )
))
(declare-fun arrayNoDuplicates!0 (array!29481 (_ BitVec 32) List!8612) Bool)

(assert (=> b!467027 (= res!279204 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8609))))

(declare-fun b!467028 () Bool)

(declare-fun e!273172 () Bool)

(declare-fun mapRes!20998 () Bool)

(assert (=> b!467028 (= e!273172 (and e!273169 mapRes!20998))))

(declare-fun condMapEmpty!20998 () Bool)

(declare-fun mapDefault!20998 () ValueCell!6093)

(assert (=> b!467028 (= condMapEmpty!20998 (= (arr!14166 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6093)) mapDefault!20998)))))

(declare-fun b!467029 () Bool)

(declare-fun res!279206 () Bool)

(assert (=> b!467029 (=> (not res!279206) (not e!273168))))

(assert (=> b!467029 (= res!279206 (and (= (size!14518 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14517 _keys!1025) (size!14518 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467030 () Bool)

(declare-fun res!279207 () Bool)

(assert (=> b!467030 (=> (not res!279207) (not e!273168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29481 (_ BitVec 32)) Bool)

(assert (=> b!467030 (= res!279207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20998 () Bool)

(assert (=> mapIsEmpty!20998 mapRes!20998))

(declare-fun mapNonEmpty!20998 () Bool)

(declare-fun tp!40344 () Bool)

(assert (=> mapNonEmpty!20998 (= mapRes!20998 (and tp!40344 e!273170))))

(declare-fun mapKey!20998 () (_ BitVec 32))

(declare-fun mapValue!20998 () ValueCell!6093)

(declare-fun mapRest!20998 () (Array (_ BitVec 32) ValueCell!6093))

(assert (=> mapNonEmpty!20998 (= (arr!14166 _values!833) (store mapRest!20998 mapKey!20998 mapValue!20998))))

(declare-fun res!279205 () Bool)

(assert (=> start!41850 (=> (not res!279205) (not e!273168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41850 (= res!279205 (validMask!0 mask!1365))))

(assert (=> start!41850 e!273168))

(assert (=> start!41850 tp_is_empty!12873))

(assert (=> start!41850 tp!40345))

(assert (=> start!41850 true))

(declare-fun array_inv!10212 (array!29481) Bool)

(assert (=> start!41850 (array_inv!10212 _keys!1025)))

(declare-fun array_inv!10213 (array!29483) Bool)

(assert (=> start!41850 (and (array_inv!10213 _values!833) e!273172)))

(assert (= (and start!41850 res!279205) b!467029))

(assert (= (and b!467029 res!279206) b!467030))

(assert (= (and b!467030 res!279207) b!467027))

(assert (= (and b!467027 res!279204) b!467026))

(assert (= (and b!467028 condMapEmpty!20998) mapIsEmpty!20998))

(assert (= (and b!467028 (not condMapEmpty!20998)) mapNonEmpty!20998))

(get-info :version)

(assert (= (and mapNonEmpty!20998 ((_ is ValueCellFull!6093) mapValue!20998)) b!467025))

(assert (= (and b!467028 ((_ is ValueCellFull!6093) mapDefault!20998)) b!467024))

(assert (= start!41850 b!467028))

(declare-fun m!449243 () Bool)

(assert (=> start!41850 m!449243))

(declare-fun m!449245 () Bool)

(assert (=> start!41850 m!449245))

(declare-fun m!449247 () Bool)

(assert (=> start!41850 m!449247))

(declare-fun m!449249 () Bool)

(assert (=> b!467026 m!449249))

(declare-fun m!449251 () Bool)

(assert (=> b!467026 m!449251))

(declare-fun m!449253 () Bool)

(assert (=> b!467026 m!449253))

(declare-fun m!449255 () Bool)

(assert (=> mapNonEmpty!20998 m!449255))

(declare-fun m!449257 () Bool)

(assert (=> b!467027 m!449257))

(declare-fun m!449259 () Bool)

(assert (=> b!467030 m!449259))

(check-sat (not mapNonEmpty!20998) (not b!467027) (not b_next!11445) (not b!467030) b_and!19843 tp_is_empty!12873 (not start!41850) (not b!467026))
(check-sat b_and!19843 (not b_next!11445))
