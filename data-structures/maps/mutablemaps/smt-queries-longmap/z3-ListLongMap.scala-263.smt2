; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4324 () Bool)

(assert start!4324)

(declare-fun b_free!1167 () Bool)

(declare-fun b_next!1167 () Bool)

(assert (=> start!4324 (= b_free!1167 (not b_next!1167))))

(declare-fun tp!4929 () Bool)

(declare-fun b_and!1985 () Bool)

(assert (=> start!4324 (= tp!4929 b_and!1985)))

(declare-fun b!33311 () Bool)

(declare-fun e!21162 () Bool)

(declare-fun tp_is_empty!1521 () Bool)

(assert (=> b!33311 (= e!21162 tp_is_empty!1521)))

(declare-fun res!20219 () Bool)

(declare-fun e!21157 () Bool)

(assert (=> start!4324 (=> (not res!20219) (not e!21157))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4324 (= res!20219 (validMask!0 mask!2294))))

(assert (=> start!4324 e!21157))

(assert (=> start!4324 true))

(assert (=> start!4324 tp!4929))

(declare-datatypes ((V!1853 0))(
  ( (V!1854 (val!787 Int)) )
))
(declare-datatypes ((ValueCell!561 0))(
  ( (ValueCellFull!561 (v!1879 V!1853)) (EmptyCell!561) )
))
(declare-datatypes ((array!2251 0))(
  ( (array!2252 (arr!1076 (Array (_ BitVec 32) ValueCell!561)) (size!1177 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2251)

(declare-fun e!21161 () Bool)

(declare-fun array_inv!715 (array!2251) Bool)

(assert (=> start!4324 (and (array_inv!715 _values!1501) e!21161)))

(declare-datatypes ((array!2253 0))(
  ( (array!2254 (arr!1077 (Array (_ BitVec 32) (_ BitVec 64))) (size!1178 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2253)

(declare-fun array_inv!716 (array!2253) Bool)

(assert (=> start!4324 (array_inv!716 _keys!1833)))

(assert (=> start!4324 tp_is_empty!1521))

(declare-fun mapIsEmpty!1819 () Bool)

(declare-fun mapRes!1819 () Bool)

(assert (=> mapIsEmpty!1819 mapRes!1819))

(declare-fun b!33312 () Bool)

(declare-fun e!21160 () Bool)

(assert (=> b!33312 (= e!21157 e!21160)))

(declare-fun res!20220 () Bool)

(assert (=> b!33312 (=> (not res!20220) (not e!21160))))

(declare-datatypes ((tuple2!1272 0))(
  ( (tuple2!1273 (_1!646 (_ BitVec 64)) (_2!646 V!1853)) )
))
(declare-datatypes ((List!875 0))(
  ( (Nil!872) (Cons!871 (h!1438 tuple2!1272) (t!3576 List!875)) )
))
(declare-datatypes ((ListLongMap!853 0))(
  ( (ListLongMap!854 (toList!442 List!875)) )
))
(declare-fun lt!12120 () ListLongMap!853)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun contains!382 (ListLongMap!853 (_ BitVec 64)) Bool)

(assert (=> b!33312 (= res!20220 (not (contains!382 lt!12120 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1853)

(declare-fun minValue!1443 () V!1853)

(declare-fun getCurrentListMap!266 (array!2253 array!2251 (_ BitVec 32) (_ BitVec 32) V!1853 V!1853 (_ BitVec 32) Int) ListLongMap!853)

(assert (=> b!33312 (= lt!12120 (getCurrentListMap!266 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!33313 () Bool)

(declare-fun res!20224 () Bool)

(assert (=> b!33313 (=> (not res!20224) (not e!21157))))

(assert (=> b!33313 (= res!20224 (and (= (size!1177 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1178 _keys!1833) (size!1177 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!33314 () Bool)

(assert (=> b!33314 (= e!21160 (not true))))

(declare-datatypes ((SeekEntryResult!134 0))(
  ( (MissingZero!134 (index!2658 (_ BitVec 32))) (Found!134 (index!2659 (_ BitVec 32))) (Intermediate!134 (undefined!946 Bool) (index!2660 (_ BitVec 32)) (x!6810 (_ BitVec 32))) (Undefined!134) (MissingVacant!134 (index!2661 (_ BitVec 32))) )
))
(declare-fun lt!12118 () SeekEntryResult!134)

(declare-fun lt!12117 () (_ BitVec 32))

(get-info :version)

(assert (=> b!33314 (and ((_ is Found!134) lt!12118) (= (index!2659 lt!12118) lt!12117))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2253 (_ BitVec 32)) SeekEntryResult!134)

(assert (=> b!33314 (= lt!12118 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!740 0))(
  ( (Unit!741) )
))
(declare-fun lt!12121 () Unit!740)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2253 (_ BitVec 32)) Unit!740)

(assert (=> b!33314 (= lt!12121 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12117 _keys!1833 mask!2294))))

(assert (=> b!33314 (contains!382 lt!12120 (select (arr!1077 _keys!1833) lt!12117))))

(declare-fun lt!12119 () Unit!740)

(declare-fun lemmaValidKeyInArrayIsInListMap!56 (array!2253 array!2251 (_ BitVec 32) (_ BitVec 32) V!1853 V!1853 (_ BitVec 32) Int) Unit!740)

(assert (=> b!33314 (= lt!12119 (lemmaValidKeyInArrayIsInListMap!56 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12117 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2253 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33314 (= lt!12117 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!1819 () Bool)

(declare-fun tp!4930 () Bool)

(assert (=> mapNonEmpty!1819 (= mapRes!1819 (and tp!4930 e!21162))))

(declare-fun mapRest!1819 () (Array (_ BitVec 32) ValueCell!561))

(declare-fun mapValue!1819 () ValueCell!561)

(declare-fun mapKey!1819 () (_ BitVec 32))

(assert (=> mapNonEmpty!1819 (= (arr!1076 _values!1501) (store mapRest!1819 mapKey!1819 mapValue!1819))))

(declare-fun b!33315 () Bool)

(declare-fun res!20225 () Bool)

(assert (=> b!33315 (=> (not res!20225) (not e!21157))))

(declare-datatypes ((List!876 0))(
  ( (Nil!873) (Cons!872 (h!1439 (_ BitVec 64)) (t!3577 List!876)) )
))
(declare-fun arrayNoDuplicates!0 (array!2253 (_ BitVec 32) List!876) Bool)

(assert (=> b!33315 (= res!20225 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!873))))

(declare-fun b!33316 () Bool)

(declare-fun res!20222 () Bool)

(assert (=> b!33316 (=> (not res!20222) (not e!21157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33316 (= res!20222 (validKeyInArray!0 k0!1304))))

(declare-fun b!33317 () Bool)

(declare-fun e!21158 () Bool)

(assert (=> b!33317 (= e!21161 (and e!21158 mapRes!1819))))

(declare-fun condMapEmpty!1819 () Bool)

(declare-fun mapDefault!1819 () ValueCell!561)

(assert (=> b!33317 (= condMapEmpty!1819 (= (arr!1076 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!561)) mapDefault!1819)))))

(declare-fun b!33318 () Bool)

(declare-fun res!20223 () Bool)

(assert (=> b!33318 (=> (not res!20223) (not e!21160))))

(declare-fun arrayContainsKey!0 (array!2253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33318 (= res!20223 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!33319 () Bool)

(declare-fun res!20221 () Bool)

(assert (=> b!33319 (=> (not res!20221) (not e!21157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2253 (_ BitVec 32)) Bool)

(assert (=> b!33319 (= res!20221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!33320 () Bool)

(assert (=> b!33320 (= e!21158 tp_is_empty!1521)))

(assert (= (and start!4324 res!20219) b!33313))

(assert (= (and b!33313 res!20224) b!33319))

(assert (= (and b!33319 res!20221) b!33315))

(assert (= (and b!33315 res!20225) b!33316))

(assert (= (and b!33316 res!20222) b!33312))

(assert (= (and b!33312 res!20220) b!33318))

(assert (= (and b!33318 res!20223) b!33314))

(assert (= (and b!33317 condMapEmpty!1819) mapIsEmpty!1819))

(assert (= (and b!33317 (not condMapEmpty!1819)) mapNonEmpty!1819))

(assert (= (and mapNonEmpty!1819 ((_ is ValueCellFull!561) mapValue!1819)) b!33311))

(assert (= (and b!33317 ((_ is ValueCellFull!561) mapDefault!1819)) b!33320))

(assert (= start!4324 b!33317))

(declare-fun m!26707 () Bool)

(assert (=> b!33318 m!26707))

(declare-fun m!26709 () Bool)

(assert (=> b!33315 m!26709))

(declare-fun m!26711 () Bool)

(assert (=> start!4324 m!26711))

(declare-fun m!26713 () Bool)

(assert (=> start!4324 m!26713))

(declare-fun m!26715 () Bool)

(assert (=> start!4324 m!26715))

(declare-fun m!26717 () Bool)

(assert (=> b!33312 m!26717))

(declare-fun m!26719 () Bool)

(assert (=> b!33312 m!26719))

(declare-fun m!26721 () Bool)

(assert (=> b!33316 m!26721))

(declare-fun m!26723 () Bool)

(assert (=> b!33314 m!26723))

(declare-fun m!26725 () Bool)

(assert (=> b!33314 m!26725))

(declare-fun m!26727 () Bool)

(assert (=> b!33314 m!26727))

(assert (=> b!33314 m!26723))

(declare-fun m!26729 () Bool)

(assert (=> b!33314 m!26729))

(declare-fun m!26731 () Bool)

(assert (=> b!33314 m!26731))

(declare-fun m!26733 () Bool)

(assert (=> b!33314 m!26733))

(declare-fun m!26735 () Bool)

(assert (=> b!33319 m!26735))

(declare-fun m!26737 () Bool)

(assert (=> mapNonEmpty!1819 m!26737))

(check-sat (not b!33314) (not mapNonEmpty!1819) b_and!1985 (not start!4324) (not b!33315) tp_is_empty!1521 (not b!33318) (not b!33312) (not b_next!1167) (not b!33316) (not b!33319))
(check-sat b_and!1985 (not b_next!1167))
