; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42594 () Bool)

(assert start!42594)

(declare-fun b_free!12021 () Bool)

(declare-fun b_next!12021 () Bool)

(assert (=> start!42594 (= b_free!12021 (not b_next!12021))))

(declare-fun tp!42103 () Bool)

(declare-fun b_and!20519 () Bool)

(assert (=> start!42594 (= tp!42103 b_and!20519)))

(declare-fun b!474914 () Bool)

(declare-fun e!278834 () Bool)

(declare-fun tp_is_empty!13449 () Bool)

(assert (=> b!474914 (= e!278834 tp_is_empty!13449)))

(declare-fun b!474915 () Bool)

(declare-fun e!278832 () Bool)

(assert (=> b!474915 (= e!278832 false)))

(declare-datatypes ((V!19037 0))(
  ( (V!19038 (val!6769 Int)) )
))
(declare-fun zeroValue!794 () V!19037)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8924 0))(
  ( (tuple2!8925 (_1!4472 (_ BitVec 64)) (_2!4472 V!19037)) )
))
(declare-datatypes ((List!9035 0))(
  ( (Nil!9032) (Cons!9031 (h!9887 tuple2!8924) (t!15017 List!9035)) )
))
(declare-datatypes ((ListLongMap!7851 0))(
  ( (ListLongMap!7852 (toList!3941 List!9035)) )
))
(declare-fun lt!216345 () ListLongMap!7851)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30611 0))(
  ( (array!30612 (arr!14720 (Array (_ BitVec 32) (_ BitVec 64))) (size!15072 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30611)

(declare-datatypes ((ValueCell!6381 0))(
  ( (ValueCellFull!6381 (v!9058 V!19037)) (EmptyCell!6381) )
))
(declare-datatypes ((array!30613 0))(
  ( (array!30614 (arr!14721 (Array (_ BitVec 32) ValueCell!6381)) (size!15073 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30613)

(declare-fun minValueAfter!38 () V!19037)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2095 (array!30611 array!30613 (_ BitVec 32) (_ BitVec 32) V!19037 V!19037 (_ BitVec 32) Int) ListLongMap!7851)

(assert (=> b!474915 (= lt!216345 (getCurrentListMapNoExtraKeys!2095 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19037)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!216344 () ListLongMap!7851)

(assert (=> b!474915 (= lt!216344 (getCurrentListMapNoExtraKeys!2095 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474916 () Bool)

(declare-fun res!283699 () Bool)

(assert (=> b!474916 (=> (not res!283699) (not e!278832))))

(assert (=> b!474916 (= res!283699 (and (= (size!15073 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15072 _keys!1025) (size!15073 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474917 () Bool)

(declare-fun res!283701 () Bool)

(assert (=> b!474917 (=> (not res!283701) (not e!278832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30611 (_ BitVec 32)) Bool)

(assert (=> b!474917 (= res!283701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!283698 () Bool)

(assert (=> start!42594 (=> (not res!283698) (not e!278832))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42594 (= res!283698 (validMask!0 mask!1365))))

(assert (=> start!42594 e!278832))

(assert (=> start!42594 tp_is_empty!13449))

(assert (=> start!42594 tp!42103))

(assert (=> start!42594 true))

(declare-fun array_inv!10608 (array!30611) Bool)

(assert (=> start!42594 (array_inv!10608 _keys!1025)))

(declare-fun e!278835 () Bool)

(declare-fun array_inv!10609 (array!30613) Bool)

(assert (=> start!42594 (and (array_inv!10609 _values!833) e!278835)))

(declare-fun b!474918 () Bool)

(declare-fun e!278833 () Bool)

(assert (=> b!474918 (= e!278833 tp_is_empty!13449)))

(declare-fun b!474919 () Bool)

(declare-fun mapRes!21892 () Bool)

(assert (=> b!474919 (= e!278835 (and e!278834 mapRes!21892))))

(declare-fun condMapEmpty!21892 () Bool)

(declare-fun mapDefault!21892 () ValueCell!6381)

(assert (=> b!474919 (= condMapEmpty!21892 (= (arr!14721 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6381)) mapDefault!21892)))))

(declare-fun mapIsEmpty!21892 () Bool)

(assert (=> mapIsEmpty!21892 mapRes!21892))

(declare-fun mapNonEmpty!21892 () Bool)

(declare-fun tp!42102 () Bool)

(assert (=> mapNonEmpty!21892 (= mapRes!21892 (and tp!42102 e!278833))))

(declare-fun mapRest!21892 () (Array (_ BitVec 32) ValueCell!6381))

(declare-fun mapKey!21892 () (_ BitVec 32))

(declare-fun mapValue!21892 () ValueCell!6381)

(assert (=> mapNonEmpty!21892 (= (arr!14721 _values!833) (store mapRest!21892 mapKey!21892 mapValue!21892))))

(declare-fun b!474920 () Bool)

(declare-fun res!283700 () Bool)

(assert (=> b!474920 (=> (not res!283700) (not e!278832))))

(declare-datatypes ((List!9036 0))(
  ( (Nil!9033) (Cons!9032 (h!9888 (_ BitVec 64)) (t!15018 List!9036)) )
))
(declare-fun arrayNoDuplicates!0 (array!30611 (_ BitVec 32) List!9036) Bool)

(assert (=> b!474920 (= res!283700 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9033))))

(assert (= (and start!42594 res!283698) b!474916))

(assert (= (and b!474916 res!283699) b!474917))

(assert (= (and b!474917 res!283701) b!474920))

(assert (= (and b!474920 res!283700) b!474915))

(assert (= (and b!474919 condMapEmpty!21892) mapIsEmpty!21892))

(assert (= (and b!474919 (not condMapEmpty!21892)) mapNonEmpty!21892))

(get-info :version)

(assert (= (and mapNonEmpty!21892 ((_ is ValueCellFull!6381) mapValue!21892)) b!474918))

(assert (= (and b!474919 ((_ is ValueCellFull!6381) mapDefault!21892)) b!474914))

(assert (= start!42594 b!474919))

(declare-fun m!457207 () Bool)

(assert (=> b!474915 m!457207))

(declare-fun m!457209 () Bool)

(assert (=> b!474915 m!457209))

(declare-fun m!457211 () Bool)

(assert (=> b!474920 m!457211))

(declare-fun m!457213 () Bool)

(assert (=> mapNonEmpty!21892 m!457213))

(declare-fun m!457215 () Bool)

(assert (=> b!474917 m!457215))

(declare-fun m!457217 () Bool)

(assert (=> start!42594 m!457217))

(declare-fun m!457219 () Bool)

(assert (=> start!42594 m!457219))

(declare-fun m!457221 () Bool)

(assert (=> start!42594 m!457221))

(check-sat (not b_next!12021) (not b!474915) (not start!42594) b_and!20519 (not mapNonEmpty!21892) tp_is_empty!13449 (not b!474917) (not b!474920))
(check-sat b_and!20519 (not b_next!12021))
