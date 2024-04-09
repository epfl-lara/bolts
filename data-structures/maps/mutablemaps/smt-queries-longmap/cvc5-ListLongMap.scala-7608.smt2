; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96004 () Bool)

(assert start!96004)

(declare-fun b_free!22621 () Bool)

(declare-fun b_next!22621 () Bool)

(assert (=> start!96004 (= b_free!22621 (not b_next!22621))))

(declare-fun tp!79713 () Bool)

(declare-fun b_and!35935 () Bool)

(assert (=> start!96004 (= tp!79713 b_and!35935)))

(declare-fun mapIsEmpty!41689 () Bool)

(declare-fun mapRes!41689 () Bool)

(assert (=> mapIsEmpty!41689 mapRes!41689))

(declare-fun b!1087352 () Bool)

(declare-fun e!621155 () Bool)

(declare-fun e!621156 () Bool)

(assert (=> b!1087352 (= e!621155 (and e!621156 mapRes!41689))))

(declare-fun condMapEmpty!41689 () Bool)

(declare-datatypes ((V!40625 0))(
  ( (V!40626 (val!13368 Int)) )
))
(declare-datatypes ((ValueCell!12602 0))(
  ( (ValueCellFull!12602 (v!15990 V!40625)) (EmptyCell!12602) )
))
(declare-datatypes ((array!70140 0))(
  ( (array!70141 (arr!33740 (Array (_ BitVec 32) ValueCell!12602)) (size!34277 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70140)

(declare-fun mapDefault!41689 () ValueCell!12602)

