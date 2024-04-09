; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109402 () Bool)

(assert start!109402)

(declare-fun b_free!28855 () Bool)

(declare-fun b_next!28855 () Bool)

(assert (=> start!109402 (= b_free!28855 (not b_next!28855))))

(declare-fun tp!101685 () Bool)

(declare-fun b_and!46955 () Bool)

(assert (=> start!109402 (= tp!101685 b_and!46955)))

(declare-fun b!1294438 () Bool)

(declare-fun e!738670 () Bool)

(declare-fun e!738673 () Bool)

(declare-fun mapRes!53303 () Bool)

(assert (=> b!1294438 (= e!738670 (and e!738673 mapRes!53303))))

(declare-fun condMapEmpty!53303 () Bool)

(declare-datatypes ((V!51097 0))(
  ( (V!51098 (val!17322 Int)) )
))
(declare-datatypes ((ValueCell!16349 0))(
  ( (ValueCellFull!16349 (v!19923 V!51097)) (EmptyCell!16349) )
))
(declare-datatypes ((array!85977 0))(
  ( (array!85978 (arr!41485 (Array (_ BitVec 32) ValueCell!16349)) (size!42036 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85977)

(declare-fun mapDefault!53303 () ValueCell!16349)

