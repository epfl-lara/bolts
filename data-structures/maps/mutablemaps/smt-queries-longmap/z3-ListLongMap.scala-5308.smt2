; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71094 () Bool)

(assert start!71094)

(declare-fun b_free!13257 () Bool)

(declare-fun b_next!13257 () Bool)

(assert (=> start!71094 (= b_free!13257 (not b_next!13257))))

(declare-fun tp!46528 () Bool)

(declare-fun b_and!22189 () Bool)

(assert (=> start!71094 (= tp!46528 b_and!22189)))

(declare-fun b!825159 () Bool)

(declare-fun res!562629 () Bool)

(declare-fun e!459286 () Bool)

(assert (=> b!825159 (=> (not res!562629) (not e!459286))))

(declare-datatypes ((array!46078 0))(
  ( (array!46079 (arr!22081 (Array (_ BitVec 32) (_ BitVec 64))) (size!22502 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46078)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24957 0))(
  ( (V!24958 (val!7531 Int)) )
))
(declare-datatypes ((ValueCell!7068 0))(
  ( (ValueCellFull!7068 (v!9960 V!24957)) (EmptyCell!7068) )
))
(declare-datatypes ((array!46080 0))(
  ( (array!46081 (arr!22082 (Array (_ BitVec 32) ValueCell!7068)) (size!22503 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46080)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!825159 (= res!562629 (and (= (size!22503 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22502 _keys!976) (size!22503 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825160 () Bool)

(declare-fun e!459280 () Bool)

(assert (=> b!825160 (= e!459280 true)))

(declare-datatypes ((tuple2!9966 0))(
  ( (tuple2!9967 (_1!4993 (_ BitVec 64)) (_2!4993 V!24957)) )
))
(declare-datatypes ((List!15812 0))(
  ( (Nil!15809) (Cons!15808 (h!16937 tuple2!9966) (t!22165 List!15812)) )
))
(declare-datatypes ((ListLongMap!8803 0))(
  ( (ListLongMap!8804 (toList!4417 List!15812)) )
))
(declare-fun lt!372454 () ListLongMap!8803)

(declare-fun lt!372461 () ListLongMap!8803)

(declare-fun lt!372459 () tuple2!9966)

(declare-fun lt!372457 () tuple2!9966)

(declare-fun +!1879 (ListLongMap!8803 tuple2!9966) ListLongMap!8803)

(assert (=> b!825160 (= lt!372461 (+!1879 (+!1879 lt!372454 lt!372457) lt!372459))))

(declare-fun lt!372452 () ListLongMap!8803)

(declare-fun lt!372450 () ListLongMap!8803)

(declare-fun lt!372456 () ListLongMap!8803)

(assert (=> b!825160 (and (= lt!372452 lt!372450) (= lt!372456 lt!372450) (= lt!372456 lt!372452))))

(declare-fun lt!372453 () ListLongMap!8803)

(assert (=> b!825160 (= lt!372450 (+!1879 lt!372453 lt!372457))))

(declare-fun lt!372451 () ListLongMap!8803)

(assert (=> b!825160 (= lt!372452 (+!1879 lt!372451 lt!372457))))

(declare-fun zeroValueBefore!34 () V!24957)

(declare-fun zeroValueAfter!34 () V!24957)

(declare-datatypes ((Unit!28275 0))(
  ( (Unit!28276) )
))
(declare-fun lt!372449 () Unit!28275)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!207 (ListLongMap!8803 (_ BitVec 64) V!24957 V!24957) Unit!28275)

(assert (=> b!825160 (= lt!372449 (addSameAsAddTwiceSameKeyDiffValues!207 lt!372451 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459281 () Bool)

(assert (=> b!825160 e!459281))

(declare-fun res!562624 () Bool)

(assert (=> b!825160 (=> (not res!562624) (not e!459281))))

(declare-fun lt!372460 () ListLongMap!8803)

(assert (=> b!825160 (= res!562624 (= lt!372460 lt!372453))))

(declare-fun lt!372448 () tuple2!9966)

(assert (=> b!825160 (= lt!372453 (+!1879 lt!372451 lt!372448))))

(assert (=> b!825160 (= lt!372451 (+!1879 lt!372454 lt!372459))))

(assert (=> b!825160 (= lt!372457 (tuple2!9967 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!459283 () Bool)

(assert (=> b!825160 e!459283))

(declare-fun res!562625 () Bool)

(assert (=> b!825160 (=> (not res!562625) (not e!459283))))

(assert (=> b!825160 (= res!562625 (= lt!372460 (+!1879 (+!1879 lt!372454 lt!372448) lt!372459)))))

(declare-fun minValue!754 () V!24957)

(assert (=> b!825160 (= lt!372459 (tuple2!9967 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825160 (= lt!372448 (tuple2!9967 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2529 (array!46078 array!46080 (_ BitVec 32) (_ BitVec 32) V!24957 V!24957 (_ BitVec 32) Int) ListLongMap!8803)

(assert (=> b!825160 (= lt!372456 (getCurrentListMap!2529 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825160 (= lt!372460 (getCurrentListMap!2529 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825161 () Bool)

(declare-fun res!562627 () Bool)

(assert (=> b!825161 (=> (not res!562627) (not e!459286))))

(declare-datatypes ((List!15813 0))(
  ( (Nil!15810) (Cons!15809 (h!16938 (_ BitVec 64)) (t!22166 List!15813)) )
))
(declare-fun arrayNoDuplicates!0 (array!46078 (_ BitVec 32) List!15813) Bool)

(assert (=> b!825161 (= res!562627 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15810))))

(declare-fun b!825162 () Bool)

(declare-fun e!459284 () Bool)

(declare-fun tp_is_empty!14967 () Bool)

(assert (=> b!825162 (= e!459284 tp_is_empty!14967)))

(declare-fun res!562628 () Bool)

(assert (=> start!71094 (=> (not res!562628) (not e!459286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71094 (= res!562628 (validMask!0 mask!1312))))

(assert (=> start!71094 e!459286))

(assert (=> start!71094 tp_is_empty!14967))

(declare-fun array_inv!17591 (array!46078) Bool)

(assert (=> start!71094 (array_inv!17591 _keys!976)))

(assert (=> start!71094 true))

(declare-fun e!459282 () Bool)

(declare-fun array_inv!17592 (array!46080) Bool)

(assert (=> start!71094 (and (array_inv!17592 _values!788) e!459282)))

(assert (=> start!71094 tp!46528))

(declare-fun lt!372455 () ListLongMap!8803)

(declare-fun b!825163 () Bool)

(assert (=> b!825163 (= e!459281 (= lt!372456 (+!1879 (+!1879 lt!372455 lt!372459) lt!372457)))))

(declare-fun b!825164 () Bool)

(declare-fun e!459285 () Bool)

(assert (=> b!825164 (= e!459285 tp_is_empty!14967)))

(declare-fun b!825165 () Bool)

(assert (=> b!825165 (= e!459283 (= lt!372456 (+!1879 (+!1879 lt!372455 (tuple2!9967 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372459)))))

(declare-fun b!825166 () Bool)

(assert (=> b!825166 (= e!459286 (not e!459280))))

(declare-fun res!562626 () Bool)

(assert (=> b!825166 (=> res!562626 e!459280)))

(assert (=> b!825166 (= res!562626 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!825166 (= lt!372454 lt!372455)))

(declare-fun lt!372458 () Unit!28275)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!550 (array!46078 array!46080 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24957 V!24957 V!24957 V!24957 (_ BitVec 32) Int) Unit!28275)

(assert (=> b!825166 (= lt!372458 (lemmaNoChangeToArrayThenSameMapNoExtras!550 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2434 (array!46078 array!46080 (_ BitVec 32) (_ BitVec 32) V!24957 V!24957 (_ BitVec 32) Int) ListLongMap!8803)

(assert (=> b!825166 (= lt!372455 (getCurrentListMapNoExtraKeys!2434 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825166 (= lt!372454 (getCurrentListMapNoExtraKeys!2434 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!825167 () Bool)

(declare-fun res!562623 () Bool)

(assert (=> b!825167 (=> (not res!562623) (not e!459286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46078 (_ BitVec 32)) Bool)

(assert (=> b!825167 (= res!562623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!825168 () Bool)

(declare-fun mapRes!24073 () Bool)

(assert (=> b!825168 (= e!459282 (and e!459284 mapRes!24073))))

(declare-fun condMapEmpty!24073 () Bool)

(declare-fun mapDefault!24073 () ValueCell!7068)

(assert (=> b!825168 (= condMapEmpty!24073 (= (arr!22082 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7068)) mapDefault!24073)))))

(declare-fun mapIsEmpty!24073 () Bool)

(assert (=> mapIsEmpty!24073 mapRes!24073))

(declare-fun mapNonEmpty!24073 () Bool)

(declare-fun tp!46527 () Bool)

(assert (=> mapNonEmpty!24073 (= mapRes!24073 (and tp!46527 e!459285))))

(declare-fun mapValue!24073 () ValueCell!7068)

(declare-fun mapRest!24073 () (Array (_ BitVec 32) ValueCell!7068))

(declare-fun mapKey!24073 () (_ BitVec 32))

(assert (=> mapNonEmpty!24073 (= (arr!22082 _values!788) (store mapRest!24073 mapKey!24073 mapValue!24073))))

(assert (= (and start!71094 res!562628) b!825159))

(assert (= (and b!825159 res!562629) b!825167))

(assert (= (and b!825167 res!562623) b!825161))

(assert (= (and b!825161 res!562627) b!825166))

(assert (= (and b!825166 (not res!562626)) b!825160))

(assert (= (and b!825160 res!562625) b!825165))

(assert (= (and b!825160 res!562624) b!825163))

(assert (= (and b!825168 condMapEmpty!24073) mapIsEmpty!24073))

(assert (= (and b!825168 (not condMapEmpty!24073)) mapNonEmpty!24073))

(get-info :version)

(assert (= (and mapNonEmpty!24073 ((_ is ValueCellFull!7068) mapValue!24073)) b!825164))

(assert (= (and b!825168 ((_ is ValueCellFull!7068) mapDefault!24073)) b!825162))

(assert (= start!71094 b!825168))

(declare-fun m!767339 () Bool)

(assert (=> b!825161 m!767339))

(declare-fun m!767341 () Bool)

(assert (=> b!825160 m!767341))

(declare-fun m!767343 () Bool)

(assert (=> b!825160 m!767343))

(declare-fun m!767345 () Bool)

(assert (=> b!825160 m!767345))

(declare-fun m!767347 () Bool)

(assert (=> b!825160 m!767347))

(declare-fun m!767349 () Bool)

(assert (=> b!825160 m!767349))

(assert (=> b!825160 m!767349))

(declare-fun m!767351 () Bool)

(assert (=> b!825160 m!767351))

(declare-fun m!767353 () Bool)

(assert (=> b!825160 m!767353))

(declare-fun m!767355 () Bool)

(assert (=> b!825160 m!767355))

(assert (=> b!825160 m!767345))

(declare-fun m!767357 () Bool)

(assert (=> b!825160 m!767357))

(declare-fun m!767359 () Bool)

(assert (=> b!825160 m!767359))

(declare-fun m!767361 () Bool)

(assert (=> b!825160 m!767361))

(declare-fun m!767363 () Bool)

(assert (=> b!825166 m!767363))

(declare-fun m!767365 () Bool)

(assert (=> b!825166 m!767365))

(declare-fun m!767367 () Bool)

(assert (=> b!825166 m!767367))

(declare-fun m!767369 () Bool)

(assert (=> mapNonEmpty!24073 m!767369))

(declare-fun m!767371 () Bool)

(assert (=> b!825163 m!767371))

(assert (=> b!825163 m!767371))

(declare-fun m!767373 () Bool)

(assert (=> b!825163 m!767373))

(declare-fun m!767375 () Bool)

(assert (=> b!825167 m!767375))

(declare-fun m!767377 () Bool)

(assert (=> start!71094 m!767377))

(declare-fun m!767379 () Bool)

(assert (=> start!71094 m!767379))

(declare-fun m!767381 () Bool)

(assert (=> start!71094 m!767381))

(declare-fun m!767383 () Bool)

(assert (=> b!825165 m!767383))

(assert (=> b!825165 m!767383))

(declare-fun m!767385 () Bool)

(assert (=> b!825165 m!767385))

(check-sat (not b!825165) (not b!825163) tp_is_empty!14967 (not b_next!13257) (not b!825160) b_and!22189 (not b!825161) (not b!825167) (not mapNonEmpty!24073) (not start!71094) (not b!825166))
(check-sat b_and!22189 (not b_next!13257))
