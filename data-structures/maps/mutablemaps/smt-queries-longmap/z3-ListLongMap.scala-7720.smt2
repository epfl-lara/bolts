; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97022 () Bool)

(assert start!97022)

(declare-fun b!1103249 () Bool)

(declare-fun res!736125 () Bool)

(declare-fun e!629807 () Bool)

(assert (=> b!1103249 (=> (not res!736125) (not e!629807))))

(declare-datatypes ((array!71468 0))(
  ( (array!71469 (arr!34389 (Array (_ BitVec 32) (_ BitVec 64))) (size!34926 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71468)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41523 0))(
  ( (V!41524 (val!13705 Int)) )
))
(declare-datatypes ((ValueCell!12939 0))(
  ( (ValueCellFull!12939 (v!16337 V!41523)) (EmptyCell!12939) )
))
(declare-datatypes ((array!71470 0))(
  ( (array!71471 (arr!34390 (Array (_ BitVec 32) ValueCell!12939)) (size!34927 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71470)

(assert (=> b!1103249 (= res!736125 (and (= (size!34927 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34926 _keys!1208) (size!34927 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103250 () Bool)

(declare-fun res!736128 () Bool)

(assert (=> b!1103250 (=> (not res!736128) (not e!629807))))

(assert (=> b!1103250 (= res!736128 (and (bvsle #b00000000000000000000000000000000 (size!34926 _keys!1208)) (bvslt (size!34926 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1103251 () Bool)

(declare-fun res!736127 () Bool)

(assert (=> b!1103251 (=> (not res!736127) (not e!629807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71468 (_ BitVec 32)) Bool)

(assert (=> b!1103251 (= res!736127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!736124 () Bool)

(assert (=> start!97022 (=> (not res!736124) (not e!629807))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97022 (= res!736124 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34926 _keys!1208))))))

(assert (=> start!97022 e!629807))

(declare-fun array_inv!26340 (array!71468) Bool)

(assert (=> start!97022 (array_inv!26340 _keys!1208)))

(assert (=> start!97022 true))

(declare-fun e!629810 () Bool)

(declare-fun array_inv!26341 (array!71470) Bool)

(assert (=> start!97022 (and (array_inv!26341 _values!996) e!629810)))

(declare-fun b!1103252 () Bool)

(declare-fun e!629809 () Bool)

(declare-fun mapRes!42745 () Bool)

(assert (=> b!1103252 (= e!629810 (and e!629809 mapRes!42745))))

(declare-fun condMapEmpty!42745 () Bool)

(declare-fun mapDefault!42745 () ValueCell!12939)

(assert (=> b!1103252 (= condMapEmpty!42745 (= (arr!34390 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12939)) mapDefault!42745)))))

(declare-fun mapIsEmpty!42745 () Bool)

(assert (=> mapIsEmpty!42745 mapRes!42745))

(declare-fun mapNonEmpty!42745 () Bool)

(declare-fun tp!81666 () Bool)

(declare-fun e!629808 () Bool)

(assert (=> mapNonEmpty!42745 (= mapRes!42745 (and tp!81666 e!629808))))

(declare-fun mapValue!42745 () ValueCell!12939)

(declare-fun mapRest!42745 () (Array (_ BitVec 32) ValueCell!12939))

(declare-fun mapKey!42745 () (_ BitVec 32))

(assert (=> mapNonEmpty!42745 (= (arr!34390 _values!996) (store mapRest!42745 mapKey!42745 mapValue!42745))))

(declare-fun b!1103253 () Bool)

(declare-fun res!736126 () Bool)

(assert (=> b!1103253 (=> (not res!736126) (not e!629807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103253 (= res!736126 (validMask!0 mask!1564))))

(declare-fun b!1103254 () Bool)

(declare-fun tp_is_empty!27297 () Bool)

(assert (=> b!1103254 (= e!629809 tp_is_empty!27297)))

(declare-fun b!1103255 () Bool)

(assert (=> b!1103255 (= e!629808 tp_is_empty!27297)))

(declare-fun b!1103256 () Bool)

(declare-datatypes ((List!24158 0))(
  ( (Nil!24155) (Cons!24154 (h!25363 (_ BitVec 64)) (t!34430 List!24158)) )
))
(declare-fun noDuplicate!1599 (List!24158) Bool)

(assert (=> b!1103256 (= e!629807 (not (noDuplicate!1599 Nil!24155)))))

(assert (= (and start!97022 res!736124) b!1103253))

(assert (= (and b!1103253 res!736126) b!1103249))

(assert (= (and b!1103249 res!736125) b!1103251))

(assert (= (and b!1103251 res!736127) b!1103250))

(assert (= (and b!1103250 res!736128) b!1103256))

(assert (= (and b!1103252 condMapEmpty!42745) mapIsEmpty!42745))

(assert (= (and b!1103252 (not condMapEmpty!42745)) mapNonEmpty!42745))

(get-info :version)

(assert (= (and mapNonEmpty!42745 ((_ is ValueCellFull!12939) mapValue!42745)) b!1103255))

(assert (= (and b!1103252 ((_ is ValueCellFull!12939) mapDefault!42745)) b!1103254))

(assert (= start!97022 b!1103252))

(declare-fun m!1023601 () Bool)

(assert (=> mapNonEmpty!42745 m!1023601))

(declare-fun m!1023603 () Bool)

(assert (=> b!1103251 m!1023603))

(declare-fun m!1023605 () Bool)

(assert (=> b!1103256 m!1023605))

(declare-fun m!1023607 () Bool)

(assert (=> b!1103253 m!1023607))

(declare-fun m!1023609 () Bool)

(assert (=> start!97022 m!1023609))

(declare-fun m!1023611 () Bool)

(assert (=> start!97022 m!1023611))

(check-sat (not mapNonEmpty!42745) (not b!1103253) (not b!1103251) (not start!97022) (not b!1103256) tp_is_empty!27297)
(check-sat)
(get-model)

(declare-fun d!130765 () Bool)

(declare-fun res!736148 () Bool)

(declare-fun e!629831 () Bool)

(assert (=> d!130765 (=> res!736148 e!629831)))

(assert (=> d!130765 (= res!736148 ((_ is Nil!24155) Nil!24155))))

(assert (=> d!130765 (= (noDuplicate!1599 Nil!24155) e!629831)))

(declare-fun b!1103285 () Bool)

(declare-fun e!629832 () Bool)

(assert (=> b!1103285 (= e!629831 e!629832)))

(declare-fun res!736149 () Bool)

(assert (=> b!1103285 (=> (not res!736149) (not e!629832))))

(declare-fun contains!6424 (List!24158 (_ BitVec 64)) Bool)

(assert (=> b!1103285 (= res!736149 (not (contains!6424 (t!34430 Nil!24155) (h!25363 Nil!24155))))))

(declare-fun b!1103286 () Bool)

(assert (=> b!1103286 (= e!629832 (noDuplicate!1599 (t!34430 Nil!24155)))))

(assert (= (and d!130765 (not res!736148)) b!1103285))

(assert (= (and b!1103285 res!736149) b!1103286))

(declare-fun m!1023625 () Bool)

(assert (=> b!1103285 m!1023625))

(declare-fun m!1023627 () Bool)

(assert (=> b!1103286 m!1023627))

(assert (=> b!1103256 d!130765))

(declare-fun d!130767 () Bool)

(assert (=> d!130767 (= (array_inv!26340 _keys!1208) (bvsge (size!34926 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!97022 d!130767))

(declare-fun d!130769 () Bool)

(assert (=> d!130769 (= (array_inv!26341 _values!996) (bvsge (size!34927 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!97022 d!130769))

(declare-fun d!130771 () Bool)

(assert (=> d!130771 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1103253 d!130771))

(declare-fun d!130773 () Bool)

(declare-fun res!736155 () Bool)

(declare-fun e!629839 () Bool)

(assert (=> d!130773 (=> res!736155 e!629839)))

(assert (=> d!130773 (= res!736155 (bvsge #b00000000000000000000000000000000 (size!34926 _keys!1208)))))

(assert (=> d!130773 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!629839)))

(declare-fun b!1103295 () Bool)

(declare-fun e!629841 () Bool)

(declare-fun e!629840 () Bool)

(assert (=> b!1103295 (= e!629841 e!629840)))

(declare-fun lt!495035 () (_ BitVec 64))

(assert (=> b!1103295 (= lt!495035 (select (arr!34389 _keys!1208) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!36175 0))(
  ( (Unit!36176) )
))
(declare-fun lt!495037 () Unit!36175)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71468 (_ BitVec 64) (_ BitVec 32)) Unit!36175)

(assert (=> b!1103295 (= lt!495037 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!495035 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!71468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1103295 (arrayContainsKey!0 _keys!1208 lt!495035 #b00000000000000000000000000000000)))

(declare-fun lt!495036 () Unit!36175)

(assert (=> b!1103295 (= lt!495036 lt!495037)))

(declare-fun res!736154 () Bool)

(declare-datatypes ((SeekEntryResult!9916 0))(
  ( (MissingZero!9916 (index!42034 (_ BitVec 32))) (Found!9916 (index!42035 (_ BitVec 32))) (Intermediate!9916 (undefined!10728 Bool) (index!42036 (_ BitVec 32)) (x!99230 (_ BitVec 32))) (Undefined!9916) (MissingVacant!9916 (index!42037 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71468 (_ BitVec 32)) SeekEntryResult!9916)

(assert (=> b!1103295 (= res!736154 (= (seekEntryOrOpen!0 (select (arr!34389 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9916 #b00000000000000000000000000000000)))))

(assert (=> b!1103295 (=> (not res!736154) (not e!629840))))

(declare-fun bm!46320 () Bool)

(declare-fun call!46323 () Bool)

(assert (=> bm!46320 (= call!46323 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1103296 () Bool)

(assert (=> b!1103296 (= e!629840 call!46323)))

(declare-fun b!1103297 () Bool)

(assert (=> b!1103297 (= e!629839 e!629841)))

(declare-fun c!108924 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103297 (= c!108924 (validKeyInArray!0 (select (arr!34389 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1103298 () Bool)

(assert (=> b!1103298 (= e!629841 call!46323)))

(assert (= (and d!130773 (not res!736155)) b!1103297))

(assert (= (and b!1103297 c!108924) b!1103295))

(assert (= (and b!1103297 (not c!108924)) b!1103298))

(assert (= (and b!1103295 res!736154) b!1103296))

(assert (= (or b!1103296 b!1103298) bm!46320))

(declare-fun m!1023629 () Bool)

(assert (=> b!1103295 m!1023629))

(declare-fun m!1023631 () Bool)

(assert (=> b!1103295 m!1023631))

(declare-fun m!1023633 () Bool)

(assert (=> b!1103295 m!1023633))

(assert (=> b!1103295 m!1023629))

(declare-fun m!1023635 () Bool)

(assert (=> b!1103295 m!1023635))

(declare-fun m!1023637 () Bool)

(assert (=> bm!46320 m!1023637))

(assert (=> b!1103297 m!1023629))

(assert (=> b!1103297 m!1023629))

(declare-fun m!1023639 () Bool)

(assert (=> b!1103297 m!1023639))

(assert (=> b!1103251 d!130773))

(declare-fun b!1103306 () Bool)

(declare-fun e!629846 () Bool)

(assert (=> b!1103306 (= e!629846 tp_is_empty!27297)))

(declare-fun condMapEmpty!42751 () Bool)

(declare-fun mapDefault!42751 () ValueCell!12939)

(assert (=> mapNonEmpty!42745 (= condMapEmpty!42751 (= mapRest!42745 ((as const (Array (_ BitVec 32) ValueCell!12939)) mapDefault!42751)))))

(declare-fun mapRes!42751 () Bool)

(assert (=> mapNonEmpty!42745 (= tp!81666 (and e!629846 mapRes!42751))))

(declare-fun mapIsEmpty!42751 () Bool)

(assert (=> mapIsEmpty!42751 mapRes!42751))

(declare-fun mapNonEmpty!42751 () Bool)

(declare-fun tp!81672 () Bool)

(declare-fun e!629847 () Bool)

(assert (=> mapNonEmpty!42751 (= mapRes!42751 (and tp!81672 e!629847))))

(declare-fun mapRest!42751 () (Array (_ BitVec 32) ValueCell!12939))

(declare-fun mapKey!42751 () (_ BitVec 32))

(declare-fun mapValue!42751 () ValueCell!12939)

(assert (=> mapNonEmpty!42751 (= mapRest!42745 (store mapRest!42751 mapKey!42751 mapValue!42751))))

(declare-fun b!1103305 () Bool)

(assert (=> b!1103305 (= e!629847 tp_is_empty!27297)))

(assert (= (and mapNonEmpty!42745 condMapEmpty!42751) mapIsEmpty!42751))

(assert (= (and mapNonEmpty!42745 (not condMapEmpty!42751)) mapNonEmpty!42751))

(assert (= (and mapNonEmpty!42751 ((_ is ValueCellFull!12939) mapValue!42751)) b!1103305))

(assert (= (and mapNonEmpty!42745 ((_ is ValueCellFull!12939) mapDefault!42751)) b!1103306))

(declare-fun m!1023641 () Bool)

(assert (=> mapNonEmpty!42751 m!1023641))

(check-sat (not b!1103285) (not b!1103286) (not bm!46320) (not b!1103297) (not b!1103295) tp_is_empty!27297 (not mapNonEmpty!42751))
(check-sat)
