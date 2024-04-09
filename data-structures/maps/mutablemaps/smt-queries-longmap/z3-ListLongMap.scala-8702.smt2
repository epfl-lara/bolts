; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105684 () Bool)

(assert start!105684)

(declare-fun b_free!27249 () Bool)

(declare-fun b_next!27249 () Bool)

(assert (=> start!105684 (= b_free!27249 (not b_next!27249))))

(declare-fun tp!95271 () Bool)

(declare-fun b_and!45133 () Bool)

(assert (=> start!105684 (= tp!95271 b_and!45133)))

(declare-fun res!838807 () Bool)

(declare-fun e!715728 () Bool)

(assert (=> start!105684 (=> (not res!838807) (not e!715728))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105684 (= res!838807 (validMask!0 mask!1466))))

(assert (=> start!105684 e!715728))

(assert (=> start!105684 true))

(assert (=> start!105684 tp!95271))

(declare-fun tp_is_empty!32151 () Bool)

(assert (=> start!105684 tp_is_empty!32151))

(declare-datatypes ((array!81919 0))(
  ( (array!81920 (arr!39511 (Array (_ BitVec 32) (_ BitVec 64))) (size!40048 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81919)

(declare-fun array_inv!30041 (array!81919) Bool)

(assert (=> start!105684 (array_inv!30041 _keys!1118)))

(declare-datatypes ((V!48233 0))(
  ( (V!48234 (val!16138 Int)) )
))
(declare-datatypes ((ValueCell!15312 0))(
  ( (ValueCellFull!15312 (v!18840 V!48233)) (EmptyCell!15312) )
))
(declare-datatypes ((array!81921 0))(
  ( (array!81922 (arr!39512 (Array (_ BitVec 32) ValueCell!15312)) (size!40049 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81921)

(declare-fun e!715732 () Bool)

(declare-fun array_inv!30042 (array!81921) Bool)

(assert (=> start!105684 (and (array_inv!30042 _values!914) e!715732)))

(declare-fun b!1258367 () Bool)

(declare-fun res!838808 () Bool)

(assert (=> b!1258367 (=> (not res!838808) (not e!715728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81919 (_ BitVec 32)) Bool)

(assert (=> b!1258367 (= res!838808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258368 () Bool)

(declare-fun e!715729 () Bool)

(assert (=> b!1258368 (= e!715729 tp_is_empty!32151)))

(declare-fun b!1258369 () Bool)

(declare-fun e!715731 () Bool)

(declare-fun mapRes!50020 () Bool)

(assert (=> b!1258369 (= e!715732 (and e!715731 mapRes!50020))))

(declare-fun condMapEmpty!50020 () Bool)

(declare-fun mapDefault!50020 () ValueCell!15312)

(assert (=> b!1258369 (= condMapEmpty!50020 (= (arr!39512 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15312)) mapDefault!50020)))))

(declare-fun b!1258370 () Bool)

(declare-fun res!838805 () Bool)

(assert (=> b!1258370 (=> (not res!838805) (not e!715728))))

(declare-datatypes ((List!28240 0))(
  ( (Nil!28237) (Cons!28236 (h!29445 (_ BitVec 64)) (t!41740 List!28240)) )
))
(declare-fun arrayNoDuplicates!0 (array!81919 (_ BitVec 32) List!28240) Bool)

(assert (=> b!1258370 (= res!838805 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28237))))

(declare-fun b!1258371 () Bool)

(declare-fun res!838804 () Bool)

(assert (=> b!1258371 (=> (not res!838804) (not e!715728))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1258371 (= res!838804 (and (= (size!40049 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40048 _keys!1118) (size!40049 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258372 () Bool)

(assert (=> b!1258372 (= e!715731 tp_is_empty!32151)))

(declare-fun b!1258373 () Bool)

(declare-fun e!715727 () Bool)

(assert (=> b!1258373 (= e!715727 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48233)

(declare-datatypes ((tuple2!21008 0))(
  ( (tuple2!21009 (_1!10514 (_ BitVec 64)) (_2!10514 V!48233)) )
))
(declare-datatypes ((List!28241 0))(
  ( (Nil!28238) (Cons!28237 (h!29446 tuple2!21008) (t!41741 List!28241)) )
))
(declare-datatypes ((ListLongMap!18893 0))(
  ( (ListLongMap!18894 (toList!9462 List!28241)) )
))
(declare-fun lt!569151 () ListLongMap!18893)

(declare-fun minValueBefore!43 () V!48233)

(declare-fun getCurrentListMap!4602 (array!81919 array!81921 (_ BitVec 32) (_ BitVec 32) V!48233 V!48233 (_ BitVec 32) Int) ListLongMap!18893)

(assert (=> b!1258373 (= lt!569151 (getCurrentListMap!4602 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258374 () Bool)

(assert (=> b!1258374 (= e!715728 (not e!715727))))

(declare-fun res!838806 () Bool)

(assert (=> b!1258374 (=> res!838806 e!715727)))

(assert (=> b!1258374 (= res!838806 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569152 () ListLongMap!18893)

(declare-fun lt!569153 () ListLongMap!18893)

(assert (=> b!1258374 (= lt!569152 lt!569153)))

(declare-fun minValueAfter!43 () V!48233)

(declare-datatypes ((Unit!41896 0))(
  ( (Unit!41897) )
))
(declare-fun lt!569154 () Unit!41896)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1131 (array!81919 array!81921 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48233 V!48233 V!48233 V!48233 (_ BitVec 32) Int) Unit!41896)

(assert (=> b!1258374 (= lt!569154 (lemmaNoChangeToArrayThenSameMapNoExtras!1131 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5813 (array!81919 array!81921 (_ BitVec 32) (_ BitVec 32) V!48233 V!48233 (_ BitVec 32) Int) ListLongMap!18893)

(assert (=> b!1258374 (= lt!569153 (getCurrentListMapNoExtraKeys!5813 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258374 (= lt!569152 (getCurrentListMapNoExtraKeys!5813 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50020 () Bool)

(declare-fun tp!95270 () Bool)

(assert (=> mapNonEmpty!50020 (= mapRes!50020 (and tp!95270 e!715729))))

(declare-fun mapValue!50020 () ValueCell!15312)

(declare-fun mapRest!50020 () (Array (_ BitVec 32) ValueCell!15312))

(declare-fun mapKey!50020 () (_ BitVec 32))

(assert (=> mapNonEmpty!50020 (= (arr!39512 _values!914) (store mapRest!50020 mapKey!50020 mapValue!50020))))

(declare-fun mapIsEmpty!50020 () Bool)

(assert (=> mapIsEmpty!50020 mapRes!50020))

(assert (= (and start!105684 res!838807) b!1258371))

(assert (= (and b!1258371 res!838804) b!1258367))

(assert (= (and b!1258367 res!838808) b!1258370))

(assert (= (and b!1258370 res!838805) b!1258374))

(assert (= (and b!1258374 (not res!838806)) b!1258373))

(assert (= (and b!1258369 condMapEmpty!50020) mapIsEmpty!50020))

(assert (= (and b!1258369 (not condMapEmpty!50020)) mapNonEmpty!50020))

(get-info :version)

(assert (= (and mapNonEmpty!50020 ((_ is ValueCellFull!15312) mapValue!50020)) b!1258368))

(assert (= (and b!1258369 ((_ is ValueCellFull!15312) mapDefault!50020)) b!1258372))

(assert (= start!105684 b!1258369))

(declare-fun m!1158835 () Bool)

(assert (=> mapNonEmpty!50020 m!1158835))

(declare-fun m!1158837 () Bool)

(assert (=> b!1258370 m!1158837))

(declare-fun m!1158839 () Bool)

(assert (=> b!1258373 m!1158839))

(declare-fun m!1158841 () Bool)

(assert (=> b!1258374 m!1158841))

(declare-fun m!1158843 () Bool)

(assert (=> b!1258374 m!1158843))

(declare-fun m!1158845 () Bool)

(assert (=> b!1258374 m!1158845))

(declare-fun m!1158847 () Bool)

(assert (=> b!1258367 m!1158847))

(declare-fun m!1158849 () Bool)

(assert (=> start!105684 m!1158849))

(declare-fun m!1158851 () Bool)

(assert (=> start!105684 m!1158851))

(declare-fun m!1158853 () Bool)

(assert (=> start!105684 m!1158853))

(check-sat tp_is_empty!32151 (not b!1258373) (not start!105684) (not b!1258370) (not b!1258374) (not b_next!27249) (not b!1258367) b_and!45133 (not mapNonEmpty!50020))
(check-sat b_and!45133 (not b_next!27249))
