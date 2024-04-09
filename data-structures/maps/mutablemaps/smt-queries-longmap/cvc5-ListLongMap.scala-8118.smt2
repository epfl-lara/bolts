; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99610 () Bool)

(assert start!99610)

(declare-fun b_free!25153 () Bool)

(declare-fun b_next!25153 () Bool)

(assert (=> start!99610 (= b_free!25153 (not b_next!25153))))

(declare-fun tp!88174 () Bool)

(declare-fun b_and!41187 () Bool)

(assert (=> start!99610 (= tp!88174 b_and!41187)))

(declare-fun b!1178751 () Bool)

(declare-fun res!783190 () Bool)

(declare-fun e!670169 () Bool)

(assert (=> b!1178751 (=> (not res!783190) (not e!670169))))

(declare-datatypes ((array!76138 0))(
  ( (array!76139 (arr!36715 (Array (_ BitVec 32) (_ BitVec 64))) (size!37252 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76138)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44705 0))(
  ( (V!44706 (val!14898 Int)) )
))
(declare-datatypes ((ValueCell!14132 0))(
  ( (ValueCellFull!14132 (v!17537 V!44705)) (EmptyCell!14132) )
))
(declare-datatypes ((array!76140 0))(
  ( (array!76141 (arr!36716 (Array (_ BitVec 32) ValueCell!14132)) (size!37253 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76140)

(assert (=> b!1178751 (= res!783190 (and (= (size!37253 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37252 _keys!1208) (size!37253 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178752 () Bool)

(declare-fun e!670167 () Bool)

(declare-fun e!670165 () Bool)

(assert (=> b!1178752 (= e!670167 e!670165)))

(declare-fun res!783183 () Bool)

(assert (=> b!1178752 (=> res!783183 e!670165)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178752 (= res!783183 (not (validKeyInArray!0 (select (arr!36715 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!19190 0))(
  ( (tuple2!19191 (_1!9605 (_ BitVec 64)) (_2!9605 V!44705)) )
))
(declare-datatypes ((List!25954 0))(
  ( (Nil!25951) (Cons!25950 (h!27159 tuple2!19190) (t!38106 List!25954)) )
))
(declare-datatypes ((ListLongMap!17171 0))(
  ( (ListLongMap!17172 (toList!8601 List!25954)) )
))
(declare-fun lt!532569 () ListLongMap!17171)

(declare-fun lt!532564 () ListLongMap!17171)

(assert (=> b!1178752 (= lt!532569 lt!532564)))

(declare-fun lt!532559 () ListLongMap!17171)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1598 (ListLongMap!17171 (_ BitVec 64)) ListLongMap!17171)

(assert (=> b!1178752 (= lt!532564 (-!1598 lt!532559 k!934))))

(declare-fun zeroValue!944 () V!44705)

(declare-fun lt!532562 () array!76140)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!532561 () array!76138)

(declare-fun minValue!944 () V!44705)

(declare-fun getCurrentListMapNoExtraKeys!5030 (array!76138 array!76140 (_ BitVec 32) (_ BitVec 32) V!44705 V!44705 (_ BitVec 32) Int) ListLongMap!17171)

(assert (=> b!1178752 (= lt!532569 (getCurrentListMapNoExtraKeys!5030 lt!532561 lt!532562 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1178752 (= lt!532559 (getCurrentListMapNoExtraKeys!5030 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38878 0))(
  ( (Unit!38879) )
))
(declare-fun lt!532566 () Unit!38878)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!822 (array!76138 array!76140 (_ BitVec 32) (_ BitVec 32) V!44705 V!44705 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38878)

(assert (=> b!1178752 (= lt!532566 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!822 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1178753 () Bool)

(declare-fun e!670172 () Bool)

(declare-fun e!670168 () Bool)

(assert (=> b!1178753 (= e!670172 (not e!670168))))

(declare-fun res!783184 () Bool)

(assert (=> b!1178753 (=> res!783184 e!670168)))

(assert (=> b!1178753 (= res!783184 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178753 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!532558 () Unit!38878)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76138 (_ BitVec 64) (_ BitVec 32)) Unit!38878)

(assert (=> b!1178753 (= lt!532558 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178754 () Bool)

(declare-fun res!783181 () Bool)

(assert (=> b!1178754 (=> (not res!783181) (not e!670169))))

(assert (=> b!1178754 (= res!783181 (= (select (arr!36715 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!46352 () Bool)

(declare-fun mapRes!46352 () Bool)

(declare-fun tp!88173 () Bool)

(declare-fun e!670173 () Bool)

(assert (=> mapNonEmpty!46352 (= mapRes!46352 (and tp!88173 e!670173))))

(declare-fun mapValue!46352 () ValueCell!14132)

(declare-fun mapKey!46352 () (_ BitVec 32))

(declare-fun mapRest!46352 () (Array (_ BitVec 32) ValueCell!14132))

(assert (=> mapNonEmpty!46352 (= (arr!36716 _values!996) (store mapRest!46352 mapKey!46352 mapValue!46352))))

(declare-fun b!1178755 () Bool)

(declare-fun res!783186 () Bool)

(assert (=> b!1178755 (=> (not res!783186) (not e!670169))))

(assert (=> b!1178755 (= res!783186 (validKeyInArray!0 k!934))))

(declare-fun lt!532555 () ListLongMap!17171)

(declare-fun lt!532567 () tuple2!19190)

(declare-fun e!670166 () Bool)

(declare-fun b!1178756 () Bool)

(declare-fun +!3822 (ListLongMap!17171 tuple2!19190) ListLongMap!17171)

(assert (=> b!1178756 (= e!670166 (= lt!532555 (+!3822 lt!532559 lt!532567)))))

(declare-fun e!670174 () Bool)

(declare-fun b!1178757 () Bool)

(assert (=> b!1178757 (= e!670174 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178758 () Bool)

(declare-fun e!670164 () Unit!38878)

(declare-fun Unit!38880 () Unit!38878)

(assert (=> b!1178758 (= e!670164 Unit!38880)))

(declare-fun b!1178759 () Bool)

(declare-fun tp_is_empty!29683 () Bool)

(assert (=> b!1178759 (= e!670173 tp_is_empty!29683)))

(declare-fun res!783189 () Bool)

(assert (=> start!99610 (=> (not res!783189) (not e!670169))))

(assert (=> start!99610 (= res!783189 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37252 _keys!1208))))))

(assert (=> start!99610 e!670169))

(assert (=> start!99610 tp_is_empty!29683))

(declare-fun array_inv!27924 (array!76138) Bool)

(assert (=> start!99610 (array_inv!27924 _keys!1208)))

(assert (=> start!99610 true))

(assert (=> start!99610 tp!88174))

(declare-fun e!670171 () Bool)

(declare-fun array_inv!27925 (array!76140) Bool)

(assert (=> start!99610 (and (array_inv!27925 _values!996) e!670171)))

(declare-fun b!1178760 () Bool)

(declare-fun res!783177 () Bool)

(assert (=> b!1178760 (=> (not res!783177) (not e!670169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1178760 (= res!783177 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!46352 () Bool)

(assert (=> mapIsEmpty!46352 mapRes!46352))

(declare-fun b!1178761 () Bool)

(declare-fun e!670170 () Bool)

(assert (=> b!1178761 (= e!670171 (and e!670170 mapRes!46352))))

(declare-fun condMapEmpty!46352 () Bool)

(declare-fun mapDefault!46352 () ValueCell!14132)

