; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109250 () Bool)

(assert start!109250)

(declare-fun b_free!28703 () Bool)

(declare-fun b_next!28703 () Bool)

(assert (=> start!109250 (= b_free!28703 (not b_next!28703))))

(declare-fun tp!101228 () Bool)

(declare-fun b_and!46803 () Bool)

(assert (=> start!109250 (= tp!101228 b_and!46803)))

(declare-fun b!1291822 () Bool)

(declare-fun res!858401 () Bool)

(declare-fun e!737423 () Bool)

(assert (=> b!1291822 (=> (not res!858401) (not e!737423))))

(declare-datatypes ((array!85679 0))(
  ( (array!85680 (arr!41336 (Array (_ BitVec 32) (_ BitVec 64))) (size!41887 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85679)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291822 (= res!858401 (not (validKeyInArray!0 (select (arr!41336 _keys!1741) from!2144))))))

(declare-fun b!1291823 () Bool)

(declare-fun res!858395 () Bool)

(assert (=> b!1291823 (=> (not res!858395) (not e!737423))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1291823 (= res!858395 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41887 _keys!1741))))))

(declare-fun b!1291824 () Bool)

(declare-fun res!858398 () Bool)

(assert (=> b!1291824 (=> (not res!858398) (not e!737423))))

(declare-datatypes ((V!50893 0))(
  ( (V!50894 (val!17246 Int)) )
))
(declare-datatypes ((ValueCell!16273 0))(
  ( (ValueCellFull!16273 (v!19847 V!50893)) (EmptyCell!16273) )
))
(declare-datatypes ((array!85681 0))(
  ( (array!85682 (arr!41337 (Array (_ BitVec 32) ValueCell!16273)) (size!41888 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85681)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun mask!2175 () (_ BitVec 32))

(assert (=> b!1291824 (= res!858398 (and (= (size!41888 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41887 _keys!1741) (size!41888 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291825 () Bool)

(declare-fun res!858400 () Bool)

(assert (=> b!1291825 (=> (not res!858400) (not e!737423))))

(declare-datatypes ((List!29504 0))(
  ( (Nil!29501) (Cons!29500 (h!30709 (_ BitVec 64)) (t!43075 List!29504)) )
))
(declare-fun arrayNoDuplicates!0 (array!85679 (_ BitVec 32) List!29504) Bool)

(assert (=> b!1291825 (= res!858400 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29501))))

(declare-fun b!1291826 () Bool)

(declare-fun e!737425 () Bool)

(declare-fun e!737422 () Bool)

(declare-fun mapRes!53075 () Bool)

(assert (=> b!1291826 (= e!737425 (and e!737422 mapRes!53075))))

(declare-fun condMapEmpty!53075 () Bool)

(declare-fun mapDefault!53075 () ValueCell!16273)

