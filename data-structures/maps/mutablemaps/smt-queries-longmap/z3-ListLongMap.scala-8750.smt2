; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106236 () Bool)

(assert start!106236)

(declare-fun b_free!27537 () Bool)

(declare-fun b_next!27537 () Bool)

(assert (=> start!106236 (= b_free!27537 (not b_next!27537))))

(declare-fun tp!96176 () Bool)

(declare-fun b_and!45579 () Bool)

(assert (=> start!106236 (= tp!96176 b_and!45579)))

(declare-fun b!1264329 () Bool)

(declare-fun e!719964 () Bool)

(declare-fun e!719968 () Bool)

(assert (=> b!1264329 (= e!719964 (not e!719968))))

(declare-fun res!842090 () Bool)

(assert (=> b!1264329 (=> res!842090 e!719968)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1264329 (= res!842090 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48617 0))(
  ( (V!48618 (val!16282 Int)) )
))
(declare-datatypes ((tuple2!21232 0))(
  ( (tuple2!21233 (_1!10626 (_ BitVec 64)) (_2!10626 V!48617)) )
))
(declare-datatypes ((List!28447 0))(
  ( (Nil!28444) (Cons!28443 (h!29652 tuple2!21232) (t!41975 List!28447)) )
))
(declare-datatypes ((ListLongMap!19117 0))(
  ( (ListLongMap!19118 (toList!9574 List!28447)) )
))
(declare-fun lt!573703 () ListLongMap!19117)

(declare-fun lt!573701 () ListLongMap!19117)

(assert (=> b!1264329 (= lt!573703 lt!573701)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48617)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48617)

