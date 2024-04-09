; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71272 () Bool)

(assert start!71272)

(declare-fun b_free!13395 () Bool)

(declare-fun b_next!13395 () Bool)

(assert (=> start!71272 (= b_free!13395 (not b_next!13395))))

(declare-fun tp!46948 () Bool)

(declare-fun b_and!22351 () Bool)

(assert (=> start!71272 (= tp!46948 b_and!22351)))

(declare-fun b!827437 () Bool)

(declare-fun e!460994 () Bool)

(assert (=> b!827437 (= e!460994 false)))

(declare-datatypes ((array!46344 0))(
  ( (array!46345 (arr!22212 (Array (_ BitVec 32) (_ BitVec 64))) (size!22633 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46344)

(declare-datatypes ((V!25141 0))(
  ( (V!25142 (val!7600 Int)) )
))
(declare-fun zeroValueAfter!34 () V!25141)

(declare-fun minValue!754 () V!25141)

(declare-datatypes ((ValueCell!7137 0))(
  ( (ValueCellFull!7137 (v!10031 V!25141)) (EmptyCell!7137) )
))
(declare-datatypes ((array!46346 0))(
  ( (array!46347 (arr!22213 (Array (_ BitVec 32) ValueCell!7137)) (size!22634 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46346)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((tuple2!10084 0))(
  ( (tuple2!10085 (_1!5052 (_ BitVec 64)) (_2!5052 V!25141)) )
))
(declare-datatypes ((List!15922 0))(
  ( (Nil!15919) (Cons!15918 (h!17047 tuple2!10084) (t!22279 List!15922)) )
))
(declare-datatypes ((ListLongMap!8921 0))(
  ( (ListLongMap!8922 (toList!4476 List!15922)) )
))
(declare-fun lt!374896 () ListLongMap!8921)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2483 (array!46344 array!46346 (_ BitVec 32) (_ BitVec 32) V!25141 V!25141 (_ BitVec 32) Int) ListLongMap!8921)

(assert (=> b!827437 (= lt!374896 (getCurrentListMapNoExtraKeys!2483 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25141)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!374895 () ListLongMap!8921)

(assert (=> b!827437 (= lt!374895 (getCurrentListMapNoExtraKeys!2483 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!564078 () Bool)

(assert (=> start!71272 (=> (not res!564078) (not e!460994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71272 (= res!564078 (validMask!0 mask!1312))))

(assert (=> start!71272 e!460994))

(declare-fun tp_is_empty!15105 () Bool)

(assert (=> start!71272 tp_is_empty!15105))

(declare-fun array_inv!17683 (array!46344) Bool)

(assert (=> start!71272 (array_inv!17683 _keys!976)))

(assert (=> start!71272 true))

(declare-fun e!460992 () Bool)

(declare-fun array_inv!17684 (array!46346) Bool)

(assert (=> start!71272 (and (array_inv!17684 _values!788) e!460992)))

(assert (=> start!71272 tp!46948))

(declare-fun b!827438 () Bool)

(declare-fun e!460996 () Bool)

(assert (=> b!827438 (= e!460996 tp_is_empty!15105)))

(declare-fun b!827439 () Bool)

(declare-fun res!564076 () Bool)

(assert (=> b!827439 (=> (not res!564076) (not e!460994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46344 (_ BitVec 32)) Bool)

(assert (=> b!827439 (= res!564076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827440 () Bool)

(declare-fun res!564079 () Bool)

(assert (=> b!827440 (=> (not res!564079) (not e!460994))))

(assert (=> b!827440 (= res!564079 (and (= (size!22634 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22633 _keys!976) (size!22634 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827441 () Bool)

(declare-fun res!564077 () Bool)

(assert (=> b!827441 (=> (not res!564077) (not e!460994))))

(declare-datatypes ((List!15923 0))(
  ( (Nil!15920) (Cons!15919 (h!17048 (_ BitVec 64)) (t!22280 List!15923)) )
))
(declare-fun arrayNoDuplicates!0 (array!46344 (_ BitVec 32) List!15923) Bool)

(assert (=> b!827441 (= res!564077 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15920))))

(declare-fun mapNonEmpty!24286 () Bool)

(declare-fun mapRes!24286 () Bool)

(declare-fun tp!46947 () Bool)

(declare-fun e!460993 () Bool)

(assert (=> mapNonEmpty!24286 (= mapRes!24286 (and tp!46947 e!460993))))

(declare-fun mapValue!24286 () ValueCell!7137)

(declare-fun mapKey!24286 () (_ BitVec 32))

(declare-fun mapRest!24286 () (Array (_ BitVec 32) ValueCell!7137))

(assert (=> mapNonEmpty!24286 (= (arr!22213 _values!788) (store mapRest!24286 mapKey!24286 mapValue!24286))))

(declare-fun b!827442 () Bool)

(assert (=> b!827442 (= e!460992 (and e!460996 mapRes!24286))))

(declare-fun condMapEmpty!24286 () Bool)

(declare-fun mapDefault!24286 () ValueCell!7137)

(assert (=> b!827442 (= condMapEmpty!24286 (= (arr!22213 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7137)) mapDefault!24286)))))

(declare-fun b!827443 () Bool)

(assert (=> b!827443 (= e!460993 tp_is_empty!15105)))

(declare-fun mapIsEmpty!24286 () Bool)

(assert (=> mapIsEmpty!24286 mapRes!24286))

(assert (= (and start!71272 res!564078) b!827440))

(assert (= (and b!827440 res!564079) b!827439))

(assert (= (and b!827439 res!564076) b!827441))

(assert (= (and b!827441 res!564077) b!827437))

(assert (= (and b!827442 condMapEmpty!24286) mapIsEmpty!24286))

(assert (= (and b!827442 (not condMapEmpty!24286)) mapNonEmpty!24286))

(get-info :version)

(assert (= (and mapNonEmpty!24286 ((_ is ValueCellFull!7137) mapValue!24286)) b!827443))

(assert (= (and b!827442 ((_ is ValueCellFull!7137) mapDefault!24286)) b!827438))

(assert (= start!71272 b!827442))

(declare-fun m!770573 () Bool)

(assert (=> b!827437 m!770573))

(declare-fun m!770575 () Bool)

(assert (=> b!827437 m!770575))

(declare-fun m!770577 () Bool)

(assert (=> b!827441 m!770577))

(declare-fun m!770579 () Bool)

(assert (=> b!827439 m!770579))

(declare-fun m!770581 () Bool)

(assert (=> start!71272 m!770581))

(declare-fun m!770583 () Bool)

(assert (=> start!71272 m!770583))

(declare-fun m!770585 () Bool)

(assert (=> start!71272 m!770585))

(declare-fun m!770587 () Bool)

(assert (=> mapNonEmpty!24286 m!770587))

(check-sat (not b!827437) tp_is_empty!15105 (not start!71272) (not mapNonEmpty!24286) (not b!827439) (not b!827441) b_and!22351 (not b_next!13395))
(check-sat b_and!22351 (not b_next!13395))
