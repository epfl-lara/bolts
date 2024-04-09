; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4002 () Bool)

(assert start!4002)

(declare-fun b_free!909 () Bool)

(declare-fun b_next!909 () Bool)

(assert (=> start!4002 (= b_free!909 (not b_next!909))))

(declare-fun tp!4146 () Bool)

(declare-fun b_and!1721 () Bool)

(assert (=> start!4002 (= tp!4146 b_and!1721)))

(declare-fun b!29090 () Bool)

(declare-fun e!18798 () Bool)

(declare-fun tp_is_empty!1263 () Bool)

(assert (=> b!29090 (= e!18798 tp_is_empty!1263)))

(declare-fun b!29091 () Bool)

(declare-fun res!17390 () Bool)

(declare-fun e!18794 () Bool)

(assert (=> b!29091 (=> (not res!17390) (not e!18794))))

(declare-datatypes ((array!1747 0))(
  ( (array!1748 (arr!827 (Array (_ BitVec 32) (_ BitVec 64))) (size!928 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1747)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29091 (= res!17390 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29092 () Bool)

(declare-fun e!18796 () Bool)

(declare-fun mapRes!1423 () Bool)

(assert (=> b!29092 (= e!18796 (and e!18798 mapRes!1423))))

(declare-fun condMapEmpty!1423 () Bool)

(declare-datatypes ((V!1509 0))(
  ( (V!1510 (val!658 Int)) )
))
(declare-datatypes ((ValueCell!432 0))(
  ( (ValueCellFull!432 (v!1747 V!1509)) (EmptyCell!432) )
))
(declare-datatypes ((array!1749 0))(
  ( (array!1750 (arr!828 (Array (_ BitVec 32) ValueCell!432)) (size!929 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1749)

(declare-fun mapDefault!1423 () ValueCell!432)

(assert (=> b!29092 (= condMapEmpty!1423 (= (arr!828 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!432)) mapDefault!1423)))))

(declare-fun b!29093 () Bool)

(declare-fun res!17393 () Bool)

(declare-fun e!18799 () Bool)

(assert (=> b!29093 (=> (not res!17393) (not e!18799))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1747 (_ BitVec 32)) Bool)

(assert (=> b!29093 (= res!17393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1423 () Bool)

(assert (=> mapIsEmpty!1423 mapRes!1423))

(declare-fun b!29094 () Bool)

(declare-fun res!17389 () Bool)

(assert (=> b!29094 (=> (not res!17389) (not e!18799))))

(declare-datatypes ((List!688 0))(
  ( (Nil!685) (Cons!684 (h!1251 (_ BitVec 64)) (t!3383 List!688)) )
))
(declare-fun arrayNoDuplicates!0 (array!1747 (_ BitVec 32) List!688) Bool)

(assert (=> b!29094 (= res!17389 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!685))))

(declare-fun b!29096 () Bool)

(assert (=> b!29096 (= e!18794 (not true))))

(declare-datatypes ((SeekEntryResult!85 0))(
  ( (MissingZero!85 (index!2462 (_ BitVec 32))) (Found!85 (index!2463 (_ BitVec 32))) (Intermediate!85 (undefined!897 Bool) (index!2464 (_ BitVec 32)) (x!6387 (_ BitVec 32))) (Undefined!85) (MissingVacant!85 (index!2465 (_ BitVec 32))) )
))
(declare-fun lt!11078 () SeekEntryResult!85)

(declare-fun lt!11079 () (_ BitVec 32))

(get-info :version)

(assert (=> b!29096 (and ((_ is Found!85) lt!11078) (= (index!2463 lt!11078) lt!11079))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1747 (_ BitVec 32)) SeekEntryResult!85)

(assert (=> b!29096 (= lt!11078 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!671 0))(
  ( (Unit!672) )
))
(declare-fun lt!11077 () Unit!671)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1747 (_ BitVec 32)) Unit!671)

(assert (=> b!29096 (= lt!11077 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!11079 _keys!1833 mask!2294))))

(declare-datatypes ((tuple2!1078 0))(
  ( (tuple2!1079 (_1!549 (_ BitVec 64)) (_2!549 V!1509)) )
))
(declare-datatypes ((List!689 0))(
  ( (Nil!686) (Cons!685 (h!1252 tuple2!1078) (t!3384 List!689)) )
))
(declare-datatypes ((ListLongMap!659 0))(
  ( (ListLongMap!660 (toList!345 List!689)) )
))
(declare-fun lt!11075 () ListLongMap!659)

(declare-fun contains!282 (ListLongMap!659 (_ BitVec 64)) Bool)

(assert (=> b!29096 (contains!282 lt!11075 (select (arr!827 _keys!1833) lt!11079))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!11076 () Unit!671)

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1509)

(declare-fun minValue!1443 () V!1509)

(declare-fun lemmaValidKeyInArrayIsInListMap!27 (array!1747 array!1749 (_ BitVec 32) (_ BitVec 32) V!1509 V!1509 (_ BitVec 32) Int) Unit!671)

(assert (=> b!29096 (= lt!11076 (lemmaValidKeyInArrayIsInListMap!27 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11079 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1747 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29096 (= lt!11079 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29097 () Bool)

(declare-fun e!18795 () Bool)

(assert (=> b!29097 (= e!18795 tp_is_empty!1263)))

(declare-fun mapNonEmpty!1423 () Bool)

(declare-fun tp!4147 () Bool)

(assert (=> mapNonEmpty!1423 (= mapRes!1423 (and tp!4147 e!18795))))

(declare-fun mapRest!1423 () (Array (_ BitVec 32) ValueCell!432))

(declare-fun mapValue!1423 () ValueCell!432)

(declare-fun mapKey!1423 () (_ BitVec 32))

(assert (=> mapNonEmpty!1423 (= (arr!828 _values!1501) (store mapRest!1423 mapKey!1423 mapValue!1423))))

(declare-fun b!29098 () Bool)

(assert (=> b!29098 (= e!18799 e!18794)))

(declare-fun res!17392 () Bool)

(assert (=> b!29098 (=> (not res!17392) (not e!18794))))

(assert (=> b!29098 (= res!17392 (not (contains!282 lt!11075 k0!1304)))))

(declare-fun getCurrentListMap!172 (array!1747 array!1749 (_ BitVec 32) (_ BitVec 32) V!1509 V!1509 (_ BitVec 32) Int) ListLongMap!659)

(assert (=> b!29098 (= lt!11075 (getCurrentListMap!172 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29099 () Bool)

(declare-fun res!17395 () Bool)

(assert (=> b!29099 (=> (not res!17395) (not e!18799))))

(assert (=> b!29099 (= res!17395 (and (= (size!929 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!928 _keys!1833) (size!929 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun res!17394 () Bool)

(assert (=> start!4002 (=> (not res!17394) (not e!18799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4002 (= res!17394 (validMask!0 mask!2294))))

(assert (=> start!4002 e!18799))

(assert (=> start!4002 true))

(assert (=> start!4002 tp!4146))

(declare-fun array_inv!561 (array!1749) Bool)

(assert (=> start!4002 (and (array_inv!561 _values!1501) e!18796)))

(declare-fun array_inv!562 (array!1747) Bool)

(assert (=> start!4002 (array_inv!562 _keys!1833)))

(assert (=> start!4002 tp_is_empty!1263))

(declare-fun b!29095 () Bool)

(declare-fun res!17391 () Bool)

(assert (=> b!29095 (=> (not res!17391) (not e!18799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29095 (= res!17391 (validKeyInArray!0 k0!1304))))

(assert (= (and start!4002 res!17394) b!29099))

(assert (= (and b!29099 res!17395) b!29093))

(assert (= (and b!29093 res!17393) b!29094))

(assert (= (and b!29094 res!17389) b!29095))

(assert (= (and b!29095 res!17391) b!29098))

(assert (= (and b!29098 res!17392) b!29091))

(assert (= (and b!29091 res!17390) b!29096))

(assert (= (and b!29092 condMapEmpty!1423) mapIsEmpty!1423))

(assert (= (and b!29092 (not condMapEmpty!1423)) mapNonEmpty!1423))

(assert (= (and mapNonEmpty!1423 ((_ is ValueCellFull!432) mapValue!1423)) b!29097))

(assert (= (and b!29092 ((_ is ValueCellFull!432) mapDefault!1423)) b!29090))

(assert (= start!4002 b!29092))

(declare-fun m!23273 () Bool)

(assert (=> b!29091 m!23273))

(declare-fun m!23275 () Bool)

(assert (=> mapNonEmpty!1423 m!23275))

(declare-fun m!23277 () Bool)

(assert (=> b!29094 m!23277))

(declare-fun m!23279 () Bool)

(assert (=> b!29095 m!23279))

(declare-fun m!23281 () Bool)

(assert (=> b!29093 m!23281))

(declare-fun m!23283 () Bool)

(assert (=> start!4002 m!23283))

(declare-fun m!23285 () Bool)

(assert (=> start!4002 m!23285))

(declare-fun m!23287 () Bool)

(assert (=> start!4002 m!23287))

(declare-fun m!23289 () Bool)

(assert (=> b!29098 m!23289))

(declare-fun m!23291 () Bool)

(assert (=> b!29098 m!23291))

(declare-fun m!23293 () Bool)

(assert (=> b!29096 m!23293))

(declare-fun m!23295 () Bool)

(assert (=> b!29096 m!23295))

(declare-fun m!23297 () Bool)

(assert (=> b!29096 m!23297))

(declare-fun m!23299 () Bool)

(assert (=> b!29096 m!23299))

(declare-fun m!23301 () Bool)

(assert (=> b!29096 m!23301))

(assert (=> b!29096 m!23295))

(declare-fun m!23303 () Bool)

(assert (=> b!29096 m!23303))

(check-sat (not start!4002) (not b!29096) (not b!29093) (not b!29095) (not b_next!909) tp_is_empty!1263 (not b!29094) b_and!1721 (not b!29098) (not b!29091) (not mapNonEmpty!1423))
(check-sat b_and!1721 (not b_next!909))
