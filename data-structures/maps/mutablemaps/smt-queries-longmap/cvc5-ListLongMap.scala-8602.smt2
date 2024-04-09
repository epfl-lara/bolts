; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104878 () Bool)

(assert start!104878)

(declare-fun b_free!26647 () Bool)

(declare-fun b_next!26647 () Bool)

(assert (=> start!104878 (= b_free!26647 (not b_next!26647))))

(declare-fun tp!93432 () Bool)

(declare-fun b_and!44425 () Bool)

(assert (=> start!104878 (= tp!93432 b_and!44425)))

(declare-fun b!1249585 () Bool)

(declare-fun e!709284 () Bool)

(declare-fun tp_is_empty!31549 () Bool)

(assert (=> b!1249585 (= e!709284 tp_is_empty!31549)))

(declare-fun b!1249586 () Bool)

(declare-fun e!709286 () Bool)

(declare-fun mapRes!49084 () Bool)

(assert (=> b!1249586 (= e!709286 (and e!709284 mapRes!49084))))

(declare-fun condMapEmpty!49084 () Bool)

(declare-datatypes ((V!47431 0))(
  ( (V!47432 (val!15837 Int)) )
))
(declare-datatypes ((ValueCell!15011 0))(
  ( (ValueCellFull!15011 (v!18533 V!47431)) (EmptyCell!15011) )
))
(declare-datatypes ((array!80753 0))(
  ( (array!80754 (arr!38939 (Array (_ BitVec 32) ValueCell!15011)) (size!39476 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80753)

(declare-fun mapDefault!49084 () ValueCell!15011)

