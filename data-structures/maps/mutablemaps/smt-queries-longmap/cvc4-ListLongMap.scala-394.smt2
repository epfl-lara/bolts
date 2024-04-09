; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7420 () Bool)

(assert start!7420)

(declare-fun mapIsEmpty!2111 () Bool)

(declare-fun mapRes!2111 () Bool)

(assert (=> mapIsEmpty!2111 mapRes!2111))

(declare-fun b!47618 () Bool)

(declare-fun e!30519 () Bool)

(declare-fun e!30517 () Bool)

(assert (=> b!47618 (= e!30519 (and e!30517 mapRes!2111))))

(declare-fun condMapEmpty!2111 () Bool)

(declare-datatypes ((V!2459 0))(
  ( (V!2460 (val!1061 Int)) )
))
(declare-datatypes ((ValueCell!733 0))(
  ( (ValueCellFull!733 (v!2121 V!2459)) (EmptyCell!733) )
))
(declare-datatypes ((array!3154 0))(
  ( (array!3155 (arr!1511 (Array (_ BitVec 32) ValueCell!733)) (size!1733 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3154)

(declare-fun mapDefault!2111 () ValueCell!733)

