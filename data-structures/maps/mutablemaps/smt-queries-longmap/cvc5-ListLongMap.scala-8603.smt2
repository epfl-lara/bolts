; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104884 () Bool)

(assert start!104884)

(declare-fun b_free!26653 () Bool)

(declare-fun b_next!26653 () Bool)

(assert (=> start!104884 (= b_free!26653 (not b_next!26653))))

(declare-fun tp!93450 () Bool)

(declare-fun b_and!44431 () Bool)

(assert (=> start!104884 (= tp!93450 b_and!44431)))

(declare-fun b!1249648 () Bool)

(declare-fun e!709332 () Bool)

(declare-fun e!709330 () Bool)

(declare-fun mapRes!49093 () Bool)

(assert (=> b!1249648 (= e!709332 (and e!709330 mapRes!49093))))

(declare-fun condMapEmpty!49093 () Bool)

(declare-datatypes ((V!47439 0))(
  ( (V!47440 (val!15840 Int)) )
))
(declare-datatypes ((ValueCell!15014 0))(
  ( (ValueCellFull!15014 (v!18536 V!47439)) (EmptyCell!15014) )
))
(declare-datatypes ((array!80763 0))(
  ( (array!80764 (arr!38944 (Array (_ BitVec 32) ValueCell!15014)) (size!39481 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80763)

(declare-fun mapDefault!49093 () ValueCell!15014)

