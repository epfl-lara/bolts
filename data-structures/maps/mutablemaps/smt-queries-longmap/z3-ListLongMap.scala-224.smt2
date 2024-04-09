; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4026 () Bool)

(assert start!4026)

(declare-fun b_free!933 () Bool)

(declare-fun b_next!933 () Bool)

(assert (=> start!4026 (= b_free!933 (not b_next!933))))

(declare-fun tp!4219 () Bool)

(declare-fun b_and!1745 () Bool)

(assert (=> start!4026 (= tp!4219 b_and!1745)))

(declare-fun mapIsEmpty!1459 () Bool)

(declare-fun mapRes!1459 () Bool)

(assert (=> mapIsEmpty!1459 mapRes!1459))

(declare-fun b!29450 () Bool)

(declare-fun e!19014 () Bool)

(declare-fun e!19011 () Bool)

(assert (=> b!29450 (= e!19014 e!19011)))

(declare-fun res!17645 () Bool)

(assert (=> b!29450 (=> (not res!17645) (not e!19011))))

(declare-datatypes ((V!1541 0))(
  ( (V!1542 (val!670 Int)) )
))
(declare-datatypes ((tuple2!1098 0))(
  ( (tuple2!1099 (_1!559 (_ BitVec 64)) (_2!559 V!1541)) )
))
(declare-datatypes ((List!705 0))(
  ( (Nil!702) (Cons!701 (h!1268 tuple2!1098) (t!3400 List!705)) )
))
(declare-datatypes ((ListLongMap!679 0))(
  ( (ListLongMap!680 (toList!355 List!705)) )
))
(declare-fun lt!11270 () ListLongMap!679)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!292 (ListLongMap!679 (_ BitVec 64)) Bool)

