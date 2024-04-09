; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71248 () Bool)

(assert start!71248)

(declare-fun b_free!13371 () Bool)

(declare-fun b_next!13371 () Bool)

(assert (=> start!71248 (= b_free!13371 (not b_next!13371))))

(declare-fun tp!46875 () Bool)

(declare-fun b_and!22327 () Bool)

(assert (=> start!71248 (= tp!46875 b_and!22327)))

(declare-fun b!827185 () Bool)

(declare-fun e!460814 () Bool)

(declare-fun tp_is_empty!15081 () Bool)

(assert (=> b!827185 (= e!460814 tp_is_empty!15081)))

(declare-fun b!827186 () Bool)

(declare-fun res!563932 () Bool)

(declare-fun e!460815 () Bool)

(assert (=> b!827186 (=> (not res!563932) (not e!460815))))

(declare-datatypes ((array!46296 0))(
  ( (array!46297 (arr!22188 (Array (_ BitVec 32) (_ BitVec 64))) (size!22609 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46296)

(declare-datatypes ((List!15902 0))(
  ( (Nil!15899) (Cons!15898 (h!17027 (_ BitVec 64)) (t!22259 List!15902)) )
))
(declare-fun arrayNoDuplicates!0 (array!46296 (_ BitVec 32) List!15902) Bool)

(assert (=> b!827186 (= res!563932 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15899))))

(declare-fun b!827187 () Bool)

(declare-fun e!460816 () Bool)

(assert (=> b!827187 (= e!460816 tp_is_empty!15081)))

(declare-fun res!563935 () Bool)

(assert (=> start!71248 (=> (not res!563935) (not e!460815))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71248 (= res!563935 (validMask!0 mask!1312))))

(assert (=> start!71248 e!460815))

(assert (=> start!71248 tp_is_empty!15081))

(declare-fun array_inv!17667 (array!46296) Bool)

(assert (=> start!71248 (array_inv!17667 _keys!976)))

(assert (=> start!71248 true))

(declare-datatypes ((V!25109 0))(
  ( (V!25110 (val!7588 Int)) )
))
(declare-datatypes ((ValueCell!7125 0))(
  ( (ValueCellFull!7125 (v!10019 V!25109)) (EmptyCell!7125) )
))
(declare-datatypes ((array!46298 0))(
  ( (array!46299 (arr!22189 (Array (_ BitVec 32) ValueCell!7125)) (size!22610 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46298)

(declare-fun e!460813 () Bool)

(declare-fun array_inv!17668 (array!46298) Bool)

(assert (=> start!71248 (and (array_inv!17668 _values!788) e!460813)))

(assert (=> start!71248 tp!46875))

(declare-fun b!827188 () Bool)

(declare-fun mapRes!24250 () Bool)

(assert (=> b!827188 (= e!460813 (and e!460814 mapRes!24250))))

(declare-fun condMapEmpty!24250 () Bool)

(declare-fun mapDefault!24250 () ValueCell!7125)

(assert (=> b!827188 (= condMapEmpty!24250 (= (arr!22189 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7125)) mapDefault!24250)))))

(declare-fun mapNonEmpty!24250 () Bool)

(declare-fun tp!46876 () Bool)

(assert (=> mapNonEmpty!24250 (= mapRes!24250 (and tp!46876 e!460816))))

(declare-fun mapKey!24250 () (_ BitVec 32))

(declare-fun mapRest!24250 () (Array (_ BitVec 32) ValueCell!7125))

(declare-fun mapValue!24250 () ValueCell!7125)

(assert (=> mapNonEmpty!24250 (= (arr!22189 _values!788) (store mapRest!24250 mapKey!24250 mapValue!24250))))

(declare-fun b!827189 () Bool)

(declare-fun res!563934 () Bool)

(assert (=> b!827189 (=> (not res!563934) (not e!460815))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827189 (= res!563934 (and (= (size!22610 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22609 _keys!976) (size!22610 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827190 () Bool)

(assert (=> b!827190 (= e!460815 false)))

(declare-fun zeroValueAfter!34 () V!25109)

(declare-fun minValue!754 () V!25109)

(declare-datatypes ((tuple2!10066 0))(
  ( (tuple2!10067 (_1!5043 (_ BitVec 64)) (_2!5043 V!25109)) )
))
(declare-datatypes ((List!15903 0))(
  ( (Nil!15900) (Cons!15899 (h!17028 tuple2!10066) (t!22260 List!15903)) )
))
(declare-datatypes ((ListLongMap!8903 0))(
  ( (ListLongMap!8904 (toList!4467 List!15903)) )
))
(declare-fun lt!374824 () ListLongMap!8903)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2474 (array!46296 array!46298 (_ BitVec 32) (_ BitVec 32) V!25109 V!25109 (_ BitVec 32) Int) ListLongMap!8903)

(assert (=> b!827190 (= lt!374824 (getCurrentListMapNoExtraKeys!2474 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25109)

(declare-fun lt!374823 () ListLongMap!8903)

(assert (=> b!827190 (= lt!374823 (getCurrentListMapNoExtraKeys!2474 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827191 () Bool)

(declare-fun res!563933 () Bool)

(assert (=> b!827191 (=> (not res!563933) (not e!460815))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46296 (_ BitVec 32)) Bool)

(assert (=> b!827191 (= res!563933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24250 () Bool)

(assert (=> mapIsEmpty!24250 mapRes!24250))

(assert (= (and start!71248 res!563935) b!827189))

(assert (= (and b!827189 res!563934) b!827191))

(assert (= (and b!827191 res!563933) b!827186))

(assert (= (and b!827186 res!563932) b!827190))

(assert (= (and b!827188 condMapEmpty!24250) mapIsEmpty!24250))

(assert (= (and b!827188 (not condMapEmpty!24250)) mapNonEmpty!24250))

(get-info :version)

(assert (= (and mapNonEmpty!24250 ((_ is ValueCellFull!7125) mapValue!24250)) b!827187))

(assert (= (and b!827188 ((_ is ValueCellFull!7125) mapDefault!24250)) b!827185))

(assert (= start!71248 b!827188))

(declare-fun m!770381 () Bool)

(assert (=> b!827191 m!770381))

(declare-fun m!770383 () Bool)

(assert (=> b!827186 m!770383))

(declare-fun m!770385 () Bool)

(assert (=> mapNonEmpty!24250 m!770385))

(declare-fun m!770387 () Bool)

(assert (=> b!827190 m!770387))

(declare-fun m!770389 () Bool)

(assert (=> b!827190 m!770389))

(declare-fun m!770391 () Bool)

(assert (=> start!71248 m!770391))

(declare-fun m!770393 () Bool)

(assert (=> start!71248 m!770393))

(declare-fun m!770395 () Bool)

(assert (=> start!71248 m!770395))

(check-sat b_and!22327 (not b_next!13371) (not mapNonEmpty!24250) (not start!71248) (not b!827191) tp_is_empty!15081 (not b!827186) (not b!827190))
(check-sat b_and!22327 (not b_next!13371))
