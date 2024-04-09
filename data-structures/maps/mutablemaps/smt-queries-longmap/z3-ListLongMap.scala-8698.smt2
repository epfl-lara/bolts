; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105660 () Bool)

(assert start!105660)

(declare-fun b_free!27225 () Bool)

(declare-fun b_next!27225 () Bool)

(assert (=> start!105660 (= b_free!27225 (not b_next!27225))))

(declare-fun tp!95198 () Bool)

(declare-fun b_and!45109 () Bool)

(assert (=> start!105660 (= tp!95198 b_and!45109)))

(declare-fun b!1258079 () Bool)

(declare-fun e!715516 () Bool)

(declare-fun e!715511 () Bool)

(assert (=> b!1258079 (= e!715516 (not e!715511))))

(declare-fun res!838627 () Bool)

(assert (=> b!1258079 (=> res!838627 e!715511)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1258079 (= res!838627 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48201 0))(
  ( (V!48202 (val!16126 Int)) )
))
(declare-datatypes ((tuple2!20992 0))(
  ( (tuple2!20993 (_1!10506 (_ BitVec 64)) (_2!10506 V!48201)) )
))
(declare-datatypes ((List!28224 0))(
  ( (Nil!28221) (Cons!28220 (h!29429 tuple2!20992) (t!41724 List!28224)) )
))
(declare-datatypes ((ListLongMap!18877 0))(
  ( (ListLongMap!18878 (toList!9454 List!28224)) )
))
(declare-fun lt!569009 () ListLongMap!18877)

(declare-fun lt!569007 () ListLongMap!18877)

(assert (=> b!1258079 (= lt!569009 lt!569007)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun minValueAfter!43 () V!48201)

(declare-datatypes ((Unit!41882 0))(
  ( (Unit!41883) )
))
(declare-fun lt!569010 () Unit!41882)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48201)

