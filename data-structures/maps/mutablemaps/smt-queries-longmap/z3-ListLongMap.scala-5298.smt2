; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71018 () Bool)

(assert start!71018)

(declare-fun b_free!13197 () Bool)

(declare-fun b_next!13197 () Bool)

(assert (=> start!71018 (= b_free!13197 (not b_next!13197))))

(declare-fun tp!46344 () Bool)

(declare-fun b_and!22119 () Bool)

(assert (=> start!71018 (= tp!46344 b_and!22119)))

(declare-fun b!824245 () Bool)

(declare-fun e!458600 () Bool)

(declare-fun tp_is_empty!14907 () Bool)

(assert (=> b!824245 (= e!458600 tp_is_empty!14907)))

(declare-fun b!824247 () Bool)

(declare-fun res!562073 () Bool)

(declare-fun e!458601 () Bool)

(assert (=> b!824247 (=> (not res!562073) (not e!458601))))

(declare-datatypes ((array!45962 0))(
  ( (array!45963 (arr!22024 (Array (_ BitVec 32) (_ BitVec 64))) (size!22445 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45962)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24877 0))(
  ( (V!24878 (val!7501 Int)) )
))
(declare-datatypes ((ValueCell!7038 0))(
  ( (ValueCellFull!7038 (v!9930 V!24877)) (EmptyCell!7038) )
))
(declare-datatypes ((array!45964 0))(
  ( (array!45965 (arr!22025 (Array (_ BitVec 32) ValueCell!7038)) (size!22446 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45964)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!824247 (= res!562073 (and (= (size!22446 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22445 _keys!976) (size!22446 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824248 () Bool)

(declare-fun res!562069 () Bool)

(assert (=> b!824248 (=> (not res!562069) (not e!458601))))

(declare-datatypes ((List!15769 0))(
  ( (Nil!15766) (Cons!15765 (h!16894 (_ BitVec 64)) (t!22120 List!15769)) )
))
(declare-fun arrayNoDuplicates!0 (array!45962 (_ BitVec 32) List!15769) Bool)

(assert (=> b!824248 (= res!562069 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15766))))

(declare-fun mapNonEmpty!23980 () Bool)

(declare-fun mapRes!23980 () Bool)

(declare-fun tp!46345 () Bool)

(assert (=> mapNonEmpty!23980 (= mapRes!23980 (and tp!46345 e!458600))))

(declare-fun mapValue!23980 () ValueCell!7038)

(declare-fun mapKey!23980 () (_ BitVec 32))

(declare-fun mapRest!23980 () (Array (_ BitVec 32) ValueCell!7038))

(assert (=> mapNonEmpty!23980 (= (arr!22025 _values!788) (store mapRest!23980 mapKey!23980 mapValue!23980))))

(declare-fun mapIsEmpty!23980 () Bool)

(assert (=> mapIsEmpty!23980 mapRes!23980))

(declare-fun b!824249 () Bool)

(declare-fun e!458602 () Bool)

(assert (=> b!824249 (= e!458602 tp_is_empty!14907)))

(declare-fun b!824250 () Bool)

(declare-fun res!562071 () Bool)

(assert (=> b!824250 (=> (not res!562071) (not e!458601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45962 (_ BitVec 32)) Bool)

(assert (=> b!824250 (= res!562071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!824251 () Bool)

(declare-fun e!458603 () Bool)

(assert (=> b!824251 (= e!458601 (not e!458603))))

(declare-fun res!562072 () Bool)

(assert (=> b!824251 (=> res!562072 e!458603)))

(assert (=> b!824251 (= res!562072 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9914 0))(
  ( (tuple2!9915 (_1!4967 (_ BitVec 64)) (_2!4967 V!24877)) )
))
(declare-datatypes ((List!15770 0))(
  ( (Nil!15767) (Cons!15766 (h!16895 tuple2!9914) (t!22121 List!15770)) )
))
(declare-datatypes ((ListLongMap!8751 0))(
  ( (ListLongMap!8752 (toList!4391 List!15770)) )
))
(declare-fun lt!371755 () ListLongMap!8751)

(declare-fun lt!371754 () ListLongMap!8751)

(assert (=> b!824251 (= lt!371755 lt!371754)))

(declare-fun zeroValueAfter!34 () V!24877)

(declare-fun minValue!754 () V!24877)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28228 0))(
  ( (Unit!28229) )
))
(declare-fun lt!371752 () Unit!28228)

(declare-fun zeroValueBefore!34 () V!24877)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!529 (array!45962 array!45964 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24877 V!24877 V!24877 V!24877 (_ BitVec 32) Int) Unit!28228)

(assert (=> b!824251 (= lt!371752 (lemmaNoChangeToArrayThenSameMapNoExtras!529 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2413 (array!45962 array!45964 (_ BitVec 32) (_ BitVec 32) V!24877 V!24877 (_ BitVec 32) Int) ListLongMap!8751)

(assert (=> b!824251 (= lt!371754 (getCurrentListMapNoExtraKeys!2413 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824251 (= lt!371755 (getCurrentListMapNoExtraKeys!2413 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!824252 () Bool)

(declare-fun e!458604 () Bool)

(assert (=> b!824252 (= e!458604 (and e!458602 mapRes!23980))))

(declare-fun condMapEmpty!23980 () Bool)

(declare-fun mapDefault!23980 () ValueCell!7038)

(assert (=> b!824252 (= condMapEmpty!23980 (= (arr!22025 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7038)) mapDefault!23980)))))

(declare-fun res!562070 () Bool)

(assert (=> start!71018 (=> (not res!562070) (not e!458601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71018 (= res!562070 (validMask!0 mask!1312))))

(assert (=> start!71018 e!458601))

(assert (=> start!71018 tp_is_empty!14907))

(declare-fun array_inv!17551 (array!45962) Bool)

(assert (=> start!71018 (array_inv!17551 _keys!976)))

(assert (=> start!71018 true))

(declare-fun array_inv!17552 (array!45964) Bool)

(assert (=> start!71018 (and (array_inv!17552 _values!788) e!458604)))

(assert (=> start!71018 tp!46344))

(declare-fun b!824246 () Bool)

(assert (=> b!824246 (= e!458603 true)))

(declare-fun lt!371753 () ListLongMap!8751)

(declare-fun getCurrentListMap!2505 (array!45962 array!45964 (_ BitVec 32) (_ BitVec 32) V!24877 V!24877 (_ BitVec 32) Int) ListLongMap!8751)

(assert (=> b!824246 (= lt!371753 (getCurrentListMap!2505 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!71018 res!562070) b!824247))

(assert (= (and b!824247 res!562073) b!824250))

(assert (= (and b!824250 res!562071) b!824248))

(assert (= (and b!824248 res!562069) b!824251))

(assert (= (and b!824251 (not res!562072)) b!824246))

(assert (= (and b!824252 condMapEmpty!23980) mapIsEmpty!23980))

(assert (= (and b!824252 (not condMapEmpty!23980)) mapNonEmpty!23980))

(get-info :version)

(assert (= (and mapNonEmpty!23980 ((_ is ValueCellFull!7038) mapValue!23980)) b!824245))

(assert (= (and b!824252 ((_ is ValueCellFull!7038) mapDefault!23980)) b!824249))

(assert (= start!71018 b!824252))

(declare-fun m!766431 () Bool)

(assert (=> mapNonEmpty!23980 m!766431))

(declare-fun m!766433 () Bool)

(assert (=> b!824246 m!766433))

(declare-fun m!766435 () Bool)

(assert (=> start!71018 m!766435))

(declare-fun m!766437 () Bool)

(assert (=> start!71018 m!766437))

(declare-fun m!766439 () Bool)

(assert (=> start!71018 m!766439))

(declare-fun m!766441 () Bool)

(assert (=> b!824251 m!766441))

(declare-fun m!766443 () Bool)

(assert (=> b!824251 m!766443))

(declare-fun m!766445 () Bool)

(assert (=> b!824251 m!766445))

(declare-fun m!766447 () Bool)

(assert (=> b!824248 m!766447))

(declare-fun m!766449 () Bool)

(assert (=> b!824250 m!766449))

(check-sat b_and!22119 (not b!824248) (not mapNonEmpty!23980) (not start!71018) (not b_next!13197) tp_is_empty!14907 (not b!824246) (not b!824251) (not b!824250))
(check-sat b_and!22119 (not b_next!13197))
