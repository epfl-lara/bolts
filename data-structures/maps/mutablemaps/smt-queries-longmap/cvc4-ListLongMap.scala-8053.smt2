; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99198 () Bool)

(assert start!99198)

(declare-fun b_free!24767 () Bool)

(declare-fun b_next!24767 () Bool)

(assert (=> start!99198 (= b_free!24767 (not b_next!24767))))

(declare-fun tp!87012 () Bool)

(declare-fun b_and!40397 () Bool)

(assert (=> start!99198 (= tp!87012 b_and!40397)))

(declare-fun b!1167014 () Bool)

(declare-fun e!663372 () Bool)

(declare-fun tp_is_empty!29297 () Bool)

(assert (=> b!1167014 (= e!663372 tp_is_empty!29297)))

(declare-fun mapNonEmpty!45770 () Bool)

(declare-fun mapRes!45770 () Bool)

(declare-fun tp!87013 () Bool)

(assert (=> mapNonEmpty!45770 (= mapRes!45770 (and tp!87013 e!663372))))

(declare-fun mapKey!45770 () (_ BitVec 32))

(declare-datatypes ((V!44189 0))(
  ( (V!44190 (val!14705 Int)) )
))
(declare-datatypes ((ValueCell!13939 0))(
  ( (ValueCellFull!13939 (v!17343 V!44189)) (EmptyCell!13939) )
))
(declare-fun mapValue!45770 () ValueCell!13939)

(declare-datatypes ((array!75372 0))(
  ( (array!75373 (arr!36333 (Array (_ BitVec 32) ValueCell!13939)) (size!36870 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75372)

(declare-fun mapRest!45770 () (Array (_ BitVec 32) ValueCell!13939))

(assert (=> mapNonEmpty!45770 (= (arr!36333 _values!996) (store mapRest!45770 mapKey!45770 mapValue!45770))))

(declare-fun b!1167015 () Bool)

(declare-fun res!774235 () Bool)

(declare-fun e!663369 () Bool)

(assert (=> b!1167015 (=> (not res!774235) (not e!663369))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1167015 (= res!774235 (validKeyInArray!0 k!934))))

(declare-fun b!1167016 () Bool)

(declare-fun e!663365 () Bool)

(declare-fun e!663366 () Bool)

(assert (=> b!1167016 (= e!663365 (not e!663366))))

(declare-fun res!774236 () Bool)

(assert (=> b!1167016 (=> res!774236 e!663366)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1167016 (= res!774236 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75374 0))(
  ( (array!75375 (arr!36334 (Array (_ BitVec 32) (_ BitVec 64))) (size!36871 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75374)

(declare-fun arrayContainsKey!0 (array!75374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1167016 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38404 0))(
  ( (Unit!38405) )
))
(declare-fun lt!525447 () Unit!38404)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75374 (_ BitVec 64) (_ BitVec 32)) Unit!38404)

(assert (=> b!1167016 (= lt!525447 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1167017 () Bool)

(assert (=> b!1167017 (= e!663369 e!663365)))

(declare-fun res!774230 () Bool)

(assert (=> b!1167017 (=> (not res!774230) (not e!663365))))

(declare-fun lt!525444 () array!75374)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75374 (_ BitVec 32)) Bool)

(assert (=> b!1167017 (= res!774230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525444 mask!1564))))

(assert (=> b!1167017 (= lt!525444 (array!75375 (store (arr!36334 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36871 _keys!1208)))))

(declare-fun b!1167018 () Bool)

(declare-fun res!774226 () Bool)

(assert (=> b!1167018 (=> (not res!774226) (not e!663369))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1167018 (= res!774226 (and (= (size!36870 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36871 _keys!1208) (size!36870 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1167019 () Bool)

(declare-fun res!774227 () Bool)

(assert (=> b!1167019 (=> (not res!774227) (not e!663365))))

(declare-datatypes ((List!25615 0))(
  ( (Nil!25612) (Cons!25611 (h!26820 (_ BitVec 64)) (t!37381 List!25615)) )
))
(declare-fun arrayNoDuplicates!0 (array!75374 (_ BitVec 32) List!25615) Bool)

(assert (=> b!1167019 (= res!774227 (arrayNoDuplicates!0 lt!525444 #b00000000000000000000000000000000 Nil!25612))))

(declare-fun b!1167020 () Bool)

(declare-fun res!774229 () Bool)

(assert (=> b!1167020 (=> (not res!774229) (not e!663369))))

(assert (=> b!1167020 (= res!774229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1167021 () Bool)

(declare-fun res!774233 () Bool)

(assert (=> b!1167021 (=> (not res!774233) (not e!663369))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1167021 (= res!774233 (validMask!0 mask!1564))))

(declare-fun b!1167022 () Bool)

(declare-fun e!663371 () Bool)

(declare-fun e!663367 () Bool)

(assert (=> b!1167022 (= e!663371 (and e!663367 mapRes!45770))))

(declare-fun condMapEmpty!45770 () Bool)

(declare-fun mapDefault!45770 () ValueCell!13939)

