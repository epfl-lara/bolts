; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105360 () Bool)

(assert start!105360)

(declare-fun b_free!26997 () Bool)

(declare-fun b_next!26997 () Bool)

(assert (=> start!105360 (= b_free!26997 (not b_next!26997))))

(declare-fun tp!94503 () Bool)

(declare-fun b_and!44845 () Bool)

(assert (=> start!105360 (= tp!94503 b_and!44845)))

(declare-fun mapNonEmpty!49630 () Bool)

(declare-fun mapRes!49630 () Bool)

(declare-fun tp!94502 () Bool)

(declare-fun e!713145 () Bool)

(assert (=> mapNonEmpty!49630 (= mapRes!49630 (and tp!94502 e!713145))))

(declare-datatypes ((V!47897 0))(
  ( (V!47898 (val!16012 Int)) )
))
(declare-datatypes ((ValueCell!15186 0))(
  ( (ValueCellFull!15186 (v!18712 V!47897)) (EmptyCell!15186) )
))
(declare-fun mapRest!49630 () (Array (_ BitVec 32) ValueCell!15186))

(declare-fun mapKey!49630 () (_ BitVec 32))

(declare-fun mapValue!49630 () ValueCell!15186)

(declare-datatypes ((array!81433 0))(
  ( (array!81434 (arr!39272 (Array (_ BitVec 32) ValueCell!15186)) (size!39809 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81433)

(assert (=> mapNonEmpty!49630 (= (arr!39272 _values!914) (store mapRest!49630 mapKey!49630 mapValue!49630))))

(declare-fun b!1254854 () Bool)

(declare-fun e!713148 () Bool)

(declare-fun e!713147 () Bool)

(assert (=> b!1254854 (= e!713148 (and e!713147 mapRes!49630))))

(declare-fun condMapEmpty!49630 () Bool)

(declare-fun mapDefault!49630 () ValueCell!15186)

(assert (=> b!1254854 (= condMapEmpty!49630 (= (arr!39272 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15186)) mapDefault!49630)))))

(declare-fun mapIsEmpty!49630 () Bool)

(assert (=> mapIsEmpty!49630 mapRes!49630))

(declare-fun b!1254856 () Bool)

(declare-fun res!836725 () Bool)

(declare-fun e!713144 () Bool)

(assert (=> b!1254856 (=> (not res!836725) (not e!713144))))

(declare-datatypes ((array!81435 0))(
  ( (array!81436 (arr!39273 (Array (_ BitVec 32) (_ BitVec 64))) (size!39810 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81435)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81435 (_ BitVec 32)) Bool)

(assert (=> b!1254856 (= res!836725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254857 () Bool)

(declare-fun res!836727 () Bool)

(assert (=> b!1254857 (=> (not res!836727) (not e!713144))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1254857 (= res!836727 (and (= (size!39809 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39810 _keys!1118) (size!39809 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254858 () Bool)

(declare-fun tp_is_empty!31899 () Bool)

(assert (=> b!1254858 (= e!713147 tp_is_empty!31899)))

(declare-fun b!1254859 () Bool)

(assert (=> b!1254859 (= e!713145 tp_is_empty!31899)))

(declare-fun b!1254860 () Bool)

(assert (=> b!1254860 (= e!713144 (not true))))

(declare-datatypes ((tuple2!20818 0))(
  ( (tuple2!20819 (_1!10419 (_ BitVec 64)) (_2!10419 V!47897)) )
))
(declare-datatypes ((List!28058 0))(
  ( (Nil!28055) (Cons!28054 (h!29263 tuple2!20818) (t!41550 List!28058)) )
))
(declare-datatypes ((ListLongMap!18703 0))(
  ( (ListLongMap!18704 (toList!9367 List!28058)) )
))
(declare-fun lt!567307 () ListLongMap!18703)

(declare-fun lt!567308 () ListLongMap!18703)

(assert (=> b!1254860 (= lt!567307 lt!567308)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47897)

(declare-fun zeroValue!871 () V!47897)

(declare-datatypes ((Unit!41708 0))(
  ( (Unit!41709) )
))
(declare-fun lt!567306 () Unit!41708)

(declare-fun minValueBefore!43 () V!47897)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1046 (array!81435 array!81433 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47897 V!47897 V!47897 V!47897 (_ BitVec 32) Int) Unit!41708)

(assert (=> b!1254860 (= lt!567306 (lemmaNoChangeToArrayThenSameMapNoExtras!1046 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5728 (array!81435 array!81433 (_ BitVec 32) (_ BitVec 32) V!47897 V!47897 (_ BitVec 32) Int) ListLongMap!18703)

(assert (=> b!1254860 (= lt!567308 (getCurrentListMapNoExtraKeys!5728 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254860 (= lt!567307 (getCurrentListMapNoExtraKeys!5728 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254855 () Bool)

(declare-fun res!836726 () Bool)

(assert (=> b!1254855 (=> (not res!836726) (not e!713144))))

(declare-datatypes ((List!28059 0))(
  ( (Nil!28056) (Cons!28055 (h!29264 (_ BitVec 64)) (t!41551 List!28059)) )
))
(declare-fun arrayNoDuplicates!0 (array!81435 (_ BitVec 32) List!28059) Bool)

(assert (=> b!1254855 (= res!836726 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28056))))

(declare-fun res!836728 () Bool)

(assert (=> start!105360 (=> (not res!836728) (not e!713144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105360 (= res!836728 (validMask!0 mask!1466))))

(assert (=> start!105360 e!713144))

(assert (=> start!105360 true))

(assert (=> start!105360 tp!94503))

(assert (=> start!105360 tp_is_empty!31899))

(declare-fun array_inv!29869 (array!81435) Bool)

(assert (=> start!105360 (array_inv!29869 _keys!1118)))

(declare-fun array_inv!29870 (array!81433) Bool)

(assert (=> start!105360 (and (array_inv!29870 _values!914) e!713148)))

(assert (= (and start!105360 res!836728) b!1254857))

(assert (= (and b!1254857 res!836727) b!1254856))

(assert (= (and b!1254856 res!836725) b!1254855))

(assert (= (and b!1254855 res!836726) b!1254860))

(assert (= (and b!1254854 condMapEmpty!49630) mapIsEmpty!49630))

(assert (= (and b!1254854 (not condMapEmpty!49630)) mapNonEmpty!49630))

(get-info :version)

(assert (= (and mapNonEmpty!49630 ((_ is ValueCellFull!15186) mapValue!49630)) b!1254859))

(assert (= (and b!1254854 ((_ is ValueCellFull!15186) mapDefault!49630)) b!1254858))

(assert (= start!105360 b!1254854))

(declare-fun m!1155707 () Bool)

(assert (=> b!1254855 m!1155707))

(declare-fun m!1155709 () Bool)

(assert (=> mapNonEmpty!49630 m!1155709))

(declare-fun m!1155711 () Bool)

(assert (=> b!1254856 m!1155711))

(declare-fun m!1155713 () Bool)

(assert (=> b!1254860 m!1155713))

(declare-fun m!1155715 () Bool)

(assert (=> b!1254860 m!1155715))

(declare-fun m!1155717 () Bool)

(assert (=> b!1254860 m!1155717))

(declare-fun m!1155719 () Bool)

(assert (=> start!105360 m!1155719))

(declare-fun m!1155721 () Bool)

(assert (=> start!105360 m!1155721))

(declare-fun m!1155723 () Bool)

(assert (=> start!105360 m!1155723))

(check-sat (not b_next!26997) (not mapNonEmpty!49630) (not start!105360) tp_is_empty!31899 b_and!44845 (not b!1254860) (not b!1254855) (not b!1254856))
(check-sat b_and!44845 (not b_next!26997))
