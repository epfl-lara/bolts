; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131926 () Bool)

(assert start!131926)

(declare-fun b_free!31607 () Bool)

(declare-fun b_next!31607 () Bool)

(assert (=> start!131926 (= b_free!31607 (not b_next!31607))))

(declare-fun tp!111074 () Bool)

(declare-fun b_and!51027 () Bool)

(assert (=> start!131926 (= tp!111074 b_and!51027)))

(declare-fun b!1544011 () Bool)

(declare-datatypes ((V!58953 0))(
  ( (V!58954 (val!19019 Int)) )
))
(declare-datatypes ((tuple2!24568 0))(
  ( (tuple2!24569 (_1!12294 (_ BitVec 64)) (_2!12294 V!58953)) )
))
(declare-datatypes ((List!36091 0))(
  ( (Nil!36088) (Cons!36087 (h!37533 tuple2!24568) (t!50792 List!36091)) )
))
(declare-datatypes ((ListLongMap!22189 0))(
  ( (ListLongMap!22190 (toList!11110 List!36091)) )
))
(declare-fun e!859434 () ListLongMap!22189)

(declare-fun call!68780 () ListLongMap!22189)

(assert (=> b!1544011 (= e!859434 call!68780)))

(declare-fun b!1544012 () Bool)

(declare-fun e!859438 () Bool)

(declare-fun e!859439 () Bool)

(declare-fun mapRes!58528 () Bool)

(assert (=> b!1544012 (= e!859438 (and e!859439 mapRes!58528))))

(declare-fun condMapEmpty!58528 () Bool)

(declare-datatypes ((ValueCell!18031 0))(
  ( (ValueCellFull!18031 (v!21817 V!58953)) (EmptyCell!18031) )
))
(declare-datatypes ((array!102941 0))(
  ( (array!102942 (arr!49668 (Array (_ BitVec 32) ValueCell!18031)) (size!50219 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102941)

(declare-fun mapDefault!58528 () ValueCell!18031)

