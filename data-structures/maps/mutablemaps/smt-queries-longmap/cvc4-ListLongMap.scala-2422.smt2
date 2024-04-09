; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38272 () Bool)

(assert start!38272)

(declare-fun b!394610 () Bool)

(declare-fun e!238911 () Bool)

(declare-fun e!238910 () Bool)

(declare-fun mapRes!16260 () Bool)

(assert (=> b!394610 (= e!238911 (and e!238910 mapRes!16260))))

(declare-fun condMapEmpty!16260 () Bool)

(declare-datatypes ((V!14135 0))(
  ( (V!14136 (val!4931 Int)) )
))
(declare-datatypes ((ValueCell!4543 0))(
  ( (ValueCellFull!4543 (v!7172 V!14135)) (EmptyCell!4543) )
))
(declare-datatypes ((array!23427 0))(
  ( (array!23428 (arr!11167 (Array (_ BitVec 32) ValueCell!4543)) (size!11519 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23427)

(declare-fun mapDefault!16260 () ValueCell!4543)

