; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100470 () Bool)

(assert start!100470)

(declare-fun b_free!25757 () Bool)

(declare-fun b_next!25757 () Bool)

(assert (=> start!100470 (= b_free!25757 (not b_next!25757))))

(declare-fun tp!90262 () Bool)

(declare-fun b_and!42415 () Bool)

(assert (=> start!100470 (= tp!90262 b_and!42415)))

(declare-fun b!1198992 () Bool)

(declare-fun res!798121 () Bool)

(declare-fun e!681065 () Bool)

(assert (=> b!1198992 (=> (not res!798121) (not e!681065))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198992 (= res!798121 (validKeyInArray!0 k!934))))

(declare-fun b!1198993 () Bool)

(declare-fun res!798116 () Bool)

(assert (=> b!1198993 (=> (not res!798116) (not e!681065))))

(declare-datatypes ((array!77680 0))(
  ( (array!77681 (arr!37481 (Array (_ BitVec 32) (_ BitVec 64))) (size!38018 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77680)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198993 (= res!798116 (= (select (arr!37481 _keys!1208) i!673) k!934))))

(declare-fun b!1198994 () Bool)

(declare-fun e!681066 () Bool)

(assert (=> b!1198994 (= e!681066 true)))

(declare-datatypes ((V!45741 0))(
  ( (V!45742 (val!15287 Int)) )
))
(declare-fun zeroValue!944 () V!45741)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19708 0))(
  ( (tuple2!19709 (_1!9864 (_ BitVec 64)) (_2!9864 V!45741)) )
))
(declare-datatypes ((List!26537 0))(
  ( (Nil!26534) (Cons!26533 (h!27742 tuple2!19708) (t!39281 List!26537)) )
))
(declare-datatypes ((ListLongMap!17689 0))(
  ( (ListLongMap!17690 (toList!8860 List!26537)) )
))
(declare-fun lt!543613 () ListLongMap!17689)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14521 0))(
  ( (ValueCellFull!14521 (v!17926 V!45741)) (EmptyCell!14521) )
))
(declare-datatypes ((array!77682 0))(
  ( (array!77683 (arr!37482 (Array (_ BitVec 32) ValueCell!14521)) (size!38019 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77682)

(declare-fun minValue!944 () V!45741)

(declare-fun lt!543610 () array!77680)

(declare-fun getCurrentListMapNoExtraKeys!5273 (array!77680 array!77682 (_ BitVec 32) (_ BitVec 32) V!45741 V!45741 (_ BitVec 32) Int) ListLongMap!17689)

(declare-fun dynLambda!3204 (Int (_ BitVec 64)) V!45741)

(assert (=> b!1198994 (= lt!543613 (getCurrentListMapNoExtraKeys!5273 lt!543610 (array!77683 (store (arr!37482 _values!996) i!673 (ValueCellFull!14521 (dynLambda!3204 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38019 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543611 () ListLongMap!17689)

(assert (=> b!1198994 (= lt!543611 (getCurrentListMapNoExtraKeys!5273 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!47534 () Bool)

(declare-fun mapRes!47534 () Bool)

(declare-fun tp!90261 () Bool)

(declare-fun e!681068 () Bool)

(assert (=> mapNonEmpty!47534 (= mapRes!47534 (and tp!90261 e!681068))))

(declare-fun mapValue!47534 () ValueCell!14521)

(declare-fun mapRest!47534 () (Array (_ BitVec 32) ValueCell!14521))

(declare-fun mapKey!47534 () (_ BitVec 32))

(assert (=> mapNonEmpty!47534 (= (arr!37482 _values!996) (store mapRest!47534 mapKey!47534 mapValue!47534))))

(declare-fun b!1198995 () Bool)

(declare-fun e!681070 () Bool)

(assert (=> b!1198995 (= e!681070 (not e!681066))))

(declare-fun res!798119 () Bool)

(assert (=> b!1198995 (=> res!798119 e!681066)))

(assert (=> b!1198995 (= res!798119 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198995 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39690 0))(
  ( (Unit!39691) )
))
(declare-fun lt!543612 () Unit!39690)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77680 (_ BitVec 64) (_ BitVec 32)) Unit!39690)

(assert (=> b!1198995 (= lt!543612 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1198996 () Bool)

(declare-fun res!798113 () Bool)

(assert (=> b!1198996 (=> (not res!798113) (not e!681065))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77680 (_ BitVec 32)) Bool)

(assert (=> b!1198996 (= res!798113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47534 () Bool)

(assert (=> mapIsEmpty!47534 mapRes!47534))

(declare-fun b!1198997 () Bool)

(declare-fun res!798120 () Bool)

(assert (=> b!1198997 (=> (not res!798120) (not e!681065))))

(assert (=> b!1198997 (= res!798120 (and (= (size!38019 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38018 _keys!1208) (size!38019 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198998 () Bool)

(declare-fun res!798123 () Bool)

(assert (=> b!1198998 (=> (not res!798123) (not e!681065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198998 (= res!798123 (validMask!0 mask!1564))))

(declare-fun b!1198999 () Bool)

(declare-fun res!798115 () Bool)

(assert (=> b!1198999 (=> (not res!798115) (not e!681070))))

(declare-datatypes ((List!26538 0))(
  ( (Nil!26535) (Cons!26534 (h!27743 (_ BitVec 64)) (t!39282 List!26538)) )
))
(declare-fun arrayNoDuplicates!0 (array!77680 (_ BitVec 32) List!26538) Bool)

(assert (=> b!1198999 (= res!798115 (arrayNoDuplicates!0 lt!543610 #b00000000000000000000000000000000 Nil!26535))))

(declare-fun b!1199000 () Bool)

(declare-fun e!681069 () Bool)

(declare-fun tp_is_empty!30461 () Bool)

(assert (=> b!1199000 (= e!681069 tp_is_empty!30461)))

(declare-fun b!1199001 () Bool)

(declare-fun res!798114 () Bool)

(assert (=> b!1199001 (=> (not res!798114) (not e!681065))))

(assert (=> b!1199001 (= res!798114 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26535))))

(declare-fun b!1199002 () Bool)

(assert (=> b!1199002 (= e!681068 tp_is_empty!30461)))

(declare-fun res!798118 () Bool)

(assert (=> start!100470 (=> (not res!798118) (not e!681065))))

(assert (=> start!100470 (= res!798118 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38018 _keys!1208))))))

(assert (=> start!100470 e!681065))

(assert (=> start!100470 tp_is_empty!30461))

(declare-fun array_inv!28470 (array!77680) Bool)

(assert (=> start!100470 (array_inv!28470 _keys!1208)))

(assert (=> start!100470 true))

(assert (=> start!100470 tp!90262))

(declare-fun e!681067 () Bool)

(declare-fun array_inv!28471 (array!77682) Bool)

(assert (=> start!100470 (and (array_inv!28471 _values!996) e!681067)))

(declare-fun b!1199003 () Bool)

(declare-fun res!798117 () Bool)

(assert (=> b!1199003 (=> (not res!798117) (not e!681065))))

(assert (=> b!1199003 (= res!798117 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38018 _keys!1208))))))

(declare-fun b!1199004 () Bool)

(assert (=> b!1199004 (= e!681067 (and e!681069 mapRes!47534))))

(declare-fun condMapEmpty!47534 () Bool)

(declare-fun mapDefault!47534 () ValueCell!14521)

