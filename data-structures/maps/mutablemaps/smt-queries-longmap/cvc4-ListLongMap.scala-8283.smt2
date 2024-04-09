; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100940 () Bool)

(assert start!100940)

(declare-fun b_free!25973 () Bool)

(declare-fun b_next!25973 () Bool)

(assert (=> start!100940 (= b_free!25973 (not b_next!25973))))

(declare-fun tp!90929 () Bool)

(declare-fun b_and!43001 () Bool)

(assert (=> start!100940 (= tp!90929 b_and!43001)))

(declare-datatypes ((array!78112 0))(
  ( (array!78113 (arr!37691 (Array (_ BitVec 32) (_ BitVec 64))) (size!38228 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78112)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!686114 () Bool)

(declare-fun b!1208047 () Bool)

(declare-fun arrayContainsKey!0 (array!78112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1208047 (= e!686114 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!803162 () Bool)

(declare-fun e!686109 () Bool)

(assert (=> start!100940 (=> (not res!803162) (not e!686109))))

(assert (=> start!100940 (= res!803162 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38228 _keys!1208))))))

(assert (=> start!100940 e!686109))

(declare-fun tp_is_empty!30677 () Bool)

(assert (=> start!100940 tp_is_empty!30677))

(declare-fun array_inv!28616 (array!78112) Bool)

(assert (=> start!100940 (array_inv!28616 _keys!1208)))

(assert (=> start!100940 true))

(assert (=> start!100940 tp!90929))

(declare-datatypes ((V!46029 0))(
  ( (V!46030 (val!15395 Int)) )
))
(declare-datatypes ((ValueCell!14629 0))(
  ( (ValueCellFull!14629 (v!18044 V!46029)) (EmptyCell!14629) )
))
(declare-datatypes ((array!78114 0))(
  ( (array!78115 (arr!37692 (Array (_ BitVec 32) ValueCell!14629)) (size!38229 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78114)

(declare-fun e!686108 () Bool)

(declare-fun array_inv!28617 (array!78114) Bool)

(assert (=> start!100940 (and (array_inv!28617 _values!996) e!686108)))

(declare-fun b!1208048 () Bool)

(declare-fun e!686123 () Bool)

(declare-fun e!686122 () Bool)

(assert (=> b!1208048 (= e!686123 e!686122)))

(declare-fun res!803154 () Bool)

(assert (=> b!1208048 (=> res!803154 e!686122)))

(declare-datatypes ((tuple2!19894 0))(
  ( (tuple2!19895 (_1!9957 (_ BitVec 64)) (_2!9957 V!46029)) )
))
(declare-datatypes ((List!26717 0))(
  ( (Nil!26714) (Cons!26713 (h!27922 tuple2!19894) (t!39677 List!26717)) )
))
(declare-datatypes ((ListLongMap!17875 0))(
  ( (ListLongMap!17876 (toList!8953 List!26717)) )
))
(declare-fun lt!548203 () ListLongMap!17875)

(declare-fun contains!6958 (ListLongMap!17875 (_ BitVec 64)) Bool)

(assert (=> b!1208048 (= res!803154 (not (contains!6958 lt!548203 k!934)))))

(declare-fun zeroValue!944 () V!46029)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!46029)

(declare-fun getCurrentListMapNoExtraKeys!5360 (array!78112 array!78114 (_ BitVec 32) (_ BitVec 32) V!46029 V!46029 (_ BitVec 32) Int) ListLongMap!17875)

(assert (=> b!1208048 (= lt!548203 (getCurrentListMapNoExtraKeys!5360 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!59070 () Bool)

(declare-fun call!59079 () ListLongMap!17875)

(declare-fun lt!548193 () array!78112)

(declare-fun lt!548197 () array!78114)

(assert (=> bm!59070 (= call!59079 (getCurrentListMapNoExtraKeys!5360 lt!548193 lt!548197 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!118774 () Bool)

(declare-fun c!118772 () Bool)

(declare-fun bm!59071 () Bool)

(declare-datatypes ((Unit!39975 0))(
  ( (Unit!39976) )
))
(declare-fun call!59080 () Unit!39975)

(declare-fun addStillContains!1046 (ListLongMap!17875 (_ BitVec 64) V!46029 (_ BitVec 64)) Unit!39975)

(assert (=> bm!59071 (= call!59080 (addStillContains!1046 lt!548203 (ite (or c!118774 c!118772) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118774 c!118772) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1208049 () Bool)

(declare-fun e!686112 () Bool)

(declare-fun mapRes!47878 () Bool)

(assert (=> b!1208049 (= e!686108 (and e!686112 mapRes!47878))))

(declare-fun condMapEmpty!47878 () Bool)

(declare-fun mapDefault!47878 () ValueCell!14629)

