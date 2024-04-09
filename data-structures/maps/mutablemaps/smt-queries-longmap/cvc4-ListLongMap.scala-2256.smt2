; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37010 () Bool)

(assert start!37010)

(declare-fun b_free!8129 () Bool)

(declare-fun b_next!8129 () Bool)

(assert (=> start!37010 (= b_free!8129 (not b_next!8129))))

(declare-fun tp!29102 () Bool)

(declare-fun b_and!15389 () Bool)

(assert (=> start!37010 (= tp!29102 b_and!15389)))

(declare-fun b!371360 () Bool)

(declare-fun e!226668 () Bool)

(declare-fun e!226667 () Bool)

(declare-fun mapRes!14730 () Bool)

(assert (=> b!371360 (= e!226668 (and e!226667 mapRes!14730))))

(declare-fun condMapEmpty!14730 () Bool)

(declare-datatypes ((V!12807 0))(
  ( (V!12808 (val!4433 Int)) )
))
(declare-datatypes ((ValueCell!4045 0))(
  ( (ValueCellFull!4045 (v!6626 V!12807)) (EmptyCell!4045) )
))
(declare-datatypes ((array!21467 0))(
  ( (array!21468 (arr!10199 (Array (_ BitVec 32) ValueCell!4045)) (size!10551 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21467)

(declare-fun mapDefault!14730 () ValueCell!4045)

