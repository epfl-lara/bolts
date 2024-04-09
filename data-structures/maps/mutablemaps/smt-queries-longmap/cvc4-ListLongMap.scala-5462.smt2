; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72588 () Bool)

(assert start!72588)

(declare-fun b_free!13745 () Bool)

(declare-fun b_next!13745 () Bool)

(assert (=> start!72588 (= b_free!13745 (not b_next!13745))))

(declare-fun tp!48335 () Bool)

(declare-fun b_and!22849 () Bool)

(assert (=> start!72588 (= tp!48335 b_and!22849)))

(declare-fun b!842189 () Bool)

(declare-fun res!572548 () Bool)

(declare-fun e!469766 () Bool)

(assert (=> b!842189 (=> (not res!572548) (not e!469766))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!842189 (= res!572548 (validKeyInArray!0 k!854))))

(declare-fun b!842190 () Bool)

(declare-fun res!572547 () Bool)

(assert (=> b!842190 (=> (not res!572547) (not e!469766))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842190 (= res!572547 (validMask!0 mask!1196))))

(declare-fun b!842191 () Bool)

(declare-fun res!572549 () Bool)

(assert (=> b!842191 (=> (not res!572549) (not e!469766))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47464 0))(
  ( (array!47465 (arr!22759 (Array (_ BitVec 32) (_ BitVec 64))) (size!23200 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47464)

(assert (=> b!842191 (= res!572549 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23200 _keys!868))))))

(declare-fun b!842192 () Bool)

(assert (=> b!842192 (= e!469766 (not true))))

(declare-fun e!469768 () Bool)

(assert (=> b!842192 e!469768))

(declare-fun c!91395 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!842192 (= c!91395 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!25861 0))(
  ( (V!25862 (val!7853 Int)) )
))
(declare-fun v!557 () V!25861)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!28916 0))(
  ( (Unit!28917) )
))
(declare-fun lt!380928 () Unit!28916)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7366 0))(
  ( (ValueCellFull!7366 (v!10274 V!25861)) (EmptyCell!7366) )
))
(declare-datatypes ((array!47466 0))(
  ( (array!47467 (arr!22760 (Array (_ BitVec 32) ValueCell!7366)) (size!23201 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47466)

(declare-fun minValue!654 () V!25861)

(declare-fun zeroValue!654 () V!25861)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!307 (array!47464 array!47466 (_ BitVec 32) (_ BitVec 32) V!25861 V!25861 (_ BitVec 32) (_ BitVec 64) V!25861 (_ BitVec 32) Int) Unit!28916)

(assert (=> b!842192 (= lt!380928 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!307 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((tuple2!10448 0))(
  ( (tuple2!10449 (_1!5234 (_ BitVec 64)) (_2!5234 V!25861)) )
))
(declare-datatypes ((List!16269 0))(
  ( (Nil!16266) (Cons!16265 (h!17396 tuple2!10448) (t!22648 List!16269)) )
))
(declare-datatypes ((ListLongMap!9231 0))(
  ( (ListLongMap!9232 (toList!4631 List!16269)) )
))
(declare-fun call!37469 () ListLongMap!9231)

(declare-fun bm!37465 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2620 (array!47464 array!47466 (_ BitVec 32) (_ BitVec 32) V!25861 V!25861 (_ BitVec 32) Int) ListLongMap!9231)

(assert (=> bm!37465 (= call!37469 (getCurrentListMapNoExtraKeys!2620 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!842193 () Bool)

(declare-fun res!572543 () Bool)

(assert (=> b!842193 (=> (not res!572543) (not e!469766))))

(assert (=> b!842193 (= res!572543 (and (= (select (arr!22759 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23200 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!25016 () Bool)

(declare-fun mapRes!25016 () Bool)

(assert (=> mapIsEmpty!25016 mapRes!25016))

(declare-fun res!572545 () Bool)

(assert (=> start!72588 (=> (not res!572545) (not e!469766))))

(assert (=> start!72588 (= res!572545 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23200 _keys!868))))))

(assert (=> start!72588 e!469766))

(declare-fun tp_is_empty!15611 () Bool)

(assert (=> start!72588 tp_is_empty!15611))

(assert (=> start!72588 true))

(assert (=> start!72588 tp!48335))

(declare-fun array_inv!18090 (array!47464) Bool)

(assert (=> start!72588 (array_inv!18090 _keys!868)))

(declare-fun e!469767 () Bool)

(declare-fun array_inv!18091 (array!47466) Bool)

(assert (=> start!72588 (and (array_inv!18091 _values!688) e!469767)))

(declare-fun b!842194 () Bool)

(declare-fun e!469769 () Bool)

(assert (=> b!842194 (= e!469767 (and e!469769 mapRes!25016))))

(declare-fun condMapEmpty!25016 () Bool)

(declare-fun mapDefault!25016 () ValueCell!7366)

