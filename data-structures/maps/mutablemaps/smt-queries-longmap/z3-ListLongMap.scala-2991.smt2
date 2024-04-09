; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42260 () Bool)

(assert start!42260)

(declare-fun b_free!11757 () Bool)

(declare-fun b_next!11757 () Bool)

(assert (=> start!42260 (= b_free!11757 (not b_next!11757))))

(declare-fun tp!41298 () Bool)

(declare-fun b_and!20213 () Bool)

(assert (=> start!42260 (= tp!41298 b_and!20213)))

(declare-fun b!471304 () Bool)

(declare-fun res!281626 () Bool)

(declare-fun e!276236 () Bool)

(assert (=> b!471304 (=> (not res!281626) (not e!276236))))

(declare-datatypes ((array!30099 0))(
  ( (array!30100 (arr!14468 (Array (_ BitVec 32) (_ BitVec 64))) (size!14820 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30099)

(declare-datatypes ((List!8835 0))(
  ( (Nil!8832) (Cons!8831 (h!9687 (_ BitVec 64)) (t!14809 List!8835)) )
))
(declare-fun arrayNoDuplicates!0 (array!30099 (_ BitVec 32) List!8835) Bool)

(assert (=> b!471304 (= res!281626 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8832))))

(declare-fun b!471305 () Bool)

(declare-fun res!281625 () Bool)

(assert (=> b!471305 (=> (not res!281625) (not e!276236))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30099 (_ BitVec 32)) Bool)

(assert (=> b!471305 (= res!281625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471306 () Bool)

(declare-fun e!276234 () Bool)

(declare-fun tp_is_empty!13185 () Bool)

(assert (=> b!471306 (= e!276234 tp_is_empty!13185)))

(declare-fun res!281624 () Bool)

(assert (=> start!42260 (=> (not res!281624) (not e!276236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42260 (= res!281624 (validMask!0 mask!1365))))

(assert (=> start!42260 e!276236))

(assert (=> start!42260 tp_is_empty!13185))

(assert (=> start!42260 tp!41298))

(assert (=> start!42260 true))

(declare-fun array_inv!10438 (array!30099) Bool)

(assert (=> start!42260 (array_inv!10438 _keys!1025)))

(declare-datatypes ((V!18685 0))(
  ( (V!18686 (val!6637 Int)) )
))
(declare-datatypes ((ValueCell!6249 0))(
  ( (ValueCellFull!6249 (v!8924 V!18685)) (EmptyCell!6249) )
))
(declare-datatypes ((array!30101 0))(
  ( (array!30102 (arr!14469 (Array (_ BitVec 32) ValueCell!6249)) (size!14821 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30101)

(declare-fun e!276235 () Bool)

(declare-fun array_inv!10439 (array!30101) Bool)

(assert (=> start!42260 (and (array_inv!10439 _values!833) e!276235)))

(declare-fun b!471307 () Bool)

(declare-fun res!281627 () Bool)

(assert (=> b!471307 (=> (not res!281627) (not e!276236))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471307 (= res!281627 (and (= (size!14821 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14820 _keys!1025) (size!14821 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471308 () Bool)

(assert (=> b!471308 (= e!276236 (not true))))

(declare-datatypes ((tuple2!8716 0))(
  ( (tuple2!8717 (_1!4368 (_ BitVec 64)) (_2!4368 V!18685)) )
))
(declare-datatypes ((List!8836 0))(
  ( (Nil!8833) (Cons!8832 (h!9688 tuple2!8716) (t!14810 List!8836)) )
))
(declare-datatypes ((ListLongMap!7643 0))(
  ( (ListLongMap!7644 (toList!3837 List!8836)) )
))
(declare-fun lt!213878 () ListLongMap!7643)

(declare-fun lt!213879 () ListLongMap!7643)

(assert (=> b!471308 (= lt!213878 lt!213879)))

(declare-datatypes ((Unit!13800 0))(
  ( (Unit!13801) )
))
(declare-fun lt!213877 () Unit!13800)

(declare-fun zeroValue!794 () V!18685)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueBefore!38 () V!18685)

(declare-fun minValueAfter!38 () V!18685)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!194 (array!30099 array!30101 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18685 V!18685 V!18685 V!18685 (_ BitVec 32) Int) Unit!13800)

(assert (=> b!471308 (= lt!213877 (lemmaNoChangeToArrayThenSameMapNoExtras!194 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1999 (array!30099 array!30101 (_ BitVec 32) (_ BitVec 32) V!18685 V!18685 (_ BitVec 32) Int) ListLongMap!7643)

(assert (=> b!471308 (= lt!213879 (getCurrentListMapNoExtraKeys!1999 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471308 (= lt!213878 (getCurrentListMapNoExtraKeys!1999 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471309 () Bool)

(declare-fun e!276237 () Bool)

(declare-fun mapRes!21484 () Bool)

(assert (=> b!471309 (= e!276235 (and e!276237 mapRes!21484))))

(declare-fun condMapEmpty!21484 () Bool)

(declare-fun mapDefault!21484 () ValueCell!6249)

(assert (=> b!471309 (= condMapEmpty!21484 (= (arr!14469 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6249)) mapDefault!21484)))))

(declare-fun mapIsEmpty!21484 () Bool)

(assert (=> mapIsEmpty!21484 mapRes!21484))

(declare-fun mapNonEmpty!21484 () Bool)

(declare-fun tp!41299 () Bool)

(assert (=> mapNonEmpty!21484 (= mapRes!21484 (and tp!41299 e!276234))))

(declare-fun mapRest!21484 () (Array (_ BitVec 32) ValueCell!6249))

(declare-fun mapKey!21484 () (_ BitVec 32))

(declare-fun mapValue!21484 () ValueCell!6249)

(assert (=> mapNonEmpty!21484 (= (arr!14469 _values!833) (store mapRest!21484 mapKey!21484 mapValue!21484))))

(declare-fun b!471310 () Bool)

(assert (=> b!471310 (= e!276237 tp_is_empty!13185)))

(assert (= (and start!42260 res!281624) b!471307))

(assert (= (and b!471307 res!281627) b!471305))

(assert (= (and b!471305 res!281625) b!471304))

(assert (= (and b!471304 res!281626) b!471308))

(assert (= (and b!471309 condMapEmpty!21484) mapIsEmpty!21484))

(assert (= (and b!471309 (not condMapEmpty!21484)) mapNonEmpty!21484))

(get-info :version)

(assert (= (and mapNonEmpty!21484 ((_ is ValueCellFull!6249) mapValue!21484)) b!471306))

(assert (= (and b!471309 ((_ is ValueCellFull!6249) mapDefault!21484)) b!471310))

(assert (= start!42260 b!471309))

(declare-fun m!453463 () Bool)

(assert (=> b!471304 m!453463))

(declare-fun m!453465 () Bool)

(assert (=> start!42260 m!453465))

(declare-fun m!453467 () Bool)

(assert (=> start!42260 m!453467))

(declare-fun m!453469 () Bool)

(assert (=> start!42260 m!453469))

(declare-fun m!453471 () Bool)

(assert (=> b!471308 m!453471))

(declare-fun m!453473 () Bool)

(assert (=> b!471308 m!453473))

(declare-fun m!453475 () Bool)

(assert (=> b!471308 m!453475))

(declare-fun m!453477 () Bool)

(assert (=> mapNonEmpty!21484 m!453477))

(declare-fun m!453479 () Bool)

(assert (=> b!471305 m!453479))

(check-sat b_and!20213 (not b_next!11757) (not b!471304) (not mapNonEmpty!21484) (not start!42260) (not b!471305) tp_is_empty!13185 (not b!471308))
(check-sat b_and!20213 (not b_next!11757))
