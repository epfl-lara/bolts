; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106130 () Bool)

(assert start!106130)

(declare-fun b_free!27509 () Bool)

(declare-fun b_next!27509 () Bool)

(assert (=> start!106130 (= b_free!27509 (not b_next!27509))))

(declare-fun tp!96081 () Bool)

(declare-fun b_and!45503 () Bool)

(assert (=> start!106130 (= tp!96081 b_and!45503)))

(declare-fun b!1263229 () Bool)

(declare-fun e!719215 () Bool)

(declare-fun tp_is_empty!32411 () Bool)

(assert (=> b!1263229 (= e!719215 tp_is_empty!32411)))

(declare-fun b!1263230 () Bool)

(declare-fun e!719218 () Bool)

(declare-fun e!719217 () Bool)

(declare-fun mapRes!50440 () Bool)

(assert (=> b!1263230 (= e!719218 (and e!719217 mapRes!50440))))

(declare-fun condMapEmpty!50440 () Bool)

(declare-datatypes ((V!48579 0))(
  ( (V!48580 (val!16268 Int)) )
))
(declare-datatypes ((ValueCell!15442 0))(
  ( (ValueCellFull!15442 (v!18978 V!48579)) (EmptyCell!15442) )
))
(declare-datatypes ((array!82429 0))(
  ( (array!82430 (arr!39756 (Array (_ BitVec 32) ValueCell!15442)) (size!40293 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82429)

(declare-fun mapDefault!50440 () ValueCell!15442)

