; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4116 () Bool)

(assert start!4116)

(declare-fun b_free!1023 () Bool)

(declare-fun b_next!1023 () Bool)

(assert (=> start!4116 (= b_free!1023 (not b_next!1023))))

(declare-fun tp!4489 () Bool)

(declare-fun b_and!1835 () Bool)

(assert (=> start!4116 (= tp!4489 b_and!1835)))

(declare-fun b!30769 () Bool)

(declare-fun res!18555 () Bool)

(declare-fun e!19710 () Bool)

(assert (=> b!30769 (=> (not res!18555) (not e!19710))))

(declare-datatypes ((array!1967 0))(
  ( (array!1968 (arr!937 (Array (_ BitVec 32) (_ BitVec 64))) (size!1038 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1967)

(declare-datatypes ((List!767 0))(
  ( (Nil!764) (Cons!763 (h!1330 (_ BitVec 64)) (t!3462 List!767)) )
))
(declare-fun arrayNoDuplicates!0 (array!1967 (_ BitVec 32) List!767) Bool)

(assert (=> b!30769 (= res!18555 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!764))))

(declare-fun b!30770 () Bool)

(declare-fun e!19709 () Bool)

(declare-fun tp_is_empty!1377 () Bool)

(assert (=> b!30770 (= e!19709 tp_is_empty!1377)))

(declare-fun b!30771 () Bool)

(declare-fun res!18559 () Bool)

(assert (=> b!30771 (=> (not res!18559) (not e!19710))))

(declare-datatypes ((V!1661 0))(
  ( (V!1662 (val!715 Int)) )
))
(declare-datatypes ((ValueCell!489 0))(
  ( (ValueCellFull!489 (v!1804 V!1661)) (EmptyCell!489) )
))
(declare-datatypes ((array!1969 0))(
  ( (array!1970 (arr!938 (Array (_ BitVec 32) ValueCell!489)) (size!1039 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1969)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!30771 (= res!18559 (and (= (size!1039 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1038 _keys!1833) (size!1039 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!30772 () Bool)

(declare-fun res!18561 () Bool)

(assert (=> b!30772 (=> (not res!18561) (not e!19710))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30772 (= res!18561 (validKeyInArray!0 k0!1304))))

(declare-fun b!30773 () Bool)

(declare-fun res!18560 () Bool)

(declare-fun e!19714 () Bool)

(assert (=> b!30773 (=> (not res!18560) (not e!19714))))

(declare-fun arrayContainsKey!0 (array!1967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30773 (= res!18560 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30774 () Bool)

(declare-fun res!18557 () Bool)

(assert (=> b!30774 (=> (not res!18557) (not e!19710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1967 (_ BitVec 32)) Bool)

(assert (=> b!30774 (= res!18557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1594 () Bool)

(declare-fun mapRes!1594 () Bool)

(assert (=> mapIsEmpty!1594 mapRes!1594))

(declare-fun b!30775 () Bool)

(declare-fun e!19711 () Bool)

(declare-fun e!19712 () Bool)

(assert (=> b!30775 (= e!19711 (and e!19712 mapRes!1594))))

(declare-fun condMapEmpty!1594 () Bool)

(declare-fun mapDefault!1594 () ValueCell!489)

(assert (=> b!30775 (= condMapEmpty!1594 (= (arr!938 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!489)) mapDefault!1594)))))

(declare-fun b!30776 () Bool)

(assert (=> b!30776 (= e!19712 tp_is_empty!1377)))

(declare-fun res!18556 () Bool)

(assert (=> start!4116 (=> (not res!18556) (not e!19710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4116 (= res!18556 (validMask!0 mask!2294))))

(assert (=> start!4116 e!19710))

(assert (=> start!4116 true))

(assert (=> start!4116 tp!4489))

(declare-fun array_inv!627 (array!1969) Bool)

(assert (=> start!4116 (and (array_inv!627 _values!1501) e!19711)))

(declare-fun array_inv!628 (array!1967) Bool)

(assert (=> start!4116 (array_inv!628 _keys!1833)))

(assert (=> start!4116 tp_is_empty!1377))

(declare-fun mapNonEmpty!1594 () Bool)

(declare-fun tp!4488 () Bool)

(assert (=> mapNonEmpty!1594 (= mapRes!1594 (and tp!4488 e!19709))))

(declare-fun mapKey!1594 () (_ BitVec 32))

(declare-fun mapValue!1594 () ValueCell!489)

(declare-fun mapRest!1594 () (Array (_ BitVec 32) ValueCell!489))

(assert (=> mapNonEmpty!1594 (= (arr!938 _values!1501) (store mapRest!1594 mapKey!1594 mapValue!1594))))

(declare-fun b!30777 () Bool)

(declare-fun e!19713 () Bool)

(assert (=> b!30777 (= e!19713 (not true))))

(declare-datatypes ((tuple2!1164 0))(
  ( (tuple2!1165 (_1!592 (_ BitVec 64)) (_2!592 V!1661)) )
))
(declare-datatypes ((List!768 0))(
  ( (Nil!765) (Cons!764 (h!1331 tuple2!1164) (t!3463 List!768)) )
))
(declare-datatypes ((ListLongMap!745 0))(
  ( (ListLongMap!746 (toList!388 List!768)) )
))
(declare-fun lt!11472 () ListLongMap!745)

(declare-datatypes ((SeekEntryResult!116 0))(
  ( (MissingZero!116 (index!2586 (_ BitVec 32))) (Found!116 (index!2587 (_ BitVec 32))) (Intermediate!116 (undefined!928 Bool) (index!2588 (_ BitVec 32)) (x!6570 (_ BitVec 32))) (Undefined!116) (MissingVacant!116 (index!2589 (_ BitVec 32))) )
))
(declare-fun lt!11471 () SeekEntryResult!116)

(declare-fun contains!325 (ListLongMap!745 (_ BitVec 64)) Bool)

(assert (=> b!30777 (contains!325 lt!11472 (select (arr!937 _keys!1833) (index!2587 lt!11471)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((Unit!695 0))(
  ( (Unit!696) )
))
(declare-fun lt!11470 () Unit!695)

(declare-fun zeroValue!1443 () V!1661)

(declare-fun minValue!1443 () V!1661)

(declare-fun lemmaValidKeyInArrayIsInListMap!39 (array!1967 array!1969 (_ BitVec 32) (_ BitVec 32) V!1661 V!1661 (_ BitVec 32) Int) Unit!695)

(assert (=> b!30777 (= lt!11470 (lemmaValidKeyInArrayIsInListMap!39 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (index!2587 lt!11471) defaultEntry!1504))))

(declare-fun b!30778 () Bool)

(assert (=> b!30778 (= e!19710 e!19714)))

(declare-fun res!18562 () Bool)

(assert (=> b!30778 (=> (not res!18562) (not e!19714))))

(assert (=> b!30778 (= res!18562 (not (contains!325 lt!11472 k0!1304)))))

(declare-fun getCurrentListMap!214 (array!1967 array!1969 (_ BitVec 32) (_ BitVec 32) V!1661 V!1661 (_ BitVec 32) Int) ListLongMap!745)

(assert (=> b!30778 (= lt!11472 (getCurrentListMap!214 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!30779 () Bool)

(assert (=> b!30779 (= e!19714 e!19713)))

(declare-fun res!18558 () Bool)

(assert (=> b!30779 (=> (not res!18558) (not e!19713))))

(get-info :version)

(assert (=> b!30779 (= res!18558 ((_ is Found!116) lt!11471))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1967 (_ BitVec 32)) SeekEntryResult!116)

(assert (=> b!30779 (= lt!11471 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(assert (= (and start!4116 res!18556) b!30771))

(assert (= (and b!30771 res!18559) b!30774))

(assert (= (and b!30774 res!18557) b!30769))

(assert (= (and b!30769 res!18555) b!30772))

(assert (= (and b!30772 res!18561) b!30778))

(assert (= (and b!30778 res!18562) b!30773))

(assert (= (and b!30773 res!18560) b!30779))

(assert (= (and b!30779 res!18558) b!30777))

(assert (= (and b!30775 condMapEmpty!1594) mapIsEmpty!1594))

(assert (= (and b!30775 (not condMapEmpty!1594)) mapNonEmpty!1594))

(assert (= (and mapNonEmpty!1594 ((_ is ValueCellFull!489) mapValue!1594)) b!30770))

(assert (= (and b!30775 ((_ is ValueCellFull!489) mapDefault!1594)) b!30776))

(assert (= start!4116 b!30775))

(declare-fun m!24709 () Bool)

(assert (=> b!30769 m!24709))

(declare-fun m!24711 () Bool)

(assert (=> b!30772 m!24711))

(declare-fun m!24713 () Bool)

(assert (=> b!30779 m!24713))

(declare-fun m!24715 () Bool)

(assert (=> b!30778 m!24715))

(declare-fun m!24717 () Bool)

(assert (=> b!30778 m!24717))

(declare-fun m!24719 () Bool)

(assert (=> mapNonEmpty!1594 m!24719))

(declare-fun m!24721 () Bool)

(assert (=> b!30777 m!24721))

(assert (=> b!30777 m!24721))

(declare-fun m!24723 () Bool)

(assert (=> b!30777 m!24723))

(declare-fun m!24725 () Bool)

(assert (=> b!30777 m!24725))

(declare-fun m!24727 () Bool)

(assert (=> b!30774 m!24727))

(declare-fun m!24729 () Bool)

(assert (=> start!4116 m!24729))

(declare-fun m!24731 () Bool)

(assert (=> start!4116 m!24731))

(declare-fun m!24733 () Bool)

(assert (=> start!4116 m!24733))

(declare-fun m!24735 () Bool)

(assert (=> b!30773 m!24735))

(check-sat (not b!30772) (not b!30774) b_and!1835 (not b!30769) (not start!4116) (not b!30777) (not mapNonEmpty!1594) (not b!30779) tp_is_empty!1377 (not b!30778) (not b!30773) (not b_next!1023))
(check-sat b_and!1835 (not b_next!1023))
