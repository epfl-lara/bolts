; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104924 () Bool)

(assert start!104924)

(declare-fun b_free!26679 () Bool)

(declare-fun b_next!26679 () Bool)

(assert (=> start!104924 (= b_free!26679 (not b_next!26679))))

(declare-fun tp!93531 () Bool)

(declare-fun b_and!44465 () Bool)

(assert (=> start!104924 (= tp!93531 b_and!44465)))

(declare-fun b!1250061 () Bool)

(declare-fun res!833907 () Bool)

(declare-fun e!709635 () Bool)

(assert (=> b!1250061 (=> (not res!833907) (not e!709635))))

(declare-datatypes ((array!80815 0))(
  ( (array!80816 (arr!38969 (Array (_ BitVec 32) (_ BitVec 64))) (size!39506 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80815)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80815 (_ BitVec 32)) Bool)

(assert (=> b!1250061 (= res!833907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!833905 () Bool)

(assert (=> start!104924 (=> (not res!833905) (not e!709635))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104924 (= res!833905 (validMask!0 mask!1466))))

(assert (=> start!104924 e!709635))

(assert (=> start!104924 true))

(assert (=> start!104924 tp!93531))

(declare-fun tp_is_empty!31581 () Bool)

(assert (=> start!104924 tp_is_empty!31581))

(declare-fun array_inv!29661 (array!80815) Bool)

(assert (=> start!104924 (array_inv!29661 _keys!1118)))

(declare-datatypes ((V!47473 0))(
  ( (V!47474 (val!15853 Int)) )
))
(declare-datatypes ((ValueCell!15027 0))(
  ( (ValueCellFull!15027 (v!18549 V!47473)) (EmptyCell!15027) )
))
(declare-datatypes ((array!80817 0))(
  ( (array!80818 (arr!38970 (Array (_ BitVec 32) ValueCell!15027)) (size!39507 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80817)

(declare-fun e!709639 () Bool)

(declare-fun array_inv!29662 (array!80817) Bool)

(assert (=> start!104924 (and (array_inv!29662 _values!914) e!709639)))

(declare-fun b!1250062 () Bool)

(declare-fun e!709638 () Bool)

(declare-fun e!709637 () Bool)

(assert (=> b!1250062 (= e!709638 e!709637)))

(declare-fun res!833904 () Bool)

(assert (=> b!1250062 (=> res!833904 e!709637)))

(declare-datatypes ((tuple2!20568 0))(
  ( (tuple2!20569 (_1!10294 (_ BitVec 64)) (_2!10294 V!47473)) )
))
(declare-datatypes ((List!27827 0))(
  ( (Nil!27824) (Cons!27823 (h!29032 tuple2!20568) (t!41307 List!27827)) )
))
(declare-datatypes ((ListLongMap!18453 0))(
  ( (ListLongMap!18454 (toList!9242 List!27827)) )
))
(declare-fun lt!564010 () ListLongMap!18453)

(declare-fun contains!7498 (ListLongMap!18453 (_ BitVec 64)) Bool)

(assert (=> b!1250062 (= res!833904 (contains!7498 lt!564010 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47473)

(declare-fun minValueBefore!43 () V!47473)

(declare-fun getCurrentListMap!4464 (array!80815 array!80817 (_ BitVec 32) (_ BitVec 32) V!47473 V!47473 (_ BitVec 32) Int) ListLongMap!18453)

(assert (=> b!1250062 (= lt!564010 (getCurrentListMap!4464 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250063 () Bool)

(declare-fun res!833903 () Bool)

(assert (=> b!1250063 (=> (not res!833903) (not e!709635))))

(declare-datatypes ((List!27828 0))(
  ( (Nil!27825) (Cons!27824 (h!29033 (_ BitVec 64)) (t!41308 List!27828)) )
))
(declare-fun arrayNoDuplicates!0 (array!80815 (_ BitVec 32) List!27828) Bool)

(assert (=> b!1250063 (= res!833903 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27825))))

(declare-fun b!1250064 () Bool)

(assert (=> b!1250064 (= e!709635 (not e!709638))))

(declare-fun res!833906 () Bool)

(assert (=> b!1250064 (=> res!833906 e!709638)))

(assert (=> b!1250064 (= res!833906 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564009 () ListLongMap!18453)

(declare-fun lt!564012 () ListLongMap!18453)

(assert (=> b!1250064 (= lt!564009 lt!564012)))

(declare-fun minValueAfter!43 () V!47473)

(declare-datatypes ((Unit!41465 0))(
  ( (Unit!41466) )
))
(declare-fun lt!564011 () Unit!41465)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!942 (array!80815 array!80817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47473 V!47473 V!47473 V!47473 (_ BitVec 32) Int) Unit!41465)

(assert (=> b!1250064 (= lt!564011 (lemmaNoChangeToArrayThenSameMapNoExtras!942 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5624 (array!80815 array!80817 (_ BitVec 32) (_ BitVec 32) V!47473 V!47473 (_ BitVec 32) Int) ListLongMap!18453)

(assert (=> b!1250064 (= lt!564012 (getCurrentListMapNoExtraKeys!5624 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250064 (= lt!564009 (getCurrentListMapNoExtraKeys!5624 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250065 () Bool)

(declare-fun e!709636 () Bool)

(declare-fun mapRes!49135 () Bool)

(assert (=> b!1250065 (= e!709639 (and e!709636 mapRes!49135))))

(declare-fun condMapEmpty!49135 () Bool)

(declare-fun mapDefault!49135 () ValueCell!15027)

(assert (=> b!1250065 (= condMapEmpty!49135 (= (arr!38970 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15027)) mapDefault!49135)))))

(declare-fun b!1250066 () Bool)

(assert (=> b!1250066 (= e!709636 tp_is_empty!31581)))

(declare-fun mapIsEmpty!49135 () Bool)

(assert (=> mapIsEmpty!49135 mapRes!49135))

(declare-fun b!1250067 () Bool)

(declare-fun res!833908 () Bool)

(assert (=> b!1250067 (=> (not res!833908) (not e!709635))))

(assert (=> b!1250067 (= res!833908 (and (= (size!39507 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39506 _keys!1118) (size!39507 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250068 () Bool)

(declare-fun e!709633 () Bool)

(assert (=> b!1250068 (= e!709633 tp_is_empty!31581)))

(declare-fun b!1250069 () Bool)

(assert (=> b!1250069 (= e!709637 true)))

(declare-fun -!2012 (ListLongMap!18453 (_ BitVec 64)) ListLongMap!18453)

(assert (=> b!1250069 (= (-!2012 lt!564010 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564010)))

(declare-fun lt!564013 () Unit!41465)

(declare-fun removeNotPresentStillSame!79 (ListLongMap!18453 (_ BitVec 64)) Unit!41465)

(assert (=> b!1250069 (= lt!564013 (removeNotPresentStillSame!79 lt!564010 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!49135 () Bool)

(declare-fun tp!93530 () Bool)

(assert (=> mapNonEmpty!49135 (= mapRes!49135 (and tp!93530 e!709633))))

(declare-fun mapRest!49135 () (Array (_ BitVec 32) ValueCell!15027))

(declare-fun mapKey!49135 () (_ BitVec 32))

(declare-fun mapValue!49135 () ValueCell!15027)

(assert (=> mapNonEmpty!49135 (= (arr!38970 _values!914) (store mapRest!49135 mapKey!49135 mapValue!49135))))

(assert (= (and start!104924 res!833905) b!1250067))

(assert (= (and b!1250067 res!833908) b!1250061))

(assert (= (and b!1250061 res!833907) b!1250063))

(assert (= (and b!1250063 res!833903) b!1250064))

(assert (= (and b!1250064 (not res!833906)) b!1250062))

(assert (= (and b!1250062 (not res!833904)) b!1250069))

(assert (= (and b!1250065 condMapEmpty!49135) mapIsEmpty!49135))

(assert (= (and b!1250065 (not condMapEmpty!49135)) mapNonEmpty!49135))

(get-info :version)

(assert (= (and mapNonEmpty!49135 ((_ is ValueCellFull!15027) mapValue!49135)) b!1250068))

(assert (= (and b!1250065 ((_ is ValueCellFull!15027) mapDefault!49135)) b!1250066))

(assert (= start!104924 b!1250065))

(declare-fun m!1150945 () Bool)

(assert (=> b!1250064 m!1150945))

(declare-fun m!1150947 () Bool)

(assert (=> b!1250064 m!1150947))

(declare-fun m!1150949 () Bool)

(assert (=> b!1250064 m!1150949))

(declare-fun m!1150951 () Bool)

(assert (=> b!1250062 m!1150951))

(declare-fun m!1150953 () Bool)

(assert (=> b!1250062 m!1150953))

(declare-fun m!1150955 () Bool)

(assert (=> start!104924 m!1150955))

(declare-fun m!1150957 () Bool)

(assert (=> start!104924 m!1150957))

(declare-fun m!1150959 () Bool)

(assert (=> start!104924 m!1150959))

(declare-fun m!1150961 () Bool)

(assert (=> mapNonEmpty!49135 m!1150961))

(declare-fun m!1150963 () Bool)

(assert (=> b!1250063 m!1150963))

(declare-fun m!1150965 () Bool)

(assert (=> b!1250069 m!1150965))

(declare-fun m!1150967 () Bool)

(assert (=> b!1250069 m!1150967))

(declare-fun m!1150969 () Bool)

(assert (=> b!1250061 m!1150969))

(check-sat tp_is_empty!31581 (not start!104924) (not b!1250062) (not b_next!26679) (not b!1250063) b_and!44465 (not b!1250069) (not b!1250064) (not mapNonEmpty!49135) (not b!1250061))
(check-sat b_and!44465 (not b_next!26679))
