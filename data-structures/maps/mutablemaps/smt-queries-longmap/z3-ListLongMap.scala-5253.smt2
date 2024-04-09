; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70664 () Bool)

(assert start!70664)

(declare-fun b_free!12927 () Bool)

(declare-fun b_next!12927 () Bool)

(assert (=> start!70664 (= b_free!12927 (not b_next!12927))))

(declare-fun tp!45520 () Bool)

(declare-fun b_and!21799 () Bool)

(assert (=> start!70664 (= tp!45520 b_and!21799)))

(declare-fun b!820455 () Bool)

(declare-fun res!559897 () Bool)

(declare-fun e!455873 () Bool)

(assert (=> b!820455 (=> (not res!559897) (not e!455873))))

(declare-datatypes ((array!45436 0))(
  ( (array!45437 (arr!21766 (Array (_ BitVec 32) (_ BitVec 64))) (size!22187 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45436)

(declare-datatypes ((List!15568 0))(
  ( (Nil!15565) (Cons!15564 (h!16693 (_ BitVec 64)) (t!21909 List!15568)) )
))
(declare-fun arrayNoDuplicates!0 (array!45436 (_ BitVec 32) List!15568) Bool)

(assert (=> b!820455 (= res!559897 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15565))))

(declare-fun b!820456 () Bool)

(declare-fun e!455874 () Bool)

(declare-fun e!455871 () Bool)

(declare-fun mapRes!23560 () Bool)

(assert (=> b!820456 (= e!455874 (and e!455871 mapRes!23560))))

(declare-fun condMapEmpty!23560 () Bool)

(declare-datatypes ((V!24517 0))(
  ( (V!24518 (val!7366 Int)) )
))
(declare-datatypes ((ValueCell!6903 0))(
  ( (ValueCellFull!6903 (v!9793 V!24517)) (EmptyCell!6903) )
))
(declare-datatypes ((array!45438 0))(
  ( (array!45439 (arr!21767 (Array (_ BitVec 32) ValueCell!6903)) (size!22188 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45438)

(declare-fun mapDefault!23560 () ValueCell!6903)

(assert (=> b!820456 (= condMapEmpty!23560 (= (arr!21767 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6903)) mapDefault!23560)))))

(declare-fun res!559899 () Bool)

(assert (=> start!70664 (=> (not res!559899) (not e!455873))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70664 (= res!559899 (validMask!0 mask!1312))))

(assert (=> start!70664 e!455873))

(declare-fun tp_is_empty!14637 () Bool)

(assert (=> start!70664 tp_is_empty!14637))

(declare-fun array_inv!17365 (array!45436) Bool)

(assert (=> start!70664 (array_inv!17365 _keys!976)))

(assert (=> start!70664 true))

(declare-fun array_inv!17366 (array!45438) Bool)

(assert (=> start!70664 (and (array_inv!17366 _values!788) e!455874)))

(assert (=> start!70664 tp!45520))

(declare-fun mapNonEmpty!23560 () Bool)

(declare-fun tp!45519 () Bool)

(declare-fun e!455870 () Bool)

(assert (=> mapNonEmpty!23560 (= mapRes!23560 (and tp!45519 e!455870))))

(declare-fun mapKey!23560 () (_ BitVec 32))

(declare-fun mapRest!23560 () (Array (_ BitVec 32) ValueCell!6903))

(declare-fun mapValue!23560 () ValueCell!6903)

(assert (=> mapNonEmpty!23560 (= (arr!21767 _values!788) (store mapRest!23560 mapKey!23560 mapValue!23560))))

(declare-fun b!820457 () Bool)

(assert (=> b!820457 (= e!455873 (not true))))

(declare-datatypes ((tuple2!9708 0))(
  ( (tuple2!9709 (_1!4864 (_ BitVec 64)) (_2!4864 V!24517)) )
))
(declare-datatypes ((List!15569 0))(
  ( (Nil!15566) (Cons!15565 (h!16694 tuple2!9708) (t!21910 List!15569)) )
))
(declare-datatypes ((ListLongMap!8545 0))(
  ( (ListLongMap!8546 (toList!4288 List!15569)) )
))
(declare-fun lt!368785 () ListLongMap!8545)

(declare-fun lt!368786 () ListLongMap!8545)

(assert (=> b!820457 (= lt!368785 lt!368786)))

(declare-fun zeroValueBefore!34 () V!24517)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24517)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28029 0))(
  ( (Unit!28030) )
))
(declare-fun lt!368787 () Unit!28029)

(declare-fun zeroValueAfter!34 () V!24517)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!438 (array!45436 array!45438 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24517 V!24517 V!24517 V!24517 (_ BitVec 32) Int) Unit!28029)

