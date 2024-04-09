; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104936 () Bool)

(assert start!104936)

(declare-fun b_free!26691 () Bool)

(declare-fun b_next!26691 () Bool)

(assert (=> start!104936 (= b_free!26691 (not b_next!26691))))

(declare-fun tp!93567 () Bool)

(declare-fun b_and!44477 () Bool)

(assert (=> start!104936 (= tp!93567 b_and!44477)))

(declare-fun b!1250223 () Bool)

(declare-fun e!709760 () Bool)

(declare-fun tp_is_empty!31593 () Bool)

(assert (=> b!1250223 (= e!709760 tp_is_empty!31593)))

(declare-fun mapNonEmpty!49153 () Bool)

(declare-fun mapRes!49153 () Bool)

(declare-fun tp!93566 () Bool)

(assert (=> mapNonEmpty!49153 (= mapRes!49153 (and tp!93566 e!709760))))

(declare-datatypes ((V!47489 0))(
  ( (V!47490 (val!15859 Int)) )
))
(declare-datatypes ((ValueCell!15033 0))(
  ( (ValueCellFull!15033 (v!18555 V!47489)) (EmptyCell!15033) )
))
(declare-fun mapRest!49153 () (Array (_ BitVec 32) ValueCell!15033))

(declare-datatypes ((array!80837 0))(
  ( (array!80838 (arr!38980 (Array (_ BitVec 32) ValueCell!15033)) (size!39517 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80837)

(declare-fun mapValue!49153 () ValueCell!15033)

(declare-fun mapKey!49153 () (_ BitVec 32))

(assert (=> mapNonEmpty!49153 (= (arr!38980 _values!914) (store mapRest!49153 mapKey!49153 mapValue!49153))))

(declare-fun b!1250224 () Bool)

(declare-fun res!834015 () Bool)

(declare-fun e!709762 () Bool)

(assert (=> b!1250224 (=> (not res!834015) (not e!709762))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80839 0))(
  ( (array!80840 (arr!38981 (Array (_ BitVec 32) (_ BitVec 64))) (size!39518 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80839)

(assert (=> b!1250224 (= res!834015 (and (= (size!39517 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39518 _keys!1118) (size!39517 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!834014 () Bool)

(assert (=> start!104936 (=> (not res!834014) (not e!709762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104936 (= res!834014 (validMask!0 mask!1466))))

(assert (=> start!104936 e!709762))

(assert (=> start!104936 true))

(assert (=> start!104936 tp!93567))

(assert (=> start!104936 tp_is_empty!31593))

(declare-fun array_inv!29669 (array!80839) Bool)

(assert (=> start!104936 (array_inv!29669 _keys!1118)))

(declare-fun e!709761 () Bool)

(declare-fun array_inv!29670 (array!80837) Bool)

(assert (=> start!104936 (and (array_inv!29670 _values!914) e!709761)))

(declare-fun b!1250225 () Bool)

(declare-fun res!834012 () Bool)

(assert (=> b!1250225 (=> (not res!834012) (not e!709762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80839 (_ BitVec 32)) Bool)

(assert (=> b!1250225 (= res!834012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250226 () Bool)

(declare-fun res!834013 () Bool)

(assert (=> b!1250226 (=> (not res!834013) (not e!709762))))

(declare-datatypes ((List!27836 0))(
  ( (Nil!27833) (Cons!27832 (h!29041 (_ BitVec 64)) (t!41316 List!27836)) )
))
(declare-fun arrayNoDuplicates!0 (array!80839 (_ BitVec 32) List!27836) Bool)

(assert (=> b!1250226 (= res!834013 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27833))))

(declare-fun b!1250227 () Bool)

(declare-fun e!709765 () Bool)

(declare-fun e!709763 () Bool)

(assert (=> b!1250227 (= e!709765 e!709763)))

(declare-fun res!834016 () Bool)

(assert (=> b!1250227 (=> res!834016 e!709763)))

(declare-datatypes ((tuple2!20578 0))(
  ( (tuple2!20579 (_1!10299 (_ BitVec 64)) (_2!10299 V!47489)) )
))
(declare-datatypes ((List!27837 0))(
  ( (Nil!27834) (Cons!27833 (h!29042 tuple2!20578) (t!41317 List!27837)) )
))
(declare-datatypes ((ListLongMap!18463 0))(
  ( (ListLongMap!18464 (toList!9247 List!27837)) )
))
(declare-fun lt!564102 () ListLongMap!18463)

(declare-fun contains!7501 (ListLongMap!18463 (_ BitVec 64)) Bool)

(assert (=> b!1250227 (= res!834016 (contains!7501 lt!564102 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47489)

(declare-fun minValueBefore!43 () V!47489)

(declare-fun getCurrentListMap!4467 (array!80839 array!80837 (_ BitVec 32) (_ BitVec 32) V!47489 V!47489 (_ BitVec 32) Int) ListLongMap!18463)

(assert (=> b!1250227 (= lt!564102 (getCurrentListMap!4467 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250228 () Bool)

(declare-fun e!709759 () Bool)

(assert (=> b!1250228 (= e!709761 (and e!709759 mapRes!49153))))

(declare-fun condMapEmpty!49153 () Bool)

(declare-fun mapDefault!49153 () ValueCell!15033)

(assert (=> b!1250228 (= condMapEmpty!49153 (= (arr!38980 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15033)) mapDefault!49153)))))

(declare-fun b!1250229 () Bool)

(assert (=> b!1250229 (= e!709763 true)))

(declare-fun -!2015 (ListLongMap!18463 (_ BitVec 64)) ListLongMap!18463)

(assert (=> b!1250229 (= (-!2015 lt!564102 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564102)))

(declare-datatypes ((Unit!41475 0))(
  ( (Unit!41476) )
))
(declare-fun lt!564100 () Unit!41475)

(declare-fun removeNotPresentStillSame!82 (ListLongMap!18463 (_ BitVec 64)) Unit!41475)

(assert (=> b!1250229 (= lt!564100 (removeNotPresentStillSame!82 lt!564102 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250230 () Bool)

(assert (=> b!1250230 (= e!709759 tp_is_empty!31593)))

(declare-fun mapIsEmpty!49153 () Bool)

(assert (=> mapIsEmpty!49153 mapRes!49153))

(declare-fun b!1250231 () Bool)

(assert (=> b!1250231 (= e!709762 (not e!709765))))

(declare-fun res!834011 () Bool)

(assert (=> b!1250231 (=> res!834011 e!709765)))

(assert (=> b!1250231 (= res!834011 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564101 () ListLongMap!18463)

(declare-fun lt!564103 () ListLongMap!18463)

(assert (=> b!1250231 (= lt!564101 lt!564103)))

(declare-fun minValueAfter!43 () V!47489)

(declare-fun lt!564099 () Unit!41475)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!946 (array!80839 array!80837 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47489 V!47489 V!47489 V!47489 (_ BitVec 32) Int) Unit!41475)

(assert (=> b!1250231 (= lt!564099 (lemmaNoChangeToArrayThenSameMapNoExtras!946 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5628 (array!80839 array!80837 (_ BitVec 32) (_ BitVec 32) V!47489 V!47489 (_ BitVec 32) Int) ListLongMap!18463)

(assert (=> b!1250231 (= lt!564103 (getCurrentListMapNoExtraKeys!5628 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250231 (= lt!564101 (getCurrentListMapNoExtraKeys!5628 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!104936 res!834014) b!1250224))

(assert (= (and b!1250224 res!834015) b!1250225))

(assert (= (and b!1250225 res!834012) b!1250226))

(assert (= (and b!1250226 res!834013) b!1250231))

(assert (= (and b!1250231 (not res!834011)) b!1250227))

(assert (= (and b!1250227 (not res!834016)) b!1250229))

(assert (= (and b!1250228 condMapEmpty!49153) mapIsEmpty!49153))

(assert (= (and b!1250228 (not condMapEmpty!49153)) mapNonEmpty!49153))

(get-info :version)

(assert (= (and mapNonEmpty!49153 ((_ is ValueCellFull!15033) mapValue!49153)) b!1250223))

(assert (= (and b!1250228 ((_ is ValueCellFull!15033) mapDefault!49153)) b!1250230))

(assert (= start!104936 b!1250228))

(declare-fun m!1151101 () Bool)

(assert (=> start!104936 m!1151101))

(declare-fun m!1151103 () Bool)

(assert (=> start!104936 m!1151103))

(declare-fun m!1151105 () Bool)

(assert (=> start!104936 m!1151105))

(declare-fun m!1151107 () Bool)

(assert (=> mapNonEmpty!49153 m!1151107))

(declare-fun m!1151109 () Bool)

(assert (=> b!1250226 m!1151109))

(declare-fun m!1151111 () Bool)

(assert (=> b!1250231 m!1151111))

(declare-fun m!1151113 () Bool)

(assert (=> b!1250231 m!1151113))

(declare-fun m!1151115 () Bool)

(assert (=> b!1250231 m!1151115))

(declare-fun m!1151117 () Bool)

(assert (=> b!1250229 m!1151117))

(declare-fun m!1151119 () Bool)

(assert (=> b!1250229 m!1151119))

(declare-fun m!1151121 () Bool)

(assert (=> b!1250227 m!1151121))

(declare-fun m!1151123 () Bool)

(assert (=> b!1250227 m!1151123))

(declare-fun m!1151125 () Bool)

(assert (=> b!1250225 m!1151125))

(check-sat tp_is_empty!31593 (not b_next!26691) (not b!1250229) b_and!44477 (not b!1250226) (not mapNonEmpty!49153) (not start!104936) (not b!1250225) (not b!1250231) (not b!1250227))
(check-sat b_and!44477 (not b_next!26691))
