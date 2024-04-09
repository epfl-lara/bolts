; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106230 () Bool)

(assert start!106230)

(declare-fun b_free!27531 () Bool)

(declare-fun b_next!27531 () Bool)

(assert (=> start!106230 (= b_free!27531 (not b_next!27531))))

(declare-fun tp!96158 () Bool)

(declare-fun b_and!45573 () Bool)

(assert (=> start!106230 (= tp!96158 b_and!45573)))

(declare-datatypes ((V!48609 0))(
  ( (V!48610 (val!16279 Int)) )
))
(declare-datatypes ((tuple2!21226 0))(
  ( (tuple2!21227 (_1!10623 (_ BitVec 64)) (_2!10623 V!48609)) )
))
(declare-datatypes ((List!28443 0))(
  ( (Nil!28440) (Cons!28439 (h!29648 tuple2!21226) (t!41971 List!28443)) )
))
(declare-datatypes ((ListLongMap!19111 0))(
  ( (ListLongMap!19112 (toList!9571 List!28443)) )
))
(declare-fun lt!573618 () ListLongMap!19111)

(declare-fun lt!573623 () tuple2!21226)

(declare-fun lt!573621 () ListLongMap!19111)

(declare-fun b!1264248 () Bool)

(declare-fun e!719899 () Bool)

(declare-fun +!4235 (ListLongMap!19111 tuple2!21226) ListLongMap!19111)

(assert (=> b!1264248 (= e!719899 (= lt!573621 (+!4235 lt!573618 lt!573623)))))

(declare-fun b!1264249 () Bool)

(declare-fun e!719904 () Bool)

(declare-fun e!719901 () Bool)

(declare-fun mapRes!50485 () Bool)

(assert (=> b!1264249 (= e!719904 (and e!719901 mapRes!50485))))

(declare-fun condMapEmpty!50485 () Bool)

