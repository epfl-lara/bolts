; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99884 () Bool)

(assert start!99884)

(declare-fun b_free!25427 () Bool)

(declare-fun b_next!25427 () Bool)

(assert (=> start!99884 (= b_free!25427 (not b_next!25427))))

(declare-fun tp!88995 () Bool)

(declare-fun b_and!41735 () Bool)

(assert (=> start!99884 (= tp!88995 b_and!41735)))

(declare-fun b!1187459 () Bool)

(declare-fun res!789565 () Bool)

(declare-fun e!675229 () Bool)

(assert (=> b!1187459 (=> (not res!789565) (not e!675229))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76682 0))(
  ( (array!76683 (arr!36987 (Array (_ BitVec 32) (_ BitVec 64))) (size!37524 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76682)

(assert (=> b!1187459 (= res!789565 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37524 _keys!1208))))))

(declare-fun res!789559 () Bool)

(assert (=> start!99884 (=> (not res!789559) (not e!675229))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99884 (= res!789559 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37524 _keys!1208))))))

(assert (=> start!99884 e!675229))

(declare-fun tp_is_empty!29957 () Bool)

(assert (=> start!99884 tp_is_empty!29957))

(declare-fun array_inv!28106 (array!76682) Bool)

(assert (=> start!99884 (array_inv!28106 _keys!1208)))

(assert (=> start!99884 true))

(assert (=> start!99884 tp!88995))

(declare-datatypes ((V!45069 0))(
  ( (V!45070 (val!15035 Int)) )
))
(declare-datatypes ((ValueCell!14269 0))(
  ( (ValueCellFull!14269 (v!17674 V!45069)) (EmptyCell!14269) )
))
(declare-datatypes ((array!76684 0))(
  ( (array!76685 (arr!36988 (Array (_ BitVec 32) ValueCell!14269)) (size!37525 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76684)

(declare-fun e!675222 () Bool)

(declare-fun array_inv!28107 (array!76684) Bool)

(assert (=> start!99884 (and (array_inv!28107 _values!996) e!675222)))

(declare-fun b!1187460 () Bool)

(declare-fun e!675218 () Bool)

(declare-fun e!675220 () Bool)

(assert (=> b!1187460 (= e!675218 e!675220)))

(declare-fun res!789558 () Bool)

(assert (=> b!1187460 (=> res!789558 e!675220)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1187460 (= res!789558 (not (= (select (arr!36987 _keys!1208) from!1455) k!934)))))

(declare-fun mapIsEmpty!46763 () Bool)

(declare-fun mapRes!46763 () Bool)

(assert (=> mapIsEmpty!46763 mapRes!46763))

(declare-fun b!1187461 () Bool)

(declare-fun res!789557 () Bool)

(assert (=> b!1187461 (=> (not res!789557) (not e!675229))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1187461 (= res!789557 (validMask!0 mask!1564))))

(declare-fun b!1187462 () Bool)

(declare-datatypes ((Unit!39308 0))(
  ( (Unit!39309) )
))
(declare-fun e!675224 () Unit!39308)

(declare-fun Unit!39310 () Unit!39308)

(assert (=> b!1187462 (= e!675224 Unit!39310)))

(declare-fun lt!539886 () Unit!39308)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76682 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39308)

(assert (=> b!1187462 (= lt!539886 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1187462 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!539880 () Unit!39308)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76682 (_ BitVec 32) (_ BitVec 32)) Unit!39308)

(assert (=> b!1187462 (= lt!539880 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26189 0))(
  ( (Nil!26186) (Cons!26185 (h!27394 (_ BitVec 64)) (t!38615 List!26189)) )
))
(declare-fun arrayNoDuplicates!0 (array!76682 (_ BitVec 32) List!26189) Bool)

(assert (=> b!1187462 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26186)))

(declare-fun lt!539869 () Unit!39308)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76682 (_ BitVec 64) (_ BitVec 32) List!26189) Unit!39308)

(assert (=> b!1187462 (= lt!539869 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26186))))

(assert (=> b!1187462 false))

(declare-fun b!1187463 () Bool)

(declare-fun e!675225 () Bool)

(assert (=> b!1187463 (= e!675229 e!675225)))

(declare-fun res!789568 () Bool)

(assert (=> b!1187463 (=> (not res!789568) (not e!675225))))

(declare-fun lt!539871 () array!76682)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76682 (_ BitVec 32)) Bool)

(assert (=> b!1187463 (= res!789568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!539871 mask!1564))))

(assert (=> b!1187463 (= lt!539871 (array!76683 (store (arr!36987 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37524 _keys!1208)))))

(declare-fun b!1187464 () Bool)

(declare-fun res!789566 () Bool)

(assert (=> b!1187464 (=> (not res!789566) (not e!675229))))

(assert (=> b!1187464 (= res!789566 (= (select (arr!36987 _keys!1208) i!673) k!934))))

(declare-fun b!1187465 () Bool)

(assert (=> b!1187465 (= e!675220 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapNonEmpty!46763 () Bool)

(declare-fun tp!88996 () Bool)

(declare-fun e!675219 () Bool)

(assert (=> mapNonEmpty!46763 (= mapRes!46763 (and tp!88996 e!675219))))

(declare-fun mapRest!46763 () (Array (_ BitVec 32) ValueCell!14269))

(declare-fun mapValue!46763 () ValueCell!14269)

(declare-fun mapKey!46763 () (_ BitVec 32))

(assert (=> mapNonEmpty!46763 (= (arr!36988 _values!996) (store mapRest!46763 mapKey!46763 mapValue!46763))))

(declare-fun b!1187466 () Bool)

(declare-fun e!675223 () Bool)

(assert (=> b!1187466 (= e!675225 (not e!675223))))

(declare-fun res!789567 () Bool)

(assert (=> b!1187466 (=> res!789567 e!675223)))

(assert (=> b!1187466 (= res!789567 (bvsgt from!1455 i!673))))

(assert (=> b!1187466 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!539875 () Unit!39308)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76682 (_ BitVec 64) (_ BitVec 32)) Unit!39308)

(assert (=> b!1187466 (= lt!539875 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1187467 () Bool)

(declare-fun e!675228 () Bool)

(assert (=> b!1187467 (= e!675222 (and e!675228 mapRes!46763))))

(declare-fun condMapEmpty!46763 () Bool)

(declare-fun mapDefault!46763 () ValueCell!14269)

