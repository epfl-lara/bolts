; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72426 () Bool)

(assert start!72426)

(declare-fun b_free!13583 () Bool)

(declare-fun b_next!13583 () Bool)

(assert (=> start!72426 (= b_free!13583 (not b_next!13583))))

(declare-fun tp!47849 () Bool)

(declare-fun b_and!22687 () Bool)

(assert (=> start!72426 (= tp!47849 b_and!22687)))

(declare-fun b!839030 () Bool)

(declare-fun e!468310 () Bool)

(declare-fun tp_is_empty!15449 () Bool)

(assert (=> b!839030 (= e!468310 tp_is_empty!15449)))

(declare-fun b!839031 () Bool)

(declare-fun e!468311 () Bool)

(declare-datatypes ((V!25645 0))(
  ( (V!25646 (val!7772 Int)) )
))
(declare-datatypes ((tuple2!10306 0))(
  ( (tuple2!10307 (_1!5163 (_ BitVec 64)) (_2!5163 V!25645)) )
))
(declare-datatypes ((List!16140 0))(
  ( (Nil!16137) (Cons!16136 (h!17267 tuple2!10306) (t!22519 List!16140)) )
))
(declare-datatypes ((ListLongMap!9089 0))(
  ( (ListLongMap!9090 (toList!4560 List!16140)) )
))
(declare-fun call!36983 () ListLongMap!9089)

(declare-fun call!36982 () ListLongMap!9089)

(assert (=> b!839031 (= e!468311 (= call!36983 call!36982))))

(declare-fun b!839032 () Bool)

(declare-fun e!468307 () Bool)

(assert (=> b!839032 (= e!468307 (not true))))

(assert (=> b!839032 e!468311))

(declare-fun c!91152 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!839032 (= c!91152 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!25645)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!47150 0))(
  ( (array!47151 (arr!22602 (Array (_ BitVec 32) (_ BitVec 64))) (size!23043 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47150)

(declare-datatypes ((ValueCell!7285 0))(
  ( (ValueCellFull!7285 (v!10193 V!25645)) (EmptyCell!7285) )
))
(declare-datatypes ((array!47152 0))(
  ( (array!47153 (arr!22603 (Array (_ BitVec 32) ValueCell!7285)) (size!23044 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47152)

(declare-fun minValue!654 () V!25645)

(declare-fun zeroValue!654 () V!25645)

(declare-datatypes ((Unit!28812 0))(
  ( (Unit!28813) )
))
(declare-fun lt!380685 () Unit!28812)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!255 (array!47150 array!47152 (_ BitVec 32) (_ BitVec 32) V!25645 V!25645 (_ BitVec 32) (_ BitVec 64) V!25645 (_ BitVec 32) Int) Unit!28812)

(assert (=> b!839032 (= lt!380685 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839033 () Bool)

(declare-fun res!570605 () Bool)

(assert (=> b!839033 (=> (not res!570605) (not e!468307))))

(assert (=> b!839033 (= res!570605 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23043 _keys!868))))))

(declare-fun b!839034 () Bool)

(declare-fun res!570599 () Bool)

(assert (=> b!839034 (=> (not res!570599) (not e!468307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47150 (_ BitVec 32)) Bool)

(assert (=> b!839034 (= res!570599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!570601 () Bool)

(assert (=> start!72426 (=> (not res!570601) (not e!468307))))

(assert (=> start!72426 (= res!570601 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23043 _keys!868))))))

(assert (=> start!72426 e!468307))

(assert (=> start!72426 tp_is_empty!15449))

(assert (=> start!72426 true))

(assert (=> start!72426 tp!47849))

(declare-fun array_inv!17980 (array!47150) Bool)

(assert (=> start!72426 (array_inv!17980 _keys!868)))

(declare-fun e!468309 () Bool)

(declare-fun array_inv!17981 (array!47152) Bool)

(assert (=> start!72426 (and (array_inv!17981 _values!688) e!468309)))

(declare-fun mapNonEmpty!24773 () Bool)

(declare-fun mapRes!24773 () Bool)

(declare-fun tp!47848 () Bool)

(assert (=> mapNonEmpty!24773 (= mapRes!24773 (and tp!47848 e!468310))))

(declare-fun mapValue!24773 () ValueCell!7285)

(declare-fun mapKey!24773 () (_ BitVec 32))

(declare-fun mapRest!24773 () (Array (_ BitVec 32) ValueCell!7285))

(assert (=> mapNonEmpty!24773 (= (arr!22603 _values!688) (store mapRest!24773 mapKey!24773 mapValue!24773))))

(declare-fun mapIsEmpty!24773 () Bool)

(assert (=> mapIsEmpty!24773 mapRes!24773))

(declare-fun b!839035 () Bool)

(declare-fun e!468312 () Bool)

(assert (=> b!839035 (= e!468309 (and e!468312 mapRes!24773))))

(declare-fun condMapEmpty!24773 () Bool)

(declare-fun mapDefault!24773 () ValueCell!7285)

