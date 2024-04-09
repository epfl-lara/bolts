; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71290 () Bool)

(assert start!71290)

(declare-fun b_free!13413 () Bool)

(declare-fun b_next!13413 () Bool)

(assert (=> start!71290 (= b_free!13413 (not b_next!13413))))

(declare-fun tp!47002 () Bool)

(declare-fun b_and!22369 () Bool)

(assert (=> start!71290 (= tp!47002 b_and!22369)))

(declare-fun b!827626 () Bool)

(declare-fun e!461128 () Bool)

(declare-fun e!461127 () Bool)

(declare-fun mapRes!24313 () Bool)

(assert (=> b!827626 (= e!461128 (and e!461127 mapRes!24313))))

(declare-fun condMapEmpty!24313 () Bool)

(declare-datatypes ((V!25165 0))(
  ( (V!25166 (val!7609 Int)) )
))
(declare-datatypes ((ValueCell!7146 0))(
  ( (ValueCellFull!7146 (v!10040 V!25165)) (EmptyCell!7146) )
))
(declare-datatypes ((array!46380 0))(
  ( (array!46381 (arr!22230 (Array (_ BitVec 32) ValueCell!7146)) (size!22651 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46380)

(declare-fun mapDefault!24313 () ValueCell!7146)

(assert (=> b!827626 (= condMapEmpty!24313 (= (arr!22230 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7146)) mapDefault!24313)))))

(declare-fun b!827627 () Bool)

(declare-fun res!564186 () Bool)

(declare-fun e!461131 () Bool)

(assert (=> b!827627 (=> (not res!564186) (not e!461131))))

(declare-datatypes ((array!46382 0))(
  ( (array!46383 (arr!22231 (Array (_ BitVec 32) (_ BitVec 64))) (size!22652 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46382)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46382 (_ BitVec 32)) Bool)

(assert (=> b!827627 (= res!564186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827628 () Bool)

(assert (=> b!827628 (= e!461131 false)))

(declare-datatypes ((tuple2!10102 0))(
  ( (tuple2!10103 (_1!5061 (_ BitVec 64)) (_2!5061 V!25165)) )
))
(declare-datatypes ((List!15939 0))(
  ( (Nil!15936) (Cons!15935 (h!17064 tuple2!10102) (t!22296 List!15939)) )
))
(declare-datatypes ((ListLongMap!8939 0))(
  ( (ListLongMap!8940 (toList!4485 List!15939)) )
))
(declare-fun lt!374949 () ListLongMap!8939)

(declare-fun zeroValueAfter!34 () V!25165)

(declare-fun minValue!754 () V!25165)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2492 (array!46382 array!46380 (_ BitVec 32) (_ BitVec 32) V!25165 V!25165 (_ BitVec 32) Int) ListLongMap!8939)

(assert (=> b!827628 (= lt!374949 (getCurrentListMapNoExtraKeys!2492 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374950 () ListLongMap!8939)

(declare-fun zeroValueBefore!34 () V!25165)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!827628 (= lt!374950 (getCurrentListMapNoExtraKeys!2492 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24313 () Bool)

(assert (=> mapIsEmpty!24313 mapRes!24313))

(declare-fun b!827629 () Bool)

(declare-fun res!564185 () Bool)

(assert (=> b!827629 (=> (not res!564185) (not e!461131))))

(assert (=> b!827629 (= res!564185 (and (= (size!22651 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22652 _keys!976) (size!22651 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827630 () Bool)

(declare-fun e!461130 () Bool)

(declare-fun tp_is_empty!15123 () Bool)

(assert (=> b!827630 (= e!461130 tp_is_empty!15123)))

(declare-fun b!827631 () Bool)

(declare-fun res!564184 () Bool)

(assert (=> b!827631 (=> (not res!564184) (not e!461131))))

(declare-datatypes ((List!15940 0))(
  ( (Nil!15937) (Cons!15936 (h!17065 (_ BitVec 64)) (t!22297 List!15940)) )
))
(declare-fun arrayNoDuplicates!0 (array!46382 (_ BitVec 32) List!15940) Bool)

(assert (=> b!827631 (= res!564184 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15937))))

(declare-fun b!827632 () Bool)

(assert (=> b!827632 (= e!461127 tp_is_empty!15123)))

(declare-fun mapNonEmpty!24313 () Bool)

(declare-fun tp!47001 () Bool)

(assert (=> mapNonEmpty!24313 (= mapRes!24313 (and tp!47001 e!461130))))

(declare-fun mapKey!24313 () (_ BitVec 32))

(declare-fun mapValue!24313 () ValueCell!7146)

(declare-fun mapRest!24313 () (Array (_ BitVec 32) ValueCell!7146))

(assert (=> mapNonEmpty!24313 (= (arr!22230 _values!788) (store mapRest!24313 mapKey!24313 mapValue!24313))))

(declare-fun res!564187 () Bool)

(assert (=> start!71290 (=> (not res!564187) (not e!461131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71290 (= res!564187 (validMask!0 mask!1312))))

(assert (=> start!71290 e!461131))

(assert (=> start!71290 tp_is_empty!15123))

(declare-fun array_inv!17695 (array!46382) Bool)

(assert (=> start!71290 (array_inv!17695 _keys!976)))

(assert (=> start!71290 true))

(declare-fun array_inv!17696 (array!46380) Bool)

(assert (=> start!71290 (and (array_inv!17696 _values!788) e!461128)))

(assert (=> start!71290 tp!47002))

(assert (= (and start!71290 res!564187) b!827629))

(assert (= (and b!827629 res!564185) b!827627))

(assert (= (and b!827627 res!564186) b!827631))

(assert (= (and b!827631 res!564184) b!827628))

(assert (= (and b!827626 condMapEmpty!24313) mapIsEmpty!24313))

(assert (= (and b!827626 (not condMapEmpty!24313)) mapNonEmpty!24313))

(get-info :version)

(assert (= (and mapNonEmpty!24313 ((_ is ValueCellFull!7146) mapValue!24313)) b!827630))

(assert (= (and b!827626 ((_ is ValueCellFull!7146) mapDefault!24313)) b!827632))

(assert (= start!71290 b!827626))

(declare-fun m!770717 () Bool)

(assert (=> b!827628 m!770717))

(declare-fun m!770719 () Bool)

(assert (=> b!827628 m!770719))

(declare-fun m!770721 () Bool)

(assert (=> start!71290 m!770721))

(declare-fun m!770723 () Bool)

(assert (=> start!71290 m!770723))

(declare-fun m!770725 () Bool)

(assert (=> start!71290 m!770725))

(declare-fun m!770727 () Bool)

(assert (=> b!827627 m!770727))

(declare-fun m!770729 () Bool)

(assert (=> b!827631 m!770729))

(declare-fun m!770731 () Bool)

(assert (=> mapNonEmpty!24313 m!770731))

(check-sat (not b!827627) b_and!22369 (not start!71290) (not b_next!13413) (not b!827628) (not b!827631) (not mapNonEmpty!24313) tp_is_empty!15123)
(check-sat b_and!22369 (not b_next!13413))
