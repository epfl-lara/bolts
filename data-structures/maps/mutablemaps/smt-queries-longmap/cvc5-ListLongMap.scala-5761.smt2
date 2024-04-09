; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74442 () Bool)

(assert start!74442)

(declare-fun b_free!15157 () Bool)

(declare-fun b_next!15157 () Bool)

(assert (=> start!74442 (= b_free!15157 (not b_next!15157))))

(declare-fun tp!53149 () Bool)

(declare-fun b_and!24985 () Bool)

(assert (=> start!74442 (= tp!53149 b_and!24985)))

(declare-fun b!876050 () Bool)

(declare-fun e!487720 () Bool)

(declare-datatypes ((V!28249 0))(
  ( (V!28250 (val!8748 Int)) )
))
(declare-datatypes ((tuple2!11570 0))(
  ( (tuple2!11571 (_1!5795 (_ BitVec 64)) (_2!5795 V!28249)) )
))
(declare-datatypes ((List!17454 0))(
  ( (Nil!17451) (Cons!17450 (h!18581 tuple2!11570) (t!24523 List!17454)) )
))
(declare-datatypes ((ListLongMap!10353 0))(
  ( (ListLongMap!10354 (toList!5192 List!17454)) )
))
(declare-fun call!38715 () ListLongMap!10353)

(declare-fun call!38714 () ListLongMap!10353)

(assert (=> b!876050 (= e!487720 (= call!38715 call!38714))))

(declare-fun b!876051 () Bool)

(declare-fun e!487717 () Bool)

(declare-fun e!487719 () Bool)

(assert (=> b!876051 (= e!487717 (not e!487719))))

(declare-fun res!595414 () Bool)

(assert (=> b!876051 (=> res!595414 e!487719)))

(declare-datatypes ((array!50910 0))(
  ( (array!50911 (arr!24478 (Array (_ BitVec 32) (_ BitVec 64))) (size!24919 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50910)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876051 (= res!595414 (not (validKeyInArray!0 (select (arr!24478 _keys!868) from!1053))))))

(assert (=> b!876051 e!487720))

(declare-fun c!92503 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876051 (= c!92503 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29920 0))(
  ( (Unit!29921) )
))
(declare-fun lt!396367 () Unit!29920)

(declare-fun v!557 () V!28249)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!8261 0))(
  ( (ValueCellFull!8261 (v!11177 V!28249)) (EmptyCell!8261) )
))
(declare-datatypes ((array!50912 0))(
  ( (array!50913 (arr!24479 (Array (_ BitVec 32) ValueCell!8261)) (size!24920 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50912)

(declare-fun minValue!654 () V!28249)

(declare-fun zeroValue!654 () V!28249)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!664 (array!50910 array!50912 (_ BitVec 32) (_ BitVec 32) V!28249 V!28249 (_ BitVec 32) (_ BitVec 64) V!28249 (_ BitVec 32) Int) Unit!29920)

(assert (=> b!876051 (= lt!396367 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!664 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876052 () Bool)

(declare-fun e!487716 () Bool)

(declare-fun e!487718 () Bool)

(declare-fun mapRes!27713 () Bool)

(assert (=> b!876052 (= e!487716 (and e!487718 mapRes!27713))))

(declare-fun condMapEmpty!27713 () Bool)

(declare-fun mapDefault!27713 () ValueCell!8261)

