; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100318 () Bool)

(assert start!100318)

(declare-fun b!1196309 () Bool)

(declare-fun e!679742 () Bool)

(assert (=> b!1196309 (= e!679742 (not true))))

(declare-datatypes ((array!77458 0))(
  ( (array!77459 (arr!37372 (Array (_ BitVec 32) (_ BitVec 64))) (size!37909 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77458)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196309 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39614 0))(
  ( (Unit!39615) )
))
(declare-fun lt!543018 () Unit!39614)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77458 (_ BitVec 64) (_ BitVec 32)) Unit!39614)

(assert (=> b!1196309 (= lt!543018 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1196310 () Bool)

(declare-fun res!796222 () Bool)

(declare-fun e!679740 () Bool)

(assert (=> b!1196310 (=> (not res!796222) (not e!679740))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196310 (= res!796222 (validMask!0 mask!1564))))

(declare-fun b!1196311 () Bool)

(declare-fun res!796230 () Bool)

(assert (=> b!1196311 (=> (not res!796230) (not e!679740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1196311 (= res!796230 (validKeyInArray!0 k!934))))

(declare-fun b!1196312 () Bool)

(assert (=> b!1196312 (= e!679740 e!679742)))

(declare-fun res!796225 () Bool)

(assert (=> b!1196312 (=> (not res!796225) (not e!679742))))

(declare-fun lt!543017 () array!77458)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77458 (_ BitVec 32)) Bool)

(assert (=> b!1196312 (= res!796225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543017 mask!1564))))

(assert (=> b!1196312 (= lt!543017 (array!77459 (store (arr!37372 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37909 _keys!1208)))))

(declare-fun b!1196313 () Bool)

(declare-fun res!796226 () Bool)

(assert (=> b!1196313 (=> (not res!796226) (not e!679740))))

(declare-datatypes ((List!26459 0))(
  ( (Nil!26456) (Cons!26455 (h!27664 (_ BitVec 64)) (t!39137 List!26459)) )
))
(declare-fun arrayNoDuplicates!0 (array!77458 (_ BitVec 32) List!26459) Bool)

(assert (=> b!1196313 (= res!796226 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26456))))

(declare-fun res!796229 () Bool)

(assert (=> start!100318 (=> (not res!796229) (not e!679740))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100318 (= res!796229 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37909 _keys!1208))))))

(assert (=> start!100318 e!679740))

(declare-fun array_inv!28388 (array!77458) Bool)

(assert (=> start!100318 (array_inv!28388 _keys!1208)))

(assert (=> start!100318 true))

(declare-datatypes ((V!45593 0))(
  ( (V!45594 (val!15231 Int)) )
))
(declare-datatypes ((ValueCell!14465 0))(
  ( (ValueCellFull!14465 (v!17870 V!45593)) (EmptyCell!14465) )
))
(declare-datatypes ((array!77460 0))(
  ( (array!77461 (arr!37373 (Array (_ BitVec 32) ValueCell!14465)) (size!37910 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77460)

(declare-fun e!679739 () Bool)

(declare-fun array_inv!28389 (array!77460) Bool)

(assert (=> start!100318 (and (array_inv!28389 _values!996) e!679739)))

(declare-fun b!1196314 () Bool)

(declare-fun res!796224 () Bool)

(assert (=> b!1196314 (=> (not res!796224) (not e!679740))))

(assert (=> b!1196314 (= res!796224 (= (select (arr!37372 _keys!1208) i!673) k!934))))

(declare-fun b!1196315 () Bool)

(declare-fun res!796223 () Bool)

(assert (=> b!1196315 (=> (not res!796223) (not e!679740))))

(assert (=> b!1196315 (= res!796223 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37909 _keys!1208))))))

(declare-fun mapNonEmpty!47360 () Bool)

(declare-fun mapRes!47360 () Bool)

(declare-fun tp!89971 () Bool)

(declare-fun e!679743 () Bool)

(assert (=> mapNonEmpty!47360 (= mapRes!47360 (and tp!89971 e!679743))))

(declare-fun mapKey!47360 () (_ BitVec 32))

(declare-fun mapValue!47360 () ValueCell!14465)

(declare-fun mapRest!47360 () (Array (_ BitVec 32) ValueCell!14465))

(assert (=> mapNonEmpty!47360 (= (arr!37373 _values!996) (store mapRest!47360 mapKey!47360 mapValue!47360))))

(declare-fun b!1196316 () Bool)

(declare-fun tp_is_empty!30349 () Bool)

(assert (=> b!1196316 (= e!679743 tp_is_empty!30349)))

(declare-fun b!1196317 () Bool)

(declare-fun e!679741 () Bool)

(assert (=> b!1196317 (= e!679739 (and e!679741 mapRes!47360))))

(declare-fun condMapEmpty!47360 () Bool)

(declare-fun mapDefault!47360 () ValueCell!14465)

