; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100136 () Bool)

(assert start!100136)

(declare-fun b_free!25673 () Bool)

(declare-fun b_next!25673 () Bool)

(assert (=> start!100136 (= b_free!25673 (not b_next!25673))))

(declare-fun tp!89742 () Bool)

(declare-fun b_and!42227 () Bool)

(assert (=> start!100136 (= tp!89742 b_and!42227)))

(declare-fun b!1193558 () Bool)

(declare-fun e!678387 () Bool)

(declare-fun tp_is_empty!30209 () Bool)

(assert (=> b!1193558 (= e!678387 tp_is_empty!30209)))

(declare-datatypes ((V!45405 0))(
  ( (V!45406 (val!15161 Int)) )
))
(declare-fun zeroValue!944 () V!45405)

(declare-datatypes ((array!77182 0))(
  ( (array!77183 (arr!37237 (Array (_ BitVec 32) (_ BitVec 64))) (size!37774 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77182)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14395 0))(
  ( (ValueCellFull!14395 (v!17800 V!45405)) (EmptyCell!14395) )
))
(declare-datatypes ((array!77184 0))(
  ( (array!77185 (arr!37238 (Array (_ BitVec 32) ValueCell!14395)) (size!37775 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77184)

(declare-fun bm!57130 () Bool)

(declare-fun minValue!944 () V!45405)

(declare-datatypes ((tuple2!19638 0))(
  ( (tuple2!19639 (_1!9829 (_ BitVec 64)) (_2!9829 V!45405)) )
))
(declare-datatypes ((List!26397 0))(
  ( (Nil!26394) (Cons!26393 (h!27602 tuple2!19638) (t!39069 List!26397)) )
))
(declare-datatypes ((ListLongMap!17619 0))(
  ( (ListLongMap!17620 (toList!8825 List!26397)) )
))
(declare-fun call!57134 () ListLongMap!17619)

(declare-fun getCurrentListMapNoExtraKeys!5239 (array!77182 array!77184 (_ BitVec 32) (_ BitVec 32) V!45405 V!45405 (_ BitVec 32) Int) ListLongMap!17619)

(assert (=> bm!57130 (= call!57134 (getCurrentListMapNoExtraKeys!5239 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1193559 () Bool)

(declare-fun res!794185 () Bool)

(declare-fun e!678380 () Bool)

(assert (=> b!1193559 (=> (not res!794185) (not e!678380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193559 (= res!794185 (validMask!0 mask!1564))))

(declare-fun b!1193560 () Bool)

(declare-fun e!678388 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1193560 (= e!678388 (= (select (arr!37237 _keys!1208) from!1455) k!934))))

(declare-fun e!678381 () Bool)

(assert (=> b!1193560 e!678381))

(declare-fun c!117257 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193560 (= c!117257 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!39536 0))(
  ( (Unit!39537) )
))
(declare-fun lt!542581 () Unit!39536)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1003 (array!77182 array!77184 (_ BitVec 32) (_ BitVec 32) V!45405 V!45405 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39536)

(assert (=> b!1193560 (= lt!542581 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1003 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1193561 () Bool)

(declare-fun res!794192 () Bool)

(assert (=> b!1193561 (=> (not res!794192) (not e!678380))))

(assert (=> b!1193561 (= res!794192 (and (= (size!37775 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37774 _keys!1208) (size!37775 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193562 () Bool)

(declare-fun e!678386 () Bool)

(declare-fun e!678384 () Bool)

(declare-fun mapRes!47141 () Bool)

(assert (=> b!1193562 (= e!678386 (and e!678384 mapRes!47141))))

(declare-fun condMapEmpty!47141 () Bool)

(declare-fun mapDefault!47141 () ValueCell!14395)

