; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37424 () Bool)

(assert start!37424)

(declare-fun b_free!8543 () Bool)

(declare-fun b_next!8543 () Bool)

(assert (=> start!37424 (= b_free!8543 (not b_next!8543))))

(declare-fun tp!30345 () Bool)

(declare-fun b_and!15803 () Bool)

(assert (=> start!37424 (= tp!30345 b_and!15803)))

(declare-fun b!380475 () Bool)

(declare-fun res!216087 () Bool)

(declare-fun e!231408 () Bool)

(assert (=> b!380475 (=> (not res!216087) (not e!231408))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380475 (= res!216087 (validKeyInArray!0 k!778))))

(declare-fun b!380476 () Bool)

(declare-fun res!216096 () Bool)

(assert (=> b!380476 (=> (not res!216096) (not e!231408))))

(declare-datatypes ((array!22279 0))(
  ( (array!22280 (arr!10605 (Array (_ BitVec 32) (_ BitVec 64))) (size!10957 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22279)

(declare-datatypes ((List!6056 0))(
  ( (Nil!6053) (Cons!6052 (h!6908 (_ BitVec 64)) (t!11214 List!6056)) )
))
(declare-fun arrayNoDuplicates!0 (array!22279 (_ BitVec 32) List!6056) Bool)

(assert (=> b!380476 (= res!216096 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6053))))

(declare-fun b!380477 () Bool)

(declare-fun e!231404 () Bool)

(declare-fun e!231410 () Bool)

(declare-fun mapRes!15351 () Bool)

(assert (=> b!380477 (= e!231404 (and e!231410 mapRes!15351))))

(declare-fun condMapEmpty!15351 () Bool)

(declare-datatypes ((V!13359 0))(
  ( (V!13360 (val!4640 Int)) )
))
(declare-datatypes ((ValueCell!4252 0))(
  ( (ValueCellFull!4252 (v!6833 V!13359)) (EmptyCell!4252) )
))
(declare-datatypes ((array!22281 0))(
  ( (array!22282 (arr!10606 (Array (_ BitVec 32) ValueCell!4252)) (size!10958 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22281)

(declare-fun mapDefault!15351 () ValueCell!4252)

