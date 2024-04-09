; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70398 () Bool)

(assert start!70398)

(declare-fun b_free!12731 () Bool)

(declare-fun b_next!12731 () Bool)

(assert (=> start!70398 (= b_free!12731 (not b_next!12731))))

(declare-fun tp!44919 () Bool)

(declare-fun b_and!21561 () Bool)

(assert (=> start!70398 (= tp!44919 b_and!21561)))

(declare-fun b!817371 () Bool)

(declare-fun e!453600 () Bool)

(declare-fun tp_is_empty!14441 () Bool)

(assert (=> b!817371 (= e!453600 tp_is_empty!14441)))

(declare-fun b!817372 () Bool)

(declare-fun e!453602 () Bool)

(assert (=> b!817372 (= e!453602 tp_is_empty!14441)))

(declare-fun b!817373 () Bool)

(declare-fun res!558042 () Bool)

(declare-fun e!453601 () Bool)

(assert (=> b!817373 (=> (not res!558042) (not e!453601))))

(declare-datatypes ((array!45056 0))(
  ( (array!45057 (arr!21580 (Array (_ BitVec 32) (_ BitVec 64))) (size!22001 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45056)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24255 0))(
  ( (V!24256 (val!7268 Int)) )
))
(declare-datatypes ((ValueCell!6805 0))(
  ( (ValueCellFull!6805 (v!9693 V!24255)) (EmptyCell!6805) )
))
(declare-datatypes ((array!45058 0))(
  ( (array!45059 (arr!21581 (Array (_ BitVec 32) ValueCell!6805)) (size!22002 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45058)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817373 (= res!558042 (and (= (size!22002 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22001 _keys!976) (size!22002 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23254 () Bool)

(declare-fun mapRes!23254 () Bool)

(assert (=> mapIsEmpty!23254 mapRes!23254))

(declare-fun b!817374 () Bool)

(declare-fun e!453599 () Bool)

(assert (=> b!817374 (= e!453599 (and e!453600 mapRes!23254))))

(declare-fun condMapEmpty!23254 () Bool)

(declare-fun mapDefault!23254 () ValueCell!6805)

