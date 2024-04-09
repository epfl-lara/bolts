; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100272 () Bool)

(assert start!100272)

(declare-fun b!1195412 () Bool)

(declare-fun e!679329 () Bool)

(declare-fun tp_is_empty!30303 () Bool)

(assert (=> b!1195412 (= e!679329 tp_is_empty!30303)))

(declare-fun b!1195413 () Bool)

(declare-fun res!795533 () Bool)

(declare-fun e!679326 () Bool)

(assert (=> b!1195413 (=> (not res!795533) (not e!679326))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77370 0))(
  ( (array!77371 (arr!37328 (Array (_ BitVec 32) (_ BitVec 64))) (size!37865 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77370)

(assert (=> b!1195413 (= res!795533 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37865 _keys!1208))))))

(declare-fun b!1195414 () Bool)

(declare-fun res!795534 () Bool)

(assert (=> b!1195414 (=> (not res!795534) (not e!679326))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195414 (= res!795534 (validKeyInArray!0 k0!934))))

(declare-fun b!1195415 () Bool)

(declare-fun res!795532 () Bool)

(assert (=> b!1195415 (=> (not res!795532) (not e!679326))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45531 0))(
  ( (V!45532 (val!15208 Int)) )
))
(declare-datatypes ((ValueCell!14442 0))(
  ( (ValueCellFull!14442 (v!17847 V!45531)) (EmptyCell!14442) )
))
(declare-datatypes ((array!77372 0))(
  ( (array!77373 (arr!37329 (Array (_ BitVec 32) ValueCell!14442)) (size!37866 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77372)

(assert (=> b!1195415 (= res!795532 (and (= (size!37866 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37865 _keys!1208) (size!37866 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1195416 () Bool)

(declare-fun e!679328 () Bool)

(declare-fun mapRes!47291 () Bool)

(assert (=> b!1195416 (= e!679328 (and e!679329 mapRes!47291))))

(declare-fun condMapEmpty!47291 () Bool)

(declare-fun mapDefault!47291 () ValueCell!14442)

(assert (=> b!1195416 (= condMapEmpty!47291 (= (arr!37329 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14442)) mapDefault!47291)))))

(declare-fun b!1195417 () Bool)

(declare-fun e!679330 () Bool)

(assert (=> b!1195417 (= e!679330 tp_is_empty!30303)))

(declare-fun b!1195418 () Bool)

(declare-fun res!795536 () Bool)

(declare-fun e!679325 () Bool)

(assert (=> b!1195418 (=> (not res!795536) (not e!679325))))

(declare-fun lt!542879 () array!77370)

(declare-datatypes ((List!26441 0))(
  ( (Nil!26438) (Cons!26437 (h!27646 (_ BitVec 64)) (t!39119 List!26441)) )
))
(declare-fun arrayNoDuplicates!0 (array!77370 (_ BitVec 32) List!26441) Bool)

(assert (=> b!1195418 (= res!795536 (arrayNoDuplicates!0 lt!542879 #b00000000000000000000000000000000 Nil!26438))))

(declare-fun b!1195420 () Bool)

(declare-fun res!795540 () Bool)

(assert (=> b!1195420 (=> (not res!795540) (not e!679326))))

(assert (=> b!1195420 (= res!795540 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26438))))

(declare-fun b!1195421 () Bool)

(declare-fun res!795539 () Bool)

(assert (=> b!1195421 (=> (not res!795539) (not e!679326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77370 (_ BitVec 32)) Bool)

(assert (=> b!1195421 (= res!795539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195422 () Bool)

(assert (=> b!1195422 (= e!679325 (not true))))

(declare-fun arrayContainsKey!0 (array!77370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195422 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39578 0))(
  ( (Unit!39579) )
))
(declare-fun lt!542880 () Unit!39578)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77370 (_ BitVec 64) (_ BitVec 32)) Unit!39578)

(assert (=> b!1195422 (= lt!542880 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!47291 () Bool)

(assert (=> mapIsEmpty!47291 mapRes!47291))

(declare-fun b!1195423 () Bool)

(assert (=> b!1195423 (= e!679326 e!679325)))

(declare-fun res!795538 () Bool)

(assert (=> b!1195423 (=> (not res!795538) (not e!679325))))

(assert (=> b!1195423 (= res!795538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542879 mask!1564))))

(assert (=> b!1195423 (= lt!542879 (array!77371 (store (arr!37328 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37865 _keys!1208)))))

(declare-fun res!795535 () Bool)

(assert (=> start!100272 (=> (not res!795535) (not e!679326))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100272 (= res!795535 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37865 _keys!1208))))))

(assert (=> start!100272 e!679326))

(declare-fun array_inv!28354 (array!77370) Bool)

(assert (=> start!100272 (array_inv!28354 _keys!1208)))

(assert (=> start!100272 true))

(declare-fun array_inv!28355 (array!77372) Bool)

(assert (=> start!100272 (and (array_inv!28355 _values!996) e!679328)))

(declare-fun b!1195419 () Bool)

(declare-fun res!795541 () Bool)

(assert (=> b!1195419 (=> (not res!795541) (not e!679326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195419 (= res!795541 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!47291 () Bool)

(declare-fun tp!89902 () Bool)

(assert (=> mapNonEmpty!47291 (= mapRes!47291 (and tp!89902 e!679330))))

(declare-fun mapValue!47291 () ValueCell!14442)

(declare-fun mapRest!47291 () (Array (_ BitVec 32) ValueCell!14442))

(declare-fun mapKey!47291 () (_ BitVec 32))

(assert (=> mapNonEmpty!47291 (= (arr!37329 _values!996) (store mapRest!47291 mapKey!47291 mapValue!47291))))

(declare-fun b!1195424 () Bool)

(declare-fun res!795537 () Bool)

(assert (=> b!1195424 (=> (not res!795537) (not e!679326))))

(assert (=> b!1195424 (= res!795537 (= (select (arr!37328 _keys!1208) i!673) k0!934))))

(assert (= (and start!100272 res!795535) b!1195419))

(assert (= (and b!1195419 res!795541) b!1195415))

(assert (= (and b!1195415 res!795532) b!1195421))

(assert (= (and b!1195421 res!795539) b!1195420))

(assert (= (and b!1195420 res!795540) b!1195413))

(assert (= (and b!1195413 res!795533) b!1195414))

(assert (= (and b!1195414 res!795534) b!1195424))

(assert (= (and b!1195424 res!795537) b!1195423))

(assert (= (and b!1195423 res!795538) b!1195418))

(assert (= (and b!1195418 res!795536) b!1195422))

(assert (= (and b!1195416 condMapEmpty!47291) mapIsEmpty!47291))

(assert (= (and b!1195416 (not condMapEmpty!47291)) mapNonEmpty!47291))

(get-info :version)

(assert (= (and mapNonEmpty!47291 ((_ is ValueCellFull!14442) mapValue!47291)) b!1195417))

(assert (= (and b!1195416 ((_ is ValueCellFull!14442) mapDefault!47291)) b!1195412))

(assert (= start!100272 b!1195416))

(declare-fun m!1103023 () Bool)

(assert (=> b!1195422 m!1103023))

(declare-fun m!1103025 () Bool)

(assert (=> b!1195422 m!1103025))

(declare-fun m!1103027 () Bool)

(assert (=> b!1195424 m!1103027))

(declare-fun m!1103029 () Bool)

(assert (=> b!1195423 m!1103029))

(declare-fun m!1103031 () Bool)

(assert (=> b!1195423 m!1103031))

(declare-fun m!1103033 () Bool)

(assert (=> start!100272 m!1103033))

(declare-fun m!1103035 () Bool)

(assert (=> start!100272 m!1103035))

(declare-fun m!1103037 () Bool)

(assert (=> b!1195421 m!1103037))

(declare-fun m!1103039 () Bool)

(assert (=> b!1195414 m!1103039))

(declare-fun m!1103041 () Bool)

(assert (=> b!1195420 m!1103041))

(declare-fun m!1103043 () Bool)

(assert (=> b!1195418 m!1103043))

(declare-fun m!1103045 () Bool)

(assert (=> b!1195419 m!1103045))

(declare-fun m!1103047 () Bool)

(assert (=> mapNonEmpty!47291 m!1103047))

(check-sat (not b!1195414) (not b!1195420) (not mapNonEmpty!47291) (not start!100272) (not b!1195419) tp_is_empty!30303 (not b!1195423) (not b!1195421) (not b!1195418) (not b!1195422))
(check-sat)
