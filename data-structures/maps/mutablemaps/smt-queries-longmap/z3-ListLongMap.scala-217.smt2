; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3984 () Bool)

(assert start!3984)

(declare-fun b_free!891 () Bool)

(declare-fun b_next!891 () Bool)

(assert (=> start!3984 (= b_free!891 (not b_next!891))))

(declare-fun tp!4093 () Bool)

(declare-fun b_and!1703 () Bool)

(assert (=> start!3984 (= tp!4093 b_and!1703)))

(declare-fun mapNonEmpty!1396 () Bool)

(declare-fun mapRes!1396 () Bool)

(declare-fun tp!4092 () Bool)

(declare-fun e!18629 () Bool)

(assert (=> mapNonEmpty!1396 (= mapRes!1396 (and tp!4092 e!18629))))

(declare-datatypes ((V!1485 0))(
  ( (V!1486 (val!649 Int)) )
))
(declare-datatypes ((ValueCell!423 0))(
  ( (ValueCellFull!423 (v!1738 V!1485)) (EmptyCell!423) )
))
(declare-datatypes ((array!1713 0))(
  ( (array!1714 (arr!810 (Array (_ BitVec 32) ValueCell!423)) (size!911 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1713)

(declare-fun mapValue!1396 () ValueCell!423)

(declare-fun mapKey!1396 () (_ BitVec 32))

(declare-fun mapRest!1396 () (Array (_ BitVec 32) ValueCell!423))

(assert (=> mapNonEmpty!1396 (= (arr!810 _values!1501) (store mapRest!1396 mapKey!1396 mapValue!1396))))

(declare-fun res!17198 () Bool)

(declare-fun e!18631 () Bool)

(assert (=> start!3984 (=> (not res!17198) (not e!18631))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3984 (= res!17198 (validMask!0 mask!2294))))

(assert (=> start!3984 e!18631))

(assert (=> start!3984 true))

(assert (=> start!3984 tp!4093))

(declare-fun e!18633 () Bool)

(declare-fun array_inv!547 (array!1713) Bool)

(assert (=> start!3984 (and (array_inv!547 _values!1501) e!18633)))

(declare-datatypes ((array!1715 0))(
  ( (array!1716 (arr!811 (Array (_ BitVec 32) (_ BitVec 64))) (size!912 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1715)

(declare-fun array_inv!548 (array!1715) Bool)

(assert (=> start!3984 (array_inv!548 _keys!1833)))

(declare-fun tp_is_empty!1245 () Bool)

(assert (=> start!3984 tp_is_empty!1245))

(declare-fun b!28816 () Bool)

(assert (=> b!28816 (= e!18629 tp_is_empty!1245)))

(declare-fun b!28817 () Bool)

(declare-fun res!17201 () Bool)

(assert (=> b!28817 (=> (not res!17201) (not e!18631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1715 (_ BitVec 32)) Bool)

(assert (=> b!28817 (= res!17201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!28818 () Bool)

(declare-fun res!17196 () Bool)

(assert (=> b!28818 (=> (not res!17196) (not e!18631))))

(declare-datatypes ((List!675 0))(
  ( (Nil!672) (Cons!671 (h!1238 (_ BitVec 64)) (t!3370 List!675)) )
))
(declare-fun arrayNoDuplicates!0 (array!1715 (_ BitVec 32) List!675) Bool)

(assert (=> b!28818 (= res!17196 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!672))))

(declare-fun b!28819 () Bool)

(declare-fun res!17199 () Bool)

(assert (=> b!28819 (=> (not res!17199) (not e!18631))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28819 (= res!17199 (validKeyInArray!0 k0!1304))))

(declare-fun b!28820 () Bool)

(declare-fun res!17202 () Bool)

(assert (=> b!28820 (=> (not res!17202) (not e!18631))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!28820 (= res!17202 (and (= (size!911 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!912 _keys!1833) (size!911 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!28821 () Bool)

(declare-fun e!18630 () Bool)

(assert (=> b!28821 (= e!18630 true)))

(declare-datatypes ((SeekEntryResult!79 0))(
  ( (MissingZero!79 (index!2438 (_ BitVec 32))) (Found!79 (index!2439 (_ BitVec 32))) (Intermediate!79 (undefined!891 Bool) (index!2440 (_ BitVec 32)) (x!6357 (_ BitVec 32))) (Undefined!79) (MissingVacant!79 (index!2441 (_ BitVec 32))) )
))
(declare-fun lt!10945 () SeekEntryResult!79)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1715 (_ BitVec 32)) SeekEntryResult!79)

(assert (=> b!28821 (= lt!10945 (seekEntryOrOpen!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!28822 () Bool)

(declare-fun res!17197 () Bool)

(declare-fun e!18628 () Bool)

(assert (=> b!28822 (=> (not res!17197) (not e!18628))))

(declare-fun arrayContainsKey!0 (array!1715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28822 (= res!17197 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28823 () Bool)

(declare-fun e!18634 () Bool)

(assert (=> b!28823 (= e!18634 tp_is_empty!1245)))

(declare-fun b!28824 () Bool)

(assert (=> b!28824 (= e!18633 (and e!18634 mapRes!1396))))

(declare-fun condMapEmpty!1396 () Bool)

(declare-fun mapDefault!1396 () ValueCell!423)

(assert (=> b!28824 (= condMapEmpty!1396 (= (arr!810 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!423)) mapDefault!1396)))))

(declare-fun b!28825 () Bool)

(assert (=> b!28825 (= e!18631 e!18628)))

(declare-fun res!17200 () Bool)

(assert (=> b!28825 (=> (not res!17200) (not e!18628))))

(declare-datatypes ((tuple2!1064 0))(
  ( (tuple2!1065 (_1!542 (_ BitVec 64)) (_2!542 V!1485)) )
))
(declare-datatypes ((List!676 0))(
  ( (Nil!673) (Cons!672 (h!1239 tuple2!1064) (t!3371 List!676)) )
))
(declare-datatypes ((ListLongMap!645 0))(
  ( (ListLongMap!646 (toList!338 List!676)) )
))
(declare-fun lt!10944 () ListLongMap!645)

(declare-fun contains!275 (ListLongMap!645 (_ BitVec 64)) Bool)

(assert (=> b!28825 (= res!17200 (not (contains!275 lt!10944 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1485)

(declare-fun minValue!1443 () V!1485)

(declare-fun getCurrentListMap!165 (array!1715 array!1713 (_ BitVec 32) (_ BitVec 32) V!1485 V!1485 (_ BitVec 32) Int) ListLongMap!645)

(assert (=> b!28825 (= lt!10944 (getCurrentListMap!165 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapIsEmpty!1396 () Bool)

(assert (=> mapIsEmpty!1396 mapRes!1396))

(declare-fun b!28826 () Bool)

(assert (=> b!28826 (= e!18628 (not e!18630))))

(declare-fun res!17203 () Bool)

(assert (=> b!28826 (=> res!17203 e!18630)))

(assert (=> b!28826 (= res!17203 (not (= (size!912 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))))))

(declare-fun lt!10946 () (_ BitVec 32))

(assert (=> b!28826 (contains!275 lt!10944 (select (arr!811 _keys!1833) lt!10946))))

(declare-datatypes ((Unit!659 0))(
  ( (Unit!660) )
))
(declare-fun lt!10947 () Unit!659)

(declare-fun lemmaValidKeyInArrayIsInListMap!21 (array!1715 array!1713 (_ BitVec 32) (_ BitVec 32) V!1485 V!1485 (_ BitVec 32) Int) Unit!659)

(assert (=> b!28826 (= lt!10947 (lemmaValidKeyInArrayIsInListMap!21 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!10946 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1715 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28826 (= lt!10946 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(assert (= (and start!3984 res!17198) b!28820))

(assert (= (and b!28820 res!17202) b!28817))

(assert (= (and b!28817 res!17201) b!28818))

(assert (= (and b!28818 res!17196) b!28819))

(assert (= (and b!28819 res!17199) b!28825))

(assert (= (and b!28825 res!17200) b!28822))

(assert (= (and b!28822 res!17197) b!28826))

(assert (= (and b!28826 (not res!17203)) b!28821))

(assert (= (and b!28824 condMapEmpty!1396) mapIsEmpty!1396))

(assert (= (and b!28824 (not condMapEmpty!1396)) mapNonEmpty!1396))

(get-info :version)

(assert (= (and mapNonEmpty!1396 ((_ is ValueCellFull!423) mapValue!1396)) b!28816))

(assert (= (and b!28824 ((_ is ValueCellFull!423) mapDefault!1396)) b!28823))

(assert (= start!3984 b!28824))

(declare-fun m!22989 () Bool)

(assert (=> mapNonEmpty!1396 m!22989))

(declare-fun m!22991 () Bool)

(assert (=> b!28821 m!22991))

(declare-fun m!22993 () Bool)

(assert (=> b!28822 m!22993))

(declare-fun m!22995 () Bool)

(assert (=> start!3984 m!22995))

(declare-fun m!22997 () Bool)

(assert (=> start!3984 m!22997))

(declare-fun m!22999 () Bool)

(assert (=> start!3984 m!22999))

(declare-fun m!23001 () Bool)

(assert (=> b!28825 m!23001))

(declare-fun m!23003 () Bool)

(assert (=> b!28825 m!23003))

(declare-fun m!23005 () Bool)

(assert (=> b!28819 m!23005))

(declare-fun m!23007 () Bool)

(assert (=> b!28818 m!23007))

(declare-fun m!23009 () Bool)

(assert (=> b!28826 m!23009))

(assert (=> b!28826 m!23009))

(declare-fun m!23011 () Bool)

(assert (=> b!28826 m!23011))

(declare-fun m!23013 () Bool)

(assert (=> b!28826 m!23013))

(declare-fun m!23015 () Bool)

(assert (=> b!28826 m!23015))

(declare-fun m!23017 () Bool)

(assert (=> b!28817 m!23017))

(check-sat (not start!3984) tp_is_empty!1245 (not b!28821) (not b!28825) (not mapNonEmpty!1396) b_and!1703 (not b!28822) (not b!28826) (not b_next!891) (not b!28817) (not b!28819) (not b!28818))
(check-sat b_and!1703 (not b_next!891))