(declare-datatypes ((array!81877 0))(
  ( (array!81878 (arr!39490 (Array (_ BitVec 32) (_ BitVec 64))) (size!40027 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81877)

(declare-datatypes ((ValueCell!15300 0))(
  ( (ValueCellFull!15300 (v!18828 V!48201)) (EmptyCell!15300) )
))
(declare-datatypes ((array!81879 0))(
  ( (array!81880 (arr!39491 (Array (_ BitVec 32) ValueCell!15300)) (size!40028 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81879)

(declare-fun minValueBefore!43 () V!48201)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1124 (array!81877 array!81879 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48201 V!48201 V!48201 V!48201 (_ BitVec 32) Int) Unit!41882)

(assert (=> b!1258079 (= lt!569010 (lemmaNoChangeToArrayThenSameMapNoExtras!1124 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5806 (array!81877 array!81879 (_ BitVec 32) (_ BitVec 32) V!48201 V!48201 (_ BitVec 32) Int) ListLongMap!18877)

(assert (=> b!1258079 (= lt!569007 (getCurrentListMapNoExtraKeys!5806 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258079 (= lt!569009 (getCurrentListMapNoExtraKeys!5806 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49984 () Bool)

(declare-fun mapRes!49984 () Bool)

(assert (=> mapIsEmpty!49984 mapRes!49984))

(declare-fun res!838628 () Bool)

(assert (=> start!105660 (=> (not res!838628) (not e!715516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105660 (= res!838628 (validMask!0 mask!1466))))

(assert (=> start!105660 e!715516))

(assert (=> start!105660 true))

(assert (=> start!105660 tp!95198))

(declare-fun tp_is_empty!32127 () Bool)

(assert (=> start!105660 tp_is_empty!32127))

(declare-fun array_inv!30029 (array!81877) Bool)

(assert (=> start!105660 (array_inv!30029 _keys!1118)))

(declare-fun e!715512 () Bool)

(declare-fun array_inv!30030 (array!81879) Bool)

(assert (=> start!105660 (and (array_inv!30030 _values!914) e!715512)))

(declare-fun b!1258080 () Bool)

(assert (=> b!1258080 (= e!715511 true)))

(declare-fun lt!569008 () ListLongMap!18877)

(declare-fun getCurrentListMap!4594 (array!81877 array!81879 (_ BitVec 32) (_ BitVec 32) V!48201 V!48201 (_ BitVec 32) Int) ListLongMap!18877)

(assert (=> b!1258080 (= lt!569008 (getCurrentListMap!4594 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258081 () Bool)

(declare-fun e!715514 () Bool)

(assert (=> b!1258081 (= e!715514 tp_is_empty!32127)))

(declare-fun b!1258082 () Bool)

(declare-fun res!838624 () Bool)

(assert (=> b!1258082 (=> (not res!838624) (not e!715516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81877 (_ BitVec 32)) Bool)

(assert (=> b!1258082 (= res!838624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49984 () Bool)

(declare-fun tp!95199 () Bool)

(declare-fun e!715515 () Bool)

(assert (=> mapNonEmpty!49984 (= mapRes!49984 (and tp!95199 e!715515))))

(declare-fun mapKey!49984 () (_ BitVec 32))

(declare-fun mapRest!49984 () (Array (_ BitVec 32) ValueCell!15300))

(declare-fun mapValue!49984 () ValueCell!15300)

(assert (=> mapNonEmpty!49984 (= (arr!39491 _values!914) (store mapRest!49984 mapKey!49984 mapValue!49984))))

(declare-fun b!1258083 () Bool)

(assert (=> b!1258083 (= e!715515 tp_is_empty!32127)))

(declare-fun b!1258084 () Bool)

(declare-fun res!838625 () Bool)

(assert (=> b!1258084 (=> (not res!838625) (not e!715516))))

(declare-datatypes ((List!28225 0))(
  ( (Nil!28222) (Cons!28221 (h!29430 (_ BitVec 64)) (t!41725 List!28225)) )
))
(declare-fun arrayNoDuplicates!0 (array!81877 (_ BitVec 32) List!28225) Bool)

(assert (=> b!1258084 (= res!838625 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28222))))

(declare-fun b!1258085 () Bool)

(declare-fun res!838626 () Bool)

(assert (=> b!1258085 (=> (not res!838626) (not e!715516))))

(assert (=> b!1258085 (= res!838626 (and (= (size!40028 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40027 _keys!1118) (size!40028 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258086 () Bool)

(assert (=> b!1258086 (= e!715512 (and e!715514 mapRes!49984))))

(declare-fun condMapEmpty!49984 () Bool)

(declare-fun mapDefault!49984 () ValueCell!15300)

(assert (=> b!1258086 (= condMapEmpty!49984 (= (arr!39491 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15300)) mapDefault!49984)))))

(assert (= (and start!105660 res!838628) b!1258085))

(assert (= (and b!1258085 res!838626) b!1258082))

(assert (= (and b!1258082 res!838624) b!1258084))

(assert (= (and b!1258084 res!838625) b!1258079))

(assert (= (and b!1258079 (not res!838627)) b!1258080))

(assert (= (and b!1258086 condMapEmpty!49984) mapIsEmpty!49984))

(assert (= (and b!1258086 (not condMapEmpty!49984)) mapNonEmpty!49984))

(get-info :version)

(assert (= (and mapNonEmpty!49984 ((_ is ValueCellFull!15300) mapValue!49984)) b!1258083))

(assert (= (and b!1258086 ((_ is ValueCellFull!15300) mapDefault!49984)) b!1258081))

(assert (= start!105660 b!1258086))

(declare-fun m!1158595 () Bool)

(assert (=> b!1258082 m!1158595))

(declare-fun m!1158597 () Bool)

(assert (=> start!105660 m!1158597))

(declare-fun m!1158599 () Bool)

(assert (=> start!105660 m!1158599))

(declare-fun m!1158601 () Bool)

(assert (=> start!105660 m!1158601))

(declare-fun m!1158603 () Bool)

(assert (=> b!1258084 m!1158603))

(declare-fun m!1158605 () Bool)

(assert (=> b!1258079 m!1158605))

(declare-fun m!1158607 () Bool)

(assert (=> b!1258079 m!1158607))

(declare-fun m!1158609 () Bool)

(assert (=> b!1258079 m!1158609))

(declare-fun m!1158611 () Bool)

(assert (=> mapNonEmpty!49984 m!1158611))

(declare-fun m!1158613 () Bool)

(assert (=> b!1258080 m!1158613))

(check-sat tp_is_empty!32127 (not start!105660) (not b_next!27225) (not mapNonEmpty!49984) (not b!1258079) b_and!45109 (not b!1258082) (not b!1258084) (not b!1258080))
(check-sat b_and!45109 (not b_next!27225))
