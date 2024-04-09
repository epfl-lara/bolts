; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37066 () Bool)

(assert start!37066)

(declare-fun b_free!8185 () Bool)

(declare-fun b_next!8185 () Bool)

(assert (=> start!37066 (= b_free!8185 (not b_next!8185))))

(declare-fun tp!29271 () Bool)

(declare-fun b_and!15445 () Bool)

(assert (=> start!37066 (= tp!29271 b_and!15445)))

(declare-fun b!372452 () Bool)

(declare-fun res!209677 () Bool)

(declare-fun e!227172 () Bool)

(assert (=> b!372452 (=> (not res!209677) (not e!227172))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372452 (= res!209677 (validKeyInArray!0 k!778))))

(declare-fun res!209678 () Bool)

(assert (=> start!37066 (=> (not res!209678) (not e!227172))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37066 (= res!209678 (validMask!0 mask!970))))

(assert (=> start!37066 e!227172))

(declare-datatypes ((V!12883 0))(
  ( (V!12884 (val!4461 Int)) )
))
(declare-datatypes ((ValueCell!4073 0))(
  ( (ValueCellFull!4073 (v!6654 V!12883)) (EmptyCell!4073) )
))
(declare-datatypes ((array!21575 0))(
  ( (array!21576 (arr!10253 (Array (_ BitVec 32) ValueCell!4073)) (size!10605 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21575)

(declare-fun e!227167 () Bool)

(declare-fun array_inv!7572 (array!21575) Bool)

(assert (=> start!37066 (and (array_inv!7572 _values!506) e!227167)))

(assert (=> start!37066 tp!29271))

(assert (=> start!37066 true))

(declare-fun tp_is_empty!8833 () Bool)

(assert (=> start!37066 tp_is_empty!8833))

(declare-datatypes ((array!21577 0))(
  ( (array!21578 (arr!10254 (Array (_ BitVec 32) (_ BitVec 64))) (size!10606 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21577)

(declare-fun array_inv!7573 (array!21577) Bool)

(assert (=> start!37066 (array_inv!7573 _keys!658)))

(declare-fun b!372453 () Bool)

(declare-fun res!209679 () Bool)

(assert (=> b!372453 (=> (not res!209679) (not e!227172))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372453 (= res!209679 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10606 _keys!658))))))

(declare-fun b!372454 () Bool)

(declare-fun e!227171 () Bool)

(declare-fun mapRes!14814 () Bool)

(assert (=> b!372454 (= e!227167 (and e!227171 mapRes!14814))))

(declare-fun condMapEmpty!14814 () Bool)

(declare-fun mapDefault!14814 () ValueCell!4073)

