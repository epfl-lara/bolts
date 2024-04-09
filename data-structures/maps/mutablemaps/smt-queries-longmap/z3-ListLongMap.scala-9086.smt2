; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109338 () Bool)

(assert start!109338)

(declare-fun b_free!28791 () Bool)

(declare-fun b_next!28791 () Bool)

(assert (=> start!109338 (= b_free!28791 (not b_next!28791))))

(declare-fun tp!101492 () Bool)

(declare-fun b_and!46891 () Bool)

(assert (=> start!109338 (= tp!101492 b_and!46891)))

(declare-fun b!1293342 () Bool)

(declare-fun e!738150 () Bool)

(declare-fun tp_is_empty!34431 () Bool)

(assert (=> b!1293342 (= e!738150 tp_is_empty!34431)))

(declare-fun b!1293343 () Bool)

(declare-fun res!859523 () Bool)

(declare-fun e!738151 () Bool)

(assert (=> b!1293343 (=> (not res!859523) (not e!738151))))

(declare-datatypes ((V!51011 0))(
  ( (V!51012 (val!17290 Int)) )
))
(declare-fun minValue!1387 () V!51011)

(declare-fun zeroValue!1387 () V!51011)

(declare-datatypes ((ValueCell!16317 0))(
  ( (ValueCellFull!16317 (v!19891 V!51011)) (EmptyCell!16317) )
))
(declare-datatypes ((array!85851 0))(
  ( (array!85852 (arr!41422 (Array (_ BitVec 32) ValueCell!16317)) (size!41973 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85851)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85853 0))(
  ( (array!85854 (arr!41423 (Array (_ BitVec 32) (_ BitVec 64))) (size!41974 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85853)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22392 0))(
  ( (tuple2!22393 (_1!11206 (_ BitVec 64)) (_2!11206 V!51011)) )
))
(declare-datatypes ((List!29574 0))(
  ( (Nil!29571) (Cons!29570 (h!30779 tuple2!22392) (t!43145 List!29574)) )
))
(declare-datatypes ((ListLongMap!20061 0))(
  ( (ListLongMap!20062 (toList!10046 List!29574)) )
))
(declare-fun contains!8102 (ListLongMap!20061 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5032 (array!85853 array!85851 (_ BitVec 32) (_ BitVec 32) V!51011 V!51011 (_ BitVec 32) Int) ListLongMap!20061)

(assert (=> b!1293343 (= res!859523 (contains!8102 (getCurrentListMap!5032 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1293344 () Bool)

(declare-fun e!738154 () Bool)

(assert (=> b!1293344 (= e!738154 true)))

(declare-fun lt!579485 () ListLongMap!20061)

(declare-fun +!4377 (ListLongMap!20061 tuple2!22392) ListLongMap!20061)

(assert (=> b!1293344 (not (contains!8102 (+!4377 lt!579485 (tuple2!22393 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42769 0))(
  ( (Unit!42770) )
))
(declare-fun lt!579487 () Unit!42769)

(declare-fun addStillNotContains!422 (ListLongMap!20061 (_ BitVec 64) V!51011 (_ BitVec 64)) Unit!42769)

(assert (=> b!1293344 (= lt!579487 (addStillNotContains!422 lt!579485 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun getCurrentListMapNoExtraKeys!6090 (array!85853 array!85851 (_ BitVec 32) (_ BitVec 32) V!51011 V!51011 (_ BitVec 32) Int) ListLongMap!20061)

(assert (=> b!1293344 (= lt!579485 (getCurrentListMapNoExtraKeys!6090 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1293345 () Bool)

(declare-fun res!859522 () Bool)

(assert (=> b!1293345 (=> (not res!859522) (not e!738151))))

(assert (=> b!1293345 (= res!859522 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41974 _keys!1741))))))

(declare-fun b!1293346 () Bool)

(declare-fun res!859519 () Bool)

(assert (=> b!1293346 (=> (not res!859519) (not e!738151))))

(assert (=> b!1293346 (= res!859519 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41974 _keys!1741))))))

(declare-fun res!859525 () Bool)

(assert (=> start!109338 (=> (not res!859525) (not e!738151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109338 (= res!859525 (validMask!0 mask!2175))))

(assert (=> start!109338 e!738151))

(assert (=> start!109338 tp_is_empty!34431))

(assert (=> start!109338 true))

(declare-fun e!738149 () Bool)

(declare-fun array_inv!31357 (array!85851) Bool)

(assert (=> start!109338 (and (array_inv!31357 _values!1445) e!738149)))

(declare-fun array_inv!31358 (array!85853) Bool)

(assert (=> start!109338 (array_inv!31358 _keys!1741)))

(assert (=> start!109338 tp!101492))

(declare-fun b!1293347 () Bool)

(declare-fun res!859524 () Bool)

(assert (=> b!1293347 (=> (not res!859524) (not e!738151))))

(declare-datatypes ((List!29575 0))(
  ( (Nil!29572) (Cons!29571 (h!30780 (_ BitVec 64)) (t!43146 List!29575)) )
))
(declare-fun arrayNoDuplicates!0 (array!85853 (_ BitVec 32) List!29575) Bool)

(assert (=> b!1293347 (= res!859524 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29572))))

(declare-fun b!1293348 () Bool)

(declare-fun e!738153 () Bool)

(assert (=> b!1293348 (= e!738153 tp_is_empty!34431)))

(declare-fun b!1293349 () Bool)

(declare-fun res!859526 () Bool)

(assert (=> b!1293349 (=> (not res!859526) (not e!738151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293349 (= res!859526 (not (validKeyInArray!0 (select (arr!41423 _keys!1741) from!2144))))))

(declare-fun b!1293350 () Bool)

(assert (=> b!1293350 (= e!738151 (not e!738154))))

(declare-fun res!859521 () Bool)

(assert (=> b!1293350 (=> res!859521 e!738154)))

(assert (=> b!1293350 (= res!859521 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1293350 (not (contains!8102 (ListLongMap!20062 Nil!29571) k0!1205))))

(declare-fun lt!579486 () Unit!42769)

(declare-fun emptyContainsNothing!141 ((_ BitVec 64)) Unit!42769)

(assert (=> b!1293350 (= lt!579486 (emptyContainsNothing!141 k0!1205))))

(declare-fun b!1293351 () Bool)

(declare-fun mapRes!53207 () Bool)

(assert (=> b!1293351 (= e!738149 (and e!738153 mapRes!53207))))

(declare-fun condMapEmpty!53207 () Bool)

(declare-fun mapDefault!53207 () ValueCell!16317)

(assert (=> b!1293351 (= condMapEmpty!53207 (= (arr!41422 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16317)) mapDefault!53207)))))

(declare-fun mapIsEmpty!53207 () Bool)

(assert (=> mapIsEmpty!53207 mapRes!53207))

(declare-fun b!1293352 () Bool)

(declare-fun res!859520 () Bool)

(assert (=> b!1293352 (=> (not res!859520) (not e!738151))))

(assert (=> b!1293352 (= res!859520 (and (= (size!41973 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41974 _keys!1741) (size!41973 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53207 () Bool)

(declare-fun tp!101493 () Bool)

(assert (=> mapNonEmpty!53207 (= mapRes!53207 (and tp!101493 e!738150))))

(declare-fun mapRest!53207 () (Array (_ BitVec 32) ValueCell!16317))

(declare-fun mapValue!53207 () ValueCell!16317)

(declare-fun mapKey!53207 () (_ BitVec 32))

(assert (=> mapNonEmpty!53207 (= (arr!41422 _values!1445) (store mapRest!53207 mapKey!53207 mapValue!53207))))

(declare-fun b!1293353 () Bool)

(declare-fun res!859527 () Bool)

(assert (=> b!1293353 (=> (not res!859527) (not e!738151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85853 (_ BitVec 32)) Bool)

(assert (=> b!1293353 (= res!859527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(assert (= (and start!109338 res!859525) b!1293352))

(assert (= (and b!1293352 res!859520) b!1293353))

(assert (= (and b!1293353 res!859527) b!1293347))

(assert (= (and b!1293347 res!859524) b!1293346))

(assert (= (and b!1293346 res!859519) b!1293343))

(assert (= (and b!1293343 res!859523) b!1293345))

(assert (= (and b!1293345 res!859522) b!1293349))

(assert (= (and b!1293349 res!859526) b!1293350))

(assert (= (and b!1293350 (not res!859521)) b!1293344))

(assert (= (and b!1293351 condMapEmpty!53207) mapIsEmpty!53207))

(assert (= (and b!1293351 (not condMapEmpty!53207)) mapNonEmpty!53207))

(get-info :version)

(assert (= (and mapNonEmpty!53207 ((_ is ValueCellFull!16317) mapValue!53207)) b!1293342))

(assert (= (and b!1293351 ((_ is ValueCellFull!16317) mapDefault!53207)) b!1293348))

(assert (= start!109338 b!1293351))

(declare-fun m!1185781 () Bool)

(assert (=> b!1293344 m!1185781))

(assert (=> b!1293344 m!1185781))

(declare-fun m!1185783 () Bool)

(assert (=> b!1293344 m!1185783))

(declare-fun m!1185785 () Bool)

(assert (=> b!1293344 m!1185785))

(declare-fun m!1185787 () Bool)

(assert (=> b!1293344 m!1185787))

(declare-fun m!1185789 () Bool)

(assert (=> b!1293350 m!1185789))

(declare-fun m!1185791 () Bool)

(assert (=> b!1293350 m!1185791))

(declare-fun m!1185793 () Bool)

(assert (=> b!1293347 m!1185793))

(declare-fun m!1185795 () Bool)

(assert (=> b!1293353 m!1185795))

(declare-fun m!1185797 () Bool)

(assert (=> start!109338 m!1185797))

(declare-fun m!1185799 () Bool)

(assert (=> start!109338 m!1185799))

(declare-fun m!1185801 () Bool)

(assert (=> start!109338 m!1185801))

(declare-fun m!1185803 () Bool)

(assert (=> mapNonEmpty!53207 m!1185803))

(declare-fun m!1185805 () Bool)

(assert (=> b!1293343 m!1185805))

(assert (=> b!1293343 m!1185805))

(declare-fun m!1185807 () Bool)

(assert (=> b!1293343 m!1185807))

(declare-fun m!1185809 () Bool)

(assert (=> b!1293349 m!1185809))

(assert (=> b!1293349 m!1185809))

(declare-fun m!1185811 () Bool)

(assert (=> b!1293349 m!1185811))

(check-sat (not mapNonEmpty!53207) (not b!1293343) tp_is_empty!34431 (not b!1293344) (not b_next!28791) (not b!1293347) (not b!1293353) (not b!1293349) b_and!46891 (not start!109338) (not b!1293350))
(check-sat b_and!46891 (not b_next!28791))
