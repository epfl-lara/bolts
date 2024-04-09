; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98652 () Bool)

(assert start!98652)

(declare-fun b_free!24221 () Bool)

(declare-fun b_next!24221 () Bool)

(assert (=> start!98652 (= b_free!24221 (not b_next!24221))))

(declare-fun tp!85375 () Bool)

(declare-fun b_and!39305 () Bool)

(assert (=> start!98652 (= tp!85375 b_and!39305)))

(declare-fun b!1145114 () Bool)

(declare-fun e!651437 () Bool)

(declare-fun e!651438 () Bool)

(declare-fun mapRes!44951 () Bool)

(assert (=> b!1145114 (= e!651437 (and e!651438 mapRes!44951))))

(declare-fun condMapEmpty!44951 () Bool)

(declare-datatypes ((V!43461 0))(
  ( (V!43462 (val!14432 Int)) )
))
(declare-datatypes ((ValueCell!13666 0))(
  ( (ValueCellFull!13666 (v!17070 V!43461)) (EmptyCell!13666) )
))
(declare-datatypes ((array!74310 0))(
  ( (array!74311 (arr!35802 (Array (_ BitVec 32) ValueCell!13666)) (size!36339 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74310)

(declare-fun mapDefault!44951 () ValueCell!13666)

