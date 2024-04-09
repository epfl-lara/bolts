; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37070 () Bool)

(assert start!37070)

(declare-fun b_free!8189 () Bool)

(declare-fun b_next!8189 () Bool)

(assert (=> start!37070 (= b_free!8189 (not b_next!8189))))

(declare-fun tp!29283 () Bool)

(declare-fun b_and!15449 () Bool)

(assert (=> start!37070 (= tp!29283 b_and!15449)))

(declare-fun b!372530 () Bool)

(declare-fun e!227203 () Bool)

(declare-fun e!227207 () Bool)

(declare-fun mapRes!14820 () Bool)

(assert (=> b!372530 (= e!227203 (and e!227207 mapRes!14820))))

(declare-fun condMapEmpty!14820 () Bool)

(declare-datatypes ((V!12887 0))(
  ( (V!12888 (val!4463 Int)) )
))
(declare-datatypes ((ValueCell!4075 0))(
  ( (ValueCellFull!4075 (v!6656 V!12887)) (EmptyCell!4075) )
))
(declare-datatypes ((array!21583 0))(
  ( (array!21584 (arr!10257 (Array (_ BitVec 32) ValueCell!4075)) (size!10609 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21583)

(declare-fun mapDefault!14820 () ValueCell!4075)

