; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105366 () Bool)

(assert start!105366)

(declare-fun b_free!27003 () Bool)

(declare-fun b_next!27003 () Bool)

(assert (=> start!105366 (= b_free!27003 (not b_next!27003))))

(declare-fun tp!94521 () Bool)

(declare-fun b_and!44851 () Bool)

(assert (=> start!105366 (= tp!94521 b_and!44851)))

(declare-fun b!1254917 () Bool)

(declare-fun e!713193 () Bool)

(declare-fun e!713191 () Bool)

(declare-fun mapRes!49639 () Bool)

(assert (=> b!1254917 (= e!713193 (and e!713191 mapRes!49639))))

(declare-fun condMapEmpty!49639 () Bool)

(declare-datatypes ((V!47905 0))(
  ( (V!47906 (val!16015 Int)) )
))
(declare-datatypes ((ValueCell!15189 0))(
  ( (ValueCellFull!15189 (v!18715 V!47905)) (EmptyCell!15189) )
))
(declare-datatypes ((array!81445 0))(
  ( (array!81446 (arr!39278 (Array (_ BitVec 32) ValueCell!15189)) (size!39815 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81445)

(declare-fun mapDefault!49639 () ValueCell!15189)

(assert (=> b!1254917 (= condMapEmpty!49639 (= (arr!39278 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15189)) mapDefault!49639)))))

(declare-fun b!1254918 () Bool)

(declare-fun e!713189 () Bool)

(declare-fun tp_is_empty!31905 () Bool)

(assert (=> b!1254918 (= e!713189 tp_is_empty!31905)))

(declare-fun mapIsEmpty!49639 () Bool)

(assert (=> mapIsEmpty!49639 mapRes!49639))

(declare-fun b!1254919 () Bool)

(declare-fun res!836764 () Bool)

(declare-fun e!713192 () Bool)

(assert (=> b!1254919 (=> (not res!836764) (not e!713192))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81447 0))(
  ( (array!81448 (arr!39279 (Array (_ BitVec 32) (_ BitVec 64))) (size!39816 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81447)

(assert (=> b!1254919 (= res!836764 (and (= (size!39815 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39816 _keys!1118) (size!39815 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254921 () Bool)

(assert (=> b!1254921 (= e!713192 (not true))))

(declare-datatypes ((tuple2!20822 0))(
  ( (tuple2!20823 (_1!10421 (_ BitVec 64)) (_2!10421 V!47905)) )
))
(declare-datatypes ((List!28062 0))(
  ( (Nil!28059) (Cons!28058 (h!29267 tuple2!20822) (t!41554 List!28062)) )
))
(declare-datatypes ((ListLongMap!18707 0))(
  ( (ListLongMap!18708 (toList!9369 List!28062)) )
))
(declare-fun lt!567333 () ListLongMap!18707)

(declare-fun lt!567335 () ListLongMap!18707)

(assert (=> b!1254921 (= lt!567333 lt!567335)))

(declare-datatypes ((Unit!41712 0))(
  ( (Unit!41713) )
))
(declare-fun lt!567334 () Unit!41712)

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47905)

(declare-fun zeroValue!871 () V!47905)

(declare-fun minValueBefore!43 () V!47905)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1048 (array!81447 array!81445 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47905 V!47905 V!47905 V!47905 (_ BitVec 32) Int) Unit!41712)

(assert (=> b!1254921 (= lt!567334 (lemmaNoChangeToArrayThenSameMapNoExtras!1048 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5730 (array!81447 array!81445 (_ BitVec 32) (_ BitVec 32) V!47905 V!47905 (_ BitVec 32) Int) ListLongMap!18707)

(assert (=> b!1254921 (= lt!567335 (getCurrentListMapNoExtraKeys!5730 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254921 (= lt!567333 (getCurrentListMapNoExtraKeys!5730 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49639 () Bool)

(declare-fun tp!94520 () Bool)

(assert (=> mapNonEmpty!49639 (= mapRes!49639 (and tp!94520 e!713189))))

(declare-fun mapRest!49639 () (Array (_ BitVec 32) ValueCell!15189))

(declare-fun mapValue!49639 () ValueCell!15189)

(declare-fun mapKey!49639 () (_ BitVec 32))

(assert (=> mapNonEmpty!49639 (= (arr!39278 _values!914) (store mapRest!49639 mapKey!49639 mapValue!49639))))

(declare-fun b!1254922 () Bool)

(declare-fun res!836762 () Bool)

(assert (=> b!1254922 (=> (not res!836762) (not e!713192))))

(declare-datatypes ((List!28063 0))(
  ( (Nil!28060) (Cons!28059 (h!29268 (_ BitVec 64)) (t!41555 List!28063)) )
))
(declare-fun arrayNoDuplicates!0 (array!81447 (_ BitVec 32) List!28063) Bool)

(assert (=> b!1254922 (= res!836762 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28060))))

(declare-fun b!1254923 () Bool)

(assert (=> b!1254923 (= e!713191 tp_is_empty!31905)))

(declare-fun res!836761 () Bool)

(assert (=> start!105366 (=> (not res!836761) (not e!713192))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105366 (= res!836761 (validMask!0 mask!1466))))

(assert (=> start!105366 e!713192))

(assert (=> start!105366 true))

(assert (=> start!105366 tp!94521))

(assert (=> start!105366 tp_is_empty!31905))

(declare-fun array_inv!29873 (array!81447) Bool)

(assert (=> start!105366 (array_inv!29873 _keys!1118)))

(declare-fun array_inv!29874 (array!81445) Bool)

(assert (=> start!105366 (and (array_inv!29874 _values!914) e!713193)))

(declare-fun b!1254920 () Bool)

(declare-fun res!836763 () Bool)

(assert (=> b!1254920 (=> (not res!836763) (not e!713192))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81447 (_ BitVec 32)) Bool)

(assert (=> b!1254920 (= res!836763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!105366 res!836761) b!1254919))

(assert (= (and b!1254919 res!836764) b!1254920))

(assert (= (and b!1254920 res!836763) b!1254922))

(assert (= (and b!1254922 res!836762) b!1254921))

(assert (= (and b!1254917 condMapEmpty!49639) mapIsEmpty!49639))

(assert (= (and b!1254917 (not condMapEmpty!49639)) mapNonEmpty!49639))

(get-info :version)

(assert (= (and mapNonEmpty!49639 ((_ is ValueCellFull!15189) mapValue!49639)) b!1254918))

(assert (= (and b!1254917 ((_ is ValueCellFull!15189) mapDefault!49639)) b!1254923))

(assert (= start!105366 b!1254917))

(declare-fun m!1155761 () Bool)

(assert (=> b!1254920 m!1155761))

(declare-fun m!1155763 () Bool)

(assert (=> b!1254922 m!1155763))

(declare-fun m!1155765 () Bool)

(assert (=> b!1254921 m!1155765))

(declare-fun m!1155767 () Bool)

(assert (=> b!1254921 m!1155767))

(declare-fun m!1155769 () Bool)

(assert (=> b!1254921 m!1155769))

(declare-fun m!1155771 () Bool)

(assert (=> start!105366 m!1155771))

(declare-fun m!1155773 () Bool)

(assert (=> start!105366 m!1155773))

(declare-fun m!1155775 () Bool)

(assert (=> start!105366 m!1155775))

(declare-fun m!1155777 () Bool)

(assert (=> mapNonEmpty!49639 m!1155777))

(check-sat (not b!1254922) (not mapNonEmpty!49639) (not b!1254920) (not b_next!27003) (not start!105366) (not b!1254921) tp_is_empty!31905 b_and!44851)
(check-sat b_and!44851 (not b_next!27003))
