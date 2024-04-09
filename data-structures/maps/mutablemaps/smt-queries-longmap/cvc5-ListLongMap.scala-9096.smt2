; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109396 () Bool)

(assert start!109396)

(declare-fun b_free!28849 () Bool)

(declare-fun b_next!28849 () Bool)

(assert (=> start!109396 (= b_free!28849 (not b_next!28849))))

(declare-fun tp!101666 () Bool)

(declare-fun b_and!46949 () Bool)

(assert (=> start!109396 (= tp!101666 b_and!46949)))

(declare-fun b!1294339 () Bool)

(declare-fun res!860257 () Bool)

(declare-fun e!738628 () Bool)

(assert (=> b!1294339 (=> (not res!860257) (not e!738628))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85965 0))(
  ( (array!85966 (arr!41479 (Array (_ BitVec 32) (_ BitVec 64))) (size!42030 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85965)

(assert (=> b!1294339 (= res!860257 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42030 _keys!1741))))))

(declare-fun mapIsEmpty!53294 () Bool)

(declare-fun mapRes!53294 () Bool)

(assert (=> mapIsEmpty!53294 mapRes!53294))

(declare-fun b!1294340 () Bool)

(declare-fun e!738624 () Bool)

(declare-fun e!738626 () Bool)

(assert (=> b!1294340 (= e!738624 (and e!738626 mapRes!53294))))

(declare-fun condMapEmpty!53294 () Bool)

(declare-datatypes ((V!51089 0))(
  ( (V!51090 (val!17319 Int)) )
))
(declare-datatypes ((ValueCell!16346 0))(
  ( (ValueCellFull!16346 (v!19920 V!51089)) (EmptyCell!16346) )
))
(declare-datatypes ((array!85967 0))(
  ( (array!85968 (arr!41480 (Array (_ BitVec 32) ValueCell!16346)) (size!42031 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85967)

(declare-fun mapDefault!53294 () ValueCell!16346)

