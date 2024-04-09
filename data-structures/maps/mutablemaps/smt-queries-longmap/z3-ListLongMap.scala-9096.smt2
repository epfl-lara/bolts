; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109398 () Bool)

(assert start!109398)

(declare-fun b_free!28851 () Bool)

(declare-fun b_next!28851 () Bool)

(assert (=> start!109398 (= b_free!28851 (not b_next!28851))))

(declare-fun tp!101673 () Bool)

(declare-fun b_and!46951 () Bool)

(assert (=> start!109398 (= tp!101673 b_and!46951)))

(declare-fun b!1294372 () Bool)

(declare-fun e!738643 () Bool)

(declare-fun tp_is_empty!34491 () Bool)

(assert (=> b!1294372 (= e!738643 tp_is_empty!34491)))

(declare-fun b!1294373 () Bool)

(declare-fun e!738641 () Bool)

(assert (=> b!1294373 (= e!738641 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!51091 0))(
  ( (V!51092 (val!17320 Int)) )
))
(declare-datatypes ((tuple2!22440 0))(
  ( (tuple2!22441 (_1!11230 (_ BitVec 64)) (_2!11230 V!51091)) )
))
(declare-datatypes ((List!29615 0))(
  ( (Nil!29612) (Cons!29611 (h!30820 tuple2!22440) (t!43186 List!29615)) )
))
(declare-datatypes ((ListLongMap!20109 0))(
  ( (ListLongMap!20110 (toList!10070 List!29615)) )
))
(declare-fun contains!8126 (ListLongMap!20109 (_ BitVec 64)) Bool)

(assert (=> b!1294373 (not (contains!8126 (ListLongMap!20110 Nil!29612) k0!1205))))

(declare-datatypes ((Unit!42811 0))(
  ( (Unit!42812) )
))
(declare-fun lt!579655 () Unit!42811)

(declare-fun emptyContainsNothing!162 ((_ BitVec 64)) Unit!42811)

(assert (=> b!1294373 (= lt!579655 (emptyContainsNothing!162 k0!1205))))

(declare-fun b!1294374 () Bool)

(declare-fun res!860282 () Bool)

(assert (=> b!1294374 (=> (not res!860282) (not e!738641))))

(declare-fun minValue!1387 () V!51091)

