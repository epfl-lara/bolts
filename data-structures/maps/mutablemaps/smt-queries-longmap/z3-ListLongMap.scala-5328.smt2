; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71254 () Bool)

(assert start!71254)

(declare-fun b_free!13377 () Bool)

(declare-fun b_next!13377 () Bool)

(assert (=> start!71254 (= b_free!13377 (not b_next!13377))))

(declare-fun tp!46893 () Bool)

(declare-fun b_and!22333 () Bool)

(assert (=> start!71254 (= tp!46893 b_and!22333)))

(declare-fun b!827249 () Bool)

(declare-fun res!563969 () Bool)

(declare-fun e!460857 () Bool)

(assert (=> b!827249 (=> (not res!563969) (not e!460857))))

(declare-datatypes ((array!46308 0))(
  ( (array!46309 (arr!22194 (Array (_ BitVec 32) (_ BitVec 64))) (size!22615 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46308)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25117 0))(
  ( (V!25118 (val!7591 Int)) )
))
(declare-datatypes ((ValueCell!7128 0))(
  ( (ValueCellFull!7128 (v!10022 V!25117)) (EmptyCell!7128) )
))
(declare-datatypes ((array!46310 0))(
  ( (array!46311 (arr!22195 (Array (_ BitVec 32) ValueCell!7128)) (size!22616 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46310)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827249 (= res!563969 (and (= (size!22616 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22615 _keys!976) (size!22616 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827250 () Bool)

(declare-fun e!460860 () Bool)

(declare-fun e!460859 () Bool)

(declare-fun mapRes!24259 () Bool)

(assert (=> b!827250 (= e!460860 (and e!460859 mapRes!24259))))

(declare-fun condMapEmpty!24259 () Bool)

(declare-fun mapDefault!24259 () ValueCell!7128)

(assert (=> b!827250 (= condMapEmpty!24259 (= (arr!22195 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7128)) mapDefault!24259)))))

(declare-fun b!827251 () Bool)

(declare-fun tp_is_empty!15087 () Bool)

(assert (=> b!827251 (= e!460859 tp_is_empty!15087)))

(declare-fun b!827252 () Bool)

(assert (=> b!827252 (= e!460857 false)))

(declare-fun zeroValueAfter!34 () V!25117)

(declare-fun minValue!754 () V!25117)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10070 0))(
  ( (tuple2!10071 (_1!5045 (_ BitVec 64)) (_2!5045 V!25117)) )
))
(declare-datatypes ((List!15907 0))(
  ( (Nil!15904) (Cons!15903 (h!17032 tuple2!10070) (t!22264 List!15907)) )
))
(declare-datatypes ((ListLongMap!8907 0))(
  ( (ListLongMap!8908 (toList!4469 List!15907)) )
))
(declare-fun lt!374841 () ListLongMap!8907)

(declare-fun getCurrentListMapNoExtraKeys!2476 (array!46308 array!46310 (_ BitVec 32) (_ BitVec 32) V!25117 V!25117 (_ BitVec 32) Int) ListLongMap!8907)

(assert (=> b!827252 (= lt!374841 (getCurrentListMapNoExtraKeys!2476 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25117)

(declare-fun lt!374842 () ListLongMap!8907)

(assert (=> b!827252 (= lt!374842 (getCurrentListMapNoExtraKeys!2476 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827253 () Bool)

(declare-fun e!460861 () Bool)

(assert (=> b!827253 (= e!460861 tp_is_empty!15087)))

(declare-fun mapNonEmpty!24259 () Bool)

(declare-fun tp!46894 () Bool)

(assert (=> mapNonEmpty!24259 (= mapRes!24259 (and tp!46894 e!460861))))

(declare-fun mapRest!24259 () (Array (_ BitVec 32) ValueCell!7128))

(declare-fun mapKey!24259 () (_ BitVec 32))

(declare-fun mapValue!24259 () ValueCell!7128)

(assert (=> mapNonEmpty!24259 (= (arr!22195 _values!788) (store mapRest!24259 mapKey!24259 mapValue!24259))))

(declare-fun b!827254 () Bool)

(declare-fun res!563968 () Bool)

(assert (=> b!827254 (=> (not res!563968) (not e!460857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46308 (_ BitVec 32)) Bool)

(assert (=> b!827254 (= res!563968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24259 () Bool)

(assert (=> mapIsEmpty!24259 mapRes!24259))

(declare-fun b!827248 () Bool)

(declare-fun res!563970 () Bool)

(assert (=> b!827248 (=> (not res!563970) (not e!460857))))

(declare-datatypes ((List!15908 0))(
  ( (Nil!15905) (Cons!15904 (h!17033 (_ BitVec 64)) (t!22265 List!15908)) )
))
(declare-fun arrayNoDuplicates!0 (array!46308 (_ BitVec 32) List!15908) Bool)

(assert (=> b!827248 (= res!563970 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15905))))

(declare-fun res!563971 () Bool)

(assert (=> start!71254 (=> (not res!563971) (not e!460857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71254 (= res!563971 (validMask!0 mask!1312))))

(assert (=> start!71254 e!460857))

(assert (=> start!71254 tp_is_empty!15087))

(declare-fun array_inv!17671 (array!46308) Bool)

(assert (=> start!71254 (array_inv!17671 _keys!976)))

(assert (=> start!71254 true))

(declare-fun array_inv!17672 (array!46310) Bool)

(assert (=> start!71254 (and (array_inv!17672 _values!788) e!460860)))

(assert (=> start!71254 tp!46893))

(assert (= (and start!71254 res!563971) b!827249))

(assert (= (and b!827249 res!563969) b!827254))

(assert (= (and b!827254 res!563968) b!827248))

(assert (= (and b!827248 res!563970) b!827252))

(assert (= (and b!827250 condMapEmpty!24259) mapIsEmpty!24259))

(assert (= (and b!827250 (not condMapEmpty!24259)) mapNonEmpty!24259))

(get-info :version)

(assert (= (and mapNonEmpty!24259 ((_ is ValueCellFull!7128) mapValue!24259)) b!827253))

(assert (= (and b!827250 ((_ is ValueCellFull!7128) mapDefault!24259)) b!827251))

(assert (= start!71254 b!827250))

(declare-fun m!770429 () Bool)

(assert (=> start!71254 m!770429))

(declare-fun m!770431 () Bool)

(assert (=> start!71254 m!770431))

(declare-fun m!770433 () Bool)

(assert (=> start!71254 m!770433))

(declare-fun m!770435 () Bool)

(assert (=> b!827254 m!770435))

(declare-fun m!770437 () Bool)

(assert (=> b!827248 m!770437))

(declare-fun m!770439 () Bool)

(assert (=> b!827252 m!770439))

(declare-fun m!770441 () Bool)

(assert (=> b!827252 m!770441))

(declare-fun m!770443 () Bool)

(assert (=> mapNonEmpty!24259 m!770443))

(check-sat (not start!71254) (not b!827252) tp_is_empty!15087 b_and!22333 (not b_next!13377) (not b!827248) (not mapNonEmpty!24259) (not b!827254))
(check-sat b_and!22333 (not b_next!13377))
