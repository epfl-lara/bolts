; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73044 () Bool)

(assert start!73044)

(declare-fun b_free!13931 () Bool)

(declare-fun b_next!13931 () Bool)

(assert (=> start!73044 (= b_free!13931 (not b_next!13931))))

(declare-fun tp!49298 () Bool)

(declare-fun b_and!23039 () Bool)

(assert (=> start!73044 (= tp!49298 b_and!23039)))

(declare-fun b!848383 () Bool)

(declare-fun res!576502 () Bool)

(declare-fun e!473383 () Bool)

(assert (=> b!848383 (=> (not res!576502) (not e!473383))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48326 0))(
  ( (array!48327 (arr!23190 (Array (_ BitVec 32) (_ BitVec 64))) (size!23631 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48326)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!848383 (= res!576502 (and (= (select (arr!23190 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!576506 () Bool)

(assert (=> start!73044 (=> (not res!576506) (not e!473383))))

(assert (=> start!73044 (= res!576506 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23631 _keys!868))))))

(assert (=> start!73044 e!473383))

(declare-fun tp_is_empty!16067 () Bool)

(assert (=> start!73044 tp_is_empty!16067))

(assert (=> start!73044 true))

(assert (=> start!73044 tp!49298))

(declare-fun array_inv!18392 (array!48326) Bool)

(assert (=> start!73044 (array_inv!18392 _keys!868)))

(declare-datatypes ((V!26469 0))(
  ( (V!26470 (val!8081 Int)) )
))
(declare-datatypes ((ValueCell!7594 0))(
  ( (ValueCellFull!7594 (v!10502 V!26469)) (EmptyCell!7594) )
))
(declare-datatypes ((array!48328 0))(
  ( (array!48329 (arr!23191 (Array (_ BitVec 32) ValueCell!7594)) (size!23632 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48328)

(declare-fun e!473381 () Bool)

(declare-fun array_inv!18393 (array!48328) Bool)

(assert (=> start!73044 (and (array_inv!18393 _values!688) e!473381)))

(declare-fun bm!37645 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!381990 () array!48328)

(declare-fun minValue!654 () V!26469)

(declare-fun zeroValue!654 () V!26469)

(declare-datatypes ((tuple2!10580 0))(
  ( (tuple2!10581 (_1!5300 (_ BitVec 64)) (_2!5300 V!26469)) )
))
(declare-datatypes ((List!16488 0))(
  ( (Nil!16485) (Cons!16484 (h!17615 tuple2!10580) (t!22873 List!16488)) )
))
(declare-datatypes ((ListLongMap!9363 0))(
  ( (ListLongMap!9364 (toList!4697 List!16488)) )
))
(declare-fun call!37649 () ListLongMap!9363)

(declare-fun getCurrentListMapNoExtraKeys!2686 (array!48326 array!48328 (_ BitVec 32) (_ BitVec 32) V!26469 V!26469 (_ BitVec 32) Int) ListLongMap!9363)

(assert (=> bm!37645 (= call!37649 (getCurrentListMapNoExtraKeys!2686 _keys!868 lt!381990 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848384 () Bool)

(declare-fun e!473385 () Bool)

(declare-fun mapRes!25700 () Bool)

(assert (=> b!848384 (= e!473381 (and e!473385 mapRes!25700))))

(declare-fun condMapEmpty!25700 () Bool)

(declare-fun mapDefault!25700 () ValueCell!7594)

