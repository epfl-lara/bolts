; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70652 () Bool)

(assert start!70652)

(declare-fun b_free!12915 () Bool)

(declare-fun b_next!12915 () Bool)

(assert (=> start!70652 (= b_free!12915 (not b_next!12915))))

(declare-fun tp!45484 () Bool)

(declare-fun b_and!21787 () Bool)

(assert (=> start!70652 (= tp!45484 b_and!21787)))

(declare-fun b!820329 () Bool)

(declare-fun res!559825 () Bool)

(declare-fun e!455784 () Bool)

(assert (=> b!820329 (=> (not res!559825) (not e!455784))))

(declare-datatypes ((array!45412 0))(
  ( (array!45413 (arr!21754 (Array (_ BitVec 32) (_ BitVec 64))) (size!22175 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45412)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24501 0))(
  ( (V!24502 (val!7360 Int)) )
))
(declare-datatypes ((ValueCell!6897 0))(
  ( (ValueCellFull!6897 (v!9787 V!24501)) (EmptyCell!6897) )
))
(declare-datatypes ((array!45414 0))(
  ( (array!45415 (arr!21755 (Array (_ BitVec 32) ValueCell!6897)) (size!22176 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45414)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!820329 (= res!559825 (and (= (size!22176 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22175 _keys!976) (size!22176 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820330 () Bool)

(declare-fun res!559827 () Bool)

(assert (=> b!820330 (=> (not res!559827) (not e!455784))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45412 (_ BitVec 32)) Bool)

(assert (=> b!820330 (= res!559827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820331 () Bool)

(declare-fun e!455783 () Bool)

(declare-fun tp_is_empty!14625 () Bool)

(assert (=> b!820331 (= e!455783 tp_is_empty!14625)))

(declare-fun b!820332 () Bool)

(declare-fun e!455782 () Bool)

(assert (=> b!820332 (= e!455782 tp_is_empty!14625)))

(declare-fun mapNonEmpty!23542 () Bool)

(declare-fun mapRes!23542 () Bool)

(declare-fun tp!45483 () Bool)

(assert (=> mapNonEmpty!23542 (= mapRes!23542 (and tp!45483 e!455783))))

(declare-fun mapKey!23542 () (_ BitVec 32))

(declare-fun mapValue!23542 () ValueCell!6897)

(declare-fun mapRest!23542 () (Array (_ BitVec 32) ValueCell!6897))

(assert (=> mapNonEmpty!23542 (= (arr!21755 _values!788) (store mapRest!23542 mapKey!23542 mapValue!23542))))

(declare-fun b!820333 () Bool)

(declare-fun e!455781 () Bool)

(assert (=> b!820333 (= e!455781 (and e!455782 mapRes!23542))))

(declare-fun condMapEmpty!23542 () Bool)

(declare-fun mapDefault!23542 () ValueCell!6897)

(assert (=> b!820333 (= condMapEmpty!23542 (= (arr!21755 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6897)) mapDefault!23542)))))

(declare-fun mapIsEmpty!23542 () Bool)

(assert (=> mapIsEmpty!23542 mapRes!23542))

(declare-fun res!559824 () Bool)

(assert (=> start!70652 (=> (not res!559824) (not e!455784))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70652 (= res!559824 (validMask!0 mask!1312))))

(assert (=> start!70652 e!455784))

(assert (=> start!70652 tp_is_empty!14625))

(declare-fun array_inv!17355 (array!45412) Bool)

(assert (=> start!70652 (array_inv!17355 _keys!976)))

(assert (=> start!70652 true))

(declare-fun array_inv!17356 (array!45414) Bool)

(assert (=> start!70652 (and (array_inv!17356 _values!788) e!455781)))

(assert (=> start!70652 tp!45484))

(declare-fun b!820334 () Bool)

(declare-fun res!559826 () Bool)

(assert (=> b!820334 (=> (not res!559826) (not e!455784))))

(declare-datatypes ((List!15560 0))(
  ( (Nil!15557) (Cons!15556 (h!16685 (_ BitVec 64)) (t!21901 List!15560)) )
))
(declare-fun arrayNoDuplicates!0 (array!45412 (_ BitVec 32) List!15560) Bool)

(assert (=> b!820334 (= res!559826 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15557))))

(declare-fun b!820335 () Bool)

(assert (=> b!820335 (= e!455784 (not true))))

(declare-datatypes ((tuple2!9702 0))(
  ( (tuple2!9703 (_1!4861 (_ BitVec 64)) (_2!4861 V!24501)) )
))
(declare-datatypes ((List!15561 0))(
  ( (Nil!15558) (Cons!15557 (h!16686 tuple2!9702) (t!21902 List!15561)) )
))
(declare-datatypes ((ListLongMap!8539 0))(
  ( (ListLongMap!8540 (toList!4285 List!15561)) )
))
(declare-fun lt!368731 () ListLongMap!8539)

(declare-fun lt!368733 () ListLongMap!8539)

(assert (=> b!820335 (= lt!368731 lt!368733)))

(declare-datatypes ((Unit!28023 0))(
  ( (Unit!28024) )
))
(declare-fun lt!368732 () Unit!28023)

(declare-fun zeroValueBefore!34 () V!24501)

(declare-fun zeroValueAfter!34 () V!24501)

(declare-fun minValue!754 () V!24501)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!435 (array!45412 array!45414 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24501 V!24501 V!24501 V!24501 (_ BitVec 32) Int) Unit!28023)

(assert (=> b!820335 (= lt!368732 (lemmaNoChangeToArrayThenSameMapNoExtras!435 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2319 (array!45412 array!45414 (_ BitVec 32) (_ BitVec 32) V!24501 V!24501 (_ BitVec 32) Int) ListLongMap!8539)

(assert (=> b!820335 (= lt!368733 (getCurrentListMapNoExtraKeys!2319 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820335 (= lt!368731 (getCurrentListMapNoExtraKeys!2319 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70652 res!559824) b!820329))

(assert (= (and b!820329 res!559825) b!820330))

(assert (= (and b!820330 res!559827) b!820334))

(assert (= (and b!820334 res!559826) b!820335))

(assert (= (and b!820333 condMapEmpty!23542) mapIsEmpty!23542))

(assert (= (and b!820333 (not condMapEmpty!23542)) mapNonEmpty!23542))

(get-info :version)

(assert (= (and mapNonEmpty!23542 ((_ is ValueCellFull!6897) mapValue!23542)) b!820331))

(assert (= (and b!820333 ((_ is ValueCellFull!6897) mapDefault!23542)) b!820332))

(assert (= start!70652 b!820333))

(declare-fun m!762369 () Bool)

(assert (=> mapNonEmpty!23542 m!762369))

(declare-fun m!762371 () Bool)

(assert (=> b!820334 m!762371))

(declare-fun m!762373 () Bool)

(assert (=> b!820330 m!762373))

(declare-fun m!762375 () Bool)

(assert (=> start!70652 m!762375))

(declare-fun m!762377 () Bool)

(assert (=> start!70652 m!762377))

(declare-fun m!762379 () Bool)

(assert (=> start!70652 m!762379))

(declare-fun m!762381 () Bool)

(assert (=> b!820335 m!762381))

(declare-fun m!762383 () Bool)

(assert (=> b!820335 m!762383))

(declare-fun m!762385 () Bool)

(assert (=> b!820335 m!762385))

(check-sat (not b_next!12915) (not start!70652) (not b!820334) (not b!820330) tp_is_empty!14625 b_and!21787 (not b!820335) (not mapNonEmpty!23542))
(check-sat b_and!21787 (not b_next!12915))
