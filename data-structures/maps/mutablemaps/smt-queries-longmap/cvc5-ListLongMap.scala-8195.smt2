; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100072 () Bool)

(assert start!100072)

(declare-fun b_free!25615 () Bool)

(declare-fun b_next!25615 () Bool)

(assert (=> start!100072 (= b_free!25615 (not b_next!25615))))

(declare-fun tp!89559 () Bool)

(declare-fun b_and!42111 () Bool)

(assert (=> start!100072 (= tp!89559 b_and!42111)))

(declare-fun b!1192062 () Bool)

(declare-fun res!793056 () Bool)

(declare-fun e!677625 () Bool)

(assert (=> b!1192062 (=> (not res!793056) (not e!677625))))

(declare-datatypes ((array!77054 0))(
  ( (array!77055 (arr!37173 (Array (_ BitVec 32) (_ BitVec 64))) (size!37710 (_ BitVec 32))) )
))
(declare-fun lt!542041 () array!77054)

(declare-datatypes ((List!26348 0))(
  ( (Nil!26345) (Cons!26344 (h!27553 (_ BitVec 64)) (t!38962 List!26348)) )
))
(declare-fun arrayNoDuplicates!0 (array!77054 (_ BitVec 32) List!26348) Bool)

(assert (=> b!1192062 (= res!793056 (arrayNoDuplicates!0 lt!542041 #b00000000000000000000000000000000 Nil!26345))))

(declare-fun b!1192063 () Bool)

(declare-fun res!793054 () Bool)

(declare-fun e!677622 () Bool)

(assert (=> b!1192063 (=> (not res!793054) (not e!677622))))

(declare-fun _keys!1208 () array!77054)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1192063 (= res!793054 (= (select (arr!37173 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!47045 () Bool)

(declare-fun mapRes!47045 () Bool)

(declare-fun tp!89560 () Bool)

(declare-fun e!677629 () Bool)

(assert (=> mapNonEmpty!47045 (= mapRes!47045 (and tp!89560 e!677629))))

(declare-datatypes ((V!45321 0))(
  ( (V!45322 (val!15129 Int)) )
))
(declare-datatypes ((ValueCell!14363 0))(
  ( (ValueCellFull!14363 (v!17768 V!45321)) (EmptyCell!14363) )
))
(declare-fun mapRest!47045 () (Array (_ BitVec 32) ValueCell!14363))

(declare-fun mapValue!47045 () ValueCell!14363)

(declare-fun mapKey!47045 () (_ BitVec 32))

(declare-datatypes ((array!77056 0))(
  ( (array!77057 (arr!37174 (Array (_ BitVec 32) ValueCell!14363)) (size!37711 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77056)

(assert (=> mapNonEmpty!47045 (= (arr!37174 _values!996) (store mapRest!47045 mapKey!47045 mapValue!47045))))

(declare-fun b!1192064 () Bool)

(declare-fun e!677623 () Bool)

(declare-fun e!677624 () Bool)

(assert (=> b!1192064 (= e!677623 e!677624)))

(declare-fun res!793055 () Bool)

(assert (=> b!1192064 (=> res!793055 e!677624)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1192064 (= res!793055 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!542044 () array!77056)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45321)

(declare-datatypes ((tuple2!19584 0))(
  ( (tuple2!19585 (_1!9802 (_ BitVec 64)) (_2!9802 V!45321)) )
))
(declare-datatypes ((List!26349 0))(
  ( (Nil!26346) (Cons!26345 (h!27554 tuple2!19584) (t!38963 List!26349)) )
))
(declare-datatypes ((ListLongMap!17565 0))(
  ( (ListLongMap!17566 (toList!8798 List!26349)) )
))
(declare-fun lt!542043 () ListLongMap!17565)

(declare-fun zeroValue!944 () V!45321)

(declare-fun getCurrentListMapNoExtraKeys!5212 (array!77054 array!77056 (_ BitVec 32) (_ BitVec 32) V!45321 V!45321 (_ BitVec 32) Int) ListLongMap!17565)

(assert (=> b!1192064 (= lt!542043 (getCurrentListMapNoExtraKeys!5212 lt!542041 lt!542044 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3155 (Int (_ BitVec 64)) V!45321)

(assert (=> b!1192064 (= lt!542044 (array!77057 (store (arr!37174 _values!996) i!673 (ValueCellFull!14363 (dynLambda!3155 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37711 _values!996)))))

(declare-fun lt!542046 () ListLongMap!17565)

(assert (=> b!1192064 (= lt!542046 (getCurrentListMapNoExtraKeys!5212 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1192065 () Bool)

(declare-fun res!793058 () Bool)

(assert (=> b!1192065 (=> (not res!793058) (not e!677622))))

(assert (=> b!1192065 (= res!793058 (and (= (size!37711 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37710 _keys!1208) (size!37711 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!793060 () Bool)

(assert (=> start!100072 (=> (not res!793060) (not e!677622))))

(assert (=> start!100072 (= res!793060 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37710 _keys!1208))))))

(assert (=> start!100072 e!677622))

(declare-fun tp_is_empty!30145 () Bool)

(assert (=> start!100072 tp_is_empty!30145))

(declare-fun array_inv!28246 (array!77054) Bool)

(assert (=> start!100072 (array_inv!28246 _keys!1208)))

(assert (=> start!100072 true))

(assert (=> start!100072 tp!89559))

(declare-fun e!677628 () Bool)

(declare-fun array_inv!28247 (array!77056) Bool)

(assert (=> start!100072 (and (array_inv!28247 _values!996) e!677628)))

(declare-fun b!1192066 () Bool)

(declare-fun res!793049 () Bool)

(assert (=> b!1192066 (=> (not res!793049) (not e!677622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77054 (_ BitVec 32)) Bool)

(assert (=> b!1192066 (= res!793049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192067 () Bool)

(declare-fun e!677626 () Bool)

(assert (=> b!1192067 (= e!677628 (and e!677626 mapRes!47045))))

(declare-fun condMapEmpty!47045 () Bool)

(declare-fun mapDefault!47045 () ValueCell!14363)

