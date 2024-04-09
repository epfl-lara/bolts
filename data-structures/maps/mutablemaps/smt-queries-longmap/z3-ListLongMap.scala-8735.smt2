; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105942 () Bool)

(assert start!105942)

(declare-fun b_free!27447 () Bool)

(declare-fun b_next!27447 () Bool)

(assert (=> start!105942 (= b_free!27447 (not b_next!27447))))

(declare-fun tp!95873 () Bool)

(declare-fun b_and!45365 () Bool)

(assert (=> start!105942 (= tp!95873 b_and!45365)))

(declare-fun mapIsEmpty!50326 () Bool)

(declare-fun mapRes!50326 () Bool)

(assert (=> mapIsEmpty!50326 mapRes!50326))

(declare-fun b!1261343 () Bool)

(declare-fun res!840598 () Bool)

(declare-fun e!717922 () Bool)

(assert (=> b!1261343 (=> (not res!840598) (not e!717922))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82297 0))(
  ( (array!82298 (arr!39697 (Array (_ BitVec 32) (_ BitVec 64))) (size!40234 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82297)

(declare-datatypes ((V!48497 0))(
  ( (V!48498 (val!16237 Int)) )
))
(declare-datatypes ((ValueCell!15411 0))(
  ( (ValueCellFull!15411 (v!18941 V!48497)) (EmptyCell!15411) )
))
(declare-datatypes ((array!82299 0))(
  ( (array!82300 (arr!39698 (Array (_ BitVec 32) ValueCell!15411)) (size!40235 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82299)

(assert (=> b!1261343 (= res!840598 (and (= (size!40235 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40234 _keys!1118) (size!40235 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261344 () Bool)

(assert (=> b!1261344 (= e!717922 false)))

(declare-fun minValueAfter!43 () V!48497)

(declare-fun zeroValue!871 () V!48497)

(declare-datatypes ((tuple2!21160 0))(
  ( (tuple2!21161 (_1!10590 (_ BitVec 64)) (_2!10590 V!48497)) )
))
(declare-datatypes ((List!28381 0))(
  ( (Nil!28378) (Cons!28377 (h!29586 tuple2!21160) (t!41887 List!28381)) )
))
(declare-datatypes ((ListLongMap!19045 0))(
  ( (ListLongMap!19046 (toList!9538 List!28381)) )
))
(declare-fun lt!571565 () ListLongMap!19045)

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5879 (array!82297 array!82299 (_ BitVec 32) (_ BitVec 32) V!48497 V!48497 (_ BitVec 32) Int) ListLongMap!19045)

(assert (=> b!1261344 (= lt!571565 (getCurrentListMapNoExtraKeys!5879 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun minValueBefore!43 () V!48497)

(declare-fun lt!571564 () ListLongMap!19045)

(assert (=> b!1261344 (= lt!571564 (getCurrentListMapNoExtraKeys!5879 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261346 () Bool)

(declare-fun res!840596 () Bool)

(assert (=> b!1261346 (=> (not res!840596) (not e!717922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82297 (_ BitVec 32)) Bool)

(assert (=> b!1261346 (= res!840596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261347 () Bool)

(declare-fun e!717921 () Bool)

(declare-fun tp_is_empty!32349 () Bool)

(assert (=> b!1261347 (= e!717921 tp_is_empty!32349)))

(declare-fun mapNonEmpty!50326 () Bool)

(declare-fun tp!95874 () Bool)

(assert (=> mapNonEmpty!50326 (= mapRes!50326 (and tp!95874 e!717921))))

(declare-fun mapValue!50326 () ValueCell!15411)

(declare-fun mapRest!50326 () (Array (_ BitVec 32) ValueCell!15411))

(declare-fun mapKey!50326 () (_ BitVec 32))

(assert (=> mapNonEmpty!50326 (= (arr!39698 _values!914) (store mapRest!50326 mapKey!50326 mapValue!50326))))

(declare-fun b!1261345 () Bool)

(declare-fun e!717924 () Bool)

(assert (=> b!1261345 (= e!717924 tp_is_empty!32349)))

(declare-fun res!840595 () Bool)

(assert (=> start!105942 (=> (not res!840595) (not e!717922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105942 (= res!840595 (validMask!0 mask!1466))))

(assert (=> start!105942 e!717922))

(assert (=> start!105942 true))

(assert (=> start!105942 tp!95873))

(assert (=> start!105942 tp_is_empty!32349))

(declare-fun array_inv!30171 (array!82297) Bool)

(assert (=> start!105942 (array_inv!30171 _keys!1118)))

(declare-fun e!717923 () Bool)

(declare-fun array_inv!30172 (array!82299) Bool)

(assert (=> start!105942 (and (array_inv!30172 _values!914) e!717923)))

(declare-fun b!1261348 () Bool)

(declare-fun res!840597 () Bool)

(assert (=> b!1261348 (=> (not res!840597) (not e!717922))))

(declare-datatypes ((List!28382 0))(
  ( (Nil!28379) (Cons!28378 (h!29587 (_ BitVec 64)) (t!41888 List!28382)) )
))
(declare-fun arrayNoDuplicates!0 (array!82297 (_ BitVec 32) List!28382) Bool)

(assert (=> b!1261348 (= res!840597 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28379))))

(declare-fun b!1261349 () Bool)

(assert (=> b!1261349 (= e!717923 (and e!717924 mapRes!50326))))

(declare-fun condMapEmpty!50326 () Bool)

(declare-fun mapDefault!50326 () ValueCell!15411)

(assert (=> b!1261349 (= condMapEmpty!50326 (= (arr!39698 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15411)) mapDefault!50326)))))

(assert (= (and start!105942 res!840595) b!1261343))

(assert (= (and b!1261343 res!840598) b!1261346))

(assert (= (and b!1261346 res!840596) b!1261348))

(assert (= (and b!1261348 res!840597) b!1261344))

(assert (= (and b!1261349 condMapEmpty!50326) mapIsEmpty!50326))

(assert (= (and b!1261349 (not condMapEmpty!50326)) mapNonEmpty!50326))

(get-info :version)

(assert (= (and mapNonEmpty!50326 ((_ is ValueCellFull!15411) mapValue!50326)) b!1261347))

(assert (= (and b!1261349 ((_ is ValueCellFull!15411) mapDefault!50326)) b!1261345))

(assert (= start!105942 b!1261349))

(declare-fun m!1162011 () Bool)

(assert (=> b!1261348 m!1162011))

(declare-fun m!1162013 () Bool)

(assert (=> mapNonEmpty!50326 m!1162013))

(declare-fun m!1162015 () Bool)

(assert (=> start!105942 m!1162015))

(declare-fun m!1162017 () Bool)

(assert (=> start!105942 m!1162017))

(declare-fun m!1162019 () Bool)

(assert (=> start!105942 m!1162019))

(declare-fun m!1162021 () Bool)

(assert (=> b!1261344 m!1162021))

(declare-fun m!1162023 () Bool)

(assert (=> b!1261344 m!1162023))

(declare-fun m!1162025 () Bool)

(assert (=> b!1261346 m!1162025))

(check-sat (not start!105942) tp_is_empty!32349 (not b!1261346) (not mapNonEmpty!50326) (not b!1261344) (not b_next!27447) b_and!45365 (not b!1261348))
(check-sat b_and!45365 (not b_next!27447))
