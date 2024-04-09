; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73278 () Bool)

(assert start!73278)

(declare-fun b_free!14165 () Bool)

(declare-fun b_next!14165 () Bool)

(assert (=> start!73278 (= b_free!14165 (not b_next!14165))))

(declare-fun tp!50000 () Bool)

(declare-fun b_and!23507 () Bool)

(assert (=> start!73278 (= tp!50000 b_and!23507)))

(declare-fun b!853882 () Bool)

(declare-fun e!476189 () Bool)

(declare-fun e!476191 () Bool)

(declare-fun mapRes!26051 () Bool)

(assert (=> b!853882 (= e!476189 (and e!476191 mapRes!26051))))

(declare-fun condMapEmpty!26051 () Bool)

(declare-datatypes ((V!26781 0))(
  ( (V!26782 (val!8198 Int)) )
))
(declare-datatypes ((ValueCell!7711 0))(
  ( (ValueCellFull!7711 (v!10619 V!26781)) (EmptyCell!7711) )
))
(declare-datatypes ((array!48784 0))(
  ( (array!48785 (arr!23419 (Array (_ BitVec 32) ValueCell!7711)) (size!23860 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48784)

(declare-fun mapDefault!26051 () ValueCell!7711)

