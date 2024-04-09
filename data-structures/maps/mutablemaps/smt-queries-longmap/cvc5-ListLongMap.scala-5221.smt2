; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70400 () Bool)

(assert start!70400)

(declare-fun b_free!12733 () Bool)

(declare-fun b_next!12733 () Bool)

(assert (=> start!70400 (= b_free!12733 (not b_next!12733))))

(declare-fun tp!44925 () Bool)

(declare-fun b_and!21563 () Bool)

(assert (=> start!70400 (= tp!44925 b_and!21563)))

(declare-fun b!817392 () Bool)

(declare-fun res!558056 () Bool)

(declare-fun e!453613 () Bool)

(assert (=> b!817392 (=> (not res!558056) (not e!453613))))

(declare-datatypes ((array!45060 0))(
  ( (array!45061 (arr!21582 (Array (_ BitVec 32) (_ BitVec 64))) (size!22003 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45060)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24259 0))(
  ( (V!24260 (val!7269 Int)) )
))
(declare-datatypes ((ValueCell!6806 0))(
  ( (ValueCellFull!6806 (v!9694 V!24259)) (EmptyCell!6806) )
))
(declare-datatypes ((array!45062 0))(
  ( (array!45063 (arr!21583 (Array (_ BitVec 32) ValueCell!6806)) (size!22004 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45062)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817392 (= res!558056 (and (= (size!22004 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22003 _keys!976) (size!22004 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23257 () Bool)

(declare-fun mapRes!23257 () Bool)

(assert (=> mapIsEmpty!23257 mapRes!23257))

(declare-fun res!558055 () Bool)

(assert (=> start!70400 (=> (not res!558055) (not e!453613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70400 (= res!558055 (validMask!0 mask!1312))))

(assert (=> start!70400 e!453613))

(declare-fun tp_is_empty!14443 () Bool)

(assert (=> start!70400 tp_is_empty!14443))

(declare-fun array_inv!17237 (array!45060) Bool)

(assert (=> start!70400 (array_inv!17237 _keys!976)))

(assert (=> start!70400 true))

(declare-fun e!453615 () Bool)

(declare-fun array_inv!17238 (array!45062) Bool)

(assert (=> start!70400 (and (array_inv!17238 _values!788) e!453615)))

(assert (=> start!70400 tp!44925))

(declare-fun b!817393 () Bool)

(declare-fun e!453617 () Bool)

(assert (=> b!817393 (= e!453615 (and e!453617 mapRes!23257))))

(declare-fun condMapEmpty!23257 () Bool)

(declare-fun mapDefault!23257 () ValueCell!6806)

