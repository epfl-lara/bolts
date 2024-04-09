; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99734 () Bool)

(assert start!99734)

(declare-fun b_free!25277 () Bool)

(declare-fun b_next!25277 () Bool)

(assert (=> start!99734 (= b_free!25277 (not b_next!25277))))

(declare-fun tp!88545 () Bool)

(declare-fun b_and!41435 () Bool)

(assert (=> start!99734 (= tp!88545 b_and!41435)))

(declare-fun b!1182809 () Bool)

(declare-fun res!786180 () Bool)

(declare-fun e!672528 () Bool)

(assert (=> b!1182809 (=> (not res!786180) (not e!672528))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182809 (= res!786180 (validKeyInArray!0 k!934))))

(declare-fun b!1182810 () Bool)

(declare-fun res!786188 () Bool)

(assert (=> b!1182810 (=> (not res!786188) (not e!672528))))

(declare-datatypes ((array!76382 0))(
  ( (array!76383 (arr!36837 (Array (_ BitVec 32) (_ BitVec 64))) (size!37374 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76382)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1182810 (= res!786188 (= (select (arr!36837 _keys!1208) i!673) k!934))))

(declare-fun e!672519 () Bool)

(declare-fun b!1182811 () Bool)

(declare-fun arrayContainsKey!0 (array!76382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182811 (= e!672519 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1182812 () Bool)

(declare-fun e!672520 () Bool)

(assert (=> b!1182812 (= e!672528 e!672520)))

(declare-fun res!786185 () Bool)

(assert (=> b!1182812 (=> (not res!786185) (not e!672520))))

(declare-fun lt!535599 () array!76382)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76382 (_ BitVec 32)) Bool)

(assert (=> b!1182812 (= res!786185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535599 mask!1564))))

(assert (=> b!1182812 (= lt!535599 (array!76383 (store (arr!36837 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37374 _keys!1208)))))

(declare-fun b!1182813 () Bool)

(declare-fun e!672527 () Bool)

(assert (=> b!1182813 (= e!672527 e!672519)))

(declare-fun res!786186 () Bool)

(assert (=> b!1182813 (=> res!786186 e!672519)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1182813 (= res!786186 (not (= (select (arr!36837 _keys!1208) from!1455) k!934)))))

(declare-fun b!1182814 () Bool)

(declare-fun res!786187 () Bool)

(assert (=> b!1182814 (=> (not res!786187) (not e!672528))))

(assert (=> b!1182814 (= res!786187 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37374 _keys!1208))))))

(declare-fun b!1182815 () Bool)

(declare-fun res!786193 () Bool)

(assert (=> b!1182815 (=> (not res!786193) (not e!672528))))

(declare-datatypes ((List!26056 0))(
  ( (Nil!26053) (Cons!26052 (h!27261 (_ BitVec 64)) (t!38332 List!26056)) )
))
(declare-fun arrayNoDuplicates!0 (array!76382 (_ BitVec 32) List!26056) Bool)

(assert (=> b!1182815 (= res!786193 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26053))))

(declare-fun b!1182816 () Bool)

(declare-fun e!672521 () Bool)

(declare-fun tp_is_empty!29807 () Bool)

(assert (=> b!1182816 (= e!672521 tp_is_empty!29807)))

(declare-fun b!1182817 () Bool)

(declare-datatypes ((Unit!39065 0))(
  ( (Unit!39066) )
))
(declare-fun e!672518 () Unit!39065)

(declare-fun Unit!39067 () Unit!39065)

(assert (=> b!1182817 (= e!672518 Unit!39067)))

(declare-fun lt!535603 () Unit!39065)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76382 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39065)

(assert (=> b!1182817 (= lt!535603 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1182817 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535610 () Unit!39065)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76382 (_ BitVec 32) (_ BitVec 32)) Unit!39065)

(assert (=> b!1182817 (= lt!535610 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1182817 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26053)))

(declare-fun lt!535598 () Unit!39065)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76382 (_ BitVec 64) (_ BitVec 32) List!26056) Unit!39065)

(assert (=> b!1182817 (= lt!535598 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26053))))

(assert (=> b!1182817 false))

(declare-fun b!1182818 () Bool)

(declare-fun res!786184 () Bool)

(assert (=> b!1182818 (=> (not res!786184) (not e!672528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182818 (= res!786184 (validMask!0 mask!1564))))

(declare-fun b!1182819 () Bool)

(declare-fun e!672524 () Bool)

(declare-fun e!672525 () Bool)

(declare-fun mapRes!46538 () Bool)

(assert (=> b!1182819 (= e!672524 (and e!672525 mapRes!46538))))

(declare-fun condMapEmpty!46538 () Bool)

(declare-datatypes ((V!44869 0))(
  ( (V!44870 (val!14960 Int)) )
))
(declare-datatypes ((ValueCell!14194 0))(
  ( (ValueCellFull!14194 (v!17599 V!44869)) (EmptyCell!14194) )
))
(declare-datatypes ((array!76384 0))(
  ( (array!76385 (arr!36838 (Array (_ BitVec 32) ValueCell!14194)) (size!37375 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76384)

(declare-fun mapDefault!46538 () ValueCell!14194)

