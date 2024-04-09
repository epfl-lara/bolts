; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109484 () Bool)

(assert start!109484)

(declare-fun b_free!28937 () Bool)

(declare-fun b_next!28937 () Bool)

(assert (=> start!109484 (= b_free!28937 (not b_next!28937))))

(declare-fun tp!101930 () Bool)

(declare-fun b_and!47037 () Bool)

(assert (=> start!109484 (= tp!101930 b_and!47037)))

(declare-fun b!1295889 () Bool)

(declare-fun res!861412 () Bool)

(declare-fun e!739385 () Bool)

(assert (=> b!1295889 (=> (not res!861412) (not e!739385))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86133 0))(
  ( (array!86134 (arr!41563 (Array (_ BitVec 32) (_ BitVec 64))) (size!42114 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86133)

(assert (=> b!1295889 (= res!861412 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42114 _keys!1741))))))

(declare-fun b!1295890 () Bool)

(declare-fun e!739386 () Bool)

(declare-fun e!739387 () Bool)

(declare-fun mapRes!53426 () Bool)

(assert (=> b!1295890 (= e!739386 (and e!739387 mapRes!53426))))

(declare-fun condMapEmpty!53426 () Bool)

(declare-datatypes ((V!51205 0))(
  ( (V!51206 (val!17363 Int)) )
))
(declare-datatypes ((ValueCell!16390 0))(
  ( (ValueCellFull!16390 (v!19964 V!51205)) (EmptyCell!16390) )
))
(declare-datatypes ((array!86135 0))(
  ( (array!86136 (arr!41564 (Array (_ BitVec 32) ValueCell!16390)) (size!42115 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86135)

(declare-fun mapDefault!53426 () ValueCell!16390)

