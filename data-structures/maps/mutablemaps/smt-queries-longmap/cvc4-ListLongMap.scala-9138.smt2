; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109652 () Bool)

(assert start!109652)

(declare-fun b_free!29105 () Bool)

(declare-fun b_next!29105 () Bool)

(assert (=> start!109652 (= b_free!29105 (not b_next!29105))))

(declare-fun tp!102434 () Bool)

(declare-fun b_and!47205 () Bool)

(assert (=> start!109652 (= tp!102434 b_and!47205)))

(declare-fun b!1298339 () Bool)

(declare-fun res!862946 () Bool)

(declare-fun e!740736 () Bool)

(assert (=> b!1298339 (=> (not res!862946) (not e!740736))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86459 0))(
  ( (array!86460 (arr!41726 (Array (_ BitVec 32) (_ BitVec 64))) (size!42277 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86459)

(assert (=> b!1298339 (= res!862946 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42277 _keys!1741)) (not (= (select (arr!41726 _keys!1741) from!2144) k!1205))))))

(declare-fun mapIsEmpty!53678 () Bool)

(declare-fun mapRes!53678 () Bool)

(assert (=> mapIsEmpty!53678 mapRes!53678))

(declare-fun b!1298340 () Bool)

(declare-fun e!740733 () Bool)

(declare-fun e!740735 () Bool)

(assert (=> b!1298340 (= e!740733 (and e!740735 mapRes!53678))))

(declare-fun condMapEmpty!53678 () Bool)

(declare-datatypes ((V!51429 0))(
  ( (V!51430 (val!17447 Int)) )
))
(declare-datatypes ((ValueCell!16474 0))(
  ( (ValueCellFull!16474 (v!20048 V!51429)) (EmptyCell!16474) )
))
(declare-datatypes ((array!86461 0))(
  ( (array!86462 (arr!41727 (Array (_ BitVec 32) ValueCell!16474)) (size!42278 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86461)

(declare-fun mapDefault!53678 () ValueCell!16474)

