; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74882 () Bool)

(assert start!74882)

(declare-fun b_free!15403 () Bool)

(declare-fun b_next!15403 () Bool)

(assert (=> start!74882 (= b_free!15403 (not b_next!15403))))

(declare-fun tp!53910 () Bool)

(declare-fun b_and!25507 () Bool)

(assert (=> start!74882 (= tp!53910 b_and!25507)))

(declare-fun b!882316 () Bool)

(declare-fun res!599537 () Bool)

(declare-fun e!491084 () Bool)

(assert (=> b!882316 (=> res!599537 e!491084)))

(declare-datatypes ((List!17645 0))(
  ( (Nil!17642) (Cons!17641 (h!18772 (_ BitVec 64)) (t!24858 List!17645)) )
))
(declare-fun noDuplicate!1319 (List!17645) Bool)

(assert (=> b!882316 (= res!599537 (not (noDuplicate!1319 Nil!17642)))))

(declare-fun b!882317 () Bool)

(declare-fun e!491079 () Bool)

(declare-fun e!491082 () Bool)

(assert (=> b!882317 (= e!491079 e!491082)))

(declare-fun res!599538 () Bool)

(assert (=> b!882317 (=> res!599538 e!491082)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51404 0))(
  ( (array!51405 (arr!24718 (Array (_ BitVec 32) (_ BitVec 64))) (size!25159 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51404)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882317 (= res!599538 (not (= (select (arr!24718 _keys!868) from!1053) k!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!28577 0))(
  ( (V!28578 (val!8871 Int)) )
))
(declare-datatypes ((tuple2!11778 0))(
  ( (tuple2!11779 (_1!5899 (_ BitVec 64)) (_2!5899 V!28577)) )
))
(declare-datatypes ((List!17646 0))(
  ( (Nil!17643) (Cons!17642 (h!18773 tuple2!11778) (t!24859 List!17646)) )
))
(declare-datatypes ((ListLongMap!10561 0))(
  ( (ListLongMap!10562 (toList!5296 List!17646)) )
))
(declare-fun lt!399206 () ListLongMap!10561)

(declare-fun lt!399207 () ListLongMap!10561)

(declare-datatypes ((ValueCell!8384 0))(
  ( (ValueCellFull!8384 (v!11331 V!28577)) (EmptyCell!8384) )
))
(declare-datatypes ((array!51406 0))(
  ( (array!51407 (arr!24719 (Array (_ BitVec 32) ValueCell!8384)) (size!25160 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51406)

(declare-fun +!2502 (ListLongMap!10561 tuple2!11778) ListLongMap!10561)

(declare-fun get!13032 (ValueCell!8384 V!28577) V!28577)

(declare-fun dynLambda!1261 (Int (_ BitVec 64)) V!28577)

(assert (=> b!882317 (= lt!399206 (+!2502 lt!399207 (tuple2!11779 (select (arr!24718 _keys!868) from!1053) (get!13032 (select (arr!24719 _values!688) from!1053) (dynLambda!1261 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882318 () Bool)

(declare-fun e!491081 () Bool)

(declare-fun tp_is_empty!17647 () Bool)

(assert (=> b!882318 (= e!491081 tp_is_empty!17647)))

(declare-fun b!882319 () Bool)

(declare-fun res!599527 () Bool)

(declare-fun e!491083 () Bool)

(assert (=> b!882319 (=> (not res!599527) (not e!491083))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!882319 (= res!599527 (and (= (size!25160 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25159 _keys!868) (size!25160 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!28104 () Bool)

(declare-fun mapRes!28104 () Bool)

(assert (=> mapIsEmpty!28104 mapRes!28104))

(declare-fun b!882320 () Bool)

(declare-fun res!599526 () Bool)

(assert (=> b!882320 (=> (not res!599526) (not e!491083))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882320 (= res!599526 (validKeyInArray!0 k!854))))

(declare-fun b!882321 () Bool)

(assert (=> b!882321 (= e!491082 e!491084)))

(declare-fun res!599531 () Bool)

(assert (=> b!882321 (=> res!599531 e!491084)))

(assert (=> b!882321 (= res!599531 (or (bvsge (size!25159 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25159 _keys!868)) (bvsge from!1053 (size!25159 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!51404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!882321 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30080 0))(
  ( (Unit!30081) )
))
(declare-fun lt!399210 () Unit!30080)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51404 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30080)

(assert (=> b!882321 (= lt!399210 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayNoDuplicates!0 (array!51404 (_ BitVec 32) List!17645) Bool)

(assert (=> b!882321 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17642)))

(declare-fun lt!399212 () Unit!30080)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51404 (_ BitVec 32) (_ BitVec 32)) Unit!30080)

(assert (=> b!882321 (= lt!399212 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!882322 () Bool)

(declare-fun e!491078 () Bool)

(assert (=> b!882322 (= e!491084 e!491078)))

(declare-fun res!599532 () Bool)

(assert (=> b!882322 (=> (not res!599532) (not e!491078))))

(declare-fun contains!4265 (List!17645 (_ BitVec 64)) Bool)

(assert (=> b!882322 (= res!599532 (not (contains!4265 Nil!17642 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882323 () Bool)

(assert (=> b!882323 (= e!491078 (not (contains!4265 Nil!17642 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882324 () Bool)

(declare-fun e!491080 () Bool)

(declare-fun e!491085 () Bool)

(assert (=> b!882324 (= e!491080 (and e!491085 mapRes!28104))))

(declare-fun condMapEmpty!28104 () Bool)

(declare-fun mapDefault!28104 () ValueCell!8384)

