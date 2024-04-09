; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43400 () Bool)

(assert start!43400)

(declare-fun b_free!12219 () Bool)

(declare-fun b_next!12219 () Bool)

(assert (=> start!43400 (= b_free!12219 (not b_next!12219))))

(declare-fun tp!42934 () Bool)

(declare-fun b_and!20993 () Bool)

(assert (=> start!43400 (= tp!42934 b_and!20993)))

(declare-fun b!480630 () Bool)

(declare-fun e!282799 () Bool)

(declare-fun e!282802 () Bool)

(declare-fun mapRes!22300 () Bool)

(assert (=> b!480630 (= e!282799 (and e!282802 mapRes!22300))))

(declare-fun condMapEmpty!22300 () Bool)

(declare-datatypes ((V!19379 0))(
  ( (V!19380 (val!6913 Int)) )
))
(declare-datatypes ((ValueCell!6504 0))(
  ( (ValueCellFull!6504 (v!9200 V!19379)) (EmptyCell!6504) )
))
(declare-datatypes ((array!31097 0))(
  ( (array!31098 (arr!14950 (Array (_ BitVec 32) ValueCell!6504)) (size!15308 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31097)

(declare-fun mapDefault!22300 () ValueCell!6504)

(assert (=> b!480630 (= condMapEmpty!22300 (= (arr!14950 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6504)) mapDefault!22300)))))

(declare-fun b!480631 () Bool)

(declare-fun tp_is_empty!13731 () Bool)

(assert (=> b!480631 (= e!282802 tp_is_empty!13731)))

(declare-fun b!480632 () Bool)

(declare-fun res!286683 () Bool)

(declare-fun e!282798 () Bool)

(assert (=> b!480632 (=> (not res!286683) (not e!282798))))

(declare-datatypes ((array!31099 0))(
  ( (array!31100 (arr!14951 (Array (_ BitVec 32) (_ BitVec 64))) (size!15309 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31099)

(declare-datatypes ((List!9184 0))(
  ( (Nil!9181) (Cons!9180 (h!10036 (_ BitVec 64)) (t!15402 List!9184)) )
))
(declare-fun arrayNoDuplicates!0 (array!31099 (_ BitVec 32) List!9184) Bool)

(assert (=> b!480632 (= res!286683 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9181))))

(declare-fun b!480633 () Bool)

(declare-fun e!282800 () Bool)

(assert (=> b!480633 (= e!282800 tp_is_empty!13731)))

(declare-fun b!480634 () Bool)

(declare-fun res!286681 () Bool)

(assert (=> b!480634 (=> (not res!286681) (not e!282798))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480634 (= res!286681 (validKeyInArray!0 k0!1332))))

(declare-fun b!480635 () Bool)

(declare-fun mask!2352 () (_ BitVec 32))

(assert (=> b!480635 (= e!282798 (not (= (size!15309 _keys!1874) (bvadd #b00000000000000000000000000000001 mask!2352))))))

(declare-fun lt!218198 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31099 (_ BitVec 32)) Bool)

(assert (=> b!480635 (arrayForallSeekEntryOrOpenFound!0 lt!218198 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14076 0))(
  ( (Unit!14077) )
))
(declare-fun lt!218196 () Unit!14076)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31099 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14076)

(assert (=> b!480635 (= lt!218196 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218198))))

(declare-fun arrayScanForKey!0 (array!31099 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480635 (= lt!218198 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun e!282797 () Bool)

(assert (=> b!480635 e!282797))

(declare-fun c!57739 () Bool)

(assert (=> b!480635 (= c!57739 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19379)

(declare-fun minValue!1458 () V!19379)

(declare-fun lt!218197 () Unit!14076)

(declare-fun defaultEntry!1519 () Int)

(declare-fun lemmaKeyInListMapIsInArray!129 (array!31099 array!31097 (_ BitVec 32) (_ BitVec 32) V!19379 V!19379 (_ BitVec 64) Int) Unit!14076)

(assert (=> b!480635 (= lt!218197 (lemmaKeyInListMapIsInArray!129 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun b!480636 () Bool)

(declare-fun res!286684 () Bool)

(assert (=> b!480636 (=> (not res!286684) (not e!282798))))

(declare-datatypes ((tuple2!9070 0))(
  ( (tuple2!9071 (_1!4545 (_ BitVec 64)) (_2!4545 V!19379)) )
))
(declare-datatypes ((List!9185 0))(
  ( (Nil!9182) (Cons!9181 (h!10037 tuple2!9070) (t!15403 List!9185)) )
))
(declare-datatypes ((ListLongMap!7997 0))(
  ( (ListLongMap!7998 (toList!4014 List!9185)) )
))
(declare-fun contains!2623 (ListLongMap!7997 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2306 (array!31099 array!31097 (_ BitVec 32) (_ BitVec 32) V!19379 V!19379 (_ BitVec 32) Int) ListLongMap!7997)

(assert (=> b!480636 (= res!286684 (contains!2623 (getCurrentListMap!2306 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!480637 () Bool)

(declare-fun res!286685 () Bool)

(assert (=> b!480637 (=> (not res!286685) (not e!282798))))

(assert (=> b!480637 (= res!286685 (and (= (size!15308 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15309 _keys!1874) (size!15308 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480639 () Bool)

(declare-fun res!286682 () Bool)

(assert (=> b!480639 (=> (not res!286682) (not e!282798))))

(assert (=> b!480639 (= res!286682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun mapNonEmpty!22300 () Bool)

(declare-fun tp!42933 () Bool)

(assert (=> mapNonEmpty!22300 (= mapRes!22300 (and tp!42933 e!282800))))

(declare-fun mapValue!22300 () ValueCell!6504)

(declare-fun mapRest!22300 () (Array (_ BitVec 32) ValueCell!6504))

(declare-fun mapKey!22300 () (_ BitVec 32))

(assert (=> mapNonEmpty!22300 (= (arr!14950 _values!1516) (store mapRest!22300 mapKey!22300 mapValue!22300))))

(declare-fun mapIsEmpty!22300 () Bool)

(assert (=> mapIsEmpty!22300 mapRes!22300))

(declare-fun b!480640 () Bool)

(declare-fun arrayContainsKey!0 (array!31099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480640 (= e!282797 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun res!286686 () Bool)

(assert (=> start!43400 (=> (not res!286686) (not e!282798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43400 (= res!286686 (validMask!0 mask!2352))))

(assert (=> start!43400 e!282798))

(assert (=> start!43400 true))

(assert (=> start!43400 tp_is_empty!13731))

(declare-fun array_inv!10768 (array!31097) Bool)

(assert (=> start!43400 (and (array_inv!10768 _values!1516) e!282799)))

(assert (=> start!43400 tp!42934))

(declare-fun array_inv!10769 (array!31099) Bool)

(assert (=> start!43400 (array_inv!10769 _keys!1874)))

(declare-fun b!480638 () Bool)

(assert (=> b!480638 (= e!282797 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!43400 res!286686) b!480637))

(assert (= (and b!480637 res!286685) b!480639))

(assert (= (and b!480639 res!286682) b!480632))

(assert (= (and b!480632 res!286683) b!480636))

(assert (= (and b!480636 res!286684) b!480634))

(assert (= (and b!480634 res!286681) b!480635))

(assert (= (and b!480635 c!57739) b!480640))

(assert (= (and b!480635 (not c!57739)) b!480638))

(assert (= (and b!480630 condMapEmpty!22300) mapIsEmpty!22300))

(assert (= (and b!480630 (not condMapEmpty!22300)) mapNonEmpty!22300))

(get-info :version)

(assert (= (and mapNonEmpty!22300 ((_ is ValueCellFull!6504) mapValue!22300)) b!480633))

(assert (= (and b!480630 ((_ is ValueCellFull!6504) mapDefault!22300)) b!480631))

(assert (= start!43400 b!480630))

(declare-fun m!462227 () Bool)

(assert (=> b!480639 m!462227))

(declare-fun m!462229 () Bool)

(assert (=> b!480635 m!462229))

(declare-fun m!462231 () Bool)

(assert (=> b!480635 m!462231))

(declare-fun m!462233 () Bool)

(assert (=> b!480635 m!462233))

(declare-fun m!462235 () Bool)

(assert (=> b!480635 m!462235))

(declare-fun m!462237 () Bool)

(assert (=> start!43400 m!462237))

(declare-fun m!462239 () Bool)

(assert (=> start!43400 m!462239))

(declare-fun m!462241 () Bool)

(assert (=> start!43400 m!462241))

(declare-fun m!462243 () Bool)

(assert (=> b!480640 m!462243))

(declare-fun m!462245 () Bool)

(assert (=> b!480634 m!462245))

(declare-fun m!462247 () Bool)

(assert (=> b!480632 m!462247))

(declare-fun m!462249 () Bool)

(assert (=> b!480636 m!462249))

(assert (=> b!480636 m!462249))

(declare-fun m!462251 () Bool)

(assert (=> b!480636 m!462251))

(declare-fun m!462253 () Bool)

(assert (=> mapNonEmpty!22300 m!462253))

(check-sat tp_is_empty!13731 (not b_next!12219) (not b!480640) b_and!20993 (not mapNonEmpty!22300) (not b!480639) (not b!480632) (not b!480635) (not b!480634) (not start!43400) (not b!480636))
(check-sat b_and!20993 (not b_next!12219))
