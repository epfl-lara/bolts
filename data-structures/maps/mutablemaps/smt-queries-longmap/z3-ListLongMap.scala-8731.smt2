; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105918 () Bool)

(assert start!105918)

(declare-fun b_free!27423 () Bool)

(declare-fun b_next!27423 () Bool)

(assert (=> start!105918 (= b_free!27423 (not b_next!27423))))

(declare-fun tp!95801 () Bool)

(declare-fun b_and!45341 () Bool)

(assert (=> start!105918 (= tp!95801 b_and!45341)))

(declare-fun b!1261091 () Bool)

(declare-fun e!717741 () Bool)

(declare-fun tp_is_empty!32325 () Bool)

(assert (=> b!1261091 (= e!717741 tp_is_empty!32325)))

(declare-fun res!840451 () Bool)

(declare-fun e!717745 () Bool)

(assert (=> start!105918 (=> (not res!840451) (not e!717745))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105918 (= res!840451 (validMask!0 mask!1466))))

(assert (=> start!105918 e!717745))

(assert (=> start!105918 true))

(assert (=> start!105918 tp!95801))

(assert (=> start!105918 tp_is_empty!32325))

(declare-datatypes ((array!82253 0))(
  ( (array!82254 (arr!39675 (Array (_ BitVec 32) (_ BitVec 64))) (size!40212 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82253)

(declare-fun array_inv!30155 (array!82253) Bool)

(assert (=> start!105918 (array_inv!30155 _keys!1118)))

(declare-datatypes ((V!48465 0))(
  ( (V!48466 (val!16225 Int)) )
))
(declare-datatypes ((ValueCell!15399 0))(
  ( (ValueCellFull!15399 (v!18929 V!48465)) (EmptyCell!15399) )
))
(declare-datatypes ((array!82255 0))(
  ( (array!82256 (arr!39676 (Array (_ BitVec 32) ValueCell!15399)) (size!40213 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82255)

(declare-fun e!717743 () Bool)

(declare-fun array_inv!30156 (array!82255) Bool)

(assert (=> start!105918 (and (array_inv!30156 _values!914) e!717743)))

(declare-fun b!1261092 () Bool)

(assert (=> b!1261092 (= e!717745 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48465)

(declare-fun zeroValue!871 () V!48465)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((tuple2!21144 0))(
  ( (tuple2!21145 (_1!10582 (_ BitVec 64)) (_2!10582 V!48465)) )
))
(declare-datatypes ((List!28365 0))(
  ( (Nil!28362) (Cons!28361 (h!29570 tuple2!21144) (t!41871 List!28365)) )
))
(declare-datatypes ((ListLongMap!19029 0))(
  ( (ListLongMap!19030 (toList!9530 List!28365)) )
))
(declare-fun lt!571492 () ListLongMap!19029)

(declare-fun getCurrentListMapNoExtraKeys!5871 (array!82253 array!82255 (_ BitVec 32) (_ BitVec 32) V!48465 V!48465 (_ BitVec 32) Int) ListLongMap!19029)

(assert (=> b!1261092 (= lt!571492 (getCurrentListMapNoExtraKeys!5871 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571493 () ListLongMap!19029)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!48465)

(assert (=> b!1261092 (= lt!571493 (getCurrentListMapNoExtraKeys!5871 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261093 () Bool)

(declare-fun e!717744 () Bool)

(assert (=> b!1261093 (= e!717744 tp_is_empty!32325)))

(declare-fun b!1261094 () Bool)

(declare-fun mapRes!50290 () Bool)

(assert (=> b!1261094 (= e!717743 (and e!717744 mapRes!50290))))

(declare-fun condMapEmpty!50290 () Bool)

(declare-fun mapDefault!50290 () ValueCell!15399)

(assert (=> b!1261094 (= condMapEmpty!50290 (= (arr!39676 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15399)) mapDefault!50290)))))

(declare-fun b!1261095 () Bool)

(declare-fun res!840454 () Bool)

(assert (=> b!1261095 (=> (not res!840454) (not e!717745))))

(declare-datatypes ((List!28366 0))(
  ( (Nil!28363) (Cons!28362 (h!29571 (_ BitVec 64)) (t!41872 List!28366)) )
))
(declare-fun arrayNoDuplicates!0 (array!82253 (_ BitVec 32) List!28366) Bool)

(assert (=> b!1261095 (= res!840454 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28363))))

(declare-fun mapIsEmpty!50290 () Bool)

(assert (=> mapIsEmpty!50290 mapRes!50290))

(declare-fun b!1261096 () Bool)

(declare-fun res!840453 () Bool)

(assert (=> b!1261096 (=> (not res!840453) (not e!717745))))

(assert (=> b!1261096 (= res!840453 (and (= (size!40213 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40212 _keys!1118) (size!40213 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261097 () Bool)

(declare-fun res!840452 () Bool)

(assert (=> b!1261097 (=> (not res!840452) (not e!717745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82253 (_ BitVec 32)) Bool)

(assert (=> b!1261097 (= res!840452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!50290 () Bool)

(declare-fun tp!95802 () Bool)

(assert (=> mapNonEmpty!50290 (= mapRes!50290 (and tp!95802 e!717741))))

(declare-fun mapRest!50290 () (Array (_ BitVec 32) ValueCell!15399))

(declare-fun mapValue!50290 () ValueCell!15399)

(declare-fun mapKey!50290 () (_ BitVec 32))

(assert (=> mapNonEmpty!50290 (= (arr!39676 _values!914) (store mapRest!50290 mapKey!50290 mapValue!50290))))

(assert (= (and start!105918 res!840451) b!1261096))

(assert (= (and b!1261096 res!840453) b!1261097))

(assert (= (and b!1261097 res!840452) b!1261095))

(assert (= (and b!1261095 res!840454) b!1261092))

(assert (= (and b!1261094 condMapEmpty!50290) mapIsEmpty!50290))

(assert (= (and b!1261094 (not condMapEmpty!50290)) mapNonEmpty!50290))

(get-info :version)

(assert (= (and mapNonEmpty!50290 ((_ is ValueCellFull!15399) mapValue!50290)) b!1261091))

(assert (= (and b!1261094 ((_ is ValueCellFull!15399) mapDefault!50290)) b!1261093))

(assert (= start!105918 b!1261094))

(declare-fun m!1161819 () Bool)

(assert (=> mapNonEmpty!50290 m!1161819))

(declare-fun m!1161821 () Bool)

(assert (=> start!105918 m!1161821))

(declare-fun m!1161823 () Bool)

(assert (=> start!105918 m!1161823))

(declare-fun m!1161825 () Bool)

(assert (=> start!105918 m!1161825))

(declare-fun m!1161827 () Bool)

(assert (=> b!1261095 m!1161827))

(declare-fun m!1161829 () Bool)

(assert (=> b!1261092 m!1161829))

(declare-fun m!1161831 () Bool)

(assert (=> b!1261092 m!1161831))

(declare-fun m!1161833 () Bool)

(assert (=> b!1261097 m!1161833))

(check-sat b_and!45341 (not b!1261092) (not start!105918) (not b_next!27423) (not mapNonEmpty!50290) tp_is_empty!32325 (not b!1261095) (not b!1261097))
(check-sat b_and!45341 (not b_next!27423))
