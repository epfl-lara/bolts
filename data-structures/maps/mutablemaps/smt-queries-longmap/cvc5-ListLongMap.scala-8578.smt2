; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104722 () Bool)

(assert start!104722)

(declare-fun b_free!26503 () Bool)

(declare-fun b_next!26503 () Bool)

(assert (=> start!104722 (= b_free!26503 (not b_next!26503))))

(declare-fun tp!92996 () Bool)

(declare-fun b_and!44277 () Bool)

(assert (=> start!104722 (= tp!92996 b_and!44277)))

(declare-fun b!1248000 () Bool)

(declare-fun e!708155 () Bool)

(declare-fun tp_is_empty!31405 () Bool)

(assert (=> b!1248000 (= e!708155 tp_is_empty!31405)))

(declare-fun b!1248001 () Bool)

(declare-fun e!708156 () Bool)

(assert (=> b!1248001 (= e!708156 tp_is_empty!31405)))

(declare-fun b!1248002 () Bool)

(declare-fun e!708157 () Bool)

(declare-fun mapRes!48865 () Bool)

(assert (=> b!1248002 (= e!708157 (and e!708155 mapRes!48865))))

(declare-fun condMapEmpty!48865 () Bool)

(declare-datatypes ((V!47239 0))(
  ( (V!47240 (val!15765 Int)) )
))
(declare-datatypes ((ValueCell!14939 0))(
  ( (ValueCellFull!14939 (v!18461 V!47239)) (EmptyCell!14939) )
))
(declare-datatypes ((array!80479 0))(
  ( (array!80480 (arr!38803 (Array (_ BitVec 32) ValueCell!14939)) (size!39340 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80479)

(declare-fun mapDefault!48865 () ValueCell!14939)

