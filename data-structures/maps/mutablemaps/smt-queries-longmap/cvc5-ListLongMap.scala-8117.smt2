; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99604 () Bool)

(assert start!99604)

(declare-fun b_free!25147 () Bool)

(declare-fun b_next!25147 () Bool)

(assert (=> start!99604 (= b_free!25147 (not b_next!25147))))

(declare-fun tp!88156 () Bool)

(declare-fun b_and!41175 () Bool)

(assert (=> start!99604 (= tp!88156 b_and!41175)))

(declare-fun b!1178557 () Bool)

(declare-fun e!670049 () Bool)

(declare-fun tp_is_empty!29677 () Bool)

(assert (=> b!1178557 (= e!670049 tp_is_empty!29677)))

(declare-fun mapIsEmpty!46343 () Bool)

(declare-fun mapRes!46343 () Bool)

(assert (=> mapIsEmpty!46343 mapRes!46343))

(declare-fun b!1178558 () Bool)

(declare-fun e!670055 () Bool)

(declare-fun e!670056 () Bool)

(assert (=> b!1178558 (= e!670055 e!670056)))

(declare-fun res!783033 () Bool)

(assert (=> b!1178558 (=> res!783033 e!670056)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1178558 (= res!783033 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44697 0))(
  ( (V!44698 (val!14895 Int)) )
))
(declare-fun zeroValue!944 () V!44697)

(declare-datatypes ((array!76126 0))(
  ( (array!76127 (arr!36709 (Array (_ BitVec 32) (_ BitVec 64))) (size!37246 (_ BitVec 32))) )
))
(declare-fun lt!532428 () array!76126)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14129 0))(
  ( (ValueCellFull!14129 (v!17534 V!44697)) (EmptyCell!14129) )
))
(declare-datatypes ((array!76128 0))(
  ( (array!76129 (arr!36710 (Array (_ BitVec 32) ValueCell!14129)) (size!37247 (_ BitVec 32))) )
))
(declare-fun lt!532421 () array!76128)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19184 0))(
  ( (tuple2!19185 (_1!9602 (_ BitVec 64)) (_2!9602 V!44697)) )
))
(declare-datatypes ((List!25948 0))(
  ( (Nil!25945) (Cons!25944 (h!27153 tuple2!19184) (t!38094 List!25948)) )
))
(declare-datatypes ((ListLongMap!17165 0))(
  ( (ListLongMap!17166 (toList!8598 List!25948)) )
))
(declare-fun lt!532423 () ListLongMap!17165)

(declare-fun minValue!944 () V!44697)

(declare-fun getCurrentListMapNoExtraKeys!5027 (array!76126 array!76128 (_ BitVec 32) (_ BitVec 32) V!44697 V!44697 (_ BitVec 32) Int) ListLongMap!17165)

