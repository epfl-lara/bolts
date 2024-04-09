; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71294 () Bool)

(assert start!71294)

(declare-fun b_free!13417 () Bool)

(declare-fun b_next!13417 () Bool)

(assert (=> start!71294 (= b_free!13417 (not b_next!13417))))

(declare-fun tp!47013 () Bool)

(declare-fun b_and!22373 () Bool)

(assert (=> start!71294 (= tp!47013 b_and!22373)))

(declare-fun b!827668 () Bool)

(declare-fun e!461157 () Bool)

(declare-fun tp_is_empty!15127 () Bool)

(assert (=> b!827668 (= e!461157 tp_is_empty!15127)))

(declare-fun mapNonEmpty!24319 () Bool)

(declare-fun mapRes!24319 () Bool)

(declare-fun tp!47014 () Bool)

(declare-fun e!461161 () Bool)

(assert (=> mapNonEmpty!24319 (= mapRes!24319 (and tp!47014 e!461161))))

(declare-datatypes ((V!25171 0))(
  ( (V!25172 (val!7611 Int)) )
))
(declare-datatypes ((ValueCell!7148 0))(
  ( (ValueCellFull!7148 (v!10042 V!25171)) (EmptyCell!7148) )
))
(declare-datatypes ((array!46388 0))(
  ( (array!46389 (arr!22234 (Array (_ BitVec 32) ValueCell!7148)) (size!22655 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46388)

(declare-fun mapKey!24319 () (_ BitVec 32))

(declare-fun mapValue!24319 () ValueCell!7148)

(declare-fun mapRest!24319 () (Array (_ BitVec 32) ValueCell!7148))

(assert (=> mapNonEmpty!24319 (= (arr!22234 _values!788) (store mapRest!24319 mapKey!24319 mapValue!24319))))

(declare-fun b!827669 () Bool)

(assert (=> b!827669 (= e!461161 tp_is_empty!15127)))

(declare-fun res!564210 () Bool)

(declare-fun e!461158 () Bool)

(assert (=> start!71294 (=> (not res!564210) (not e!461158))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71294 (= res!564210 (validMask!0 mask!1312))))

(assert (=> start!71294 e!461158))

(assert (=> start!71294 tp_is_empty!15127))

(declare-datatypes ((array!46390 0))(
  ( (array!46391 (arr!22235 (Array (_ BitVec 32) (_ BitVec 64))) (size!22656 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46390)

(declare-fun array_inv!17697 (array!46390) Bool)

(assert (=> start!71294 (array_inv!17697 _keys!976)))

(assert (=> start!71294 true))

(declare-fun e!461160 () Bool)

(declare-fun array_inv!17698 (array!46388) Bool)

(assert (=> start!71294 (and (array_inv!17698 _values!788) e!461160)))

(assert (=> start!71294 tp!47013))

(declare-fun b!827670 () Bool)

(declare-fun res!564211 () Bool)

(assert (=> b!827670 (=> (not res!564211) (not e!461158))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!827670 (= res!564211 (and (= (size!22655 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22656 _keys!976) (size!22655 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!827671 () Bool)

(assert (=> b!827671 (= e!461160 (and e!461157 mapRes!24319))))

(declare-fun condMapEmpty!24319 () Bool)

(declare-fun mapDefault!24319 () ValueCell!7148)