(declare-datatypes ((ValueCell!15453 0))(
  ( (ValueCellFull!15453 (v!18993 V!48609)) (EmptyCell!15453) )
))
(declare-datatypes ((array!82479 0))(
  ( (array!82480 (arr!39777 (Array (_ BitVec 32) ValueCell!15453)) (size!40314 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82479)

(declare-fun mapDefault!50485 () ValueCell!15453)

(assert (=> b!1264249 (= condMapEmpty!50485 (= (arr!39777 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15453)) mapDefault!50485)))))

(declare-fun mapNonEmpty!50485 () Bool)

(declare-fun tp!96159 () Bool)

(declare-fun e!719905 () Bool)

(assert (=> mapNonEmpty!50485 (= mapRes!50485 (and tp!96159 e!719905))))

(declare-fun mapValue!50485 () ValueCell!15453)

(declare-fun mapKey!50485 () (_ BitVec 32))

(declare-fun mapRest!50485 () (Array (_ BitVec 32) ValueCell!15453))

(assert (=> mapNonEmpty!50485 (= (arr!39777 _values!914) (store mapRest!50485 mapKey!50485 mapValue!50485))))

(declare-fun mapIsEmpty!50485 () Bool)

(assert (=> mapIsEmpty!50485 mapRes!50485))

(declare-fun b!1264250 () Bool)

(declare-fun res!842037 () Bool)

(declare-fun e!719900 () Bool)

(assert (=> b!1264250 (=> (not res!842037) (not e!719900))))

(declare-datatypes ((array!82481 0))(
  ( (array!82482 (arr!39778 (Array (_ BitVec 32) (_ BitVec 64))) (size!40315 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82481)

(declare-datatypes ((List!28444 0))(
  ( (Nil!28441) (Cons!28440 (h!29649 (_ BitVec 64)) (t!41972 List!28444)) )
))
(declare-fun arrayNoDuplicates!0 (array!82481 (_ BitVec 32) List!28444) Bool)

(assert (=> b!1264250 (= res!842037 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28441))))

(declare-fun b!1264251 () Bool)

(declare-fun e!719903 () Bool)

(assert (=> b!1264251 (= e!719900 (not e!719903))))

(declare-fun res!842039 () Bool)

(assert (=> b!1264251 (=> res!842039 e!719903)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1264251 (= res!842039 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!573622 () ListLongMap!19111)

(assert (=> b!1264251 (= lt!573622 lt!573618)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48609)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48609)

(declare-fun minValueBefore!43 () V!48609)

(declare-datatypes ((Unit!42089 0))(
  ( (Unit!42090) )
))
(declare-fun lt!573616 () Unit!42089)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1206 (array!82481 array!82479 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48609 V!48609 V!48609 V!48609 (_ BitVec 32) Int) Unit!42089)

(assert (=> b!1264251 (= lt!573616 (lemmaNoChangeToArrayThenSameMapNoExtras!1206 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5910 (array!82481 array!82479 (_ BitVec 32) (_ BitVec 32) V!48609 V!48609 (_ BitVec 32) Int) ListLongMap!19111)

(assert (=> b!1264251 (= lt!573618 (getCurrentListMapNoExtraKeys!5910 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1264251 (= lt!573622 (getCurrentListMapNoExtraKeys!5910 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!842041 () Bool)

(assert (=> start!106230 (=> (not res!842041) (not e!719900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106230 (= res!842041 (validMask!0 mask!1466))))

(assert (=> start!106230 e!719900))

(assert (=> start!106230 true))

(assert (=> start!106230 tp!96158))

(declare-fun tp_is_empty!32433 () Bool)

(assert (=> start!106230 tp_is_empty!32433))

(declare-fun array_inv!30231 (array!82481) Bool)

(assert (=> start!106230 (array_inv!30231 _keys!1118)))

(declare-fun array_inv!30232 (array!82479) Bool)

(assert (=> start!106230 (and (array_inv!30232 _values!914) e!719904)))

(declare-fun b!1264252 () Bool)

(declare-fun res!842036 () Bool)

(assert (=> b!1264252 (=> (not res!842036) (not e!719900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82481 (_ BitVec 32)) Bool)

(assert (=> b!1264252 (= res!842036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1264253 () Bool)

(assert (=> b!1264253 (= e!719905 tp_is_empty!32433)))

(declare-fun b!1264254 () Bool)

(declare-fun lt!573620 () ListLongMap!19111)

(declare-fun -!2150 (ListLongMap!19111 (_ BitVec 64)) ListLongMap!19111)

(assert (=> b!1264254 (= e!719903 (= (-!2150 lt!573620 #b1000000000000000000000000000000000000000000000000000000000000000) lt!573621))))

(declare-fun lt!573619 () ListLongMap!19111)

(declare-fun lt!573615 () ListLongMap!19111)

(assert (=> b!1264254 (= (-!2150 lt!573619 #b1000000000000000000000000000000000000000000000000000000000000000) lt!573615)))

(declare-fun lt!573617 () Unit!42089)

(declare-fun addThenRemoveForNewKeyIsSame!371 (ListLongMap!19111 (_ BitVec 64) V!48609) Unit!42089)

(assert (=> b!1264254 (= lt!573617 (addThenRemoveForNewKeyIsSame!371 lt!573615 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1264254 e!719899))

(declare-fun res!842040 () Bool)

(assert (=> b!1264254 (=> (not res!842040) (not e!719899))))

(assert (=> b!1264254 (= res!842040 (= lt!573620 lt!573619))))

(assert (=> b!1264254 (= lt!573619 (+!4235 lt!573615 (tuple2!21227 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1264254 (= lt!573615 (+!4235 lt!573622 lt!573623))))

(assert (=> b!1264254 (= lt!573623 (tuple2!21227 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4672 (array!82481 array!82479 (_ BitVec 32) (_ BitVec 32) V!48609 V!48609 (_ BitVec 32) Int) ListLongMap!19111)

(assert (=> b!1264254 (= lt!573621 (getCurrentListMap!4672 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1264254 (= lt!573620 (getCurrentListMap!4672 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1264255 () Bool)

(declare-fun res!842038 () Bool)

(assert (=> b!1264255 (=> (not res!842038) (not e!719900))))

(assert (=> b!1264255 (= res!842038 (and (= (size!40314 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40315 _keys!1118) (size!40314 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1264256 () Bool)

(assert (=> b!1264256 (= e!719901 tp_is_empty!32433)))

(assert (= (and start!106230 res!842041) b!1264255))

(assert (= (and b!1264255 res!842038) b!1264252))

(assert (= (and b!1264252 res!842036) b!1264250))

(assert (= (and b!1264250 res!842037) b!1264251))

(assert (= (and b!1264251 (not res!842039)) b!1264254))

(assert (= (and b!1264254 res!842040) b!1264248))

(assert (= (and b!1264249 condMapEmpty!50485) mapIsEmpty!50485))

(assert (= (and b!1264249 (not condMapEmpty!50485)) mapNonEmpty!50485))

(get-info :version)

(assert (= (and mapNonEmpty!50485 ((_ is ValueCellFull!15453) mapValue!50485)) b!1264253))

(assert (= (and b!1264249 ((_ is ValueCellFull!15453) mapDefault!50485)) b!1264256))

(assert (= start!106230 b!1264249))

(declare-fun m!1164823 () Bool)

(assert (=> b!1264251 m!1164823))

(declare-fun m!1164825 () Bool)

(assert (=> b!1264251 m!1164825))

(declare-fun m!1164827 () Bool)

(assert (=> b!1264251 m!1164827))

(declare-fun m!1164829 () Bool)

(assert (=> start!106230 m!1164829))

(declare-fun m!1164831 () Bool)

(assert (=> start!106230 m!1164831))

(declare-fun m!1164833 () Bool)

(assert (=> start!106230 m!1164833))

(declare-fun m!1164835 () Bool)

(assert (=> b!1264254 m!1164835))

(declare-fun m!1164837 () Bool)

(assert (=> b!1264254 m!1164837))

(declare-fun m!1164839 () Bool)

(assert (=> b!1264254 m!1164839))

(declare-fun m!1164841 () Bool)

(assert (=> b!1264254 m!1164841))

(declare-fun m!1164843 () Bool)

(assert (=> b!1264254 m!1164843))

(declare-fun m!1164845 () Bool)

(assert (=> b!1264254 m!1164845))

(declare-fun m!1164847 () Bool)

(assert (=> b!1264254 m!1164847))

(declare-fun m!1164849 () Bool)

(assert (=> mapNonEmpty!50485 m!1164849))

(declare-fun m!1164851 () Bool)

(assert (=> b!1264250 m!1164851))

(declare-fun m!1164853 () Bool)

(assert (=> b!1264252 m!1164853))

(declare-fun m!1164855 () Bool)

(assert (=> b!1264248 m!1164855))

(check-sat (not b!1264250) (not b!1264251) tp_is_empty!32433 (not b!1264248) (not b!1264254) (not mapNonEmpty!50485) b_and!45573 (not start!106230) (not b_next!27531) (not b!1264252))
(check-sat b_and!45573 (not b_next!27531))
