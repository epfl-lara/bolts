; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99700 () Bool)

(assert start!99700)

(declare-fun b_free!25243 () Bool)

(declare-fun b_next!25243 () Bool)

(assert (=> start!99700 (= b_free!25243 (not b_next!25243))))

(declare-fun tp!88444 () Bool)

(declare-fun b_and!41367 () Bool)

(assert (=> start!99700 (= tp!88444 b_and!41367)))

(declare-fun mapNonEmpty!46487 () Bool)

(declare-fun mapRes!46487 () Bool)

(declare-fun tp!88443 () Bool)

(declare-fun e!671914 () Bool)

(assert (=> mapNonEmpty!46487 (= mapRes!46487 (and tp!88443 e!671914))))

(declare-datatypes ((V!44825 0))(
  ( (V!44826 (val!14943 Int)) )
))
(declare-datatypes ((ValueCell!14177 0))(
  ( (ValueCellFull!14177 (v!17582 V!44825)) (EmptyCell!14177) )
))
(declare-fun mapRest!46487 () (Array (_ BitVec 32) ValueCell!14177))

(declare-fun mapKey!46487 () (_ BitVec 32))

(declare-fun mapValue!46487 () ValueCell!14177)

(declare-datatypes ((array!76314 0))(
  ( (array!76315 (arr!36803 (Array (_ BitVec 32) ValueCell!14177)) (size!37340 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76314)

(assert (=> mapNonEmpty!46487 (= (arr!36803 _values!996) (store mapRest!46487 mapKey!46487 mapValue!46487))))

(declare-fun b!1181755 () Bool)

(declare-fun e!671911 () Bool)

(declare-fun tp_is_empty!29773 () Bool)

(assert (=> b!1181755 (= e!671911 tp_is_empty!29773)))

(declare-fun b!1181756 () Bool)

(declare-datatypes ((Unit!39011 0))(
  ( (Unit!39012) )
))
(declare-fun e!671915 () Unit!39011)

(declare-fun Unit!39013 () Unit!39011)

(assert (=> b!1181756 (= e!671915 Unit!39013)))

(declare-fun b!1181757 () Bool)

(declare-fun res!785427 () Bool)

(declare-fun e!671912 () Bool)

(assert (=> b!1181757 (=> (not res!785427) (not e!671912))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181757 (= res!785427 (validKeyInArray!0 k!934))))

(declare-fun b!1181759 () Bool)

(declare-fun res!785425 () Bool)

(assert (=> b!1181759 (=> (not res!785425) (not e!671912))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76316 0))(
  ( (array!76317 (arr!36804 (Array (_ BitVec 32) (_ BitVec 64))) (size!37341 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76316)

(assert (=> b!1181759 (= res!785425 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37341 _keys!1208))))))

(declare-fun b!1181760 () Bool)

(declare-fun res!785423 () Bool)

(declare-fun e!671906 () Bool)

(assert (=> b!1181760 (=> (not res!785423) (not e!671906))))

(declare-fun lt!534632 () array!76316)

(declare-datatypes ((List!26027 0))(
  ( (Nil!26024) (Cons!26023 (h!27232 (_ BitVec 64)) (t!38269 List!26027)) )
))
(declare-fun arrayNoDuplicates!0 (array!76316 (_ BitVec 32) List!26027) Bool)

(assert (=> b!1181760 (= res!785423 (arrayNoDuplicates!0 lt!534632 #b00000000000000000000000000000000 Nil!26024))))

(declare-fun b!1181761 () Bool)

(declare-fun res!785418 () Bool)

(assert (=> b!1181761 (=> (not res!785418) (not e!671912))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181761 (= res!785418 (validMask!0 mask!1564))))

(declare-fun b!1181762 () Bool)

(assert (=> b!1181762 (= e!671912 e!671906)))

(declare-fun res!785428 () Bool)

(assert (=> b!1181762 (=> (not res!785428) (not e!671906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76316 (_ BitVec 32)) Bool)

(assert (=> b!1181762 (= res!785428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534632 mask!1564))))

(assert (=> b!1181762 (= lt!534632 (array!76317 (store (arr!36804 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37341 _keys!1208)))))

(declare-fun b!1181763 () Bool)

(declare-fun e!671916 () Bool)

(assert (=> b!1181763 (= e!671906 (not e!671916))))

(declare-fun res!785424 () Bool)

(assert (=> b!1181763 (=> res!785424 e!671916)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1181763 (= res!785424 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181763 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!534639 () Unit!39011)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76316 (_ BitVec 64) (_ BitVec 32)) Unit!39011)

(assert (=> b!1181763 (= lt!534639 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1181764 () Bool)

(declare-fun e!671907 () Bool)

(assert (=> b!1181764 (= e!671907 (and e!671911 mapRes!46487))))

(declare-fun condMapEmpty!46487 () Bool)

(declare-fun mapDefault!46487 () ValueCell!14177)

