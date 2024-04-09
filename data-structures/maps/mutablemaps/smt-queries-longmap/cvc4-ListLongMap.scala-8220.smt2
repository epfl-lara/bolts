; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100268 () Bool)

(assert start!100268)

(declare-fun b!1195334 () Bool)

(declare-fun e!679290 () Bool)

(assert (=> b!1195334 (= e!679290 (not true))))

(declare-datatypes ((array!77362 0))(
  ( (array!77363 (arr!37324 (Array (_ BitVec 32) (_ BitVec 64))) (size!37861 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77362)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195334 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39574 0))(
  ( (Unit!39575) )
))
(declare-fun lt!542867 () Unit!39574)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77362 (_ BitVec 64) (_ BitVec 32)) Unit!39574)

(assert (=> b!1195334 (= lt!542867 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!47285 () Bool)

(declare-fun mapRes!47285 () Bool)

(assert (=> mapIsEmpty!47285 mapRes!47285))

(declare-fun b!1195335 () Bool)

(declare-fun res!795475 () Bool)

(declare-fun e!679292 () Bool)

(assert (=> b!1195335 (=> (not res!795475) (not e!679292))))

(assert (=> b!1195335 (= res!795475 (= (select (arr!37324 _keys!1208) i!673) k!934))))

(declare-fun b!1195336 () Bool)

(declare-fun res!795476 () Bool)

(assert (=> b!1195336 (=> (not res!795476) (not e!679292))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195336 (= res!795476 (validMask!0 mask!1564))))

(declare-fun b!1195337 () Bool)

(declare-fun res!795474 () Bool)

(assert (=> b!1195337 (=> (not res!795474) (not e!679292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77362 (_ BitVec 32)) Bool)

(assert (=> b!1195337 (= res!795474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195338 () Bool)

(declare-fun e!679291 () Bool)

(declare-fun tp_is_empty!30299 () Bool)

(assert (=> b!1195338 (= e!679291 tp_is_empty!30299)))

(declare-fun b!1195339 () Bool)

(declare-fun e!679293 () Bool)

(assert (=> b!1195339 (= e!679293 tp_is_empty!30299)))

(declare-fun b!1195340 () Bool)

(declare-fun res!795481 () Bool)

(assert (=> b!1195340 (=> (not res!795481) (not e!679292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195340 (= res!795481 (validKeyInArray!0 k!934))))

(declare-fun b!1195341 () Bool)

(assert (=> b!1195341 (= e!679292 e!679290)))

(declare-fun res!795472 () Bool)

(assert (=> b!1195341 (=> (not res!795472) (not e!679290))))

(declare-fun lt!542868 () array!77362)

(assert (=> b!1195341 (= res!795472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542868 mask!1564))))

(assert (=> b!1195341 (= lt!542868 (array!77363 (store (arr!37324 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37861 _keys!1208)))))

(declare-fun res!795479 () Bool)

(assert (=> start!100268 (=> (not res!795479) (not e!679292))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100268 (= res!795479 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37861 _keys!1208))))))

(assert (=> start!100268 e!679292))

(declare-fun array_inv!28350 (array!77362) Bool)

(assert (=> start!100268 (array_inv!28350 _keys!1208)))

(assert (=> start!100268 true))

(declare-datatypes ((V!45525 0))(
  ( (V!45526 (val!15206 Int)) )
))
(declare-datatypes ((ValueCell!14440 0))(
  ( (ValueCellFull!14440 (v!17845 V!45525)) (EmptyCell!14440) )
))
(declare-datatypes ((array!77364 0))(
  ( (array!77365 (arr!37325 (Array (_ BitVec 32) ValueCell!14440)) (size!37862 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77364)

(declare-fun e!679289 () Bool)

(declare-fun array_inv!28351 (array!77364) Bool)

(assert (=> start!100268 (and (array_inv!28351 _values!996) e!679289)))

(declare-fun b!1195342 () Bool)

(declare-fun res!795478 () Bool)

(assert (=> b!1195342 (=> (not res!795478) (not e!679292))))

(assert (=> b!1195342 (= res!795478 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37861 _keys!1208))))))

(declare-fun mapNonEmpty!47285 () Bool)

(declare-fun tp!89896 () Bool)

(assert (=> mapNonEmpty!47285 (= mapRes!47285 (and tp!89896 e!679293))))

(declare-fun mapKey!47285 () (_ BitVec 32))

(declare-fun mapRest!47285 () (Array (_ BitVec 32) ValueCell!14440))

(declare-fun mapValue!47285 () ValueCell!14440)

(assert (=> mapNonEmpty!47285 (= (arr!37325 _values!996) (store mapRest!47285 mapKey!47285 mapValue!47285))))

(declare-fun b!1195343 () Bool)

(declare-fun res!795473 () Bool)

(assert (=> b!1195343 (=> (not res!795473) (not e!679292))))

(declare-datatypes ((List!26439 0))(
  ( (Nil!26436) (Cons!26435 (h!27644 (_ BitVec 64)) (t!39117 List!26439)) )
))
(declare-fun arrayNoDuplicates!0 (array!77362 (_ BitVec 32) List!26439) Bool)

(assert (=> b!1195343 (= res!795473 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26436))))

(declare-fun b!1195344 () Bool)

(declare-fun res!795477 () Bool)

(assert (=> b!1195344 (=> (not res!795477) (not e!679292))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1195344 (= res!795477 (and (= (size!37862 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37861 _keys!1208) (size!37862 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195345 () Bool)

(assert (=> b!1195345 (= e!679289 (and e!679291 mapRes!47285))))

(declare-fun condMapEmpty!47285 () Bool)

(declare-fun mapDefault!47285 () ValueCell!14440)

