; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3976 () Bool)

(assert start!3976)

(declare-fun b_free!883 () Bool)

(declare-fun b_next!883 () Bool)

(assert (=> start!3976 (= b_free!883 (not b_next!883))))

(declare-fun tp!4068 () Bool)

(declare-fun b_and!1695 () Bool)

(assert (=> start!3976 (= tp!4068 b_and!1695)))

(declare-fun b!28684 () Bool)

(declare-fun e!18548 () Bool)

(declare-fun e!18547 () Bool)

(declare-fun mapRes!1384 () Bool)

(assert (=> b!28684 (= e!18548 (and e!18547 mapRes!1384))))

(declare-fun condMapEmpty!1384 () Bool)

(declare-datatypes ((V!1475 0))(
  ( (V!1476 (val!645 Int)) )
))
(declare-datatypes ((ValueCell!419 0))(
  ( (ValueCellFull!419 (v!1734 V!1475)) (EmptyCell!419) )
))
(declare-datatypes ((array!1699 0))(
  ( (array!1700 (arr!803 (Array (_ BitVec 32) ValueCell!419)) (size!904 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1699)

(declare-fun mapDefault!1384 () ValueCell!419)

