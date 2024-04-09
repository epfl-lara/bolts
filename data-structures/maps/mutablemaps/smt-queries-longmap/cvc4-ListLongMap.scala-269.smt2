; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4442 () Bool)

(assert start!4442)

(declare-fun b_free!1205 () Bool)

(declare-fun b_next!1205 () Bool)

(assert (=> start!4442 (= b_free!1205 (not b_next!1205))))

(declare-fun tp!5053 () Bool)

(declare-fun b_and!2029 () Bool)

(assert (=> start!4442 (= tp!5053 b_and!2029)))

(declare-fun b!34320 () Bool)

(declare-fun e!21789 () Bool)

(declare-fun tp_is_empty!1559 () Bool)

(assert (=> b!34320 (= e!21789 tp_is_empty!1559)))

(declare-fun b!34321 () Bool)

(declare-fun e!21790 () Bool)

(declare-fun mapRes!1885 () Bool)

(assert (=> b!34321 (= e!21790 (and e!21789 mapRes!1885))))

(declare-fun condMapEmpty!1885 () Bool)

(declare-datatypes ((V!1903 0))(
  ( (V!1904 (val!806 Int)) )
))
(declare-datatypes ((ValueCell!580 0))(
  ( (ValueCellFull!580 (v!1901 V!1903)) (EmptyCell!580) )
))
(declare-datatypes ((array!2327 0))(
  ( (array!2328 (arr!1111 (Array (_ BitVec 32) ValueCell!580)) (size!1212 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2327)

(declare-fun mapDefault!1885 () ValueCell!580)

