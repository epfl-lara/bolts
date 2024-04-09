; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110666 () Bool)

(assert start!110666)

(declare-fun b_free!29465 () Bool)

(declare-fun b_next!29465 () Bool)

(assert (=> start!110666 (= b_free!29465 (not b_next!29465))))

(declare-fun tp!103717 () Bool)

(declare-fun b_and!47683 () Bool)

(assert (=> start!110666 (= tp!103717 b_and!47683)))

(declare-fun b!1308942 () Bool)

(declare-fun e!746823 () Bool)

(declare-fun tp_is_empty!35195 () Bool)

(assert (=> b!1308942 (= e!746823 tp_is_empty!35195)))

(declare-fun b!1308943 () Bool)

(declare-fun e!746825 () Bool)

(declare-fun mapRes!54421 () Bool)

(assert (=> b!1308943 (= e!746825 (and e!746823 mapRes!54421))))

(declare-fun condMapEmpty!54421 () Bool)

(declare-datatypes ((V!52029 0))(
  ( (V!52030 (val!17672 Int)) )
))
(declare-datatypes ((ValueCell!16699 0))(
  ( (ValueCellFull!16699 (v!20297 V!52029)) (EmptyCell!16699) )
))
(declare-datatypes ((array!87355 0))(
  ( (array!87356 (arr!42153 (Array (_ BitVec 32) ValueCell!16699)) (size!42704 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87355)

(declare-fun mapDefault!54421 () ValueCell!16699)

