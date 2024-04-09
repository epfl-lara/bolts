; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70658 () Bool)

(assert start!70658)

(declare-fun b_free!12921 () Bool)

(declare-fun b_next!12921 () Bool)

(assert (=> start!70658 (= b_free!12921 (not b_next!12921))))

(declare-fun tp!45502 () Bool)

(declare-fun b_and!21793 () Bool)

(assert (=> start!70658 (= tp!45502 b_and!21793)))

(declare-fun mapNonEmpty!23551 () Bool)

(declare-fun mapRes!23551 () Bool)

(declare-fun tp!45501 () Bool)

(declare-fun e!455825 () Bool)

(assert (=> mapNonEmpty!23551 (= mapRes!23551 (and tp!45501 e!455825))))

(declare-datatypes ((V!24509 0))(
  ( (V!24510 (val!7363 Int)) )
))
(declare-datatypes ((ValueCell!6900 0))(
  ( (ValueCellFull!6900 (v!9790 V!24509)) (EmptyCell!6900) )
))
(declare-fun mapValue!23551 () ValueCell!6900)

(declare-fun mapKey!23551 () (_ BitVec 32))

(declare-datatypes ((array!45424 0))(
  ( (array!45425 (arr!21760 (Array (_ BitVec 32) ValueCell!6900)) (size!22181 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45424)

(declare-fun mapRest!23551 () (Array (_ BitVec 32) ValueCell!6900))

(assert (=> mapNonEmpty!23551 (= (arr!21760 _values!788) (store mapRest!23551 mapKey!23551 mapValue!23551))))

(declare-fun b!820392 () Bool)

(declare-fun e!455826 () Bool)

(assert (=> b!820392 (= e!455826 (not true))))

(declare-datatypes ((tuple2!9706 0))(
  ( (tuple2!9707 (_1!4863 (_ BitVec 64)) (_2!4863 V!24509)) )
))
(declare-datatypes ((List!15565 0))(
  ( (Nil!15562) (Cons!15561 (h!16690 tuple2!9706) (t!21906 List!15565)) )
))
(declare-datatypes ((ListLongMap!8543 0))(
  ( (ListLongMap!8544 (toList!4287 List!15565)) )
))
(declare-fun lt!368758 () ListLongMap!8543)

(declare-fun lt!368759 () ListLongMap!8543)

(assert (=> b!820392 (= lt!368758 lt!368759)))

(declare-fun zeroValueBefore!34 () V!24509)

(declare-datatypes ((array!45426 0))(
  ( (array!45427 (arr!21761 (Array (_ BitVec 32) (_ BitVec 64))) (size!22182 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45426)

(declare-fun zeroValueAfter!34 () V!24509)

(declare-fun minValue!754 () V!24509)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((Unit!28027 0))(
  ( (Unit!28028) )
))
(declare-fun lt!368760 () Unit!28027)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!437 (array!45426 array!45424 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24509 V!24509 V!24509 V!24509 (_ BitVec 32) Int) Unit!28027)

(assert (=> b!820392 (= lt!368760 (lemmaNoChangeToArrayThenSameMapNoExtras!437 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2321 (array!45426 array!45424 (_ BitVec 32) (_ BitVec 32) V!24509 V!24509 (_ BitVec 32) Int) ListLongMap!8543)

(assert (=> b!820392 (= lt!368759 (getCurrentListMapNoExtraKeys!2321 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820392 (= lt!368758 (getCurrentListMapNoExtraKeys!2321 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820393 () Bool)

(declare-fun res!559861 () Bool)

(assert (=> b!820393 (=> (not res!559861) (not e!455826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45426 (_ BitVec 32)) Bool)

(assert (=> b!820393 (= res!559861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820394 () Bool)

(declare-fun res!559862 () Bool)

(assert (=> b!820394 (=> (not res!559862) (not e!455826))))

(assert (=> b!820394 (= res!559862 (and (= (size!22181 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22182 _keys!976) (size!22181 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!559863 () Bool)

(assert (=> start!70658 (=> (not res!559863) (not e!455826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70658 (= res!559863 (validMask!0 mask!1312))))

(assert (=> start!70658 e!455826))

(declare-fun tp_is_empty!14631 () Bool)

(assert (=> start!70658 tp_is_empty!14631))

(declare-fun array_inv!17361 (array!45426) Bool)

(assert (=> start!70658 (array_inv!17361 _keys!976)))

(assert (=> start!70658 true))

(declare-fun e!455827 () Bool)

(declare-fun array_inv!17362 (array!45424) Bool)

(assert (=> start!70658 (and (array_inv!17362 _values!788) e!455827)))

(assert (=> start!70658 tp!45502))

(declare-fun b!820395 () Bool)

(declare-fun e!455829 () Bool)

(assert (=> b!820395 (= e!455827 (and e!455829 mapRes!23551))))

(declare-fun condMapEmpty!23551 () Bool)

(declare-fun mapDefault!23551 () ValueCell!6900)

(assert (=> b!820395 (= condMapEmpty!23551 (= (arr!21760 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6900)) mapDefault!23551)))))

(declare-fun b!820396 () Bool)

(declare-fun res!559860 () Bool)

(assert (=> b!820396 (=> (not res!559860) (not e!455826))))

(declare-datatypes ((List!15566 0))(
  ( (Nil!15563) (Cons!15562 (h!16691 (_ BitVec 64)) (t!21907 List!15566)) )
))
(declare-fun arrayNoDuplicates!0 (array!45426 (_ BitVec 32) List!15566) Bool)

(assert (=> b!820396 (= res!559860 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15563))))

(declare-fun mapIsEmpty!23551 () Bool)

(assert (=> mapIsEmpty!23551 mapRes!23551))

(declare-fun b!820397 () Bool)

(assert (=> b!820397 (= e!455825 tp_is_empty!14631)))

(declare-fun b!820398 () Bool)

(assert (=> b!820398 (= e!455829 tp_is_empty!14631)))

(assert (= (and start!70658 res!559863) b!820394))

(assert (= (and b!820394 res!559862) b!820393))

(assert (= (and b!820393 res!559861) b!820396))

(assert (= (and b!820396 res!559860) b!820392))

(assert (= (and b!820395 condMapEmpty!23551) mapIsEmpty!23551))

(assert (= (and b!820395 (not condMapEmpty!23551)) mapNonEmpty!23551))

(get-info :version)

(assert (= (and mapNonEmpty!23551 ((_ is ValueCellFull!6900) mapValue!23551)) b!820397))

(assert (= (and b!820395 ((_ is ValueCellFull!6900) mapDefault!23551)) b!820398))

(assert (= start!70658 b!820395))

(declare-fun m!762423 () Bool)

(assert (=> start!70658 m!762423))

(declare-fun m!762425 () Bool)

(assert (=> start!70658 m!762425))

(declare-fun m!762427 () Bool)

(assert (=> start!70658 m!762427))

(declare-fun m!762429 () Bool)

(assert (=> b!820393 m!762429))

(declare-fun m!762431 () Bool)

(assert (=> b!820396 m!762431))

(declare-fun m!762433 () Bool)

(assert (=> mapNonEmpty!23551 m!762433))

(declare-fun m!762435 () Bool)

(assert (=> b!820392 m!762435))

(declare-fun m!762437 () Bool)

(assert (=> b!820392 m!762437))

(declare-fun m!762439 () Bool)

(assert (=> b!820392 m!762439))

(check-sat (not b!820396) b_and!21793 (not b_next!12921) (not b!820393) (not mapNonEmpty!23551) (not b!820392) (not start!70658) tp_is_empty!14631)
(check-sat b_and!21793 (not b_next!12921))
