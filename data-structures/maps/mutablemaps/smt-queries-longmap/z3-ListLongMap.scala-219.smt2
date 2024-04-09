; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3996 () Bool)

(assert start!3996)

(declare-fun b_free!903 () Bool)

(declare-fun b_next!903 () Bool)

(assert (=> start!3996 (= b_free!903 (not b_next!903))))

(declare-fun tp!4128 () Bool)

(declare-fun b_and!1715 () Bool)

(assert (=> start!3996 (= tp!4128 b_and!1715)))

(declare-fun b!29000 () Bool)

(declare-fun res!17329 () Bool)

(declare-fun e!18745 () Bool)

(assert (=> b!29000 (=> (not res!17329) (not e!18745))))

(declare-datatypes ((array!1735 0))(
  ( (array!1736 (arr!821 (Array (_ BitVec 32) (_ BitVec 64))) (size!922 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1735)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1735 (_ BitVec 32)) Bool)

(assert (=> b!29000 (= res!17329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!17327 () Bool)

(assert (=> start!3996 (=> (not res!17327) (not e!18745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3996 (= res!17327 (validMask!0 mask!2294))))

(assert (=> start!3996 e!18745))

(assert (=> start!3996 true))

(assert (=> start!3996 tp!4128))

(declare-datatypes ((V!1501 0))(
  ( (V!1502 (val!655 Int)) )
))
(declare-datatypes ((ValueCell!429 0))(
  ( (ValueCellFull!429 (v!1744 V!1501)) (EmptyCell!429) )
))
(declare-datatypes ((array!1737 0))(
  ( (array!1738 (arr!822 (Array (_ BitVec 32) ValueCell!429)) (size!923 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1737)

(declare-fun e!18742 () Bool)

(declare-fun array_inv!555 (array!1737) Bool)

(assert (=> start!3996 (and (array_inv!555 _values!1501) e!18742)))

(declare-fun array_inv!556 (array!1735) Bool)

(assert (=> start!3996 (array_inv!556 _keys!1833)))

(declare-fun tp_is_empty!1257 () Bool)

(assert (=> start!3996 tp_is_empty!1257))

(declare-fun b!29001 () Bool)

(declare-fun res!17326 () Bool)

(assert (=> b!29001 (=> (not res!17326) (not e!18745))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!29001 (= res!17326 (and (= (size!923 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!922 _keys!1833) (size!923 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!29002 () Bool)

(declare-fun res!17330 () Bool)

(assert (=> b!29002 (=> (not res!17330) (not e!18745))))

(declare-datatypes ((List!684 0))(
  ( (Nil!681) (Cons!680 (h!1247 (_ BitVec 64)) (t!3379 List!684)) )
))
(declare-fun arrayNoDuplicates!0 (array!1735 (_ BitVec 32) List!684) Bool)

(assert (=> b!29002 (= res!17330 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!681))))

(declare-fun b!29003 () Bool)

(declare-fun res!17332 () Bool)

(declare-fun e!18743 () Bool)

(assert (=> b!29003 (=> (not res!17332) (not e!18743))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!29003 (= res!17332 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!29004 () Bool)

(assert (=> b!29004 (= e!18745 e!18743)))

(declare-fun res!17331 () Bool)

(assert (=> b!29004 (=> (not res!17331) (not e!18743))))

(declare-datatypes ((tuple2!1074 0))(
  ( (tuple2!1075 (_1!547 (_ BitVec 64)) (_2!547 V!1501)) )
))
(declare-datatypes ((List!685 0))(
  ( (Nil!682) (Cons!681 (h!1248 tuple2!1074) (t!3380 List!685)) )
))
(declare-datatypes ((ListLongMap!655 0))(
  ( (ListLongMap!656 (toList!343 List!685)) )
))
(declare-fun lt!11030 () ListLongMap!655)

(declare-fun contains!280 (ListLongMap!655 (_ BitVec 64)) Bool)

(assert (=> b!29004 (= res!17331 (not (contains!280 lt!11030 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1501)

(declare-fun minValue!1443 () V!1501)

(declare-fun getCurrentListMap!170 (array!1735 array!1737 (_ BitVec 32) (_ BitVec 32) V!1501 V!1501 (_ BitVec 32) Int) ListLongMap!655)

(assert (=> b!29004 (= lt!11030 (getCurrentListMap!170 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29005 () Bool)

(declare-fun e!18740 () Bool)

(assert (=> b!29005 (= e!18740 tp_is_empty!1257)))

(declare-fun b!29006 () Bool)

(declare-fun e!18741 () Bool)

(assert (=> b!29006 (= e!18741 tp_is_empty!1257)))

(declare-fun b!29007 () Bool)

(declare-fun res!17328 () Bool)

(assert (=> b!29007 (=> (not res!17328) (not e!18745))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!29007 (= res!17328 (validKeyInArray!0 k0!1304))))

(declare-fun mapNonEmpty!1414 () Bool)

(declare-fun mapRes!1414 () Bool)

(declare-fun tp!4129 () Bool)

(assert (=> mapNonEmpty!1414 (= mapRes!1414 (and tp!4129 e!18740))))

(declare-fun mapKey!1414 () (_ BitVec 32))

(declare-fun mapValue!1414 () ValueCell!429)

(declare-fun mapRest!1414 () (Array (_ BitVec 32) ValueCell!429))

(assert (=> mapNonEmpty!1414 (= (arr!822 _values!1501) (store mapRest!1414 mapKey!1414 mapValue!1414))))

(declare-fun mapIsEmpty!1414 () Bool)

(assert (=> mapIsEmpty!1414 mapRes!1414))

(declare-fun b!29008 () Bool)

(assert (=> b!29008 (= e!18742 (and e!18741 mapRes!1414))))

(declare-fun condMapEmpty!1414 () Bool)

(declare-fun mapDefault!1414 () ValueCell!429)

(assert (=> b!29008 (= condMapEmpty!1414 (= (arr!822 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!429)) mapDefault!1414)))))

(declare-fun b!29009 () Bool)

(assert (=> b!29009 (= e!18743 (not true))))

(declare-datatypes ((SeekEntryResult!83 0))(
  ( (MissingZero!83 (index!2454 (_ BitVec 32))) (Found!83 (index!2455 (_ BitVec 32))) (Intermediate!83 (undefined!895 Bool) (index!2456 (_ BitVec 32)) (x!6377 (_ BitVec 32))) (Undefined!83) (MissingVacant!83 (index!2457 (_ BitVec 32))) )
))
(declare-fun lt!11034 () SeekEntryResult!83)

(declare-fun lt!11033 () (_ BitVec 32))

(get-info :version)

(assert (=> b!29009 (and ((_ is Found!83) lt!11034) (= (index!2455 lt!11034) lt!11033))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1735 (_ BitVec 32)) SeekEntryResult!83)

(assert (=> b!29009 (= lt!11034 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!667 0))(
  ( (Unit!668) )
))
(declare-fun lt!11031 () Unit!667)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!1735 (_ BitVec 32)) Unit!667)

(assert (=> b!29009 (= lt!11031 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!11033 _keys!1833 mask!2294))))

(assert (=> b!29009 (contains!280 lt!11030 (select (arr!821 _keys!1833) lt!11033))))

(declare-fun lt!11032 () Unit!667)

(declare-fun lemmaValidKeyInArrayIsInListMap!25 (array!1735 array!1737 (_ BitVec 32) (_ BitVec 32) V!1501 V!1501 (_ BitVec 32) Int) Unit!667)

(assert (=> b!29009 (= lt!11032 (lemmaValidKeyInArrayIsInListMap!25 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11033 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!1735 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!29009 (= lt!11033 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(assert (= (and start!3996 res!17327) b!29001))

(assert (= (and b!29001 res!17326) b!29000))

(assert (= (and b!29000 res!17329) b!29002))

(assert (= (and b!29002 res!17330) b!29007))

(assert (= (and b!29007 res!17328) b!29004))

(assert (= (and b!29004 res!17331) b!29003))

(assert (= (and b!29003 res!17332) b!29009))

(assert (= (and b!29008 condMapEmpty!1414) mapIsEmpty!1414))

(assert (= (and b!29008 (not condMapEmpty!1414)) mapNonEmpty!1414))

(assert (= (and mapNonEmpty!1414 ((_ is ValueCellFull!429) mapValue!1414)) b!29005))

(assert (= (and b!29008 ((_ is ValueCellFull!429) mapDefault!1414)) b!29006))

(assert (= start!3996 b!29008))

(declare-fun m!23177 () Bool)

(assert (=> b!29009 m!23177))

(declare-fun m!23179 () Bool)

(assert (=> b!29009 m!23179))

(declare-fun m!23181 () Bool)

(assert (=> b!29009 m!23181))

(declare-fun m!23183 () Bool)

(assert (=> b!29009 m!23183))

(assert (=> b!29009 m!23179))

(declare-fun m!23185 () Bool)

(assert (=> b!29009 m!23185))

(declare-fun m!23187 () Bool)

(assert (=> b!29009 m!23187))

(declare-fun m!23189 () Bool)

(assert (=> mapNonEmpty!1414 m!23189))

(declare-fun m!23191 () Bool)

(assert (=> b!29007 m!23191))

(declare-fun m!23193 () Bool)

(assert (=> b!29003 m!23193))

(declare-fun m!23195 () Bool)

(assert (=> b!29002 m!23195))

(declare-fun m!23197 () Bool)

(assert (=> start!3996 m!23197))

(declare-fun m!23199 () Bool)

(assert (=> start!3996 m!23199))

(declare-fun m!23201 () Bool)

(assert (=> start!3996 m!23201))

(declare-fun m!23203 () Bool)

(assert (=> b!29000 m!23203))

(declare-fun m!23205 () Bool)

(assert (=> b!29004 m!23205))

(declare-fun m!23207 () Bool)

(assert (=> b!29004 m!23207))

(check-sat (not b!29000) (not b!29004) (not b!29007) (not start!3996) (not b!29003) (not b!29009) b_and!1715 tp_is_empty!1257 (not b!29002) (not mapNonEmpty!1414) (not b_next!903))
(check-sat b_and!1715 (not b_next!903))
