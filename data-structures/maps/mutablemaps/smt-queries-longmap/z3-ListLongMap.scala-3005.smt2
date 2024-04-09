; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42358 () Bool)

(assert start!42358)

(declare-fun b_free!11841 () Bool)

(declare-fun b_next!11841 () Bool)

(assert (=> start!42358 (= b_free!11841 (not b_next!11841))))

(declare-fun tp!41554 () Bool)

(declare-fun b_and!20305 () Bool)

(assert (=> start!42358 (= tp!41554 b_and!20305)))

(declare-fun b!472321 () Bool)

(declare-fun res!282210 () Bool)

(declare-fun e!276971 () Bool)

(assert (=> b!472321 (=> (not res!282210) (not e!276971))))

(declare-datatypes ((array!30259 0))(
  ( (array!30260 (arr!14547 (Array (_ BitVec 32) (_ BitVec 64))) (size!14899 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30259)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30259 (_ BitVec 32)) Bool)

(assert (=> b!472321 (= res!282210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21613 () Bool)

(declare-fun mapRes!21613 () Bool)

(declare-fun tp!41553 () Bool)

(declare-fun e!276974 () Bool)

(assert (=> mapNonEmpty!21613 (= mapRes!21613 (and tp!41553 e!276974))))

(declare-datatypes ((V!18797 0))(
  ( (V!18798 (val!6679 Int)) )
))
(declare-datatypes ((ValueCell!6291 0))(
  ( (ValueCellFull!6291 (v!8966 V!18797)) (EmptyCell!6291) )
))
(declare-fun mapRest!21613 () (Array (_ BitVec 32) ValueCell!6291))

(declare-datatypes ((array!30261 0))(
  ( (array!30262 (arr!14548 (Array (_ BitVec 32) ValueCell!6291)) (size!14900 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30261)

(declare-fun mapValue!21613 () ValueCell!6291)

(declare-fun mapKey!21613 () (_ BitVec 32))

(assert (=> mapNonEmpty!21613 (= (arr!14548 _values!833) (store mapRest!21613 mapKey!21613 mapValue!21613))))

(declare-fun b!472322 () Bool)

(declare-fun res!282211 () Bool)

(assert (=> b!472322 (=> (not res!282211) (not e!276971))))

(declare-datatypes ((List!8899 0))(
  ( (Nil!8896) (Cons!8895 (h!9751 (_ BitVec 64)) (t!14875 List!8899)) )
))
(declare-fun arrayNoDuplicates!0 (array!30259 (_ BitVec 32) List!8899) Bool)

(assert (=> b!472322 (= res!282211 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8896))))

(declare-fun b!472323 () Bool)

(declare-fun tp_is_empty!13269 () Bool)

(assert (=> b!472323 (= e!276974 tp_is_empty!13269)))

(declare-fun res!282212 () Bool)

(assert (=> start!42358 (=> (not res!282212) (not e!276971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42358 (= res!282212 (validMask!0 mask!1365))))

(assert (=> start!42358 e!276971))

(assert (=> start!42358 tp_is_empty!13269))

(assert (=> start!42358 tp!41554))

(assert (=> start!42358 true))

(declare-fun array_inv!10492 (array!30259) Bool)

(assert (=> start!42358 (array_inv!10492 _keys!1025)))

(declare-fun e!276969 () Bool)

(declare-fun array_inv!10493 (array!30261) Bool)

(assert (=> start!42358 (and (array_inv!10493 _values!833) e!276969)))

(declare-fun b!472324 () Bool)

(declare-fun res!282213 () Bool)

(assert (=> b!472324 (=> (not res!282213) (not e!276971))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!472324 (= res!282213 (and (= (size!14900 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14899 _keys!1025) (size!14900 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472325 () Bool)

(declare-fun e!276972 () Bool)

(assert (=> b!472325 (= e!276969 (and e!276972 mapRes!21613))))

(declare-fun condMapEmpty!21613 () Bool)

(declare-fun mapDefault!21613 () ValueCell!6291)

(assert (=> b!472325 (= condMapEmpty!21613 (= (arr!14548 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6291)) mapDefault!21613)))))

(declare-fun mapIsEmpty!21613 () Bool)

(assert (=> mapIsEmpty!21613 mapRes!21613))

(declare-fun b!472326 () Bool)

(assert (=> b!472326 (= e!276972 tp_is_empty!13269)))

(declare-fun b!472327 () Bool)

(declare-fun e!276973 () Bool)

(assert (=> b!472327 (= e!276971 (not e!276973))))

(declare-fun res!282209 () Bool)

(assert (=> b!472327 (=> res!282209 e!276973)))

(assert (=> b!472327 (= res!282209 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8784 0))(
  ( (tuple2!8785 (_1!4402 (_ BitVec 64)) (_2!4402 V!18797)) )
))
(declare-datatypes ((List!8900 0))(
  ( (Nil!8897) (Cons!8896 (h!9752 tuple2!8784) (t!14876 List!8900)) )
))
(declare-datatypes ((ListLongMap!7711 0))(
  ( (ListLongMap!7712 (toList!3871 List!8900)) )
))
(declare-fun lt!214346 () ListLongMap!7711)

(declare-fun lt!214348 () ListLongMap!7711)

(assert (=> b!472327 (= lt!214346 lt!214348)))

(declare-fun minValueBefore!38 () V!18797)

(declare-fun zeroValue!794 () V!18797)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18797)

(declare-datatypes ((Unit!13862 0))(
  ( (Unit!13863) )
))
(declare-fun lt!214345 () Unit!13862)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!225 (array!30259 array!30261 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18797 V!18797 V!18797 V!18797 (_ BitVec 32) Int) Unit!13862)

(assert (=> b!472327 (= lt!214345 (lemmaNoChangeToArrayThenSameMapNoExtras!225 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2030 (array!30259 array!30261 (_ BitVec 32) (_ BitVec 32) V!18797 V!18797 (_ BitVec 32) Int) ListLongMap!7711)

(assert (=> b!472327 (= lt!214348 (getCurrentListMapNoExtraKeys!2030 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472327 (= lt!214346 (getCurrentListMapNoExtraKeys!2030 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472328 () Bool)

(assert (=> b!472328 (= e!276973 true)))

(declare-fun lt!214347 () ListLongMap!7711)

(declare-fun getCurrentListMap!2219 (array!30259 array!30261 (_ BitVec 32) (_ BitVec 32) V!18797 V!18797 (_ BitVec 32) Int) ListLongMap!7711)

(assert (=> b!472328 (= lt!214347 (getCurrentListMap!2219 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42358 res!282212) b!472324))

(assert (= (and b!472324 res!282213) b!472321))

(assert (= (and b!472321 res!282210) b!472322))

(assert (= (and b!472322 res!282211) b!472327))

(assert (= (and b!472327 (not res!282209)) b!472328))

(assert (= (and b!472325 condMapEmpty!21613) mapIsEmpty!21613))

(assert (= (and b!472325 (not condMapEmpty!21613)) mapNonEmpty!21613))

(get-info :version)

(assert (= (and mapNonEmpty!21613 ((_ is ValueCellFull!6291) mapValue!21613)) b!472323))

(assert (= (and b!472325 ((_ is ValueCellFull!6291) mapDefault!21613)) b!472326))

(assert (= start!42358 b!472325))

(declare-fun m!454317 () Bool)

(assert (=> mapNonEmpty!21613 m!454317))

(declare-fun m!454319 () Bool)

(assert (=> b!472322 m!454319))

(declare-fun m!454321 () Bool)

(assert (=> b!472328 m!454321))

(declare-fun m!454323 () Bool)

(assert (=> start!42358 m!454323))

(declare-fun m!454325 () Bool)

(assert (=> start!42358 m!454325))

(declare-fun m!454327 () Bool)

(assert (=> start!42358 m!454327))

(declare-fun m!454329 () Bool)

(assert (=> b!472327 m!454329))

(declare-fun m!454331 () Bool)

(assert (=> b!472327 m!454331))

(declare-fun m!454333 () Bool)

(assert (=> b!472327 m!454333))

(declare-fun m!454335 () Bool)

(assert (=> b!472321 m!454335))

(check-sat (not b!472327) (not b_next!11841) b_and!20305 (not start!42358) (not mapNonEmpty!21613) tp_is_empty!13269 (not b!472322) (not b!472321) (not b!472328))
(check-sat b_and!20305 (not b_next!11841))
