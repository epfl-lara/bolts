; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99736 () Bool)

(assert start!99736)

(declare-fun b_free!25279 () Bool)

(declare-fun b_next!25279 () Bool)

(assert (=> start!99736 (= b_free!25279 (not b_next!25279))))

(declare-fun tp!88552 () Bool)

(declare-fun b_and!41439 () Bool)

(assert (=> start!99736 (= tp!88552 b_and!41439)))

(declare-fun b!1182871 () Bool)

(declare-fun res!786226 () Bool)

(declare-fun e!672565 () Bool)

(assert (=> b!1182871 (=> (not res!786226) (not e!672565))))

(declare-datatypes ((array!76386 0))(
  ( (array!76387 (arr!36839 (Array (_ BitVec 32) (_ BitVec 64))) (size!37376 (_ BitVec 32))) )
))
(declare-fun lt!535658 () array!76386)

(declare-datatypes ((List!26057 0))(
  ( (Nil!26054) (Cons!26053 (h!27262 (_ BitVec 64)) (t!38335 List!26057)) )
))
(declare-fun arrayNoDuplicates!0 (array!76386 (_ BitVec 32) List!26057) Bool)

(assert (=> b!1182871 (= res!786226 (arrayNoDuplicates!0 lt!535658 #b00000000000000000000000000000000 Nil!26054))))

(declare-fun mapIsEmpty!46541 () Bool)

(declare-fun mapRes!46541 () Bool)

(assert (=> mapIsEmpty!46541 mapRes!46541))

(declare-fun b!1182873 () Bool)

(declare-fun res!786237 () Bool)

(declare-fun e!672561 () Bool)

(assert (=> b!1182873 (=> (not res!786237) (not e!672561))))

(declare-fun _keys!1208 () array!76386)

(assert (=> b!1182873 (= res!786237 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26054))))

(declare-fun b!1182874 () Bool)

(declare-fun res!786235 () Bool)

(assert (=> b!1182874 (=> (not res!786235) (not e!672561))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1182874 (= res!786235 (= (select (arr!36839 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46541 () Bool)

(declare-fun tp!88551 () Bool)

(declare-fun e!672555 () Bool)

(assert (=> mapNonEmpty!46541 (= mapRes!46541 (and tp!88551 e!672555))))

(declare-datatypes ((V!44873 0))(
  ( (V!44874 (val!14961 Int)) )
))
(declare-datatypes ((ValueCell!14195 0))(
  ( (ValueCellFull!14195 (v!17600 V!44873)) (EmptyCell!14195) )
))
(declare-fun mapRest!46541 () (Array (_ BitVec 32) ValueCell!14195))

(declare-datatypes ((array!76388 0))(
  ( (array!76389 (arr!36840 (Array (_ BitVec 32) ValueCell!14195)) (size!37377 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76388)

(declare-fun mapKey!46541 () (_ BitVec 32))

(declare-fun mapValue!46541 () ValueCell!14195)

(assert (=> mapNonEmpty!46541 (= (arr!36840 _values!996) (store mapRest!46541 mapKey!46541 mapValue!46541))))

(declare-fun b!1182875 () Bool)

(declare-fun e!672562 () Bool)

(declare-fun e!672558 () Bool)

(assert (=> b!1182875 (= e!672562 e!672558)))

(declare-fun res!786236 () Bool)

(assert (=> b!1182875 (=> res!786236 e!672558)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1182875 (= res!786236 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44873)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!535654 () array!76388)

(declare-datatypes ((tuple2!19294 0))(
  ( (tuple2!19295 (_1!9657 (_ BitVec 64)) (_2!9657 V!44873)) )
))
(declare-datatypes ((List!26058 0))(
  ( (Nil!26055) (Cons!26054 (h!27263 tuple2!19294) (t!38336 List!26058)) )
))
(declare-datatypes ((ListLongMap!17275 0))(
  ( (ListLongMap!17276 (toList!8653 List!26058)) )
))
(declare-fun lt!535659 () ListLongMap!17275)

(declare-fun minValue!944 () V!44873)

(declare-fun getCurrentListMapNoExtraKeys!5075 (array!76386 array!76388 (_ BitVec 32) (_ BitVec 32) V!44873 V!44873 (_ BitVec 32) Int) ListLongMap!17275)

(assert (=> b!1182875 (= lt!535659 (getCurrentListMapNoExtraKeys!5075 lt!535658 lt!535654 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!535667 () V!44873)

(assert (=> b!1182875 (= lt!535654 (array!76389 (store (arr!36840 _values!996) i!673 (ValueCellFull!14195 lt!535667)) (size!37377 _values!996)))))

(declare-fun dynLambda!3042 (Int (_ BitVec 64)) V!44873)

(assert (=> b!1182875 (= lt!535667 (dynLambda!3042 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!535656 () ListLongMap!17275)

(assert (=> b!1182875 (= lt!535656 (getCurrentListMapNoExtraKeys!5075 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182876 () Bool)

(declare-datatypes ((Unit!39068 0))(
  ( (Unit!39069) )
))
(declare-fun e!672563 () Unit!39068)

(declare-fun Unit!39070 () Unit!39068)

(assert (=> b!1182876 (= e!672563 Unit!39070)))

(declare-fun b!1182877 () Bool)

(declare-fun e!672559 () Bool)

(declare-fun tp_is_empty!29809 () Bool)

(assert (=> b!1182877 (= e!672559 tp_is_empty!29809)))

(declare-fun b!1182878 () Bool)

(declare-fun res!786232 () Bool)

(assert (=> b!1182878 (=> (not res!786232) (not e!672561))))

(assert (=> b!1182878 (= res!786232 (and (= (size!37377 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37376 _keys!1208) (size!37377 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1182879 () Bool)

(declare-fun e!672560 () Bool)

(assert (=> b!1182879 (= e!672560 (and e!672559 mapRes!46541))))

(declare-fun condMapEmpty!46541 () Bool)

(declare-fun mapDefault!46541 () ValueCell!14195)

