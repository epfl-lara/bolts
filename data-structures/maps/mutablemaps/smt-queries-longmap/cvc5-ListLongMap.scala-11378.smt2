; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132242 () Bool)

(assert start!132242)

(declare-fun b_free!31885 () Bool)

(declare-fun b_next!31885 () Bool)

(assert (=> start!132242 (= b_free!31885 (not b_next!31885))))

(declare-fun tp!111913 () Bool)

(declare-fun b_and!51325 () Bool)

(assert (=> start!132242 (= tp!111913 b_and!51325)))

(declare-fun b!1550887 () Bool)

(declare-datatypes ((V!59325 0))(
  ( (V!59326 (val!19158 Int)) )
))
(declare-datatypes ((tuple2!24834 0))(
  ( (tuple2!24835 (_1!12427 (_ BitVec 64)) (_2!12427 V!59325)) )
))
(declare-datatypes ((List!36322 0))(
  ( (Nil!36319) (Cons!36318 (h!37764 tuple2!24834) (t!51039 List!36322)) )
))
(declare-datatypes ((ListLongMap!22455 0))(
  ( (ListLongMap!22456 (toList!11243 List!36322)) )
))
(declare-fun e!863358 () ListLongMap!22455)

(declare-fun call!70893 () ListLongMap!22455)

(assert (=> b!1550887 (= e!863358 call!70893)))

(declare-fun mapNonEmpty!58951 () Bool)

(declare-fun mapRes!58951 () Bool)

(declare-fun tp!111914 () Bool)

(declare-fun e!863356 () Bool)

(assert (=> mapNonEmpty!58951 (= mapRes!58951 (and tp!111914 e!863356))))

(declare-datatypes ((ValueCell!18170 0))(
  ( (ValueCellFull!18170 (v!21958 V!59325)) (EmptyCell!18170) )
))
(declare-fun mapValue!58951 () ValueCell!18170)

(declare-fun mapRest!58951 () (Array (_ BitVec 32) ValueCell!18170))

(declare-fun mapKey!58951 () (_ BitVec 32))

(declare-datatypes ((array!103481 0))(
  ( (array!103482 (arr!49936 (Array (_ BitVec 32) ValueCell!18170)) (size!50487 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103481)

(assert (=> mapNonEmpty!58951 (= (arr!49936 _values!470) (store mapRest!58951 mapKey!58951 mapValue!58951))))

(declare-fun b!1550888 () Bool)

(declare-fun e!863352 () Bool)

(declare-fun e!863355 () Bool)

(assert (=> b!1550888 (= e!863352 (and e!863355 mapRes!58951))))

(declare-fun condMapEmpty!58951 () Bool)

(declare-fun mapDefault!58951 () ValueCell!18170)

