; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42370 () Bool)

(assert start!42370)

(declare-fun b_free!11853 () Bool)

(declare-fun b_next!11853 () Bool)

(assert (=> start!42370 (= b_free!11853 (not b_next!11853))))

(declare-fun tp!41589 () Bool)

(declare-fun b_and!20317 () Bool)

(assert (=> start!42370 (= tp!41589 b_and!20317)))

(declare-fun b!472465 () Bool)

(declare-fun e!277080 () Bool)

(assert (=> b!472465 (= e!277080 true)))

(declare-datatypes ((V!18813 0))(
  ( (V!18814 (val!6685 Int)) )
))
(declare-fun minValueBefore!38 () V!18813)

(declare-datatypes ((tuple2!8794 0))(
  ( (tuple2!8795 (_1!4407 (_ BitVec 64)) (_2!4407 V!18813)) )
))
(declare-datatypes ((List!8910 0))(
  ( (Nil!8907) (Cons!8906 (h!9762 tuple2!8794) (t!14886 List!8910)) )
))
(declare-datatypes ((ListLongMap!7721 0))(
  ( (ListLongMap!7722 (toList!3876 List!8910)) )
))
(declare-fun lt!214419 () ListLongMap!7721)

(declare-fun zeroValue!794 () V!18813)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!30283 0))(
  ( (array!30284 (arr!14559 (Array (_ BitVec 32) (_ BitVec 64))) (size!14911 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30283)

(declare-datatypes ((ValueCell!6297 0))(
  ( (ValueCellFull!6297 (v!8972 V!18813)) (EmptyCell!6297) )
))
(declare-datatypes ((array!30285 0))(
  ( (array!30286 (arr!14560 (Array (_ BitVec 32) ValueCell!6297)) (size!14912 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30285)

(declare-fun getCurrentListMap!2223 (array!30283 array!30285 (_ BitVec 32) (_ BitVec 32) V!18813 V!18813 (_ BitVec 32) Int) ListLongMap!7721)

(assert (=> b!472465 (= lt!214419 (getCurrentListMap!2223 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472466 () Bool)

(declare-fun res!282299 () Bool)

(declare-fun e!277078 () Bool)

(assert (=> b!472466 (=> (not res!282299) (not e!277078))))

(declare-datatypes ((List!8911 0))(
  ( (Nil!8908) (Cons!8907 (h!9763 (_ BitVec 64)) (t!14887 List!8911)) )
))
(declare-fun arrayNoDuplicates!0 (array!30283 (_ BitVec 32) List!8911) Bool)

(assert (=> b!472466 (= res!282299 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8908))))

(declare-fun b!472467 () Bool)

(assert (=> b!472467 (= e!277078 (not e!277080))))

(declare-fun res!282301 () Bool)

(assert (=> b!472467 (=> res!282301 e!277080)))

(assert (=> b!472467 (= res!282301 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214417 () ListLongMap!7721)

(declare-fun lt!214420 () ListLongMap!7721)

(assert (=> b!472467 (= lt!214417 lt!214420)))

(declare-datatypes ((Unit!13872 0))(
  ( (Unit!13873) )
))
(declare-fun lt!214418 () Unit!13872)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18813)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!230 (array!30283 array!30285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18813 V!18813 V!18813 V!18813 (_ BitVec 32) Int) Unit!13872)

(assert (=> b!472467 (= lt!214418 (lemmaNoChangeToArrayThenSameMapNoExtras!230 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2035 (array!30283 array!30285 (_ BitVec 32) (_ BitVec 32) V!18813 V!18813 (_ BitVec 32) Int) ListLongMap!7721)

(assert (=> b!472467 (= lt!214420 (getCurrentListMapNoExtraKeys!2035 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472467 (= lt!214417 (getCurrentListMapNoExtraKeys!2035 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472468 () Bool)

(declare-fun e!277079 () Bool)

(declare-fun tp_is_empty!13281 () Bool)

(assert (=> b!472468 (= e!277079 tp_is_empty!13281)))

(declare-fun b!472469 () Bool)

(declare-fun res!282302 () Bool)

(assert (=> b!472469 (=> (not res!282302) (not e!277078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30283 (_ BitVec 32)) Bool)

(assert (=> b!472469 (= res!282302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21631 () Bool)

(declare-fun mapRes!21631 () Bool)

(declare-fun tp!41590 () Bool)

(declare-fun e!277082 () Bool)

(assert (=> mapNonEmpty!21631 (= mapRes!21631 (and tp!41590 e!277082))))

(declare-fun mapRest!21631 () (Array (_ BitVec 32) ValueCell!6297))

(declare-fun mapKey!21631 () (_ BitVec 32))

(declare-fun mapValue!21631 () ValueCell!6297)

(assert (=> mapNonEmpty!21631 (= (arr!14560 _values!833) (store mapRest!21631 mapKey!21631 mapValue!21631))))

(declare-fun b!472470 () Bool)

(declare-fun res!282300 () Bool)

(assert (=> b!472470 (=> (not res!282300) (not e!277078))))

(assert (=> b!472470 (= res!282300 (and (= (size!14912 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14911 _keys!1025) (size!14912 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472471 () Bool)

(assert (=> b!472471 (= e!277082 tp_is_empty!13281)))

(declare-fun b!472472 () Bool)

(declare-fun e!277077 () Bool)

(assert (=> b!472472 (= e!277077 (and e!277079 mapRes!21631))))

(declare-fun condMapEmpty!21631 () Bool)

(declare-fun mapDefault!21631 () ValueCell!6297)

(assert (=> b!472472 (= condMapEmpty!21631 (= (arr!14560 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6297)) mapDefault!21631)))))

(declare-fun mapIsEmpty!21631 () Bool)

(assert (=> mapIsEmpty!21631 mapRes!21631))

(declare-fun res!282303 () Bool)

(assert (=> start!42370 (=> (not res!282303) (not e!277078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42370 (= res!282303 (validMask!0 mask!1365))))

(assert (=> start!42370 e!277078))

(assert (=> start!42370 tp_is_empty!13281))

(assert (=> start!42370 tp!41589))

(assert (=> start!42370 true))

(declare-fun array_inv!10500 (array!30283) Bool)

(assert (=> start!42370 (array_inv!10500 _keys!1025)))

(declare-fun array_inv!10501 (array!30285) Bool)

(assert (=> start!42370 (and (array_inv!10501 _values!833) e!277077)))

(assert (= (and start!42370 res!282303) b!472470))

(assert (= (and b!472470 res!282300) b!472469))

(assert (= (and b!472469 res!282302) b!472466))

(assert (= (and b!472466 res!282299) b!472467))

(assert (= (and b!472467 (not res!282301)) b!472465))

(assert (= (and b!472472 condMapEmpty!21631) mapIsEmpty!21631))

(assert (= (and b!472472 (not condMapEmpty!21631)) mapNonEmpty!21631))

(get-info :version)

(assert (= (and mapNonEmpty!21631 ((_ is ValueCellFull!6297) mapValue!21631)) b!472471))

(assert (= (and b!472472 ((_ is ValueCellFull!6297) mapDefault!21631)) b!472468))

(assert (= start!42370 b!472472))

(declare-fun m!454437 () Bool)

(assert (=> start!42370 m!454437))

(declare-fun m!454439 () Bool)

(assert (=> start!42370 m!454439))

(declare-fun m!454441 () Bool)

(assert (=> start!42370 m!454441))

(declare-fun m!454443 () Bool)

(assert (=> b!472469 m!454443))

(declare-fun m!454445 () Bool)

(assert (=> b!472466 m!454445))

(declare-fun m!454447 () Bool)

(assert (=> b!472467 m!454447))

(declare-fun m!454449 () Bool)

(assert (=> b!472467 m!454449))

(declare-fun m!454451 () Bool)

(assert (=> b!472467 m!454451))

(declare-fun m!454453 () Bool)

(assert (=> b!472465 m!454453))

(declare-fun m!454455 () Bool)

(assert (=> mapNonEmpty!21631 m!454455))

(check-sat (not mapNonEmpty!21631) (not b!472469) (not b!472467) (not b!472466) tp_is_empty!13281 (not start!42370) b_and!20317 (not b!472465) (not b_next!11853))
(check-sat b_and!20317 (not b_next!11853))
