; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3850 () Bool)

(assert start!3850)

(declare-fun b_free!791 () Bool)

(declare-fun b_next!791 () Bool)

(assert (=> start!3850 (= b_free!791 (not b_next!791))))

(declare-fun tp!3786 () Bool)

(declare-fun b_and!1599 () Bool)

(assert (=> start!3850 (= tp!3786 b_and!1599)))

(declare-fun b!27070 () Bool)

(declare-fun e!17650 () Bool)

(declare-fun tp_is_empty!1145 () Bool)

(assert (=> b!27070 (= e!17650 tp_is_empty!1145)))

(declare-fun b!27071 () Bool)

(declare-fun e!17649 () Bool)

(declare-fun mapRes!1240 () Bool)

(assert (=> b!27071 (= e!17649 (and e!17650 mapRes!1240))))

(declare-fun condMapEmpty!1240 () Bool)

(declare-datatypes ((V!1351 0))(
  ( (V!1352 (val!599 Int)) )
))
(declare-datatypes ((ValueCell!373 0))(
  ( (ValueCellFull!373 (v!1686 V!1351)) (EmptyCell!373) )
))
(declare-datatypes ((array!1521 0))(
  ( (array!1522 (arr!716 (Array (_ BitVec 32) ValueCell!373)) (size!817 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1521)

(declare-fun mapDefault!1240 () ValueCell!373)

