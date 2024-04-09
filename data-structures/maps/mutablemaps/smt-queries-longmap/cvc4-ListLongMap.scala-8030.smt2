; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99060 () Bool)

(assert start!99060)

(declare-fun b_free!24629 () Bool)

(declare-fun b_next!24629 () Bool)

(assert (=> start!99060 (= b_free!24629 (not b_next!24629))))

(declare-fun tp!86599 () Bool)

(declare-fun b_and!40121 () Bool)

(assert (=> start!99060 (= tp!86599 b_and!40121)))

(declare-fun b!1163882 () Bool)

(declare-fun e!661834 () Bool)

(declare-datatypes ((V!44005 0))(
  ( (V!44006 (val!14636 Int)) )
))
(declare-datatypes ((tuple2!18742 0))(
  ( (tuple2!18743 (_1!9381 (_ BitVec 64)) (_2!9381 V!44005)) )
))
(declare-datatypes ((List!25516 0))(
  ( (Nil!25513) (Cons!25512 (h!26721 tuple2!18742) (t!37144 List!25516)) )
))
(declare-datatypes ((ListLongMap!16723 0))(
  ( (ListLongMap!16724 (toList!8377 List!25516)) )
))
(declare-fun call!57089 () ListLongMap!16723)

(declare-fun call!57092 () ListLongMap!16723)

(assert (=> b!1163882 (= e!661834 (= call!57089 call!57092))))

(declare-fun b!1163883 () Bool)

(declare-datatypes ((Unit!38312 0))(
  ( (Unit!38313) )
))
(declare-fun e!661827 () Unit!38312)

(declare-fun lt!524449 () Unit!38312)

(assert (=> b!1163883 (= e!661827 lt!524449)))

(declare-fun call!57094 () Unit!38312)

(assert (=> b!1163883 (= lt!524449 call!57094)))

(declare-fun call!57093 () Bool)

(assert (=> b!1163883 call!57093))

(declare-fun b!1163884 () Bool)

(declare-fun e!661839 () Bool)

(declare-fun e!661829 () Bool)

(declare-fun mapRes!45563 () Bool)

(assert (=> b!1163884 (= e!661839 (and e!661829 mapRes!45563))))

(declare-fun condMapEmpty!45563 () Bool)

(declare-datatypes ((ValueCell!13870 0))(
  ( (ValueCellFull!13870 (v!17274 V!44005)) (EmptyCell!13870) )
))
(declare-datatypes ((array!75108 0))(
  ( (array!75109 (arr!36201 (Array (_ BitVec 32) ValueCell!13870)) (size!36738 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75108)

(declare-fun mapDefault!45563 () ValueCell!13870)

