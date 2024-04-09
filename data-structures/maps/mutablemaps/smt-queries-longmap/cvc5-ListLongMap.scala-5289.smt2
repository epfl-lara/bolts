; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70948 () Bool)

(assert start!70948)

(declare-fun b_free!13141 () Bool)

(declare-fun b_next!13141 () Bool)

(assert (=> start!70948 (= b_free!13141 (not b_next!13141))))

(declare-fun tp!46174 () Bool)

(declare-fun b_and!22055 () Bool)

(assert (=> start!70948 (= tp!46174 b_and!22055)))

(declare-fun b!823558 () Bool)

(declare-fun e!458111 () Bool)

(declare-fun tp_is_empty!14851 () Bool)

(assert (=> b!823558 (= e!458111 tp_is_empty!14851)))

(declare-fun res!561689 () Bool)

(declare-fun e!458113 () Bool)

(assert (=> start!70948 (=> (not res!561689) (not e!458113))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70948 (= res!561689 (validMask!0 mask!1312))))

(assert (=> start!70948 e!458113))

(assert (=> start!70948 tp_is_empty!14851))

(declare-datatypes ((array!45852 0))(
  ( (array!45853 (arr!21970 (Array (_ BitVec 32) (_ BitVec 64))) (size!22391 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45852)

(declare-fun array_inv!17505 (array!45852) Bool)

(assert (=> start!70948 (array_inv!17505 _keys!976)))

(assert (=> start!70948 true))

(declare-datatypes ((V!24803 0))(
  ( (V!24804 (val!7473 Int)) )
))
(declare-datatypes ((ValueCell!7010 0))(
  ( (ValueCellFull!7010 (v!9902 V!24803)) (EmptyCell!7010) )
))
(declare-datatypes ((array!45854 0))(
  ( (array!45855 (arr!21971 (Array (_ BitVec 32) ValueCell!7010)) (size!22392 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45854)

(declare-fun e!458115 () Bool)

(declare-fun array_inv!17506 (array!45854) Bool)

(assert (=> start!70948 (and (array_inv!17506 _values!788) e!458115)))

(assert (=> start!70948 tp!46174))

(declare-fun b!823559 () Bool)

(declare-fun res!561688 () Bool)

(assert (=> b!823559 (=> (not res!561688) (not e!458113))))

(declare-datatypes ((List!15733 0))(
  ( (Nil!15730) (Cons!15729 (h!16858 (_ BitVec 64)) (t!22082 List!15733)) )
))
(declare-fun arrayNoDuplicates!0 (array!45852 (_ BitVec 32) List!15733) Bool)

(assert (=> b!823559 (= res!561688 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15730))))

(declare-fun b!823560 () Bool)

(declare-fun e!458114 () Bool)

(assert (=> b!823560 (= e!458114 tp_is_empty!14851)))

(declare-fun mapNonEmpty!23893 () Bool)

(declare-fun mapRes!23893 () Bool)

(declare-fun tp!46173 () Bool)

(assert (=> mapNonEmpty!23893 (= mapRes!23893 (and tp!46173 e!458111))))

(declare-fun mapKey!23893 () (_ BitVec 32))

(declare-fun mapRest!23893 () (Array (_ BitVec 32) ValueCell!7010))

(declare-fun mapValue!23893 () ValueCell!7010)

(assert (=> mapNonEmpty!23893 (= (arr!21971 _values!788) (store mapRest!23893 mapKey!23893 mapValue!23893))))

(declare-fun b!823561 () Bool)

(declare-fun res!561691 () Bool)

(assert (=> b!823561 (=> (not res!561691) (not e!458113))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823561 (= res!561691 (and (= (size!22392 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22391 _keys!976) (size!22392 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823562 () Bool)

(assert (=> b!823562 (= e!458115 (and e!458114 mapRes!23893))))

(declare-fun condMapEmpty!23893 () Bool)

(declare-fun mapDefault!23893 () ValueCell!7010)

