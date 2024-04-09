; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74952 () Bool)

(assert start!74952)

(declare-fun b_free!15443 () Bool)

(declare-fun b_next!15443 () Bool)

(assert (=> start!74952 (= b_free!15443 (not b_next!15443))))

(declare-fun tp!54032 () Bool)

(declare-fun b_and!25603 () Bool)

(assert (=> start!74952 (= tp!54032 b_and!25603)))

(declare-fun b!883452 () Bool)

(declare-fun e!491695 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51484 0))(
  ( (array!51485 (arr!24757 (Array (_ BitVec 32) (_ BitVec 64))) (size!25198 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51484)

(assert (=> b!883452 (= e!491695 (bvslt from!1053 (size!25198 _keys!868)))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!883452 (not (= (select (arr!24757 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!30124 0))(
  ( (Unit!30125) )
))
(declare-fun lt!399906 () Unit!30124)

(declare-fun e!491701 () Unit!30124)

(assert (=> b!883452 (= lt!399906 e!491701)))

(declare-fun c!92988 () Bool)

(assert (=> b!883452 (= c!92988 (= (select (arr!24757 _keys!868) from!1053) k!854))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!28629 0))(
  ( (V!28630 (val!8891 Int)) )
))
(declare-datatypes ((tuple2!11814 0))(
  ( (tuple2!11815 (_1!5917 (_ BitVec 64)) (_2!5917 V!28629)) )
))
(declare-datatypes ((List!17679 0))(
  ( (Nil!17676) (Cons!17675 (h!18806 tuple2!11814) (t!24932 List!17679)) )
))
(declare-datatypes ((ListLongMap!10597 0))(
  ( (ListLongMap!10598 (toList!5314 List!17679)) )
))
(declare-fun lt!399904 () ListLongMap!10597)

(declare-datatypes ((ValueCell!8404 0))(
  ( (ValueCellFull!8404 (v!11356 V!28629)) (EmptyCell!8404) )
))
(declare-datatypes ((array!51486 0))(
  ( (array!51487 (arr!24758 (Array (_ BitVec 32) ValueCell!8404)) (size!25199 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51486)

(declare-fun lt!399903 () ListLongMap!10597)

(declare-fun +!2518 (ListLongMap!10597 tuple2!11814) ListLongMap!10597)

(declare-fun get!13057 (ValueCell!8404 V!28629) V!28629)

(declare-fun dynLambda!1272 (Int (_ BitVec 64)) V!28629)

(assert (=> b!883452 (= lt!399904 (+!2518 lt!399903 (tuple2!11815 (select (arr!24757 _keys!868) from!1053) (get!13057 (select (arr!24758 _values!688) from!1053) (dynLambda!1272 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!883453 () Bool)

(declare-fun e!491699 () Bool)

(declare-fun e!491698 () Bool)

(declare-fun mapRes!28167 () Bool)

(assert (=> b!883453 (= e!491699 (and e!491698 mapRes!28167))))

(declare-fun condMapEmpty!28167 () Bool)

(declare-fun mapDefault!28167 () ValueCell!8404)

