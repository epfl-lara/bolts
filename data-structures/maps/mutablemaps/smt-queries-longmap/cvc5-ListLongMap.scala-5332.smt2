; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71276 () Bool)

(assert start!71276)

(declare-fun b_free!13399 () Bool)

(declare-fun b_next!13399 () Bool)

(assert (=> start!71276 (= b_free!13399 (not b_next!13399))))

(declare-fun tp!46960 () Bool)

(declare-fun b_and!22355 () Bool)

(assert (=> start!71276 (= tp!46960 b_and!22355)))

(declare-fun res!564103 () Bool)

(declare-fun e!461026 () Bool)

(assert (=> start!71276 (=> (not res!564103) (not e!461026))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71276 (= res!564103 (validMask!0 mask!1312))))

(assert (=> start!71276 e!461026))

(declare-fun tp_is_empty!15109 () Bool)

(assert (=> start!71276 tp_is_empty!15109))

(declare-datatypes ((array!46352 0))(
  ( (array!46353 (arr!22216 (Array (_ BitVec 32) (_ BitVec 64))) (size!22637 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46352)

(declare-fun array_inv!17685 (array!46352) Bool)

(assert (=> start!71276 (array_inv!17685 _keys!976)))

(assert (=> start!71276 true))

(declare-datatypes ((V!25147 0))(
  ( (V!25148 (val!7602 Int)) )
))
(declare-datatypes ((ValueCell!7139 0))(
  ( (ValueCellFull!7139 (v!10033 V!25147)) (EmptyCell!7139) )
))
(declare-datatypes ((array!46354 0))(
  ( (array!46355 (arr!22217 (Array (_ BitVec 32) ValueCell!7139)) (size!22638 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46354)

(declare-fun e!461023 () Bool)

(declare-fun array_inv!17686 (array!46354) Bool)

(assert (=> start!71276 (and (array_inv!17686 _values!788) e!461023)))

(assert (=> start!71276 tp!46960))

(declare-fun b!827479 () Bool)

(declare-fun res!564101 () Bool)

(assert (=> b!827479 (=> (not res!564101) (not e!461026))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!827479 (= res!564101 (and (= (size!22638 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22637 _keys!976) (size!22638 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!24292 () Bool)

(declare-fun mapRes!24292 () Bool)

(declare-fun tp!46959 () Bool)

(declare-fun e!461024 () Bool)

(assert (=> mapNonEmpty!24292 (= mapRes!24292 (and tp!46959 e!461024))))

(declare-fun mapValue!24292 () ValueCell!7139)

(declare-fun mapRest!24292 () (Array (_ BitVec 32) ValueCell!7139))

(declare-fun mapKey!24292 () (_ BitVec 32))

(assert (=> mapNonEmpty!24292 (= (arr!22217 _values!788) (store mapRest!24292 mapKey!24292 mapValue!24292))))

(declare-fun b!827480 () Bool)

(declare-fun res!564102 () Bool)

(assert (=> b!827480 (=> (not res!564102) (not e!461026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46352 (_ BitVec 32)) Bool)

(assert (=> b!827480 (= res!564102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827481 () Bool)

(assert (=> b!827481 (= e!461024 tp_is_empty!15109)))

(declare-fun b!827482 () Bool)

(declare-fun e!461022 () Bool)

(assert (=> b!827482 (= e!461022 tp_is_empty!15109)))

(declare-fun b!827483 () Bool)

(assert (=> b!827483 (= e!461026 false)))

(declare-datatypes ((tuple2!10088 0))(
  ( (tuple2!10089 (_1!5054 (_ BitVec 64)) (_2!5054 V!25147)) )
))
(declare-datatypes ((List!15926 0))(
  ( (Nil!15923) (Cons!15922 (h!17051 tuple2!10088) (t!22283 List!15926)) )
))
(declare-datatypes ((ListLongMap!8925 0))(
  ( (ListLongMap!8926 (toList!4478 List!15926)) )
))
(declare-fun lt!374908 () ListLongMap!8925)

(declare-fun zeroValueAfter!34 () V!25147)

(declare-fun minValue!754 () V!25147)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2485 (array!46352 array!46354 (_ BitVec 32) (_ BitVec 32) V!25147 V!25147 (_ BitVec 32) Int) ListLongMap!8925)

(assert (=> b!827483 (= lt!374908 (getCurrentListMapNoExtraKeys!2485 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25147)

(declare-fun lt!374907 () ListLongMap!8925)

(assert (=> b!827483 (= lt!374907 (getCurrentListMapNoExtraKeys!2485 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827484 () Bool)

(declare-fun res!564100 () Bool)

(assert (=> b!827484 (=> (not res!564100) (not e!461026))))

(declare-datatypes ((List!15927 0))(
  ( (Nil!15924) (Cons!15923 (h!17052 (_ BitVec 64)) (t!22284 List!15927)) )
))
(declare-fun arrayNoDuplicates!0 (array!46352 (_ BitVec 32) List!15927) Bool)

(assert (=> b!827484 (= res!564100 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15924))))

(declare-fun b!827485 () Bool)

(assert (=> b!827485 (= e!461023 (and e!461022 mapRes!24292))))

(declare-fun condMapEmpty!24292 () Bool)

(declare-fun mapDefault!24292 () ValueCell!7139)

