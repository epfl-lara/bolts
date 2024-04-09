; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42080 () Bool)

(assert start!42080)

(declare-fun b_free!11625 () Bool)

(declare-fun b_next!11625 () Bool)

(assert (=> start!42080 (= b_free!11625 (not b_next!11625))))

(declare-fun tp!40893 () Bool)

(declare-fun b_and!20053 () Bool)

(assert (=> start!42080 (= tp!40893 b_and!20053)))

(declare-fun b!469538 () Bool)

(declare-fun e!274995 () Bool)

(declare-fun tp_is_empty!13053 () Bool)

(assert (=> b!469538 (= e!274995 tp_is_empty!13053)))

(declare-fun b!469539 () Bool)

(declare-fun e!274994 () Bool)

(declare-fun mapRes!21277 () Bool)

(assert (=> b!469539 (= e!274994 (and e!274995 mapRes!21277))))

(declare-fun condMapEmpty!21277 () Bool)

(declare-datatypes ((V!18509 0))(
  ( (V!18510 (val!6571 Int)) )
))
(declare-datatypes ((ValueCell!6183 0))(
  ( (ValueCellFull!6183 (v!8857 V!18509)) (EmptyCell!6183) )
))
(declare-datatypes ((array!29841 0))(
  ( (array!29842 (arr!14342 (Array (_ BitVec 32) ValueCell!6183)) (size!14694 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29841)

(declare-fun mapDefault!21277 () ValueCell!6183)

(assert (=> b!469539 (= condMapEmpty!21277 (= (arr!14342 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6183)) mapDefault!21277)))))

(declare-fun res!280664 () Bool)

(declare-fun e!274992 () Bool)

(assert (=> start!42080 (=> (not res!280664) (not e!274992))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42080 (= res!280664 (validMask!0 mask!1365))))

(assert (=> start!42080 e!274992))

(assert (=> start!42080 tp_is_empty!13053))

(assert (=> start!42080 tp!40893))

(assert (=> start!42080 true))

(declare-datatypes ((array!29843 0))(
  ( (array!29844 (arr!14343 (Array (_ BitVec 32) (_ BitVec 64))) (size!14695 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29843)

(declare-fun array_inv!10342 (array!29843) Bool)

(assert (=> start!42080 (array_inv!10342 _keys!1025)))

(declare-fun array_inv!10343 (array!29841) Bool)

(assert (=> start!42080 (and (array_inv!10343 _values!833) e!274994)))

(declare-fun b!469540 () Bool)

(declare-fun e!274993 () Bool)

(assert (=> b!469540 (= e!274992 (not e!274993))))

(declare-fun res!280666 () Bool)

(assert (=> b!469540 (=> res!280666 e!274993)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!469540 (= res!280666 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8626 0))(
  ( (tuple2!8627 (_1!4323 (_ BitVec 64)) (_2!4323 V!18509)) )
))
(declare-datatypes ((List!8743 0))(
  ( (Nil!8740) (Cons!8739 (h!9595 tuple2!8626) (t!14711 List!8743)) )
))
(declare-datatypes ((ListLongMap!7553 0))(
  ( (ListLongMap!7554 (toList!3792 List!8743)) )
))
(declare-fun lt!212931 () ListLongMap!7553)

(declare-fun lt!212928 () ListLongMap!7553)

(assert (=> b!469540 (= lt!212931 lt!212928)))

(declare-fun minValueBefore!38 () V!18509)

(declare-fun zeroValue!794 () V!18509)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13708 0))(
  ( (Unit!13709) )
))
(declare-fun lt!212933 () Unit!13708)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18509)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!150 (array!29843 array!29841 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18509 V!18509 V!18509 V!18509 (_ BitVec 32) Int) Unit!13708)

(assert (=> b!469540 (= lt!212933 (lemmaNoChangeToArrayThenSameMapNoExtras!150 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1955 (array!29843 array!29841 (_ BitVec 32) (_ BitVec 32) V!18509 V!18509 (_ BitVec 32) Int) ListLongMap!7553)

(assert (=> b!469540 (= lt!212928 (getCurrentListMapNoExtraKeys!1955 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469540 (= lt!212931 (getCurrentListMapNoExtraKeys!1955 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469541 () Bool)

(declare-fun res!280663 () Bool)

(assert (=> b!469541 (=> (not res!280663) (not e!274992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29843 (_ BitVec 32)) Bool)

(assert (=> b!469541 (= res!280663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469542 () Bool)

(declare-fun res!280662 () Bool)

(assert (=> b!469542 (=> (not res!280662) (not e!274992))))

(declare-datatypes ((List!8744 0))(
  ( (Nil!8741) (Cons!8740 (h!9596 (_ BitVec 64)) (t!14712 List!8744)) )
))
(declare-fun arrayNoDuplicates!0 (array!29843 (_ BitVec 32) List!8744) Bool)

(assert (=> b!469542 (= res!280662 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8741))))

(declare-fun b!469543 () Bool)

(assert (=> b!469543 (= e!274993 true)))

(declare-fun lt!212934 () tuple2!8626)

(declare-fun +!1679 (ListLongMap!7553 tuple2!8626) ListLongMap!7553)

(assert (=> b!469543 (= (+!1679 lt!212931 lt!212934) (+!1679 (+!1679 lt!212931 (tuple2!8627 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212934))))

(assert (=> b!469543 (= lt!212934 (tuple2!8627 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212932 () Unit!13708)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!120 (ListLongMap!7553 (_ BitVec 64) V!18509 V!18509) Unit!13708)

(assert (=> b!469543 (= lt!212932 (addSameAsAddTwiceSameKeyDiffValues!120 lt!212931 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212930 () ListLongMap!7553)

(declare-fun getCurrentListMap!2201 (array!29843 array!29841 (_ BitVec 32) (_ BitVec 32) V!18509 V!18509 (_ BitVec 32) Int) ListLongMap!7553)

(assert (=> b!469543 (= lt!212930 (getCurrentListMap!2201 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212929 () ListLongMap!7553)

(assert (=> b!469543 (= lt!212929 (getCurrentListMap!2201 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469544 () Bool)

(declare-fun res!280665 () Bool)

(assert (=> b!469544 (=> (not res!280665) (not e!274992))))

(assert (=> b!469544 (= res!280665 (and (= (size!14694 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14695 _keys!1025) (size!14694 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469545 () Bool)

(declare-fun e!274996 () Bool)

(assert (=> b!469545 (= e!274996 tp_is_empty!13053)))

(declare-fun mapIsEmpty!21277 () Bool)

(assert (=> mapIsEmpty!21277 mapRes!21277))

(declare-fun mapNonEmpty!21277 () Bool)

(declare-fun tp!40894 () Bool)

(assert (=> mapNonEmpty!21277 (= mapRes!21277 (and tp!40894 e!274996))))

(declare-fun mapRest!21277 () (Array (_ BitVec 32) ValueCell!6183))

(declare-fun mapKey!21277 () (_ BitVec 32))

(declare-fun mapValue!21277 () ValueCell!6183)

(assert (=> mapNonEmpty!21277 (= (arr!14342 _values!833) (store mapRest!21277 mapKey!21277 mapValue!21277))))

(assert (= (and start!42080 res!280664) b!469544))

(assert (= (and b!469544 res!280665) b!469541))

(assert (= (and b!469541 res!280663) b!469542))

(assert (= (and b!469542 res!280662) b!469540))

(assert (= (and b!469540 (not res!280666)) b!469543))

(assert (= (and b!469539 condMapEmpty!21277) mapIsEmpty!21277))

(assert (= (and b!469539 (not condMapEmpty!21277)) mapNonEmpty!21277))

(get-info :version)

(assert (= (and mapNonEmpty!21277 ((_ is ValueCellFull!6183) mapValue!21277)) b!469545))

(assert (= (and b!469539 ((_ is ValueCellFull!6183) mapDefault!21277)) b!469538))

(assert (= start!42080 b!469539))

(declare-fun m!451811 () Bool)

(assert (=> start!42080 m!451811))

(declare-fun m!451813 () Bool)

(assert (=> start!42080 m!451813))

(declare-fun m!451815 () Bool)

(assert (=> start!42080 m!451815))

(declare-fun m!451817 () Bool)

(assert (=> b!469543 m!451817))

(declare-fun m!451819 () Bool)

(assert (=> b!469543 m!451819))

(declare-fun m!451821 () Bool)

(assert (=> b!469543 m!451821))

(declare-fun m!451823 () Bool)

(assert (=> b!469543 m!451823))

(assert (=> b!469543 m!451821))

(declare-fun m!451825 () Bool)

(assert (=> b!469543 m!451825))

(declare-fun m!451827 () Bool)

(assert (=> b!469543 m!451827))

(declare-fun m!451829 () Bool)

(assert (=> b!469540 m!451829))

(declare-fun m!451831 () Bool)

(assert (=> b!469540 m!451831))

(declare-fun m!451833 () Bool)

(assert (=> b!469540 m!451833))

(declare-fun m!451835 () Bool)

(assert (=> b!469541 m!451835))

(declare-fun m!451837 () Bool)

(assert (=> b!469542 m!451837))

(declare-fun m!451839 () Bool)

(assert (=> mapNonEmpty!21277 m!451839))

(check-sat b_and!20053 (not b!469541) (not b!469540) tp_is_empty!13053 (not b!469542) (not b!469543) (not b_next!11625) (not start!42080) (not mapNonEmpty!21277))
(check-sat b_and!20053 (not b_next!11625))
