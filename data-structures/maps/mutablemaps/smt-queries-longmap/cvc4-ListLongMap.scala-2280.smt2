; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37154 () Bool)

(assert start!37154)

(declare-fun b_free!8273 () Bool)

(declare-fun b_next!8273 () Bool)

(assert (=> start!37154 (= b_free!8273 (not b_next!8273))))

(declare-fun tp!29534 () Bool)

(declare-fun b_and!15533 () Bool)

(assert (=> start!37154 (= tp!29534 b_and!15533)))

(declare-fun b!374382 () Bool)

(declare-fun res!211213 () Bool)

(declare-fun e!228164 () Bool)

(assert (=> b!374382 (=> (not res!211213) (not e!228164))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!374382 (= res!211213 (validKeyInArray!0 k!778))))

(declare-fun b!374383 () Bool)

(declare-fun e!228170 () Bool)

(declare-fun e!228166 () Bool)

(declare-fun mapRes!14946 () Bool)

(assert (=> b!374383 (= e!228170 (and e!228166 mapRes!14946))))

(declare-fun condMapEmpty!14946 () Bool)

(declare-datatypes ((V!12999 0))(
  ( (V!13000 (val!4505 Int)) )
))
(declare-datatypes ((ValueCell!4117 0))(
  ( (ValueCellFull!4117 (v!6698 V!12999)) (EmptyCell!4117) )
))
(declare-datatypes ((array!21745 0))(
  ( (array!21746 (arr!10338 (Array (_ BitVec 32) ValueCell!4117)) (size!10690 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21745)

(declare-fun mapDefault!14946 () ValueCell!4117)

