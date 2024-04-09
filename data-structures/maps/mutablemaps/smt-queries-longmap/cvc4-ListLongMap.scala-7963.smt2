; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98658 () Bool)

(assert start!98658)

(declare-fun b_free!24227 () Bool)

(declare-fun b_next!24227 () Bool)

(assert (=> start!98658 (= b_free!24227 (not b_next!24227))))

(declare-fun tp!85393 () Bool)

(declare-fun b_and!39317 () Bool)

(assert (=> start!98658 (= tp!85393 b_and!39317)))

(declare-fun b!1145390 () Bool)

(declare-fun res!762830 () Bool)

(declare-fun e!651588 () Bool)

(assert (=> b!1145390 (=> (not res!762830) (not e!651588))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74320 0))(
  ( (array!74321 (arr!35807 (Array (_ BitVec 32) (_ BitVec 64))) (size!36344 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74320)

(assert (=> b!1145390 (= res!762830 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36344 _keys!1208))))))

(declare-fun b!1145391 () Bool)

(declare-fun e!651582 () Bool)

(declare-fun e!651578 () Bool)

(declare-fun mapRes!44960 () Bool)

(assert (=> b!1145391 (= e!651582 (and e!651578 mapRes!44960))))

(declare-fun condMapEmpty!44960 () Bool)

(declare-datatypes ((V!43469 0))(
  ( (V!43470 (val!14435 Int)) )
))
(declare-datatypes ((ValueCell!13669 0))(
  ( (ValueCellFull!13669 (v!17073 V!43469)) (EmptyCell!13669) )
))
(declare-datatypes ((array!74322 0))(
  ( (array!74323 (arr!35808 (Array (_ BitVec 32) ValueCell!13669)) (size!36345 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74322)

(declare-fun mapDefault!44960 () ValueCell!13669)

