; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42422 () Bool)

(assert start!42422)

(declare-fun b_free!11889 () Bool)

(declare-fun b_next!11889 () Bool)

(assert (=> start!42422 (= b_free!11889 (not b_next!11889))))

(declare-fun tp!41701 () Bool)

(declare-fun b_and!20363 () Bool)

(assert (=> start!42422 (= tp!41701 b_and!20363)))

(declare-fun b!473046 () Bool)

(declare-fun res!282627 () Bool)

(declare-fun e!277495 () Bool)

(assert (=> b!473046 (=> (not res!282627) (not e!277495))))

(declare-datatypes ((array!30355 0))(
  ( (array!30356 (arr!14594 (Array (_ BitVec 32) (_ BitVec 64))) (size!14946 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30355)

(declare-datatypes ((List!8937 0))(
  ( (Nil!8934) (Cons!8933 (h!9789 (_ BitVec 64)) (t!14915 List!8937)) )
))
(declare-fun arrayNoDuplicates!0 (array!30355 (_ BitVec 32) List!8937) Bool)

(assert (=> b!473046 (= res!282627 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8934))))

(declare-fun b!473047 () Bool)

(declare-fun e!277496 () Bool)

(assert (=> b!473047 (= e!277496 true)))

(declare-datatypes ((V!18861 0))(
  ( (V!18862 (val!6703 Int)) )
))
(declare-datatypes ((tuple2!8824 0))(
  ( (tuple2!8825 (_1!4422 (_ BitVec 64)) (_2!4422 V!18861)) )
))
(declare-datatypes ((List!8938 0))(
  ( (Nil!8935) (Cons!8934 (h!9790 tuple2!8824) (t!14916 List!8938)) )
))
(declare-datatypes ((ListLongMap!7751 0))(
  ( (ListLongMap!7752 (toList!3891 List!8938)) )
))
(declare-fun lt!214910 () ListLongMap!7751)

(declare-fun lt!214907 () tuple2!8824)

(declare-fun minValueBefore!38 () V!18861)

(declare-fun +!1698 (ListLongMap!7751 tuple2!8824) ListLongMap!7751)

(assert (=> b!473047 (= (+!1698 lt!214910 lt!214907) (+!1698 (+!1698 lt!214910 (tuple2!8825 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214907))))

(declare-fun minValueAfter!38 () V!18861)

(assert (=> b!473047 (= lt!214907 (tuple2!8825 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13903 0))(
  ( (Unit!13904) )
))
(declare-fun lt!214909 () Unit!13903)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!135 (ListLongMap!7751 (_ BitVec 64) V!18861 V!18861) Unit!13903)

(assert (=> b!473047 (= lt!214909 (addSameAsAddTwiceSameKeyDiffValues!135 lt!214910 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!214905 () ListLongMap!7751)

(declare-fun zeroValue!794 () V!18861)

(assert (=> b!473047 (= lt!214910 (+!1698 lt!214905 (tuple2!8825 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!214903 () ListLongMap!7751)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6315 0))(
  ( (ValueCellFull!6315 (v!8990 V!18861)) (EmptyCell!6315) )
))
(declare-datatypes ((array!30357 0))(
  ( (array!30358 (arr!14595 (Array (_ BitVec 32) ValueCell!6315)) (size!14947 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30357)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2235 (array!30355 array!30357 (_ BitVec 32) (_ BitVec 32) V!18861 V!18861 (_ BitVec 32) Int) ListLongMap!7751)

(assert (=> b!473047 (= lt!214903 (getCurrentListMap!2235 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214908 () ListLongMap!7751)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473047 (= lt!214908 (getCurrentListMap!2235 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473048 () Bool)

(declare-fun e!277498 () Bool)

(declare-fun e!277500 () Bool)

(declare-fun mapRes!21688 () Bool)

(assert (=> b!473048 (= e!277498 (and e!277500 mapRes!21688))))

(declare-fun condMapEmpty!21688 () Bool)

(declare-fun mapDefault!21688 () ValueCell!6315)

(assert (=> b!473048 (= condMapEmpty!21688 (= (arr!14595 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6315)) mapDefault!21688)))))

(declare-fun b!473049 () Bool)

(assert (=> b!473049 (= e!277495 (not e!277496))))

(declare-fun res!282629 () Bool)

(assert (=> b!473049 (=> res!282629 e!277496)))

(assert (=> b!473049 (= res!282629 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214904 () ListLongMap!7751)

(assert (=> b!473049 (= lt!214905 lt!214904)))

(declare-fun lt!214906 () Unit!13903)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!245 (array!30355 array!30357 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18861 V!18861 V!18861 V!18861 (_ BitVec 32) Int) Unit!13903)

(assert (=> b!473049 (= lt!214906 (lemmaNoChangeToArrayThenSameMapNoExtras!245 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2050 (array!30355 array!30357 (_ BitVec 32) (_ BitVec 32) V!18861 V!18861 (_ BitVec 32) Int) ListLongMap!7751)

(assert (=> b!473049 (= lt!214904 (getCurrentListMapNoExtraKeys!2050 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473049 (= lt!214905 (getCurrentListMapNoExtraKeys!2050 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473050 () Bool)

(declare-fun e!277499 () Bool)

(declare-fun tp_is_empty!13317 () Bool)

(assert (=> b!473050 (= e!277499 tp_is_empty!13317)))

(declare-fun mapNonEmpty!21688 () Bool)

(declare-fun tp!41700 () Bool)

(assert (=> mapNonEmpty!21688 (= mapRes!21688 (and tp!41700 e!277499))))

(declare-fun mapRest!21688 () (Array (_ BitVec 32) ValueCell!6315))

(declare-fun mapKey!21688 () (_ BitVec 32))

(declare-fun mapValue!21688 () ValueCell!6315)

(assert (=> mapNonEmpty!21688 (= (arr!14595 _values!833) (store mapRest!21688 mapKey!21688 mapValue!21688))))

(declare-fun b!473051 () Bool)

(declare-fun res!282630 () Bool)

(assert (=> b!473051 (=> (not res!282630) (not e!277495))))

(assert (=> b!473051 (= res!282630 (and (= (size!14947 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14946 _keys!1025) (size!14947 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473052 () Bool)

(assert (=> b!473052 (= e!277500 tp_is_empty!13317)))

(declare-fun mapIsEmpty!21688 () Bool)

(assert (=> mapIsEmpty!21688 mapRes!21688))

(declare-fun b!473045 () Bool)

(declare-fun res!282631 () Bool)

(assert (=> b!473045 (=> (not res!282631) (not e!277495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30355 (_ BitVec 32)) Bool)

(assert (=> b!473045 (= res!282631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!282628 () Bool)

(assert (=> start!42422 (=> (not res!282628) (not e!277495))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42422 (= res!282628 (validMask!0 mask!1365))))

(assert (=> start!42422 e!277495))

(assert (=> start!42422 tp_is_empty!13317))

(assert (=> start!42422 tp!41701))

(assert (=> start!42422 true))

(declare-fun array_inv!10522 (array!30355) Bool)

(assert (=> start!42422 (array_inv!10522 _keys!1025)))

(declare-fun array_inv!10523 (array!30357) Bool)

(assert (=> start!42422 (and (array_inv!10523 _values!833) e!277498)))

(assert (= (and start!42422 res!282628) b!473051))

(assert (= (and b!473051 res!282630) b!473045))

(assert (= (and b!473045 res!282631) b!473046))

(assert (= (and b!473046 res!282627) b!473049))

(assert (= (and b!473049 (not res!282629)) b!473047))

(assert (= (and b!473048 condMapEmpty!21688) mapIsEmpty!21688))

(assert (= (and b!473048 (not condMapEmpty!21688)) mapNonEmpty!21688))

(get-info :version)

(assert (= (and mapNonEmpty!21688 ((_ is ValueCellFull!6315) mapValue!21688)) b!473050))

(assert (= (and b!473048 ((_ is ValueCellFull!6315) mapDefault!21688)) b!473052))

(assert (= start!42422 b!473048))

(declare-fun m!455065 () Bool)

(assert (=> b!473049 m!455065))

(declare-fun m!455067 () Bool)

(assert (=> b!473049 m!455067))

(declare-fun m!455069 () Bool)

(assert (=> b!473049 m!455069))

(declare-fun m!455071 () Bool)

(assert (=> start!42422 m!455071))

(declare-fun m!455073 () Bool)

(assert (=> start!42422 m!455073))

(declare-fun m!455075 () Bool)

(assert (=> start!42422 m!455075))

(declare-fun m!455077 () Bool)

(assert (=> mapNonEmpty!21688 m!455077))

(declare-fun m!455079 () Bool)

(assert (=> b!473047 m!455079))

(declare-fun m!455081 () Bool)

(assert (=> b!473047 m!455081))

(assert (=> b!473047 m!455079))

(declare-fun m!455083 () Bool)

(assert (=> b!473047 m!455083))

(declare-fun m!455085 () Bool)

(assert (=> b!473047 m!455085))

(declare-fun m!455087 () Bool)

(assert (=> b!473047 m!455087))

(declare-fun m!455089 () Bool)

(assert (=> b!473047 m!455089))

(declare-fun m!455091 () Bool)

(assert (=> b!473047 m!455091))

(declare-fun m!455093 () Bool)

(assert (=> b!473045 m!455093))

(declare-fun m!455095 () Bool)

(assert (=> b!473046 m!455095))

(check-sat (not b!473049) (not b!473047) (not b_next!11889) (not mapNonEmpty!21688) tp_is_empty!13317 (not b!473046) b_and!20363 (not b!473045) (not start!42422))
(check-sat b_and!20363 (not b_next!11889))