(assert (=> b!1178558 (= lt!532423 (getCurrentListMapNoExtraKeys!5027 lt!532428 lt!532421 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76128)

(declare-fun lt!532431 () V!44697)

(assert (=> b!1178558 (= lt!532421 (array!76129 (store (arr!36710 _values!996) i!673 (ValueCellFull!14129 lt!532431)) (size!37247 _values!996)))))

(declare-fun dynLambda!3001 (Int (_ BitVec 64)) V!44697)

(assert (=> b!1178558 (= lt!532431 (dynLambda!3001 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76126)

(declare-fun lt!532427 () ListLongMap!17165)

(assert (=> b!1178558 (= lt!532427 (getCurrentListMapNoExtraKeys!5027 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1178559 () Bool)

(declare-fun e!670045 () Bool)

(assert (=> b!1178559 (= e!670045 tp_is_empty!29677)))

(declare-fun b!1178560 () Bool)

(declare-fun res!783034 () Bool)

(declare-fun e!670054 () Bool)

(assert (=> b!1178560 (=> (not res!783034) (not e!670054))))

(assert (=> b!1178560 (= res!783034 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37246 _keys!1208))))))

(declare-fun b!1178561 () Bool)

(declare-fun res!783042 () Bool)

(declare-fun e!670057 () Bool)

(assert (=> b!1178561 (=> (not res!783042) (not e!670057))))

(declare-datatypes ((List!25949 0))(
  ( (Nil!25946) (Cons!25945 (h!27154 (_ BitVec 64)) (t!38095 List!25949)) )
))
(declare-fun arrayNoDuplicates!0 (array!76126 (_ BitVec 32) List!25949) Bool)

(assert (=> b!1178561 (= res!783042 (arrayNoDuplicates!0 lt!532428 #b00000000000000000000000000000000 Nil!25946))))

(declare-fun b!1178562 () Bool)

(declare-fun res!783045 () Bool)

(assert (=> b!1178562 (=> (not res!783045) (not e!670054))))

(assert (=> b!1178562 (= res!783045 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25946))))

(declare-fun res!783040 () Bool)

(assert (=> start!99604 (=> (not res!783040) (not e!670054))))

(assert (=> start!99604 (= res!783040 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37246 _keys!1208))))))

(assert (=> start!99604 e!670054))

(assert (=> start!99604 tp_is_empty!29677))

(declare-fun array_inv!27918 (array!76126) Bool)

(assert (=> start!99604 (array_inv!27918 _keys!1208)))

(assert (=> start!99604 true))

(assert (=> start!99604 tp!88156))

(declare-fun e!670050 () Bool)

(declare-fun array_inv!27919 (array!76128) Bool)

(assert (=> start!99604 (and (array_inv!27919 _values!996) e!670050)))

(declare-fun b!1178556 () Bool)

(declare-fun res!783044 () Bool)

(assert (=> b!1178556 (=> (not res!783044) (not e!670054))))

(assert (=> b!1178556 (= res!783044 (and (= (size!37247 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37246 _keys!1208) (size!37247 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1178563 () Bool)

(declare-fun lt!532424 () tuple2!19184)

(declare-fun lt!532422 () ListLongMap!17165)

(declare-fun e!670052 () Bool)

(declare-fun +!3819 (ListLongMap!17165 tuple2!19184) ListLongMap!17165)

(assert (=> b!1178563 (= e!670052 (= lt!532427 (+!3819 lt!532422 lt!532424)))))

(declare-fun b!1178564 () Bool)

(assert (=> b!1178564 (= e!670057 (not e!670055))))

(declare-fun res!783037 () Bool)

(assert (=> b!1178564 (=> res!783037 e!670055)))

(assert (=> b!1178564 (= res!783037 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178564 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38870 0))(
  ( (Unit!38871) )
))
(declare-fun lt!532420 () Unit!38870)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76126 (_ BitVec 64) (_ BitVec 32)) Unit!38870)

(assert (=> b!1178564 (= lt!532420 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178565 () Bool)

(declare-fun res!783041 () Bool)

(assert (=> b!1178565 (=> (not res!783041) (not e!670054))))

(assert (=> b!1178565 (= res!783041 (= (select (arr!36709 _keys!1208) i!673) k!934))))

(declare-fun b!1178566 () Bool)

(declare-fun e!670046 () Bool)

(declare-fun e!670053 () Bool)

(assert (=> b!1178566 (= e!670046 e!670053)))

(declare-fun res!783032 () Bool)

(assert (=> b!1178566 (=> res!783032 e!670053)))

(assert (=> b!1178566 (= res!783032 (not (= (select (arr!36709 _keys!1208) from!1455) k!934)))))

(declare-fun b!1178567 () Bool)

(declare-fun res!783038 () Bool)

(assert (=> b!1178567 (=> (not res!783038) (not e!670054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1178567 (= res!783038 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!46343 () Bool)

(declare-fun tp!88155 () Bool)

(assert (=> mapNonEmpty!46343 (= mapRes!46343 (and tp!88155 e!670049))))

(declare-fun mapValue!46343 () ValueCell!14129)

(declare-fun mapRest!46343 () (Array (_ BitVec 32) ValueCell!14129))

(declare-fun mapKey!46343 () (_ BitVec 32))

(assert (=> mapNonEmpty!46343 (= (arr!36710 _values!996) (store mapRest!46343 mapKey!46343 mapValue!46343))))

(declare-fun b!1178568 () Bool)

(assert (=> b!1178568 (= e!670053 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178569 () Bool)

(declare-fun res!783039 () Bool)

(assert (=> b!1178569 (=> (not res!783039) (not e!670054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178569 (= res!783039 (validKeyInArray!0 k!934))))

(declare-fun b!1178570 () Bool)

(assert (=> b!1178570 (= e!670054 e!670057)))

(declare-fun res!783031 () Bool)

(assert (=> b!1178570 (=> (not res!783031) (not e!670057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76126 (_ BitVec 32)) Bool)

(assert (=> b!1178570 (= res!783031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!532428 mask!1564))))

(assert (=> b!1178570 (= lt!532428 (array!76127 (store (arr!36709 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37246 _keys!1208)))))

(declare-fun b!1178571 () Bool)

(assert (=> b!1178571 (= e!670050 (and e!670045 mapRes!46343))))

(declare-fun condMapEmpty!46343 () Bool)

(declare-fun mapDefault!46343 () ValueCell!14129)

