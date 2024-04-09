; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71260 () Bool)

(assert start!71260)

(declare-fun b_free!13383 () Bool)

(declare-fun b_next!13383 () Bool)

(assert (=> start!71260 (= b_free!13383 (not b_next!13383))))

(declare-fun tp!46912 () Bool)

(declare-fun b_and!22339 () Bool)

(assert (=> start!71260 (= tp!46912 b_and!22339)))

(declare-fun b!827311 () Bool)

(declare-fun e!460906 () Bool)

(assert (=> b!827311 (= e!460906 false)))

(declare-datatypes ((array!46320 0))(
  ( (array!46321 (arr!22200 (Array (_ BitVec 32) (_ BitVec 64))) (size!22621 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46320)

(declare-datatypes ((V!25125 0))(
  ( (V!25126 (val!7594 Int)) )
))
(declare-fun zeroValueAfter!34 () V!25125)

(declare-fun minValue!754 () V!25125)

(declare-datatypes ((ValueCell!7131 0))(
  ( (ValueCellFull!7131 (v!10025 V!25125)) (EmptyCell!7131) )
))
(declare-datatypes ((array!46322 0))(
  ( (array!46323 (arr!22201 (Array (_ BitVec 32) ValueCell!7131)) (size!22622 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46322)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10074 0))(
  ( (tuple2!10075 (_1!5047 (_ BitVec 64)) (_2!5047 V!25125)) )
))
(declare-datatypes ((List!15912 0))(
  ( (Nil!15909) (Cons!15908 (h!17037 tuple2!10074) (t!22269 List!15912)) )
))
(declare-datatypes ((ListLongMap!8911 0))(
  ( (ListLongMap!8912 (toList!4471 List!15912)) )
))
(declare-fun lt!374860 () ListLongMap!8911)

(declare-fun getCurrentListMapNoExtraKeys!2478 (array!46320 array!46322 (_ BitVec 32) (_ BitVec 32) V!25125 V!25125 (_ BitVec 32) Int) ListLongMap!8911)

(assert (=> b!827311 (= lt!374860 (getCurrentListMapNoExtraKeys!2478 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374859 () ListLongMap!8911)

(declare-fun zeroValueBefore!34 () V!25125)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!827311 (= lt!374859 (getCurrentListMapNoExtraKeys!2478 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827312 () Bool)

(declare-fun res!564006 () Bool)

(assert (=> b!827312 (=> (not res!564006) (not e!460906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46320 (_ BitVec 32)) Bool)

(assert (=> b!827312 (= res!564006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827314 () Bool)

(declare-fun res!564007 () Bool)

(assert (=> b!827314 (=> (not res!564007) (not e!460906))))

(declare-datatypes ((List!15913 0))(
  ( (Nil!15910) (Cons!15909 (h!17038 (_ BitVec 64)) (t!22270 List!15913)) )
))
(declare-fun arrayNoDuplicates!0 (array!46320 (_ BitVec 32) List!15913) Bool)

(assert (=> b!827314 (= res!564007 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15910))))

(declare-fun mapIsEmpty!24268 () Bool)

(declare-fun mapRes!24268 () Bool)

(assert (=> mapIsEmpty!24268 mapRes!24268))

(declare-fun b!827315 () Bool)

(declare-fun e!460905 () Bool)

(declare-fun e!460904 () Bool)

(assert (=> b!827315 (= e!460905 (and e!460904 mapRes!24268))))

(declare-fun condMapEmpty!24268 () Bool)

(declare-fun mapDefault!24268 () ValueCell!7131)

(assert (=> b!827315 (= condMapEmpty!24268 (= (arr!22201 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7131)) mapDefault!24268)))))

(declare-fun mapNonEmpty!24268 () Bool)

(declare-fun tp!46911 () Bool)

(declare-fun e!460902 () Bool)

(assert (=> mapNonEmpty!24268 (= mapRes!24268 (and tp!46911 e!460902))))

(declare-fun mapValue!24268 () ValueCell!7131)

(declare-fun mapRest!24268 () (Array (_ BitVec 32) ValueCell!7131))

(declare-fun mapKey!24268 () (_ BitVec 32))

(assert (=> mapNonEmpty!24268 (= (arr!22201 _values!788) (store mapRest!24268 mapKey!24268 mapValue!24268))))

(declare-fun res!564004 () Bool)

(assert (=> start!71260 (=> (not res!564004) (not e!460906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71260 (= res!564004 (validMask!0 mask!1312))))

(assert (=> start!71260 e!460906))

(declare-fun tp_is_empty!15093 () Bool)

(assert (=> start!71260 tp_is_empty!15093))

(declare-fun array_inv!17673 (array!46320) Bool)

(assert (=> start!71260 (array_inv!17673 _keys!976)))

(assert (=> start!71260 true))

(declare-fun array_inv!17674 (array!46322) Bool)

(assert (=> start!71260 (and (array_inv!17674 _values!788) e!460905)))

(assert (=> start!71260 tp!46912))

(declare-fun b!827313 () Bool)

(assert (=> b!827313 (= e!460904 tp_is_empty!15093)))

(declare-fun b!827316 () Bool)

(assert (=> b!827316 (= e!460902 tp_is_empty!15093)))

(declare-fun b!827317 () Bool)

(declare-fun res!564005 () Bool)

(assert (=> b!827317 (=> (not res!564005) (not e!460906))))

(assert (=> b!827317 (= res!564005 (and (= (size!22622 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22621 _keys!976) (size!22622 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!71260 res!564004) b!827317))

(assert (= (and b!827317 res!564005) b!827312))

(assert (= (and b!827312 res!564006) b!827314))

(assert (= (and b!827314 res!564007) b!827311))

(assert (= (and b!827315 condMapEmpty!24268) mapIsEmpty!24268))

(assert (= (and b!827315 (not condMapEmpty!24268)) mapNonEmpty!24268))

(get-info :version)

(assert (= (and mapNonEmpty!24268 ((_ is ValueCellFull!7131) mapValue!24268)) b!827316))

(assert (= (and b!827315 ((_ is ValueCellFull!7131) mapDefault!24268)) b!827313))

(assert (= start!71260 b!827315))

(declare-fun m!770477 () Bool)

(assert (=> start!71260 m!770477))

(declare-fun m!770479 () Bool)

(assert (=> start!71260 m!770479))

(declare-fun m!770481 () Bool)

(assert (=> start!71260 m!770481))

(declare-fun m!770483 () Bool)

(assert (=> b!827312 m!770483))

(declare-fun m!770485 () Bool)

(assert (=> b!827314 m!770485))

(declare-fun m!770487 () Bool)

(assert (=> b!827311 m!770487))

(declare-fun m!770489 () Bool)

(assert (=> b!827311 m!770489))

(declare-fun m!770491 () Bool)

(assert (=> mapNonEmpty!24268 m!770491))

(check-sat tp_is_empty!15093 (not b_next!13383) (not mapNonEmpty!24268) (not b!827311) (not b!827314) (not b!827312) b_and!22339 (not start!71260))
(check-sat b_and!22339 (not b_next!13383))
