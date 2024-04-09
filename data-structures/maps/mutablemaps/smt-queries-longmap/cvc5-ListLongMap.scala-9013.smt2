; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108874 () Bool)

(assert start!108874)

(declare-fun b_free!28351 () Bool)

(declare-fun b_next!28351 () Bool)

(assert (=> start!108874 (= b_free!28351 (not b_next!28351))))

(declare-fun tp!100169 () Bool)

(declare-fun b_and!46427 () Bool)

(assert (=> start!108874 (= tp!100169 b_and!46427)))

(declare-fun b!1285245 () Bool)

(declare-fun res!853892 () Bool)

(declare-fun e!734169 () Bool)

(assert (=> b!1285245 (=> (not res!853892) (not e!734169))))

(declare-datatypes ((array!84993 0))(
  ( (array!84994 (arr!40994 (Array (_ BitVec 32) (_ BitVec 64))) (size!41545 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84993)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84993 (_ BitVec 32)) Bool)

(assert (=> b!1285245 (= res!853892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1285246 () Bool)

(declare-fun e!734167 () Bool)

(declare-fun e!734168 () Bool)

(declare-fun mapRes!52544 () Bool)

(assert (=> b!1285246 (= e!734167 (and e!734168 mapRes!52544))))

(declare-fun condMapEmpty!52544 () Bool)

(declare-datatypes ((V!50425 0))(
  ( (V!50426 (val!17070 Int)) )
))
(declare-datatypes ((ValueCell!16097 0))(
  ( (ValueCellFull!16097 (v!19670 V!50425)) (EmptyCell!16097) )
))
(declare-datatypes ((array!84995 0))(
  ( (array!84996 (arr!40995 (Array (_ BitVec 32) ValueCell!16097)) (size!41546 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84995)

(declare-fun mapDefault!52544 () ValueCell!16097)

