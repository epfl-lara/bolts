; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38236 () Bool)

(assert start!38236)

(declare-fun b_free!9065 () Bool)

(declare-fun b_next!9065 () Bool)

(assert (=> start!38236 (= b_free!9065 (not b_next!9065))))

(declare-fun tp!31982 () Bool)

(declare-fun b_and!16469 () Bool)

(assert (=> start!38236 (= tp!31982 b_and!16469)))

(declare-fun b!394126 () Bool)

(declare-fun res!225946 () Bool)

(declare-fun e!238595 () Bool)

(assert (=> b!394126 (=> (not res!225946) (not e!238595))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!23359 0))(
  ( (array!23360 (arr!11133 (Array (_ BitVec 32) (_ BitVec 64))) (size!11485 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23359)

(assert (=> b!394126 (= res!225946 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11485 _keys!658))))))

(declare-fun b!394127 () Bool)

(declare-fun e!238598 () Bool)

(declare-fun e!238596 () Bool)

(declare-fun mapRes!16206 () Bool)

(assert (=> b!394127 (= e!238598 (and e!238596 mapRes!16206))))

(declare-fun condMapEmpty!16206 () Bool)

(declare-datatypes ((V!14087 0))(
  ( (V!14088 (val!4913 Int)) )
))
(declare-datatypes ((ValueCell!4525 0))(
  ( (ValueCellFull!4525 (v!7154 V!14087)) (EmptyCell!4525) )
))
(declare-datatypes ((array!23361 0))(
  ( (array!23362 (arr!11134 (Array (_ BitVec 32) ValueCell!4525)) (size!11486 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23361)

(declare-fun mapDefault!16206 () ValueCell!4525)

