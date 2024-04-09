; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36986 () Bool)

(assert start!36986)

(declare-fun b_free!8105 () Bool)

(declare-fun b_next!8105 () Bool)

(assert (=> start!36986 (= b_free!8105 (not b_next!8105))))

(declare-fun tp!29031 () Bool)

(declare-fun b_and!15365 () Bool)

(assert (=> start!36986 (= tp!29031 b_and!15365)))

(declare-fun b!370892 () Bool)

(declare-fun e!226451 () Bool)

(declare-fun e!226450 () Bool)

(declare-fun mapRes!14694 () Bool)

(assert (=> b!370892 (= e!226451 (and e!226450 mapRes!14694))))

(declare-fun condMapEmpty!14694 () Bool)

(declare-datatypes ((V!12775 0))(
  ( (V!12776 (val!4421 Int)) )
))
(declare-datatypes ((ValueCell!4033 0))(
  ( (ValueCellFull!4033 (v!6614 V!12775)) (EmptyCell!4033) )
))
(declare-datatypes ((array!21421 0))(
  ( (array!21422 (arr!10176 (Array (_ BitVec 32) ValueCell!4033)) (size!10528 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21421)

(declare-fun mapDefault!14694 () ValueCell!4033)

