; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105894 () Bool)

(assert start!105894)

(declare-fun b_free!27399 () Bool)

(declare-fun b_next!27399 () Bool)

(assert (=> start!105894 (= b_free!27399 (not b_next!27399))))

(declare-fun tp!95730 () Bool)

(declare-fun b_and!45317 () Bool)

(assert (=> start!105894 (= tp!95730 b_and!45317)))

(declare-fun b!1260839 () Bool)

(declare-fun e!717562 () Bool)

(declare-fun tp_is_empty!32301 () Bool)

(assert (=> b!1260839 (= e!717562 tp_is_empty!32301)))

(declare-fun mapIsEmpty!50254 () Bool)

(declare-fun mapRes!50254 () Bool)

(assert (=> mapIsEmpty!50254 mapRes!50254))

(declare-fun b!1260840 () Bool)

(declare-fun e!717563 () Bool)

(assert (=> b!1260840 (= e!717563 tp_is_empty!32301)))

(declare-fun b!1260841 () Bool)

(declare-fun e!717561 () Bool)

(assert (=> b!1260841 (= e!717561 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48433 0))(
  ( (V!48434 (val!16213 Int)) )
))
(declare-fun minValueAfter!43 () V!48433)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48433)

(declare-datatypes ((ValueCell!15387 0))(
  ( (ValueCellFull!15387 (v!18917 V!48433)) (EmptyCell!15387) )
))
(declare-datatypes ((array!82207 0))(
  ( (array!82208 (arr!39652 (Array (_ BitVec 32) ValueCell!15387)) (size!40189 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82207)

(declare-datatypes ((tuple2!21124 0))(
  ( (tuple2!21125 (_1!10572 (_ BitVec 64)) (_2!10572 V!48433)) )
))
(declare-datatypes ((List!28347 0))(
  ( (Nil!28344) (Cons!28343 (h!29552 tuple2!21124) (t!41853 List!28347)) )
))
(declare-datatypes ((ListLongMap!19009 0))(
  ( (ListLongMap!19010 (toList!9520 List!28347)) )
))
(declare-fun lt!571420 () ListLongMap!19009)

(declare-datatypes ((array!82209 0))(
  ( (array!82210 (arr!39653 (Array (_ BitVec 32) (_ BitVec 64))) (size!40190 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82209)

(declare-fun getCurrentListMapNoExtraKeys!5861 (array!82209 array!82207 (_ BitVec 32) (_ BitVec 32) V!48433 V!48433 (_ BitVec 32) Int) ListLongMap!19009)

(assert (=> b!1260841 (= lt!571420 (getCurrentListMapNoExtraKeys!5861 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!48433)

(declare-fun lt!571421 () ListLongMap!19009)

(assert (=> b!1260841 (= lt!571421 (getCurrentListMapNoExtraKeys!5861 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260842 () Bool)

(declare-fun res!840308 () Bool)

(assert (=> b!1260842 (=> (not res!840308) (not e!717561))))

(assert (=> b!1260842 (= res!840308 (and (= (size!40189 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40190 _keys!1118) (size!40189 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!840310 () Bool)

(assert (=> start!105894 (=> (not res!840310) (not e!717561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105894 (= res!840310 (validMask!0 mask!1466))))

(assert (=> start!105894 e!717561))

(assert (=> start!105894 true))

(assert (=> start!105894 tp!95730))

(assert (=> start!105894 tp_is_empty!32301))

(declare-fun array_inv!30139 (array!82209) Bool)

(assert (=> start!105894 (array_inv!30139 _keys!1118)))

(declare-fun e!717565 () Bool)

(declare-fun array_inv!30140 (array!82207) Bool)

(assert (=> start!105894 (and (array_inv!30140 _values!914) e!717565)))

(declare-fun b!1260843 () Bool)

(declare-fun res!840309 () Bool)

(assert (=> b!1260843 (=> (not res!840309) (not e!717561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82209 (_ BitVec 32)) Bool)

(assert (=> b!1260843 (= res!840309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!50254 () Bool)

(declare-fun tp!95729 () Bool)

(assert (=> mapNonEmpty!50254 (= mapRes!50254 (and tp!95729 e!717563))))

(declare-fun mapRest!50254 () (Array (_ BitVec 32) ValueCell!15387))

(declare-fun mapKey!50254 () (_ BitVec 32))

(declare-fun mapValue!50254 () ValueCell!15387)

(assert (=> mapNonEmpty!50254 (= (arr!39652 _values!914) (store mapRest!50254 mapKey!50254 mapValue!50254))))

(declare-fun b!1260844 () Bool)

(assert (=> b!1260844 (= e!717565 (and e!717562 mapRes!50254))))

(declare-fun condMapEmpty!50254 () Bool)

(declare-fun mapDefault!50254 () ValueCell!15387)

(assert (=> b!1260844 (= condMapEmpty!50254 (= (arr!39652 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15387)) mapDefault!50254)))))

(declare-fun b!1260845 () Bool)

(declare-fun res!840307 () Bool)

(assert (=> b!1260845 (=> (not res!840307) (not e!717561))))

(declare-datatypes ((List!28348 0))(
  ( (Nil!28345) (Cons!28344 (h!29553 (_ BitVec 64)) (t!41854 List!28348)) )
))
(declare-fun arrayNoDuplicates!0 (array!82209 (_ BitVec 32) List!28348) Bool)

(assert (=> b!1260845 (= res!840307 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28345))))

(assert (= (and start!105894 res!840310) b!1260842))

(assert (= (and b!1260842 res!840308) b!1260843))

(assert (= (and b!1260843 res!840309) b!1260845))

(assert (= (and b!1260845 res!840307) b!1260841))

(assert (= (and b!1260844 condMapEmpty!50254) mapIsEmpty!50254))

(assert (= (and b!1260844 (not condMapEmpty!50254)) mapNonEmpty!50254))

(get-info :version)

(assert (= (and mapNonEmpty!50254 ((_ is ValueCellFull!15387) mapValue!50254)) b!1260840))

(assert (= (and b!1260844 ((_ is ValueCellFull!15387) mapDefault!50254)) b!1260839))

(assert (= start!105894 b!1260844))

(declare-fun m!1161627 () Bool)

(assert (=> b!1260845 m!1161627))

(declare-fun m!1161629 () Bool)

(assert (=> start!105894 m!1161629))

(declare-fun m!1161631 () Bool)

(assert (=> start!105894 m!1161631))

(declare-fun m!1161633 () Bool)

(assert (=> start!105894 m!1161633))

(declare-fun m!1161635 () Bool)

(assert (=> mapNonEmpty!50254 m!1161635))

(declare-fun m!1161637 () Bool)

(assert (=> b!1260841 m!1161637))

(declare-fun m!1161639 () Bool)

(assert (=> b!1260841 m!1161639))

(declare-fun m!1161641 () Bool)

(assert (=> b!1260843 m!1161641))

(check-sat tp_is_empty!32301 (not b!1260841) (not b!1260843) (not b!1260845) b_and!45317 (not b_next!27399) (not mapNonEmpty!50254) (not start!105894))
(check-sat b_and!45317 (not b_next!27399))
