; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42582 () Bool)

(assert start!42582)

(declare-fun b_free!12009 () Bool)

(declare-fun b_next!12009 () Bool)

(assert (=> start!42582 (= b_free!12009 (not b_next!12009))))

(declare-fun tp!42066 () Bool)

(declare-fun b_and!20507 () Bool)

(assert (=> start!42582 (= tp!42066 b_and!20507)))

(declare-fun b!474788 () Bool)

(declare-fun e!278743 () Bool)

(declare-fun e!278745 () Bool)

(declare-fun mapRes!21874 () Bool)

(assert (=> b!474788 (= e!278743 (and e!278745 mapRes!21874))))

(declare-fun condMapEmpty!21874 () Bool)

(declare-datatypes ((V!19021 0))(
  ( (V!19022 (val!6763 Int)) )
))
(declare-datatypes ((ValueCell!6375 0))(
  ( (ValueCellFull!6375 (v!9052 V!19021)) (EmptyCell!6375) )
))
(declare-datatypes ((array!30593 0))(
  ( (array!30594 (arr!14711 (Array (_ BitVec 32) ValueCell!6375)) (size!15063 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30593)

(declare-fun mapDefault!21874 () ValueCell!6375)

(assert (=> b!474788 (= condMapEmpty!21874 (= (arr!14711 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6375)) mapDefault!21874)))))

(declare-fun b!474789 () Bool)

(declare-fun res!283627 () Bool)

(declare-fun e!278746 () Bool)

(assert (=> b!474789 (=> (not res!283627) (not e!278746))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30595 0))(
  ( (array!30596 (arr!14712 (Array (_ BitVec 32) (_ BitVec 64))) (size!15064 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30595)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474789 (= res!283627 (and (= (size!15063 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15064 _keys!1025) (size!15063 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21874 () Bool)

(assert (=> mapIsEmpty!21874 mapRes!21874))

(declare-fun b!474790 () Bool)

(assert (=> b!474790 (= e!278746 false)))

(declare-fun zeroValue!794 () V!19021)

(declare-datatypes ((tuple2!8918 0))(
  ( (tuple2!8919 (_1!4469 (_ BitVec 64)) (_2!4469 V!19021)) )
))
(declare-datatypes ((List!9030 0))(
  ( (Nil!9027) (Cons!9026 (h!9882 tuple2!8918) (t!15012 List!9030)) )
))
(declare-datatypes ((ListLongMap!7845 0))(
  ( (ListLongMap!7846 (toList!3938 List!9030)) )
))
(declare-fun lt!216308 () ListLongMap!7845)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!19021)

(declare-fun getCurrentListMapNoExtraKeys!2092 (array!30595 array!30593 (_ BitVec 32) (_ BitVec 32) V!19021 V!19021 (_ BitVec 32) Int) ListLongMap!7845)

(assert (=> b!474790 (= lt!216308 (getCurrentListMapNoExtraKeys!2092 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19021)

(declare-fun lt!216309 () ListLongMap!7845)

(assert (=> b!474790 (= lt!216309 (getCurrentListMapNoExtraKeys!2092 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474791 () Bool)

(declare-fun res!283628 () Bool)

(assert (=> b!474791 (=> (not res!283628) (not e!278746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30595 (_ BitVec 32)) Bool)

(assert (=> b!474791 (= res!283628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474792 () Bool)

(declare-fun res!283629 () Bool)

(assert (=> b!474792 (=> (not res!283629) (not e!278746))))

(declare-datatypes ((List!9031 0))(
  ( (Nil!9028) (Cons!9027 (h!9883 (_ BitVec 64)) (t!15013 List!9031)) )
))
(declare-fun arrayNoDuplicates!0 (array!30595 (_ BitVec 32) List!9031) Bool)

(assert (=> b!474792 (= res!283629 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9028))))

(declare-fun res!283626 () Bool)

(assert (=> start!42582 (=> (not res!283626) (not e!278746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42582 (= res!283626 (validMask!0 mask!1365))))

(assert (=> start!42582 e!278746))

(declare-fun tp_is_empty!13437 () Bool)

(assert (=> start!42582 tp_is_empty!13437))

(assert (=> start!42582 tp!42066))

(assert (=> start!42582 true))

(declare-fun array_inv!10602 (array!30595) Bool)

(assert (=> start!42582 (array_inv!10602 _keys!1025)))

(declare-fun array_inv!10603 (array!30593) Bool)

(assert (=> start!42582 (and (array_inv!10603 _values!833) e!278743)))

(declare-fun b!474793 () Bool)

(declare-fun e!278742 () Bool)

(assert (=> b!474793 (= e!278742 tp_is_empty!13437)))

(declare-fun mapNonEmpty!21874 () Bool)

(declare-fun tp!42067 () Bool)

(assert (=> mapNonEmpty!21874 (= mapRes!21874 (and tp!42067 e!278742))))

(declare-fun mapKey!21874 () (_ BitVec 32))

(declare-fun mapRest!21874 () (Array (_ BitVec 32) ValueCell!6375))

(declare-fun mapValue!21874 () ValueCell!6375)

(assert (=> mapNonEmpty!21874 (= (arr!14711 _values!833) (store mapRest!21874 mapKey!21874 mapValue!21874))))

(declare-fun b!474794 () Bool)

(assert (=> b!474794 (= e!278745 tp_is_empty!13437)))

(assert (= (and start!42582 res!283626) b!474789))

(assert (= (and b!474789 res!283627) b!474791))

(assert (= (and b!474791 res!283628) b!474792))

(assert (= (and b!474792 res!283629) b!474790))

(assert (= (and b!474788 condMapEmpty!21874) mapIsEmpty!21874))

(assert (= (and b!474788 (not condMapEmpty!21874)) mapNonEmpty!21874))

(get-info :version)

(assert (= (and mapNonEmpty!21874 ((_ is ValueCellFull!6375) mapValue!21874)) b!474793))

(assert (= (and b!474788 ((_ is ValueCellFull!6375) mapDefault!21874)) b!474794))

(assert (= start!42582 b!474788))

(declare-fun m!457111 () Bool)

(assert (=> b!474790 m!457111))

(declare-fun m!457113 () Bool)

(assert (=> b!474790 m!457113))

(declare-fun m!457115 () Bool)

(assert (=> start!42582 m!457115))

(declare-fun m!457117 () Bool)

(assert (=> start!42582 m!457117))

(declare-fun m!457119 () Bool)

(assert (=> start!42582 m!457119))

(declare-fun m!457121 () Bool)

(assert (=> b!474791 m!457121))

(declare-fun m!457123 () Bool)

(assert (=> b!474792 m!457123))

(declare-fun m!457125 () Bool)

(assert (=> mapNonEmpty!21874 m!457125))

(check-sat (not start!42582) b_and!20507 (not b!474790) (not b!474791) (not b!474792) tp_is_empty!13437 (not mapNonEmpty!21874) (not b_next!12009))
(check-sat b_and!20507 (not b_next!12009))
