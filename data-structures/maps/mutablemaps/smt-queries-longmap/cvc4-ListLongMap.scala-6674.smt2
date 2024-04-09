; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84048 () Bool)

(assert start!84048)

(declare-fun b_free!19775 () Bool)

(declare-fun b_next!19775 () Bool)

(assert (=> start!84048 (= b_free!19775 (not b_next!19775))))

(declare-fun tp!68848 () Bool)

(declare-fun b_and!31651 () Bool)

(assert (=> start!84048 (= tp!68848 b_and!31651)))

(declare-fun b!981954 () Bool)

(declare-fun e!553571 () Bool)

(declare-fun e!553573 () Bool)

(declare-fun mapRes!36263 () Bool)

(assert (=> b!981954 (= e!553571 (and e!553573 mapRes!36263))))

(declare-fun condMapEmpty!36263 () Bool)

(declare-datatypes ((V!35413 0))(
  ( (V!35414 (val!11462 Int)) )
))
(declare-datatypes ((ValueCell!10930 0))(
  ( (ValueCellFull!10930 (v!14024 V!35413)) (EmptyCell!10930) )
))
(declare-datatypes ((array!61637 0))(
  ( (array!61638 (arr!29672 (Array (_ BitVec 32) ValueCell!10930)) (size!30152 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61637)

(declare-fun mapDefault!36263 () ValueCell!10930)

