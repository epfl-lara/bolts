; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74716 () Bool)

(assert start!74716)

(declare-fun b_free!15337 () Bool)

(declare-fun b_next!15337 () Bool)

(assert (=> start!74716 (= b_free!15337 (not b_next!15337))))

(declare-fun tp!53700 () Bool)

(declare-fun b_and!25311 () Bool)

(assert (=> start!74716 (= tp!53700 b_and!25311)))

(declare-fun b!880276 () Bool)

(declare-fun e!489895 () Bool)

(declare-fun tp_is_empty!17581 () Bool)

(assert (=> b!880276 (= e!489895 tp_is_empty!17581)))

(declare-fun res!598185 () Bool)

(declare-fun e!489902 () Bool)

(assert (=> start!74716 (=> (not res!598185) (not e!489902))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51268 0))(
  ( (array!51269 (arr!24654 (Array (_ BitVec 32) (_ BitVec 64))) (size!25095 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51268)

(assert (=> start!74716 (= res!598185 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25095 _keys!868))))))

(assert (=> start!74716 e!489902))

(assert (=> start!74716 tp_is_empty!17581))

(assert (=> start!74716 true))

(assert (=> start!74716 tp!53700))

(declare-fun array_inv!19408 (array!51268) Bool)

(assert (=> start!74716 (array_inv!19408 _keys!868)))

(declare-datatypes ((V!28489 0))(
  ( (V!28490 (val!8838 Int)) )
))
(declare-datatypes ((ValueCell!8351 0))(
  ( (ValueCellFull!8351 (v!11282 V!28489)) (EmptyCell!8351) )
))
(declare-datatypes ((array!51270 0))(
  ( (array!51271 (arr!24655 (Array (_ BitVec 32) ValueCell!8351)) (size!25096 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51270)

(declare-fun e!489900 () Bool)

(declare-fun array_inv!19409 (array!51270) Bool)

(assert (=> start!74716 (and (array_inv!19409 _values!688) e!489900)))

(declare-fun b!880277 () Bool)

(declare-fun res!598182 () Bool)

(assert (=> b!880277 (=> (not res!598182) (not e!489902))))

(declare-datatypes ((List!17591 0))(
  ( (Nil!17588) (Cons!17587 (h!18718 (_ BitVec 64)) (t!24738 List!17591)) )
))
(declare-fun arrayNoDuplicates!0 (array!51268 (_ BitVec 32) List!17591) Bool)

(assert (=> b!880277 (= res!598182 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17588))))

(declare-fun b!880278 () Bool)

(declare-fun res!598177 () Bool)

(assert (=> b!880278 (=> (not res!598177) (not e!489902))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!880278 (= res!598177 (and (= (select (arr!24654 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!880279 () Bool)

(declare-fun e!489898 () Bool)

(declare-fun e!489896 () Bool)

(assert (=> b!880279 (= e!489898 (not e!489896))))

(declare-fun res!598178 () Bool)

(assert (=> b!880279 (=> res!598178 e!489896)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880279 (= res!598178 (not (validKeyInArray!0 (select (arr!24654 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11718 0))(
  ( (tuple2!11719 (_1!5869 (_ BitVec 64)) (_2!5869 V!28489)) )
))
(declare-datatypes ((List!17592 0))(
  ( (Nil!17589) (Cons!17588 (h!18719 tuple2!11718) (t!24739 List!17592)) )
))
(declare-datatypes ((ListLongMap!10501 0))(
  ( (ListLongMap!10502 (toList!5266 List!17592)) )
))
(declare-fun lt!398064 () ListLongMap!10501)

(declare-fun lt!398060 () ListLongMap!10501)

(assert (=> b!880279 (= lt!398064 lt!398060)))

(declare-fun lt!398063 () ListLongMap!10501)

(declare-fun v!557 () V!28489)

(declare-fun +!2472 (ListLongMap!10501 tuple2!11718) ListLongMap!10501)

(assert (=> b!880279 (= lt!398060 (+!2472 lt!398063 (tuple2!11719 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28489)

(declare-fun lt!398062 () array!51270)

(declare-fun zeroValue!654 () V!28489)

(declare-fun getCurrentListMapNoExtraKeys!3226 (array!51268 array!51270 (_ BitVec 32) (_ BitVec 32) V!28489 V!28489 (_ BitVec 32) Int) ListLongMap!10501)

(assert (=> b!880279 (= lt!398064 (getCurrentListMapNoExtraKeys!3226 _keys!868 lt!398062 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880279 (= lt!398063 (getCurrentListMapNoExtraKeys!3226 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30020 0))(
  ( (Unit!30021) )
))
(declare-fun lt!398065 () Unit!30020)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!702 (array!51268 array!51270 (_ BitVec 32) (_ BitVec 32) V!28489 V!28489 (_ BitVec 32) (_ BitVec 64) V!28489 (_ BitVec 32) Int) Unit!30020)

(assert (=> b!880279 (= lt!398065 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!702 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880280 () Bool)

(declare-fun mapRes!27993 () Bool)

(assert (=> b!880280 (= e!489900 (and e!489895 mapRes!27993))))

(declare-fun condMapEmpty!27993 () Bool)

(declare-fun mapDefault!27993 () ValueCell!8351)

