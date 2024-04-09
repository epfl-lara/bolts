; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105094 () Bool)

(assert start!105094)

(declare-fun b_free!26805 () Bool)

(declare-fun b_next!26805 () Bool)

(assert (=> start!105094 (= b_free!26805 (not b_next!26805))))

(declare-fun tp!93915 () Bool)

(declare-fun b_and!44611 () Bool)

(assert (=> start!105094 (= tp!93915 b_and!44611)))

(declare-fun res!835062 () Bool)

(declare-fun e!711056 () Bool)

(assert (=> start!105094 (=> (not res!835062) (not e!711056))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105094 (= res!835062 (validMask!0 mask!1466))))

(assert (=> start!105094 e!711056))

(assert (=> start!105094 true))

(assert (=> start!105094 tp!93915))

(declare-fun tp_is_empty!31707 () Bool)

(assert (=> start!105094 tp_is_empty!31707))

(declare-datatypes ((array!81057 0))(
  ( (array!81058 (arr!39088 (Array (_ BitVec 32) (_ BitVec 64))) (size!39625 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81057)

(declare-fun array_inv!29743 (array!81057) Bool)

(assert (=> start!105094 (array_inv!29743 _keys!1118)))

(declare-datatypes ((V!47641 0))(
  ( (V!47642 (val!15916 Int)) )
))
(declare-datatypes ((ValueCell!15090 0))(
  ( (ValueCellFull!15090 (v!18614 V!47641)) (EmptyCell!15090) )
))
(declare-datatypes ((array!81059 0))(
  ( (array!81060 (arr!39089 (Array (_ BitVec 32) ValueCell!15090)) (size!39626 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81059)

(declare-fun e!711060 () Bool)

(declare-fun array_inv!29744 (array!81059) Bool)

(assert (=> start!105094 (and (array_inv!29744 _values!914) e!711060)))

(declare-fun b!1251976 () Bool)

(declare-fun res!835061 () Bool)

(assert (=> b!1251976 (=> (not res!835061) (not e!711056))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81057 (_ BitVec 32)) Bool)

(assert (=> b!1251976 (= res!835061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49330 () Bool)

(declare-fun mapRes!49330 () Bool)

(assert (=> mapIsEmpty!49330 mapRes!49330))

(declare-fun b!1251977 () Bool)

(declare-fun e!711057 () Bool)

(assert (=> b!1251977 (= e!711057 tp_is_empty!31707)))

(declare-fun b!1251978 () Bool)

(declare-fun res!835060 () Bool)

(assert (=> b!1251978 (=> (not res!835060) (not e!711056))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1251978 (= res!835060 (and (= (size!39626 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39625 _keys!1118) (size!39626 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251979 () Bool)

(declare-fun e!711059 () Bool)

(assert (=> b!1251979 (= e!711059 tp_is_empty!31707)))

(declare-fun b!1251980 () Bool)

(assert (=> b!1251980 (= e!711060 (and e!711059 mapRes!49330))))

(declare-fun condMapEmpty!49330 () Bool)

(declare-fun mapDefault!49330 () ValueCell!15090)

(assert (=> b!1251980 (= condMapEmpty!49330 (= (arr!39089 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15090)) mapDefault!49330)))))

(declare-fun b!1251981 () Bool)

(declare-fun res!835059 () Bool)

(assert (=> b!1251981 (=> (not res!835059) (not e!711056))))

(declare-datatypes ((List!27920 0))(
  ( (Nil!27917) (Cons!27916 (h!29125 (_ BitVec 64)) (t!41404 List!27920)) )
))
(declare-fun arrayNoDuplicates!0 (array!81057 (_ BitVec 32) List!27920) Bool)

(assert (=> b!1251981 (= res!835059 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27917))))

(declare-fun mapNonEmpty!49330 () Bool)

(declare-fun tp!93914 () Bool)

(assert (=> mapNonEmpty!49330 (= mapRes!49330 (and tp!93914 e!711057))))

(declare-fun mapKey!49330 () (_ BitVec 32))

(declare-fun mapValue!49330 () ValueCell!15090)

(declare-fun mapRest!49330 () (Array (_ BitVec 32) ValueCell!15090))

(assert (=> mapNonEmpty!49330 (= (arr!39089 _values!914) (store mapRest!49330 mapKey!49330 mapValue!49330))))

(declare-fun b!1251982 () Bool)

(assert (=> b!1251982 (= e!711056 (not true))))

(declare-datatypes ((tuple2!20670 0))(
  ( (tuple2!20671 (_1!10345 (_ BitVec 64)) (_2!10345 V!47641)) )
))
(declare-datatypes ((List!27921 0))(
  ( (Nil!27918) (Cons!27917 (h!29126 tuple2!20670) (t!41405 List!27921)) )
))
(declare-datatypes ((ListLongMap!18555 0))(
  ( (ListLongMap!18556 (toList!9293 List!27921)) )
))
(declare-fun lt!565103 () ListLongMap!18555)

(declare-fun lt!565104 () ListLongMap!18555)

(assert (=> b!1251982 (= lt!565103 lt!565104)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47641)

(declare-fun zeroValue!871 () V!47641)

(declare-datatypes ((Unit!41563 0))(
  ( (Unit!41564) )
))
(declare-fun lt!565102 () Unit!41563)

(declare-fun minValueBefore!43 () V!47641)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!984 (array!81057 array!81059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47641 V!47641 V!47641 V!47641 (_ BitVec 32) Int) Unit!41563)

(assert (=> b!1251982 (= lt!565102 (lemmaNoChangeToArrayThenSameMapNoExtras!984 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5666 (array!81057 array!81059 (_ BitVec 32) (_ BitVec 32) V!47641 V!47641 (_ BitVec 32) Int) ListLongMap!18555)

(assert (=> b!1251982 (= lt!565104 (getCurrentListMapNoExtraKeys!5666 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251982 (= lt!565103 (getCurrentListMapNoExtraKeys!5666 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105094 res!835062) b!1251978))

(assert (= (and b!1251978 res!835060) b!1251976))

(assert (= (and b!1251976 res!835061) b!1251981))

(assert (= (and b!1251981 res!835059) b!1251982))

(assert (= (and b!1251980 condMapEmpty!49330) mapIsEmpty!49330))

(assert (= (and b!1251980 (not condMapEmpty!49330)) mapNonEmpty!49330))

(get-info :version)

(assert (= (and mapNonEmpty!49330 ((_ is ValueCellFull!15090) mapValue!49330)) b!1251977))

(assert (= (and b!1251980 ((_ is ValueCellFull!15090) mapDefault!49330)) b!1251979))

(assert (= start!105094 b!1251980))

(declare-fun m!1152707 () Bool)

(assert (=> mapNonEmpty!49330 m!1152707))

(declare-fun m!1152709 () Bool)

(assert (=> b!1251976 m!1152709))

(declare-fun m!1152711 () Bool)

(assert (=> b!1251981 m!1152711))

(declare-fun m!1152713 () Bool)

(assert (=> b!1251982 m!1152713))

(declare-fun m!1152715 () Bool)

(assert (=> b!1251982 m!1152715))

(declare-fun m!1152717 () Bool)

(assert (=> b!1251982 m!1152717))

(declare-fun m!1152719 () Bool)

(assert (=> start!105094 m!1152719))

(declare-fun m!1152721 () Bool)

(assert (=> start!105094 m!1152721))

(declare-fun m!1152723 () Bool)

(assert (=> start!105094 m!1152723))

(check-sat (not b!1251982) tp_is_empty!31707 (not b!1251976) (not b!1251981) (not start!105094) (not b_next!26805) (not mapNonEmpty!49330) b_and!44611)
(check-sat b_and!44611 (not b_next!26805))
