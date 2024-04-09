; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109238 () Bool)

(assert start!109238)

(declare-fun b_free!28691 () Bool)

(declare-fun b_next!28691 () Bool)

(assert (=> start!109238 (= b_free!28691 (not b_next!28691))))

(declare-fun tp!101193 () Bool)

(declare-fun b_and!46791 () Bool)

(assert (=> start!109238 (= tp!101193 b_and!46791)))

(declare-fun b!1291623 () Bool)

(declare-fun e!737331 () Bool)

(declare-fun e!737330 () Bool)

(assert (=> b!1291623 (= e!737331 (not e!737330))))

(declare-fun res!858257 () Bool)

(assert (=> b!1291623 (=> res!858257 e!737330)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291623 (= res!858257 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50877 0))(
  ( (V!50878 (val!17240 Int)) )
))
(declare-datatypes ((tuple2!22304 0))(
  ( (tuple2!22305 (_1!11162 (_ BitVec 64)) (_2!11162 V!50877)) )
))
(declare-datatypes ((List!29495 0))(
  ( (Nil!29492) (Cons!29491 (h!30700 tuple2!22304) (t!43066 List!29495)) )
))
(declare-datatypes ((ListLongMap!19973 0))(
  ( (ListLongMap!19974 (toList!10002 List!29495)) )
))
(declare-fun contains!8058 (ListLongMap!19973 (_ BitVec 64)) Bool)

(assert (=> b!1291623 (not (contains!8058 (ListLongMap!19974 Nil!29492) k!1205))))

(declare-datatypes ((Unit!42693 0))(
  ( (Unit!42694) )
))
(declare-fun lt!579204 () Unit!42693)

(declare-fun emptyContainsNothing!103 ((_ BitVec 64)) Unit!42693)

(assert (=> b!1291623 (= lt!579204 (emptyContainsNothing!103 k!1205))))

(declare-fun b!1291624 () Bool)

(declare-fun e!737333 () Bool)

(declare-fun e!737334 () Bool)

(declare-fun mapRes!53057 () Bool)

(assert (=> b!1291624 (= e!737333 (and e!737334 mapRes!53057))))

(declare-fun condMapEmpty!53057 () Bool)

(declare-datatypes ((ValueCell!16267 0))(
  ( (ValueCellFull!16267 (v!19841 V!50877)) (EmptyCell!16267) )
))
(declare-datatypes ((array!85657 0))(
  ( (array!85658 (arr!41325 (Array (_ BitVec 32) ValueCell!16267)) (size!41876 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85657)

(declare-fun mapDefault!53057 () ValueCell!16267)

