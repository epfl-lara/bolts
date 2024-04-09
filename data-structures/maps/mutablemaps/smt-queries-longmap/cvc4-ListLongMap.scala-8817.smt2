; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107166 () Bool)

(assert start!107166)

(declare-fun b_free!27635 () Bool)

(declare-fun b_next!27635 () Bool)

(assert (=> start!107166 (= b_free!27635 (not b_next!27635))))

(declare-fun tp!97132 () Bool)

(declare-fun b_and!45677 () Bool)

(assert (=> start!107166 (= tp!97132 b_and!45677)))

(declare-fun b!1270057 () Bool)

(declare-fun res!845274 () Bool)

(declare-fun e!723951 () Bool)

(assert (=> b!1270057 (=> (not res!845274) (not e!723951))))

(declare-datatypes ((array!82871 0))(
  ( (array!82872 (arr!39968 (Array (_ BitVec 32) (_ BitVec 64))) (size!40505 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82871)

(declare-datatypes ((List!28640 0))(
  ( (Nil!28637) (Cons!28636 (h!29845 (_ BitVec 64)) (t!42176 List!28640)) )
))
(declare-fun arrayNoDuplicates!0 (array!82871 (_ BitVec 32) List!28640) Bool)

(assert (=> b!1270057 (= res!845274 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28637))))

(declare-fun b!1270058 () Bool)

(declare-fun res!845272 () Bool)

(assert (=> b!1270058 (=> (not res!845272) (not e!723951))))

(declare-datatypes ((V!48951 0))(
  ( (V!48952 (val!16484 Int)) )
))
(declare-datatypes ((ValueCell!15556 0))(
  ( (ValueCellFull!15556 (v!19119 V!48951)) (EmptyCell!15556) )
))
(declare-datatypes ((array!82873 0))(
  ( (array!82874 (arr!39969 (Array (_ BitVec 32) ValueCell!15556)) (size!40506 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82873)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270058 (= res!845272 (and (= (size!40506 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40505 _keys!1364) (size!40506 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270059 () Bool)

(declare-fun e!723949 () Bool)

(declare-fun e!723950 () Bool)

(declare-fun mapRes!50809 () Bool)

(assert (=> b!1270059 (= e!723949 (and e!723950 mapRes!50809))))

(declare-fun condMapEmpty!50809 () Bool)

(declare-fun mapDefault!50809 () ValueCell!15556)

