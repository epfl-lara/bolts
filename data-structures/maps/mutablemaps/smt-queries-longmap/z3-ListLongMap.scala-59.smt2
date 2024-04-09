; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!888 () Bool)

(assert start!888)

(declare-fun b_free!261 () Bool)

(declare-fun b_next!261 () Bool)

(assert (=> start!888 (= b_free!261 (not b_next!261))))

(declare-fun tp!1016 () Bool)

(declare-fun b_and!409 () Bool)

(assert (=> start!888 (= tp!1016 b_and!409)))

(declare-fun b!7370 () Bool)

(declare-fun e!4089 () Bool)

(declare-fun e!4092 () Bool)

(declare-fun mapRes!482 () Bool)

(assert (=> b!7370 (= e!4089 (and e!4092 mapRes!482))))

(declare-fun condMapEmpty!482 () Bool)

(declare-datatypes ((V!629 0))(
  ( (V!630 (val!175 Int)) )
))
(declare-datatypes ((ValueCell!153 0))(
  ( (ValueCellFull!153 (v!1267 V!629)) (EmptyCell!153) )
))
(declare-datatypes ((array!613 0))(
  ( (array!614 (arr!294 (Array (_ BitVec 32) ValueCell!153)) (size!356 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!613)

(declare-fun mapDefault!482 () ValueCell!153)

(assert (=> b!7370 (= condMapEmpty!482 (= (arr!294 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!153)) mapDefault!482)))))

(declare-fun b!7371 () Bool)

(declare-fun res!7370 () Bool)

(declare-fun e!4091 () Bool)

(assert (=> b!7371 (=> (not res!7370) (not e!4091))))

(declare-datatypes ((array!615 0))(
  ( (array!616 (arr!295 (Array (_ BitVec 32) (_ BitVec 64))) (size!357 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!615)

(declare-datatypes ((List!198 0))(
  ( (Nil!195) (Cons!194 (h!760 (_ BitVec 64)) (t!2335 List!198)) )
))
(declare-fun arrayNoDuplicates!0 (array!615 (_ BitVec 32) List!198) Bool)

(assert (=> b!7371 (= res!7370 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!195))))

(declare-fun b!7372 () Bool)

(declare-fun e!4094 () Bool)

(declare-fun tp_is_empty!339 () Bool)

(assert (=> b!7372 (= e!4094 tp_is_empty!339)))

(declare-fun b!7373 () Bool)

(assert (=> b!7373 (= e!4092 tp_is_empty!339)))

(declare-fun res!7368 () Bool)

(assert (=> start!888 (=> (not res!7368) (not e!4091))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!888 (= res!7368 (validMask!0 mask!2250))))

(assert (=> start!888 e!4091))

(assert (=> start!888 tp!1016))

(assert (=> start!888 true))

(declare-fun array_inv!217 (array!613) Bool)

(assert (=> start!888 (and (array_inv!217 _values!1492) e!4089)))

(assert (=> start!888 tp_is_empty!339))

(declare-fun array_inv!218 (array!615) Bool)

(assert (=> start!888 (array_inv!218 _keys!1806)))

(declare-fun b!7374 () Bool)

(declare-fun res!7371 () Bool)

(assert (=> b!7374 (=> (not res!7371) (not e!4091))))

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!7374 (= res!7371 (validKeyInArray!0 k0!1278))))

(declare-fun b!7375 () Bool)

(declare-fun res!7372 () Bool)

(assert (=> b!7375 (=> (not res!7372) (not e!4091))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7375 (= res!7372 (and (= (size!356 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!357 _keys!1806) (size!356 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7376 () Bool)

(declare-fun res!7367 () Bool)

(assert (=> b!7376 (=> (not res!7367) (not e!4091))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!629)

(declare-fun zeroValue!1434 () V!629)

(declare-datatypes ((tuple2!180 0))(
  ( (tuple2!181 (_1!90 (_ BitVec 64)) (_2!90 V!629)) )
))
(declare-datatypes ((List!199 0))(
  ( (Nil!196) (Cons!195 (h!761 tuple2!180) (t!2336 List!199)) )
))
(declare-datatypes ((ListLongMap!185 0))(
  ( (ListLongMap!186 (toList!108 List!199)) )
))
(declare-fun contains!83 (ListLongMap!185 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!67 (array!615 array!613 (_ BitVec 32) (_ BitVec 32) V!629 V!629 (_ BitVec 32) Int) ListLongMap!185)

(assert (=> b!7376 (= res!7367 (contains!83 (getCurrentListMap!67 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapIsEmpty!482 () Bool)

(assert (=> mapIsEmpty!482 mapRes!482))

(declare-fun b!7377 () Bool)

(declare-fun e!4093 () Bool)

(declare-fun arrayContainsKey!0 (array!615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!7377 (= e!4093 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!482 () Bool)

(declare-fun tp!1015 () Bool)

(assert (=> mapNonEmpty!482 (= mapRes!482 (and tp!1015 e!4094))))

(declare-fun mapRest!482 () (Array (_ BitVec 32) ValueCell!153))

(declare-fun mapValue!482 () ValueCell!153)

(declare-fun mapKey!482 () (_ BitVec 32))

(assert (=> mapNonEmpty!482 (= (arr!294 _values!1492) (store mapRest!482 mapKey!482 mapValue!482))))

(declare-fun b!7378 () Bool)

(declare-fun res!7369 () Bool)

(assert (=> b!7378 (=> (not res!7369) (not e!4091))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!615 (_ BitVec 32)) Bool)

(assert (=> b!7378 (= res!7369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7379 () Bool)

(assert (=> b!7379 (= e!4091 (not true))))

(assert (=> b!7379 e!4093))

(declare-fun c!554 () Bool)

(assert (=> b!7379 (= c!554 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!139 0))(
  ( (Unit!140) )
))
(declare-fun lt!1530 () Unit!139)

(declare-fun lemmaKeyInListMapIsInArray!50 (array!615 array!613 (_ BitVec 32) (_ BitVec 32) V!629 V!629 (_ BitVec 64) Int) Unit!139)

(assert (=> b!7379 (= lt!1530 (lemmaKeyInListMapIsInArray!50 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!7380 () Bool)

(assert (=> b!7380 (= e!4093 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!888 res!7368) b!7375))

(assert (= (and b!7375 res!7372) b!7378))

(assert (= (and b!7378 res!7369) b!7371))

(assert (= (and b!7371 res!7370) b!7376))

(assert (= (and b!7376 res!7367) b!7374))

(assert (= (and b!7374 res!7371) b!7379))

(assert (= (and b!7379 c!554) b!7377))

(assert (= (and b!7379 (not c!554)) b!7380))

(assert (= (and b!7370 condMapEmpty!482) mapIsEmpty!482))

(assert (= (and b!7370 (not condMapEmpty!482)) mapNonEmpty!482))

(get-info :version)

(assert (= (and mapNonEmpty!482 ((_ is ValueCellFull!153) mapValue!482)) b!7372))

(assert (= (and b!7370 ((_ is ValueCellFull!153) mapDefault!482)) b!7373))

(assert (= start!888 b!7370))

(declare-fun m!4425 () Bool)

(assert (=> b!7379 m!4425))

(declare-fun m!4427 () Bool)

(assert (=> start!888 m!4427))

(declare-fun m!4429 () Bool)

(assert (=> start!888 m!4429))

(declare-fun m!4431 () Bool)

(assert (=> start!888 m!4431))

(declare-fun m!4433 () Bool)

(assert (=> mapNonEmpty!482 m!4433))

(declare-fun m!4435 () Bool)

(assert (=> b!7371 m!4435))

(declare-fun m!4437 () Bool)

(assert (=> b!7377 m!4437))

(declare-fun m!4439 () Bool)

(assert (=> b!7376 m!4439))

(assert (=> b!7376 m!4439))

(declare-fun m!4441 () Bool)

(assert (=> b!7376 m!4441))

(declare-fun m!4443 () Bool)

(assert (=> b!7378 m!4443))

(declare-fun m!4445 () Bool)

(assert (=> b!7374 m!4445))

(check-sat (not b!7376) (not mapNonEmpty!482) (not b!7374) (not b!7371) (not b!7379) tp_is_empty!339 (not start!888) b_and!409 (not b!7378) (not b_next!261) (not b!7377))
(check-sat b_and!409 (not b_next!261))
