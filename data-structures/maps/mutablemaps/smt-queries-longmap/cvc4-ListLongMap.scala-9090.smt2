; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109364 () Bool)

(assert start!109364)

(declare-fun b_free!28817 () Bool)

(declare-fun b_next!28817 () Bool)

(assert (=> start!109364 (= b_free!28817 (not b_next!28817))))

(declare-fun tp!101570 () Bool)

(declare-fun b_and!46917 () Bool)

(assert (=> start!109364 (= tp!101570 b_and!46917)))

(declare-fun b!1293810 () Bool)

(declare-fun res!859877 () Bool)

(declare-fun e!738384 () Bool)

(assert (=> b!1293810 (=> (not res!859877) (not e!738384))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85901 0))(
  ( (array!85902 (arr!41447 (Array (_ BitVec 32) (_ BitVec 64))) (size!41998 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85901)

(assert (=> b!1293810 (= res!859877 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41998 _keys!1741))))))

(declare-fun b!1293811 () Bool)

(declare-fun e!738387 () Bool)

(declare-fun e!738388 () Bool)

(declare-fun mapRes!53246 () Bool)

(assert (=> b!1293811 (= e!738387 (and e!738388 mapRes!53246))))

(declare-fun condMapEmpty!53246 () Bool)

(declare-datatypes ((V!51045 0))(
  ( (V!51046 (val!17303 Int)) )
))
(declare-datatypes ((ValueCell!16330 0))(
  ( (ValueCellFull!16330 (v!19904 V!51045)) (EmptyCell!16330) )
))
(declare-datatypes ((array!85903 0))(
  ( (array!85904 (arr!41448 (Array (_ BitVec 32) ValueCell!16330)) (size!41999 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85903)

(declare-fun mapDefault!53246 () ValueCell!16330)

