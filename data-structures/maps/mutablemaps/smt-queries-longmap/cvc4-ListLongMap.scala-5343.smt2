; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71430 () Bool)

(assert start!71430)

(declare-fun b_free!13469 () Bool)

(declare-fun b_next!13469 () Bool)

(assert (=> start!71430 (= b_free!13469 (not b_next!13469))))

(declare-fun tp!47184 () Bool)

(declare-fun b_and!22481 () Bool)

(assert (=> start!71430 (= tp!47184 b_and!22481)))

(declare-fun b!829133 () Bool)

(declare-fun e!462179 () Bool)

(declare-fun tp_is_empty!15179 () Bool)

(assert (=> b!829133 (= e!462179 tp_is_empty!15179)))

(declare-fun mapIsEmpty!24412 () Bool)

(declare-fun mapRes!24412 () Bool)

(assert (=> mapIsEmpty!24412 mapRes!24412))

(declare-fun b!829134 () Bool)

(declare-fun res!564977 () Bool)

(declare-fun e!462180 () Bool)

(assert (=> b!829134 (=> (not res!564977) (not e!462180))))

(declare-datatypes ((array!46500 0))(
  ( (array!46501 (arr!22285 (Array (_ BitVec 32) (_ BitVec 64))) (size!22706 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46500)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((V!25239 0))(
  ( (V!25240 (val!7637 Int)) )
))
(declare-datatypes ((ValueCell!7174 0))(
  ( (ValueCellFull!7174 (v!10072 V!25239)) (EmptyCell!7174) )
))
(declare-datatypes ((array!46502 0))(
  ( (array!46503 (arr!22286 (Array (_ BitVec 32) ValueCell!7174)) (size!22707 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46502)

(assert (=> b!829134 (= res!564977 (and (= (size!22707 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22706 _keys!976) (size!22707 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!829135 () Bool)

(declare-fun e!462175 () Bool)

(declare-fun e!462178 () Bool)

(assert (=> b!829135 (= e!462175 (and e!462178 mapRes!24412))))

(declare-fun condMapEmpty!24412 () Bool)

(declare-fun mapDefault!24412 () ValueCell!7174)

