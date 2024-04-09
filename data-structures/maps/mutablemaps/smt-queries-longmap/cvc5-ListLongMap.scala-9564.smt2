; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113282 () Bool)

(assert start!113282)

(declare-fun b_free!31297 () Bool)

(declare-fun b_next!31297 () Bool)

(assert (=> start!113282 (= b_free!31297 (not b_next!31297))))

(declare-fun tp!109696 () Bool)

(declare-fun b_and!50511 () Bool)

(assert (=> start!113282 (= tp!109696 b_and!50511)))

(declare-fun b!1343436 () Bool)

(declare-fun e!764677 () Bool)

(declare-fun e!764678 () Bool)

(declare-fun mapRes!57652 () Bool)

(assert (=> b!1343436 (= e!764677 (and e!764678 mapRes!57652))))

(declare-fun condMapEmpty!57652 () Bool)

(declare-datatypes ((V!54833 0))(
  ( (V!54834 (val!18723 Int)) )
))
(declare-datatypes ((ValueCell!17750 0))(
  ( (ValueCellFull!17750 (v!21369 V!54833)) (EmptyCell!17750) )
))
(declare-datatypes ((array!91395 0))(
  ( (array!91396 (arr!44149 (Array (_ BitVec 32) ValueCell!17750)) (size!44700 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91395)

(declare-fun mapDefault!57652 () ValueCell!17750)

