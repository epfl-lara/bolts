; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97612 () Bool)

(assert start!97612)

(declare-fun b!1114444 () Bool)

(declare-fun res!743982 () Bool)

(declare-fun e!635212 () Bool)

(assert (=> b!1114444 (=> (not res!743982) (not e!635212))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1114444 (= res!743982 (validKeyInArray!0 k0!934))))

(declare-fun b!1114445 () Bool)

(declare-fun res!743984 () Bool)

(assert (=> b!1114445 (=> (not res!743984) (not e!635212))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72462 0))(
  ( (array!72463 (arr!34880 (Array (_ BitVec 32) (_ BitVec 64))) (size!35417 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72462)

(assert (=> b!1114445 (= res!743984 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35417 _keys!1208))))))

(declare-fun mapIsEmpty!43528 () Bool)

(declare-fun mapRes!43528 () Bool)

(assert (=> mapIsEmpty!43528 mapRes!43528))

(declare-fun b!1114446 () Bool)

(declare-fun e!635209 () Bool)

(declare-fun tp_is_empty!27807 () Bool)

(assert (=> b!1114446 (= e!635209 tp_is_empty!27807)))

(declare-fun b!1114447 () Bool)

(declare-fun res!743991 () Bool)

(assert (=> b!1114447 (=> (not res!743991) (not e!635212))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1114447 (= res!743991 (validMask!0 mask!1564))))

(declare-fun b!1114448 () Bool)

(declare-fun res!743989 () Bool)

(declare-fun e!635213 () Bool)

(assert (=> b!1114448 (=> (not res!743989) (not e!635213))))

(declare-fun lt!496809 () array!72462)

(declare-datatypes ((List!24437 0))(
  ( (Nil!24434) (Cons!24433 (h!25642 (_ BitVec 64)) (t!34925 List!24437)) )
))
(declare-fun arrayNoDuplicates!0 (array!72462 (_ BitVec 32) List!24437) Bool)

