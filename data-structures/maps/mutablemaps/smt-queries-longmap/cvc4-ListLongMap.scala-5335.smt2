; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71298 () Bool)

(assert start!71298)

(declare-fun b_free!13421 () Bool)

(declare-fun b_next!13421 () Bool)

(assert (=> start!71298 (= b_free!13421 (not b_next!13421))))

(declare-fun tp!47026 () Bool)

(declare-fun b_and!22377 () Bool)

(assert (=> start!71298 (= tp!47026 b_and!22377)))

(declare-fun b!827710 () Bool)

(declare-fun e!461189 () Bool)

(declare-fun tp_is_empty!15131 () Bool)

(assert (=> b!827710 (= e!461189 tp_is_empty!15131)))

(declare-fun b!827711 () Bool)

(declare-fun e!461188 () Bool)

(assert (=> b!827711 (= e!461188 tp_is_empty!15131)))

(declare-fun b!827712 () Bool)

(declare-fun res!564232 () Bool)

(declare-fun e!461191 () Bool)

(assert (=> b!827712 (=> (not res!564232) (not e!461191))))

(declare-datatypes ((array!46396 0))(
  ( (array!46397 (arr!22238 (Array (_ BitVec 32) (_ BitVec 64))) (size!22659 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46396)

(declare-datatypes ((List!15945 0))(
  ( (Nil!15942) (Cons!15941 (h!17070 (_ BitVec 64)) (t!22302 List!15945)) )
))
(declare-fun arrayNoDuplicates!0 (array!46396 (_ BitVec 32) List!15945) Bool)

(assert (=> b!827712 (= res!564232 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15942))))

(declare-fun mapNonEmpty!24325 () Bool)

(declare-fun mapRes!24325 () Bool)

(declare-fun tp!47025 () Bool)

(assert (=> mapNonEmpty!24325 (= mapRes!24325 (and tp!47025 e!461188))))

(declare-datatypes ((V!25175 0))(
  ( (V!25176 (val!7613 Int)) )
))
(declare-datatypes ((ValueCell!7150 0))(
  ( (ValueCellFull!7150 (v!10044 V!25175)) (EmptyCell!7150) )
))
(declare-datatypes ((array!46398 0))(
  ( (array!46399 (arr!22239 (Array (_ BitVec 32) ValueCell!7150)) (size!22660 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46398)

(declare-fun mapRest!24325 () (Array (_ BitVec 32) ValueCell!7150))

(declare-fun mapKey!24325 () (_ BitVec 32))

(declare-fun mapValue!24325 () ValueCell!7150)

(assert (=> mapNonEmpty!24325 (= (arr!22239 _values!788) (store mapRest!24325 mapKey!24325 mapValue!24325))))

(declare-fun b!827713 () Bool)

(assert (=> b!827713 (= e!461191 (bvsgt #b00000000000000000000000000000000 (size!22659 _keys!976)))))

(declare-fun minValue!754 () V!25175)

(declare-datatypes ((tuple2!10108 0))(
  ( (tuple2!10109 (_1!5064 (_ BitVec 64)) (_2!5064 V!25175)) )
))
(declare-datatypes ((List!15946 0))(
  ( (Nil!15943) (Cons!15942 (h!17071 tuple2!10108) (t!22303 List!15946)) )
))
(declare-datatypes ((ListLongMap!8945 0))(
  ( (ListLongMap!8946 (toList!4488 List!15946)) )
))
(declare-fun lt!374973 () ListLongMap!8945)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!25175)

(declare-fun getCurrentListMapNoExtraKeys!2495 (array!46396 array!46398 (_ BitVec 32) (_ BitVec 32) V!25175 V!25175 (_ BitVec 32) Int) ListLongMap!8945)

(assert (=> b!827713 (= lt!374973 (getCurrentListMapNoExtraKeys!2495 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25175)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!374974 () ListLongMap!8945)

(assert (=> b!827713 (= lt!374974 (getCurrentListMapNoExtraKeys!2495 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827714 () Bool)

(declare-fun res!564233 () Bool)

(assert (=> b!827714 (=> (not res!564233) (not e!461191))))

(assert (=> b!827714 (= res!564233 (and (= (size!22660 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22659 _keys!976) (size!22660 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!564235 () Bool)

(assert (=> start!71298 (=> (not res!564235) (not e!461191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71298 (= res!564235 (validMask!0 mask!1312))))

(assert (=> start!71298 e!461191))

(assert (=> start!71298 tp_is_empty!15131))

(declare-fun array_inv!17701 (array!46396) Bool)

(assert (=> start!71298 (array_inv!17701 _keys!976)))

(assert (=> start!71298 true))

(declare-fun e!461190 () Bool)

(declare-fun array_inv!17702 (array!46398) Bool)

(assert (=> start!71298 (and (array_inv!17702 _values!788) e!461190)))

(assert (=> start!71298 tp!47026))

(declare-fun mapIsEmpty!24325 () Bool)

(assert (=> mapIsEmpty!24325 mapRes!24325))

(declare-fun b!827715 () Bool)

(declare-fun res!564234 () Bool)

(assert (=> b!827715 (=> (not res!564234) (not e!461191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46396 (_ BitVec 32)) Bool)

(assert (=> b!827715 (= res!564234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827716 () Bool)

(assert (=> b!827716 (= e!461190 (and e!461189 mapRes!24325))))

(declare-fun condMapEmpty!24325 () Bool)

(declare-fun mapDefault!24325 () ValueCell!7150)

