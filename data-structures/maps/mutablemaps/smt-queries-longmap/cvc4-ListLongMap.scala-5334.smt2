; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71292 () Bool)

(assert start!71292)

(declare-fun b_free!13415 () Bool)

(declare-fun b_next!13415 () Bool)

(assert (=> start!71292 (= b_free!13415 (not b_next!13415))))

(declare-fun tp!47007 () Bool)

(declare-fun b_and!22371 () Bool)

(assert (=> start!71292 (= tp!47007 b_and!22371)))

(declare-fun b!827647 () Bool)

(declare-fun res!564198 () Bool)

(declare-fun e!461143 () Bool)

(assert (=> b!827647 (=> (not res!564198) (not e!461143))))

(declare-datatypes ((array!46384 0))(
  ( (array!46385 (arr!22232 (Array (_ BitVec 32) (_ BitVec 64))) (size!22653 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46384)

(declare-datatypes ((List!15941 0))(
  ( (Nil!15938) (Cons!15937 (h!17066 (_ BitVec 64)) (t!22298 List!15941)) )
))
(declare-fun arrayNoDuplicates!0 (array!46384 (_ BitVec 32) List!15941) Bool)

(assert (=> b!827647 (= res!564198 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15938))))

(declare-fun b!827648 () Bool)

(declare-fun e!461144 () Bool)

(declare-fun tp_is_empty!15125 () Bool)

(assert (=> b!827648 (= e!461144 tp_is_empty!15125)))

(declare-fun b!827649 () Bool)

(assert (=> b!827649 (= e!461143 false)))

(declare-datatypes ((V!25167 0))(
  ( (V!25168 (val!7610 Int)) )
))
(declare-datatypes ((tuple2!10104 0))(
  ( (tuple2!10105 (_1!5062 (_ BitVec 64)) (_2!5062 V!25167)) )
))
(declare-datatypes ((List!15942 0))(
  ( (Nil!15939) (Cons!15938 (h!17067 tuple2!10104) (t!22299 List!15942)) )
))
(declare-datatypes ((ListLongMap!8941 0))(
  ( (ListLongMap!8942 (toList!4486 List!15942)) )
))
(declare-fun lt!374956 () ListLongMap!8941)

(declare-fun zeroValueAfter!34 () V!25167)

(declare-fun minValue!754 () V!25167)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((ValueCell!7147 0))(
  ( (ValueCellFull!7147 (v!10041 V!25167)) (EmptyCell!7147) )
))
(declare-datatypes ((array!46386 0))(
  ( (array!46387 (arr!22233 (Array (_ BitVec 32) ValueCell!7147)) (size!22654 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46386)

(declare-fun getCurrentListMapNoExtraKeys!2493 (array!46384 array!46386 (_ BitVec 32) (_ BitVec 32) V!25167 V!25167 (_ BitVec 32) Int) ListLongMap!8941)

(assert (=> b!827649 (= lt!374956 (getCurrentListMapNoExtraKeys!2493 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!25167)

(declare-fun lt!374955 () ListLongMap!8941)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!827649 (= lt!374955 (getCurrentListMapNoExtraKeys!2493 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!24316 () Bool)

(declare-fun mapRes!24316 () Bool)

(assert (=> mapIsEmpty!24316 mapRes!24316))

(declare-fun mapNonEmpty!24316 () Bool)

(declare-fun tp!47008 () Bool)

(assert (=> mapNonEmpty!24316 (= mapRes!24316 (and tp!47008 e!461144))))

(declare-fun mapValue!24316 () ValueCell!7147)

(declare-fun mapKey!24316 () (_ BitVec 32))

(declare-fun mapRest!24316 () (Array (_ BitVec 32) ValueCell!7147))

(assert (=> mapNonEmpty!24316 (= (arr!22233 _values!788) (store mapRest!24316 mapKey!24316 mapValue!24316))))

(declare-fun b!827651 () Bool)

(declare-fun res!564199 () Bool)

(assert (=> b!827651 (=> (not res!564199) (not e!461143))))

(assert (=> b!827651 (= res!564199 (and (= (size!22654 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22653 _keys!976) (size!22654 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827652 () Bool)

(declare-fun e!461146 () Bool)

(declare-fun e!461142 () Bool)

(assert (=> b!827652 (= e!461146 (and e!461142 mapRes!24316))))

(declare-fun condMapEmpty!24316 () Bool)

(declare-fun mapDefault!24316 () ValueCell!7147)

