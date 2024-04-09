; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74840 () Bool)

(assert start!74840)

(declare-fun b_free!15389 () Bool)

(declare-fun b_next!15389 () Bool)

(assert (=> start!74840 (= b_free!15389 (not b_next!15389))))

(declare-fun tp!53865 () Bool)

(declare-fun b_and!25463 () Bool)

(assert (=> start!74840 (= tp!53865 b_and!25463)))

(declare-fun b!881846 () Bool)

(declare-fun e!490805 () Bool)

(declare-datatypes ((array!51376 0))(
  ( (array!51377 (arr!24705 (Array (_ BitVec 32) (_ BitVec 64))) (size!25146 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51376)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!881846 (= e!490805 (or (bvsge (size!25146 _keys!868) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25146 _keys!868))))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!51376 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!881846 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30070 0))(
  ( (Unit!30071) )
))
(declare-fun lt!398939 () Unit!30070)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51376 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30070)

(assert (=> b!881846 (= lt!398939 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!17635 0))(
  ( (Nil!17632) (Cons!17631 (h!18762 (_ BitVec 64)) (t!24834 List!17635)) )
))
(declare-fun arrayNoDuplicates!0 (array!51376 (_ BitVec 32) List!17635) Bool)

(assert (=> b!881846 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17632)))

(declare-fun lt!398942 () Unit!30070)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51376 (_ BitVec 32) (_ BitVec 32)) Unit!30070)

(assert (=> b!881846 (= lt!398942 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!881848 () Bool)

(declare-fun res!599214 () Bool)

(declare-fun e!490804 () Bool)

(assert (=> b!881848 (=> (not res!599214) (not e!490804))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51376 (_ BitVec 32)) Bool)

(assert (=> b!881848 (= res!599214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!28080 () Bool)

(declare-fun mapRes!28080 () Bool)

(declare-fun tp!53864 () Bool)

(declare-fun e!490799 () Bool)

(assert (=> mapNonEmpty!28080 (= mapRes!28080 (and tp!53864 e!490799))))

(declare-datatypes ((V!28557 0))(
  ( (V!28558 (val!8864 Int)) )
))
(declare-datatypes ((ValueCell!8377 0))(
  ( (ValueCellFull!8377 (v!11320 V!28557)) (EmptyCell!8377) )
))
(declare-fun mapValue!28080 () ValueCell!8377)

(declare-fun mapRest!28080 () (Array (_ BitVec 32) ValueCell!8377))

(declare-datatypes ((array!51378 0))(
  ( (array!51379 (arr!24706 (Array (_ BitVec 32) ValueCell!8377)) (size!25147 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51378)

(declare-fun mapKey!28080 () (_ BitVec 32))

(assert (=> mapNonEmpty!28080 (= (arr!24706 _values!688) (store mapRest!28080 mapKey!28080 mapValue!28080))))

(declare-fun b!881849 () Bool)

(declare-fun res!599217 () Bool)

(assert (=> b!881849 (=> (not res!599217) (not e!490804))))

(assert (=> b!881849 (= res!599217 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17632))))

(declare-fun b!881850 () Bool)

(declare-fun res!599218 () Bool)

(assert (=> b!881850 (=> (not res!599218) (not e!490804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881850 (= res!599218 (validMask!0 mask!1196))))

(declare-fun b!881851 () Bool)

(declare-fun res!599221 () Bool)

(assert (=> b!881851 (=> (not res!599221) (not e!490804))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!881851 (= res!599221 (and (= (size!25147 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25146 _keys!868) (size!25147 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!881852 () Bool)

(declare-fun e!490802 () Bool)

(assert (=> b!881852 (= e!490802 e!490805)))

(declare-fun res!599220 () Bool)

(assert (=> b!881852 (=> res!599220 e!490805)))

(assert (=> b!881852 (= res!599220 (not (= (select (arr!24705 _keys!868) from!1053) k!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11768 0))(
  ( (tuple2!11769 (_1!5894 (_ BitVec 64)) (_2!5894 V!28557)) )
))
(declare-datatypes ((List!17636 0))(
  ( (Nil!17633) (Cons!17632 (h!18763 tuple2!11768) (t!24835 List!17636)) )
))
(declare-datatypes ((ListLongMap!10551 0))(
  ( (ListLongMap!10552 (toList!5291 List!17636)) )
))
(declare-fun lt!398941 () ListLongMap!10551)

(declare-fun lt!398943 () ListLongMap!10551)

(declare-fun +!2497 (ListLongMap!10551 tuple2!11768) ListLongMap!10551)

(declare-fun get!13019 (ValueCell!8377 V!28557) V!28557)

(declare-fun dynLambda!1256 (Int (_ BitVec 64)) V!28557)

(assert (=> b!881852 (= lt!398941 (+!2497 lt!398943 (tuple2!11769 (select (arr!24705 _keys!868) from!1053) (get!13019 (select (arr!24706 _values!688) from!1053) (dynLambda!1256 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881853 () Bool)

(declare-fun e!490803 () Bool)

(declare-fun e!490798 () Bool)

(assert (=> b!881853 (= e!490803 (and e!490798 mapRes!28080))))

(declare-fun condMapEmpty!28080 () Bool)

(declare-fun mapDefault!28080 () ValueCell!8377)

