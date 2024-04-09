; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100102 () Bool)

(assert start!100102)

(declare-fun b_free!25645 () Bool)

(declare-fun b_next!25645 () Bool)

(assert (=> start!100102 (= b_free!25645 (not b_next!25645))))

(declare-fun tp!89649 () Bool)

(declare-fun b_and!42171 () Bool)

(assert (=> start!100102 (= tp!89649 b_and!42171)))

(declare-fun b!1192767 () Bool)

(declare-fun res!793590 () Bool)

(declare-fun e!677986 () Bool)

(assert (=> b!1192767 (=> (not res!793590) (not e!677986))))

(declare-datatypes ((array!77114 0))(
  ( (array!77115 (arr!37203 (Array (_ BitVec 32) (_ BitVec 64))) (size!37740 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77114)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77114 (_ BitVec 32)) Bool)

(assert (=> b!1192767 (= res!793590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192768 () Bool)

(declare-fun e!677988 () Bool)

(declare-fun tp_is_empty!30175 () Bool)

(assert (=> b!1192768 (= e!677988 tp_is_empty!30175)))

(declare-fun b!1192769 () Bool)

(declare-fun e!677989 () Bool)

(assert (=> b!1192769 (= e!677989 true)))

(declare-datatypes ((V!45361 0))(
  ( (V!45362 (val!15144 Int)) )
))
(declare-fun zeroValue!944 () V!45361)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14378 0))(
  ( (ValueCellFull!14378 (v!17783 V!45361)) (EmptyCell!14378) )
))
(declare-datatypes ((array!77116 0))(
  ( (array!77117 (arr!37204 (Array (_ BitVec 32) ValueCell!14378)) (size!37741 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77116)

(declare-fun lt!542311 () array!77114)

(declare-fun minValue!944 () V!45361)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!542316 () array!77116)

(declare-datatypes ((tuple2!19612 0))(
  ( (tuple2!19613 (_1!9816 (_ BitVec 64)) (_2!9816 V!45361)) )
))
(declare-datatypes ((List!26372 0))(
  ( (Nil!26369) (Cons!26368 (h!27577 tuple2!19612) (t!39016 List!26372)) )
))
(declare-datatypes ((ListLongMap!17593 0))(
  ( (ListLongMap!17594 (toList!8812 List!26372)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5226 (array!77114 array!77116 (_ BitVec 32) (_ BitVec 32) V!45361 V!45361 (_ BitVec 32) Int) ListLongMap!17593)

(declare-fun -!1787 (ListLongMap!17593 (_ BitVec 64)) ListLongMap!17593)

(assert (=> b!1192769 (= (getCurrentListMapNoExtraKeys!5226 lt!542311 lt!542316 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1787 (getCurrentListMapNoExtraKeys!5226 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39510 0))(
  ( (Unit!39511) )
))
(declare-fun lt!542313 () Unit!39510)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!993 (array!77114 array!77116 (_ BitVec 32) (_ BitVec 32) V!45361 V!45361 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39510)

(assert (=> b!1192769 (= lt!542313 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!993 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192770 () Bool)

(declare-fun e!677983 () Bool)

(declare-fun e!677987 () Bool)

(declare-fun mapRes!47090 () Bool)

(assert (=> b!1192770 (= e!677983 (and e!677987 mapRes!47090))))

(declare-fun condMapEmpty!47090 () Bool)

(declare-fun mapDefault!47090 () ValueCell!14378)

