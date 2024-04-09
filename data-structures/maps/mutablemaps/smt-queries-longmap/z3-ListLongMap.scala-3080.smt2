; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43382 () Bool)

(assert start!43382)

(declare-fun b_free!12201 () Bool)

(declare-fun b_next!12201 () Bool)

(assert (=> start!43382 (= b_free!12201 (not b_next!12201))))

(declare-fun tp!42880 () Bool)

(declare-fun b_and!20975 () Bool)

(assert (=> start!43382 (= tp!42880 b_and!20975)))

(declare-fun b!480333 () Bool)

(declare-fun e!282637 () Bool)

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!480333 (= e!282637 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480334 () Bool)

(declare-fun e!282639 () Bool)

(declare-fun tp_is_empty!13713 () Bool)

(assert (=> b!480334 (= e!282639 tp_is_empty!13713)))

(declare-fun mapIsEmpty!22273 () Bool)

(declare-fun mapRes!22273 () Bool)

(assert (=> mapIsEmpty!22273 mapRes!22273))

(declare-fun b!480335 () Bool)

(declare-fun res!286524 () Bool)

(declare-fun e!282640 () Bool)

(assert (=> b!480335 (=> (not res!286524) (not e!282640))))

(declare-datatypes ((array!31061 0))(
  ( (array!31062 (arr!14932 (Array (_ BitVec 32) (_ BitVec 64))) (size!15290 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31061)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31061 (_ BitVec 32)) Bool)

(assert (=> b!480335 (= res!286524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480336 () Bool)

(declare-fun e!282638 () Bool)

(declare-fun e!282635 () Bool)

(assert (=> b!480336 (= e!282638 (and e!282635 mapRes!22273))))

(declare-fun condMapEmpty!22273 () Bool)

(declare-datatypes ((V!19355 0))(
  ( (V!19356 (val!6904 Int)) )
))
(declare-datatypes ((ValueCell!6495 0))(
  ( (ValueCellFull!6495 (v!9191 V!19355)) (EmptyCell!6495) )
))
(declare-datatypes ((array!31063 0))(
  ( (array!31064 (arr!14933 (Array (_ BitVec 32) ValueCell!6495)) (size!15291 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31063)

(declare-fun mapDefault!22273 () ValueCell!6495)

(assert (=> b!480336 (= condMapEmpty!22273 (= (arr!14933 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6495)) mapDefault!22273)))))

(declare-fun b!480337 () Bool)

(assert (=> b!480337 (= e!282640 (not true))))

(declare-fun lt!218128 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!31061 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480337 (= lt!218128 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!480337 e!282637))

(declare-fun c!57712 () Bool)

(assert (=> b!480337 (= c!57712 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun minValue!1458 () V!19355)

(declare-datatypes ((Unit!14062 0))(
  ( (Unit!14063) )
))
(declare-fun lt!218129 () Unit!14062)

(declare-fun defaultEntry!1519 () Int)

(declare-fun zeroValue!1458 () V!19355)

(declare-fun lemmaKeyInListMapIsInArray!122 (array!31061 array!31063 (_ BitVec 32) (_ BitVec 32) V!19355 V!19355 (_ BitVec 64) Int) Unit!14062)

(assert (=> b!480337 (= lt!218129 (lemmaKeyInListMapIsInArray!122 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!480338 () Bool)

(assert (=> b!480338 (= e!282635 tp_is_empty!13713)))

(declare-fun b!480339 () Bool)

(declare-fun res!286523 () Bool)

(assert (=> b!480339 (=> (not res!286523) (not e!282640))))

(declare-datatypes ((List!9169 0))(
  ( (Nil!9166) (Cons!9165 (h!10021 (_ BitVec 64)) (t!15387 List!9169)) )
))
(declare-fun arrayNoDuplicates!0 (array!31061 (_ BitVec 32) List!9169) Bool)

(assert (=> b!480339 (= res!286523 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9166))))

(declare-fun mapNonEmpty!22273 () Bool)

(declare-fun tp!42879 () Bool)

(assert (=> mapNonEmpty!22273 (= mapRes!22273 (and tp!42879 e!282639))))

(declare-fun mapKey!22273 () (_ BitVec 32))

(declare-fun mapRest!22273 () (Array (_ BitVec 32) ValueCell!6495))

(declare-fun mapValue!22273 () ValueCell!6495)

(assert (=> mapNonEmpty!22273 (= (arr!14933 _values!1516) (store mapRest!22273 mapKey!22273 mapValue!22273))))

(declare-fun res!286520 () Bool)

(assert (=> start!43382 (=> (not res!286520) (not e!282640))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43382 (= res!286520 (validMask!0 mask!2352))))

(assert (=> start!43382 e!282640))

(assert (=> start!43382 true))

(assert (=> start!43382 tp_is_empty!13713))

(declare-fun array_inv!10758 (array!31063) Bool)

(assert (=> start!43382 (and (array_inv!10758 _values!1516) e!282638)))

(assert (=> start!43382 tp!42880))

(declare-fun array_inv!10759 (array!31061) Bool)

(assert (=> start!43382 (array_inv!10759 _keys!1874)))

(declare-fun b!480340 () Bool)

(declare-fun arrayContainsKey!0 (array!31061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480340 (= e!282637 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!480341 () Bool)

(declare-fun res!286522 () Bool)

(assert (=> b!480341 (=> (not res!286522) (not e!282640))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480341 (= res!286522 (validKeyInArray!0 k0!1332))))

(declare-fun b!480342 () Bool)

(declare-fun res!286519 () Bool)

(assert (=> b!480342 (=> (not res!286519) (not e!282640))))

(declare-datatypes ((tuple2!9054 0))(
  ( (tuple2!9055 (_1!4537 (_ BitVec 64)) (_2!4537 V!19355)) )
))
(declare-datatypes ((List!9170 0))(
  ( (Nil!9167) (Cons!9166 (h!10022 tuple2!9054) (t!15388 List!9170)) )
))
(declare-datatypes ((ListLongMap!7981 0))(
  ( (ListLongMap!7982 (toList!4006 List!9170)) )
))
(declare-fun contains!2615 (ListLongMap!7981 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2298 (array!31061 array!31063 (_ BitVec 32) (_ BitVec 32) V!19355 V!19355 (_ BitVec 32) Int) ListLongMap!7981)

(assert (=> b!480342 (= res!286519 (contains!2615 (getCurrentListMap!2298 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!480343 () Bool)

(declare-fun res!286521 () Bool)

(assert (=> b!480343 (=> (not res!286521) (not e!282640))))

(assert (=> b!480343 (= res!286521 (and (= (size!15291 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15290 _keys!1874) (size!15291 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(assert (= (and start!43382 res!286520) b!480343))

(assert (= (and b!480343 res!286521) b!480335))

(assert (= (and b!480335 res!286524) b!480339))

(assert (= (and b!480339 res!286523) b!480342))

(assert (= (and b!480342 res!286519) b!480341))

(assert (= (and b!480341 res!286522) b!480337))

(assert (= (and b!480337 c!57712) b!480340))

(assert (= (and b!480337 (not c!57712)) b!480333))

(assert (= (and b!480336 condMapEmpty!22273) mapIsEmpty!22273))

(assert (= (and b!480336 (not condMapEmpty!22273)) mapNonEmpty!22273))

(get-info :version)

(assert (= (and mapNonEmpty!22273 ((_ is ValueCellFull!6495) mapValue!22273)) b!480334))

(assert (= (and b!480336 ((_ is ValueCellFull!6495) mapDefault!22273)) b!480338))

(assert (= start!43382 b!480336))

(declare-fun m!461995 () Bool)

(assert (=> b!480341 m!461995))

(declare-fun m!461997 () Bool)

(assert (=> b!480337 m!461997))

(declare-fun m!461999 () Bool)

(assert (=> b!480337 m!461999))

(declare-fun m!462001 () Bool)

(assert (=> start!43382 m!462001))

(declare-fun m!462003 () Bool)

(assert (=> start!43382 m!462003))

(declare-fun m!462005 () Bool)

(assert (=> start!43382 m!462005))

(declare-fun m!462007 () Bool)

(assert (=> mapNonEmpty!22273 m!462007))

(declare-fun m!462009 () Bool)

(assert (=> b!480342 m!462009))

(assert (=> b!480342 m!462009))

(declare-fun m!462011 () Bool)

(assert (=> b!480342 m!462011))

(declare-fun m!462013 () Bool)

(assert (=> b!480335 m!462013))

(declare-fun m!462015 () Bool)

(assert (=> b!480339 m!462015))

(declare-fun m!462017 () Bool)

(assert (=> b!480340 m!462017))

(check-sat (not b!480337) (not b!480340) (not b!480342) (not b!480335) (not b!480339) (not b!480341) (not start!43382) (not mapNonEmpty!22273) (not b_next!12201) tp_is_empty!13713 b_and!20975)
(check-sat b_and!20975 (not b_next!12201))
