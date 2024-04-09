; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73130 () Bool)

(assert start!73130)

(declare-fun b_free!14017 () Bool)

(declare-fun b_next!14017 () Bool)

(assert (=> start!73130 (= b_free!14017 (not b_next!14017))))

(declare-fun tp!49555 () Bool)

(declare-fun b_and!23211 () Bool)

(assert (=> start!73130 (= tp!49555 b_and!23211)))

(declare-fun b!850404 () Bool)

(declare-fun res!577791 () Bool)

(declare-fun e!474420 () Bool)

(assert (=> b!850404 (=> (not res!577791) (not e!474420))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850404 (= res!577791 (validKeyInArray!0 k!854))))

(declare-fun b!850405 () Bool)

(declare-fun e!474415 () Bool)

(declare-fun e!474419 () Bool)

(declare-fun mapRes!25829 () Bool)

(assert (=> b!850405 (= e!474415 (and e!474419 mapRes!25829))))

(declare-fun condMapEmpty!25829 () Bool)

(declare-datatypes ((V!26585 0))(
  ( (V!26586 (val!8124 Int)) )
))
(declare-datatypes ((ValueCell!7637 0))(
  ( (ValueCellFull!7637 (v!10545 V!26585)) (EmptyCell!7637) )
))
(declare-datatypes ((array!48496 0))(
  ( (array!48497 (arr!23275 (Array (_ BitVec 32) ValueCell!7637)) (size!23716 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48496)

(declare-fun mapDefault!25829 () ValueCell!7637)

