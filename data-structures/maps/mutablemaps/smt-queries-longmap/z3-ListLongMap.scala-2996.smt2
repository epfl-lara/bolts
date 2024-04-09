; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42290 () Bool)

(assert start!42290)

(declare-fun b_free!11787 () Bool)

(declare-fun b_next!11787 () Bool)

(assert (=> start!42290 (= b_free!11787 (not b_next!11787))))

(declare-fun tp!41388 () Bool)

(declare-fun b_and!20243 () Bool)

(assert (=> start!42290 (= tp!41388 b_and!20243)))

(declare-fun b!471619 () Bool)

(declare-fun e!276462 () Bool)

(declare-fun tp_is_empty!13215 () Bool)

(assert (=> b!471619 (= e!276462 tp_is_empty!13215)))

(declare-fun res!281804 () Bool)

(declare-fun e!276460 () Bool)

(assert (=> start!42290 (=> (not res!281804) (not e!276460))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42290 (= res!281804 (validMask!0 mask!1365))))

(assert (=> start!42290 e!276460))

(assert (=> start!42290 tp_is_empty!13215))

(assert (=> start!42290 tp!41388))

(assert (=> start!42290 true))

(declare-datatypes ((array!30157 0))(
  ( (array!30158 (arr!14497 (Array (_ BitVec 32) (_ BitVec 64))) (size!14849 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30157)

(declare-fun array_inv!10460 (array!30157) Bool)

(assert (=> start!42290 (array_inv!10460 _keys!1025)))

(declare-datatypes ((V!18725 0))(
  ( (V!18726 (val!6652 Int)) )
))
(declare-datatypes ((ValueCell!6264 0))(
  ( (ValueCellFull!6264 (v!8939 V!18725)) (EmptyCell!6264) )
))
(declare-datatypes ((array!30159 0))(
  ( (array!30160 (arr!14498 (Array (_ BitVec 32) ValueCell!6264)) (size!14850 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30159)

(declare-fun e!276463 () Bool)

(declare-fun array_inv!10461 (array!30159) Bool)

(assert (=> start!42290 (and (array_inv!10461 _values!833) e!276463)))

(declare-fun b!471620 () Bool)

(declare-fun res!281806 () Bool)

(assert (=> b!471620 (=> (not res!281806) (not e!276460))))

(declare-datatypes ((List!8858 0))(
  ( (Nil!8855) (Cons!8854 (h!9710 (_ BitVec 64)) (t!14832 List!8858)) )
))
(declare-fun arrayNoDuplicates!0 (array!30157 (_ BitVec 32) List!8858) Bool)

(assert (=> b!471620 (= res!281806 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8855))))

(declare-fun b!471621 () Bool)

(declare-fun e!276461 () Bool)

(assert (=> b!471621 (= e!276461 tp_is_empty!13215)))

(declare-fun mapNonEmpty!21529 () Bool)

(declare-fun mapRes!21529 () Bool)

(declare-fun tp!41389 () Bool)

(assert (=> mapNonEmpty!21529 (= mapRes!21529 (and tp!41389 e!276461))))

(declare-fun mapRest!21529 () (Array (_ BitVec 32) ValueCell!6264))

(declare-fun mapValue!21529 () ValueCell!6264)

(declare-fun mapKey!21529 () (_ BitVec 32))

(assert (=> mapNonEmpty!21529 (= (arr!14498 _values!833) (store mapRest!21529 mapKey!21529 mapValue!21529))))

(declare-fun b!471622 () Bool)

(assert (=> b!471622 (= e!276460 (not true))))

(declare-datatypes ((tuple2!8742 0))(
  ( (tuple2!8743 (_1!4381 (_ BitVec 64)) (_2!4381 V!18725)) )
))
(declare-datatypes ((List!8859 0))(
  ( (Nil!8856) (Cons!8855 (h!9711 tuple2!8742) (t!14833 List!8859)) )
))
(declare-datatypes ((ListLongMap!7669 0))(
  ( (ListLongMap!7670 (toList!3850 List!8859)) )
))
(declare-fun lt!214014 () ListLongMap!7669)

(declare-fun lt!214013 () ListLongMap!7669)

(assert (=> b!471622 (= lt!214014 lt!214013)))

(declare-datatypes ((Unit!13826 0))(
  ( (Unit!13827) )
))
(declare-fun lt!214012 () Unit!13826)

(declare-fun minValueBefore!38 () V!18725)

(declare-fun zeroValue!794 () V!18725)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18725)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!207 (array!30157 array!30159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18725 V!18725 V!18725 V!18725 (_ BitVec 32) Int) Unit!13826)

(assert (=> b!471622 (= lt!214012 (lemmaNoChangeToArrayThenSameMapNoExtras!207 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2012 (array!30157 array!30159 (_ BitVec 32) (_ BitVec 32) V!18725 V!18725 (_ BitVec 32) Int) ListLongMap!7669)

(assert (=> b!471622 (= lt!214013 (getCurrentListMapNoExtraKeys!2012 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471622 (= lt!214014 (getCurrentListMapNoExtraKeys!2012 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471623 () Bool)

(assert (=> b!471623 (= e!276463 (and e!276462 mapRes!21529))))

(declare-fun condMapEmpty!21529 () Bool)

(declare-fun mapDefault!21529 () ValueCell!6264)

(assert (=> b!471623 (= condMapEmpty!21529 (= (arr!14498 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6264)) mapDefault!21529)))))

(declare-fun mapIsEmpty!21529 () Bool)

(assert (=> mapIsEmpty!21529 mapRes!21529))

(declare-fun b!471624 () Bool)

(declare-fun res!281805 () Bool)

(assert (=> b!471624 (=> (not res!281805) (not e!276460))))

(assert (=> b!471624 (= res!281805 (and (= (size!14850 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14849 _keys!1025) (size!14850 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471625 () Bool)

(declare-fun res!281807 () Bool)

(assert (=> b!471625 (=> (not res!281807) (not e!276460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30157 (_ BitVec 32)) Bool)

(assert (=> b!471625 (= res!281807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!42290 res!281804) b!471624))

(assert (= (and b!471624 res!281805) b!471625))

(assert (= (and b!471625 res!281807) b!471620))

(assert (= (and b!471620 res!281806) b!471622))

(assert (= (and b!471623 condMapEmpty!21529) mapIsEmpty!21529))

(assert (= (and b!471623 (not condMapEmpty!21529)) mapNonEmpty!21529))

(get-info :version)

(assert (= (and mapNonEmpty!21529 ((_ is ValueCellFull!6264) mapValue!21529)) b!471621))

(assert (= (and b!471623 ((_ is ValueCellFull!6264) mapDefault!21529)) b!471619))

(assert (= start!42290 b!471623))

(declare-fun m!453733 () Bool)

(assert (=> b!471622 m!453733))

(declare-fun m!453735 () Bool)

(assert (=> b!471622 m!453735))

(declare-fun m!453737 () Bool)

(assert (=> b!471622 m!453737))

(declare-fun m!453739 () Bool)

(assert (=> b!471620 m!453739))

(declare-fun m!453741 () Bool)

(assert (=> b!471625 m!453741))

(declare-fun m!453743 () Bool)

(assert (=> start!42290 m!453743))

(declare-fun m!453745 () Bool)

(assert (=> start!42290 m!453745))

(declare-fun m!453747 () Bool)

(assert (=> start!42290 m!453747))

(declare-fun m!453749 () Bool)

(assert (=> mapNonEmpty!21529 m!453749))

(check-sat (not b!471622) b_and!20243 (not b!471620) tp_is_empty!13215 (not mapNonEmpty!21529) (not start!42290) (not b_next!11787) (not b!471625))
(check-sat b_and!20243 (not b_next!11787))
