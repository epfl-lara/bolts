; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100810 () Bool)

(assert start!100810)

(declare-fun b_free!25945 () Bool)

(declare-fun b_next!25945 () Bool)

(assert (=> start!100810 (= b_free!25945 (not b_next!25945))))

(declare-fun tp!90839 () Bool)

(declare-fun b_and!42887 () Bool)

(assert (=> start!100810 (= tp!90839 b_and!42887)))

(declare-fun b!1206145 () Bool)

(declare-fun e!684996 () Bool)

(declare-fun e!684988 () Bool)

(assert (=> b!1206145 (= e!684996 e!684988)))

(declare-fun res!802239 () Bool)

(assert (=> b!1206145 (=> (not res!802239) (not e!684988))))

(declare-datatypes ((array!78054 0))(
  ( (array!78055 (arr!37664 (Array (_ BitVec 32) (_ BitVec 64))) (size!38201 (_ BitVec 32))) )
))
(declare-fun lt!547104 () array!78054)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78054 (_ BitVec 32)) Bool)

(assert (=> b!1206145 (= res!802239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!547104 mask!1564))))

(declare-fun _keys!1208 () array!78054)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1206145 (= lt!547104 (array!78055 (store (arr!37664 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38201 _keys!1208)))))

(declare-datatypes ((V!45993 0))(
  ( (V!45994 (val!15381 Int)) )
))
(declare-datatypes ((tuple2!19868 0))(
  ( (tuple2!19869 (_1!9944 (_ BitVec 64)) (_2!9944 V!45993)) )
))
(declare-datatypes ((List!26692 0))(
  ( (Nil!26689) (Cons!26688 (h!27897 tuple2!19868) (t!39624 List!26692)) )
))
(declare-datatypes ((ListLongMap!17849 0))(
  ( (ListLongMap!17850 (toList!8940 List!26692)) )
))
(declare-fun lt!547101 () ListLongMap!17849)

(declare-fun c!118364 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun bm!58664 () Bool)

(declare-fun c!118366 () Bool)

(declare-fun minValue!944 () V!45993)

(declare-fun lt!547094 () ListLongMap!17849)

(declare-datatypes ((Unit!39910 0))(
  ( (Unit!39911) )
))
(declare-fun call!58668 () Unit!39910)

(declare-fun zeroValue!944 () V!45993)

(declare-fun addStillContains!1034 (ListLongMap!17849 (_ BitVec 64) V!45993 (_ BitVec 64)) Unit!39910)

(assert (=> bm!58664 (= call!58668 (addStillContains!1034 (ite c!118364 lt!547094 lt!547101) (ite c!118364 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!118366 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!118364 minValue!944 (ite c!118366 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1206146 () Bool)

(declare-fun e!684993 () Unit!39910)

(declare-fun Unit!39912 () Unit!39910)

(assert (=> b!1206146 (= e!684993 Unit!39912)))

(declare-fun call!58669 () ListLongMap!17849)

(declare-fun bm!58665 () Bool)

(declare-fun +!3969 (ListLongMap!17849 tuple2!19868) ListLongMap!17849)

(assert (=> bm!58665 (= call!58669 (+!3969 (ite c!118364 lt!547094 lt!547101) (ite c!118364 (tuple2!19869 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118366 (tuple2!19869 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19869 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1206147 () Bool)

(declare-fun e!685001 () Bool)

(declare-fun e!684995 () Bool)

(declare-fun mapRes!47829 () Bool)

(assert (=> b!1206147 (= e!685001 (and e!684995 mapRes!47829))))

(declare-fun condMapEmpty!47829 () Bool)

(declare-datatypes ((ValueCell!14615 0))(
  ( (ValueCellFull!14615 (v!18026 V!45993)) (EmptyCell!14615) )
))
(declare-datatypes ((array!78056 0))(
  ( (array!78057 (arr!37665 (Array (_ BitVec 32) ValueCell!14615)) (size!38202 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78056)

(declare-fun mapDefault!47829 () ValueCell!14615)

