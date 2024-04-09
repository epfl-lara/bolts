; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104930 () Bool)

(assert start!104930)

(declare-fun b_free!26685 () Bool)

(declare-fun b_next!26685 () Bool)

(assert (=> start!104930 (= b_free!26685 (not b_next!26685))))

(declare-fun tp!93548 () Bool)

(declare-fun b_and!44471 () Bool)

(assert (=> start!104930 (= tp!93548 b_and!44471)))

(declare-fun mapIsEmpty!49144 () Bool)

(declare-fun mapRes!49144 () Bool)

(assert (=> mapIsEmpty!49144 mapRes!49144))

(declare-fun b!1250142 () Bool)

(declare-fun res!833957 () Bool)

(declare-fun e!709699 () Bool)

(assert (=> b!1250142 (=> (not res!833957) (not e!709699))))

(declare-datatypes ((array!80825 0))(
  ( (array!80826 (arr!38974 (Array (_ BitVec 32) (_ BitVec 64))) (size!39511 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80825)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80825 (_ BitVec 32)) Bool)

(assert (=> b!1250142 (= res!833957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250143 () Bool)

(declare-fun e!709700 () Bool)

(assert (=> b!1250143 (= e!709700 true)))

(declare-datatypes ((V!47481 0))(
  ( (V!47482 (val!15856 Int)) )
))
(declare-datatypes ((tuple2!20572 0))(
  ( (tuple2!20573 (_1!10296 (_ BitVec 64)) (_2!10296 V!47481)) )
))
(declare-datatypes ((List!27831 0))(
  ( (Nil!27828) (Cons!27827 (h!29036 tuple2!20572) (t!41311 List!27831)) )
))
(declare-datatypes ((ListLongMap!18457 0))(
  ( (ListLongMap!18458 (toList!9244 List!27831)) )
))
(declare-fun lt!564057 () ListLongMap!18457)

(declare-fun -!2013 (ListLongMap!18457 (_ BitVec 64)) ListLongMap!18457)

(assert (=> b!1250143 (= (-!2013 lt!564057 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564057)))

(declare-datatypes ((Unit!41469 0))(
  ( (Unit!41470) )
))
(declare-fun lt!564056 () Unit!41469)

(declare-fun removeNotPresentStillSame!80 (ListLongMap!18457 (_ BitVec 64)) Unit!41469)

(assert (=> b!1250143 (= lt!564056 (removeNotPresentStillSame!80 lt!564057 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!833958 () Bool)

(assert (=> start!104930 (=> (not res!833958) (not e!709699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104930 (= res!833958 (validMask!0 mask!1466))))

(assert (=> start!104930 e!709699))

(assert (=> start!104930 true))

(assert (=> start!104930 tp!93548))

(declare-fun tp_is_empty!31587 () Bool)

(assert (=> start!104930 tp_is_empty!31587))

(declare-fun array_inv!29665 (array!80825) Bool)

(assert (=> start!104930 (array_inv!29665 _keys!1118)))

(declare-datatypes ((ValueCell!15030 0))(
  ( (ValueCellFull!15030 (v!18552 V!47481)) (EmptyCell!15030) )
))
(declare-datatypes ((array!80827 0))(
  ( (array!80828 (arr!38975 (Array (_ BitVec 32) ValueCell!15030)) (size!39512 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80827)

(declare-fun e!709696 () Bool)

(declare-fun array_inv!29666 (array!80827) Bool)

(assert (=> start!104930 (and (array_inv!29666 _values!914) e!709696)))

(declare-fun b!1250144 () Bool)

(declare-fun e!709697 () Bool)

(assert (=> b!1250144 (= e!709697 tp_is_empty!31587)))

(declare-fun b!1250145 () Bool)

(declare-fun e!709698 () Bool)

(assert (=> b!1250145 (= e!709699 (not e!709698))))

(declare-fun res!833961 () Bool)

(assert (=> b!1250145 (=> res!833961 e!709698)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1250145 (= res!833961 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564054 () ListLongMap!18457)

(declare-fun lt!564058 () ListLongMap!18457)

(assert (=> b!1250145 (= lt!564054 lt!564058)))

(declare-fun defaultEntry!922 () Int)

(declare-fun lt!564055 () Unit!41469)

(declare-fun minValueAfter!43 () V!47481)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47481)

(declare-fun minValueBefore!43 () V!47481)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!944 (array!80825 array!80827 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47481 V!47481 V!47481 V!47481 (_ BitVec 32) Int) Unit!41469)

(assert (=> b!1250145 (= lt!564055 (lemmaNoChangeToArrayThenSameMapNoExtras!944 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5626 (array!80825 array!80827 (_ BitVec 32) (_ BitVec 32) V!47481 V!47481 (_ BitVec 32) Int) ListLongMap!18457)

(assert (=> b!1250145 (= lt!564058 (getCurrentListMapNoExtraKeys!5626 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250145 (= lt!564054 (getCurrentListMapNoExtraKeys!5626 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250146 () Bool)

(declare-fun res!833960 () Bool)

(assert (=> b!1250146 (=> (not res!833960) (not e!709699))))

(declare-datatypes ((List!27832 0))(
  ( (Nil!27829) (Cons!27828 (h!29037 (_ BitVec 64)) (t!41312 List!27832)) )
))
(declare-fun arrayNoDuplicates!0 (array!80825 (_ BitVec 32) List!27832) Bool)

(assert (=> b!1250146 (= res!833960 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27829))))

(declare-fun b!1250147 () Bool)

(assert (=> b!1250147 (= e!709698 e!709700)))

(declare-fun res!833962 () Bool)

(assert (=> b!1250147 (=> res!833962 e!709700)))

(declare-fun contains!7499 (ListLongMap!18457 (_ BitVec 64)) Bool)

(assert (=> b!1250147 (= res!833962 (contains!7499 lt!564057 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4465 (array!80825 array!80827 (_ BitVec 32) (_ BitVec 32) V!47481 V!47481 (_ BitVec 32) Int) ListLongMap!18457)

(assert (=> b!1250147 (= lt!564057 (getCurrentListMap!4465 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49144 () Bool)

(declare-fun tp!93549 () Bool)

(declare-fun e!709702 () Bool)

(assert (=> mapNonEmpty!49144 (= mapRes!49144 (and tp!93549 e!709702))))

(declare-fun mapRest!49144 () (Array (_ BitVec 32) ValueCell!15030))

(declare-fun mapKey!49144 () (_ BitVec 32))

(declare-fun mapValue!49144 () ValueCell!15030)

(assert (=> mapNonEmpty!49144 (= (arr!38975 _values!914) (store mapRest!49144 mapKey!49144 mapValue!49144))))

(declare-fun b!1250148 () Bool)

(assert (=> b!1250148 (= e!709696 (and e!709697 mapRes!49144))))

(declare-fun condMapEmpty!49144 () Bool)

(declare-fun mapDefault!49144 () ValueCell!15030)

(assert (=> b!1250148 (= condMapEmpty!49144 (= (arr!38975 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15030)) mapDefault!49144)))))

(declare-fun b!1250149 () Bool)

(assert (=> b!1250149 (= e!709702 tp_is_empty!31587)))

(declare-fun b!1250150 () Bool)

(declare-fun res!833959 () Bool)

(assert (=> b!1250150 (=> (not res!833959) (not e!709699))))

(assert (=> b!1250150 (= res!833959 (and (= (size!39512 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39511 _keys!1118) (size!39512 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!104930 res!833958) b!1250150))

(assert (= (and b!1250150 res!833959) b!1250142))

(assert (= (and b!1250142 res!833957) b!1250146))

(assert (= (and b!1250146 res!833960) b!1250145))

(assert (= (and b!1250145 (not res!833961)) b!1250147))

(assert (= (and b!1250147 (not res!833962)) b!1250143))

(assert (= (and b!1250148 condMapEmpty!49144) mapIsEmpty!49144))

(assert (= (and b!1250148 (not condMapEmpty!49144)) mapNonEmpty!49144))

(get-info :version)

(assert (= (and mapNonEmpty!49144 ((_ is ValueCellFull!15030) mapValue!49144)) b!1250149))

(assert (= (and b!1250148 ((_ is ValueCellFull!15030) mapDefault!49144)) b!1250144))

(assert (= start!104930 b!1250148))

(declare-fun m!1151023 () Bool)

(assert (=> b!1250143 m!1151023))

(declare-fun m!1151025 () Bool)

(assert (=> b!1250143 m!1151025))

(declare-fun m!1151027 () Bool)

(assert (=> b!1250146 m!1151027))

(declare-fun m!1151029 () Bool)

(assert (=> b!1250147 m!1151029))

(declare-fun m!1151031 () Bool)

(assert (=> b!1250147 m!1151031))

(declare-fun m!1151033 () Bool)

(assert (=> b!1250142 m!1151033))

(declare-fun m!1151035 () Bool)

(assert (=> b!1250145 m!1151035))

(declare-fun m!1151037 () Bool)

(assert (=> b!1250145 m!1151037))

(declare-fun m!1151039 () Bool)

(assert (=> b!1250145 m!1151039))

(declare-fun m!1151041 () Bool)

(assert (=> start!104930 m!1151041))

(declare-fun m!1151043 () Bool)

(assert (=> start!104930 m!1151043))

(declare-fun m!1151045 () Bool)

(assert (=> start!104930 m!1151045))

(declare-fun m!1151047 () Bool)

(assert (=> mapNonEmpty!49144 m!1151047))

(check-sat (not b_next!26685) (not start!104930) b_and!44471 tp_is_empty!31587 (not mapNonEmpty!49144) (not b!1250147) (not b!1250146) (not b!1250143) (not b!1250145) (not b!1250142))
(check-sat b_and!44471 (not b_next!26685))
