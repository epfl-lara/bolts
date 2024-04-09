; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109184 () Bool)

(assert start!109184)

(declare-fun b_free!28637 () Bool)

(declare-fun b_next!28637 () Bool)

(assert (=> start!109184 (= b_free!28637 (not b_next!28637))))

(declare-fun tp!101030 () Bool)

(declare-fun b_and!46737 () Bool)

(assert (=> start!109184 (= tp!101030 b_and!46737)))

(declare-fun b!1290651 () Bool)

(declare-fun e!736847 () Bool)

(declare-fun tp_is_empty!34277 () Bool)

(assert (=> b!1290651 (= e!736847 tp_is_empty!34277)))

(declare-fun mapIsEmpty!52976 () Bool)

(declare-fun mapRes!52976 () Bool)

(assert (=> mapIsEmpty!52976 mapRes!52976))

(declare-fun b!1290652 () Bool)

(declare-fun res!857524 () Bool)

(declare-fun e!736848 () Bool)

(assert (=> b!1290652 (=> (not res!857524) (not e!736848))))

(declare-datatypes ((array!85551 0))(
  ( (array!85552 (arr!41272 (Array (_ BitVec 32) (_ BitVec 64))) (size!41823 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85551)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290652 (= res!857524 (not (validKeyInArray!0 (select (arr!41272 _keys!1741) from!2144))))))

(declare-fun b!1290653 () Bool)

(declare-fun res!857528 () Bool)

(assert (=> b!1290653 (=> (not res!857528) (not e!736848))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1290653 (= res!857528 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41823 _keys!1741))))))

(declare-fun res!857526 () Bool)

(assert (=> start!109184 (=> (not res!857526) (not e!736848))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109184 (= res!857526 (validMask!0 mask!2175))))

(assert (=> start!109184 e!736848))

(assert (=> start!109184 tp_is_empty!34277))

(assert (=> start!109184 true))

(declare-datatypes ((V!50805 0))(
  ( (V!50806 (val!17213 Int)) )
))
(declare-datatypes ((ValueCell!16240 0))(
  ( (ValueCellFull!16240 (v!19814 V!50805)) (EmptyCell!16240) )
))
(declare-datatypes ((array!85553 0))(
  ( (array!85554 (arr!41273 (Array (_ BitVec 32) ValueCell!16240)) (size!41824 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85553)

(declare-fun e!736846 () Bool)

(declare-fun array_inv!31253 (array!85553) Bool)

(assert (=> start!109184 (and (array_inv!31253 _values!1445) e!736846)))

(declare-fun array_inv!31254 (array!85551) Bool)

(assert (=> start!109184 (array_inv!31254 _keys!1741)))

(assert (=> start!109184 tp!101030))

(declare-fun b!1290654 () Bool)

(declare-fun e!736844 () Bool)

(assert (=> b!1290654 (= e!736846 (and e!736844 mapRes!52976))))

(declare-fun condMapEmpty!52976 () Bool)

(declare-fun mapDefault!52976 () ValueCell!16240)

