; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99626 () Bool)

(assert start!99626)

(declare-fun b_free!25169 () Bool)

(declare-fun b_next!25169 () Bool)

(assert (=> start!99626 (= b_free!25169 (not b_next!25169))))

(declare-fun tp!88221 () Bool)

(declare-fun b_and!41219 () Bool)

(assert (=> start!99626 (= tp!88221 b_and!41219)))

(declare-fun b!1179271 () Bool)

(declare-fun res!783567 () Bool)

(declare-fun e!670479 () Bool)

(assert (=> b!1179271 (=> (not res!783567) (not e!670479))))

(declare-datatypes ((array!76170 0))(
  ( (array!76171 (arr!36731 (Array (_ BitVec 32) (_ BitVec 64))) (size!37268 (_ BitVec 32))) )
))
(declare-fun lt!532920 () array!76170)

(declare-datatypes ((List!25968 0))(
  ( (Nil!25965) (Cons!25964 (h!27173 (_ BitVec 64)) (t!38136 List!25968)) )
))
(declare-fun arrayNoDuplicates!0 (array!76170 (_ BitVec 32) List!25968) Bool)

(assert (=> b!1179271 (= res!783567 (arrayNoDuplicates!0 lt!532920 #b00000000000000000000000000000000 Nil!25965))))

(declare-fun b!1179272 () Bool)

(declare-fun res!783565 () Bool)

(declare-fun e!670485 () Bool)

(assert (=> b!1179272 (=> (not res!783565) (not e!670485))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun _keys!1208 () array!76170)

(assert (=> b!1179272 (= res!783565 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37268 _keys!1208))))))

(declare-fun b!1179273 () Bool)

(declare-fun res!783572 () Bool)

(assert (=> b!1179273 (=> (not res!783572) (not e!670485))))

(assert (=> b!1179273 (= res!783572 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25965))))

(declare-fun b!1179275 () Bool)

(declare-fun e!670474 () Bool)

(declare-fun e!670476 () Bool)

(assert (=> b!1179275 (= e!670474 e!670476)))

(declare-fun res!783571 () Bool)

(assert (=> b!1179275 (=> res!783571 e!670476)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179275 (= res!783571 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44725 0))(
  ( (V!44726 (val!14906 Int)) )
))
(declare-fun zeroValue!944 () V!44725)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14140 0))(
  ( (ValueCellFull!14140 (v!17545 V!44725)) (EmptyCell!14140) )
))
(declare-datatypes ((array!76172 0))(
  ( (array!76173 (arr!36732 (Array (_ BitVec 32) ValueCell!14140)) (size!37269 (_ BitVec 32))) )
))
(declare-fun lt!532918 () array!76172)

(declare-fun minValue!944 () V!44725)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!19204 0))(
  ( (tuple2!19205 (_1!9612 (_ BitVec 64)) (_2!9612 V!44725)) )
))
(declare-datatypes ((List!25969 0))(
  ( (Nil!25966) (Cons!25965 (h!27174 tuple2!19204) (t!38137 List!25969)) )
))
(declare-datatypes ((ListLongMap!17185 0))(
  ( (ListLongMap!17186 (toList!8608 List!25969)) )
))
(declare-fun lt!532921 () ListLongMap!17185)

(declare-fun getCurrentListMapNoExtraKeys!5036 (array!76170 array!76172 (_ BitVec 32) (_ BitVec 32) V!44725 V!44725 (_ BitVec 32) Int) ListLongMap!17185)

(assert (=> b!1179275 (= lt!532921 (getCurrentListMapNoExtraKeys!5036 lt!532920 lt!532918 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76172)

(declare-fun lt!532919 () V!44725)

(assert (=> b!1179275 (= lt!532918 (array!76173 (store (arr!36732 _values!996) i!673 (ValueCellFull!14140 lt!532919)) (size!37269 _values!996)))))

(declare-fun dynLambda!3009 (Int (_ BitVec 64)) V!44725)

(assert (=> b!1179275 (= lt!532919 (dynLambda!3009 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!532926 () ListLongMap!17185)

(assert (=> b!1179275 (= lt!532926 (getCurrentListMapNoExtraKeys!5036 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46376 () Bool)

(declare-fun mapRes!46376 () Bool)

(assert (=> mapIsEmpty!46376 mapRes!46376))

(declare-fun b!1179276 () Bool)

(declare-fun e!670480 () Bool)

(declare-fun e!670481 () Bool)

(assert (=> b!1179276 (= e!670480 (and e!670481 mapRes!46376))))

(declare-fun condMapEmpty!46376 () Bool)

(declare-fun mapDefault!46376 () ValueCell!14140)

