; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42564 () Bool)

(assert start!42564)

(declare-fun b_free!11991 () Bool)

(declare-fun b_next!11991 () Bool)

(assert (=> start!42564 (= b_free!11991 (not b_next!11991))))

(declare-fun tp!42012 () Bool)

(declare-fun b_and!20489 () Bool)

(assert (=> start!42564 (= tp!42012 b_and!20489)))

(declare-fun b!474599 () Bool)

(declare-fun res!283519 () Bool)

(declare-fun e!278611 () Bool)

(assert (=> b!474599 (=> (not res!283519) (not e!278611))))

(declare-datatypes ((array!30557 0))(
  ( (array!30558 (arr!14693 (Array (_ BitVec 32) (_ BitVec 64))) (size!15045 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30557)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30557 (_ BitVec 32)) Bool)

(assert (=> b!474599 (= res!283519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474600 () Bool)

(declare-fun e!278608 () Bool)

(declare-fun tp_is_empty!13419 () Bool)

(assert (=> b!474600 (= e!278608 tp_is_empty!13419)))

(declare-fun b!474601 () Bool)

(declare-fun e!278609 () Bool)

(assert (=> b!474601 (= e!278609 tp_is_empty!13419)))

(declare-fun b!474603 () Bool)

(declare-fun e!278607 () Bool)

(declare-fun mapRes!21847 () Bool)

(assert (=> b!474603 (= e!278607 (and e!278609 mapRes!21847))))

(declare-fun condMapEmpty!21847 () Bool)

(declare-datatypes ((V!18997 0))(
  ( (V!18998 (val!6754 Int)) )
))
(declare-datatypes ((ValueCell!6366 0))(
  ( (ValueCellFull!6366 (v!9043 V!18997)) (EmptyCell!6366) )
))
(declare-datatypes ((array!30559 0))(
  ( (array!30560 (arr!14694 (Array (_ BitVec 32) ValueCell!6366)) (size!15046 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30559)

(declare-fun mapDefault!21847 () ValueCell!6366)

(assert (=> b!474603 (= condMapEmpty!21847 (= (arr!14694 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6366)) mapDefault!21847)))))

(declare-fun mapNonEmpty!21847 () Bool)

(declare-fun tp!42013 () Bool)

(assert (=> mapNonEmpty!21847 (= mapRes!21847 (and tp!42013 e!278608))))

(declare-fun mapRest!21847 () (Array (_ BitVec 32) ValueCell!6366))

(declare-fun mapValue!21847 () ValueCell!6366)

(declare-fun mapKey!21847 () (_ BitVec 32))

(assert (=> mapNonEmpty!21847 (= (arr!14694 _values!833) (store mapRest!21847 mapKey!21847 mapValue!21847))))

(declare-fun b!474604 () Bool)

(declare-fun res!283520 () Bool)

(assert (=> b!474604 (=> (not res!283520) (not e!278611))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474604 (= res!283520 (and (= (size!15046 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15045 _keys!1025) (size!15046 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474605 () Bool)

(declare-fun res!283521 () Bool)

(assert (=> b!474605 (=> (not res!283521) (not e!278611))))

(declare-datatypes ((List!9015 0))(
  ( (Nil!9012) (Cons!9011 (h!9867 (_ BitVec 64)) (t!14997 List!9015)) )
))
(declare-fun arrayNoDuplicates!0 (array!30557 (_ BitVec 32) List!9015) Bool)

(assert (=> b!474605 (= res!283521 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9012))))

(declare-fun mapIsEmpty!21847 () Bool)

(assert (=> mapIsEmpty!21847 mapRes!21847))

(declare-fun res!283518 () Bool)

(assert (=> start!42564 (=> (not res!283518) (not e!278611))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42564 (= res!283518 (validMask!0 mask!1365))))

(assert (=> start!42564 e!278611))

(assert (=> start!42564 tp_is_empty!13419))

(assert (=> start!42564 tp!42012))

(assert (=> start!42564 true))

(declare-fun array_inv!10588 (array!30557) Bool)

(assert (=> start!42564 (array_inv!10588 _keys!1025)))

(declare-fun array_inv!10589 (array!30559) Bool)

(assert (=> start!42564 (and (array_inv!10589 _values!833) e!278607)))

(declare-fun b!474602 () Bool)

(assert (=> b!474602 (= e!278611 false)))

(declare-fun zeroValue!794 () V!18997)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8902 0))(
  ( (tuple2!8903 (_1!4461 (_ BitVec 64)) (_2!4461 V!18997)) )
))
(declare-datatypes ((List!9016 0))(
  ( (Nil!9013) (Cons!9012 (h!9868 tuple2!8902) (t!14998 List!9016)) )
))
(declare-datatypes ((ListLongMap!7829 0))(
  ( (ListLongMap!7830 (toList!3930 List!9016)) )
))
(declare-fun lt!216255 () ListLongMap!7829)

(declare-fun minValueAfter!38 () V!18997)

(declare-fun getCurrentListMapNoExtraKeys!2084 (array!30557 array!30559 (_ BitVec 32) (_ BitVec 32) V!18997 V!18997 (_ BitVec 32) Int) ListLongMap!7829)

(assert (=> b!474602 (= lt!216255 (getCurrentListMapNoExtraKeys!2084 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!18997)

(declare-fun lt!216254 () ListLongMap!7829)

(assert (=> b!474602 (= lt!216254 (getCurrentListMapNoExtraKeys!2084 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42564 res!283518) b!474604))

(assert (= (and b!474604 res!283520) b!474599))

(assert (= (and b!474599 res!283519) b!474605))

(assert (= (and b!474605 res!283521) b!474602))

(assert (= (and b!474603 condMapEmpty!21847) mapIsEmpty!21847))

(assert (= (and b!474603 (not condMapEmpty!21847)) mapNonEmpty!21847))

(get-info :version)

(assert (= (and mapNonEmpty!21847 ((_ is ValueCellFull!6366) mapValue!21847)) b!474600))

(assert (= (and b!474603 ((_ is ValueCellFull!6366) mapDefault!21847)) b!474601))

(assert (= start!42564 b!474603))

(declare-fun m!456967 () Bool)

(assert (=> b!474605 m!456967))

(declare-fun m!456969 () Bool)

(assert (=> b!474602 m!456969))

(declare-fun m!456971 () Bool)

(assert (=> b!474602 m!456971))

(declare-fun m!456973 () Bool)

(assert (=> mapNonEmpty!21847 m!456973))

(declare-fun m!456975 () Bool)

(assert (=> b!474599 m!456975))

(declare-fun m!456977 () Bool)

(assert (=> start!42564 m!456977))

(declare-fun m!456979 () Bool)

(assert (=> start!42564 m!456979))

(declare-fun m!456981 () Bool)

(assert (=> start!42564 m!456981))

(check-sat b_and!20489 tp_is_empty!13419 (not b!474602) (not b_next!11991) (not start!42564) (not b!474599) (not b!474605) (not mapNonEmpty!21847))
(check-sat b_and!20489 (not b_next!11991))
