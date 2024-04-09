; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41588 () Bool)

(assert start!41588)

(declare-fun b_free!11247 () Bool)

(declare-fun b_next!11247 () Bool)

(assert (=> start!41588 (= b_free!11247 (not b_next!11247))))

(declare-fun tp!39738 () Bool)

(declare-fun b_and!19605 () Bool)

(assert (=> start!41588 (= tp!39738 b_and!19605)))

(declare-fun res!277631 () Bool)

(declare-fun e!271193 () Bool)

(assert (=> start!41588 (=> (not res!277631) (not e!271193))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41588 (= res!277631 (validMask!0 mask!1365))))

(assert (=> start!41588 e!271193))

(declare-fun tp_is_empty!12675 () Bool)

(assert (=> start!41588 tp_is_empty!12675))

(assert (=> start!41588 tp!39738))

(assert (=> start!41588 true))

(declare-datatypes ((array!29097 0))(
  ( (array!29098 (arr!13977 (Array (_ BitVec 32) (_ BitVec 64))) (size!14329 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29097)

(declare-fun array_inv!10078 (array!29097) Bool)

(assert (=> start!41588 (array_inv!10078 _keys!1025)))

(declare-datatypes ((V!18005 0))(
  ( (V!18006 (val!6382 Int)) )
))
(declare-datatypes ((ValueCell!5994 0))(
  ( (ValueCellFull!5994 (v!8665 V!18005)) (EmptyCell!5994) )
))
(declare-datatypes ((array!29099 0))(
  ( (array!29100 (arr!13978 (Array (_ BitVec 32) ValueCell!5994)) (size!14330 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29099)

(declare-fun e!271194 () Bool)

(declare-fun array_inv!10079 (array!29099) Bool)

(assert (=> start!41588 (and (array_inv!10079 _values!833) e!271194)))

(declare-fun mapNonEmpty!20689 () Bool)

(declare-fun mapRes!20689 () Bool)

(declare-fun tp!39739 () Bool)

(declare-fun e!271191 () Bool)

(assert (=> mapNonEmpty!20689 (= mapRes!20689 (and tp!39739 e!271191))))

(declare-fun mapRest!20689 () (Array (_ BitVec 32) ValueCell!5994))

(declare-fun mapValue!20689 () ValueCell!5994)

(declare-fun mapKey!20689 () (_ BitVec 32))

(assert (=> mapNonEmpty!20689 (= (arr!13978 _values!833) (store mapRest!20689 mapKey!20689 mapValue!20689))))

(declare-fun b!464245 () Bool)

(declare-fun res!277628 () Bool)

(assert (=> b!464245 (=> (not res!277628) (not e!271193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29097 (_ BitVec 32)) Bool)

(assert (=> b!464245 (= res!277628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464246 () Bool)

(assert (=> b!464246 (= e!271193 (not true))))

(declare-datatypes ((tuple2!8338 0))(
  ( (tuple2!8339 (_1!4179 (_ BitVec 64)) (_2!4179 V!18005)) )
))
(declare-datatypes ((List!8466 0))(
  ( (Nil!8463) (Cons!8462 (h!9318 tuple2!8338) (t!14420 List!8466)) )
))
(declare-datatypes ((ListLongMap!7265 0))(
  ( (ListLongMap!7266 (toList!3648 List!8466)) )
))
(declare-fun lt!209679 () ListLongMap!7265)

(declare-fun lt!209677 () ListLongMap!7265)

(assert (=> b!464246 (= lt!209679 lt!209677)))

(declare-fun minValueBefore!38 () V!18005)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((Unit!13417 0))(
  ( (Unit!13418) )
))
(declare-fun lt!209678 () Unit!13417)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun zeroValue!794 () V!18005)

(declare-fun minValueAfter!38 () V!18005)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!11 (array!29097 array!29099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18005 V!18005 V!18005 V!18005 (_ BitVec 32) Int) Unit!13417)

(assert (=> b!464246 (= lt!209678 (lemmaNoChangeToArrayThenSameMapNoExtras!11 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1816 (array!29097 array!29099 (_ BitVec 32) (_ BitVec 32) V!18005 V!18005 (_ BitVec 32) Int) ListLongMap!7265)

(assert (=> b!464246 (= lt!209677 (getCurrentListMapNoExtraKeys!1816 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464246 (= lt!209679 (getCurrentListMapNoExtraKeys!1816 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464247 () Bool)

(declare-fun res!277629 () Bool)

(assert (=> b!464247 (=> (not res!277629) (not e!271193))))

(declare-datatypes ((List!8467 0))(
  ( (Nil!8464) (Cons!8463 (h!9319 (_ BitVec 64)) (t!14421 List!8467)) )
))
(declare-fun arrayNoDuplicates!0 (array!29097 (_ BitVec 32) List!8467) Bool)

(assert (=> b!464247 (= res!277629 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8464))))

(declare-fun mapIsEmpty!20689 () Bool)

(assert (=> mapIsEmpty!20689 mapRes!20689))

(declare-fun b!464248 () Bool)

(assert (=> b!464248 (= e!271191 tp_is_empty!12675)))

(declare-fun b!464249 () Bool)

(declare-fun res!277630 () Bool)

(assert (=> b!464249 (=> (not res!277630) (not e!271193))))

(assert (=> b!464249 (= res!277630 (and (= (size!14330 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14329 _keys!1025) (size!14330 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464250 () Bool)

(declare-fun e!271192 () Bool)

(assert (=> b!464250 (= e!271194 (and e!271192 mapRes!20689))))

(declare-fun condMapEmpty!20689 () Bool)

(declare-fun mapDefault!20689 () ValueCell!5994)

(assert (=> b!464250 (= condMapEmpty!20689 (= (arr!13978 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5994)) mapDefault!20689)))))

(declare-fun b!464251 () Bool)

(assert (=> b!464251 (= e!271192 tp_is_empty!12675)))

(assert (= (and start!41588 res!277631) b!464249))

(assert (= (and b!464249 res!277630) b!464245))

(assert (= (and b!464245 res!277628) b!464247))

(assert (= (and b!464247 res!277629) b!464246))

(assert (= (and b!464250 condMapEmpty!20689) mapIsEmpty!20689))

(assert (= (and b!464250 (not condMapEmpty!20689)) mapNonEmpty!20689))

(get-info :version)

(assert (= (and mapNonEmpty!20689 ((_ is ValueCellFull!5994) mapValue!20689)) b!464248))

(assert (= (and b!464250 ((_ is ValueCellFull!5994) mapDefault!20689)) b!464251))

(assert (= start!41588 b!464250))

(declare-fun m!446665 () Bool)

(assert (=> mapNonEmpty!20689 m!446665))

(declare-fun m!446667 () Bool)

(assert (=> start!41588 m!446667))

(declare-fun m!446669 () Bool)

(assert (=> start!41588 m!446669))

(declare-fun m!446671 () Bool)

(assert (=> start!41588 m!446671))

(declare-fun m!446673 () Bool)

(assert (=> b!464247 m!446673))

(declare-fun m!446675 () Bool)

(assert (=> b!464245 m!446675))

(declare-fun m!446677 () Bool)

(assert (=> b!464246 m!446677))

(declare-fun m!446679 () Bool)

(assert (=> b!464246 m!446679))

(declare-fun m!446681 () Bool)

(assert (=> b!464246 m!446681))

(check-sat (not mapNonEmpty!20689) (not b_next!11247) (not start!41588) b_and!19605 (not b!464247) (not b!464246) tp_is_empty!12675 (not b!464245))
(check-sat b_and!19605 (not b_next!11247))
