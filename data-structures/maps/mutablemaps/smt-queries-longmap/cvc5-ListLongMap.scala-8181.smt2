; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99988 () Bool)

(assert start!99988)

(declare-fun b_free!25531 () Bool)

(declare-fun b_next!25531 () Bool)

(assert (=> start!99988 (= b_free!25531 (not b_next!25531))))

(declare-fun tp!89308 () Bool)

(declare-fun b_and!41943 () Bool)

(assert (=> start!99988 (= tp!89308 b_and!41943)))

(declare-fun b!1190088 () Bool)

(declare-fun e!676616 () Bool)

(assert (=> b!1190088 (= e!676616 true)))

(declare-datatypes ((V!45209 0))(
  ( (V!45210 (val!15087 Int)) )
))
(declare-fun zeroValue!944 () V!45209)

(declare-datatypes ((array!76888 0))(
  ( (array!76889 (arr!37090 (Array (_ BitVec 32) (_ BitVec 64))) (size!37627 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76888)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14321 0))(
  ( (ValueCellFull!14321 (v!17726 V!45209)) (EmptyCell!14321) )
))
(declare-datatypes ((array!76890 0))(
  ( (array!76891 (arr!37091 (Array (_ BitVec 32) ValueCell!14321)) (size!37628 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76890)

(declare-fun lt!541289 () array!76890)

(declare-fun lt!541287 () array!76888)

(declare-fun minValue!944 () V!45209)

(declare-datatypes ((tuple2!19518 0))(
  ( (tuple2!19519 (_1!9769 (_ BitVec 64)) (_2!9769 V!45209)) )
))
(declare-datatypes ((List!26277 0))(
  ( (Nil!26274) (Cons!26273 (h!27482 tuple2!19518) (t!38807 List!26277)) )
))
(declare-datatypes ((ListLongMap!17499 0))(
  ( (ListLongMap!17500 (toList!8765 List!26277)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5179 (array!76888 array!76890 (_ BitVec 32) (_ BitVec 32) V!45209 V!45209 (_ BitVec 32) Int) ListLongMap!17499)

(declare-fun -!1747 (ListLongMap!17499 (_ BitVec 64)) ListLongMap!17499)

(assert (=> b!1190088 (= (getCurrentListMapNoExtraKeys!5179 lt!541287 lt!541289 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1747 (getCurrentListMapNoExtraKeys!5179 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39422 0))(
  ( (Unit!39423) )
))
(declare-fun lt!541290 () Unit!39422)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!953 (array!76888 array!76890 (_ BitVec 32) (_ BitVec 32) V!45209 V!45209 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39422)

(assert (=> b!1190088 (= lt!541290 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!953 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1190089 () Bool)

(declare-fun res!791540 () Bool)

(declare-fun e!676615 () Bool)

(assert (=> b!1190089 (=> (not res!791540) (not e!676615))))

(declare-datatypes ((List!26278 0))(
  ( (Nil!26275) (Cons!26274 (h!27483 (_ BitVec 64)) (t!38808 List!26278)) )
))
(declare-fun arrayNoDuplicates!0 (array!76888 (_ BitVec 32) List!26278) Bool)

(assert (=> b!1190089 (= res!791540 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26275))))

(declare-fun b!1190090 () Bool)

(declare-fun e!676621 () Bool)

(declare-fun e!676620 () Bool)

(declare-fun mapRes!46919 () Bool)

(assert (=> b!1190090 (= e!676621 (and e!676620 mapRes!46919))))

(declare-fun condMapEmpty!46919 () Bool)

(declare-fun mapDefault!46919 () ValueCell!14321)

