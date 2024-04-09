; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71452 () Bool)

(assert start!71452)

(declare-fun b_free!13473 () Bool)

(declare-fun b_next!13473 () Bool)

(assert (=> start!71452 (= b_free!13473 (not b_next!13473))))

(declare-fun tp!47199 () Bool)

(declare-fun b_and!22497 () Bool)

(assert (=> start!71452 (= tp!47199 b_and!22497)))

(declare-fun b!829367 () Bool)

(declare-fun res!565092 () Bool)

(declare-fun e!462331 () Bool)

(assert (=> b!829367 (=> (not res!565092) (not e!462331))))

(declare-datatypes ((array!46510 0))(
  ( (array!46511 (arr!22289 (Array (_ BitVec 32) (_ BitVec 64))) (size!22710 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46510)

(declare-datatypes ((List!15987 0))(
  ( (Nil!15984) (Cons!15983 (h!17112 (_ BitVec 64)) (t!22356 List!15987)) )
))
(declare-fun arrayNoDuplicates!0 (array!46510 (_ BitVec 32) List!15987) Bool)

(assert (=> b!829367 (= res!565092 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15984))))

(declare-fun mapNonEmpty!24421 () Bool)

(declare-fun mapRes!24421 () Bool)

(declare-fun tp!47200 () Bool)

(declare-fun e!462330 () Bool)

(assert (=> mapNonEmpty!24421 (= mapRes!24421 (and tp!47200 e!462330))))

(declare-fun mapKey!24421 () (_ BitVec 32))

(declare-datatypes ((V!25245 0))(
  ( (V!25246 (val!7639 Int)) )
))
(declare-datatypes ((ValueCell!7176 0))(
  ( (ValueCellFull!7176 (v!10075 V!25245)) (EmptyCell!7176) )
))
(declare-datatypes ((array!46512 0))(
  ( (array!46513 (arr!22290 (Array (_ BitVec 32) ValueCell!7176)) (size!22711 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46512)

(declare-fun mapRest!24421 () (Array (_ BitVec 32) ValueCell!7176))

(declare-fun mapValue!24421 () ValueCell!7176)

(assert (=> mapNonEmpty!24421 (= (arr!22290 _values!788) (store mapRest!24421 mapKey!24421 mapValue!24421))))

(declare-fun b!829368 () Bool)

(declare-fun res!565094 () Bool)

(assert (=> b!829368 (=> (not res!565094) (not e!462331))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!829368 (= res!565094 (and (= (size!22711 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22710 _keys!976) (size!22711 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!829369 () Bool)

(declare-fun e!462335 () Bool)

(assert (=> b!829369 (= e!462335 true)))

(declare-fun e!462332 () Bool)

(assert (=> b!829369 e!462332))

(declare-fun res!565095 () Bool)

(assert (=> b!829369 (=> (not res!565095) (not e!462332))))

(declare-datatypes ((tuple2!10156 0))(
  ( (tuple2!10157 (_1!5088 (_ BitVec 64)) (_2!5088 V!25245)) )
))
(declare-datatypes ((List!15988 0))(
  ( (Nil!15985) (Cons!15984 (h!17113 tuple2!10156) (t!22357 List!15988)) )
))
(declare-datatypes ((ListLongMap!8993 0))(
  ( (ListLongMap!8994 (toList!4512 List!15988)) )
))
(declare-fun lt!376119 () ListLongMap!8993)

(declare-fun lt!376117 () tuple2!10156)

(declare-fun lt!376114 () ListLongMap!8993)

(declare-fun +!1943 (ListLongMap!8993 tuple2!10156) ListLongMap!8993)

(assert (=> b!829369 (= res!565095 (= lt!376119 (+!1943 lt!376114 lt!376117)))))

(declare-fun minValue!754 () V!25245)

(assert (=> b!829369 (= lt!376117 (tuple2!10157 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun zeroValueAfter!34 () V!25245)

(declare-fun defaultEntry!796 () Int)

(declare-fun lt!376118 () ListLongMap!8993)

(declare-fun getCurrentListMap!2585 (array!46510 array!46512 (_ BitVec 32) (_ BitVec 32) V!25245 V!25245 (_ BitVec 32) Int) ListLongMap!8993)

(assert (=> b!829369 (= lt!376118 (getCurrentListMap!2585 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25245)

(assert (=> b!829369 (= lt!376119 (getCurrentListMap!2585 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829370 () Bool)

(declare-fun e!462333 () Bool)

(declare-fun tp_is_empty!15183 () Bool)

(assert (=> b!829370 (= e!462333 tp_is_empty!15183)))

(declare-fun res!565091 () Bool)

(assert (=> start!71452 (=> (not res!565091) (not e!462331))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71452 (= res!565091 (validMask!0 mask!1312))))

(assert (=> start!71452 e!462331))

(assert (=> start!71452 tp_is_empty!15183))

(declare-fun array_inv!17731 (array!46510) Bool)

(assert (=> start!71452 (array_inv!17731 _keys!976)))

(assert (=> start!71452 true))

(declare-fun e!462336 () Bool)

(declare-fun array_inv!17732 (array!46512) Bool)

(assert (=> start!71452 (and (array_inv!17732 _values!788) e!462336)))

(assert (=> start!71452 tp!47199))

(declare-fun b!829371 () Bool)

(declare-fun res!565093 () Bool)

(assert (=> b!829371 (=> (not res!565093) (not e!462331))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46510 (_ BitVec 32)) Bool)

(assert (=> b!829371 (= res!565093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24421 () Bool)

(assert (=> mapIsEmpty!24421 mapRes!24421))

(declare-fun b!829372 () Bool)

(assert (=> b!829372 (= e!462330 tp_is_empty!15183)))

(declare-fun b!829373 () Bool)

(assert (=> b!829373 (= e!462332 (= lt!376118 (+!1943 (+!1943 lt!376114 (tuple2!10157 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!376117)))))

(declare-fun b!829374 () Bool)

(assert (=> b!829374 (= e!462336 (and e!462333 mapRes!24421))))

(declare-fun condMapEmpty!24421 () Bool)

(declare-fun mapDefault!24421 () ValueCell!7176)

(assert (=> b!829374 (= condMapEmpty!24421 (= (arr!22290 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7176)) mapDefault!24421)))))

(declare-fun b!829375 () Bool)

(assert (=> b!829375 (= e!462331 (not e!462335))))

(declare-fun res!565096 () Bool)

(assert (=> b!829375 (=> res!565096 e!462335)))

(assert (=> b!829375 (= res!565096 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!376116 () ListLongMap!8993)

(assert (=> b!829375 (= lt!376114 lt!376116)))

(declare-datatypes ((Unit!28413 0))(
  ( (Unit!28414) )
))
(declare-fun lt!376115 () Unit!28413)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!602 (array!46510 array!46512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25245 V!25245 V!25245 V!25245 (_ BitVec 32) Int) Unit!28413)

(assert (=> b!829375 (= lt!376115 (lemmaNoChangeToArrayThenSameMapNoExtras!602 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2512 (array!46510 array!46512 (_ BitVec 32) (_ BitVec 32) V!25245 V!25245 (_ BitVec 32) Int) ListLongMap!8993)

(assert (=> b!829375 (= lt!376116 (getCurrentListMapNoExtraKeys!2512 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829375 (= lt!376114 (getCurrentListMapNoExtraKeys!2512 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!71452 res!565091) b!829368))

(assert (= (and b!829368 res!565094) b!829371))

(assert (= (and b!829371 res!565093) b!829367))

(assert (= (and b!829367 res!565092) b!829375))

(assert (= (and b!829375 (not res!565096)) b!829369))

(assert (= (and b!829369 res!565095) b!829373))

(assert (= (and b!829374 condMapEmpty!24421) mapIsEmpty!24421))

(assert (= (and b!829374 (not condMapEmpty!24421)) mapNonEmpty!24421))

(get-info :version)

(assert (= (and mapNonEmpty!24421 ((_ is ValueCellFull!7176) mapValue!24421)) b!829372))

(assert (= (and b!829374 ((_ is ValueCellFull!7176) mapDefault!24421)) b!829370))

(assert (= start!71452 b!829374))

(declare-fun m!772447 () Bool)

(assert (=> start!71452 m!772447))

(declare-fun m!772449 () Bool)

(assert (=> start!71452 m!772449))

(declare-fun m!772451 () Bool)

(assert (=> start!71452 m!772451))

(declare-fun m!772453 () Bool)

(assert (=> b!829369 m!772453))

(declare-fun m!772455 () Bool)

(assert (=> b!829369 m!772455))

(declare-fun m!772457 () Bool)

(assert (=> b!829369 m!772457))

(declare-fun m!772459 () Bool)

(assert (=> b!829375 m!772459))

(declare-fun m!772461 () Bool)

(assert (=> b!829375 m!772461))

(declare-fun m!772463 () Bool)

(assert (=> b!829375 m!772463))

(declare-fun m!772465 () Bool)

(assert (=> b!829373 m!772465))

(assert (=> b!829373 m!772465))

(declare-fun m!772467 () Bool)

(assert (=> b!829373 m!772467))

(declare-fun m!772469 () Bool)

(assert (=> b!829371 m!772469))

(declare-fun m!772471 () Bool)

(assert (=> b!829367 m!772471))

(declare-fun m!772473 () Bool)

(assert (=> mapNonEmpty!24421 m!772473))

(check-sat (not b!829367) (not b_next!13473) b_and!22497 (not b!829371) (not mapNonEmpty!24421) (not b!829375) tp_is_empty!15183 (not start!71452) (not b!829373) (not b!829369))
(check-sat b_and!22497 (not b_next!13473))
