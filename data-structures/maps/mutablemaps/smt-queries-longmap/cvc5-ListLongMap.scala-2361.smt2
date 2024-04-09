; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37636 () Bool)

(assert start!37636)

(declare-fun b_free!8755 () Bool)

(declare-fun b_next!8755 () Bool)

(assert (=> start!37636 (= b_free!8755 (not b_next!8755))))

(declare-fun tp!30980 () Bool)

(declare-fun b_and!16015 () Bool)

(assert (=> start!37636 (= tp!30980 b_and!16015)))

(declare-fun b!384946 () Bool)

(declare-fun res!219604 () Bool)

(declare-fun e!233649 () Bool)

(assert (=> b!384946 (=> (not res!219604) (not e!233649))))

(declare-datatypes ((array!22691 0))(
  ( (array!22692 (arr!10811 (Array (_ BitVec 32) (_ BitVec 64))) (size!11163 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22691)

(declare-datatypes ((List!6212 0))(
  ( (Nil!6209) (Cons!6208 (h!7064 (_ BitVec 64)) (t!11370 List!6212)) )
))
(declare-fun arrayNoDuplicates!0 (array!22691 (_ BitVec 32) List!6212) Bool)

(assert (=> b!384946 (= res!219604 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6209))))

(declare-fun b!384947 () Bool)

(declare-fun e!233655 () Bool)

(declare-fun e!233650 () Bool)

(declare-fun mapRes!15669 () Bool)

(assert (=> b!384947 (= e!233655 (and e!233650 mapRes!15669))))

(declare-fun condMapEmpty!15669 () Bool)

(declare-datatypes ((V!13643 0))(
  ( (V!13644 (val!4746 Int)) )
))
(declare-datatypes ((ValueCell!4358 0))(
  ( (ValueCellFull!4358 (v!6939 V!13643)) (EmptyCell!4358) )
))
(declare-datatypes ((array!22693 0))(
  ( (array!22694 (arr!10812 (Array (_ BitVec 32) ValueCell!4358)) (size!11164 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22693)

(declare-fun mapDefault!15669 () ValueCell!4358)

