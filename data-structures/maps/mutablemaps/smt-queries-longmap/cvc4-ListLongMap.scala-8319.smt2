; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101302 () Bool)

(assert start!101302)

(declare-fun b_free!26189 () Bool)

(declare-fun b_next!26189 () Bool)

(assert (=> start!101302 (= b_free!26189 (not b_next!26189))))

(declare-fun tp!91590 () Bool)

(declare-fun b_and!43505 () Bool)

(assert (=> start!101302 (= tp!91590 b_and!43505)))

(declare-fun b!1216364 () Bool)

(declare-fun e!690624 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78534 0))(
  ( (array!78535 (arr!37898 (Array (_ BitVec 32) (_ BitVec 64))) (size!38435 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78534)

(assert (=> b!1216364 (= e!690624 (bvslt from!1455 (size!38435 _keys!1208)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((V!46317 0))(
  ( (V!46318 (val!15503 Int)) )
))
(declare-datatypes ((ValueCell!14737 0))(
  ( (ValueCellFull!14737 (v!18157 V!46317)) (EmptyCell!14737) )
))
(declare-datatypes ((array!78536 0))(
  ( (array!78537 (arr!37899 (Array (_ BitVec 32) ValueCell!14737)) (size!38436 (_ BitVec 32))) )
))
(declare-fun lt!552842 () array!78536)

(declare-fun _values!996 () array!78536)

(declare-fun minValue!944 () V!46317)

(declare-fun zeroValue!944 () V!46317)

(declare-fun lt!552841 () array!78534)

(declare-datatypes ((tuple2!20068 0))(
  ( (tuple2!20069 (_1!10044 (_ BitVec 64)) (_2!10044 V!46317)) )
))
(declare-datatypes ((List!26890 0))(
  ( (Nil!26887) (Cons!26886 (h!28095 tuple2!20068) (t!40066 List!26890)) )
))
(declare-datatypes ((ListLongMap!18049 0))(
  ( (ListLongMap!18050 (toList!9040 List!26890)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5445 (array!78534 array!78536 (_ BitVec 32) (_ BitVec 32) V!46317 V!46317 (_ BitVec 32) Int) ListLongMap!18049)

(declare-fun -!1903 (ListLongMap!18049 (_ BitVec 64)) ListLongMap!18049)

(assert (=> b!1216364 (= (getCurrentListMapNoExtraKeys!5445 lt!552841 lt!552842 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1903 (getCurrentListMapNoExtraKeys!5445 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!40264 0))(
  ( (Unit!40265) )
))
(declare-fun lt!552845 () Unit!40264)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1105 (array!78534 array!78536 (_ BitVec 32) (_ BitVec 32) V!46317 V!46317 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40264)

(assert (=> b!1216364 (= lt!552845 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1105 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1216365 () Bool)

(declare-fun e!690627 () Bool)

(declare-fun tp_is_empty!30893 () Bool)

(assert (=> b!1216365 (= e!690627 tp_is_empty!30893)))

(declare-fun mapIsEmpty!48214 () Bool)

(declare-fun mapRes!48214 () Bool)

(assert (=> mapIsEmpty!48214 mapRes!48214))

(declare-fun b!1216366 () Bool)

(declare-fun res!807798 () Bool)

(declare-fun e!690626 () Bool)

(assert (=> b!1216366 (=> (not res!807798) (not e!690626))))

(declare-datatypes ((List!26891 0))(
  ( (Nil!26888) (Cons!26887 (h!28096 (_ BitVec 64)) (t!40067 List!26891)) )
))
(declare-fun arrayNoDuplicates!0 (array!78534 (_ BitVec 32) List!26891) Bool)

(assert (=> b!1216366 (= res!807798 (arrayNoDuplicates!0 lt!552841 #b00000000000000000000000000000000 Nil!26888))))

(declare-fun b!1216367 () Bool)

(declare-fun e!690623 () Bool)

(declare-fun e!690620 () Bool)

(assert (=> b!1216367 (= e!690623 (and e!690620 mapRes!48214))))

(declare-fun condMapEmpty!48214 () Bool)

(declare-fun mapDefault!48214 () ValueCell!14737)

