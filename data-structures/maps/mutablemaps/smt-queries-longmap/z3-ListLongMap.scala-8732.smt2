; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105924 () Bool)

(assert start!105924)

(declare-fun b_free!27429 () Bool)

(declare-fun b_next!27429 () Bool)

(assert (=> start!105924 (= b_free!27429 (not b_next!27429))))

(declare-fun tp!95819 () Bool)

(declare-fun b_and!45347 () Bool)

(assert (=> start!105924 (= tp!95819 b_and!45347)))

(declare-fun mapNonEmpty!50299 () Bool)

(declare-fun mapRes!50299 () Bool)

(declare-fun tp!95820 () Bool)

(declare-fun e!717789 () Bool)

(assert (=> mapNonEmpty!50299 (= mapRes!50299 (and tp!95820 e!717789))))

(declare-datatypes ((V!48473 0))(
  ( (V!48474 (val!16228 Int)) )
))
(declare-datatypes ((ValueCell!15402 0))(
  ( (ValueCellFull!15402 (v!18932 V!48473)) (EmptyCell!15402) )
))
(declare-fun mapValue!50299 () ValueCell!15402)

(declare-fun mapKey!50299 () (_ BitVec 32))

(declare-fun mapRest!50299 () (Array (_ BitVec 32) ValueCell!15402))

(declare-datatypes ((array!82263 0))(
  ( (array!82264 (arr!39680 (Array (_ BitVec 32) ValueCell!15402)) (size!40217 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82263)

(assert (=> mapNonEmpty!50299 (= (arr!39680 _values!914) (store mapRest!50299 mapKey!50299 mapValue!50299))))

(declare-fun b!1261154 () Bool)

(declare-fun tp_is_empty!32331 () Bool)

(assert (=> b!1261154 (= e!717789 tp_is_empty!32331)))

(declare-fun res!840490 () Bool)

(declare-fun e!717787 () Bool)

(assert (=> start!105924 (=> (not res!840490) (not e!717787))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105924 (= res!840490 (validMask!0 mask!1466))))

(assert (=> start!105924 e!717787))

(assert (=> start!105924 true))

(assert (=> start!105924 tp!95819))

(assert (=> start!105924 tp_is_empty!32331))

(declare-datatypes ((array!82265 0))(
  ( (array!82266 (arr!39681 (Array (_ BitVec 32) (_ BitVec 64))) (size!40218 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82265)

(declare-fun array_inv!30159 (array!82265) Bool)

(assert (=> start!105924 (array_inv!30159 _keys!1118)))

(declare-fun e!717790 () Bool)

(declare-fun array_inv!30160 (array!82263) Bool)

(assert (=> start!105924 (and (array_inv!30160 _values!914) e!717790)))

(declare-fun b!1261155 () Bool)

(declare-fun res!840487 () Bool)

(assert (=> b!1261155 (=> (not res!840487) (not e!717787))))

(declare-datatypes ((List!28367 0))(
  ( (Nil!28364) (Cons!28363 (h!29572 (_ BitVec 64)) (t!41873 List!28367)) )
))
(declare-fun arrayNoDuplicates!0 (array!82265 (_ BitVec 32) List!28367) Bool)

(assert (=> b!1261155 (= res!840487 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28364))))

(declare-fun mapIsEmpty!50299 () Bool)

(assert (=> mapIsEmpty!50299 mapRes!50299))

(declare-fun b!1261156 () Bool)

(declare-fun e!717788 () Bool)

(assert (=> b!1261156 (= e!717790 (and e!717788 mapRes!50299))))

(declare-fun condMapEmpty!50299 () Bool)

(declare-fun mapDefault!50299 () ValueCell!15402)

(assert (=> b!1261156 (= condMapEmpty!50299 (= (arr!39680 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15402)) mapDefault!50299)))))

(declare-fun b!1261157 () Bool)

(assert (=> b!1261157 (= e!717788 tp_is_empty!32331)))

(declare-fun b!1261158 () Bool)

(assert (=> b!1261158 (= e!717787 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48473)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((tuple2!21146 0))(
  ( (tuple2!21147 (_1!10583 (_ BitVec 64)) (_2!10583 V!48473)) )
))
(declare-datatypes ((List!28368 0))(
  ( (Nil!28365) (Cons!28364 (h!29573 tuple2!21146) (t!41874 List!28368)) )
))
(declare-datatypes ((ListLongMap!19031 0))(
  ( (ListLongMap!19032 (toList!9531 List!28368)) )
))
(declare-fun lt!571511 () ListLongMap!19031)

(declare-fun zeroValue!871 () V!48473)

(declare-fun getCurrentListMapNoExtraKeys!5872 (array!82265 array!82263 (_ BitVec 32) (_ BitVec 32) V!48473 V!48473 (_ BitVec 32) Int) ListLongMap!19031)

(assert (=> b!1261158 (= lt!571511 (getCurrentListMapNoExtraKeys!5872 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun lt!571510 () ListLongMap!19031)

(declare-fun minValueBefore!43 () V!48473)

(assert (=> b!1261158 (= lt!571510 (getCurrentListMapNoExtraKeys!5872 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261159 () Bool)

(declare-fun res!840488 () Bool)

(assert (=> b!1261159 (=> (not res!840488) (not e!717787))))

(assert (=> b!1261159 (= res!840488 (and (= (size!40217 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40218 _keys!1118) (size!40217 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261160 () Bool)

(declare-fun res!840489 () Bool)

(assert (=> b!1261160 (=> (not res!840489) (not e!717787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82265 (_ BitVec 32)) Bool)

(assert (=> b!1261160 (= res!840489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!105924 res!840490) b!1261159))

(assert (= (and b!1261159 res!840488) b!1261160))

(assert (= (and b!1261160 res!840489) b!1261155))

(assert (= (and b!1261155 res!840487) b!1261158))

(assert (= (and b!1261156 condMapEmpty!50299) mapIsEmpty!50299))

(assert (= (and b!1261156 (not condMapEmpty!50299)) mapNonEmpty!50299))

(get-info :version)

(assert (= (and mapNonEmpty!50299 ((_ is ValueCellFull!15402) mapValue!50299)) b!1261154))

(assert (= (and b!1261156 ((_ is ValueCellFull!15402) mapDefault!50299)) b!1261157))

(assert (= start!105924 b!1261156))

(declare-fun m!1161867 () Bool)

(assert (=> b!1261160 m!1161867))

(declare-fun m!1161869 () Bool)

(assert (=> b!1261158 m!1161869))

(declare-fun m!1161871 () Bool)

(assert (=> b!1261158 m!1161871))

(declare-fun m!1161873 () Bool)

(assert (=> b!1261155 m!1161873))

(declare-fun m!1161875 () Bool)

(assert (=> start!105924 m!1161875))

(declare-fun m!1161877 () Bool)

(assert (=> start!105924 m!1161877))

(declare-fun m!1161879 () Bool)

(assert (=> start!105924 m!1161879))

(declare-fun m!1161881 () Bool)

(assert (=> mapNonEmpty!50299 m!1161881))

(check-sat (not b_next!27429) (not b!1261160) (not b!1261158) (not b!1261155) b_and!45347 (not mapNonEmpty!50299) (not start!105924) tp_is_empty!32331)
(check-sat b_and!45347 (not b_next!27429))
