; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100084 () Bool)

(assert start!100084)

(declare-fun b_free!25627 () Bool)

(declare-fun b_next!25627 () Bool)

(assert (=> start!100084 (= b_free!25627 (not b_next!25627))))

(declare-fun tp!89596 () Bool)

(declare-fun b_and!42135 () Bool)

(assert (=> start!100084 (= tp!89596 b_and!42135)))

(declare-fun b!1192344 () Bool)

(declare-fun res!793266 () Bool)

(declare-fun e!677770 () Bool)

(assert (=> b!1192344 (=> (not res!793266) (not e!677770))))

(declare-datatypes ((array!77078 0))(
  ( (array!77079 (arr!37185 (Array (_ BitVec 32) (_ BitVec 64))) (size!37722 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77078)

(declare-datatypes ((List!26359 0))(
  ( (Nil!26356) (Cons!26355 (h!27564 (_ BitVec 64)) (t!38985 List!26359)) )
))
(declare-fun arrayNoDuplicates!0 (array!77078 (_ BitVec 32) List!26359) Bool)

(assert (=> b!1192344 (= res!793266 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26356))))

(declare-fun b!1192345 () Bool)

(declare-fun res!793267 () Bool)

(declare-fun e!677766 () Bool)

(assert (=> b!1192345 (=> (not res!793267) (not e!677766))))

(declare-fun lt!542152 () array!77078)

(assert (=> b!1192345 (= res!793267 (arrayNoDuplicates!0 lt!542152 #b00000000000000000000000000000000 Nil!26356))))

(declare-fun b!1192346 () Bool)

(declare-fun res!793265 () Bool)

(assert (=> b!1192346 (=> (not res!793265) (not e!677770))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77078 (_ BitVec 32)) Bool)

(assert (=> b!1192346 (= res!793265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1192347 () Bool)

(declare-fun res!793269 () Bool)

(assert (=> b!1192347 (=> (not res!793269) (not e!677770))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1192347 (= res!793269 (= (select (arr!37185 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!47063 () Bool)

(declare-fun mapRes!47063 () Bool)

(declare-fun tp!89595 () Bool)

(declare-fun e!677773 () Bool)

(assert (=> mapNonEmpty!47063 (= mapRes!47063 (and tp!89595 e!677773))))

(declare-datatypes ((V!45337 0))(
  ( (V!45338 (val!15135 Int)) )
))
(declare-datatypes ((ValueCell!14369 0))(
  ( (ValueCellFull!14369 (v!17774 V!45337)) (EmptyCell!14369) )
))
(declare-fun mapValue!47063 () ValueCell!14369)

(declare-fun mapKey!47063 () (_ BitVec 32))

(declare-fun mapRest!47063 () (Array (_ BitVec 32) ValueCell!14369))

(declare-datatypes ((array!77080 0))(
  ( (array!77081 (arr!37186 (Array (_ BitVec 32) ValueCell!14369)) (size!37723 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77080)

(assert (=> mapNonEmpty!47063 (= (arr!37186 _values!996) (store mapRest!47063 mapKey!47063 mapValue!47063))))

(declare-fun res!793272 () Bool)

(assert (=> start!100084 (=> (not res!793272) (not e!677770))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100084 (= res!793272 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37722 _keys!1208))))))

(assert (=> start!100084 e!677770))

(declare-fun tp_is_empty!30157 () Bool)

(assert (=> start!100084 tp_is_empty!30157))

(declare-fun array_inv!28254 (array!77078) Bool)

(assert (=> start!100084 (array_inv!28254 _keys!1208)))

(assert (=> start!100084 true))

(assert (=> start!100084 tp!89596))

(declare-fun e!677768 () Bool)

(declare-fun array_inv!28255 (array!77080) Bool)

(assert (=> start!100084 (and (array_inv!28255 _values!996) e!677768)))

(declare-fun b!1192348 () Bool)

(declare-fun e!677772 () Bool)

(assert (=> b!1192348 (= e!677772 tp_is_empty!30157)))

(declare-fun b!1192349 () Bool)

(declare-fun res!793276 () Bool)

(assert (=> b!1192349 (=> (not res!793276) (not e!677770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1192349 (= res!793276 (validKeyInArray!0 k!934))))

(declare-fun b!1192350 () Bool)

(declare-fun res!793270 () Bool)

(assert (=> b!1192350 (=> (not res!793270) (not e!677770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1192350 (= res!793270 (validMask!0 mask!1564))))

(declare-fun b!1192351 () Bool)

(declare-fun e!677769 () Bool)

(assert (=> b!1192351 (= e!677766 (not e!677769))))

(declare-fun res!793268 () Bool)

(assert (=> b!1192351 (=> res!793268 e!677769)))

(assert (=> b!1192351 (= res!793268 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1192351 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39498 0))(
  ( (Unit!39499) )
))
(declare-fun lt!542150 () Unit!39498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77078 (_ BitVec 64) (_ BitVec 32)) Unit!39498)

(assert (=> b!1192351 (= lt!542150 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1192352 () Bool)

(declare-fun res!793273 () Bool)

(assert (=> b!1192352 (=> (not res!793273) (not e!677770))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1192352 (= res!793273 (and (= (size!37723 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37722 _keys!1208) (size!37723 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1192353 () Bool)

(declare-fun e!677771 () Bool)

(assert (=> b!1192353 (= e!677769 e!677771)))

(declare-fun res!793271 () Bool)

(assert (=> b!1192353 (=> res!793271 e!677771)))

(assert (=> b!1192353 (= res!793271 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45337)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45337)

(declare-datatypes ((tuple2!19596 0))(
  ( (tuple2!19597 (_1!9808 (_ BitVec 64)) (_2!9808 V!45337)) )
))
(declare-datatypes ((List!26360 0))(
  ( (Nil!26357) (Cons!26356 (h!27565 tuple2!19596) (t!38986 List!26360)) )
))
(declare-datatypes ((ListLongMap!17577 0))(
  ( (ListLongMap!17578 (toList!8804 List!26360)) )
))
(declare-fun lt!542149 () ListLongMap!17577)

(declare-fun lt!542154 () array!77080)

(declare-fun getCurrentListMapNoExtraKeys!5218 (array!77078 array!77080 (_ BitVec 32) (_ BitVec 32) V!45337 V!45337 (_ BitVec 32) Int) ListLongMap!17577)

(assert (=> b!1192353 (= lt!542149 (getCurrentListMapNoExtraKeys!5218 lt!542152 lt!542154 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3160 (Int (_ BitVec 64)) V!45337)

(assert (=> b!1192353 (= lt!542154 (array!77081 (store (arr!37186 _values!996) i!673 (ValueCellFull!14369 (dynLambda!3160 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37723 _values!996)))))

(declare-fun lt!542151 () ListLongMap!17577)

(assert (=> b!1192353 (= lt!542151 (getCurrentListMapNoExtraKeys!5218 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!47063 () Bool)

(assert (=> mapIsEmpty!47063 mapRes!47063))

(declare-fun b!1192354 () Bool)

(assert (=> b!1192354 (= e!677770 e!677766)))

(declare-fun res!793275 () Bool)

(assert (=> b!1192354 (=> (not res!793275) (not e!677766))))

(assert (=> b!1192354 (= res!793275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542152 mask!1564))))

(assert (=> b!1192354 (= lt!542152 (array!77079 (store (arr!37185 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37722 _keys!1208)))))

(declare-fun b!1192355 () Bool)

(assert (=> b!1192355 (= e!677768 (and e!677772 mapRes!47063))))

(declare-fun condMapEmpty!47063 () Bool)

(declare-fun mapDefault!47063 () ValueCell!14369)

