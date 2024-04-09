; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3926 () Bool)

(assert start!3926)

(declare-fun b_free!833 () Bool)

(declare-fun b_next!833 () Bool)

(assert (=> start!3926 (= b_free!833 (not b_next!833))))

(declare-fun tp!3919 () Bool)

(declare-fun b_and!1645 () Bool)

(assert (=> start!3926 (= tp!3919 b_and!1645)))

(declare-fun b!27905 () Bool)

(declare-fun e!18115 () Bool)

(assert (=> b!27905 (= e!18115 false)))

(declare-fun lt!10734 () (_ BitVec 32))

(declare-datatypes ((array!1601 0))(
  ( (array!1602 (arr!754 (Array (_ BitVec 32) (_ BitVec 64))) (size!855 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1601)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1601 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27905 (= lt!10734 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27906 () Bool)

(declare-fun e!18112 () Bool)

(declare-fun e!18113 () Bool)

(declare-fun mapRes!1309 () Bool)

(assert (=> b!27906 (= e!18112 (and e!18113 mapRes!1309))))

(declare-fun condMapEmpty!1309 () Bool)

(declare-datatypes ((V!1407 0))(
  ( (V!1408 (val!620 Int)) )
))
(declare-datatypes ((ValueCell!394 0))(
  ( (ValueCellFull!394 (v!1709 V!1407)) (EmptyCell!394) )
))
(declare-datatypes ((array!1603 0))(
  ( (array!1604 (arr!755 (Array (_ BitVec 32) ValueCell!394)) (size!856 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1603)

(declare-fun mapDefault!1309 () ValueCell!394)

