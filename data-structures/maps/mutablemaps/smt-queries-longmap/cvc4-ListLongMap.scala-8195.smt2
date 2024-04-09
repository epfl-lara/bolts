; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100076 () Bool)

(assert start!100076)

(declare-fun b_free!25619 () Bool)

(declare-fun b_next!25619 () Bool)

(assert (=> start!100076 (= b_free!25619 (not b_next!25619))))

(declare-fun tp!89571 () Bool)

(declare-fun b_and!42119 () Bool)

(assert (=> start!100076 (= tp!89571 b_and!42119)))

(declare-fun mapIsEmpty!47051 () Bool)

(declare-fun mapRes!47051 () Bool)

(assert (=> mapIsEmpty!47051 mapRes!47051))

(declare-fun mapNonEmpty!47051 () Bool)

(declare-fun tp!89572 () Bool)

(declare-fun e!677674 () Bool)

(assert (=> mapNonEmpty!47051 (= mapRes!47051 (and tp!89572 e!677674))))

(declare-datatypes ((V!45325 0))(
  ( (V!45326 (val!15131 Int)) )
))
(declare-datatypes ((ValueCell!14365 0))(
  ( (ValueCellFull!14365 (v!17770 V!45325)) (EmptyCell!14365) )
))
(declare-fun mapValue!47051 () ValueCell!14365)

(declare-fun mapRest!47051 () (Array (_ BitVec 32) ValueCell!14365))

(declare-datatypes ((array!77062 0))(
  ( (array!77063 (arr!37177 (Array (_ BitVec 32) ValueCell!14365)) (size!37714 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77062)

(declare-fun mapKey!47051 () (_ BitVec 32))

(assert (=> mapNonEmpty!47051 (= (arr!37177 _values!996) (store mapRest!47051 mapKey!47051 mapValue!47051))))

(declare-fun b!1192156 () Bool)

(declare-fun res!793128 () Bool)

(declare-fun e!677673 () Bool)

(assert (=> b!1192156 (=> (not res!793128) (not e!677673))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77064 0))(
  ( (array!77065 (arr!37178 (Array (_ BitVec 32) (_ BitVec 64))) (size!37715 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77064)

(assert (=> b!1192156 (= res!793128 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37715 _keys!1208))))))

(declare-fun b!1192157 () Bool)

(declare-fun res!793127 () Bool)

(assert (=> b!1192157 (=> (not res!793127) (not e!677673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192157 (= res!793127 (validKeyInArray!0 k!934))))

(declare-fun b!1192158 () Bool)

(declare-fun res!793132 () Bool)

(assert (=> b!1192158 (=> (not res!793132) (not e!677673))))

(declare-datatypes ((List!26352 0))(
  ( (Nil!26349) (Cons!26348 (h!27557 (_ BitVec 64)) (t!38970 List!26352)) )
))
(declare-fun arrayNoDuplicates!0 (array!77064 (_ BitVec 32) List!26352) Bool)

(assert (=> b!1192158 (= res!793132 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26349))))

(declare-fun b!1192159 () Bool)

(declare-fun e!677670 () Bool)

(assert (=> b!1192159 (= e!677670 true)))

(declare-fun zeroValue!944 () V!45325)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!542082 () array!77062)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!542077 () array!77064)

(declare-fun minValue!944 () V!45325)

(declare-datatypes ((tuple2!19588 0))(
  ( (tuple2!19589 (_1!9804 (_ BitVec 64)) (_2!9804 V!45325)) )
))
(declare-datatypes ((List!26353 0))(
  ( (Nil!26350) (Cons!26349 (h!27558 tuple2!19588) (t!38971 List!26353)) )
))
(declare-datatypes ((ListLongMap!17569 0))(
  ( (ListLongMap!17570 (toList!8800 List!26353)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5214 (array!77064 array!77062 (_ BitVec 32) (_ BitVec 32) V!45325 V!45325 (_ BitVec 32) Int) ListLongMap!17569)

(declare-fun -!1778 (ListLongMap!17569 (_ BitVec 64)) ListLongMap!17569)

(assert (=> b!1192159 (= (getCurrentListMapNoExtraKeys!5214 lt!542077 lt!542082 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1778 (getCurrentListMapNoExtraKeys!5214 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39490 0))(
  ( (Unit!39491) )
))
(declare-fun lt!542079 () Unit!39490)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!984 (array!77064 array!77062 (_ BitVec 32) (_ BitVec 32) V!45325 V!45325 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39490)

(assert (=> b!1192159 (= lt!542079 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!984 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1192160 () Bool)

(declare-fun e!677676 () Bool)

(declare-fun tp_is_empty!30149 () Bool)

(assert (=> b!1192160 (= e!677676 tp_is_empty!30149)))

(declare-fun b!1192161 () Bool)

(declare-fun e!677677 () Bool)

(assert (=> b!1192161 (= e!677677 (and e!677676 mapRes!47051))))

(declare-fun condMapEmpty!47051 () Bool)

(declare-fun mapDefault!47051 () ValueCell!14365)