(declare-datatypes ((array!82491 0))(
  ( (array!82492 (arr!39783 (Array (_ BitVec 32) (_ BitVec 64))) (size!40320 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82491)

(declare-datatypes ((ValueCell!15456 0))(
  ( (ValueCellFull!15456 (v!18996 V!48617)) (EmptyCell!15456) )
))
(declare-datatypes ((array!82493 0))(
  ( (array!82494 (arr!39784 (Array (_ BitVec 32) ValueCell!15456)) (size!40321 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82493)

(declare-fun minValueBefore!43 () V!48617)

(declare-datatypes ((Unit!42095 0))(
  ( (Unit!42096) )
))
(declare-fun lt!573702 () Unit!42095)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1208 (array!82491 array!82493 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48617 V!48617 V!48617 V!48617 (_ BitVec 32) Int) Unit!42095)

(assert (=> b!1264329 (= lt!573702 (lemmaNoChangeToArrayThenSameMapNoExtras!1208 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5912 (array!82491 array!82493 (_ BitVec 32) (_ BitVec 32) V!48617 V!48617 (_ BitVec 32) Int) ListLongMap!19117)

(assert (=> b!1264329 (= lt!573701 (getCurrentListMapNoExtraKeys!5912 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1264329 (= lt!573703 (getCurrentListMapNoExtraKeys!5912 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1264330 () Bool)

(declare-fun res!842093 () Bool)

(assert (=> b!1264330 (=> (not res!842093) (not e!719964))))

(assert (=> b!1264330 (= res!842093 (and (= (size!40321 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40320 _keys!1118) (size!40321 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50494 () Bool)

(declare-fun mapRes!50494 () Bool)

(declare-fun tp!96177 () Bool)

(declare-fun e!719962 () Bool)

(assert (=> mapNonEmpty!50494 (= mapRes!50494 (and tp!96177 e!719962))))

(declare-fun mapValue!50494 () ValueCell!15456)

(declare-fun mapRest!50494 () (Array (_ BitVec 32) ValueCell!15456))

(declare-fun mapKey!50494 () (_ BitVec 32))

(assert (=> mapNonEmpty!50494 (= (arr!39784 _values!914) (store mapRest!50494 mapKey!50494 mapValue!50494))))

(declare-fun res!842095 () Bool)

(assert (=> start!106236 (=> (not res!842095) (not e!719964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106236 (= res!842095 (validMask!0 mask!1466))))

(assert (=> start!106236 e!719964))

(assert (=> start!106236 true))

(assert (=> start!106236 tp!96176))

(declare-fun tp_is_empty!32439 () Bool)

(assert (=> start!106236 tp_is_empty!32439))

(declare-fun array_inv!30233 (array!82491) Bool)

(assert (=> start!106236 (array_inv!30233 _keys!1118)))

(declare-fun e!719967 () Bool)

(declare-fun array_inv!30234 (array!82493) Bool)

(assert (=> start!106236 (and (array_inv!30234 _values!914) e!719967)))

(declare-fun b!1264331 () Bool)

(assert (=> b!1264331 (= e!719968 true)))

(declare-fun lt!573709 () ListLongMap!19117)

(declare-fun lt!573704 () ListLongMap!19117)

(declare-fun -!2152 (ListLongMap!19117 (_ BitVec 64)) ListLongMap!19117)

(assert (=> b!1264331 (= lt!573709 (-!2152 lt!573704 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!573707 () ListLongMap!19117)

(declare-fun lt!573710 () ListLongMap!19117)

(assert (=> b!1264331 (= (-!2152 lt!573707 #b1000000000000000000000000000000000000000000000000000000000000000) lt!573710)))

(declare-fun lt!573708 () Unit!42095)

(declare-fun addThenRemoveForNewKeyIsSame!373 (ListLongMap!19117 (_ BitVec 64) V!48617) Unit!42095)

(assert (=> b!1264331 (= lt!573708 (addThenRemoveForNewKeyIsSame!373 lt!573710 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!719963 () Bool)

(assert (=> b!1264331 e!719963))

(declare-fun res!842094 () Bool)

(assert (=> b!1264331 (=> (not res!842094) (not e!719963))))

(assert (=> b!1264331 (= res!842094 (= lt!573704 lt!573707))))

(declare-fun +!4237 (ListLongMap!19117 tuple2!21232) ListLongMap!19117)

(assert (=> b!1264331 (= lt!573707 (+!4237 lt!573710 (tuple2!21233 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!573705 () tuple2!21232)

(assert (=> b!1264331 (= lt!573710 (+!4237 lt!573703 lt!573705))))

(assert (=> b!1264331 (= lt!573705 (tuple2!21233 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun lt!573706 () ListLongMap!19117)

(declare-fun getCurrentListMap!4674 (array!82491 array!82493 (_ BitVec 32) (_ BitVec 32) V!48617 V!48617 (_ BitVec 32) Int) ListLongMap!19117)

(assert (=> b!1264331 (= lt!573706 (getCurrentListMap!4674 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1264331 (= lt!573704 (getCurrentListMap!4674 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1264332 () Bool)

(declare-fun e!719966 () Bool)

(assert (=> b!1264332 (= e!719966 tp_is_empty!32439)))

(declare-fun mapIsEmpty!50494 () Bool)

(assert (=> mapIsEmpty!50494 mapRes!50494))

(declare-fun b!1264333 () Bool)

(assert (=> b!1264333 (= e!719967 (and e!719966 mapRes!50494))))

(declare-fun condMapEmpty!50494 () Bool)

(declare-fun mapDefault!50494 () ValueCell!15456)

(assert (=> b!1264333 (= condMapEmpty!50494 (= (arr!39784 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15456)) mapDefault!50494)))))

(declare-fun b!1264334 () Bool)

(declare-fun res!842092 () Bool)

(assert (=> b!1264334 (=> (not res!842092) (not e!719964))))

(declare-datatypes ((List!28448 0))(
  ( (Nil!28445) (Cons!28444 (h!29653 (_ BitVec 64)) (t!41976 List!28448)) )
))
(declare-fun arrayNoDuplicates!0 (array!82491 (_ BitVec 32) List!28448) Bool)

(assert (=> b!1264334 (= res!842092 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28445))))

(declare-fun b!1264335 () Bool)

(declare-fun res!842091 () Bool)

(assert (=> b!1264335 (=> (not res!842091) (not e!719964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82491 (_ BitVec 32)) Bool)

(assert (=> b!1264335 (= res!842091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1264336 () Bool)

(assert (=> b!1264336 (= e!719962 tp_is_empty!32439)))

(declare-fun b!1264337 () Bool)

(assert (=> b!1264337 (= e!719963 (= lt!573706 (+!4237 lt!573701 lt!573705)))))

(assert (= (and start!106236 res!842095) b!1264330))

(assert (= (and b!1264330 res!842093) b!1264335))

(assert (= (and b!1264335 res!842091) b!1264334))

(assert (= (and b!1264334 res!842092) b!1264329))

(assert (= (and b!1264329 (not res!842090)) b!1264331))

(assert (= (and b!1264331 res!842094) b!1264337))

(assert (= (and b!1264333 condMapEmpty!50494) mapIsEmpty!50494))

(assert (= (and b!1264333 (not condMapEmpty!50494)) mapNonEmpty!50494))

(get-info :version)

(assert (= (and mapNonEmpty!50494 ((_ is ValueCellFull!15456) mapValue!50494)) b!1264336))

(assert (= (and b!1264333 ((_ is ValueCellFull!15456) mapDefault!50494)) b!1264332))

(assert (= start!106236 b!1264333))

(declare-fun m!1164925 () Bool)

(assert (=> b!1264335 m!1164925))

(declare-fun m!1164927 () Bool)

(assert (=> start!106236 m!1164927))

(declare-fun m!1164929 () Bool)

(assert (=> start!106236 m!1164929))

(declare-fun m!1164931 () Bool)

(assert (=> start!106236 m!1164931))

(declare-fun m!1164933 () Bool)

(assert (=> b!1264337 m!1164933))

(declare-fun m!1164935 () Bool)

(assert (=> mapNonEmpty!50494 m!1164935))

(declare-fun m!1164937 () Bool)

(assert (=> b!1264331 m!1164937))

(declare-fun m!1164939 () Bool)

(assert (=> b!1264331 m!1164939))

(declare-fun m!1164941 () Bool)

(assert (=> b!1264331 m!1164941))

(declare-fun m!1164943 () Bool)

(assert (=> b!1264331 m!1164943))

(declare-fun m!1164945 () Bool)

(assert (=> b!1264331 m!1164945))

(declare-fun m!1164947 () Bool)

(assert (=> b!1264331 m!1164947))

(declare-fun m!1164949 () Bool)

(assert (=> b!1264331 m!1164949))

(declare-fun m!1164951 () Bool)

(assert (=> b!1264334 m!1164951))

(declare-fun m!1164953 () Bool)

(assert (=> b!1264329 m!1164953))

(declare-fun m!1164955 () Bool)

(assert (=> b!1264329 m!1164955))

(declare-fun m!1164957 () Bool)

(assert (=> b!1264329 m!1164957))

(check-sat b_and!45579 (not b_next!27537) (not mapNonEmpty!50494) (not b!1264334) (not b!1264329) (not start!106236) (not b!1264335) (not b!1264331) tp_is_empty!32439 (not b!1264337))
(check-sat b_and!45579 (not b_next!27537))
