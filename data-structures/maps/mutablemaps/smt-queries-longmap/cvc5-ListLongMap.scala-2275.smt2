; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37120 () Bool)

(assert start!37120)

(declare-fun b_free!8239 () Bool)

(declare-fun b_next!8239 () Bool)

(assert (=> start!37120 (= b_free!8239 (not b_next!8239))))

(declare-fun tp!29432 () Bool)

(declare-fun b_and!15499 () Bool)

(assert (=> start!37120 (= tp!29432 b_and!15499)))

(declare-fun b!373617 () Bool)

(declare-fun e!227761 () Bool)

(declare-fun e!227757 () Bool)

(declare-fun mapRes!14895 () Bool)

(assert (=> b!373617 (= e!227761 (and e!227757 mapRes!14895))))

(declare-fun condMapEmpty!14895 () Bool)

(declare-datatypes ((V!12955 0))(
  ( (V!12956 (val!4488 Int)) )
))
(declare-datatypes ((ValueCell!4100 0))(
  ( (ValueCellFull!4100 (v!6681 V!12955)) (EmptyCell!4100) )
))
(declare-datatypes ((array!21681 0))(
  ( (array!21682 (arr!10306 (Array (_ BitVec 32) ValueCell!4100)) (size!10658 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21681)

(declare-fun mapDefault!14895 () ValueCell!4100)

