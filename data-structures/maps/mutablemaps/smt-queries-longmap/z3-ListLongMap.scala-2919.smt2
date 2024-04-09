; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41694 () Bool)

(assert start!41694)

(declare-fun b_free!11325 () Bool)

(declare-fun b_next!11325 () Bool)

(assert (=> start!41694 (= b_free!11325 (not b_next!11325))))

(declare-fun tp!39978 () Bool)

(declare-fun b_and!19699 () Bool)

(assert (=> start!41694 (= tp!39978 b_and!19699)))

(declare-fun b!465239 () Bool)

(declare-fun e!271891 () Bool)

(declare-fun e!271896 () Bool)

(declare-fun mapRes!20812 () Bool)

(assert (=> b!465239 (= e!271891 (and e!271896 mapRes!20812))))

(declare-fun condMapEmpty!20812 () Bool)

(declare-datatypes ((V!18109 0))(
  ( (V!18110 (val!6421 Int)) )
))
(declare-datatypes ((ValueCell!6033 0))(
  ( (ValueCellFull!6033 (v!8704 V!18109)) (EmptyCell!6033) )
))
(declare-datatypes ((array!29247 0))(
  ( (array!29248 (arr!14050 (Array (_ BitVec 32) ValueCell!6033)) (size!14402 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29247)

(declare-fun mapDefault!20812 () ValueCell!6033)

(assert (=> b!465239 (= condMapEmpty!20812 (= (arr!14050 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6033)) mapDefault!20812)))))

(declare-fun b!465240 () Bool)

(declare-fun e!271894 () Bool)

(declare-fun tp_is_empty!12753 () Bool)

(assert (=> b!465240 (= e!271894 tp_is_empty!12753)))

(declare-fun b!465241 () Bool)

(declare-fun res!278167 () Bool)

(declare-fun e!271895 () Bool)

(assert (=> b!465241 (=> (not res!278167) (not e!271895))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29249 0))(
  ( (array!29250 (arr!14051 (Array (_ BitVec 32) (_ BitVec 64))) (size!14403 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29249)

(assert (=> b!465241 (= res!278167 (and (= (size!14402 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14403 _keys!1025) (size!14402 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!465242 () Bool)

(declare-fun res!278166 () Bool)

(assert (=> b!465242 (=> (not res!278166) (not e!271895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29249 (_ BitVec 32)) Bool)

(assert (=> b!465242 (= res!278166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20812 () Bool)

(assert (=> mapIsEmpty!20812 mapRes!20812))

(declare-fun b!465243 () Bool)

(declare-fun e!271893 () Bool)

(assert (=> b!465243 (= e!271895 (not e!271893))))

(declare-fun res!278164 () Bool)

(assert (=> b!465243 (=> res!278164 e!271893)))

(assert (=> b!465243 (= res!278164 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8396 0))(
  ( (tuple2!8397 (_1!4208 (_ BitVec 64)) (_2!4208 V!18109)) )
))
(declare-datatypes ((List!8520 0))(
  ( (Nil!8517) (Cons!8516 (h!9372 tuple2!8396) (t!14478 List!8520)) )
))
(declare-datatypes ((ListLongMap!7323 0))(
  ( (ListLongMap!7324 (toList!3677 List!8520)) )
))
(declare-fun lt!210120 () ListLongMap!7323)

(declare-fun lt!210122 () ListLongMap!7323)

(assert (=> b!465243 (= lt!210120 lt!210122)))

(declare-fun minValueBefore!38 () V!18109)

(declare-fun zeroValue!794 () V!18109)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13475 0))(
  ( (Unit!13476) )
))
(declare-fun lt!210119 () Unit!13475)

(declare-fun minValueAfter!38 () V!18109)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!40 (array!29249 array!29247 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18109 V!18109 V!18109 V!18109 (_ BitVec 32) Int) Unit!13475)

(assert (=> b!465243 (= lt!210119 (lemmaNoChangeToArrayThenSameMapNoExtras!40 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1845 (array!29249 array!29247 (_ BitVec 32) (_ BitVec 32) V!18109 V!18109 (_ BitVec 32) Int) ListLongMap!7323)

(assert (=> b!465243 (= lt!210122 (getCurrentListMapNoExtraKeys!1845 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465243 (= lt!210120 (getCurrentListMapNoExtraKeys!1845 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!278165 () Bool)

(assert (=> start!41694 (=> (not res!278165) (not e!271895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41694 (= res!278165 (validMask!0 mask!1365))))

(assert (=> start!41694 e!271895))

(assert (=> start!41694 tp_is_empty!12753))

(assert (=> start!41694 tp!39978))

(assert (=> start!41694 true))

(declare-fun array_inv!10132 (array!29249) Bool)

(assert (=> start!41694 (array_inv!10132 _keys!1025)))

(declare-fun array_inv!10133 (array!29247) Bool)

(assert (=> start!41694 (and (array_inv!10133 _values!833) e!271891)))

(declare-fun b!465244 () Bool)

(declare-fun res!278163 () Bool)

(assert (=> b!465244 (=> (not res!278163) (not e!271895))))

(declare-datatypes ((List!8521 0))(
  ( (Nil!8518) (Cons!8517 (h!9373 (_ BitVec 64)) (t!14479 List!8521)) )
))
(declare-fun arrayNoDuplicates!0 (array!29249 (_ BitVec 32) List!8521) Bool)

(assert (=> b!465244 (= res!278163 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8518))))

(declare-fun mapNonEmpty!20812 () Bool)

(declare-fun tp!39979 () Bool)

(assert (=> mapNonEmpty!20812 (= mapRes!20812 (and tp!39979 e!271894))))

(declare-fun mapValue!20812 () ValueCell!6033)

(declare-fun mapRest!20812 () (Array (_ BitVec 32) ValueCell!6033))

(declare-fun mapKey!20812 () (_ BitVec 32))

(assert (=> mapNonEmpty!20812 (= (arr!14050 _values!833) (store mapRest!20812 mapKey!20812 mapValue!20812))))

(declare-fun b!465245 () Bool)

(assert (=> b!465245 (= e!271893 true)))

(declare-fun lt!210121 () ListLongMap!7323)

(declare-fun getCurrentListMap!2124 (array!29249 array!29247 (_ BitVec 32) (_ BitVec 32) V!18109 V!18109 (_ BitVec 32) Int) ListLongMap!7323)

(assert (=> b!465245 (= lt!210121 (getCurrentListMap!2124 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210118 () ListLongMap!7323)

(declare-fun +!1615 (ListLongMap!7323 tuple2!8396) ListLongMap!7323)

(assert (=> b!465245 (= lt!210118 (+!1615 (getCurrentListMap!2124 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8397 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!465246 () Bool)

(assert (=> b!465246 (= e!271896 tp_is_empty!12753)))

(assert (= (and start!41694 res!278165) b!465241))

(assert (= (and b!465241 res!278167) b!465242))

(assert (= (and b!465242 res!278166) b!465244))

(assert (= (and b!465244 res!278163) b!465243))

(assert (= (and b!465243 (not res!278164)) b!465245))

(assert (= (and b!465239 condMapEmpty!20812) mapIsEmpty!20812))

(assert (= (and b!465239 (not condMapEmpty!20812)) mapNonEmpty!20812))

(get-info :version)

(assert (= (and mapNonEmpty!20812 ((_ is ValueCellFull!6033) mapValue!20812)) b!465240))

(assert (= (and b!465239 ((_ is ValueCellFull!6033) mapDefault!20812)) b!465246))

(assert (= start!41694 b!465239))

(declare-fun m!447505 () Bool)

(assert (=> b!465243 m!447505))

(declare-fun m!447507 () Bool)

(assert (=> b!465243 m!447507))

(declare-fun m!447509 () Bool)

(assert (=> b!465243 m!447509))

(declare-fun m!447511 () Bool)

(assert (=> start!41694 m!447511))

(declare-fun m!447513 () Bool)

(assert (=> start!41694 m!447513))

(declare-fun m!447515 () Bool)

(assert (=> start!41694 m!447515))

(declare-fun m!447517 () Bool)

(assert (=> b!465242 m!447517))

(declare-fun m!447519 () Bool)

(assert (=> mapNonEmpty!20812 m!447519))

(declare-fun m!447521 () Bool)

(assert (=> b!465245 m!447521))

(declare-fun m!447523 () Bool)

(assert (=> b!465245 m!447523))

(assert (=> b!465245 m!447523))

(declare-fun m!447525 () Bool)

(assert (=> b!465245 m!447525))

(declare-fun m!447527 () Bool)

(assert (=> b!465244 m!447527))

(check-sat (not b_next!11325) (not mapNonEmpty!20812) (not b!465244) (not b!465242) (not start!41694) (not b!465245) tp_is_empty!12753 (not b!465243) b_and!19699)
(check-sat b_and!19699 (not b_next!11325))