(assert (=> b!29450 (= res!17645 (not (contains!292 lt!11270 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!444 0))(
  ( (ValueCellFull!444 (v!1759 V!1541)) (EmptyCell!444) )
))
(declare-datatypes ((array!1795 0))(
  ( (array!1796 (arr!851 (Array (_ BitVec 32) ValueCell!444)) (size!952 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1795)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((array!1797 0))(
  ( (array!1798 (arr!852 (Array (_ BitVec 32) (_ BitVec 64))) (size!953 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1797)

(declare-fun zeroValue!1443 () V!1541)

(declare-fun minValue!1443 () V!1541)

(declare-fun getCurrentListMap!182 (array!1797 array!1795 (_ BitVec 32) (_ BitVec 32) V!1541 V!1541 (_ BitVec 32) Int) ListLongMap!679)

(assert (=> b!29450 (= lt!11270 (getCurrentListMap!182 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29451 () Bool)

(declare-fun e!19015 () Bool)

(declare-fun tp_is_empty!1287 () Bool)

(assert (=> b!29451 (= e!19015 tp_is_empty!1287)))

(declare-fun b!29452 () Bool)

(declare-fun e!19013 () Bool)

(declare-fun e!19012 () Bool)

(assert (=> b!29452 (= e!19013 (and e!19012 mapRes!1459))))

(declare-fun condMapEmpty!1459 () Bool)

(declare-fun mapDefault!1459 () ValueCell!444)

(assert (=> b!29452 (= condMapEmpty!1459 (= (arr!851 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!444)) mapDefault!1459)))))

(declare-fun b!29453 () Bool)

(declare-fun res!17644 () Bool)

(assert (=> b!29453 (=> (not res!17644) (not e!19014))))

(assert (=> b!29453 (= res!17644 (and (= (size!952 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!953 _keys!1833) (size!952 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1459 () Bool)

(declare-fun tp!4218 () Bool)

(assert (=> mapNonEmpty!1459 (= mapRes!1459 (and tp!4218 e!19015))))

(declare-fun mapValue!1459 () ValueCell!444)

(declare-fun mapRest!1459 () (Array (_ BitVec 32) ValueCell!444))

(declare-fun mapKey!1459 () (_ BitVec 32))

(assert (=> mapNonEmpty!1459 (= (arr!851 _values!1501) (store mapRest!1459 mapKey!1459 mapValue!1459))))

(declare-fun b!29454 () Bool)

(assert (=> b!29454 (= e!19012 tp_is_empty!1287)))

(declare-fun b!29455 () Bool)

(declare-fun res!17643 () Bool)

(assert (=> b!29455 (=> (not res!17643) (not e!19014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1797 (_ BitVec 32)) Bool)

(assert (=> b!29455 (= res!17643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29456 () Bool)

(assert (=> b!29456 (= e!19011 (not true))))

(declare-fun lt!11271 () (_ BitVec 32))

(assert (=> b!29456 (arrayForallSeekEntryOrOpenFound!0 lt!11271 _keys!1833 mask!2294)))

(declare-datatypes ((Unit!685 0))(
  ( (Unit!686) )
))
(declare-fun lt!11272 () Unit!685)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!1797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!685)

(assert (=> b!29456 (= lt!11272 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1833 mask!2294 #b00000000000000000000000000000000 lt!11271))))

(declare-datatypes ((SeekEntryResult!92 0))(
  ( (MissingZero!92 (index!2490 (_ BitVec 32))) (Found!92 (index!2491 (_ BitVec 32))) (Intermediate!92 (undefined!904 Bool) (index!2492 (_ BitVec 32)) (x!6426 (_ BitVec 32))) (Undefined!92) (MissingVacant!92 (index!2493 (_ BitVec 32))) )
))
(declare-fun lt!11274 () SeekEntryResult!92)

(get-info :version)

(assert (=> b!29456 (and ((_ is Found!92) lt!11274) (= (index!2491 lt!11274) lt!11271))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1797 (_ BitVec 32)) SeekEntryResult!92)

(assert (=> b!29456 (= lt!11274 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun lt!11273 () Unit!685)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1797 (_ BitVec 32)) Unit!685)

(assert (=> b!29456 (= lt!11273 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!11271 _keys!1833 mask!2294))))

(assert (=> b!29456 (contains!292 lt!11270 (select (arr!852 _keys!1833) lt!11271))))

(declare-fun lt!11269 () Unit!685)

(declare-fun lemmaValidKeyInArrayIsInListMap!34 (array!1797 array!1795 (_ BitVec 32) (_ BitVec 32) V!1541 V!1541 (_ BitVec 32) Int) Unit!685)

(assert (=> b!29456 (= lt!11269 (lemmaValidKeyInArrayIsInListMap!34 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11271 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1797 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29456 (= lt!11271 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29457 () Bool)

(declare-fun res!17647 () Bool)

(assert (=> b!29457 (=> (not res!17647) (not e!19011))))

(declare-fun arrayContainsKey!0 (array!1797 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29457 (= res!17647 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun res!17646 () Bool)

(assert (=> start!4026 (=> (not res!17646) (not e!19014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4026 (= res!17646 (validMask!0 mask!2294))))

(assert (=> start!4026 e!19014))

(assert (=> start!4026 true))

(assert (=> start!4026 tp!4219))

(declare-fun array_inv!577 (array!1795) Bool)

(assert (=> start!4026 (and (array_inv!577 _values!1501) e!19013)))

(declare-fun array_inv!578 (array!1797) Bool)

(assert (=> start!4026 (array_inv!578 _keys!1833)))

(assert (=> start!4026 tp_is_empty!1287))

(declare-fun b!29458 () Bool)

(declare-fun res!17641 () Bool)

(assert (=> b!29458 (=> (not res!17641) (not e!19014))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29458 (= res!17641 (validKeyInArray!0 k0!1304))))

(declare-fun b!29459 () Bool)

(declare-fun res!17642 () Bool)

(assert (=> b!29459 (=> (not res!17642) (not e!19014))))

(declare-datatypes ((List!706 0))(
  ( (Nil!703) (Cons!702 (h!1269 (_ BitVec 64)) (t!3401 List!706)) )
))
(declare-fun arrayNoDuplicates!0 (array!1797 (_ BitVec 32) List!706) Bool)

(assert (=> b!29459 (= res!17642 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!703))))

(assert (= (and start!4026 res!17646) b!29453))

(assert (= (and b!29453 res!17644) b!29455))

(assert (= (and b!29455 res!17643) b!29459))

(assert (= (and b!29459 res!17642) b!29458))

(assert (= (and b!29458 res!17641) b!29450))

(assert (= (and b!29450 res!17645) b!29457))

(assert (= (and b!29457 res!17647) b!29456))

(assert (= (and b!29452 condMapEmpty!1459) mapIsEmpty!1459))

(assert (= (and b!29452 (not condMapEmpty!1459)) mapNonEmpty!1459))

(assert (= (and mapNonEmpty!1459 ((_ is ValueCellFull!444) mapValue!1459)) b!29451))

(assert (= (and b!29452 ((_ is ValueCellFull!444) mapDefault!1459)) b!29454))

(assert (= start!4026 b!29452))

(declare-fun m!23673 () Bool)

(assert (=> b!29455 m!23673))

(declare-fun m!23675 () Bool)

(assert (=> start!4026 m!23675))

(declare-fun m!23677 () Bool)

(assert (=> start!4026 m!23677))

(declare-fun m!23679 () Bool)

(assert (=> start!4026 m!23679))

(declare-fun m!23681 () Bool)

(assert (=> b!29458 m!23681))

(declare-fun m!23683 () Bool)

(assert (=> b!29457 m!23683))

(declare-fun m!23685 () Bool)

(assert (=> b!29456 m!23685))

(declare-fun m!23687 () Bool)

(assert (=> b!29456 m!23687))

(declare-fun m!23689 () Bool)

(assert (=> b!29456 m!23689))

(assert (=> b!29456 m!23687))

(declare-fun m!23691 () Bool)

(assert (=> b!29456 m!23691))

(declare-fun m!23693 () Bool)

(assert (=> b!29456 m!23693))

(declare-fun m!23695 () Bool)

(assert (=> b!29456 m!23695))

(declare-fun m!23697 () Bool)

(assert (=> b!29456 m!23697))

(declare-fun m!23699 () Bool)

(assert (=> b!29456 m!23699))

(declare-fun m!23701 () Bool)

(assert (=> b!29450 m!23701))

(declare-fun m!23703 () Bool)

(assert (=> b!29450 m!23703))

(declare-fun m!23705 () Bool)

(assert (=> b!29459 m!23705))

(declare-fun m!23707 () Bool)

(assert (=> mapNonEmpty!1459 m!23707))

(check-sat (not b!29456) (not b!29458) tp_is_empty!1287 (not b!29455) (not b!29459) b_and!1745 (not b!29450) (not b_next!933) (not start!4026) (not b!29457) (not mapNonEmpty!1459))
(check-sat b_and!1745 (not b_next!933))
