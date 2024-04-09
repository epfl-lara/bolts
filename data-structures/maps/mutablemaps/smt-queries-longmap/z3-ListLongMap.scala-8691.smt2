; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105604 () Bool)

(assert start!105604)

(declare-fun b_free!27183 () Bool)

(declare-fun b_next!27183 () Bool)

(assert (=> start!105604 (= b_free!27183 (not b_next!27183))))

(declare-fun tp!95069 () Bool)

(declare-fun b_and!45059 () Bool)

(assert (=> start!105604 (= tp!95069 b_and!45059)))

(declare-fun mapIsEmpty!49918 () Bool)

(declare-fun mapRes!49918 () Bool)

(assert (=> mapIsEmpty!49918 mapRes!49918))

(declare-fun b!1257540 () Bool)

(declare-fun res!838328 () Bool)

(declare-fun e!715127 () Bool)

(assert (=> b!1257540 (=> (not res!838328) (not e!715127))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81801 0))(
  ( (array!81802 (arr!39453 (Array (_ BitVec 32) (_ BitVec 64))) (size!39990 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81801)

(declare-datatypes ((V!48145 0))(
  ( (V!48146 (val!16105 Int)) )
))
(declare-datatypes ((ValueCell!15279 0))(
  ( (ValueCellFull!15279 (v!18807 V!48145)) (EmptyCell!15279) )
))
(declare-datatypes ((array!81803 0))(
  ( (array!81804 (arr!39454 (Array (_ BitVec 32) ValueCell!15279)) (size!39991 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81803)

(assert (=> b!1257540 (= res!838328 (and (= (size!39991 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39990 _keys!1118) (size!39991 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257541 () Bool)

(declare-fun e!715130 () Bool)

(declare-fun tp_is_empty!32085 () Bool)

(assert (=> b!1257541 (= e!715130 tp_is_empty!32085)))

(declare-fun b!1257542 () Bool)

(declare-fun res!838329 () Bool)

(assert (=> b!1257542 (=> (not res!838329) (not e!715127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81801 (_ BitVec 32)) Bool)

(assert (=> b!1257542 (= res!838329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257543 () Bool)

(declare-fun res!838327 () Bool)

(assert (=> b!1257543 (=> (not res!838327) (not e!715127))))

(declare-datatypes ((List!28197 0))(
  ( (Nil!28194) (Cons!28193 (h!29402 (_ BitVec 64)) (t!41695 List!28197)) )
))
(declare-fun arrayNoDuplicates!0 (array!81801 (_ BitVec 32) List!28197) Bool)

(assert (=> b!1257543 (= res!838327 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28194))))

(declare-fun b!1257544 () Bool)

(assert (=> b!1257544 (= e!715127 (not true))))

(declare-datatypes ((tuple2!20966 0))(
  ( (tuple2!20967 (_1!10493 (_ BitVec 64)) (_2!10493 V!48145)) )
))
(declare-datatypes ((List!28198 0))(
  ( (Nil!28195) (Cons!28194 (h!29403 tuple2!20966) (t!41696 List!28198)) )
))
(declare-datatypes ((ListLongMap!18851 0))(
  ( (ListLongMap!18852 (toList!9441 List!28198)) )
))
(declare-fun lt!568765 () ListLongMap!18851)

(declare-fun lt!568764 () ListLongMap!18851)

(assert (=> b!1257544 (= lt!568765 lt!568764)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48145)

(declare-datatypes ((Unit!41856 0))(
  ( (Unit!41857) )
))
(declare-fun lt!568766 () Unit!41856)

(declare-fun minValueBefore!43 () V!48145)

(declare-fun zeroValue!871 () V!48145)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1111 (array!81801 array!81803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48145 V!48145 V!48145 V!48145 (_ BitVec 32) Int) Unit!41856)

(assert (=> b!1257544 (= lt!568766 (lemmaNoChangeToArrayThenSameMapNoExtras!1111 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5793 (array!81801 array!81803 (_ BitVec 32) (_ BitVec 32) V!48145 V!48145 (_ BitVec 32) Int) ListLongMap!18851)

(assert (=> b!1257544 (= lt!568764 (getCurrentListMapNoExtraKeys!5793 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257544 (= lt!568765 (getCurrentListMapNoExtraKeys!5793 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257539 () Bool)

(declare-fun e!715128 () Bool)

(assert (=> b!1257539 (= e!715128 tp_is_empty!32085)))

(declare-fun res!838330 () Bool)

(assert (=> start!105604 (=> (not res!838330) (not e!715127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105604 (= res!838330 (validMask!0 mask!1466))))

(assert (=> start!105604 e!715127))

(assert (=> start!105604 true))

(assert (=> start!105604 tp!95069))

(assert (=> start!105604 tp_is_empty!32085))

(declare-fun array_inv!30001 (array!81801) Bool)

(assert (=> start!105604 (array_inv!30001 _keys!1118)))

(declare-fun e!715129 () Bool)

(declare-fun array_inv!30002 (array!81803) Bool)

(assert (=> start!105604 (and (array_inv!30002 _values!914) e!715129)))

(declare-fun mapNonEmpty!49918 () Bool)

(declare-fun tp!95070 () Bool)

(assert (=> mapNonEmpty!49918 (= mapRes!49918 (and tp!95070 e!715130))))

(declare-fun mapValue!49918 () ValueCell!15279)

(declare-fun mapRest!49918 () (Array (_ BitVec 32) ValueCell!15279))

(declare-fun mapKey!49918 () (_ BitVec 32))

(assert (=> mapNonEmpty!49918 (= (arr!39454 _values!914) (store mapRest!49918 mapKey!49918 mapValue!49918))))

(declare-fun b!1257545 () Bool)

(assert (=> b!1257545 (= e!715129 (and e!715128 mapRes!49918))))

(declare-fun condMapEmpty!49918 () Bool)

(declare-fun mapDefault!49918 () ValueCell!15279)

(assert (=> b!1257545 (= condMapEmpty!49918 (= (arr!39454 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15279)) mapDefault!49918)))))

(assert (= (and start!105604 res!838330) b!1257540))

(assert (= (and b!1257540 res!838328) b!1257542))

(assert (= (and b!1257542 res!838329) b!1257543))

(assert (= (and b!1257543 res!838327) b!1257544))

(assert (= (and b!1257545 condMapEmpty!49918) mapIsEmpty!49918))

(assert (= (and b!1257545 (not condMapEmpty!49918)) mapNonEmpty!49918))

(get-info :version)

(assert (= (and mapNonEmpty!49918 ((_ is ValueCellFull!15279) mapValue!49918)) b!1257541))

(assert (= (and b!1257545 ((_ is ValueCellFull!15279) mapDefault!49918)) b!1257539))

(assert (= start!105604 b!1257545))

(declare-fun m!1158143 () Bool)

(assert (=> b!1257544 m!1158143))

(declare-fun m!1158145 () Bool)

(assert (=> b!1257544 m!1158145))

(declare-fun m!1158147 () Bool)

(assert (=> b!1257544 m!1158147))

(declare-fun m!1158149 () Bool)

(assert (=> b!1257543 m!1158149))

(declare-fun m!1158151 () Bool)

(assert (=> mapNonEmpty!49918 m!1158151))

(declare-fun m!1158153 () Bool)

(assert (=> start!105604 m!1158153))

(declare-fun m!1158155 () Bool)

(assert (=> start!105604 m!1158155))

(declare-fun m!1158157 () Bool)

(assert (=> start!105604 m!1158157))

(declare-fun m!1158159 () Bool)

(assert (=> b!1257542 m!1158159))

(check-sat (not b!1257544) (not b!1257542) b_and!45059 (not b!1257543) (not b_next!27183) (not mapNonEmpty!49918) (not start!105604) tp_is_empty!32085)
(check-sat b_and!45059 (not b_next!27183))
