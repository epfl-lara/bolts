; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97710 () Bool)

(assert start!97710)

(declare-fun b!1116355 () Bool)

(declare-fun e!636090 () Bool)

(declare-fun e!636092 () Bool)

(declare-fun mapRes!43675 () Bool)

(assert (=> b!1116355 (= e!636090 (and e!636092 mapRes!43675))))

(declare-fun condMapEmpty!43675 () Bool)

(declare-datatypes ((V!42333 0))(
  ( (V!42334 (val!14009 Int)) )
))
(declare-datatypes ((ValueCell!13243 0))(
  ( (ValueCellFull!13243 (v!16643 V!42333)) (EmptyCell!13243) )
))
(declare-datatypes ((array!72650 0))(
  ( (array!72651 (arr!34974 (Array (_ BitVec 32) ValueCell!13243)) (size!35511 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72650)

(declare-fun mapDefault!43675 () ValueCell!13243)

