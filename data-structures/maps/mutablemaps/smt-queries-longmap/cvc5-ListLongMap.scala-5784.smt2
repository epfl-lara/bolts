; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74654 () Bool)

(assert start!74654)

(declare-fun b_free!15295 () Bool)

(declare-fun b_next!15295 () Bool)

(assert (=> start!74654 (= b_free!15295 (not b_next!15295))))

(declare-fun tp!53570 () Bool)

(declare-fun b_and!25211 () Bool)

(assert (=> start!74654 (= tp!53570 b_and!25211)))

(declare-fun res!597490 () Bool)

(declare-fun e!489367 () Bool)

(assert (=> start!74654 (=> (not res!597490) (not e!489367))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51186 0))(
  ( (array!51187 (arr!24614 (Array (_ BitVec 32) (_ BitVec 64))) (size!25055 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51186)

(assert (=> start!74654 (= res!597490 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25055 _keys!868))))))

(assert (=> start!74654 e!489367))

(declare-fun tp_is_empty!17539 () Bool)

(assert (=> start!74654 tp_is_empty!17539))

(assert (=> start!74654 true))

(assert (=> start!74654 tp!53570))

(declare-fun array_inv!19376 (array!51186) Bool)

(assert (=> start!74654 (array_inv!19376 _keys!868)))

(declare-datatypes ((V!28433 0))(
  ( (V!28434 (val!8817 Int)) )
))
(declare-datatypes ((ValueCell!8330 0))(
  ( (ValueCellFull!8330 (v!11257 V!28433)) (EmptyCell!8330) )
))
(declare-datatypes ((array!51188 0))(
  ( (array!51189 (arr!24615 (Array (_ BitVec 32) ValueCell!8330)) (size!25056 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51188)

(declare-fun e!489365 () Bool)

(declare-fun array_inv!19377 (array!51188) Bool)

(assert (=> start!74654 (and (array_inv!19377 _values!688) e!489365)))

(declare-fun b!879274 () Bool)

(declare-fun e!489362 () Bool)

(assert (=> b!879274 (= e!489362 tp_is_empty!17539)))

(declare-fun b!879275 () Bool)

(declare-fun e!489366 () Bool)

(declare-fun mapRes!27927 () Bool)

(assert (=> b!879275 (= e!489365 (and e!489366 mapRes!27927))))

(declare-fun condMapEmpty!27927 () Bool)

(declare-fun mapDefault!27927 () ValueCell!8330)

