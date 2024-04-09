; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97512 () Bool)

(assert start!97512)

(declare-fun b!1112494 () Bool)

(declare-fun res!742486 () Bool)

(declare-fun e!634310 () Bool)

(assert (=> b!1112494 (=> (not res!742486) (not e!634310))))

(declare-datatypes ((array!72270 0))(
  ( (array!72271 (arr!34784 (Array (_ BitVec 32) (_ BitVec 64))) (size!35321 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72270)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1112494 (= res!742486 (= (select (arr!34784 _keys!1208) i!673) k!934))))

(declare-fun b!1112495 () Bool)

(declare-fun res!742483 () Bool)

(assert (=> b!1112495 (=> (not res!742483) (not e!634310))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112495 (= res!742483 (validMask!0 mask!1564))))

(declare-fun b!1112496 () Bool)

(declare-fun res!742487 () Bool)

(assert (=> b!1112496 (=> (not res!742487) (not e!634310))))

(assert (=> b!1112496 (= res!742487 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35321 _keys!1208))))))

(declare-fun b!1112497 () Bool)

(declare-fun e!634313 () Bool)

(assert (=> b!1112497 (= e!634313 (not true))))

(declare-fun arrayContainsKey!0 (array!72270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112497 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36419 0))(
  ( (Unit!36420) )
))
(declare-fun lt!496508 () Unit!36419)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72270 (_ BitVec 64) (_ BitVec 32)) Unit!36419)

(assert (=> b!1112497 (= lt!496508 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1112498 () Bool)

(declare-fun res!742488 () Bool)

(assert (=> b!1112498 (=> (not res!742488) (not e!634310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72270 (_ BitVec 32)) Bool)

(assert (=> b!1112498 (= res!742488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!742482 () Bool)

(assert (=> start!97512 (=> (not res!742482) (not e!634310))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97512 (= res!742482 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35321 _keys!1208))))))

(assert (=> start!97512 e!634310))

(declare-fun array_inv!26620 (array!72270) Bool)

(assert (=> start!97512 (array_inv!26620 _keys!1208)))

(assert (=> start!97512 true))

(declare-datatypes ((V!42069 0))(
  ( (V!42070 (val!13910 Int)) )
))
(declare-datatypes ((ValueCell!13144 0))(
  ( (ValueCellFull!13144 (v!16544 V!42069)) (EmptyCell!13144) )
))
(declare-datatypes ((array!72272 0))(
  ( (array!72273 (arr!34785 (Array (_ BitVec 32) ValueCell!13144)) (size!35322 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72272)

(declare-fun e!634308 () Bool)

(declare-fun array_inv!26621 (array!72272) Bool)

(assert (=> start!97512 (and (array_inv!26621 _values!996) e!634308)))

(declare-fun b!1112499 () Bool)

(declare-fun e!634311 () Bool)

(declare-fun tp_is_empty!27707 () Bool)

(assert (=> b!1112499 (= e!634311 tp_is_empty!27707)))

(declare-fun b!1112500 () Bool)

(declare-fun res!742484 () Bool)

(assert (=> b!1112500 (=> (not res!742484) (not e!634313))))

(declare-fun lt!496509 () array!72270)

(declare-datatypes ((List!24400 0))(
  ( (Nil!24397) (Cons!24396 (h!25605 (_ BitVec 64)) (t!34888 List!24400)) )
))
(declare-fun arrayNoDuplicates!0 (array!72270 (_ BitVec 32) List!24400) Bool)

(assert (=> b!1112500 (= res!742484 (arrayNoDuplicates!0 lt!496509 #b00000000000000000000000000000000 Nil!24397))))

(declare-fun mapIsEmpty!43378 () Bool)

(declare-fun mapRes!43378 () Bool)

(assert (=> mapIsEmpty!43378 mapRes!43378))

(declare-fun b!1112501 () Bool)

(assert (=> b!1112501 (= e!634308 (and e!634311 mapRes!43378))))

(declare-fun condMapEmpty!43378 () Bool)

(declare-fun mapDefault!43378 () ValueCell!13144)

