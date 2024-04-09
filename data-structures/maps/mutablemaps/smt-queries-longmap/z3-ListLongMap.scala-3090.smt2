; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43490 () Bool)

(assert start!43490)

(declare-fun b_free!12261 () Bool)

(declare-fun b_next!12261 () Bool)

(assert (=> start!43490 (= b_free!12261 (not b_next!12261))))

(declare-fun tp!43066 () Bool)

(declare-fun b_and!21039 () Bool)

(assert (=> start!43490 (= tp!43066 b_and!21039)))

(declare-fun b!481585 () Bool)

(declare-fun res!287168 () Bool)

(declare-fun e!283349 () Bool)

(assert (=> b!481585 (=> (not res!287168) (not e!283349))))

(declare-datatypes ((array!31181 0))(
  ( (array!31182 (arr!14990 (Array (_ BitVec 32) (_ BitVec 64))) (size!15348 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31181)

(declare-datatypes ((List!9215 0))(
  ( (Nil!9212) (Cons!9211 (h!10067 (_ BitVec 64)) (t!15437 List!9215)) )
))
(declare-fun arrayNoDuplicates!0 (array!31181 (_ BitVec 32) List!9215) Bool)

(assert (=> b!481585 (= res!287168 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9212))))

(declare-fun b!481586 () Bool)

(declare-fun res!287167 () Bool)

(assert (=> b!481586 (=> (not res!287167) (not e!283349))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31181 (_ BitVec 32)) Bool)

(assert (=> b!481586 (= res!287167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481587 () Bool)

(declare-fun e!283354 () Bool)

(declare-fun tp_is_empty!13773 () Bool)

(assert (=> b!481587 (= e!283354 tp_is_empty!13773)))

(declare-fun b!481588 () Bool)

(declare-fun e!283353 () Bool)

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!481588 (= e!283353 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!481589 () Bool)

(declare-fun res!287169 () Bool)

(assert (=> b!481589 (=> (not res!287169) (not e!283349))))

(declare-datatypes ((V!19435 0))(
  ( (V!19436 (val!6934 Int)) )
))
(declare-fun minValue!1458 () V!19435)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6525 0))(
  ( (ValueCellFull!6525 (v!9223 V!19435)) (EmptyCell!6525) )
))
(declare-datatypes ((array!31183 0))(
  ( (array!31184 (arr!14991 (Array (_ BitVec 32) ValueCell!6525)) (size!15349 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31183)

(declare-fun defaultEntry!1519 () Int)

(declare-fun zeroValue!1458 () V!19435)

(declare-datatypes ((tuple2!9102 0))(
  ( (tuple2!9103 (_1!4561 (_ BitVec 64)) (_2!4561 V!19435)) )
))
(declare-datatypes ((List!9216 0))(
  ( (Nil!9213) (Cons!9212 (h!10068 tuple2!9102) (t!15438 List!9216)) )
))
(declare-datatypes ((ListLongMap!8029 0))(
  ( (ListLongMap!8030 (toList!4030 List!9216)) )
))
(declare-fun contains!2641 (ListLongMap!8029 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2322 (array!31181 array!31183 (_ BitVec 32) (_ BitVec 32) V!19435 V!19435 (_ BitVec 32) Int) ListLongMap!8029)

(assert (=> b!481589 (= res!287169 (contains!2641 (getCurrentListMap!2322 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!481590 () Bool)

(declare-fun res!287165 () Bool)

(assert (=> b!481590 (=> (not res!287165) (not e!283349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!481590 (= res!287165 (validKeyInArray!0 k0!1332))))

(declare-fun b!481591 () Bool)

(declare-fun e!283350 () Bool)

(declare-fun mapRes!22369 () Bool)

(assert (=> b!481591 (= e!283350 (and e!283354 mapRes!22369))))

(declare-fun condMapEmpty!22369 () Bool)

(declare-fun mapDefault!22369 () ValueCell!6525)

(assert (=> b!481591 (= condMapEmpty!22369 (= (arr!14991 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6525)) mapDefault!22369)))))

(declare-fun res!287166 () Bool)

(assert (=> start!43490 (=> (not res!287166) (not e!283349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43490 (= res!287166 (validMask!0 mask!2352))))

(assert (=> start!43490 e!283349))

(assert (=> start!43490 true))

(assert (=> start!43490 tp_is_empty!13773))

(declare-fun array_inv!10794 (array!31183) Bool)

(assert (=> start!43490 (and (array_inv!10794 _values!1516) e!283350)))

(assert (=> start!43490 tp!43066))

(declare-fun array_inv!10795 (array!31181) Bool)

(assert (=> start!43490 (array_inv!10795 _keys!1874)))

(declare-fun b!481592 () Bool)

(declare-fun res!287170 () Bool)

(assert (=> b!481592 (=> (not res!287170) (not e!283349))))

(assert (=> b!481592 (= res!287170 (and (= (size!15349 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15348 _keys!1874) (size!15349 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481593 () Bool)

(declare-fun e!283352 () Bool)

(assert (=> b!481593 (= e!283352 tp_is_empty!13773)))

(declare-fun b!481594 () Bool)

(assert (=> b!481594 (= e!283353 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22369 () Bool)

(assert (=> mapIsEmpty!22369 mapRes!22369))

(declare-fun mapNonEmpty!22369 () Bool)

(declare-fun tp!43065 () Bool)

(assert (=> mapNonEmpty!22369 (= mapRes!22369 (and tp!43065 e!283352))))

(declare-fun mapValue!22369 () ValueCell!6525)

(declare-fun mapRest!22369 () (Array (_ BitVec 32) ValueCell!6525))

(declare-fun mapKey!22369 () (_ BitVec 32))

(assert (=> mapNonEmpty!22369 (= (arr!14991 _values!1516) (store mapRest!22369 mapKey!22369 mapValue!22369))))

(declare-fun b!481595 () Bool)

(assert (=> b!481595 (= e!283349 (not true))))

(declare-fun lt!218585 () (_ BitVec 32))

(assert (=> b!481595 (arrayForallSeekEntryOrOpenFound!0 lt!218585 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14108 0))(
  ( (Unit!14109) )
))
(declare-fun lt!218583 () Unit!14108)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31181 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14108)

(assert (=> b!481595 (= lt!218583 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218585))))

(declare-fun arrayScanForKey!0 (array!31181 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!481595 (= lt!218585 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(assert (=> b!481595 e!283353))

(declare-fun c!57870 () Bool)

(assert (=> b!481595 (= c!57870 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218584 () Unit!14108)

(declare-fun lemmaKeyInListMapIsInArray!143 (array!31181 array!31183 (_ BitVec 32) (_ BitVec 32) V!19435 V!19435 (_ BitVec 64) Int) Unit!14108)

(assert (=> b!481595 (= lt!218584 (lemmaKeyInListMapIsInArray!143 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (= (and start!43490 res!287166) b!481592))

(assert (= (and b!481592 res!287170) b!481586))

(assert (= (and b!481586 res!287167) b!481585))

(assert (= (and b!481585 res!287168) b!481589))

(assert (= (and b!481589 res!287169) b!481590))

(assert (= (and b!481590 res!287165) b!481595))

(assert (= (and b!481595 c!57870) b!481588))

(assert (= (and b!481595 (not c!57870)) b!481594))

(assert (= (and b!481591 condMapEmpty!22369) mapIsEmpty!22369))

(assert (= (and b!481591 (not condMapEmpty!22369)) mapNonEmpty!22369))

(get-info :version)

(assert (= (and mapNonEmpty!22369 ((_ is ValueCellFull!6525) mapValue!22369)) b!481593))

(assert (= (and b!481591 ((_ is ValueCellFull!6525) mapDefault!22369)) b!481587))

(assert (= start!43490 b!481591))

(declare-fun m!463019 () Bool)

(assert (=> b!481595 m!463019))

(declare-fun m!463021 () Bool)

(assert (=> b!481595 m!463021))

(declare-fun m!463023 () Bool)

(assert (=> b!481595 m!463023))

(declare-fun m!463025 () Bool)

(assert (=> b!481595 m!463025))

(declare-fun m!463027 () Bool)

(assert (=> b!481590 m!463027))

(declare-fun m!463029 () Bool)

(assert (=> b!481586 m!463029))

(declare-fun m!463031 () Bool)

(assert (=> b!481588 m!463031))

(declare-fun m!463033 () Bool)

(assert (=> start!43490 m!463033))

(declare-fun m!463035 () Bool)

(assert (=> start!43490 m!463035))

(declare-fun m!463037 () Bool)

(assert (=> start!43490 m!463037))

(declare-fun m!463039 () Bool)

(assert (=> mapNonEmpty!22369 m!463039))

(declare-fun m!463041 () Bool)

(assert (=> b!481585 m!463041))

(declare-fun m!463043 () Bool)

(assert (=> b!481589 m!463043))

(assert (=> b!481589 m!463043))

(declare-fun m!463045 () Bool)

(assert (=> b!481589 m!463045))

(check-sat (not b!481585) (not b!481590) (not b!481589) (not b!481588) (not start!43490) (not b_next!12261) b_and!21039 (not b!481595) (not b!481586) tp_is_empty!13773 (not mapNonEmpty!22369))
(check-sat b_and!21039 (not b_next!12261))
