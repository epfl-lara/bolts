; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70090 () Bool)

(assert start!70090)

(declare-fun b_free!12487 () Bool)

(declare-fun b_next!12487 () Bool)

(assert (=> start!70090 (= b_free!12487 (not b_next!12487))))

(declare-fun tp!44175 () Bool)

(declare-fun b_and!21277 () Bool)

(assert (=> start!70090 (= tp!44175 b_and!21277)))

(declare-fun b!814109 () Bool)

(declare-fun e!451279 () Bool)

(declare-fun tp_is_empty!14197 () Bool)

(assert (=> b!814109 (= e!451279 tp_is_empty!14197)))

(declare-fun b!814110 () Bool)

(declare-fun res!556190 () Bool)

(declare-fun e!451278 () Bool)

(assert (=> b!814110 (=> (not res!556190) (not e!451278))))

(declare-datatypes ((array!44582 0))(
  ( (array!44583 (arr!21347 (Array (_ BitVec 32) (_ BitVec 64))) (size!21768 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44582)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23931 0))(
  ( (V!23932 (val!7146 Int)) )
))
(declare-datatypes ((ValueCell!6683 0))(
  ( (ValueCellFull!6683 (v!9569 V!23931)) (EmptyCell!6683) )
))
(declare-datatypes ((array!44584 0))(
  ( (array!44585 (arr!21348 (Array (_ BitVec 32) ValueCell!6683)) (size!21769 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44584)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814110 (= res!556190 (and (= (size!21769 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21768 _keys!976) (size!21769 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814111 () Bool)

(declare-fun res!556193 () Bool)

(assert (=> b!814111 (=> (not res!556193) (not e!451278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44582 (_ BitVec 32)) Bool)

(assert (=> b!814111 (= res!556193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22876 () Bool)

(declare-fun mapRes!22876 () Bool)

(declare-fun tp!44176 () Bool)

(assert (=> mapNonEmpty!22876 (= mapRes!22876 (and tp!44176 e!451279))))

(declare-fun mapValue!22876 () ValueCell!6683)

(declare-fun mapKey!22876 () (_ BitVec 32))

(declare-fun mapRest!22876 () (Array (_ BitVec 32) ValueCell!6683))

(assert (=> mapNonEmpty!22876 (= (arr!21348 _values!788) (store mapRest!22876 mapKey!22876 mapValue!22876))))

(declare-fun b!814113 () Bool)

(declare-fun e!451277 () Bool)

(declare-fun e!451276 () Bool)

(assert (=> b!814113 (= e!451277 (and e!451276 mapRes!22876))))

(declare-fun condMapEmpty!22876 () Bool)

(declare-fun mapDefault!22876 () ValueCell!6683)

