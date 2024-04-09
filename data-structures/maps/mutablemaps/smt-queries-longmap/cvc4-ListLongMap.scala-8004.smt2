; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98904 () Bool)

(assert start!98904)

(declare-fun b_free!24473 () Bool)

(declare-fun b_next!24473 () Bool)

(assert (=> start!98904 (= b_free!24473 (not b_next!24473))))

(declare-fun tp!86130 () Bool)

(declare-fun b_and!39809 () Bool)

(assert (=> start!98904 (= tp!86130 b_and!39809)))

(declare-fun bm!55214 () Bool)

(declare-datatypes ((V!43797 0))(
  ( (V!43798 (val!14558 Int)) )
))
(declare-datatypes ((tuple2!18588 0))(
  ( (tuple2!18589 (_1!9304 (_ BitVec 64)) (_2!9304 V!43797)) )
))
(declare-datatypes ((List!25369 0))(
  ( (Nil!25366) (Cons!25365 (h!26574 tuple2!18588) (t!36841 List!25369)) )
))
(declare-datatypes ((ListLongMap!16569 0))(
  ( (ListLongMap!16570 (toList!8300 List!25369)) )
))
(declare-fun call!55223 () ListLongMap!16569)

(declare-fun call!55221 () ListLongMap!16569)

(assert (=> bm!55214 (= call!55223 call!55221)))

(declare-fun b!1156706 () Bool)

(declare-fun e!657862 () Bool)

(declare-fun e!657857 () Bool)

(declare-fun mapRes!45329 () Bool)

(assert (=> b!1156706 (= e!657862 (and e!657857 mapRes!45329))))

(declare-fun condMapEmpty!45329 () Bool)

(declare-datatypes ((ValueCell!13792 0))(
  ( (ValueCellFull!13792 (v!17196 V!43797)) (EmptyCell!13792) )
))
(declare-datatypes ((array!74798 0))(
  ( (array!74799 (arr!36046 (Array (_ BitVec 32) ValueCell!13792)) (size!36583 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74798)

(declare-fun mapDefault!45329 () ValueCell!13792)

