; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70118 () Bool)

(assert start!70118)

(declare-fun b_free!12515 () Bool)

(declare-fun b_next!12515 () Bool)

(assert (=> start!70118 (= b_free!12515 (not b_next!12515))))

(declare-fun tp!44259 () Bool)

(declare-fun b_and!21305 () Bool)

(assert (=> start!70118 (= tp!44259 b_and!21305)))

(declare-fun b!814403 () Bool)

(declare-fun res!556359 () Bool)

(declare-fun e!451490 () Bool)

(assert (=> b!814403 (=> (not res!556359) (not e!451490))))

(declare-datatypes ((array!44638 0))(
  ( (array!44639 (arr!21375 (Array (_ BitVec 32) (_ BitVec 64))) (size!21796 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44638)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23967 0))(
  ( (V!23968 (val!7160 Int)) )
))
(declare-datatypes ((ValueCell!6697 0))(
  ( (ValueCellFull!6697 (v!9583 V!23967)) (EmptyCell!6697) )
))
(declare-datatypes ((array!44640 0))(
  ( (array!44641 (arr!21376 (Array (_ BitVec 32) ValueCell!6697)) (size!21797 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44640)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(assert (=> b!814403 (= res!556359 (and (= (size!21797 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21796 _keys!976) (size!21797 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814404 () Bool)

(declare-fun e!451489 () Bool)

(declare-fun tp_is_empty!14225 () Bool)

(assert (=> b!814404 (= e!451489 tp_is_empty!14225)))

(declare-fun res!556358 () Bool)

(assert (=> start!70118 (=> (not res!556358) (not e!451490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70118 (= res!556358 (validMask!0 mask!1312))))

(assert (=> start!70118 e!451490))

(assert (=> start!70118 tp_is_empty!14225))

(declare-fun array_inv!17081 (array!44638) Bool)

(assert (=> start!70118 (array_inv!17081 _keys!976)))

(assert (=> start!70118 true))

(declare-fun e!451486 () Bool)

(declare-fun array_inv!17082 (array!44640) Bool)

(assert (=> start!70118 (and (array_inv!17082 _values!788) e!451486)))

(assert (=> start!70118 tp!44259))

(declare-fun b!814405 () Bool)

(declare-fun mapRes!22918 () Bool)

(assert (=> b!814405 (= e!451486 (and e!451489 mapRes!22918))))

(declare-fun condMapEmpty!22918 () Bool)

(declare-fun mapDefault!22918 () ValueCell!6697)

