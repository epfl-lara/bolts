; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105742 () Bool)

(assert start!105742)

(declare-fun b_free!27291 () Bool)

(declare-fun b_next!27291 () Bool)

(assert (=> start!105742 (= b_free!27291 (not b_next!27291))))

(declare-fun tp!95399 () Bool)

(declare-fun b_and!45185 () Bool)

(assert (=> start!105742 (= tp!95399 b_and!45185)))

(declare-fun b!1259051 () Bool)

(declare-fun res!839209 () Bool)

(declare-fun e!716234 () Bool)

(assert (=> b!1259051 (=> (not res!839209) (not e!716234))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81999 0))(
  ( (array!82000 (arr!39550 (Array (_ BitVec 32) (_ BitVec 64))) (size!40087 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81999)

(declare-datatypes ((V!48289 0))(
  ( (V!48290 (val!16159 Int)) )
))
(declare-datatypes ((ValueCell!15333 0))(
  ( (ValueCellFull!15333 (v!18861 V!48289)) (EmptyCell!15333) )
))
(declare-datatypes ((array!82001 0))(
  ( (array!82002 (arr!39551 (Array (_ BitVec 32) ValueCell!15333)) (size!40088 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82001)

(assert (=> b!1259051 (= res!839209 (and (= (size!40088 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40087 _keys!1118) (size!40088 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!839210 () Bool)

(assert (=> start!105742 (=> (not res!839210) (not e!716234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105742 (= res!839210 (validMask!0 mask!1466))))

(assert (=> start!105742 e!716234))

(assert (=> start!105742 true))

(assert (=> start!105742 tp!95399))

(declare-fun tp_is_empty!32193 () Bool)

(assert (=> start!105742 tp_is_empty!32193))

(declare-fun array_inv!30067 (array!81999) Bool)

(assert (=> start!105742 (array_inv!30067 _keys!1118)))

(declare-fun e!716237 () Bool)

(declare-fun array_inv!30068 (array!82001) Bool)

(assert (=> start!105742 (and (array_inv!30068 _values!914) e!716237)))

(declare-fun b!1259052 () Bool)

(declare-fun e!716232 () Bool)

(declare-fun mapRes!50086 () Bool)

(assert (=> b!1259052 (= e!716237 (and e!716232 mapRes!50086))))

(declare-fun condMapEmpty!50086 () Bool)

(declare-fun mapDefault!50086 () ValueCell!15333)

(assert (=> b!1259052 (= condMapEmpty!50086 (= (arr!39551 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15333)) mapDefault!50086)))))

(declare-fun b!1259053 () Bool)

(declare-fun e!716231 () Bool)

(assert (=> b!1259053 (= e!716231 tp_is_empty!32193)))

(declare-fun b!1259054 () Bool)

(declare-fun e!716236 () Bool)

(assert (=> b!1259054 (= e!716234 (not e!716236))))

(declare-fun res!839212 () Bool)

(assert (=> b!1259054 (=> res!839212 e!716236)))

(assert (=> b!1259054 (= res!839212 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21042 0))(
  ( (tuple2!21043 (_1!10531 (_ BitVec 64)) (_2!10531 V!48289)) )
))
(declare-datatypes ((List!28271 0))(
  ( (Nil!28268) (Cons!28267 (h!29476 tuple2!21042) (t!41773 List!28271)) )
))
(declare-datatypes ((ListLongMap!18927 0))(
  ( (ListLongMap!18928 (toList!9479 List!28271)) )
))
(declare-fun lt!569687 () ListLongMap!18927)

(declare-fun lt!569692 () ListLongMap!18927)

(assert (=> b!1259054 (= lt!569687 lt!569692)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48289)

(declare-fun zeroValue!871 () V!48289)

(declare-fun minValueBefore!43 () V!48289)

(declare-datatypes ((Unit!41927 0))(
  ( (Unit!41928) )
))
(declare-fun lt!569688 () Unit!41927)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1145 (array!81999 array!82001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48289 V!48289 V!48289 V!48289 (_ BitVec 32) Int) Unit!41927)

(assert (=> b!1259054 (= lt!569688 (lemmaNoChangeToArrayThenSameMapNoExtras!1145 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5827 (array!81999 array!82001 (_ BitVec 32) (_ BitVec 32) V!48289 V!48289 (_ BitVec 32) Int) ListLongMap!18927)

(assert (=> b!1259054 (= lt!569692 (getCurrentListMapNoExtraKeys!5827 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259054 (= lt!569687 (getCurrentListMapNoExtraKeys!5827 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259055 () Bool)

(declare-fun res!839211 () Bool)

(assert (=> b!1259055 (=> (not res!839211) (not e!716234))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81999 (_ BitVec 32)) Bool)

(assert (=> b!1259055 (= res!839211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259056 () Bool)

(assert (=> b!1259056 (= e!716232 tp_is_empty!32193)))

(declare-fun mapNonEmpty!50086 () Bool)

(declare-fun tp!95400 () Bool)

(assert (=> mapNonEmpty!50086 (= mapRes!50086 (and tp!95400 e!716231))))

(declare-fun mapKey!50086 () (_ BitVec 32))

(declare-fun mapValue!50086 () ValueCell!15333)

(declare-fun mapRest!50086 () (Array (_ BitVec 32) ValueCell!15333))

(assert (=> mapNonEmpty!50086 (= (arr!39551 _values!914) (store mapRest!50086 mapKey!50086 mapValue!50086))))

(declare-fun b!1259057 () Bool)

(declare-fun res!839214 () Bool)

(assert (=> b!1259057 (=> (not res!839214) (not e!716234))))

(declare-datatypes ((List!28272 0))(
  ( (Nil!28269) (Cons!28268 (h!29477 (_ BitVec 64)) (t!41774 List!28272)) )
))
(declare-fun arrayNoDuplicates!0 (array!81999 (_ BitVec 32) List!28272) Bool)

(assert (=> b!1259057 (= res!839214 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28269))))

(declare-fun lt!569689 () tuple2!21042)

(declare-fun lt!569685 () ListLongMap!18927)

(declare-fun e!716233 () Bool)

(declare-fun b!1259058 () Bool)

(declare-fun +!4178 (ListLongMap!18927 tuple2!21042) ListLongMap!18927)

(assert (=> b!1259058 (= e!716233 (= lt!569685 (+!4178 lt!569692 lt!569689)))))

(declare-fun mapIsEmpty!50086 () Bool)

(assert (=> mapIsEmpty!50086 mapRes!50086))

(declare-fun b!1259059 () Bool)

(assert (=> b!1259059 (= e!716236 true)))

(declare-fun lt!569686 () ListLongMap!18927)

(declare-fun lt!569683 () ListLongMap!18927)

(declare-fun -!2113 (ListLongMap!18927 (_ BitVec 64)) ListLongMap!18927)

(assert (=> b!1259059 (= lt!569686 (-!2113 lt!569683 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569691 () ListLongMap!18927)

(declare-fun lt!569684 () ListLongMap!18927)

(assert (=> b!1259059 (= (-!2113 lt!569691 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569684)))

(declare-fun lt!569690 () Unit!41927)

(declare-fun addThenRemoveForNewKeyIsSame!338 (ListLongMap!18927 (_ BitVec 64) V!48289) Unit!41927)

(assert (=> b!1259059 (= lt!569690 (addThenRemoveForNewKeyIsSame!338 lt!569684 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259059 e!716233))

(declare-fun res!839213 () Bool)

(assert (=> b!1259059 (=> (not res!839213) (not e!716233))))

(assert (=> b!1259059 (= res!839213 (= lt!569683 lt!569691))))

(assert (=> b!1259059 (= lt!569691 (+!4178 lt!569684 (tuple2!21043 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1259059 (= lt!569684 (+!4178 lt!569687 lt!569689))))

(assert (=> b!1259059 (= lt!569689 (tuple2!21043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4617 (array!81999 array!82001 (_ BitVec 32) (_ BitVec 32) V!48289 V!48289 (_ BitVec 32) Int) ListLongMap!18927)

(assert (=> b!1259059 (= lt!569685 (getCurrentListMap!4617 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259059 (= lt!569683 (getCurrentListMap!4617 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105742 res!839210) b!1259051))

(assert (= (and b!1259051 res!839209) b!1259055))

(assert (= (and b!1259055 res!839211) b!1259057))

(assert (= (and b!1259057 res!839214) b!1259054))

(assert (= (and b!1259054 (not res!839212)) b!1259059))

(assert (= (and b!1259059 res!839213) b!1259058))

(assert (= (and b!1259052 condMapEmpty!50086) mapIsEmpty!50086))

(assert (= (and b!1259052 (not condMapEmpty!50086)) mapNonEmpty!50086))

(get-info :version)

(assert (= (and mapNonEmpty!50086 ((_ is ValueCellFull!15333) mapValue!50086)) b!1259053))

(assert (= (and b!1259052 ((_ is ValueCellFull!15333) mapDefault!50086)) b!1259056))

(assert (= start!105742 b!1259052))

(declare-fun m!1159495 () Bool)

(assert (=> b!1259059 m!1159495))

(declare-fun m!1159497 () Bool)

(assert (=> b!1259059 m!1159497))

(declare-fun m!1159499 () Bool)

(assert (=> b!1259059 m!1159499))

(declare-fun m!1159501 () Bool)

(assert (=> b!1259059 m!1159501))

(declare-fun m!1159503 () Bool)

(assert (=> b!1259059 m!1159503))

(declare-fun m!1159505 () Bool)

(assert (=> b!1259059 m!1159505))

(declare-fun m!1159507 () Bool)

(assert (=> b!1259059 m!1159507))

(declare-fun m!1159509 () Bool)

(assert (=> b!1259058 m!1159509))

(declare-fun m!1159511 () Bool)

(assert (=> b!1259054 m!1159511))

(declare-fun m!1159513 () Bool)

(assert (=> b!1259054 m!1159513))

(declare-fun m!1159515 () Bool)

(assert (=> b!1259054 m!1159515))

(declare-fun m!1159517 () Bool)

(assert (=> mapNonEmpty!50086 m!1159517))

(declare-fun m!1159519 () Bool)

(assert (=> b!1259057 m!1159519))

(declare-fun m!1159521 () Bool)

(assert (=> start!105742 m!1159521))

(declare-fun m!1159523 () Bool)

(assert (=> start!105742 m!1159523))

(declare-fun m!1159525 () Bool)

(assert (=> start!105742 m!1159525))

(declare-fun m!1159527 () Bool)

(assert (=> b!1259055 m!1159527))

(check-sat (not b!1259059) (not start!105742) (not b_next!27291) tp_is_empty!32193 (not b!1259057) (not b!1259055) (not b!1259054) b_and!45185 (not b!1259058) (not mapNonEmpty!50086))
(check-sat b_and!45185 (not b_next!27291))
