; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41644 () Bool)

(assert start!41644)

(declare-fun b_free!11289 () Bool)

(declare-fun b_next!11289 () Bool)

(assert (=> start!41644 (= b_free!11289 (not b_next!11289))))

(declare-fun tp!39867 () Bool)

(declare-fun b_and!19655 () Bool)

(assert (=> start!41644 (= tp!39867 b_and!19655)))

(declare-fun b!464771 () Bool)

(declare-fun res!277914 () Bool)

(declare-fun e!271562 () Bool)

(assert (=> b!464771 (=> (not res!277914) (not e!271562))))

(declare-datatypes ((array!29179 0))(
  ( (array!29180 (arr!14017 (Array (_ BitVec 32) (_ BitVec 64))) (size!14369 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29179)

(declare-datatypes ((List!8494 0))(
  ( (Nil!8491) (Cons!8490 (h!9346 (_ BitVec 64)) (t!14450 List!8494)) )
))
(declare-fun arrayNoDuplicates!0 (array!29179 (_ BitVec 32) List!8494) Bool)

(assert (=> b!464771 (= res!277914 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8491))))

(declare-fun b!464772 () Bool)

(assert (=> b!464772 (= e!271562 (not true))))

(declare-datatypes ((V!18061 0))(
  ( (V!18062 (val!6403 Int)) )
))
(declare-datatypes ((tuple2!8368 0))(
  ( (tuple2!8369 (_1!4194 (_ BitVec 64)) (_2!4194 V!18061)) )
))
(declare-datatypes ((List!8495 0))(
  ( (Nil!8492) (Cons!8491 (h!9347 tuple2!8368) (t!14451 List!8495)) )
))
(declare-datatypes ((ListLongMap!7295 0))(
  ( (ListLongMap!7296 (toList!3663 List!8495)) )
))
(declare-fun lt!209907 () ListLongMap!7295)

(declare-fun lt!209908 () ListLongMap!7295)

(assert (=> b!464772 (= lt!209907 lt!209908)))

(declare-fun minValueBefore!38 () V!18061)

(declare-fun zeroValue!794 () V!18061)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6015 0))(
  ( (ValueCellFull!6015 (v!8686 V!18061)) (EmptyCell!6015) )
))
(declare-datatypes ((array!29181 0))(
  ( (array!29182 (arr!14018 (Array (_ BitVec 32) ValueCell!6015)) (size!14370 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29181)

(declare-datatypes ((Unit!13447 0))(
  ( (Unit!13448) )
))
(declare-fun lt!209906 () Unit!13447)

(declare-fun minValueAfter!38 () V!18061)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!26 (array!29179 array!29181 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18061 V!18061 V!18061 V!18061 (_ BitVec 32) Int) Unit!13447)

(assert (=> b!464772 (= lt!209906 (lemmaNoChangeToArrayThenSameMapNoExtras!26 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1831 (array!29179 array!29181 (_ BitVec 32) (_ BitVec 32) V!18061 V!18061 (_ BitVec 32) Int) ListLongMap!7295)

(assert (=> b!464772 (= lt!209908 (getCurrentListMapNoExtraKeys!1831 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464772 (= lt!209907 (getCurrentListMapNoExtraKeys!1831 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!20755 () Bool)

(declare-fun mapRes!20755 () Bool)

(assert (=> mapIsEmpty!20755 mapRes!20755))

(declare-fun res!277911 () Bool)

(assert (=> start!41644 (=> (not res!277911) (not e!271562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41644 (= res!277911 (validMask!0 mask!1365))))

(assert (=> start!41644 e!271562))

(declare-fun tp_is_empty!12717 () Bool)

(assert (=> start!41644 tp_is_empty!12717))

(assert (=> start!41644 tp!39867))

(assert (=> start!41644 true))

(declare-fun array_inv!10104 (array!29179) Bool)

(assert (=> start!41644 (array_inv!10104 _keys!1025)))

(declare-fun e!271565 () Bool)

(declare-fun array_inv!10105 (array!29181) Bool)

(assert (=> start!41644 (and (array_inv!10105 _values!833) e!271565)))

(declare-fun b!464773 () Bool)

(declare-fun res!277912 () Bool)

(assert (=> b!464773 (=> (not res!277912) (not e!271562))))

(assert (=> b!464773 (= res!277912 (and (= (size!14370 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14369 _keys!1025) (size!14370 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!464774 () Bool)

(declare-fun e!271563 () Bool)

(assert (=> b!464774 (= e!271563 tp_is_empty!12717)))

(declare-fun b!464775 () Bool)

(assert (=> b!464775 (= e!271565 (and e!271563 mapRes!20755))))

(declare-fun condMapEmpty!20755 () Bool)

(declare-fun mapDefault!20755 () ValueCell!6015)

(assert (=> b!464775 (= condMapEmpty!20755 (= (arr!14018 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6015)) mapDefault!20755)))))

(declare-fun b!464776 () Bool)

(declare-fun e!271561 () Bool)

(assert (=> b!464776 (= e!271561 tp_is_empty!12717)))

(declare-fun mapNonEmpty!20755 () Bool)

(declare-fun tp!39868 () Bool)

(assert (=> mapNonEmpty!20755 (= mapRes!20755 (and tp!39868 e!271561))))

(declare-fun mapRest!20755 () (Array (_ BitVec 32) ValueCell!6015))

(declare-fun mapKey!20755 () (_ BitVec 32))

(declare-fun mapValue!20755 () ValueCell!6015)

(assert (=> mapNonEmpty!20755 (= (arr!14018 _values!833) (store mapRest!20755 mapKey!20755 mapValue!20755))))

(declare-fun b!464777 () Bool)

(declare-fun res!277913 () Bool)

(assert (=> b!464777 (=> (not res!277913) (not e!271562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29179 (_ BitVec 32)) Bool)

(assert (=> b!464777 (= res!277913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41644 res!277911) b!464773))

(assert (= (and b!464773 res!277912) b!464777))

(assert (= (and b!464777 res!277913) b!464771))

(assert (= (and b!464771 res!277914) b!464772))

(assert (= (and b!464775 condMapEmpty!20755) mapIsEmpty!20755))

(assert (= (and b!464775 (not condMapEmpty!20755)) mapNonEmpty!20755))

(get-info :version)

(assert (= (and mapNonEmpty!20755 ((_ is ValueCellFull!6015) mapValue!20755)) b!464776))

(assert (= (and b!464775 ((_ is ValueCellFull!6015) mapDefault!20755)) b!464774))

(assert (= start!41644 b!464775))

(declare-fun m!447109 () Bool)

(assert (=> b!464771 m!447109))

(declare-fun m!447111 () Bool)

(assert (=> start!41644 m!447111))

(declare-fun m!447113 () Bool)

(assert (=> start!41644 m!447113))

(declare-fun m!447115 () Bool)

(assert (=> start!41644 m!447115))

(declare-fun m!447117 () Bool)

(assert (=> mapNonEmpty!20755 m!447117))

(declare-fun m!447119 () Bool)

(assert (=> b!464772 m!447119))

(declare-fun m!447121 () Bool)

(assert (=> b!464772 m!447121))

(declare-fun m!447123 () Bool)

(assert (=> b!464772 m!447123))

(declare-fun m!447125 () Bool)

(assert (=> b!464777 m!447125))

(check-sat (not mapNonEmpty!20755) (not start!41644) (not b_next!11289) (not b!464771) tp_is_empty!12717 b_and!19655 (not b!464772) (not b!464777))
(check-sat b_and!19655 (not b_next!11289))