(assert (=> b!1114448 (= res!743989 (arrayNoDuplicates!0 lt!496809 #b00000000000000000000000000000000 Nil!24434))))

(declare-fun b!1114449 () Bool)

(declare-fun e!635211 () Bool)

(assert (=> b!1114449 (= e!635211 tp_is_empty!27807)))

(declare-fun b!1114450 () Bool)

(declare-fun e!635210 () Bool)

(assert (=> b!1114450 (= e!635210 (and e!635209 mapRes!43528))))

(declare-fun condMapEmpty!43528 () Bool)

(declare-datatypes ((V!42203 0))(
  ( (V!42204 (val!13960 Int)) )
))
(declare-datatypes ((ValueCell!13194 0))(
  ( (ValueCellFull!13194 (v!16594 V!42203)) (EmptyCell!13194) )
))
(declare-datatypes ((array!72464 0))(
  ( (array!72465 (arr!34881 (Array (_ BitVec 32) ValueCell!13194)) (size!35418 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72464)

(declare-fun mapDefault!43528 () ValueCell!13194)

(assert (=> b!1114450 (= condMapEmpty!43528 (= (arr!34881 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13194)) mapDefault!43528)))))

(declare-fun b!1114451 () Bool)

(assert (=> b!1114451 (= e!635212 e!635213)))

(declare-fun res!743985 () Bool)

(assert (=> b!1114451 (=> (not res!743985) (not e!635213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72462 (_ BitVec 32)) Bool)

(assert (=> b!1114451 (= res!743985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496809 mask!1564))))

(assert (=> b!1114451 (= lt!496809 (array!72463 (store (arr!34880 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35417 _keys!1208)))))

(declare-fun b!1114452 () Bool)

(assert (=> b!1114452 (= e!635213 (not true))))

(declare-fun arrayContainsKey!0 (array!72462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1114452 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36481 0))(
  ( (Unit!36482) )
))
(declare-fun lt!496808 () Unit!36481)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72462 (_ BitVec 64) (_ BitVec 32)) Unit!36481)

(assert (=> b!1114452 (= lt!496808 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1114453 () Bool)

(declare-fun res!743983 () Bool)

(assert (=> b!1114453 (=> (not res!743983) (not e!635212))))

(assert (=> b!1114453 (= res!743983 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24434))))

(declare-fun b!1114454 () Bool)

(declare-fun res!743990 () Bool)

(assert (=> b!1114454 (=> (not res!743990) (not e!635212))))

(assert (=> b!1114454 (= res!743990 (= (select (arr!34880 _keys!1208) i!673) k0!934))))

(declare-fun b!1114455 () Bool)

(declare-fun res!743988 () Bool)

(assert (=> b!1114455 (=> (not res!743988) (not e!635212))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1114455 (= res!743988 (and (= (size!35418 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35417 _keys!1208) (size!35418 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1114456 () Bool)

(declare-fun res!743986 () Bool)

(assert (=> b!1114456 (=> (not res!743986) (not e!635212))))

(assert (=> b!1114456 (= res!743986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!43528 () Bool)

(declare-fun tp!82773 () Bool)

(assert (=> mapNonEmpty!43528 (= mapRes!43528 (and tp!82773 e!635211))))

(declare-fun mapKey!43528 () (_ BitVec 32))

(declare-fun mapValue!43528 () ValueCell!13194)

(declare-fun mapRest!43528 () (Array (_ BitVec 32) ValueCell!13194))

(assert (=> mapNonEmpty!43528 (= (arr!34881 _values!996) (store mapRest!43528 mapKey!43528 mapValue!43528))))

(declare-fun res!743987 () Bool)

(assert (=> start!97612 (=> (not res!743987) (not e!635212))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97612 (= res!743987 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35417 _keys!1208))))))

(assert (=> start!97612 e!635212))

(declare-fun array_inv!26684 (array!72462) Bool)

(assert (=> start!97612 (array_inv!26684 _keys!1208)))

(assert (=> start!97612 true))

(declare-fun array_inv!26685 (array!72464) Bool)

(assert (=> start!97612 (and (array_inv!26685 _values!996) e!635210)))

(assert (= (and start!97612 res!743987) b!1114447))

(assert (= (and b!1114447 res!743991) b!1114455))

(assert (= (and b!1114455 res!743988) b!1114456))

(assert (= (and b!1114456 res!743986) b!1114453))

(assert (= (and b!1114453 res!743983) b!1114445))

(assert (= (and b!1114445 res!743984) b!1114444))

(assert (= (and b!1114444 res!743982) b!1114454))

(assert (= (and b!1114454 res!743990) b!1114451))

(assert (= (and b!1114451 res!743985) b!1114448))

(assert (= (and b!1114448 res!743989) b!1114452))

(assert (= (and b!1114450 condMapEmpty!43528) mapIsEmpty!43528))

(assert (= (and b!1114450 (not condMapEmpty!43528)) mapNonEmpty!43528))

(get-info :version)

(assert (= (and mapNonEmpty!43528 ((_ is ValueCellFull!13194) mapValue!43528)) b!1114449))

(assert (= (and b!1114450 ((_ is ValueCellFull!13194) mapDefault!43528)) b!1114446))

(assert (= start!97612 b!1114450))

(declare-fun m!1031421 () Bool)

(assert (=> b!1114456 m!1031421))

(declare-fun m!1031423 () Bool)

(assert (=> b!1114447 m!1031423))

(declare-fun m!1031425 () Bool)

(assert (=> b!1114452 m!1031425))

(declare-fun m!1031427 () Bool)

(assert (=> b!1114452 m!1031427))

(declare-fun m!1031429 () Bool)

(assert (=> b!1114451 m!1031429))

(declare-fun m!1031431 () Bool)

(assert (=> b!1114451 m!1031431))

(declare-fun m!1031433 () Bool)

(assert (=> b!1114448 m!1031433))

(declare-fun m!1031435 () Bool)

(assert (=> b!1114444 m!1031435))

(declare-fun m!1031437 () Bool)

(assert (=> start!97612 m!1031437))

(declare-fun m!1031439 () Bool)

(assert (=> start!97612 m!1031439))

(declare-fun m!1031441 () Bool)

(assert (=> b!1114454 m!1031441))

(declare-fun m!1031443 () Bool)

(assert (=> mapNonEmpty!43528 m!1031443))

(declare-fun m!1031445 () Bool)

(assert (=> b!1114453 m!1031445))

(check-sat (not start!97612) (not mapNonEmpty!43528) (not b!1114452) (not b!1114451) (not b!1114453) (not b!1114456) (not b!1114447) tp_is_empty!27807 (not b!1114444) (not b!1114448))
(check-sat)
