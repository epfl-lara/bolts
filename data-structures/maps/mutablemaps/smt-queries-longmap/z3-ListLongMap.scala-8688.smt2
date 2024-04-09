; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105586 () Bool)

(assert start!105586)

(declare-fun b_free!27165 () Bool)

(declare-fun b_next!27165 () Bool)

(assert (=> start!105586 (= b_free!27165 (not b_next!27165))))

(declare-fun tp!95015 () Bool)

(declare-fun b_and!45041 () Bool)

(assert (=> start!105586 (= tp!95015 b_and!45041)))

(declare-fun b!1257350 () Bool)

(declare-fun res!838220 () Bool)

(declare-fun e!714993 () Bool)

(assert (=> b!1257350 (=> (not res!838220) (not e!714993))))

(declare-datatypes ((array!81769 0))(
  ( (array!81770 (arr!39437 (Array (_ BitVec 32) (_ BitVec 64))) (size!39974 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81769)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81769 (_ BitVec 32)) Bool)

(assert (=> b!1257350 (= res!838220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257351 () Bool)

(declare-fun e!714992 () Bool)

(declare-fun tp_is_empty!32067 () Bool)

(assert (=> b!1257351 (= e!714992 tp_is_empty!32067)))

(declare-fun b!1257352 () Bool)

(declare-fun e!714996 () Bool)

(declare-fun e!714994 () Bool)

(declare-fun mapRes!49891 () Bool)

(assert (=> b!1257352 (= e!714996 (and e!714994 mapRes!49891))))

(declare-fun condMapEmpty!49891 () Bool)

(declare-datatypes ((V!48121 0))(
  ( (V!48122 (val!16096 Int)) )
))
(declare-datatypes ((ValueCell!15270 0))(
  ( (ValueCellFull!15270 (v!18798 V!48121)) (EmptyCell!15270) )
))
(declare-datatypes ((array!81771 0))(
  ( (array!81772 (arr!39438 (Array (_ BitVec 32) ValueCell!15270)) (size!39975 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81771)

(declare-fun mapDefault!49891 () ValueCell!15270)

(assert (=> b!1257352 (= condMapEmpty!49891 (= (arr!39438 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15270)) mapDefault!49891)))))

(declare-fun res!838221 () Bool)

(assert (=> start!105586 (=> (not res!838221) (not e!714993))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105586 (= res!838221 (validMask!0 mask!1466))))

(assert (=> start!105586 e!714993))

(assert (=> start!105586 true))

(assert (=> start!105586 tp!95015))

(assert (=> start!105586 tp_is_empty!32067))

(declare-fun array_inv!29987 (array!81769) Bool)

(assert (=> start!105586 (array_inv!29987 _keys!1118)))

(declare-fun array_inv!29988 (array!81771) Bool)

(assert (=> start!105586 (and (array_inv!29988 _values!914) e!714996)))

(declare-fun mapNonEmpty!49891 () Bool)

(declare-fun tp!95016 () Bool)

(assert (=> mapNonEmpty!49891 (= mapRes!49891 (and tp!95016 e!714992))))

(declare-fun mapRest!49891 () (Array (_ BitVec 32) ValueCell!15270))

(declare-fun mapKey!49891 () (_ BitVec 32))

(declare-fun mapValue!49891 () ValueCell!15270)

(assert (=> mapNonEmpty!49891 (= (arr!39438 _values!914) (store mapRest!49891 mapKey!49891 mapValue!49891))))

(declare-fun b!1257353 () Bool)

(assert (=> b!1257353 (= e!714993 (not true))))

(declare-datatypes ((tuple2!20956 0))(
  ( (tuple2!20957 (_1!10488 (_ BitVec 64)) (_2!10488 V!48121)) )
))
(declare-datatypes ((List!28187 0))(
  ( (Nil!28184) (Cons!28183 (h!29392 tuple2!20956) (t!41685 List!28187)) )
))
(declare-datatypes ((ListLongMap!18841 0))(
  ( (ListLongMap!18842 (toList!9436 List!28187)) )
))
(declare-fun lt!568683 () ListLongMap!18841)

(declare-fun lt!568685 () ListLongMap!18841)

(assert (=> b!1257353 (= lt!568683 lt!568685)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48121)

(declare-fun minValueBefore!43 () V!48121)

(declare-datatypes ((Unit!41846 0))(
  ( (Unit!41847) )
))
(declare-fun lt!568684 () Unit!41846)

(declare-fun minValueAfter!43 () V!48121)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1106 (array!81769 array!81771 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48121 V!48121 V!48121 V!48121 (_ BitVec 32) Int) Unit!41846)

(assert (=> b!1257353 (= lt!568684 (lemmaNoChangeToArrayThenSameMapNoExtras!1106 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5788 (array!81769 array!81771 (_ BitVec 32) (_ BitVec 32) V!48121 V!48121 (_ BitVec 32) Int) ListLongMap!18841)

(assert (=> b!1257353 (= lt!568685 (getCurrentListMapNoExtraKeys!5788 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257353 (= lt!568683 (getCurrentListMapNoExtraKeys!5788 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257354 () Bool)

(declare-fun res!838219 () Bool)

(assert (=> b!1257354 (=> (not res!838219) (not e!714993))))

(declare-datatypes ((List!28188 0))(
  ( (Nil!28185) (Cons!28184 (h!29393 (_ BitVec 64)) (t!41686 List!28188)) )
))
(declare-fun arrayNoDuplicates!0 (array!81769 (_ BitVec 32) List!28188) Bool)

(assert (=> b!1257354 (= res!838219 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28185))))

(declare-fun b!1257355 () Bool)

(assert (=> b!1257355 (= e!714994 tp_is_empty!32067)))

(declare-fun b!1257356 () Bool)

(declare-fun res!838222 () Bool)

(assert (=> b!1257356 (=> (not res!838222) (not e!714993))))

(assert (=> b!1257356 (= res!838222 (and (= (size!39975 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39974 _keys!1118) (size!39975 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49891 () Bool)

(assert (=> mapIsEmpty!49891 mapRes!49891))

(assert (= (and start!105586 res!838221) b!1257356))

(assert (= (and b!1257356 res!838222) b!1257350))

(assert (= (and b!1257350 res!838220) b!1257354))

(assert (= (and b!1257354 res!838219) b!1257353))

(assert (= (and b!1257352 condMapEmpty!49891) mapIsEmpty!49891))

(assert (= (and b!1257352 (not condMapEmpty!49891)) mapNonEmpty!49891))

(get-info :version)

(assert (= (and mapNonEmpty!49891 ((_ is ValueCellFull!15270) mapValue!49891)) b!1257351))

(assert (= (and b!1257352 ((_ is ValueCellFull!15270) mapDefault!49891)) b!1257355))

(assert (= start!105586 b!1257352))

(declare-fun m!1157981 () Bool)

(assert (=> b!1257354 m!1157981))

(declare-fun m!1157983 () Bool)

(assert (=> b!1257350 m!1157983))

(declare-fun m!1157985 () Bool)

(assert (=> start!105586 m!1157985))

(declare-fun m!1157987 () Bool)

(assert (=> start!105586 m!1157987))

(declare-fun m!1157989 () Bool)

(assert (=> start!105586 m!1157989))

(declare-fun m!1157991 () Bool)

(assert (=> b!1257353 m!1157991))

(declare-fun m!1157993 () Bool)

(assert (=> b!1257353 m!1157993))

(declare-fun m!1157995 () Bool)

(assert (=> b!1257353 m!1157995))

(declare-fun m!1157997 () Bool)

(assert (=> mapNonEmpty!49891 m!1157997))

(check-sat (not b_next!27165) (not mapNonEmpty!49891) (not b!1257354) (not b!1257350) b_and!45041 (not b!1257353) (not start!105586) tp_is_empty!32067)
(check-sat b_and!45041 (not b_next!27165))
