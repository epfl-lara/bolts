; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38464 () Bool)

(assert start!38464)

(declare-fun b!396593 () Bool)

(declare-fun e!239952 () Bool)

(declare-fun e!239948 () Bool)

(declare-fun mapRes!16434 () Bool)

(assert (=> b!396593 (= e!239952 (and e!239948 mapRes!16434))))

(declare-fun condMapEmpty!16434 () Bool)

(declare-datatypes ((V!14271 0))(
  ( (V!14272 (val!4982 Int)) )
))
(declare-datatypes ((ValueCell!4594 0))(
  ( (ValueCellFull!4594 (v!7225 V!14271)) (EmptyCell!4594) )
))
(declare-datatypes ((array!23637 0))(
  ( (array!23638 (arr!11265 (Array (_ BitVec 32) ValueCell!4594)) (size!11617 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23637)

(declare-fun mapDefault!16434 () ValueCell!4594)

