; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100120 () Bool)

(assert start!100120)

(declare-fun b_free!25663 () Bool)

(declare-fun b_next!25663 () Bool)

(assert (=> start!100120 (= b_free!25663 (not b_next!25663))))

(declare-fun tp!89703 () Bool)

(declare-fun b_and!42207 () Bool)

(assert (=> start!100120 (= tp!89703 b_and!42207)))

(declare-fun b!1193190 () Bool)

(declare-fun e!678205 () Bool)

(declare-fun e!678201 () Bool)

(assert (=> b!1193190 (= e!678205 (not e!678201))))

(declare-fun res!793914 () Bool)

(assert (=> b!1193190 (=> res!793914 e!678201)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193190 (= res!793914 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!77150 0))(
  ( (array!77151 (arr!37221 (Array (_ BitVec 32) (_ BitVec 64))) (size!37758 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77150)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193190 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39526 0))(
  ( (Unit!39527) )
))
(declare-fun lt!542475 () Unit!39526)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77150 (_ BitVec 64) (_ BitVec 32)) Unit!39526)

(assert (=> b!1193190 (= lt!542475 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1193191 () Bool)

(declare-fun e!678198 () Bool)

(assert (=> b!1193191 (= e!678198 true)))

(declare-datatypes ((V!45385 0))(
  ( (V!45386 (val!15153 Int)) )
))
(declare-fun zeroValue!944 () V!45385)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!542478 () array!77150)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14387 0))(
  ( (ValueCellFull!14387 (v!17792 V!45385)) (EmptyCell!14387) )
))
(declare-datatypes ((array!77152 0))(
  ( (array!77153 (arr!37222 (Array (_ BitVec 32) ValueCell!14387)) (size!37759 (_ BitVec 32))) )
))
(declare-fun lt!542474 () array!77152)

(declare-fun _values!996 () array!77152)

(declare-fun minValue!944 () V!45385)

(declare-datatypes ((tuple2!19630 0))(
  ( (tuple2!19631 (_1!9825 (_ BitVec 64)) (_2!9825 V!45385)) )
))
(declare-datatypes ((List!26387 0))(
  ( (Nil!26384) (Cons!26383 (h!27592 tuple2!19630) (t!39049 List!26387)) )
))
(declare-datatypes ((ListLongMap!17611 0))(
  ( (ListLongMap!17612 (toList!8821 List!26387)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5235 (array!77150 array!77152 (_ BitVec 32) (_ BitVec 32) V!45385 V!45385 (_ BitVec 32) Int) ListLongMap!17611)

(declare-fun -!1794 (ListLongMap!17611 (_ BitVec 64)) ListLongMap!17611)

(assert (=> b!1193191 (= (getCurrentListMapNoExtraKeys!5235 lt!542478 lt!542474 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1794 (getCurrentListMapNoExtraKeys!5235 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun lt!542476 () Unit!39526)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1000 (array!77150 array!77152 (_ BitVec 32) (_ BitVec 32) V!45385 V!45385 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39526)

(assert (=> b!1193191 (= lt!542476 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1000 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1193192 () Bool)

(declare-fun res!793918 () Bool)

(declare-fun e!678203 () Bool)

(assert (=> b!1193192 (=> (not res!793918) (not e!678203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193192 (= res!793918 (validKeyInArray!0 k!934))))

(declare-fun b!1193193 () Bool)

(declare-fun e!678202 () Bool)

(declare-fun tp_is_empty!30193 () Bool)

(assert (=> b!1193193 (= e!678202 tp_is_empty!30193)))

(declare-fun b!1193194 () Bool)

(declare-fun e!678204 () Bool)

(declare-fun e!678200 () Bool)

(declare-fun mapRes!47117 () Bool)

(assert (=> b!1193194 (= e!678204 (and e!678200 mapRes!47117))))

(declare-fun condMapEmpty!47117 () Bool)

(declare-fun mapDefault!47117 () ValueCell!14387)

