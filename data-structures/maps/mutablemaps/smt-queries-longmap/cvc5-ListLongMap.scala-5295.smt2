; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70984 () Bool)

(assert start!70984)

(declare-fun b_free!13177 () Bool)

(declare-fun b_next!13177 () Bool)

(assert (=> start!70984 (= b_free!13177 (not b_next!13177))))

(declare-fun tp!46281 () Bool)

(declare-fun b_and!22091 () Bool)

(assert (=> start!70984 (= tp!46281 b_and!22091)))

(declare-fun b!823936 () Bool)

(declare-fun res!561904 () Bool)

(declare-fun e!458383 () Bool)

(assert (=> b!823936 (=> (not res!561904) (not e!458383))))

(declare-datatypes ((array!45920 0))(
  ( (array!45921 (arr!22004 (Array (_ BitVec 32) (_ BitVec 64))) (size!22425 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45920)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24851 0))(
  ( (V!24852 (val!7491 Int)) )
))
(declare-datatypes ((ValueCell!7028 0))(
  ( (ValueCellFull!7028 (v!9920 V!24851)) (EmptyCell!7028) )
))
(declare-datatypes ((array!45922 0))(
  ( (array!45923 (arr!22005 (Array (_ BitVec 32) ValueCell!7028)) (size!22426 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45922)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!823936 (= res!561904 (and (= (size!22426 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22425 _keys!976) (size!22426 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!823937 () Bool)

(declare-fun e!458385 () Bool)

(declare-fun tp_is_empty!14887 () Bool)

(assert (=> b!823937 (= e!458385 tp_is_empty!14887)))

(declare-fun mapNonEmpty!23947 () Bool)

(declare-fun mapRes!23947 () Bool)

(declare-fun tp!46282 () Bool)

(assert (=> mapNonEmpty!23947 (= mapRes!23947 (and tp!46282 e!458385))))

(declare-fun mapKey!23947 () (_ BitVec 32))

(declare-fun mapValue!23947 () ValueCell!7028)

(declare-fun mapRest!23947 () (Array (_ BitVec 32) ValueCell!7028))

(assert (=> mapNonEmpty!23947 (= (arr!22005 _values!788) (store mapRest!23947 mapKey!23947 mapValue!23947))))

(declare-fun res!561905 () Bool)

(assert (=> start!70984 (=> (not res!561905) (not e!458383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70984 (= res!561905 (validMask!0 mask!1312))))

(assert (=> start!70984 e!458383))

(assert (=> start!70984 tp_is_empty!14887))

(declare-fun array_inv!17533 (array!45920) Bool)

(assert (=> start!70984 (array_inv!17533 _keys!976)))

(assert (=> start!70984 true))

(declare-fun e!458382 () Bool)

(declare-fun array_inv!17534 (array!45922) Bool)

(assert (=> start!70984 (and (array_inv!17534 _values!788) e!458382)))

(assert (=> start!70984 tp!46281))

(declare-fun b!823938 () Bool)

(declare-fun e!458381 () Bool)

(assert (=> b!823938 (= e!458382 (and e!458381 mapRes!23947))))

(declare-fun condMapEmpty!23947 () Bool)

(declare-fun mapDefault!23947 () ValueCell!7028)