(assert (=> b!820457 (= lt!368787 (lemmaNoChangeToArrayThenSameMapNoExtras!438 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2322 (array!45436 array!45438 (_ BitVec 32) (_ BitVec 32) V!24517 V!24517 (_ BitVec 32) Int) ListLongMap!8545)

(assert (=> b!820457 (= lt!368786 (getCurrentListMapNoExtraKeys!2322 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820457 (= lt!368785 (getCurrentListMapNoExtraKeys!2322 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820458 () Bool)

(declare-fun res!559896 () Bool)

(assert (=> b!820458 (=> (not res!559896) (not e!455873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45436 (_ BitVec 32)) Bool)

(assert (=> b!820458 (= res!559896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820459 () Bool)

(declare-fun res!559898 () Bool)

(assert (=> b!820459 (=> (not res!559898) (not e!455873))))

(assert (=> b!820459 (= res!559898 (and (= (size!22188 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22187 _keys!976) (size!22188 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23560 () Bool)

(assert (=> mapIsEmpty!23560 mapRes!23560))

(declare-fun b!820460 () Bool)

(assert (=> b!820460 (= e!455871 tp_is_empty!14637)))

(declare-fun b!820461 () Bool)

(assert (=> b!820461 (= e!455870 tp_is_empty!14637)))

(assert (= (and start!70664 res!559899) b!820459))

(assert (= (and b!820459 res!559898) b!820458))

(assert (= (and b!820458 res!559896) b!820455))

(assert (= (and b!820455 res!559897) b!820457))

(assert (= (and b!820456 condMapEmpty!23560) mapIsEmpty!23560))

(assert (= (and b!820456 (not condMapEmpty!23560)) mapNonEmpty!23560))

(get-info :version)

(assert (= (and mapNonEmpty!23560 ((_ is ValueCellFull!6903) mapValue!23560)) b!820461))

(assert (= (and b!820456 ((_ is ValueCellFull!6903) mapDefault!23560)) b!820460))

(assert (= start!70664 b!820456))

(declare-fun m!762477 () Bool)

(assert (=> mapNonEmpty!23560 m!762477))

(declare-fun m!762479 () Bool)

(assert (=> start!70664 m!762479))

(declare-fun m!762481 () Bool)

(assert (=> start!70664 m!762481))

(declare-fun m!762483 () Bool)

(assert (=> start!70664 m!762483))

(declare-fun m!762485 () Bool)

(assert (=> b!820455 m!762485))

(declare-fun m!762487 () Bool)

(assert (=> b!820458 m!762487))

(declare-fun m!762489 () Bool)

(assert (=> b!820457 m!762489))

(declare-fun m!762491 () Bool)

(assert (=> b!820457 m!762491))

(declare-fun m!762493 () Bool)

(assert (=> b!820457 m!762493))

(check-sat tp_is_empty!14637 (not b!820457) (not b!820458) b_and!21799 (not b_next!12927) (not mapNonEmpty!23560) (not start!70664) (not b!820455))
(check-sat b_and!21799 (not b_next!12927))
