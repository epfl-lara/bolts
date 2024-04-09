; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36956 () Bool)

(assert start!36956)

(declare-fun b_free!8075 () Bool)

(declare-fun b_next!8075 () Bool)

(assert (=> start!36956 (= b_free!8075 (not b_next!8075))))

(declare-fun tp!28940 () Bool)

(declare-fun b_and!15335 () Bool)

(assert (=> start!36956 (= tp!28940 b_and!15335)))

(declare-fun b!370307 () Bool)

(declare-fun e!226177 () Bool)

(declare-fun e!226180 () Bool)

(declare-fun mapRes!14649 () Bool)

(assert (=> b!370307 (= e!226177 (and e!226180 mapRes!14649))))

(declare-fun condMapEmpty!14649 () Bool)

(declare-datatypes ((V!12735 0))(
  ( (V!12736 (val!4406 Int)) )
))
(declare-datatypes ((ValueCell!4018 0))(
  ( (ValueCellFull!4018 (v!6599 V!12735)) (EmptyCell!4018) )
))
(declare-datatypes ((array!21365 0))(
  ( (array!21366 (arr!10148 (Array (_ BitVec 32) ValueCell!4018)) (size!10500 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21365)

(declare-fun mapDefault!14649 () ValueCell!4018)

