; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100022 () Bool)

(assert start!100022)

(declare-fun b_free!25565 () Bool)

(declare-fun b_next!25565 () Bool)

(assert (=> start!100022 (= b_free!25565 (not b_next!25565))))

(declare-fun tp!89409 () Bool)

(declare-fun b_and!42011 () Bool)

(assert (=> start!100022 (= tp!89409 b_and!42011)))

(declare-fun b!1190887 () Bool)

(declare-fun e!677025 () Bool)

(declare-fun e!677022 () Bool)

(assert (=> b!1190887 (= e!677025 e!677022)))

(declare-fun res!792151 () Bool)

(assert (=> b!1190887 (=> (not res!792151) (not e!677022))))

(declare-datatypes ((array!76956 0))(
  ( (array!76957 (arr!37124 (Array (_ BitVec 32) (_ BitVec 64))) (size!37661 (_ BitVec 32))) )
))
(declare-fun lt!541595 () array!76956)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76956 (_ BitVec 32)) Bool)

(assert (=> b!1190887 (= res!792151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541595 mask!1564))))

(declare-fun _keys!1208 () array!76956)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1190887 (= lt!541595 (array!76957 (store (arr!37124 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37661 _keys!1208)))))

(declare-fun mapIsEmpty!46970 () Bool)

(declare-fun mapRes!46970 () Bool)

(assert (=> mapIsEmpty!46970 mapRes!46970))

(declare-fun b!1190888 () Bool)

(declare-fun e!677023 () Bool)

(assert (=> b!1190888 (= e!677022 (not e!677023))))

(declare-fun res!792149 () Bool)

(assert (=> b!1190888 (=> res!792149 e!677023)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1190888 (= res!792149 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!76956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1190888 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39452 0))(
  ( (Unit!39453) )
))
(declare-fun lt!541592 () Unit!39452)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76956 (_ BitVec 64) (_ BitVec 32)) Unit!39452)

(assert (=> b!1190888 (= lt!541592 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1190889 () Bool)

(declare-fun e!677024 () Bool)

(assert (=> b!1190889 (= e!677023 e!677024)))

(declare-fun res!792158 () Bool)

(assert (=> b!1190889 (=> res!792158 e!677024)))

(assert (=> b!1190889 (= res!792158 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45253 0))(
  ( (V!45254 (val!15104 Int)) )
))
(declare-fun zeroValue!944 () V!45253)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14338 0))(
  ( (ValueCellFull!14338 (v!17743 V!45253)) (EmptyCell!14338) )
))
(declare-datatypes ((array!76958 0))(
  ( (array!76959 (arr!37125 (Array (_ BitVec 32) ValueCell!14338)) (size!37662 (_ BitVec 32))) )
))
(declare-fun lt!541593 () array!76958)

(declare-fun minValue!944 () V!45253)

(declare-datatypes ((tuple2!19548 0))(
  ( (tuple2!19549 (_1!9784 (_ BitVec 64)) (_2!9784 V!45253)) )
))
(declare-datatypes ((List!26309 0))(
  ( (Nil!26306) (Cons!26305 (h!27514 tuple2!19548) (t!38873 List!26309)) )
))
(declare-datatypes ((ListLongMap!17529 0))(
  ( (ListLongMap!17530 (toList!8780 List!26309)) )
))
(declare-fun lt!541596 () ListLongMap!17529)

(declare-fun getCurrentListMapNoExtraKeys!5194 (array!76956 array!76958 (_ BitVec 32) (_ BitVec 32) V!45253 V!45253 (_ BitVec 32) Int) ListLongMap!17529)

(assert (=> b!1190889 (= lt!541596 (getCurrentListMapNoExtraKeys!5194 lt!541595 lt!541593 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76958)

(declare-fun dynLambda!3139 (Int (_ BitVec 64)) V!45253)

(assert (=> b!1190889 (= lt!541593 (array!76959 (store (arr!37125 _values!996) i!673 (ValueCellFull!14338 (dynLambda!3139 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37662 _values!996)))))

(declare-fun lt!541594 () ListLongMap!17529)

(assert (=> b!1190889 (= lt!541594 (getCurrentListMapNoExtraKeys!5194 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1190890 () Bool)

(declare-fun res!792160 () Bool)

(assert (=> b!1190890 (=> (not res!792160) (not e!677025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1190890 (= res!792160 (validKeyInArray!0 k!934))))

(declare-fun res!792150 () Bool)

(assert (=> start!100022 (=> (not res!792150) (not e!677025))))

(assert (=> start!100022 (= res!792150 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37661 _keys!1208))))))

(assert (=> start!100022 e!677025))

(declare-fun tp_is_empty!30095 () Bool)

(assert (=> start!100022 tp_is_empty!30095))

(declare-fun array_inv!28210 (array!76956) Bool)

(assert (=> start!100022 (array_inv!28210 _keys!1208)))

(assert (=> start!100022 true))

(assert (=> start!100022 tp!89409))

(declare-fun e!677026 () Bool)

(declare-fun array_inv!28211 (array!76958) Bool)

(assert (=> start!100022 (and (array_inv!28211 _values!996) e!677026)))

(declare-fun b!1190891 () Bool)

(declare-fun res!792155 () Bool)

(assert (=> b!1190891 (=> (not res!792155) (not e!677022))))

(declare-datatypes ((List!26310 0))(
  ( (Nil!26307) (Cons!26306 (h!27515 (_ BitVec 64)) (t!38874 List!26310)) )
))
(declare-fun arrayNoDuplicates!0 (array!76956 (_ BitVec 32) List!26310) Bool)

(assert (=> b!1190891 (= res!792155 (arrayNoDuplicates!0 lt!541595 #b00000000000000000000000000000000 Nil!26307))))

(declare-fun b!1190892 () Bool)

(declare-fun res!792157 () Bool)

(assert (=> b!1190892 (=> (not res!792157) (not e!677025))))

(assert (=> b!1190892 (= res!792157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1190893 () Bool)

(declare-fun e!677028 () Bool)

(assert (=> b!1190893 (= e!677028 tp_is_empty!30095)))

(declare-fun b!1190894 () Bool)

(declare-fun e!677029 () Bool)

(assert (=> b!1190894 (= e!677026 (and e!677029 mapRes!46970))))

(declare-fun condMapEmpty!46970 () Bool)

(declare-fun mapDefault!46970 () ValueCell!14338)

