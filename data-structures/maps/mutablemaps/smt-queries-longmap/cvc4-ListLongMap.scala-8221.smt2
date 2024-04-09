; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100274 () Bool)

(assert start!100274)

(declare-fun b!1195451 () Bool)

(declare-fun res!795566 () Bool)

(declare-fun e!679347 () Bool)

(assert (=> b!1195451 (=> (not res!795566) (not e!679347))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195451 (= res!795566 (validKeyInArray!0 k!934))))

(declare-fun b!1195452 () Bool)

(declare-fun res!795571 () Bool)

(assert (=> b!1195452 (=> (not res!795571) (not e!679347))))

(declare-datatypes ((array!77374 0))(
  ( (array!77375 (arr!37330 (Array (_ BitVec 32) (_ BitVec 64))) (size!37867 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77374)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77374 (_ BitVec 32)) Bool)

(assert (=> b!1195452 (= res!795571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195453 () Bool)

(declare-fun e!679348 () Bool)

(assert (=> b!1195453 (= e!679348 (not true))))

(declare-fun arrayContainsKey!0 (array!77374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195453 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39580 0))(
  ( (Unit!39581) )
))
(declare-fun lt!542886 () Unit!39580)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77374 (_ BitVec 64) (_ BitVec 32)) Unit!39580)

(assert (=> b!1195453 (= lt!542886 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!795564 () Bool)

(assert (=> start!100274 (=> (not res!795564) (not e!679347))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100274 (= res!795564 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37867 _keys!1208))))))

(assert (=> start!100274 e!679347))

(declare-fun array_inv!28356 (array!77374) Bool)

(assert (=> start!100274 (array_inv!28356 _keys!1208)))

(assert (=> start!100274 true))

(declare-datatypes ((V!45533 0))(
  ( (V!45534 (val!15209 Int)) )
))
(declare-datatypes ((ValueCell!14443 0))(
  ( (ValueCellFull!14443 (v!17848 V!45533)) (EmptyCell!14443) )
))
(declare-datatypes ((array!77376 0))(
  ( (array!77377 (arr!37331 (Array (_ BitVec 32) ValueCell!14443)) (size!37868 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77376)

(declare-fun e!679345 () Bool)

(declare-fun array_inv!28357 (array!77376) Bool)

(assert (=> start!100274 (and (array_inv!28357 _values!996) e!679345)))

(declare-fun b!1195454 () Bool)

(declare-fun res!795565 () Bool)

(assert (=> b!1195454 (=> (not res!795565) (not e!679347))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1195454 (= res!795565 (and (= (size!37868 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37867 _keys!1208) (size!37868 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195455 () Bool)

(declare-fun e!679343 () Bool)

(declare-fun tp_is_empty!30305 () Bool)

(assert (=> b!1195455 (= e!679343 tp_is_empty!30305)))

(declare-fun b!1195456 () Bool)

(declare-fun e!679346 () Bool)

(assert (=> b!1195456 (= e!679346 tp_is_empty!30305)))

(declare-fun b!1195457 () Bool)

(declare-fun res!795567 () Bool)

(assert (=> b!1195457 (=> (not res!795567) (not e!679348))))

(declare-fun lt!542885 () array!77374)

(declare-datatypes ((List!26442 0))(
  ( (Nil!26439) (Cons!26438 (h!27647 (_ BitVec 64)) (t!39120 List!26442)) )
))
(declare-fun arrayNoDuplicates!0 (array!77374 (_ BitVec 32) List!26442) Bool)

(assert (=> b!1195457 (= res!795567 (arrayNoDuplicates!0 lt!542885 #b00000000000000000000000000000000 Nil!26439))))

(declare-fun b!1195458 () Bool)

(assert (=> b!1195458 (= e!679347 e!679348)))

(declare-fun res!795569 () Bool)

(assert (=> b!1195458 (=> (not res!795569) (not e!679348))))

(assert (=> b!1195458 (= res!795569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542885 mask!1564))))

(assert (=> b!1195458 (= lt!542885 (array!77375 (store (arr!37330 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37867 _keys!1208)))))

(declare-fun b!1195459 () Bool)

(declare-fun res!795570 () Bool)

(assert (=> b!1195459 (=> (not res!795570) (not e!679347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195459 (= res!795570 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!47294 () Bool)

(declare-fun mapRes!47294 () Bool)

(declare-fun tp!89905 () Bool)

(assert (=> mapNonEmpty!47294 (= mapRes!47294 (and tp!89905 e!679343))))

(declare-fun mapValue!47294 () ValueCell!14443)

(declare-fun mapKey!47294 () (_ BitVec 32))

(declare-fun mapRest!47294 () (Array (_ BitVec 32) ValueCell!14443))

(assert (=> mapNonEmpty!47294 (= (arr!37331 _values!996) (store mapRest!47294 mapKey!47294 mapValue!47294))))

(declare-fun b!1195460 () Bool)

(declare-fun res!795563 () Bool)

(assert (=> b!1195460 (=> (not res!795563) (not e!679347))))

(assert (=> b!1195460 (= res!795563 (= (select (arr!37330 _keys!1208) i!673) k!934))))

(declare-fun b!1195461 () Bool)

(assert (=> b!1195461 (= e!679345 (and e!679346 mapRes!47294))))

(declare-fun condMapEmpty!47294 () Bool)

(declare-fun mapDefault!47294 () ValueCell!14443)

