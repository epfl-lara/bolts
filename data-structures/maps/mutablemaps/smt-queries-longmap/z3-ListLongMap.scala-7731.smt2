; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97152 () Bool)

(assert start!97152)

(declare-fun b!1104510 () Bool)

(declare-fun e!630495 () Bool)

(declare-fun tp_is_empty!27363 () Bool)

(assert (=> b!1104510 (= e!630495 tp_is_empty!27363)))

(declare-fun res!737002 () Bool)

(declare-fun e!630498 () Bool)

(assert (=> start!97152 (=> (not res!737002) (not e!630498))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71604 0))(
  ( (array!71605 (arr!34452 (Array (_ BitVec 32) (_ BitVec 64))) (size!34989 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71604)

(assert (=> start!97152 (= res!737002 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34989 _keys!1208))))))

(assert (=> start!97152 e!630498))

(declare-fun array_inv!26386 (array!71604) Bool)

(assert (=> start!97152 (array_inv!26386 _keys!1208)))

(assert (=> start!97152 true))

(declare-datatypes ((V!41611 0))(
  ( (V!41612 (val!13738 Int)) )
))
(declare-datatypes ((ValueCell!12972 0))(
  ( (ValueCellFull!12972 (v!16372 V!41611)) (EmptyCell!12972) )
))
(declare-datatypes ((array!71606 0))(
  ( (array!71607 (arr!34453 (Array (_ BitVec 32) ValueCell!12972)) (size!34990 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71606)

(declare-fun e!630494 () Bool)

(declare-fun array_inv!26387 (array!71606) Bool)

(assert (=> start!97152 (and (array_inv!26387 _values!996) e!630494)))

(declare-fun b!1104511 () Bool)

(declare-fun res!737001 () Bool)

(assert (=> b!1104511 (=> (not res!737001) (not e!630498))))

(declare-datatypes ((List!24180 0))(
  ( (Nil!24177) (Cons!24176 (h!25385 (_ BitVec 64)) (t!34452 List!24180)) )
))
(declare-fun arrayNoDuplicates!0 (array!71604 (_ BitVec 32) List!24180) Bool)

(assert (=> b!1104511 (= res!737001 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24177))))

(declare-fun b!1104512 () Bool)

(declare-fun mapRes!42859 () Bool)

(assert (=> b!1104512 (= e!630494 (and e!630495 mapRes!42859))))

(declare-fun condMapEmpty!42859 () Bool)

(declare-fun mapDefault!42859 () ValueCell!12972)

(assert (=> b!1104512 (= condMapEmpty!42859 (= (arr!34453 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12972)) mapDefault!42859)))))

(declare-fun b!1104513 () Bool)

(declare-fun res!736995 () Bool)

(assert (=> b!1104513 (=> (not res!736995) (not e!630498))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104513 (= res!736995 (validKeyInArray!0 k0!934))))

(declare-fun b!1104514 () Bool)

(declare-fun res!737000 () Bool)

(assert (=> b!1104514 (=> (not res!737000) (not e!630498))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1104514 (= res!737000 (and (= (size!34990 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34989 _keys!1208) (size!34990 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!42859 () Bool)

(declare-fun tp!81780 () Bool)

(declare-fun e!630499 () Bool)

(assert (=> mapNonEmpty!42859 (= mapRes!42859 (and tp!81780 e!630499))))

(declare-fun mapKey!42859 () (_ BitVec 32))

(declare-fun mapRest!42859 () (Array (_ BitVec 32) ValueCell!12972))

(declare-fun mapValue!42859 () ValueCell!12972)

(assert (=> mapNonEmpty!42859 (= (arr!34453 _values!996) (store mapRest!42859 mapKey!42859 mapValue!42859))))

(declare-fun b!1104515 () Bool)

(declare-fun res!736999 () Bool)

(assert (=> b!1104515 (=> (not res!736999) (not e!630498))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1104515 (= res!736999 (= (select (arr!34452 _keys!1208) i!673) k0!934))))

(declare-fun b!1104516 () Bool)

(declare-fun res!736994 () Bool)

(assert (=> b!1104516 (=> (not res!736994) (not e!630498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71604 (_ BitVec 32)) Bool)

(assert (=> b!1104516 (= res!736994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104517 () Bool)

(declare-fun e!630497 () Bool)

(assert (=> b!1104517 (= e!630498 e!630497)))

(declare-fun res!736996 () Bool)

(assert (=> b!1104517 (=> (not res!736996) (not e!630497))))

(declare-fun lt!495137 () array!71604)

(assert (=> b!1104517 (= res!736996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495137 mask!1564))))

(assert (=> b!1104517 (= lt!495137 (array!71605 (store (arr!34452 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34989 _keys!1208)))))

(declare-fun mapIsEmpty!42859 () Bool)

(assert (=> mapIsEmpty!42859 mapRes!42859))

(declare-fun b!1104518 () Bool)

(assert (=> b!1104518 (= e!630497 false)))

(declare-fun lt!495138 () Bool)

(assert (=> b!1104518 (= lt!495138 (arrayNoDuplicates!0 lt!495137 #b00000000000000000000000000000000 Nil!24177))))

(declare-fun b!1104519 () Bool)

(declare-fun res!736997 () Bool)

(assert (=> b!1104519 (=> (not res!736997) (not e!630498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104519 (= res!736997 (validMask!0 mask!1564))))

(declare-fun b!1104520 () Bool)

(assert (=> b!1104520 (= e!630499 tp_is_empty!27363)))

(declare-fun b!1104521 () Bool)

(declare-fun res!736998 () Bool)

(assert (=> b!1104521 (=> (not res!736998) (not e!630498))))

(assert (=> b!1104521 (= res!736998 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34989 _keys!1208))))))

(assert (= (and start!97152 res!737002) b!1104519))

(assert (= (and b!1104519 res!736997) b!1104514))

(assert (= (and b!1104514 res!737000) b!1104516))

(assert (= (and b!1104516 res!736994) b!1104511))

(assert (= (and b!1104511 res!737001) b!1104521))

(assert (= (and b!1104521 res!736998) b!1104513))

(assert (= (and b!1104513 res!736995) b!1104515))

(assert (= (and b!1104515 res!736999) b!1104517))

(assert (= (and b!1104517 res!736996) b!1104518))

(assert (= (and b!1104512 condMapEmpty!42859) mapIsEmpty!42859))

(assert (= (and b!1104512 (not condMapEmpty!42859)) mapNonEmpty!42859))

(get-info :version)

(assert (= (and mapNonEmpty!42859 ((_ is ValueCellFull!12972) mapValue!42859)) b!1104520))

(assert (= (and b!1104512 ((_ is ValueCellFull!12972) mapDefault!42859)) b!1104510))

(assert (= start!97152 b!1104512))

(declare-fun m!1024347 () Bool)

(assert (=> b!1104519 m!1024347))

(declare-fun m!1024349 () Bool)

(assert (=> b!1104511 m!1024349))

(declare-fun m!1024351 () Bool)

(assert (=> b!1104517 m!1024351))

(declare-fun m!1024353 () Bool)

(assert (=> b!1104517 m!1024353))

(declare-fun m!1024355 () Bool)

(assert (=> start!97152 m!1024355))

(declare-fun m!1024357 () Bool)

(assert (=> start!97152 m!1024357))

(declare-fun m!1024359 () Bool)

(assert (=> b!1104515 m!1024359))

(declare-fun m!1024361 () Bool)

(assert (=> mapNonEmpty!42859 m!1024361))

(declare-fun m!1024363 () Bool)

(assert (=> b!1104513 m!1024363))

(declare-fun m!1024365 () Bool)

(assert (=> b!1104516 m!1024365))

(declare-fun m!1024367 () Bool)

(assert (=> b!1104518 m!1024367))

(check-sat (not b!1104519) tp_is_empty!27363 (not start!97152) (not b!1104516) (not b!1104517) (not b!1104513) (not b!1104511) (not mapNonEmpty!42859) (not b!1104518))
(check-sat)
