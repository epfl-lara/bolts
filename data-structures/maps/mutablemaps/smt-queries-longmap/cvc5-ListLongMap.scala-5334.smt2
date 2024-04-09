; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71288 () Bool)

(assert start!71288)

(declare-fun b_free!13411 () Bool)

(declare-fun b_next!13411 () Bool)

(assert (=> start!71288 (= b_free!13411 (not b_next!13411))))

(declare-fun tp!46996 () Bool)

(declare-fun b_and!22367 () Bool)

(assert (=> start!71288 (= tp!46996 b_and!22367)))

(declare-fun b!827605 () Bool)

(declare-fun res!564174 () Bool)

(declare-fun e!461112 () Bool)

(assert (=> b!827605 (=> (not res!564174) (not e!461112))))

(declare-datatypes ((array!46376 0))(
  ( (array!46377 (arr!22228 (Array (_ BitVec 32) (_ BitVec 64))) (size!22649 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46376)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46376 (_ BitVec 32)) Bool)

(assert (=> b!827605 (= res!564174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!827606 () Bool)

(declare-fun e!461115 () Bool)

(declare-fun tp_is_empty!15121 () Bool)

(assert (=> b!827606 (= e!461115 tp_is_empty!15121)))

(declare-fun mapIsEmpty!24310 () Bool)

(declare-fun mapRes!24310 () Bool)

(assert (=> mapIsEmpty!24310 mapRes!24310))

(declare-fun b!827608 () Bool)

(declare-fun res!564175 () Bool)

(assert (=> b!827608 (=> (not res!564175) (not e!461112))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25163 0))(
  ( (V!25164 (val!7608 Int)) )
))
(declare-datatypes ((ValueCell!7145 0))(
  ( (ValueCellFull!7145 (v!10039 V!25163)) (EmptyCell!7145) )
))
(declare-datatypes ((array!46378 0))(
  ( (array!46379 (arr!22229 (Array (_ BitVec 32) ValueCell!7145)) (size!22650 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46378)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827608 (= res!564175 (and (= (size!22650 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22649 _keys!976) (size!22650 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!24310 () Bool)

(declare-fun tp!46995 () Bool)

(assert (=> mapNonEmpty!24310 (= mapRes!24310 (and tp!46995 e!461115))))

(declare-fun mapRest!24310 () (Array (_ BitVec 32) ValueCell!7145))

(declare-fun mapKey!24310 () (_ BitVec 32))

(declare-fun mapValue!24310 () ValueCell!7145)

(assert (=> mapNonEmpty!24310 (= (arr!22229 _values!788) (store mapRest!24310 mapKey!24310 mapValue!24310))))

(declare-fun b!827609 () Bool)

(declare-fun res!564172 () Bool)

(assert (=> b!827609 (=> (not res!564172) (not e!461112))))

(declare-datatypes ((List!15937 0))(
  ( (Nil!15934) (Cons!15933 (h!17062 (_ BitVec 64)) (t!22294 List!15937)) )
))
(declare-fun arrayNoDuplicates!0 (array!46376 (_ BitVec 32) List!15937) Bool)

(assert (=> b!827609 (= res!564172 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15934))))

(declare-fun b!827610 () Bool)

(assert (=> b!827610 (= e!461112 false)))

(declare-fun zeroValueAfter!34 () V!25163)

(declare-fun minValue!754 () V!25163)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!10100 0))(
  ( (tuple2!10101 (_1!5060 (_ BitVec 64)) (_2!5060 V!25163)) )
))
(declare-datatypes ((List!15938 0))(
  ( (Nil!15935) (Cons!15934 (h!17063 tuple2!10100) (t!22295 List!15938)) )
))
(declare-datatypes ((ListLongMap!8937 0))(
  ( (ListLongMap!8938 (toList!4484 List!15938)) )
))
(declare-fun lt!374944 () ListLongMap!8937)

(declare-fun getCurrentListMapNoExtraKeys!2491 (array!46376 array!46378 (_ BitVec 32) (_ BitVec 32) V!25163 V!25163 (_ BitVec 32) Int) ListLongMap!8937)

(assert (=> b!827610 (= lt!374944 (getCurrentListMapNoExtraKeys!2491 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!374943 () ListLongMap!8937)

(declare-fun zeroValueBefore!34 () V!25163)

(assert (=> b!827610 (= lt!374943 (getCurrentListMapNoExtraKeys!2491 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!827611 () Bool)

(declare-fun e!461113 () Bool)

(declare-fun e!461114 () Bool)

(assert (=> b!827611 (= e!461113 (and e!461114 mapRes!24310))))

(declare-fun condMapEmpty!24310 () Bool)

(declare-fun mapDefault!24310 () ValueCell!7145)