(declare-fun zeroValue!1387 () V!51091)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16347 0))(
  ( (ValueCellFull!16347 (v!19921 V!51091)) (EmptyCell!16347) )
))
(declare-datatypes ((array!85969 0))(
  ( (array!85970 (arr!41481 (Array (_ BitVec 32) ValueCell!16347)) (size!42032 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85969)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85971 0))(
  ( (array!85972 (arr!41482 (Array (_ BitVec 32) (_ BitVec 64))) (size!42033 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85971)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5055 (array!85971 array!85969 (_ BitVec 32) (_ BitVec 32) V!51091 V!51091 (_ BitVec 32) Int) ListLongMap!20109)

(assert (=> b!1294374 (= res!860282 (contains!8126 (getCurrentListMap!5055 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294375 () Bool)

(declare-fun res!860283 () Bool)

(assert (=> b!1294375 (=> (not res!860283) (not e!738641))))

(declare-datatypes ((List!29616 0))(
  ( (Nil!29613) (Cons!29612 (h!30821 (_ BitVec 64)) (t!43187 List!29616)) )
))
(declare-fun arrayNoDuplicates!0 (array!85971 (_ BitVec 32) List!29616) Bool)

(assert (=> b!1294375 (= res!860283 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29613))))

(declare-fun mapNonEmpty!53297 () Bool)

(declare-fun mapRes!53297 () Bool)

(declare-fun tp!101672 () Bool)

(declare-fun e!738640 () Bool)

(assert (=> mapNonEmpty!53297 (= mapRes!53297 (and tp!101672 e!738640))))

(declare-fun mapKey!53297 () (_ BitVec 32))

(declare-fun mapRest!53297 () (Array (_ BitVec 32) ValueCell!16347))

(declare-fun mapValue!53297 () ValueCell!16347)

(assert (=> mapNonEmpty!53297 (= (arr!41481 _values!1445) (store mapRest!53297 mapKey!53297 mapValue!53297))))

(declare-fun b!1294376 () Bool)

(declare-fun e!738642 () Bool)

(assert (=> b!1294376 (= e!738642 (and e!738643 mapRes!53297))))

(declare-fun condMapEmpty!53297 () Bool)

(declare-fun mapDefault!53297 () ValueCell!16347)

(assert (=> b!1294376 (= condMapEmpty!53297 (= (arr!41481 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16347)) mapDefault!53297)))))

(declare-fun mapIsEmpty!53297 () Bool)

(assert (=> mapIsEmpty!53297 mapRes!53297))

(declare-fun res!860279 () Bool)

(assert (=> start!109398 (=> (not res!860279) (not e!738641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109398 (= res!860279 (validMask!0 mask!2175))))

(assert (=> start!109398 e!738641))

(assert (=> start!109398 tp_is_empty!34491))

(assert (=> start!109398 true))

(declare-fun array_inv!31391 (array!85969) Bool)

(assert (=> start!109398 (and (array_inv!31391 _values!1445) e!738642)))

(declare-fun array_inv!31392 (array!85971) Bool)

(assert (=> start!109398 (array_inv!31392 _keys!1741)))

(assert (=> start!109398 tp!101673))

(declare-fun b!1294377 () Bool)

(declare-fun res!860280 () Bool)

(assert (=> b!1294377 (=> (not res!860280) (not e!738641))))

(assert (=> b!1294377 (= res!860280 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42033 _keys!1741))))))

(declare-fun b!1294378 () Bool)

(declare-fun res!860284 () Bool)

(assert (=> b!1294378 (=> (not res!860284) (not e!738641))))

(assert (=> b!1294378 (= res!860284 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42033 _keys!1741))))))

(declare-fun b!1294379 () Bool)

(declare-fun res!860281 () Bool)

(assert (=> b!1294379 (=> (not res!860281) (not e!738641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85971 (_ BitVec 32)) Bool)

(assert (=> b!1294379 (= res!860281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294380 () Bool)

(declare-fun res!860286 () Bool)

(assert (=> b!1294380 (=> (not res!860286) (not e!738641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294380 (= res!860286 (not (validKeyInArray!0 (select (arr!41482 _keys!1741) from!2144))))))

(declare-fun b!1294381 () Bool)

(assert (=> b!1294381 (= e!738640 tp_is_empty!34491)))

(declare-fun b!1294382 () Bool)

(declare-fun res!860285 () Bool)

(assert (=> b!1294382 (=> (not res!860285) (not e!738641))))

(assert (=> b!1294382 (= res!860285 (and (= (size!42032 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42033 _keys!1741) (size!42032 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!109398 res!860279) b!1294382))

(assert (= (and b!1294382 res!860285) b!1294379))

(assert (= (and b!1294379 res!860281) b!1294375))

(assert (= (and b!1294375 res!860283) b!1294378))

(assert (= (and b!1294378 res!860284) b!1294374))

(assert (= (and b!1294374 res!860282) b!1294377))

(assert (= (and b!1294377 res!860280) b!1294380))

(assert (= (and b!1294380 res!860286) b!1294373))

(assert (= (and b!1294376 condMapEmpty!53297) mapIsEmpty!53297))

(assert (= (and b!1294376 (not condMapEmpty!53297)) mapNonEmpty!53297))

(get-info :version)

(assert (= (and mapNonEmpty!53297 ((_ is ValueCellFull!16347) mapValue!53297)) b!1294381))

(assert (= (and b!1294376 ((_ is ValueCellFull!16347) mapDefault!53297)) b!1294372))

(assert (= start!109398 b!1294376))

(declare-fun m!1186613 () Bool)

(assert (=> b!1294379 m!1186613))

(declare-fun m!1186615 () Bool)

(assert (=> start!109398 m!1186615))

(declare-fun m!1186617 () Bool)

(assert (=> start!109398 m!1186617))

(declare-fun m!1186619 () Bool)

(assert (=> start!109398 m!1186619))

(declare-fun m!1186621 () Bool)

(assert (=> b!1294373 m!1186621))

(declare-fun m!1186623 () Bool)

(assert (=> b!1294373 m!1186623))

(declare-fun m!1186625 () Bool)

(assert (=> b!1294374 m!1186625))

(assert (=> b!1294374 m!1186625))

(declare-fun m!1186627 () Bool)

(assert (=> b!1294374 m!1186627))

(declare-fun m!1186629 () Bool)

(assert (=> b!1294375 m!1186629))

(declare-fun m!1186631 () Bool)

(assert (=> b!1294380 m!1186631))

(assert (=> b!1294380 m!1186631))

(declare-fun m!1186633 () Bool)

(assert (=> b!1294380 m!1186633))

(declare-fun m!1186635 () Bool)

(assert (=> mapNonEmpty!53297 m!1186635))

(check-sat (not b!1294380) (not b!1294373) (not mapNonEmpty!53297) (not start!109398) tp_is_empty!34491 (not b_next!28851) (not b!1294375) (not b!1294374) (not b!1294379) b_and!46951)
(check-sat b_and!46951 (not b_next!28851))
