; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!948 () Bool)

(assert start!948)

(declare-fun b_free!321 () Bool)

(declare-fun b_next!321 () Bool)

(assert (=> start!948 (= b_free!321 (not b_next!321))))

(declare-fun tp!1196 () Bool)

(declare-fun b_and!469 () Bool)

(assert (=> start!948 (= tp!1196 b_and!469)))

(declare-fun res!7754 () Bool)

(declare-fun e!4555 () Bool)

(assert (=> start!948 (=> (not res!7754) (not e!4555))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!948 (= res!7754 (validMask!0 mask!2250))))

(assert (=> start!948 e!4555))

(assert (=> start!948 tp!1196))

(assert (=> start!948 true))

(declare-datatypes ((V!709 0))(
  ( (V!710 (val!205 Int)) )
))
(declare-datatypes ((ValueCell!183 0))(
  ( (ValueCellFull!183 (v!1297 V!709)) (EmptyCell!183) )
))
(declare-datatypes ((array!723 0))(
  ( (array!724 (arr!349 (Array (_ BitVec 32) ValueCell!183)) (size!411 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!723)

(declare-fun e!4558 () Bool)

(declare-fun array_inv!257 (array!723) Bool)

(assert (=> start!948 (and (array_inv!257 _values!1492) e!4558)))

(declare-fun tp_is_empty!399 () Bool)

(assert (=> start!948 tp_is_empty!399))

(declare-datatypes ((array!725 0))(
  ( (array!726 (arr!350 (Array (_ BitVec 32) (_ BitVec 64))) (size!412 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!725)

(declare-fun array_inv!258 (array!725) Bool)

(assert (=> start!948 (array_inv!258 _keys!1806)))

(declare-fun b!8041 () Bool)

(declare-fun res!7752 () Bool)

(assert (=> b!8041 (=> (not res!7752) (not e!4555))))

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8041 (= res!7752 (validKeyInArray!0 k0!1278))))

(declare-fun b!8042 () Bool)

(declare-fun res!7755 () Bool)

(assert (=> b!8042 (=> (not res!7755) (not e!4555))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!8042 (= res!7755 (and (= (size!411 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!412 _keys!1806) (size!411 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!8043 () Bool)

(declare-fun e!4553 () Bool)

(assert (=> b!8043 (= e!4553 tp_is_empty!399)))

(declare-fun b!8044 () Bool)

(declare-fun e!4554 () Bool)

(assert (=> b!8044 (= e!4554 true)))

(declare-fun lt!1626 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!725 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8044 (= lt!1626 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8045 () Bool)

(declare-fun res!7753 () Bool)

(assert (=> b!8045 (=> (not res!7753) (not e!4555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!725 (_ BitVec 32)) Bool)

(assert (=> b!8045 (= res!7753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!8046 () Bool)

(declare-fun res!7751 () Bool)

(assert (=> b!8046 (=> (not res!7751) (not e!4555))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!709)

(declare-fun zeroValue!1434 () V!709)

(declare-datatypes ((tuple2!216 0))(
  ( (tuple2!217 (_1!108 (_ BitVec 64)) (_2!108 V!709)) )
))
(declare-datatypes ((List!239 0))(
  ( (Nil!236) (Cons!235 (h!801 tuple2!216) (t!2376 List!239)) )
))
(declare-datatypes ((ListLongMap!221 0))(
  ( (ListLongMap!222 (toList!126 List!239)) )
))
(declare-fun contains!101 (ListLongMap!221 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!85 (array!725 array!723 (_ BitVec 32) (_ BitVec 32) V!709 V!709 (_ BitVec 32) Int) ListLongMap!221)

(assert (=> b!8046 (= res!7751 (contains!101 (getCurrentListMap!85 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!8047 () Bool)

(declare-fun e!4559 () Bool)

(declare-fun mapRes!572 () Bool)

(assert (=> b!8047 (= e!4558 (and e!4559 mapRes!572))))

(declare-fun condMapEmpty!572 () Bool)

(declare-fun mapDefault!572 () ValueCell!183)

(assert (=> b!8047 (= condMapEmpty!572 (= (arr!349 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!183)) mapDefault!572)))))

(declare-fun b!8048 () Bool)

(assert (=> b!8048 (= e!4555 (not e!4554))))

(declare-fun res!7756 () Bool)

(assert (=> b!8048 (=> res!7756 e!4554)))

(declare-fun arrayContainsKey!0 (array!725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8048 (= res!7756 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(declare-fun e!4556 () Bool)

(assert (=> b!8048 e!4556))

(declare-fun c!563 () Bool)

(assert (=> b!8048 (= c!563 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!143 0))(
  ( (Unit!144) )
))
(declare-fun lt!1625 () Unit!143)

(declare-fun lemmaKeyInListMapIsInArray!52 (array!725 array!723 (_ BitVec 32) (_ BitVec 32) V!709 V!709 (_ BitVec 64) Int) Unit!143)

(assert (=> b!8048 (= lt!1625 (lemmaKeyInListMapIsInArray!52 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!8049 () Bool)

(declare-fun res!7750 () Bool)

(assert (=> b!8049 (=> (not res!7750) (not e!4555))))

(declare-datatypes ((List!240 0))(
  ( (Nil!237) (Cons!236 (h!802 (_ BitVec 64)) (t!2377 List!240)) )
))
(declare-fun arrayNoDuplicates!0 (array!725 (_ BitVec 32) List!240) Bool)

(assert (=> b!8049 (= res!7750 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!237))))

(declare-fun mapIsEmpty!572 () Bool)

(assert (=> mapIsEmpty!572 mapRes!572))

(declare-fun b!8050 () Bool)

(assert (=> b!8050 (= e!4559 tp_is_empty!399)))

(declare-fun b!8051 () Bool)

(assert (=> b!8051 (= e!4556 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8052 () Bool)

(assert (=> b!8052 (= e!4556 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!572 () Bool)

(declare-fun tp!1195 () Bool)

(assert (=> mapNonEmpty!572 (= mapRes!572 (and tp!1195 e!4553))))

(declare-fun mapKey!572 () (_ BitVec 32))

(declare-fun mapValue!572 () ValueCell!183)

(declare-fun mapRest!572 () (Array (_ BitVec 32) ValueCell!183))

(assert (=> mapNonEmpty!572 (= (arr!349 _values!1492) (store mapRest!572 mapKey!572 mapValue!572))))

(assert (= (and start!948 res!7754) b!8042))

(assert (= (and b!8042 res!7755) b!8045))

(assert (= (and b!8045 res!7753) b!8049))

(assert (= (and b!8049 res!7750) b!8046))

(assert (= (and b!8046 res!7751) b!8041))

(assert (= (and b!8041 res!7752) b!8048))

(assert (= (and b!8048 c!563) b!8051))

(assert (= (and b!8048 (not c!563)) b!8052))

(assert (= (and b!8048 (not res!7756)) b!8044))

(assert (= (and b!8047 condMapEmpty!572) mapIsEmpty!572))

(assert (= (and b!8047 (not condMapEmpty!572)) mapNonEmpty!572))

(get-info :version)

(assert (= (and mapNonEmpty!572 ((_ is ValueCellFull!183) mapValue!572)) b!8043))

(assert (= (and b!8047 ((_ is ValueCellFull!183) mapDefault!572)) b!8050))

(assert (= start!948 b!8047))

(declare-fun m!4925 () Bool)

(assert (=> b!8046 m!4925))

(assert (=> b!8046 m!4925))

(declare-fun m!4927 () Bool)

(assert (=> b!8046 m!4927))

(declare-fun m!4929 () Bool)

(assert (=> b!8049 m!4929))

(declare-fun m!4931 () Bool)

(assert (=> b!8051 m!4931))

(declare-fun m!4933 () Bool)

(assert (=> b!8041 m!4933))

(declare-fun m!4935 () Bool)

(assert (=> start!948 m!4935))

(declare-fun m!4937 () Bool)

(assert (=> start!948 m!4937))

(declare-fun m!4939 () Bool)

(assert (=> start!948 m!4939))

(declare-fun m!4941 () Bool)

(assert (=> mapNonEmpty!572 m!4941))

(declare-fun m!4943 () Bool)

(assert (=> b!8044 m!4943))

(declare-fun m!4945 () Bool)

(assert (=> b!8045 m!4945))

(assert (=> b!8048 m!4931))

(declare-fun m!4947 () Bool)

(assert (=> b!8048 m!4947))

(check-sat (not mapNonEmpty!572) (not start!948) (not b!8046) (not b!8041) (not b!8048) tp_is_empty!399 (not b!8049) (not b!8051) (not b_next!321) (not b!8045) b_and!469 (not b!8044))
(check-sat b_and!469 (not b_next!321))
