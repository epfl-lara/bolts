; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4336 () Bool)

(assert start!4336)

(declare-fun b_free!1179 () Bool)

(declare-fun b_next!1179 () Bool)

(assert (=> start!4336 (= b_free!1179 (not b_next!1179))))

(declare-fun tp!4965 () Bool)

(declare-fun b_and!1997 () Bool)

(assert (=> start!4336 (= tp!4965 b_and!1997)))

(declare-fun b!33491 () Bool)

(declare-fun res!20348 () Bool)

(declare-fun e!21270 () Bool)

(assert (=> b!33491 (=> (not res!20348) (not e!21270))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!33491 (= res!20348 (validKeyInArray!0 k0!1304))))

(declare-fun b!33492 () Bool)

(declare-fun res!20346 () Bool)

(declare-fun e!21269 () Bool)

(assert (=> b!33492 (=> (not res!20346) (not e!21269))))

(declare-datatypes ((array!2271 0))(
  ( (array!2272 (arr!1086 (Array (_ BitVec 32) (_ BitVec 64))) (size!1187 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2271)

(declare-fun arrayContainsKey!0 (array!2271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!33492 (= res!20346 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!33493 () Bool)

(assert (=> b!33493 (= e!21270 e!21269)))

(declare-fun res!20350 () Bool)

(assert (=> b!33493 (=> (not res!20350) (not e!21269))))

(declare-datatypes ((V!1869 0))(
  ( (V!1870 (val!793 Int)) )
))
(declare-datatypes ((tuple2!1278 0))(
  ( (tuple2!1279 (_1!649 (_ BitVec 64)) (_2!649 V!1869)) )
))
(declare-datatypes ((List!882 0))(
  ( (Nil!879) (Cons!878 (h!1445 tuple2!1278) (t!3583 List!882)) )
))
(declare-datatypes ((ListLongMap!859 0))(
  ( (ListLongMap!860 (toList!445 List!882)) )
))
(declare-fun lt!12207 () ListLongMap!859)

(declare-fun contains!385 (ListLongMap!859 (_ BitVec 64)) Bool)

(assert (=> b!33493 (= res!20350 (not (contains!385 lt!12207 k0!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!567 0))(
  ( (ValueCellFull!567 (v!1885 V!1869)) (EmptyCell!567) )
))
(declare-datatypes ((array!2273 0))(
  ( (array!2274 (arr!1087 (Array (_ BitVec 32) ValueCell!567)) (size!1188 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2273)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1869)

(declare-fun minValue!1443 () V!1869)

(declare-fun getCurrentListMap!269 (array!2271 array!2273 (_ BitVec 32) (_ BitVec 32) V!1869 V!1869 (_ BitVec 32) Int) ListLongMap!859)

(assert (=> b!33493 (= lt!12207 (getCurrentListMap!269 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!33494 () Bool)

(declare-fun res!20345 () Bool)

(assert (=> b!33494 (=> (not res!20345) (not e!21270))))

(declare-datatypes ((List!883 0))(
  ( (Nil!880) (Cons!879 (h!1446 (_ BitVec 64)) (t!3584 List!883)) )
))
(declare-fun arrayNoDuplicates!0 (array!2271 (_ BitVec 32) List!883) Bool)

(assert (=> b!33494 (= res!20345 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!880))))

(declare-fun b!33495 () Bool)

(assert (=> b!33495 (= e!21269 (not (or (not (= (size!1187 _keys!1833) (bvadd #b00000000000000000000000000000001 mask!2294))) (bvsle #b00000000000000000000000000000000 (size!1187 _keys!1833)))))))

(declare-datatypes ((SeekEntryResult!137 0))(
  ( (MissingZero!137 (index!2670 (_ BitVec 32))) (Found!137 (index!2671 (_ BitVec 32))) (Intermediate!137 (undefined!949 Bool) (index!2672 (_ BitVec 32)) (x!6829 (_ BitVec 32))) (Undefined!137) (MissingVacant!137 (index!2673 (_ BitVec 32))) )
))
(declare-fun lt!12208 () SeekEntryResult!137)

(declare-fun lt!12210 () (_ BitVec 32))

(get-info :version)

(assert (=> b!33495 (and ((_ is Found!137) lt!12208) (= (index!2671 lt!12208) lt!12210))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2271 (_ BitVec 32)) SeekEntryResult!137)

(assert (=> b!33495 (= lt!12208 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-datatypes ((Unit!746 0))(
  ( (Unit!747) )
))
(declare-fun lt!12209 () Unit!746)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!2271 (_ BitVec 32)) Unit!746)

(assert (=> b!33495 (= lt!12209 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12210 _keys!1833 mask!2294))))

(assert (=> b!33495 (contains!385 lt!12207 (select (arr!1086 _keys!1833) lt!12210))))

(declare-fun lt!12211 () Unit!746)

(declare-fun lemmaValidKeyInArrayIsInListMap!59 (array!2271 array!2273 (_ BitVec 32) (_ BitVec 32) V!1869 V!1869 (_ BitVec 32) Int) Unit!746)

(assert (=> b!33495 (= lt!12211 (lemmaValidKeyInArrayIsInListMap!59 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12210 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2271 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!33495 (= lt!12210 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!33496 () Bool)

(declare-fun res!20347 () Bool)

(assert (=> b!33496 (=> (not res!20347) (not e!21270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2271 (_ BitVec 32)) Bool)

(assert (=> b!33496 (= res!20347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!33497 () Bool)

(declare-fun e!21268 () Bool)

(declare-fun e!21267 () Bool)

(declare-fun mapRes!1837 () Bool)

(assert (=> b!33497 (= e!21268 (and e!21267 mapRes!1837))))

(declare-fun condMapEmpty!1837 () Bool)

(declare-fun mapDefault!1837 () ValueCell!567)

(assert (=> b!33497 (= condMapEmpty!1837 (= (arr!1087 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!567)) mapDefault!1837)))))

(declare-fun b!33498 () Bool)

(declare-fun e!21265 () Bool)

(declare-fun tp_is_empty!1533 () Bool)

(assert (=> b!33498 (= e!21265 tp_is_empty!1533)))

(declare-fun b!33499 () Bool)

(declare-fun res!20351 () Bool)

(assert (=> b!33499 (=> (not res!20351) (not e!21270))))

(assert (=> b!33499 (= res!20351 (and (= (size!1188 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1187 _keys!1833) (size!1188 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1837 () Bool)

(assert (=> mapIsEmpty!1837 mapRes!1837))

(declare-fun res!20349 () Bool)

(assert (=> start!4336 (=> (not res!20349) (not e!21270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4336 (= res!20349 (validMask!0 mask!2294))))

(assert (=> start!4336 e!21270))

(assert (=> start!4336 true))

(assert (=> start!4336 tp!4965))

(declare-fun array_inv!723 (array!2273) Bool)

(assert (=> start!4336 (and (array_inv!723 _values!1501) e!21268)))

(declare-fun array_inv!724 (array!2271) Bool)

(assert (=> start!4336 (array_inv!724 _keys!1833)))

(assert (=> start!4336 tp_is_empty!1533))

(declare-fun b!33500 () Bool)

(assert (=> b!33500 (= e!21267 tp_is_empty!1533)))

(declare-fun mapNonEmpty!1837 () Bool)

(declare-fun tp!4966 () Bool)

(assert (=> mapNonEmpty!1837 (= mapRes!1837 (and tp!4966 e!21265))))

(declare-fun mapRest!1837 () (Array (_ BitVec 32) ValueCell!567))

(declare-fun mapValue!1837 () ValueCell!567)

(declare-fun mapKey!1837 () (_ BitVec 32))

(assert (=> mapNonEmpty!1837 (= (arr!1087 _values!1501) (store mapRest!1837 mapKey!1837 mapValue!1837))))

(assert (= (and start!4336 res!20349) b!33499))

(assert (= (and b!33499 res!20351) b!33496))

(assert (= (and b!33496 res!20347) b!33494))

(assert (= (and b!33494 res!20345) b!33491))

(assert (= (and b!33491 res!20348) b!33493))

(assert (= (and b!33493 res!20350) b!33492))

(assert (= (and b!33492 res!20346) b!33495))

(assert (= (and b!33497 condMapEmpty!1837) mapIsEmpty!1837))

(assert (= (and b!33497 (not condMapEmpty!1837)) mapNonEmpty!1837))

(assert (= (and mapNonEmpty!1837 ((_ is ValueCellFull!567) mapValue!1837)) b!33498))

(assert (= (and b!33497 ((_ is ValueCellFull!567) mapDefault!1837)) b!33500))

(assert (= start!4336 b!33497))

(declare-fun m!26899 () Bool)

(assert (=> mapNonEmpty!1837 m!26899))

(declare-fun m!26901 () Bool)

(assert (=> b!33494 m!26901))

(declare-fun m!26903 () Bool)

(assert (=> start!4336 m!26903))

(declare-fun m!26905 () Bool)

(assert (=> start!4336 m!26905))

(declare-fun m!26907 () Bool)

(assert (=> start!4336 m!26907))

(declare-fun m!26909 () Bool)

(assert (=> b!33491 m!26909))

(declare-fun m!26911 () Bool)

(assert (=> b!33495 m!26911))

(declare-fun m!26913 () Bool)

(assert (=> b!33495 m!26913))

(declare-fun m!26915 () Bool)

(assert (=> b!33495 m!26915))

(declare-fun m!26917 () Bool)

(assert (=> b!33495 m!26917))

(declare-fun m!26919 () Bool)

(assert (=> b!33495 m!26919))

(assert (=> b!33495 m!26919))

(declare-fun m!26921 () Bool)

(assert (=> b!33495 m!26921))

(declare-fun m!26923 () Bool)

(assert (=> b!33496 m!26923))

(declare-fun m!26925 () Bool)

(assert (=> b!33492 m!26925))

(declare-fun m!26927 () Bool)

(assert (=> b!33493 m!26927))

(declare-fun m!26929 () Bool)

(assert (=> b!33493 m!26929))

(check-sat (not start!4336) tp_is_empty!1533 (not b!33492) (not mapNonEmpty!1837) (not b!33493) b_and!1997 (not b!33495) (not b!33491) (not b!33494) (not b!33496) (not b_next!1179))
(check-sat b_and!1997 (not b_next!1179))
(get-model)

(declare-fun d!5167 () Bool)

(assert (=> d!5167 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4336 d!5167))

(declare-fun d!5169 () Bool)

(assert (=> d!5169 (= (array_inv!723 _values!1501) (bvsge (size!1188 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4336 d!5169))

(declare-fun d!5171 () Bool)

(assert (=> d!5171 (= (array_inv!724 _keys!1833) (bvsge (size!1187 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4336 d!5171))

(declare-fun b!33539 () Bool)

(declare-fun e!21296 () Bool)

(declare-fun call!2672 () Bool)

(assert (=> b!33539 (= e!21296 call!2672)))

(declare-fun b!33540 () Bool)

(declare-fun e!21295 () Bool)

(assert (=> b!33540 (= e!21295 e!21296)))

(declare-fun c!3854 () Bool)

(assert (=> b!33540 (= c!3854 (validKeyInArray!0 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33541 () Bool)

(declare-fun e!21297 () Bool)

(assert (=> b!33541 (= e!21296 e!21297)))

(declare-fun lt!12235 () (_ BitVec 64))

(assert (=> b!33541 (= lt!12235 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12233 () Unit!746)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2271 (_ BitVec 64) (_ BitVec 32)) Unit!746)

(assert (=> b!33541 (= lt!12233 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!12235 #b00000000000000000000000000000000))))

(assert (=> b!33541 (arrayContainsKey!0 _keys!1833 lt!12235 #b00000000000000000000000000000000)))

(declare-fun lt!12234 () Unit!746)

(assert (=> b!33541 (= lt!12234 lt!12233)))

(declare-fun res!20378 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2271 (_ BitVec 32)) SeekEntryResult!137)

(assert (=> b!33541 (= res!20378 (= (seekEntryOrOpen!0 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!137 #b00000000000000000000000000000000)))))

(assert (=> b!33541 (=> (not res!20378) (not e!21297))))

(declare-fun b!33542 () Bool)

(assert (=> b!33542 (= e!21297 call!2672)))

(declare-fun d!5173 () Bool)

(declare-fun res!20377 () Bool)

(assert (=> d!5173 (=> res!20377 e!21295)))

(assert (=> d!5173 (= res!20377 (bvsge #b00000000000000000000000000000000 (size!1187 _keys!1833)))))

(assert (=> d!5173 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!21295)))

(declare-fun bm!2669 () Bool)

(assert (=> bm!2669 (= call!2672 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(assert (= (and d!5173 (not res!20377)) b!33540))

(assert (= (and b!33540 c!3854) b!33541))

(assert (= (and b!33540 (not c!3854)) b!33539))

(assert (= (and b!33541 res!20378) b!33542))

(assert (= (or b!33542 b!33539) bm!2669))

(declare-fun m!26963 () Bool)

(assert (=> b!33540 m!26963))

(assert (=> b!33540 m!26963))

(declare-fun m!26965 () Bool)

(assert (=> b!33540 m!26965))

(assert (=> b!33541 m!26963))

(declare-fun m!26967 () Bool)

(assert (=> b!33541 m!26967))

(declare-fun m!26969 () Bool)

(assert (=> b!33541 m!26969))

(assert (=> b!33541 m!26963))

(declare-fun m!26971 () Bool)

(assert (=> b!33541 m!26971))

(declare-fun m!26973 () Bool)

(assert (=> bm!2669 m!26973))

(assert (=> b!33496 d!5173))

(declare-fun d!5175 () Bool)

(declare-fun res!20383 () Bool)

(declare-fun e!21302 () Bool)

(assert (=> d!5175 (=> res!20383 e!21302)))

(assert (=> d!5175 (= res!20383 (= (select (arr!1086 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5175 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!21302)))

(declare-fun b!33547 () Bool)

(declare-fun e!21303 () Bool)

(assert (=> b!33547 (= e!21302 e!21303)))

(declare-fun res!20384 () Bool)

(assert (=> b!33547 (=> (not res!20384) (not e!21303))))

(assert (=> b!33547 (= res!20384 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1187 _keys!1833)))))

(declare-fun b!33548 () Bool)

(assert (=> b!33548 (= e!21303 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5175 (not res!20383)) b!33547))

(assert (= (and b!33547 res!20384) b!33548))

(assert (=> d!5175 m!26963))

(declare-fun m!26975 () Bool)

(assert (=> b!33548 m!26975))

(assert (=> b!33492 d!5175))

(declare-fun d!5177 () Bool)

(assert (=> d!5177 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!33491 d!5177))

(declare-fun d!5179 () Bool)

(declare-fun e!21308 () Bool)

(assert (=> d!5179 e!21308))

(declare-fun res!20387 () Bool)

(assert (=> d!5179 (=> res!20387 e!21308)))

(declare-fun lt!12246 () Bool)

(assert (=> d!5179 (= res!20387 (not lt!12246))))

(declare-fun lt!12244 () Bool)

(assert (=> d!5179 (= lt!12246 lt!12244)))

(declare-fun lt!12245 () Unit!746)

(declare-fun e!21309 () Unit!746)

(assert (=> d!5179 (= lt!12245 e!21309)))

(declare-fun c!3857 () Bool)

(assert (=> d!5179 (= c!3857 lt!12244)))

(declare-fun containsKey!32 (List!882 (_ BitVec 64)) Bool)

(assert (=> d!5179 (= lt!12244 (containsKey!32 (toList!445 lt!12207) (select (arr!1086 _keys!1833) lt!12210)))))

(assert (=> d!5179 (= (contains!385 lt!12207 (select (arr!1086 _keys!1833) lt!12210)) lt!12246)))

(declare-fun b!33555 () Bool)

(declare-fun lt!12247 () Unit!746)

(assert (=> b!33555 (= e!21309 lt!12247)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!29 (List!882 (_ BitVec 64)) Unit!746)

(assert (=> b!33555 (= lt!12247 (lemmaContainsKeyImpliesGetValueByKeyDefined!29 (toList!445 lt!12207) (select (arr!1086 _keys!1833) lt!12210)))))

(declare-datatypes ((Option!74 0))(
  ( (Some!73 (v!1887 V!1869)) (None!72) )
))
(declare-fun isDefined!30 (Option!74) Bool)

(declare-fun getValueByKey!68 (List!882 (_ BitVec 64)) Option!74)

(assert (=> b!33555 (isDefined!30 (getValueByKey!68 (toList!445 lt!12207) (select (arr!1086 _keys!1833) lt!12210)))))

(declare-fun b!33556 () Bool)

(declare-fun Unit!750 () Unit!746)

(assert (=> b!33556 (= e!21309 Unit!750)))

(declare-fun b!33557 () Bool)

(assert (=> b!33557 (= e!21308 (isDefined!30 (getValueByKey!68 (toList!445 lt!12207) (select (arr!1086 _keys!1833) lt!12210))))))

(assert (= (and d!5179 c!3857) b!33555))

(assert (= (and d!5179 (not c!3857)) b!33556))

(assert (= (and d!5179 (not res!20387)) b!33557))

(assert (=> d!5179 m!26919))

(declare-fun m!26977 () Bool)

(assert (=> d!5179 m!26977))

(assert (=> b!33555 m!26919))

(declare-fun m!26979 () Bool)

(assert (=> b!33555 m!26979))

(assert (=> b!33555 m!26919))

(declare-fun m!26981 () Bool)

(assert (=> b!33555 m!26981))

(assert (=> b!33555 m!26981))

(declare-fun m!26983 () Bool)

(assert (=> b!33555 m!26983))

(assert (=> b!33557 m!26919))

(assert (=> b!33557 m!26981))

(assert (=> b!33557 m!26981))

(assert (=> b!33557 m!26983))

(assert (=> b!33495 d!5179))

(declare-fun d!5181 () Bool)

(declare-fun lt!12250 () (_ BitVec 32))

(assert (=> d!5181 (and (or (bvslt lt!12250 #b00000000000000000000000000000000) (bvsge lt!12250 (size!1187 _keys!1833)) (and (bvsge lt!12250 #b00000000000000000000000000000000) (bvslt lt!12250 (size!1187 _keys!1833)))) (bvsge lt!12250 #b00000000000000000000000000000000) (bvslt lt!12250 (size!1187 _keys!1833)) (= (select (arr!1086 _keys!1833) lt!12250) k0!1304))))

(declare-fun e!21312 () (_ BitVec 32))

(assert (=> d!5181 (= lt!12250 e!21312)))

(declare-fun c!3860 () Bool)

(assert (=> d!5181 (= c!3860 (= (select (arr!1086 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5181 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1187 _keys!1833)) (bvslt (size!1187 _keys!1833) #b01111111111111111111111111111111))))

(assert (=> d!5181 (= (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) lt!12250)))

(declare-fun b!33562 () Bool)

(assert (=> b!33562 (= e!21312 #b00000000000000000000000000000000)))

(declare-fun b!33563 () Bool)

(assert (=> b!33563 (= e!21312 (arrayScanForKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5181 c!3860) b!33562))

(assert (= (and d!5181 (not c!3860)) b!33563))

(declare-fun m!26985 () Bool)

(assert (=> d!5181 m!26985))

(assert (=> d!5181 m!26963))

(declare-fun m!26987 () Bool)

(assert (=> b!33563 m!26987))

(assert (=> b!33495 d!5181))

(declare-fun b!33576 () Bool)

(declare-fun e!21319 () SeekEntryResult!137)

(declare-fun lt!12262 () SeekEntryResult!137)

(assert (=> b!33576 (= e!21319 (Found!137 (index!2672 lt!12262)))))

(declare-fun b!33577 () Bool)

(declare-fun e!21320 () SeekEntryResult!137)

(assert (=> b!33577 (= e!21320 (MissingZero!137 (index!2672 lt!12262)))))

(declare-fun b!33578 () Bool)

(declare-fun e!21321 () SeekEntryResult!137)

(assert (=> b!33578 (= e!21321 Undefined!137)))

(declare-fun d!5183 () Bool)

(declare-fun lt!12259 () SeekEntryResult!137)

(assert (=> d!5183 (and (or ((_ is MissingVacant!137) lt!12259) (not ((_ is Found!137) lt!12259)) (and (bvsge (index!2671 lt!12259) #b00000000000000000000000000000000) (bvslt (index!2671 lt!12259) (size!1187 _keys!1833)))) (not ((_ is MissingVacant!137) lt!12259)) (or (not ((_ is Found!137) lt!12259)) (= (select (arr!1086 _keys!1833) (index!2671 lt!12259)) k0!1304)))))

(assert (=> d!5183 (= lt!12259 e!21321)))

(declare-fun c!3869 () Bool)

(assert (=> d!5183 (= c!3869 (and ((_ is Intermediate!137) lt!12262) (undefined!949 lt!12262)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2271 (_ BitVec 32)) SeekEntryResult!137)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5183 (= lt!12262 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1304 mask!2294) k0!1304 _keys!1833 mask!2294))))

(assert (=> d!5183 (validMask!0 mask!2294)))

(assert (=> d!5183 (= (seekEntry!0 k0!1304 _keys!1833 mask!2294) lt!12259)))

(declare-fun b!33579 () Bool)

(declare-fun c!3867 () Bool)

(declare-fun lt!12260 () (_ BitVec 64))

(assert (=> b!33579 (= c!3867 (= lt!12260 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!33579 (= e!21319 e!21320)))

(declare-fun b!33580 () Bool)

(assert (=> b!33580 (= e!21321 e!21319)))

(assert (=> b!33580 (= lt!12260 (select (arr!1086 _keys!1833) (index!2672 lt!12262)))))

(declare-fun c!3868 () Bool)

(assert (=> b!33580 (= c!3868 (= lt!12260 k0!1304))))

(declare-fun b!33581 () Bool)

(declare-fun lt!12261 () SeekEntryResult!137)

(assert (=> b!33581 (= e!21320 (ite ((_ is MissingVacant!137) lt!12261) (MissingZero!137 (index!2673 lt!12261)) lt!12261))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2271 (_ BitVec 32)) SeekEntryResult!137)

(assert (=> b!33581 (= lt!12261 (seekKeyOrZeroReturnVacant!0 (x!6829 lt!12262) (index!2672 lt!12262) (index!2672 lt!12262) k0!1304 _keys!1833 mask!2294))))

(assert (= (and d!5183 c!3869) b!33578))

(assert (= (and d!5183 (not c!3869)) b!33580))

(assert (= (and b!33580 c!3868) b!33576))

(assert (= (and b!33580 (not c!3868)) b!33579))

(assert (= (and b!33579 c!3867) b!33577))

(assert (= (and b!33579 (not c!3867)) b!33581))

(declare-fun m!26989 () Bool)

(assert (=> d!5183 m!26989))

(declare-fun m!26991 () Bool)

(assert (=> d!5183 m!26991))

(assert (=> d!5183 m!26991))

(declare-fun m!26993 () Bool)

(assert (=> d!5183 m!26993))

(assert (=> d!5183 m!26903))

(declare-fun m!26995 () Bool)

(assert (=> b!33580 m!26995))

(declare-fun m!26997 () Bool)

(assert (=> b!33581 m!26997))

(assert (=> b!33495 d!5183))

(declare-fun d!5185 () Bool)

(declare-fun lt!12268 () SeekEntryResult!137)

(assert (=> d!5185 (and ((_ is Found!137) lt!12268) (= (index!2671 lt!12268) lt!12210))))

(assert (=> d!5185 (= lt!12268 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun lt!12267 () Unit!746)

(declare-fun choose!0 ((_ BitVec 64) (_ BitVec 32) array!2271 (_ BitVec 32)) Unit!746)

(assert (=> d!5185 (= lt!12267 (choose!0 k0!1304 lt!12210 _keys!1833 mask!2294))))

(assert (=> d!5185 (validMask!0 mask!2294)))

(assert (=> d!5185 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k0!1304 lt!12210 _keys!1833 mask!2294) lt!12267)))

(declare-fun bs!1305 () Bool)

(assert (= bs!1305 d!5185))

(assert (=> bs!1305 m!26913))

(declare-fun m!26999 () Bool)

(assert (=> bs!1305 m!26999))

(assert (=> bs!1305 m!26903))

(assert (=> b!33495 d!5185))

(declare-fun d!5187 () Bool)

(declare-fun e!21324 () Bool)

(assert (=> d!5187 e!21324))

(declare-fun res!20390 () Bool)

(assert (=> d!5187 (=> (not res!20390) (not e!21324))))

(assert (=> d!5187 (= res!20390 (and (bvsge lt!12210 #b00000000000000000000000000000000) (bvslt lt!12210 (size!1187 _keys!1833))))))

(declare-fun lt!12271 () Unit!746)

(declare-fun choose!220 (array!2271 array!2273 (_ BitVec 32) (_ BitVec 32) V!1869 V!1869 (_ BitVec 32) Int) Unit!746)

(assert (=> d!5187 (= lt!12271 (choose!220 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12210 defaultEntry!1504))))

(assert (=> d!5187 (validMask!0 mask!2294)))

(assert (=> d!5187 (= (lemmaValidKeyInArrayIsInListMap!59 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!12210 defaultEntry!1504) lt!12271)))

(declare-fun b!33584 () Bool)

(assert (=> b!33584 (= e!21324 (contains!385 (getCurrentListMap!269 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) (select (arr!1086 _keys!1833) lt!12210)))))

(assert (= (and d!5187 res!20390) b!33584))

(declare-fun m!27001 () Bool)

(assert (=> d!5187 m!27001))

(assert (=> d!5187 m!26903))

(assert (=> b!33584 m!26929))

(assert (=> b!33584 m!26919))

(assert (=> b!33584 m!26929))

(assert (=> b!33584 m!26919))

(declare-fun m!27003 () Bool)

(assert (=> b!33584 m!27003))

(assert (=> b!33495 d!5187))

(declare-fun d!5189 () Bool)

(declare-fun res!20399 () Bool)

(declare-fun e!21335 () Bool)

(assert (=> d!5189 (=> res!20399 e!21335)))

(assert (=> d!5189 (= res!20399 (bvsge #b00000000000000000000000000000000 (size!1187 _keys!1833)))))

(assert (=> d!5189 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!880) e!21335)))

(declare-fun b!33595 () Bool)

(declare-fun e!21334 () Bool)

(declare-fun e!21336 () Bool)

(assert (=> b!33595 (= e!21334 e!21336)))

(declare-fun c!3872 () Bool)

(assert (=> b!33595 (= c!3872 (validKeyInArray!0 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!33596 () Bool)

(declare-fun call!2675 () Bool)

(assert (=> b!33596 (= e!21336 call!2675)))

(declare-fun b!33597 () Bool)

(declare-fun e!21333 () Bool)

(declare-fun contains!387 (List!883 (_ BitVec 64)) Bool)

(assert (=> b!33597 (= e!21333 (contains!387 Nil!880 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2672 () Bool)

(assert (=> bm!2672 (= call!2675 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!3872 (Cons!879 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000) Nil!880) Nil!880)))))

(declare-fun b!33598 () Bool)

(assert (=> b!33598 (= e!21336 call!2675)))

(declare-fun b!33599 () Bool)

(assert (=> b!33599 (= e!21335 e!21334)))

(declare-fun res!20398 () Bool)

(assert (=> b!33599 (=> (not res!20398) (not e!21334))))

(assert (=> b!33599 (= res!20398 (not e!21333))))

(declare-fun res!20397 () Bool)

(assert (=> b!33599 (=> (not res!20397) (not e!21333))))

(assert (=> b!33599 (= res!20397 (validKeyInArray!0 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5189 (not res!20399)) b!33599))

(assert (= (and b!33599 res!20397) b!33597))

(assert (= (and b!33599 res!20398) b!33595))

(assert (= (and b!33595 c!3872) b!33598))

(assert (= (and b!33595 (not c!3872)) b!33596))

(assert (= (or b!33598 b!33596) bm!2672))

(assert (=> b!33595 m!26963))

(assert (=> b!33595 m!26963))

(assert (=> b!33595 m!26965))

(assert (=> b!33597 m!26963))

(assert (=> b!33597 m!26963))

(declare-fun m!27005 () Bool)

(assert (=> b!33597 m!27005))

(assert (=> bm!2672 m!26963))

(declare-fun m!27007 () Bool)

(assert (=> bm!2672 m!27007))

(assert (=> b!33599 m!26963))

(assert (=> b!33599 m!26963))

(assert (=> b!33599 m!26965))

(assert (=> b!33494 d!5189))

(declare-fun d!5191 () Bool)

(declare-fun e!21337 () Bool)

(assert (=> d!5191 e!21337))

(declare-fun res!20400 () Bool)

(assert (=> d!5191 (=> res!20400 e!21337)))

(declare-fun lt!12274 () Bool)

(assert (=> d!5191 (= res!20400 (not lt!12274))))

(declare-fun lt!12272 () Bool)

(assert (=> d!5191 (= lt!12274 lt!12272)))

(declare-fun lt!12273 () Unit!746)

(declare-fun e!21338 () Unit!746)

(assert (=> d!5191 (= lt!12273 e!21338)))

(declare-fun c!3873 () Bool)

(assert (=> d!5191 (= c!3873 lt!12272)))

(assert (=> d!5191 (= lt!12272 (containsKey!32 (toList!445 lt!12207) k0!1304))))

(assert (=> d!5191 (= (contains!385 lt!12207 k0!1304) lt!12274)))

(declare-fun b!33600 () Bool)

(declare-fun lt!12275 () Unit!746)

(assert (=> b!33600 (= e!21338 lt!12275)))

(assert (=> b!33600 (= lt!12275 (lemmaContainsKeyImpliesGetValueByKeyDefined!29 (toList!445 lt!12207) k0!1304))))

(assert (=> b!33600 (isDefined!30 (getValueByKey!68 (toList!445 lt!12207) k0!1304))))

(declare-fun b!33601 () Bool)

(declare-fun Unit!751 () Unit!746)

(assert (=> b!33601 (= e!21338 Unit!751)))

(declare-fun b!33602 () Bool)

(assert (=> b!33602 (= e!21337 (isDefined!30 (getValueByKey!68 (toList!445 lt!12207) k0!1304)))))

(assert (= (and d!5191 c!3873) b!33600))

(assert (= (and d!5191 (not c!3873)) b!33601))

(assert (= (and d!5191 (not res!20400)) b!33602))

(declare-fun m!27009 () Bool)

(assert (=> d!5191 m!27009))

(declare-fun m!27011 () Bool)

(assert (=> b!33600 m!27011))

(declare-fun m!27013 () Bool)

(assert (=> b!33600 m!27013))

(assert (=> b!33600 m!27013))

(declare-fun m!27015 () Bool)

(assert (=> b!33600 m!27015))

(assert (=> b!33602 m!27013))

(assert (=> b!33602 m!27013))

(assert (=> b!33602 m!27015))

(assert (=> b!33493 d!5191))

(declare-fun b!33645 () Bool)

(declare-fun e!21366 () Unit!746)

(declare-fun Unit!752 () Unit!746)

(assert (=> b!33645 (= e!21366 Unit!752)))

(declare-fun bm!2687 () Bool)

(declare-fun call!2693 () ListLongMap!859)

(declare-fun call!2691 () ListLongMap!859)

(assert (=> bm!2687 (= call!2693 call!2691)))

(declare-fun bm!2688 () Bool)

(declare-fun call!2692 () ListLongMap!859)

(declare-fun call!2696 () ListLongMap!859)

(assert (=> bm!2688 (= call!2692 call!2696)))

(declare-fun b!33646 () Bool)

(declare-fun e!21370 () Bool)

(declare-fun lt!12332 () ListLongMap!859)

(declare-fun apply!36 (ListLongMap!859 (_ BitVec 64)) V!1869)

(assert (=> b!33646 (= e!21370 (= (apply!36 lt!12332 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun bm!2689 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!23 (array!2271 array!2273 (_ BitVec 32) (_ BitVec 32) V!1869 V!1869 (_ BitVec 32) Int) ListLongMap!859)

(assert (=> bm!2689 (= call!2696 (getCurrentListMapNoExtraKeys!23 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!33647 () Bool)

(declare-fun res!20423 () Bool)

(declare-fun e!21377 () Bool)

(assert (=> b!33647 (=> (not res!20423) (not e!21377))))

(declare-fun e!21376 () Bool)

(assert (=> b!33647 (= res!20423 e!21376)))

(declare-fun res!20425 () Bool)

(assert (=> b!33647 (=> res!20425 e!21376)))

(declare-fun e!21373 () Bool)

(assert (=> b!33647 (= res!20425 (not e!21373))))

(declare-fun res!20420 () Bool)

(assert (=> b!33647 (=> (not res!20420) (not e!21373))))

(assert (=> b!33647 (= res!20420 (bvslt #b00000000000000000000000000000000 (size!1187 _keys!1833)))))

(declare-fun b!33648 () Bool)

(declare-fun e!21367 () Bool)

(assert (=> b!33648 (= e!21367 (= (apply!36 lt!12332 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!33649 () Bool)

(declare-fun e!21369 () ListLongMap!859)

(declare-fun +!54 (ListLongMap!859 tuple2!1278) ListLongMap!859)

(assert (=> b!33649 (= e!21369 (+!54 call!2691 (tuple2!1279 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!33650 () Bool)

(declare-fun e!21371 () ListLongMap!859)

(assert (=> b!33650 (= e!21369 e!21371)))

(declare-fun c!3888 () Bool)

(assert (=> b!33650 (= c!3888 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!33651 () Bool)

(assert (=> b!33651 (= e!21373 (validKeyInArray!0 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun d!5193 () Bool)

(assert (=> d!5193 e!21377))

(declare-fun res!20426 () Bool)

(assert (=> d!5193 (=> (not res!20426) (not e!21377))))

(assert (=> d!5193 (= res!20426 (or (bvsge #b00000000000000000000000000000000 (size!1187 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1187 _keys!1833)))))))

(declare-fun lt!12334 () ListLongMap!859)

(assert (=> d!5193 (= lt!12332 lt!12334)))

(declare-fun lt!12331 () Unit!746)

(assert (=> d!5193 (= lt!12331 e!21366)))

(declare-fun c!3890 () Bool)

(declare-fun e!21365 () Bool)

(assert (=> d!5193 (= c!3890 e!21365)))

(declare-fun res!20424 () Bool)

(assert (=> d!5193 (=> (not res!20424) (not e!21365))))

(assert (=> d!5193 (= res!20424 (bvslt #b00000000000000000000000000000000 (size!1187 _keys!1833)))))

(assert (=> d!5193 (= lt!12334 e!21369)))

(declare-fun c!3887 () Bool)

(assert (=> d!5193 (= c!3887 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5193 (validMask!0 mask!2294)))

(assert (=> d!5193 (= (getCurrentListMap!269 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!12332)))

(declare-fun b!33652 () Bool)

(declare-fun e!21368 () Bool)

(assert (=> b!33652 (= e!21368 e!21370)))

(declare-fun res!20422 () Bool)

(declare-fun call!2695 () Bool)

(assert (=> b!33652 (= res!20422 call!2695)))

(assert (=> b!33652 (=> (not res!20422) (not e!21370))))

(declare-fun b!33653 () Bool)

(declare-fun res!20421 () Bool)

(assert (=> b!33653 (=> (not res!20421) (not e!21377))))

(declare-fun e!21374 () Bool)

(assert (=> b!33653 (= res!20421 e!21374)))

(declare-fun c!3891 () Bool)

(assert (=> b!33653 (= c!3891 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!2690 () Bool)

(declare-fun call!2694 () Bool)

(assert (=> bm!2690 (= call!2694 (contains!385 lt!12332 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!33654 () Bool)

(declare-fun e!21375 () Bool)

(declare-fun get!571 (ValueCell!567 V!1869) V!1869)

(declare-fun dynLambda!153 (Int (_ BitVec 64)) V!1869)

(assert (=> b!33654 (= e!21375 (= (apply!36 lt!12332 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000)) (get!571 (select (arr!1087 _values!1501) #b00000000000000000000000000000000) (dynLambda!153 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!33654 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1188 _values!1501)))))

(assert (=> b!33654 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1187 _keys!1833)))))

(declare-fun b!33655 () Bool)

(assert (=> b!33655 (= e!21377 e!21368)))

(declare-fun c!3889 () Bool)

(assert (=> b!33655 (= c!3889 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!33656 () Bool)

(assert (=> b!33656 (= e!21374 e!21367)))

(declare-fun res!20419 () Bool)

(assert (=> b!33656 (= res!20419 call!2694)))

(assert (=> b!33656 (=> (not res!20419) (not e!21367))))

(declare-fun b!33657 () Bool)

(declare-fun e!21372 () ListLongMap!859)

(declare-fun call!2690 () ListLongMap!859)

(assert (=> b!33657 (= e!21372 call!2690)))

(declare-fun b!33658 () Bool)

(assert (=> b!33658 (= e!21365 (validKeyInArray!0 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun bm!2691 () Bool)

(assert (=> bm!2691 (= call!2690 call!2692)))

(declare-fun b!33659 () Bool)

(assert (=> b!33659 (= e!21368 (not call!2695))))

(declare-fun b!33660 () Bool)

(declare-fun lt!12341 () Unit!746)

(assert (=> b!33660 (= e!21366 lt!12341)))

(declare-fun lt!12320 () ListLongMap!859)

(assert (=> b!33660 (= lt!12320 (getCurrentListMapNoExtraKeys!23 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12324 () (_ BitVec 64))

(assert (=> b!33660 (= lt!12324 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12329 () (_ BitVec 64))

(assert (=> b!33660 (= lt!12329 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12333 () Unit!746)

(declare-fun addStillContains!21 (ListLongMap!859 (_ BitVec 64) V!1869 (_ BitVec 64)) Unit!746)

(assert (=> b!33660 (= lt!12333 (addStillContains!21 lt!12320 lt!12324 zeroValue!1443 lt!12329))))

(assert (=> b!33660 (contains!385 (+!54 lt!12320 (tuple2!1279 lt!12324 zeroValue!1443)) lt!12329)))

(declare-fun lt!12337 () Unit!746)

(assert (=> b!33660 (= lt!12337 lt!12333)))

(declare-fun lt!12330 () ListLongMap!859)

(assert (=> b!33660 (= lt!12330 (getCurrentListMapNoExtraKeys!23 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12325 () (_ BitVec 64))

(assert (=> b!33660 (= lt!12325 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12328 () (_ BitVec 64))

(assert (=> b!33660 (= lt!12328 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12321 () Unit!746)

(declare-fun addApplyDifferent!21 (ListLongMap!859 (_ BitVec 64) V!1869 (_ BitVec 64)) Unit!746)

(assert (=> b!33660 (= lt!12321 (addApplyDifferent!21 lt!12330 lt!12325 minValue!1443 lt!12328))))

(assert (=> b!33660 (= (apply!36 (+!54 lt!12330 (tuple2!1279 lt!12325 minValue!1443)) lt!12328) (apply!36 lt!12330 lt!12328))))

(declare-fun lt!12323 () Unit!746)

(assert (=> b!33660 (= lt!12323 lt!12321)))

(declare-fun lt!12322 () ListLongMap!859)

(assert (=> b!33660 (= lt!12322 (getCurrentListMapNoExtraKeys!23 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12338 () (_ BitVec 64))

(assert (=> b!33660 (= lt!12338 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12335 () (_ BitVec 64))

(assert (=> b!33660 (= lt!12335 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!12326 () Unit!746)

(assert (=> b!33660 (= lt!12326 (addApplyDifferent!21 lt!12322 lt!12338 zeroValue!1443 lt!12335))))

(assert (=> b!33660 (= (apply!36 (+!54 lt!12322 (tuple2!1279 lt!12338 zeroValue!1443)) lt!12335) (apply!36 lt!12322 lt!12335))))

(declare-fun lt!12336 () Unit!746)

(assert (=> b!33660 (= lt!12336 lt!12326)))

(declare-fun lt!12339 () ListLongMap!859)

(assert (=> b!33660 (= lt!12339 (getCurrentListMapNoExtraKeys!23 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!12340 () (_ BitVec 64))

(assert (=> b!33660 (= lt!12340 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!12327 () (_ BitVec 64))

(assert (=> b!33660 (= lt!12327 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!33660 (= lt!12341 (addApplyDifferent!21 lt!12339 lt!12340 minValue!1443 lt!12327))))

(assert (=> b!33660 (= (apply!36 (+!54 lt!12339 (tuple2!1279 lt!12340 minValue!1443)) lt!12327) (apply!36 lt!12339 lt!12327))))

(declare-fun b!33661 () Bool)

(assert (=> b!33661 (= e!21376 e!21375)))

(declare-fun res!20427 () Bool)

(assert (=> b!33661 (=> (not res!20427) (not e!21375))))

(assert (=> b!33661 (= res!20427 (contains!385 lt!12332 (select (arr!1086 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!33661 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1187 _keys!1833)))))

(declare-fun b!33662 () Bool)

(declare-fun c!3886 () Bool)

(assert (=> b!33662 (= c!3886 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!33662 (= e!21371 e!21372)))

(declare-fun b!33663 () Bool)

(assert (=> b!33663 (= e!21374 (not call!2694))))

(declare-fun bm!2692 () Bool)

(assert (=> bm!2692 (= call!2695 (contains!385 lt!12332 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!33664 () Bool)

(assert (=> b!33664 (= e!21371 call!2693)))

(declare-fun b!33665 () Bool)

(assert (=> b!33665 (= e!21372 call!2693)))

(declare-fun bm!2693 () Bool)

(assert (=> bm!2693 (= call!2691 (+!54 (ite c!3887 call!2696 (ite c!3888 call!2692 call!2690)) (ite (or c!3887 c!3888) (tuple2!1279 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1279 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(assert (= (and d!5193 c!3887) b!33649))

(assert (= (and d!5193 (not c!3887)) b!33650))

(assert (= (and b!33650 c!3888) b!33664))

(assert (= (and b!33650 (not c!3888)) b!33662))

(assert (= (and b!33662 c!3886) b!33665))

(assert (= (and b!33662 (not c!3886)) b!33657))

(assert (= (or b!33665 b!33657) bm!2691))

(assert (= (or b!33664 bm!2691) bm!2688))

(assert (= (or b!33664 b!33665) bm!2687))

(assert (= (or b!33649 bm!2688) bm!2689))

(assert (= (or b!33649 bm!2687) bm!2693))

(assert (= (and d!5193 res!20424) b!33658))

(assert (= (and d!5193 c!3890) b!33660))

(assert (= (and d!5193 (not c!3890)) b!33645))

(assert (= (and d!5193 res!20426) b!33647))

(assert (= (and b!33647 res!20420) b!33651))

(assert (= (and b!33647 (not res!20425)) b!33661))

(assert (= (and b!33661 res!20427) b!33654))

(assert (= (and b!33647 res!20423) b!33653))

(assert (= (and b!33653 c!3891) b!33656))

(assert (= (and b!33653 (not c!3891)) b!33663))

(assert (= (and b!33656 res!20419) b!33648))

(assert (= (or b!33656 b!33663) bm!2690))

(assert (= (and b!33653 res!20421) b!33655))

(assert (= (and b!33655 c!3889) b!33652))

(assert (= (and b!33655 (not c!3889)) b!33659))

(assert (= (and b!33652 res!20422) b!33646))

(assert (= (or b!33652 b!33659) bm!2692))

(declare-fun b_lambda!1711 () Bool)

(assert (=> (not b_lambda!1711) (not b!33654)))

(declare-fun t!3588 () Bool)

(declare-fun tb!689 () Bool)

(assert (=> (and start!4336 (= defaultEntry!1504 defaultEntry!1504) t!3588) tb!689))

(declare-fun result!1173 () Bool)

(assert (=> tb!689 (= result!1173 tp_is_empty!1533)))

(assert (=> b!33654 t!3588))

(declare-fun b_and!2001 () Bool)

(assert (= b_and!1997 (and (=> t!3588 result!1173) b_and!2001)))

(assert (=> b!33658 m!26963))

(assert (=> b!33658 m!26963))

(assert (=> b!33658 m!26965))

(declare-fun m!27017 () Bool)

(assert (=> b!33649 m!27017))

(assert (=> b!33651 m!26963))

(assert (=> b!33651 m!26963))

(assert (=> b!33651 m!26965))

(declare-fun m!27019 () Bool)

(assert (=> bm!2689 m!27019))

(assert (=> b!33661 m!26963))

(assert (=> b!33661 m!26963))

(declare-fun m!27021 () Bool)

(assert (=> b!33661 m!27021))

(declare-fun m!27023 () Bool)

(assert (=> bm!2693 m!27023))

(declare-fun m!27025 () Bool)

(assert (=> bm!2690 m!27025))

(declare-fun m!27027 () Bool)

(assert (=> bm!2692 m!27027))

(assert (=> d!5193 m!26903))

(declare-fun m!27029 () Bool)

(assert (=> b!33648 m!27029))

(assert (=> b!33660 m!27019))

(declare-fun m!27031 () Bool)

(assert (=> b!33660 m!27031))

(declare-fun m!27033 () Bool)

(assert (=> b!33660 m!27033))

(declare-fun m!27035 () Bool)

(assert (=> b!33660 m!27035))

(assert (=> b!33660 m!27031))

(declare-fun m!27037 () Bool)

(assert (=> b!33660 m!27037))

(assert (=> b!33660 m!26963))

(declare-fun m!27039 () Bool)

(assert (=> b!33660 m!27039))

(declare-fun m!27041 () Bool)

(assert (=> b!33660 m!27041))

(declare-fun m!27043 () Bool)

(assert (=> b!33660 m!27043))

(declare-fun m!27045 () Bool)

(assert (=> b!33660 m!27045))

(declare-fun m!27047 () Bool)

(assert (=> b!33660 m!27047))

(declare-fun m!27049 () Bool)

(assert (=> b!33660 m!27049))

(declare-fun m!27051 () Bool)

(assert (=> b!33660 m!27051))

(declare-fun m!27053 () Bool)

(assert (=> b!33660 m!27053))

(assert (=> b!33660 m!27043))

(declare-fun m!27055 () Bool)

(assert (=> b!33660 m!27055))

(assert (=> b!33660 m!27047))

(declare-fun m!27057 () Bool)

(assert (=> b!33660 m!27057))

(assert (=> b!33660 m!27051))

(declare-fun m!27059 () Bool)

(assert (=> b!33660 m!27059))

(declare-fun m!27061 () Bool)

(assert (=> b!33654 m!27061))

(declare-fun m!27063 () Bool)

(assert (=> b!33654 m!27063))

(assert (=> b!33654 m!27061))

(declare-fun m!27065 () Bool)

(assert (=> b!33654 m!27065))

(assert (=> b!33654 m!27063))

(assert (=> b!33654 m!26963))

(assert (=> b!33654 m!26963))

(declare-fun m!27067 () Bool)

(assert (=> b!33654 m!27067))

(declare-fun m!27069 () Bool)

(assert (=> b!33646 m!27069))

(assert (=> b!33493 d!5193))

(declare-fun b!33675 () Bool)

(declare-fun e!21382 () Bool)

(assert (=> b!33675 (= e!21382 tp_is_empty!1533)))

(declare-fun mapIsEmpty!1843 () Bool)

(declare-fun mapRes!1843 () Bool)

(assert (=> mapIsEmpty!1843 mapRes!1843))

(declare-fun condMapEmpty!1843 () Bool)

(declare-fun mapDefault!1843 () ValueCell!567)

(assert (=> mapNonEmpty!1837 (= condMapEmpty!1843 (= mapRest!1837 ((as const (Array (_ BitVec 32) ValueCell!567)) mapDefault!1843)))))

(assert (=> mapNonEmpty!1837 (= tp!4966 (and e!21382 mapRes!1843))))

(declare-fun b!33674 () Bool)

(declare-fun e!21383 () Bool)

(assert (=> b!33674 (= e!21383 tp_is_empty!1533)))

(declare-fun mapNonEmpty!1843 () Bool)

(declare-fun tp!4975 () Bool)

(assert (=> mapNonEmpty!1843 (= mapRes!1843 (and tp!4975 e!21383))))

(declare-fun mapValue!1843 () ValueCell!567)

(declare-fun mapRest!1843 () (Array (_ BitVec 32) ValueCell!567))

(declare-fun mapKey!1843 () (_ BitVec 32))

(assert (=> mapNonEmpty!1843 (= mapRest!1837 (store mapRest!1843 mapKey!1843 mapValue!1843))))

(assert (= (and mapNonEmpty!1837 condMapEmpty!1843) mapIsEmpty!1843))

(assert (= (and mapNonEmpty!1837 (not condMapEmpty!1843)) mapNonEmpty!1843))

(assert (= (and mapNonEmpty!1843 ((_ is ValueCellFull!567) mapValue!1843)) b!33674))

(assert (= (and mapNonEmpty!1837 ((_ is ValueCellFull!567) mapDefault!1843)) b!33675))

(declare-fun m!27071 () Bool)

(assert (=> mapNonEmpty!1843 m!27071))

(declare-fun b_lambda!1713 () Bool)

(assert (= b_lambda!1711 (or (and start!4336 b_free!1179) b_lambda!1713)))

(check-sat (not b!33597) (not b!33649) (not d!5185) (not b!33557) (not bm!2689) (not bm!2669) (not bm!2672) b_and!2001 (not b!33661) (not b!33581) (not d!5179) (not b_lambda!1713) (not d!5187) (not b!33654) tp_is_empty!1533 (not b!33648) (not b!33555) (not b!33595) (not b!33548) (not b!33599) (not bm!2693) (not b!33540) (not b!33660) (not d!5193) (not bm!2692) (not mapNonEmpty!1843) (not bm!2690) (not d!5183) (not b!33651) (not b!33602) (not b!33658) (not b!33584) (not b!33600) (not b!33563) (not b!33646) (not b!33541) (not d!5191) (not b_next!1179))
(check-sat b_and!2001 (not b_next!1179))
