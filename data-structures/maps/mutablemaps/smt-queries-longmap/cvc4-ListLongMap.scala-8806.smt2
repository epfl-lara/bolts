; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107100 () Bool)

(assert start!107100)

(declare-fun b_free!27569 () Bool)

(declare-fun b_next!27569 () Bool)

(assert (=> start!107100 (= b_free!27569 (not b_next!27569))))

(declare-fun tp!96935 () Bool)

(declare-fun b_and!45611 () Bool)

(assert (=> start!107100 (= tp!96935 b_and!45611)))

(declare-fun b!1269265 () Bool)

(declare-fun e!723456 () Bool)

(declare-fun e!723458 () Bool)

(declare-fun mapRes!50710 () Bool)

(assert (=> b!1269265 (= e!723456 (and e!723458 mapRes!50710))))

(declare-fun condMapEmpty!50710 () Bool)

(declare-datatypes ((V!48863 0))(
  ( (V!48864 (val!16451 Int)) )
))
(declare-datatypes ((ValueCell!15523 0))(
  ( (ValueCellFull!15523 (v!19086 V!48863)) (EmptyCell!15523) )
))
(declare-datatypes ((array!82745 0))(
  ( (array!82746 (arr!39905 (Array (_ BitVec 32) ValueCell!15523)) (size!40442 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82745)

(declare-fun mapDefault!50710 () ValueCell!15523)

