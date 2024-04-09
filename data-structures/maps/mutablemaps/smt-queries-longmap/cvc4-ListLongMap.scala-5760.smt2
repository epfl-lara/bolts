; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74440 () Bool)

(assert start!74440)

(declare-fun b_free!15155 () Bool)

(declare-fun b_next!15155 () Bool)

(assert (=> start!74440 (= b_free!15155 (not b_next!15155))))

(declare-fun tp!53144 () Bool)

(declare-fun b_and!24981 () Bool)

(assert (=> start!74440 (= tp!53144 b_and!24981)))

(declare-fun b!876003 () Bool)

(declare-fun e!487692 () Bool)

(declare-datatypes ((V!28245 0))(
  ( (V!28246 (val!8747 Int)) )
))
(declare-datatypes ((tuple2!11568 0))(
  ( (tuple2!11569 (_1!5794 (_ BitVec 64)) (_2!5794 V!28245)) )
))
(declare-datatypes ((List!17453 0))(
  ( (Nil!17450) (Cons!17449 (h!18580 tuple2!11568) (t!24520 List!17453)) )
))
(declare-datatypes ((ListLongMap!10351 0))(
  ( (ListLongMap!10352 (toList!5191 List!17453)) )
))
(declare-fun call!38708 () ListLongMap!10351)

(declare-fun call!38709 () ListLongMap!10351)

(assert (=> b!876003 (= e!487692 (= call!38708 call!38709))))

(declare-fun b!876004 () Bool)

(declare-fun e!487691 () Bool)

(declare-fun tp_is_empty!17399 () Bool)

(assert (=> b!876004 (= e!487691 tp_is_empty!17399)))

(declare-fun mapIsEmpty!27710 () Bool)

(declare-fun mapRes!27710 () Bool)

(assert (=> mapIsEmpty!27710 mapRes!27710))

(declare-fun res!595390 () Bool)

(declare-fun e!487697 () Bool)

(assert (=> start!74440 (=> (not res!595390) (not e!487697))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50906 0))(
  ( (array!50907 (arr!24476 (Array (_ BitVec 32) (_ BitVec 64))) (size!24917 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50906)

(assert (=> start!74440 (= res!595390 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24917 _keys!868))))))

(assert (=> start!74440 e!487697))

(assert (=> start!74440 tp_is_empty!17399))

(assert (=> start!74440 true))

(assert (=> start!74440 tp!53144))

(declare-fun array_inv!19278 (array!50906) Bool)

(assert (=> start!74440 (array_inv!19278 _keys!868)))

(declare-datatypes ((ValueCell!8260 0))(
  ( (ValueCellFull!8260 (v!11176 V!28245)) (EmptyCell!8260) )
))
(declare-datatypes ((array!50908 0))(
  ( (array!50909 (arr!24477 (Array (_ BitVec 32) ValueCell!8260)) (size!24918 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50908)

(declare-fun e!487696 () Bool)

(declare-fun array_inv!19279 (array!50908) Bool)

(assert (=> start!74440 (and (array_inv!19279 _values!688) e!487696)))

(declare-fun lt!396356 () array!50908)

(declare-fun bm!38705 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28245)

(declare-fun zeroValue!654 () V!28245)

(declare-fun getCurrentListMapNoExtraKeys!3154 (array!50906 array!50908 (_ BitVec 32) (_ BitVec 32) V!28245 V!28245 (_ BitVec 32) Int) ListLongMap!10351)

(assert (=> bm!38705 (= call!38708 (getCurrentListMapNoExtraKeys!3154 _keys!868 lt!396356 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876005 () Bool)

(declare-fun e!487695 () Bool)

(assert (=> b!876005 (= e!487695 tp_is_empty!17399)))

(declare-fun b!876006 () Bool)

(declare-fun res!595385 () Bool)

(assert (=> b!876006 (=> (not res!595385) (not e!487697))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876006 (= res!595385 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24917 _keys!868))))))

(declare-fun b!876007 () Bool)

(declare-fun res!595392 () Bool)

(assert (=> b!876007 (=> (not res!595392) (not e!487697))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876007 (= res!595392 (validMask!0 mask!1196))))

(declare-fun b!876008 () Bool)

(declare-fun res!595386 () Bool)

(assert (=> b!876008 (=> (not res!595386) (not e!487697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50906 (_ BitVec 32)) Bool)

(assert (=> b!876008 (= res!595386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!876009 () Bool)

(declare-fun res!595384 () Bool)

(assert (=> b!876009 (=> (not res!595384) (not e!487697))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!876009 (= res!595384 (and (= (select (arr!24476 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!876010 () Bool)

(declare-fun e!487690 () Bool)

(declare-fun e!487694 () Bool)

(assert (=> b!876010 (= e!487690 (not e!487694))))

(declare-fun res!595391 () Bool)

(assert (=> b!876010 (=> res!595391 e!487694)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876010 (= res!595391 (not (validKeyInArray!0 (select (arr!24476 _keys!868) from!1053))))))

(assert (=> b!876010 e!487692))

(declare-fun c!92500 () Bool)

(assert (=> b!876010 (= c!92500 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!28245)

(declare-datatypes ((Unit!29918 0))(
  ( (Unit!29919) )
))
(declare-fun lt!396354 () Unit!29918)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!663 (array!50906 array!50908 (_ BitVec 32) (_ BitVec 32) V!28245 V!28245 (_ BitVec 32) (_ BitVec 64) V!28245 (_ BitVec 32) Int) Unit!29918)

(assert (=> b!876010 (= lt!396354 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!663 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876011 () Bool)

(declare-fun res!595387 () Bool)

(assert (=> b!876011 (=> (not res!595387) (not e!487697))))

(assert (=> b!876011 (= res!595387 (validKeyInArray!0 k!854))))

(declare-fun b!876012 () Bool)

(assert (=> b!876012 (= e!487696 (and e!487695 mapRes!27710))))

(declare-fun condMapEmpty!27710 () Bool)

(declare-fun mapDefault!27710 () ValueCell!8260)

