; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132006 () Bool)

(assert start!132006)

(declare-fun b_free!31687 () Bool)

(declare-fun b_next!31687 () Bool)

(assert (=> start!132006 (= b_free!31687 (not b_next!31687))))

(declare-fun tp!111313 () Bool)

(declare-fun b_and!51107 () Bool)

(assert (=> start!132006 (= tp!111313 b_and!51107)))

(declare-fun bm!69374 () Bool)

(declare-datatypes ((V!59061 0))(
  ( (V!59062 (val!19059 Int)) )
))
(declare-datatypes ((tuple2!24646 0))(
  ( (tuple2!24647 (_1!12333 (_ BitVec 64)) (_2!12333 V!59061)) )
))
(declare-datatypes ((List!36159 0))(
  ( (Nil!36156) (Cons!36155 (h!37601 tuple2!24646) (t!50860 List!36159)) )
))
(declare-datatypes ((ListLongMap!22267 0))(
  ( (ListLongMap!22268 (toList!11149 List!36159)) )
))
(declare-fun call!69378 () ListLongMap!22267)

(declare-fun call!69381 () ListLongMap!22267)

(assert (=> bm!69374 (= call!69378 call!69381)))

(declare-fun b!1545802 () Bool)

(declare-fun e!860455 () Bool)

(declare-fun e!860450 () Bool)

(declare-fun mapRes!58648 () Bool)

(assert (=> b!1545802 (= e!860455 (and e!860450 mapRes!58648))))

(declare-fun condMapEmpty!58648 () Bool)

(declare-datatypes ((ValueCell!18071 0))(
  ( (ValueCellFull!18071 (v!21857 V!59061)) (EmptyCell!18071) )
))
(declare-datatypes ((array!103099 0))(
  ( (array!103100 (arr!49747 (Array (_ BitVec 32) ValueCell!18071)) (size!50298 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103099)

(declare-fun mapDefault!58648 () ValueCell!18071)

