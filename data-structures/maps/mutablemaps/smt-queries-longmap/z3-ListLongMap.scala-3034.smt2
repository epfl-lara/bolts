; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42588 () Bool)

(assert start!42588)

(declare-fun b_free!12015 () Bool)

(declare-fun b_next!12015 () Bool)

(assert (=> start!42588 (= b_free!12015 (not b_next!12015))))

(declare-fun tp!42085 () Bool)

(declare-fun b_and!20513 () Bool)

(assert (=> start!42588 (= tp!42085 b_and!20513)))

(declare-fun b!474851 () Bool)

(declare-fun e!278788 () Bool)

(declare-fun tp_is_empty!13443 () Bool)

(assert (=> b!474851 (= e!278788 tp_is_empty!13443)))

(declare-fun b!474852 () Bool)

(declare-fun e!278791 () Bool)

(assert (=> b!474852 (= e!278791 false)))

(declare-datatypes ((V!19029 0))(
  ( (V!19030 (val!6766 Int)) )
))
(declare-fun zeroValue!794 () V!19029)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8922 0))(
  ( (tuple2!8923 (_1!4471 (_ BitVec 64)) (_2!4471 V!19029)) )
))
(declare-datatypes ((List!9033 0))(
  ( (Nil!9030) (Cons!9029 (h!9885 tuple2!8922) (t!15015 List!9033)) )
))
(declare-datatypes ((ListLongMap!7849 0))(
  ( (ListLongMap!7850 (toList!3940 List!9033)) )
))
(declare-fun lt!216326 () ListLongMap!7849)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30603 0))(
  ( (array!30604 (arr!14716 (Array (_ BitVec 32) (_ BitVec 64))) (size!15068 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30603)

(declare-datatypes ((ValueCell!6378 0))(
  ( (ValueCellFull!6378 (v!9055 V!19029)) (EmptyCell!6378) )
))
(declare-datatypes ((array!30605 0))(
  ( (array!30606 (arr!14717 (Array (_ BitVec 32) ValueCell!6378)) (size!15069 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30605)

(declare-fun minValueAfter!38 () V!19029)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2094 (array!30603 array!30605 (_ BitVec 32) (_ BitVec 32) V!19029 V!19029 (_ BitVec 32) Int) ListLongMap!7849)

(assert (=> b!474852 (= lt!216326 (getCurrentListMapNoExtraKeys!2094 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19029)

(declare-fun lt!216327 () ListLongMap!7849)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!474852 (= lt!216327 (getCurrentListMapNoExtraKeys!2094 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474853 () Bool)

(declare-fun res!283663 () Bool)

(assert (=> b!474853 (=> (not res!283663) (not e!278791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30603 (_ BitVec 32)) Bool)

(assert (=> b!474853 (= res!283663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!474854 () Bool)

(declare-fun e!278789 () Bool)

(assert (=> b!474854 (= e!278789 tp_is_empty!13443)))

(declare-fun b!474855 () Bool)

(declare-fun res!283664 () Bool)

(assert (=> b!474855 (=> (not res!283664) (not e!278791))))

(declare-datatypes ((List!9034 0))(
  ( (Nil!9031) (Cons!9030 (h!9886 (_ BitVec 64)) (t!15016 List!9034)) )
))
(declare-fun arrayNoDuplicates!0 (array!30603 (_ BitVec 32) List!9034) Bool)

(assert (=> b!474855 (= res!283664 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!9031))))

(declare-fun b!474856 () Bool)

(declare-fun res!283662 () Bool)

(assert (=> b!474856 (=> (not res!283662) (not e!278791))))

(assert (=> b!474856 (= res!283662 (and (= (size!15069 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15068 _keys!1025) (size!15069 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21883 () Bool)

(declare-fun mapRes!21883 () Bool)

(declare-fun tp!42084 () Bool)

(assert (=> mapNonEmpty!21883 (= mapRes!21883 (and tp!42084 e!278789))))

(declare-fun mapKey!21883 () (_ BitVec 32))

(declare-fun mapValue!21883 () ValueCell!6378)

(declare-fun mapRest!21883 () (Array (_ BitVec 32) ValueCell!6378))

(assert (=> mapNonEmpty!21883 (= (arr!14717 _values!833) (store mapRest!21883 mapKey!21883 mapValue!21883))))

(declare-fun res!283665 () Bool)

(assert (=> start!42588 (=> (not res!283665) (not e!278791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42588 (= res!283665 (validMask!0 mask!1365))))

(assert (=> start!42588 e!278791))

(assert (=> start!42588 tp_is_empty!13443))

(assert (=> start!42588 tp!42085))

(assert (=> start!42588 true))

(declare-fun array_inv!10606 (array!30603) Bool)

(assert (=> start!42588 (array_inv!10606 _keys!1025)))

(declare-fun e!278787 () Bool)

(declare-fun array_inv!10607 (array!30605) Bool)

(assert (=> start!42588 (and (array_inv!10607 _values!833) e!278787)))

(declare-fun b!474857 () Bool)

(assert (=> b!474857 (= e!278787 (and e!278788 mapRes!21883))))

(declare-fun condMapEmpty!21883 () Bool)

(declare-fun mapDefault!21883 () ValueCell!6378)

(assert (=> b!474857 (= condMapEmpty!21883 (= (arr!14717 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6378)) mapDefault!21883)))))

(declare-fun mapIsEmpty!21883 () Bool)

(assert (=> mapIsEmpty!21883 mapRes!21883))

(assert (= (and start!42588 res!283665) b!474856))

(assert (= (and b!474856 res!283662) b!474853))

(assert (= (and b!474853 res!283663) b!474855))

(assert (= (and b!474855 res!283664) b!474852))

(assert (= (and b!474857 condMapEmpty!21883) mapIsEmpty!21883))

(assert (= (and b!474857 (not condMapEmpty!21883)) mapNonEmpty!21883))

(get-info :version)

(assert (= (and mapNonEmpty!21883 ((_ is ValueCellFull!6378) mapValue!21883)) b!474854))

(assert (= (and b!474857 ((_ is ValueCellFull!6378) mapDefault!21883)) b!474851))

(assert (= start!42588 b!474857))

(declare-fun m!457159 () Bool)

(assert (=> b!474852 m!457159))

(declare-fun m!457161 () Bool)

(assert (=> b!474852 m!457161))

(declare-fun m!457163 () Bool)

(assert (=> mapNonEmpty!21883 m!457163))

(declare-fun m!457165 () Bool)

(assert (=> b!474855 m!457165))

(declare-fun m!457167 () Bool)

(assert (=> b!474853 m!457167))

(declare-fun m!457169 () Bool)

(assert (=> start!42588 m!457169))

(declare-fun m!457171 () Bool)

(assert (=> start!42588 m!457171))

(declare-fun m!457173 () Bool)

(assert (=> start!42588 m!457173))

(check-sat (not b!474853) (not b!474852) (not b!474855) (not start!42588) tp_is_empty!13443 b_and!20513 (not mapNonEmpty!21883) (not b_next!12015))
(check-sat b_and!20513 (not b_next!12015))
