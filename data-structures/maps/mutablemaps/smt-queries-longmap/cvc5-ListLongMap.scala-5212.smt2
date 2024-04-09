; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70328 () Bool)

(assert start!70328)

(declare-fun b_free!12679 () Bool)

(declare-fun b_next!12679 () Bool)

(assert (=> start!70328 (= b_free!12679 (not b_next!12679))))

(declare-fun tp!44761 () Bool)

(declare-fun b_and!21497 () Bool)

(assert (=> start!70328 (= tp!44761 b_and!21497)))

(declare-fun b!816616 () Bool)

(declare-fun res!557624 () Bool)

(declare-fun e!453077 () Bool)

(assert (=> b!816616 (=> (not res!557624) (not e!453077))))

(declare-datatypes ((array!44956 0))(
  ( (array!44957 (arr!21531 (Array (_ BitVec 32) (_ BitVec 64))) (size!21952 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44956)

(declare-datatypes ((List!15391 0))(
  ( (Nil!15388) (Cons!15387 (h!16516 (_ BitVec 64)) (t!21722 List!15391)) )
))
(declare-fun arrayNoDuplicates!0 (array!44956 (_ BitVec 32) List!15391) Bool)

(assert (=> b!816616 (= res!557624 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15388))))

(declare-fun b!816617 () Bool)

(declare-fun res!557625 () Bool)

(assert (=> b!816617 (=> (not res!557625) (not e!453077))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24187 0))(
  ( (V!24188 (val!7242 Int)) )
))
(declare-datatypes ((ValueCell!6779 0))(
  ( (ValueCellFull!6779 (v!9666 V!24187)) (EmptyCell!6779) )
))
(declare-datatypes ((array!44958 0))(
  ( (array!44959 (arr!21532 (Array (_ BitVec 32) ValueCell!6779)) (size!21953 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44958)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!816617 (= res!557625 (and (= (size!21953 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21952 _keys!976) (size!21953 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816618 () Bool)

(declare-fun e!453074 () Bool)

(declare-fun e!453073 () Bool)

(declare-fun mapRes!23173 () Bool)

(assert (=> b!816618 (= e!453074 (and e!453073 mapRes!23173))))

(declare-fun condMapEmpty!23173 () Bool)

(declare-fun mapDefault!23173 () ValueCell!6779)

