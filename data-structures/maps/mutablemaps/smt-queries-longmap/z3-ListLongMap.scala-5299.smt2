; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71024 () Bool)

(assert start!71024)

(declare-fun b_free!13203 () Bool)

(declare-fun b_next!13203 () Bool)

(assert (=> start!71024 (= b_free!13203 (not b_next!13203))))

(declare-fun tp!46363 () Bool)

(declare-fun b_and!22125 () Bool)

(assert (=> start!71024 (= tp!46363 b_and!22125)))

(declare-fun b!824317 () Bool)

(declare-fun e!458655 () Bool)

(declare-fun tp_is_empty!14913 () Bool)

(assert (=> b!824317 (= e!458655 tp_is_empty!14913)))

(declare-fun b!824318 () Bool)

(declare-fun e!458657 () Bool)

(declare-fun mapRes!23989 () Bool)

(assert (=> b!824318 (= e!458657 (and e!458655 mapRes!23989))))

(declare-fun condMapEmpty!23989 () Bool)

(declare-datatypes ((V!24885 0))(
  ( (V!24886 (val!7504 Int)) )
))
(declare-datatypes ((ValueCell!7041 0))(
  ( (ValueCellFull!7041 (v!9933 V!24885)) (EmptyCell!7041) )
))
(declare-datatypes ((array!45972 0))(
  ( (array!45973 (arr!22029 (Array (_ BitVec 32) ValueCell!7041)) (size!22450 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45972)

(declare-fun mapDefault!23989 () ValueCell!7041)

(assert (=> b!824318 (= condMapEmpty!23989 (= (arr!22029 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7041)) mapDefault!23989)))))

(declare-fun b!824319 () Bool)

(declare-fun res!562118 () Bool)

(declare-fun e!458654 () Bool)

(assert (=> b!824319 (=> (not res!562118) (not e!458654))))

(declare-datatypes ((array!45974 0))(
  ( (array!45975 (arr!22030 (Array (_ BitVec 32) (_ BitVec 64))) (size!22451 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45974)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45974 (_ BitVec 32)) Bool)

(assert (=> b!824319 (= res!562118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!562116 () Bool)

(assert (=> start!71024 (=> (not res!562116) (not e!458654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71024 (= res!562116 (validMask!0 mask!1312))))

(assert (=> start!71024 e!458654))

(assert (=> start!71024 tp_is_empty!14913))

(declare-fun array_inv!17553 (array!45974) Bool)

(assert (=> start!71024 (array_inv!17553 _keys!976)))

(assert (=> start!71024 true))

(declare-fun array_inv!17554 (array!45972) Bool)

(assert (=> start!71024 (and (array_inv!17554 _values!788) e!458657)))

(assert (=> start!71024 tp!46363))

(declare-fun mapNonEmpty!23989 () Bool)

(declare-fun tp!46362 () Bool)

(declare-fun e!458658 () Bool)

(assert (=> mapNonEmpty!23989 (= mapRes!23989 (and tp!46362 e!458658))))

(declare-fun mapValue!23989 () ValueCell!7041)

(declare-fun mapRest!23989 () (Array (_ BitVec 32) ValueCell!7041))

(declare-fun mapKey!23989 () (_ BitVec 32))

(assert (=> mapNonEmpty!23989 (= (arr!22029 _values!788) (store mapRest!23989 mapKey!23989 mapValue!23989))))

(declare-fun b!824320 () Bool)

(assert (=> b!824320 (= e!458658 tp_is_empty!14913)))

(declare-fun b!824321 () Bool)

(declare-fun e!458659 () Bool)

(assert (=> b!824321 (= e!458654 (not e!458659))))

(declare-fun res!562115 () Bool)

(assert (=> b!824321 (=> res!562115 e!458659)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!824321 (= res!562115 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9918 0))(
  ( (tuple2!9919 (_1!4969 (_ BitVec 64)) (_2!4969 V!24885)) )
))
(declare-datatypes ((List!15773 0))(
  ( (Nil!15770) (Cons!15769 (h!16898 tuple2!9918) (t!22124 List!15773)) )
))
(declare-datatypes ((ListLongMap!8755 0))(
  ( (ListLongMap!8756 (toList!4393 List!15773)) )
))
(declare-fun lt!371791 () ListLongMap!8755)

(declare-fun lt!371790 () ListLongMap!8755)

(assert (=> b!824321 (= lt!371791 lt!371790)))

(declare-datatypes ((Unit!28232 0))(
  ( (Unit!28233) )
))
(declare-fun lt!371788 () Unit!28232)

(declare-fun zeroValueBefore!34 () V!24885)

(declare-fun zeroValueAfter!34 () V!24885)

(declare-fun minValue!754 () V!24885)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!531 (array!45974 array!45972 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24885 V!24885 V!24885 V!24885 (_ BitVec 32) Int) Unit!28232)

(assert (=> b!824321 (= lt!371788 (lemmaNoChangeToArrayThenSameMapNoExtras!531 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2415 (array!45974 array!45972 (_ BitVec 32) (_ BitVec 32) V!24885 V!24885 (_ BitVec 32) Int) ListLongMap!8755)

(assert (=> b!824321 (= lt!371790 (getCurrentListMapNoExtraKeys!2415 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!824321 (= lt!371791 (getCurrentListMapNoExtraKeys!2415 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23989 () Bool)

(assert (=> mapIsEmpty!23989 mapRes!23989))

(declare-fun b!824322 () Bool)

(declare-fun res!562114 () Bool)

(assert (=> b!824322 (=> (not res!562114) (not e!458654))))

(declare-datatypes ((List!15774 0))(
  ( (Nil!15771) (Cons!15770 (h!16899 (_ BitVec 64)) (t!22125 List!15774)) )
))
(declare-fun arrayNoDuplicates!0 (array!45974 (_ BitVec 32) List!15774) Bool)

(assert (=> b!824322 (= res!562114 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15771))))

(declare-fun b!824323 () Bool)

(declare-fun res!562117 () Bool)

(assert (=> b!824323 (=> (not res!562117) (not e!458654))))

(assert (=> b!824323 (= res!562117 (and (= (size!22450 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22451 _keys!976) (size!22450 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!824324 () Bool)

(assert (=> b!824324 (= e!458659 true)))

(declare-fun lt!371789 () ListLongMap!8755)

(declare-fun getCurrentListMap!2507 (array!45974 array!45972 (_ BitVec 32) (_ BitVec 32) V!24885 V!24885 (_ BitVec 32) Int) ListLongMap!8755)

(assert (=> b!824324 (= lt!371789 (getCurrentListMap!2507 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!71024 res!562116) b!824323))

(assert (= (and b!824323 res!562117) b!824319))

(assert (= (and b!824319 res!562118) b!824322))

(assert (= (and b!824322 res!562114) b!824321))

(assert (= (and b!824321 (not res!562115)) b!824324))

(assert (= (and b!824318 condMapEmpty!23989) mapIsEmpty!23989))

(assert (= (and b!824318 (not condMapEmpty!23989)) mapNonEmpty!23989))

(get-info :version)

(assert (= (and mapNonEmpty!23989 ((_ is ValueCellFull!7041) mapValue!23989)) b!824320))

(assert (= (and b!824318 ((_ is ValueCellFull!7041) mapDefault!23989)) b!824317))

(assert (= start!71024 b!824318))

(declare-fun m!766491 () Bool)

(assert (=> mapNonEmpty!23989 m!766491))

(declare-fun m!766493 () Bool)

(assert (=> b!824322 m!766493))

(declare-fun m!766495 () Bool)

(assert (=> b!824319 m!766495))

(declare-fun m!766497 () Bool)

(assert (=> start!71024 m!766497))

(declare-fun m!766499 () Bool)

(assert (=> start!71024 m!766499))

(declare-fun m!766501 () Bool)

(assert (=> start!71024 m!766501))

(declare-fun m!766503 () Bool)

(assert (=> b!824321 m!766503))

(declare-fun m!766505 () Bool)

(assert (=> b!824321 m!766505))

(declare-fun m!766507 () Bool)

(assert (=> b!824321 m!766507))

(declare-fun m!766509 () Bool)

(assert (=> b!824324 m!766509))

(check-sat b_and!22125 (not start!71024) tp_is_empty!14913 (not b!824322) (not mapNonEmpty!23989) (not b!824321) (not b_next!13203) (not b!824319) (not b!824324))
(check-sat b_and!22125 (not b_next!13203))
