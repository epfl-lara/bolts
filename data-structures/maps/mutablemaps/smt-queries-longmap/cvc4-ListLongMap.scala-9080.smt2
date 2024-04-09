; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109304 () Bool)

(assert start!109304)

(declare-fun b_free!28757 () Bool)

(declare-fun b_next!28757 () Bool)

(assert (=> start!109304 (= b_free!28757 (not b_next!28757))))

(declare-fun tp!101391 () Bool)

(declare-fun b_and!46857 () Bool)

(assert (=> start!109304 (= tp!101391 b_and!46857)))

(declare-fun b!1292730 () Bool)

(declare-fun e!737845 () Bool)

(declare-fun e!737844 () Bool)

(declare-fun mapRes!53156 () Bool)

(assert (=> b!1292730 (= e!737845 (and e!737844 mapRes!53156))))

(declare-fun condMapEmpty!53156 () Bool)

(declare-datatypes ((V!50965 0))(
  ( (V!50966 (val!17273 Int)) )
))
(declare-datatypes ((ValueCell!16300 0))(
  ( (ValueCellFull!16300 (v!19874 V!50965)) (EmptyCell!16300) )
))
(declare-datatypes ((array!85785 0))(
  ( (array!85786 (arr!41389 (Array (_ BitVec 32) ValueCell!16300)) (size!41940 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85785)

(declare-fun mapDefault!53156 () ValueCell!16300)

