; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104912 () Bool)

(assert start!104912)

(declare-fun b_free!26667 () Bool)

(declare-fun b_next!26667 () Bool)

(assert (=> start!104912 (= b_free!26667 (not b_next!26667))))

(declare-fun tp!93495 () Bool)

(declare-fun b_and!44453 () Bool)

(assert (=> start!104912 (= tp!93495 b_and!44453)))

(declare-fun mapNonEmpty!49117 () Bool)

(declare-fun mapRes!49117 () Bool)

(declare-fun tp!93494 () Bool)

(declare-fun e!709508 () Bool)

(assert (=> mapNonEmpty!49117 (= mapRes!49117 (and tp!93494 e!709508))))

(declare-datatypes ((V!47457 0))(
  ( (V!47458 (val!15847 Int)) )
))
(declare-datatypes ((ValueCell!15021 0))(
  ( (ValueCellFull!15021 (v!18543 V!47457)) (EmptyCell!15021) )
))
(declare-fun mapValue!49117 () ValueCell!15021)

(declare-fun mapRest!49117 () (Array (_ BitVec 32) ValueCell!15021))

(declare-datatypes ((array!80791 0))(
  ( (array!80792 (arr!38957 (Array (_ BitVec 32) ValueCell!15021)) (size!39494 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80791)

(declare-fun mapKey!49117 () (_ BitVec 32))

(assert (=> mapNonEmpty!49117 (= (arr!38957 _values!914) (store mapRest!49117 mapKey!49117 mapValue!49117))))

(declare-fun res!833800 () Bool)

(declare-fun e!709509 () Bool)

(assert (=> start!104912 (=> (not res!833800) (not e!709509))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104912 (= res!833800 (validMask!0 mask!1466))))

(assert (=> start!104912 e!709509))

(assert (=> start!104912 true))

(assert (=> start!104912 tp!93495))

(declare-fun tp_is_empty!31569 () Bool)

(assert (=> start!104912 tp_is_empty!31569))

(declare-datatypes ((array!80793 0))(
  ( (array!80794 (arr!38958 (Array (_ BitVec 32) (_ BitVec 64))) (size!39495 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80793)

(declare-fun array_inv!29653 (array!80793) Bool)

(assert (=> start!104912 (array_inv!29653 _keys!1118)))

(declare-fun e!709512 () Bool)

(declare-fun array_inv!29654 (array!80791) Bool)

(assert (=> start!104912 (and (array_inv!29654 _values!914) e!709512)))

(declare-fun b!1249899 () Bool)

(declare-fun res!833797 () Bool)

(assert (=> b!1249899 (=> (not res!833797) (not e!709509))))

(declare-datatypes ((List!27818 0))(
  ( (Nil!27815) (Cons!27814 (h!29023 (_ BitVec 64)) (t!41298 List!27818)) )
))
(declare-fun arrayNoDuplicates!0 (array!80793 (_ BitVec 32) List!27818) Bool)

(assert (=> b!1249899 (= res!833797 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27815))))

(declare-fun b!1249900 () Bool)

(declare-fun e!709507 () Bool)

(declare-fun e!709513 () Bool)

(assert (=> b!1249900 (= e!709507 e!709513)))

(declare-fun res!833799 () Bool)

(assert (=> b!1249900 (=> res!833799 e!709513)))

(declare-datatypes ((tuple2!20556 0))(
  ( (tuple2!20557 (_1!10288 (_ BitVec 64)) (_2!10288 V!47457)) )
))
(declare-datatypes ((List!27819 0))(
  ( (Nil!27816) (Cons!27815 (h!29024 tuple2!20556) (t!41299 List!27819)) )
))
(declare-datatypes ((ListLongMap!18441 0))(
  ( (ListLongMap!18442 (toList!9236 List!27819)) )
))
(declare-fun lt!563921 () ListLongMap!18441)

(declare-fun contains!7492 (ListLongMap!18441 (_ BitVec 64)) Bool)

(assert (=> b!1249900 (= res!833799 (contains!7492 lt!563921 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47457)

(declare-fun minValueBefore!43 () V!47457)

(declare-fun getCurrentListMap!4458 (array!80793 array!80791 (_ BitVec 32) (_ BitVec 32) V!47457 V!47457 (_ BitVec 32) Int) ListLongMap!18441)

(assert (=> b!1249900 (= lt!563921 (getCurrentListMap!4458 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249901 () Bool)

(declare-fun e!709510 () Bool)

(assert (=> b!1249901 (= e!709512 (and e!709510 mapRes!49117))))

(declare-fun condMapEmpty!49117 () Bool)

(declare-fun mapDefault!49117 () ValueCell!15021)

(assert (=> b!1249901 (= condMapEmpty!49117 (= (arr!38957 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15021)) mapDefault!49117)))))

(declare-fun b!1249902 () Bool)

(assert (=> b!1249902 (= e!709513 true)))

(declare-fun -!2009 (ListLongMap!18441 (_ BitVec 64)) ListLongMap!18441)

(assert (=> b!1249902 (= (-!2009 lt!563921 #b1000000000000000000000000000000000000000000000000000000000000000) lt!563921)))

(declare-datatypes ((Unit!41455 0))(
  ( (Unit!41456) )
))
(declare-fun lt!563919 () Unit!41455)

(declare-fun removeNotPresentStillSame!76 (ListLongMap!18441 (_ BitVec 64)) Unit!41455)

(assert (=> b!1249902 (= lt!563919 (removeNotPresentStillSame!76 lt!563921 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1249903 () Bool)

(assert (=> b!1249903 (= e!709508 tp_is_empty!31569)))

(declare-fun b!1249904 () Bool)

(assert (=> b!1249904 (= e!709510 tp_is_empty!31569)))

(declare-fun b!1249905 () Bool)

(declare-fun res!833795 () Bool)

(assert (=> b!1249905 (=> (not res!833795) (not e!709509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80793 (_ BitVec 32)) Bool)

(assert (=> b!1249905 (= res!833795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249906 () Bool)

(assert (=> b!1249906 (= e!709509 (not e!709507))))

(declare-fun res!833796 () Bool)

(assert (=> b!1249906 (=> res!833796 e!709507)))

(assert (=> b!1249906 (= res!833796 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!563923 () ListLongMap!18441)

(declare-fun lt!563920 () ListLongMap!18441)

(assert (=> b!1249906 (= lt!563923 lt!563920)))

(declare-fun minValueAfter!43 () V!47457)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lt!563922 () Unit!41455)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!937 (array!80793 array!80791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47457 V!47457 V!47457 V!47457 (_ BitVec 32) Int) Unit!41455)

(assert (=> b!1249906 (= lt!563922 (lemmaNoChangeToArrayThenSameMapNoExtras!937 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5619 (array!80793 array!80791 (_ BitVec 32) (_ BitVec 32) V!47457 V!47457 (_ BitVec 32) Int) ListLongMap!18441)

(assert (=> b!1249906 (= lt!563920 (getCurrentListMapNoExtraKeys!5619 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249906 (= lt!563923 (getCurrentListMapNoExtraKeys!5619 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249907 () Bool)

(declare-fun res!833798 () Bool)

(assert (=> b!1249907 (=> (not res!833798) (not e!709509))))

(assert (=> b!1249907 (= res!833798 (and (= (size!39494 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39495 _keys!1118) (size!39494 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!49117 () Bool)

(assert (=> mapIsEmpty!49117 mapRes!49117))

(assert (= (and start!104912 res!833800) b!1249907))

(assert (= (and b!1249907 res!833798) b!1249905))

(assert (= (and b!1249905 res!833795) b!1249899))

(assert (= (and b!1249899 res!833797) b!1249906))

(assert (= (and b!1249906 (not res!833796)) b!1249900))

(assert (= (and b!1249900 (not res!833799)) b!1249902))

(assert (= (and b!1249901 condMapEmpty!49117) mapIsEmpty!49117))

(assert (= (and b!1249901 (not condMapEmpty!49117)) mapNonEmpty!49117))

(get-info :version)

(assert (= (and mapNonEmpty!49117 ((_ is ValueCellFull!15021) mapValue!49117)) b!1249903))

(assert (= (and b!1249901 ((_ is ValueCellFull!15021) mapDefault!49117)) b!1249904))

(assert (= start!104912 b!1249901))

(declare-fun m!1150789 () Bool)

(assert (=> b!1249900 m!1150789))

(declare-fun m!1150791 () Bool)

(assert (=> b!1249900 m!1150791))

(declare-fun m!1150793 () Bool)

(assert (=> b!1249902 m!1150793))

(declare-fun m!1150795 () Bool)

(assert (=> b!1249902 m!1150795))

(declare-fun m!1150797 () Bool)

(assert (=> b!1249905 m!1150797))

(declare-fun m!1150799 () Bool)

(assert (=> b!1249906 m!1150799))

(declare-fun m!1150801 () Bool)

(assert (=> b!1249906 m!1150801))

(declare-fun m!1150803 () Bool)

(assert (=> b!1249906 m!1150803))

(declare-fun m!1150805 () Bool)

(assert (=> start!104912 m!1150805))

(declare-fun m!1150807 () Bool)

(assert (=> start!104912 m!1150807))

(declare-fun m!1150809 () Bool)

(assert (=> start!104912 m!1150809))

(declare-fun m!1150811 () Bool)

(assert (=> b!1249899 m!1150811))

(declare-fun m!1150813 () Bool)

(assert (=> mapNonEmpty!49117 m!1150813))

(check-sat (not b_next!26667) tp_is_empty!31569 (not start!104912) (not b!1249900) (not b!1249905) (not b!1249902) b_and!44453 (not b!1249899) (not mapNonEmpty!49117) (not b!1249906))
(check-sat b_and!44453 (not b_next!26667))
