; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41858 () Bool)

(assert start!41858)

(declare-fun b_free!11453 () Bool)

(declare-fun b_next!11453 () Bool)

(assert (=> start!41858 (= b_free!11453 (not b_next!11453))))

(declare-fun tp!40369 () Bool)

(declare-fun b_and!19851 () Bool)

(assert (=> start!41858 (= tp!40369 b_and!19851)))

(declare-fun b!467108 () Bool)

(declare-fun res!279252 () Bool)

(declare-fun e!273228 () Bool)

(assert (=> b!467108 (=> (not res!279252) (not e!273228))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29497 0))(
  ( (array!29498 (arr!14173 (Array (_ BitVec 32) (_ BitVec 64))) (size!14525 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29497)

(declare-datatypes ((V!18279 0))(
  ( (V!18280 (val!6485 Int)) )
))
(declare-datatypes ((ValueCell!6097 0))(
  ( (ValueCellFull!6097 (v!8770 V!18279)) (EmptyCell!6097) )
))
(declare-datatypes ((array!29499 0))(
  ( (array!29500 (arr!14174 (Array (_ BitVec 32) ValueCell!6097)) (size!14526 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29499)

(assert (=> b!467108 (= res!279252 (and (= (size!14526 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14525 _keys!1025) (size!14526 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!279254 () Bool)

(assert (=> start!41858 (=> (not res!279254) (not e!273228))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41858 (= res!279254 (validMask!0 mask!1365))))

(assert (=> start!41858 e!273228))

(declare-fun tp_is_empty!12881 () Bool)

(assert (=> start!41858 tp_is_empty!12881))

(assert (=> start!41858 tp!40369))

(assert (=> start!41858 true))

(declare-fun array_inv!10218 (array!29497) Bool)

(assert (=> start!41858 (array_inv!10218 _keys!1025)))

(declare-fun e!273229 () Bool)

(declare-fun array_inv!10219 (array!29499) Bool)

(assert (=> start!41858 (and (array_inv!10219 _values!833) e!273229)))

(declare-fun b!467109 () Bool)

(declare-fun e!273232 () Bool)

(declare-fun mapRes!21010 () Bool)

(assert (=> b!467109 (= e!273229 (and e!273232 mapRes!21010))))

(declare-fun condMapEmpty!21010 () Bool)

(declare-fun mapDefault!21010 () ValueCell!6097)

