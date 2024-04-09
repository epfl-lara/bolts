; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97516 () Bool)

(assert start!97516)

(declare-fun b!1112572 () Bool)

(declare-fun res!742549 () Bool)

(declare-fun e!634349 () Bool)

(assert (=> b!1112572 (=> (not res!742549) (not e!634349))))

(declare-datatypes ((array!72278 0))(
  ( (array!72279 (arr!34788 (Array (_ BitVec 32) (_ BitVec 64))) (size!35325 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72278)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42075 0))(
  ( (V!42076 (val!13912 Int)) )
))
(declare-datatypes ((ValueCell!13146 0))(
  ( (ValueCellFull!13146 (v!16546 V!42075)) (EmptyCell!13146) )
))
(declare-datatypes ((array!72280 0))(
  ( (array!72281 (arr!34789 (Array (_ BitVec 32) ValueCell!13146)) (size!35326 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72280)

(assert (=> b!1112572 (= res!742549 (and (= (size!35326 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35325 _keys!1208) (size!35326 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112573 () Bool)

(declare-fun res!742551 () Bool)

(assert (=> b!1112573 (=> (not res!742551) (not e!634349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112573 (= res!742551 (validMask!0 mask!1564))))

(declare-fun b!1112574 () Bool)

(declare-fun e!634347 () Bool)

(declare-fun e!634346 () Bool)

(declare-fun mapRes!43384 () Bool)

(assert (=> b!1112574 (= e!634347 (and e!634346 mapRes!43384))))

(declare-fun condMapEmpty!43384 () Bool)

(declare-fun mapDefault!43384 () ValueCell!13146)

(assert (=> b!1112574 (= condMapEmpty!43384 (= (arr!34789 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13146)) mapDefault!43384)))))

(declare-fun mapNonEmpty!43384 () Bool)

(declare-fun tp!82629 () Bool)

(declare-fun e!634344 () Bool)

(assert (=> mapNonEmpty!43384 (= mapRes!43384 (and tp!82629 e!634344))))

(declare-fun mapRest!43384 () (Array (_ BitVec 32) ValueCell!13146))

(declare-fun mapValue!43384 () ValueCell!13146)

(declare-fun mapKey!43384 () (_ BitVec 32))

(assert (=> mapNonEmpty!43384 (= (arr!34789 _values!996) (store mapRest!43384 mapKey!43384 mapValue!43384))))

(declare-fun b!1112575 () Bool)

(declare-fun res!742542 () Bool)

(assert (=> b!1112575 (=> (not res!742542) (not e!634349))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1112575 (= res!742542 (= (select (arr!34788 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!43384 () Bool)

(assert (=> mapIsEmpty!43384 mapRes!43384))

(declare-fun b!1112576 () Bool)

(declare-fun res!742546 () Bool)

(assert (=> b!1112576 (=> (not res!742546) (not e!634349))))

(assert (=> b!1112576 (= res!742546 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35325 _keys!1208))))))

(declare-fun b!1112578 () Bool)

(declare-fun res!742543 () Bool)

(assert (=> b!1112578 (=> (not res!742543) (not e!634349))))

(declare-datatypes ((List!24402 0))(
  ( (Nil!24399) (Cons!24398 (h!25607 (_ BitVec 64)) (t!34890 List!24402)) )
))
(declare-fun arrayNoDuplicates!0 (array!72278 (_ BitVec 32) List!24402) Bool)

(assert (=> b!1112578 (= res!742543 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24399))))

(declare-fun b!1112579 () Bool)

(declare-fun e!634345 () Bool)

(assert (=> b!1112579 (= e!634349 e!634345)))

(declare-fun res!742547 () Bool)

(assert (=> b!1112579 (=> (not res!742547) (not e!634345))))

(declare-fun lt!496520 () array!72278)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72278 (_ BitVec 32)) Bool)

(assert (=> b!1112579 (= res!742547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496520 mask!1564))))

(assert (=> b!1112579 (= lt!496520 (array!72279 (store (arr!34788 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35325 _keys!1208)))))

(declare-fun b!1112580 () Bool)

(declare-fun res!742544 () Bool)

(assert (=> b!1112580 (=> (not res!742544) (not e!634349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112580 (= res!742544 (validKeyInArray!0 k0!934))))

(declare-fun b!1112581 () Bool)

(assert (=> b!1112581 (= e!634345 (not true))))

(declare-fun arrayContainsKey!0 (array!72278 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112581 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36423 0))(
  ( (Unit!36424) )
))
(declare-fun lt!496521 () Unit!36423)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72278 (_ BitVec 64) (_ BitVec 32)) Unit!36423)

(assert (=> b!1112581 (= lt!496521 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1112582 () Bool)

(declare-fun tp_is_empty!27711 () Bool)

(assert (=> b!1112582 (= e!634346 tp_is_empty!27711)))

(declare-fun b!1112577 () Bool)

(assert (=> b!1112577 (= e!634344 tp_is_empty!27711)))

(declare-fun res!742548 () Bool)

(assert (=> start!97516 (=> (not res!742548) (not e!634349))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97516 (= res!742548 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35325 _keys!1208))))))

(assert (=> start!97516 e!634349))

(declare-fun array_inv!26624 (array!72278) Bool)

(assert (=> start!97516 (array_inv!26624 _keys!1208)))

(assert (=> start!97516 true))

(declare-fun array_inv!26625 (array!72280) Bool)

(assert (=> start!97516 (and (array_inv!26625 _values!996) e!634347)))

(declare-fun b!1112583 () Bool)

(declare-fun res!742550 () Bool)

(assert (=> b!1112583 (=> (not res!742550) (not e!634345))))

(assert (=> b!1112583 (= res!742550 (arrayNoDuplicates!0 lt!496520 #b00000000000000000000000000000000 Nil!24399))))

(declare-fun b!1112584 () Bool)

(declare-fun res!742545 () Bool)

(assert (=> b!1112584 (=> (not res!742545) (not e!634349))))

(assert (=> b!1112584 (= res!742545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!97516 res!742548) b!1112573))

(assert (= (and b!1112573 res!742551) b!1112572))

(assert (= (and b!1112572 res!742549) b!1112584))

(assert (= (and b!1112584 res!742545) b!1112578))

(assert (= (and b!1112578 res!742543) b!1112576))

(assert (= (and b!1112576 res!742546) b!1112580))

(assert (= (and b!1112580 res!742544) b!1112575))

(assert (= (and b!1112575 res!742542) b!1112579))

(assert (= (and b!1112579 res!742547) b!1112583))

(assert (= (and b!1112583 res!742550) b!1112581))

(assert (= (and b!1112574 condMapEmpty!43384) mapIsEmpty!43384))

(assert (= (and b!1112574 (not condMapEmpty!43384)) mapNonEmpty!43384))

(get-info :version)

(assert (= (and mapNonEmpty!43384 ((_ is ValueCellFull!13146) mapValue!43384)) b!1112577))

(assert (= (and b!1112574 ((_ is ValueCellFull!13146) mapDefault!43384)) b!1112582))

(assert (= start!97516 b!1112574))

(declare-fun m!1030173 () Bool)

(assert (=> b!1112573 m!1030173))

(declare-fun m!1030175 () Bool)

(assert (=> b!1112581 m!1030175))

(declare-fun m!1030177 () Bool)

(assert (=> b!1112581 m!1030177))

(declare-fun m!1030179 () Bool)

(assert (=> b!1112580 m!1030179))

(declare-fun m!1030181 () Bool)

(assert (=> b!1112583 m!1030181))

(declare-fun m!1030183 () Bool)

(assert (=> b!1112578 m!1030183))

(declare-fun m!1030185 () Bool)

(assert (=> b!1112579 m!1030185))

(declare-fun m!1030187 () Bool)

(assert (=> b!1112579 m!1030187))

(declare-fun m!1030189 () Bool)

(assert (=> start!97516 m!1030189))

(declare-fun m!1030191 () Bool)

(assert (=> start!97516 m!1030191))

(declare-fun m!1030193 () Bool)

(assert (=> b!1112575 m!1030193))

(declare-fun m!1030195 () Bool)

(assert (=> mapNonEmpty!43384 m!1030195))

(declare-fun m!1030197 () Bool)

(assert (=> b!1112584 m!1030197))

(check-sat tp_is_empty!27711 (not b!1112583) (not b!1112573) (not b!1112579) (not mapNonEmpty!43384) (not b!1112580) (not b!1112581) (not b!1112584) (not b!1112578) (not start!97516))
(check-sat)
