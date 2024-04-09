; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73662 () Bool)

(assert start!73662)

(declare-fun b_free!14549 () Bool)

(declare-fun b_next!14549 () Bool)

(assert (=> start!73662 (= b_free!14549 (not b_next!14549))))

(declare-fun tp!51152 () Bool)

(declare-fun b_and!24095 () Bool)

(assert (=> start!73662 (= tp!51152 b_and!24095)))

(declare-fun b!861835 () Bool)

(declare-fun res!585787 () Bool)

(declare-fun e!480196 () Bool)

(assert (=> b!861835 (=> (not res!585787) (not e!480196))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861835 (= res!585787 (validKeyInArray!0 k!854))))

(declare-fun b!861836 () Bool)

(declare-fun e!480194 () Bool)

(declare-fun tp_is_empty!16685 () Bool)

(assert (=> b!861836 (= e!480194 tp_is_empty!16685)))

(declare-fun b!861837 () Bool)

(declare-fun e!480201 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49516 0))(
  ( (array!49517 (arr!23785 (Array (_ BitVec 32) (_ BitVec 64))) (size!24226 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49516)

(assert (=> b!861837 (= e!480201 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24226 _keys!868))))))

(assert (=> b!861837 (not (= (select (arr!23785 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29382 0))(
  ( (Unit!29383) )
))
(declare-fun lt!388820 () Unit!29382)

(declare-fun e!480195 () Unit!29382)

(assert (=> b!861837 (= lt!388820 e!480195)))

(declare-fun c!91962 () Bool)

(assert (=> b!861837 (= c!91962 (= (select (arr!23785 _keys!868) from!1053) k!854))))

(declare-datatypes ((V!27293 0))(
  ( (V!27294 (val!8390 Int)) )
))
(declare-datatypes ((tuple2!11088 0))(
  ( (tuple2!11089 (_1!5554 (_ BitVec 64)) (_2!5554 V!27293)) )
))
(declare-datatypes ((List!16958 0))(
  ( (Nil!16955) (Cons!16954 (h!18085 tuple2!11088) (t!23781 List!16958)) )
))
(declare-datatypes ((ListLongMap!9871 0))(
  ( (ListLongMap!9872 (toList!4951 List!16958)) )
))
(declare-fun lt!388823 () ListLongMap!9871)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!388827 () ListLongMap!9871)

(declare-datatypes ((ValueCell!7903 0))(
  ( (ValueCellFull!7903 (v!10811 V!27293)) (EmptyCell!7903) )
))
(declare-datatypes ((array!49518 0))(
  ( (array!49519 (arr!23786 (Array (_ BitVec 32) ValueCell!7903)) (size!24227 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49518)

(declare-fun +!2248 (ListLongMap!9871 tuple2!11088) ListLongMap!9871)

(declare-fun get!12561 (ValueCell!7903 V!27293) V!27293)

(declare-fun dynLambda!1129 (Int (_ BitVec 64)) V!27293)

(assert (=> b!861837 (= lt!388823 (+!2248 lt!388827 (tuple2!11089 (select (arr!23785 _keys!868) from!1053) (get!12561 (select (arr!23786 _values!688) from!1053) (dynLambda!1129 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!861838 () Bool)

(declare-fun res!585781 () Bool)

(assert (=> b!861838 (=> (not res!585781) (not e!480196))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!861838 (= res!585781 (and (= (size!24227 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24226 _keys!868) (size!24227 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26627 () Bool)

(declare-fun mapRes!26627 () Bool)

(assert (=> mapIsEmpty!26627 mapRes!26627))

(declare-fun b!861839 () Bool)

(declare-fun res!585789 () Bool)

(assert (=> b!861839 (=> (not res!585789) (not e!480196))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!861839 (= res!585789 (and (= (select (arr!23785 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!861840 () Bool)

(declare-fun res!585782 () Bool)

(assert (=> b!861840 (=> (not res!585782) (not e!480196))))

(assert (=> b!861840 (= res!585782 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24226 _keys!868))))))

(declare-fun b!861841 () Bool)

(declare-fun Unit!29384 () Unit!29382)

(assert (=> b!861841 (= e!480195 Unit!29384)))

(declare-fun lt!388826 () Unit!29382)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49516 (_ BitVec 32) (_ BitVec 32)) Unit!29382)

(assert (=> b!861841 (= lt!388826 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16959 0))(
  ( (Nil!16956) (Cons!16955 (h!18086 (_ BitVec 64)) (t!23782 List!16959)) )
))
(declare-fun arrayNoDuplicates!0 (array!49516 (_ BitVec 32) List!16959) Bool)

(assert (=> b!861841 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16956)))

(declare-fun lt!388822 () Unit!29382)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49516 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29382)

(assert (=> b!861841 (= lt!388822 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861841 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388824 () Unit!29382)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49516 (_ BitVec 64) (_ BitVec 32) List!16959) Unit!29382)

(assert (=> b!861841 (= lt!388824 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16956))))

(assert (=> b!861841 false))

(declare-fun b!861843 () Bool)

(declare-fun res!585786 () Bool)

(assert (=> b!861843 (=> (not res!585786) (not e!480196))))

(assert (=> b!861843 (= res!585786 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16956))))

(declare-fun b!861844 () Bool)

(declare-fun res!585783 () Bool)

(assert (=> b!861844 (=> (not res!585783) (not e!480196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861844 (= res!585783 (validMask!0 mask!1196))))

(declare-fun b!861845 () Bool)

(declare-fun e!480198 () Bool)

(assert (=> b!861845 (= e!480198 (and e!480194 mapRes!26627))))

(declare-fun condMapEmpty!26627 () Bool)

(declare-fun mapDefault!26627 () ValueCell!7903)

