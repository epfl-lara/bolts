; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100312 () Bool)

(assert start!100312)

(declare-fun mapNonEmpty!47351 () Bool)

(declare-fun mapRes!47351 () Bool)

(declare-fun tp!89962 () Bool)

(declare-fun e!679687 () Bool)

(assert (=> mapNonEmpty!47351 (= mapRes!47351 (and tp!89962 e!679687))))

(declare-datatypes ((V!45585 0))(
  ( (V!45586 (val!15228 Int)) )
))
(declare-datatypes ((ValueCell!14462 0))(
  ( (ValueCellFull!14462 (v!17867 V!45585)) (EmptyCell!14462) )
))
(declare-fun mapRest!47351 () (Array (_ BitVec 32) ValueCell!14462))

(declare-fun mapValue!47351 () ValueCell!14462)

(declare-fun mapKey!47351 () (_ BitVec 32))

(declare-datatypes ((array!77448 0))(
  ( (array!77449 (arr!37367 (Array (_ BitVec 32) ValueCell!14462)) (size!37904 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77448)

(assert (=> mapNonEmpty!47351 (= (arr!37367 _values!996) (store mapRest!47351 mapKey!47351 mapValue!47351))))

(declare-fun b!1196192 () Bool)

(declare-fun e!679686 () Bool)

(declare-fun tp_is_empty!30343 () Bool)

(assert (=> b!1196192 (= e!679686 tp_is_empty!30343)))

(declare-fun b!1196193 () Bool)

(declare-fun res!796133 () Bool)

(declare-fun e!679685 () Bool)

(assert (=> b!1196193 (=> (not res!796133) (not e!679685))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77450 0))(
  ( (array!77451 (arr!37368 (Array (_ BitVec 32) (_ BitVec 64))) (size!37905 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77450)

(assert (=> b!1196193 (= res!796133 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37905 _keys!1208))))))

(declare-fun b!1196194 () Bool)

(assert (=> b!1196194 (= e!679687 tp_is_empty!30343)))

(declare-fun res!796137 () Bool)

(assert (=> start!100312 (=> (not res!796137) (not e!679685))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100312 (= res!796137 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37905 _keys!1208))))))

(assert (=> start!100312 e!679685))

(declare-fun array_inv!28384 (array!77450) Bool)

(assert (=> start!100312 (array_inv!28384 _keys!1208)))

(assert (=> start!100312 true))

(declare-fun e!679689 () Bool)

(declare-fun array_inv!28385 (array!77448) Bool)

(assert (=> start!100312 (and (array_inv!28385 _values!996) e!679689)))

(declare-fun b!1196195 () Bool)

(declare-fun res!796139 () Bool)

(assert (=> b!1196195 (=> (not res!796139) (not e!679685))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196195 (= res!796139 (validMask!0 mask!1564))))

(declare-fun b!1196196 () Bool)

(declare-fun e!679688 () Bool)

(assert (=> b!1196196 (= e!679688 (not true))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196196 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39610 0))(
  ( (Unit!39611) )
))
(declare-fun lt!542999 () Unit!39610)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77450 (_ BitVec 64) (_ BitVec 32)) Unit!39610)

(assert (=> b!1196196 (= lt!542999 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1196197 () Bool)

(declare-fun res!796132 () Bool)

(assert (=> b!1196197 (=> (not res!796132) (not e!679688))))

(declare-fun lt!543000 () array!77450)

(declare-datatypes ((List!26457 0))(
  ( (Nil!26454) (Cons!26453 (h!27662 (_ BitVec 64)) (t!39135 List!26457)) )
))
(declare-fun arrayNoDuplicates!0 (array!77450 (_ BitVec 32) List!26457) Bool)

(assert (=> b!1196197 (= res!796132 (arrayNoDuplicates!0 lt!543000 #b00000000000000000000000000000000 Nil!26454))))

(declare-fun mapIsEmpty!47351 () Bool)

(assert (=> mapIsEmpty!47351 mapRes!47351))

(declare-fun b!1196198 () Bool)

(declare-fun res!796141 () Bool)

(assert (=> b!1196198 (=> (not res!796141) (not e!679685))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1196198 (= res!796141 (and (= (size!37904 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37905 _keys!1208) (size!37904 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196199 () Bool)

(assert (=> b!1196199 (= e!679685 e!679688)))

(declare-fun res!796135 () Bool)

(assert (=> b!1196199 (=> (not res!796135) (not e!679688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77450 (_ BitVec 32)) Bool)

(assert (=> b!1196199 (= res!796135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543000 mask!1564))))

(assert (=> b!1196199 (= lt!543000 (array!77451 (store (arr!37368 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37905 _keys!1208)))))

(declare-fun b!1196200 () Bool)

(declare-fun res!796134 () Bool)

(assert (=> b!1196200 (=> (not res!796134) (not e!679685))))

(assert (=> b!1196200 (= res!796134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1196201 () Bool)

(assert (=> b!1196201 (= e!679689 (and e!679686 mapRes!47351))))

(declare-fun condMapEmpty!47351 () Bool)

(declare-fun mapDefault!47351 () ValueCell!14462)

