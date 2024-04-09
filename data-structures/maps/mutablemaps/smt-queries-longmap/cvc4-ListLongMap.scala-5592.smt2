; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73368 () Bool)

(assert start!73368)

(declare-fun b_free!14255 () Bool)

(declare-fun b_next!14255 () Bool)

(assert (=> start!73368 (= b_free!14255 (not b_next!14255))))

(declare-fun tp!50270 () Bool)

(declare-fun b_and!23629 () Bool)

(assert (=> start!73368 (= tp!50270 b_and!23629)))

(declare-fun b!855583 () Bool)

(declare-fun res!581188 () Bool)

(declare-fun e!477004 () Bool)

(assert (=> b!855583 (=> (not res!581188) (not e!477004))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855583 (= res!581188 (validKeyInArray!0 k!854))))

(declare-fun b!855584 () Bool)

(declare-fun e!477006 () Bool)

(declare-fun e!477005 () Bool)

(declare-fun mapRes!26186 () Bool)

(assert (=> b!855584 (= e!477006 (and e!477005 mapRes!26186))))

(declare-fun condMapEmpty!26186 () Bool)

(declare-datatypes ((V!26901 0))(
  ( (V!26902 (val!8243 Int)) )
))
(declare-datatypes ((ValueCell!7756 0))(
  ( (ValueCellFull!7756 (v!10664 V!26901)) (EmptyCell!7756) )
))
(declare-datatypes ((array!48958 0))(
  ( (array!48959 (arr!23506 (Array (_ BitVec 32) ValueCell!7756)) (size!23947 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48958)

(declare-fun mapDefault!26186 () ValueCell!7756)

