; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37646 () Bool)

(assert start!37646)

(declare-fun b_free!8765 () Bool)

(declare-fun b_next!8765 () Bool)

(assert (=> start!37646 (= b_free!8765 (not b_next!8765))))

(declare-fun tp!31011 () Bool)

(declare-fun b_and!16025 () Bool)

(assert (=> start!37646 (= tp!31011 b_and!16025)))

(declare-fun b!385164 () Bool)

(declare-fun e!233768 () Bool)

(declare-fun e!233767 () Bool)

(declare-fun mapRes!15684 () Bool)

(assert (=> b!385164 (= e!233768 (and e!233767 mapRes!15684))))

(declare-fun condMapEmpty!15684 () Bool)

(declare-datatypes ((V!13655 0))(
  ( (V!13656 (val!4751 Int)) )
))
(declare-datatypes ((ValueCell!4363 0))(
  ( (ValueCellFull!4363 (v!6944 V!13655)) (EmptyCell!4363) )
))
(declare-datatypes ((array!22711 0))(
  ( (array!22712 (arr!10821 (Array (_ BitVec 32) ValueCell!4363)) (size!11173 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22711)

(declare-fun mapDefault!15684 () ValueCell!4363)

