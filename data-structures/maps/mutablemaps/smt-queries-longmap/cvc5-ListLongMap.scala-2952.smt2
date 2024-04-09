; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41940 () Bool)

(assert start!41940)

(declare-fun b_free!11521 () Bool)

(declare-fun b_next!11521 () Bool)

(assert (=> start!41940 (= b_free!11521 (not b_next!11521))))

(declare-fun tp!40576 () Bool)

(declare-fun b_and!19927 () Bool)

(assert (=> start!41940 (= tp!40576 b_and!19927)))

(declare-fun b!467963 () Bool)

(declare-fun res!279749 () Bool)

(declare-fun e!273852 () Bool)

(assert (=> b!467963 (=> (not res!279749) (not e!273852))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29629 0))(
  ( (array!29630 (arr!14238 (Array (_ BitVec 32) (_ BitVec 64))) (size!14590 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29629)

(declare-datatypes ((V!18371 0))(
  ( (V!18372 (val!6519 Int)) )
))
(declare-datatypes ((ValueCell!6131 0))(
  ( (ValueCellFull!6131 (v!8804 V!18371)) (EmptyCell!6131) )
))
(declare-datatypes ((array!29631 0))(
  ( (array!29632 (arr!14239 (Array (_ BitVec 32) ValueCell!6131)) (size!14591 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29631)

(assert (=> b!467963 (= res!279749 (and (= (size!14591 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14590 _keys!1025) (size!14591 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467964 () Bool)

(declare-fun e!273854 () Bool)

(declare-fun e!273853 () Bool)

(declare-fun mapRes!21115 () Bool)

(assert (=> b!467964 (= e!273854 (and e!273853 mapRes!21115))))

(declare-fun condMapEmpty!21115 () Bool)

(declare-fun mapDefault!21115 () ValueCell!6131)

