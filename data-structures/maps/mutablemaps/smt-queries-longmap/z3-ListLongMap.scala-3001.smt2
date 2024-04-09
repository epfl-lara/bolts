; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42334 () Bool)

(assert start!42334)

(declare-fun b_free!11817 () Bool)

(declare-fun b_next!11817 () Bool)

(assert (=> start!42334 (= b_free!11817 (not b_next!11817))))

(declare-fun tp!41482 () Bool)

(declare-fun b_and!20281 () Bool)

(assert (=> start!42334 (= tp!41482 b_and!20281)))

(declare-fun mapNonEmpty!21577 () Bool)

(declare-fun mapRes!21577 () Bool)

(declare-fun tp!41481 () Bool)

(declare-fun e!276755 () Bool)

(assert (=> mapNonEmpty!21577 (= mapRes!21577 (and tp!41481 e!276755))))

(declare-fun mapKey!21577 () (_ BitVec 32))

(declare-datatypes ((V!18765 0))(
  ( (V!18766 (val!6667 Int)) )
))
(declare-datatypes ((ValueCell!6279 0))(
  ( (ValueCellFull!6279 (v!8954 V!18765)) (EmptyCell!6279) )
))
(declare-datatypes ((array!30215 0))(
  ( (array!30216 (arr!14525 (Array (_ BitVec 32) ValueCell!6279)) (size!14877 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30215)

(declare-fun mapRest!21577 () (Array (_ BitVec 32) ValueCell!6279))

(declare-fun mapValue!21577 () ValueCell!6279)

(assert (=> mapNonEmpty!21577 (= (arr!14525 _values!833) (store mapRest!21577 mapKey!21577 mapValue!21577))))

(declare-fun b!472033 () Bool)

(declare-fun e!276754 () Bool)

(declare-fun e!276756 () Bool)

(assert (=> b!472033 (= e!276754 (not e!276756))))

(declare-fun res!282029 () Bool)

(assert (=> b!472033 (=> res!282029 e!276756)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472033 (= res!282029 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8766 0))(
  ( (tuple2!8767 (_1!4393 (_ BitVec 64)) (_2!4393 V!18765)) )
))
(declare-datatypes ((List!8882 0))(
  ( (Nil!8879) (Cons!8878 (h!9734 tuple2!8766) (t!14858 List!8882)) )
))
(declare-datatypes ((ListLongMap!7693 0))(
  ( (ListLongMap!7694 (toList!3862 List!8882)) )
))
(declare-fun lt!214204 () ListLongMap!7693)

(declare-fun lt!214201 () ListLongMap!7693)

(assert (=> b!472033 (= lt!214204 lt!214201)))

(declare-fun minValueBefore!38 () V!18765)

(declare-fun zeroValue!794 () V!18765)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13848 0))(
  ( (Unit!13849) )
))
(declare-fun lt!214202 () Unit!13848)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30217 0))(
  ( (array!30218 (arr!14526 (Array (_ BitVec 32) (_ BitVec 64))) (size!14878 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30217)

(declare-fun minValueAfter!38 () V!18765)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!218 (array!30217 array!30215 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18765 V!18765 V!18765 V!18765 (_ BitVec 32) Int) Unit!13848)

(assert (=> b!472033 (= lt!214202 (lemmaNoChangeToArrayThenSameMapNoExtras!218 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2023 (array!30217 array!30215 (_ BitVec 32) (_ BitVec 32) V!18765 V!18765 (_ BitVec 32) Int) ListLongMap!7693)

(assert (=> b!472033 (= lt!214201 (getCurrentListMapNoExtraKeys!2023 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472033 (= lt!214204 (getCurrentListMapNoExtraKeys!2023 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472034 () Bool)

(assert (=> b!472034 (= e!276756 true)))

(declare-fun lt!214203 () ListLongMap!7693)

(declare-fun getCurrentListMap!2210 (array!30217 array!30215 (_ BitVec 32) (_ BitVec 32) V!18765 V!18765 (_ BitVec 32) Int) ListLongMap!7693)

(assert (=> b!472034 (= lt!214203 (getCurrentListMap!2210 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472035 () Bool)

(declare-fun res!282031 () Bool)

(assert (=> b!472035 (=> (not res!282031) (not e!276754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30217 (_ BitVec 32)) Bool)

(assert (=> b!472035 (= res!282031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472036 () Bool)

(declare-fun e!276753 () Bool)

(declare-fun e!276758 () Bool)

(assert (=> b!472036 (= e!276753 (and e!276758 mapRes!21577))))

(declare-fun condMapEmpty!21577 () Bool)

(declare-fun mapDefault!21577 () ValueCell!6279)

(assert (=> b!472036 (= condMapEmpty!21577 (= (arr!14525 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6279)) mapDefault!21577)))))

(declare-fun b!472037 () Bool)

(declare-fun tp_is_empty!13245 () Bool)

(assert (=> b!472037 (= e!276758 tp_is_empty!13245)))

(declare-fun b!472038 () Bool)

(assert (=> b!472038 (= e!276755 tp_is_empty!13245)))

(declare-fun b!472039 () Bool)

(declare-fun res!282032 () Bool)

(assert (=> b!472039 (=> (not res!282032) (not e!276754))))

(assert (=> b!472039 (= res!282032 (and (= (size!14877 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14878 _keys!1025) (size!14877 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!282033 () Bool)

(assert (=> start!42334 (=> (not res!282033) (not e!276754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42334 (= res!282033 (validMask!0 mask!1365))))

(assert (=> start!42334 e!276754))

(assert (=> start!42334 tp_is_empty!13245))

(assert (=> start!42334 tp!41482))

(assert (=> start!42334 true))

(declare-fun array_inv!10478 (array!30217) Bool)

(assert (=> start!42334 (array_inv!10478 _keys!1025)))

(declare-fun array_inv!10479 (array!30215) Bool)

(assert (=> start!42334 (and (array_inv!10479 _values!833) e!276753)))

(declare-fun mapIsEmpty!21577 () Bool)

(assert (=> mapIsEmpty!21577 mapRes!21577))

(declare-fun b!472040 () Bool)

(declare-fun res!282030 () Bool)

(assert (=> b!472040 (=> (not res!282030) (not e!276754))))

(declare-datatypes ((List!8883 0))(
  ( (Nil!8880) (Cons!8879 (h!9735 (_ BitVec 64)) (t!14859 List!8883)) )
))
(declare-fun arrayNoDuplicates!0 (array!30217 (_ BitVec 32) List!8883) Bool)

(assert (=> b!472040 (= res!282030 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8880))))

(assert (= (and start!42334 res!282033) b!472039))

(assert (= (and b!472039 res!282032) b!472035))

(assert (= (and b!472035 res!282031) b!472040))

(assert (= (and b!472040 res!282030) b!472033))

(assert (= (and b!472033 (not res!282029)) b!472034))

(assert (= (and b!472036 condMapEmpty!21577) mapIsEmpty!21577))

(assert (= (and b!472036 (not condMapEmpty!21577)) mapNonEmpty!21577))

(get-info :version)

(assert (= (and mapNonEmpty!21577 ((_ is ValueCellFull!6279) mapValue!21577)) b!472038))

(assert (= (and b!472036 ((_ is ValueCellFull!6279) mapDefault!21577)) b!472037))

(assert (= start!42334 b!472036))

(declare-fun m!454077 () Bool)

(assert (=> mapNonEmpty!21577 m!454077))

(declare-fun m!454079 () Bool)

(assert (=> start!42334 m!454079))

(declare-fun m!454081 () Bool)

(assert (=> start!42334 m!454081))

(declare-fun m!454083 () Bool)

(assert (=> start!42334 m!454083))

(declare-fun m!454085 () Bool)

(assert (=> b!472033 m!454085))

(declare-fun m!454087 () Bool)

(assert (=> b!472033 m!454087))

(declare-fun m!454089 () Bool)

(assert (=> b!472033 m!454089))

(declare-fun m!454091 () Bool)

(assert (=> b!472034 m!454091))

(declare-fun m!454093 () Bool)

(assert (=> b!472040 m!454093))

(declare-fun m!454095 () Bool)

(assert (=> b!472035 m!454095))

(check-sat (not b!472033) b_and!20281 (not b!472035) (not b!472040) (not start!42334) (not b_next!11817) (not mapNonEmpty!21577) (not b!472034) tp_is_empty!13245)
(check-sat b_and!20281 (not b_next!11817))
