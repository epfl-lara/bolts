; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100404 () Bool)

(assert start!100404)

(declare-fun res!797288 () Bool)

(declare-fun e!680498 () Bool)

(assert (=> start!100404 (=> (not res!797288) (not e!680498))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77586 0))(
  ( (array!77587 (arr!37435 (Array (_ BitVec 32) (_ BitVec 64))) (size!37972 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77586)

(assert (=> start!100404 (= res!797288 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37972 _keys!1208))))))

(assert (=> start!100404 e!680498))

(declare-fun array_inv!28434 (array!77586) Bool)

(assert (=> start!100404 (array_inv!28434 _keys!1208)))

(assert (=> start!100404 true))

(declare-datatypes ((V!45677 0))(
  ( (V!45678 (val!15263 Int)) )
))
(declare-datatypes ((ValueCell!14497 0))(
  ( (ValueCellFull!14497 (v!17902 V!45677)) (EmptyCell!14497) )
))
(declare-datatypes ((array!77588 0))(
  ( (array!77589 (arr!37436 (Array (_ BitVec 32) ValueCell!14497)) (size!37973 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77588)

(declare-fun e!680497 () Bool)

(declare-fun array_inv!28435 (array!77588) Bool)

(assert (=> start!100404 (and (array_inv!28435 _values!996) e!680497)))

(declare-fun b!1197853 () Bool)

(declare-fun res!797280 () Bool)

(assert (=> b!1197853 (=> (not res!797280) (not e!680498))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197853 (= res!797280 (validMask!0 mask!1564))))

(declare-fun b!1197854 () Bool)

(declare-fun res!797284 () Bool)

(declare-fun e!680494 () Bool)

(assert (=> b!1197854 (=> (not res!797284) (not e!680494))))

(declare-fun lt!543317 () array!77586)

(declare-datatypes ((List!26497 0))(
  ( (Nil!26494) (Cons!26493 (h!27702 (_ BitVec 64)) (t!39205 List!26497)) )
))
(declare-fun arrayNoDuplicates!0 (array!77586 (_ BitVec 32) List!26497) Bool)

(assert (=> b!1197854 (= res!797284 (arrayNoDuplicates!0 lt!543317 #b00000000000000000000000000000000 Nil!26494))))

(declare-fun mapNonEmpty!47459 () Bool)

(declare-fun mapRes!47459 () Bool)

(declare-fun tp!90115 () Bool)

(declare-fun e!680496 () Bool)

(assert (=> mapNonEmpty!47459 (= mapRes!47459 (and tp!90115 e!680496))))

(declare-fun mapValue!47459 () ValueCell!14497)

(declare-fun mapRest!47459 () (Array (_ BitVec 32) ValueCell!14497))

(declare-fun mapKey!47459 () (_ BitVec 32))

(assert (=> mapNonEmpty!47459 (= (arr!37436 _values!996) (store mapRest!47459 mapKey!47459 mapValue!47459))))

(declare-fun b!1197855 () Bool)

(declare-fun e!680495 () Bool)

(declare-fun tp_is_empty!30413 () Bool)

(assert (=> b!1197855 (= e!680495 tp_is_empty!30413)))

(declare-fun b!1197856 () Bool)

(assert (=> b!1197856 (= e!680498 e!680494)))

(declare-fun res!797281 () Bool)

(assert (=> b!1197856 (=> (not res!797281) (not e!680494))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77586 (_ BitVec 32)) Bool)

(assert (=> b!1197856 (= res!797281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543317 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1197856 (= lt!543317 (array!77587 (store (arr!37435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37972 _keys!1208)))))

(declare-fun b!1197857 () Bool)

(declare-fun res!797283 () Bool)

(assert (=> b!1197857 (=> (not res!797283) (not e!680498))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1197857 (= res!797283 (and (= (size!37973 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37972 _keys!1208) (size!37973 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1197858 () Bool)

(declare-fun res!797287 () Bool)

(assert (=> b!1197858 (=> (not res!797287) (not e!680498))))

(assert (=> b!1197858 (= res!797287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197859 () Bool)

(declare-fun res!797286 () Bool)

(assert (=> b!1197859 (=> (not res!797286) (not e!680498))))

(assert (=> b!1197859 (= res!797286 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26494))))

(declare-fun b!1197860 () Bool)

(assert (=> b!1197860 (= e!680496 tp_is_empty!30413)))

(declare-fun b!1197861 () Bool)

(declare-fun res!797282 () Bool)

(assert (=> b!1197861 (=> (not res!797282) (not e!680498))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197861 (= res!797282 (validKeyInArray!0 k!934))))

(declare-fun b!1197862 () Bool)

(declare-fun res!797289 () Bool)

(assert (=> b!1197862 (=> (not res!797289) (not e!680498))))

(assert (=> b!1197862 (= res!797289 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37972 _keys!1208))))))

(declare-fun b!1197863 () Bool)

(assert (=> b!1197863 (= e!680497 (and e!680495 mapRes!47459))))

(declare-fun condMapEmpty!47459 () Bool)

(declare-fun mapDefault!47459 () ValueCell!14497)

