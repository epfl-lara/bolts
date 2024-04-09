; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95480 () Bool)

(assert start!95480)

(declare-fun b!1077909 () Bool)

(declare-fun res!718330 () Bool)

(declare-fun e!616363 () Bool)

(assert (=> b!1077909 (=> (not res!718330) (not e!616363))))

(declare-datatypes ((array!69202 0))(
  ( (array!69203 (arr!33274 (Array (_ BitVec 32) (_ BitVec 64))) (size!33811 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69202)

(assert (=> b!1077909 (= res!718330 (and (bvsle #b00000000000000000000000000000000 (size!33811 _keys!1070)) (bvslt (size!33811 _keys!1070) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!40963 () Bool)

(declare-fun mapRes!40963 () Bool)

(declare-fun tp!78426 () Bool)

(declare-fun e!616366 () Bool)

(assert (=> mapNonEmpty!40963 (= mapRes!40963 (and tp!78426 e!616366))))

(declare-datatypes ((V!39987 0))(
  ( (V!39988 (val!13129 Int)) )
))
(declare-datatypes ((ValueCell!12363 0))(
  ( (ValueCellFull!12363 (v!15750 V!39987)) (EmptyCell!12363) )
))
(declare-fun mapRest!40963 () (Array (_ BitVec 32) ValueCell!12363))

(declare-datatypes ((array!69204 0))(
  ( (array!69205 (arr!33275 (Array (_ BitVec 32) ValueCell!12363)) (size!33812 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69204)

(declare-fun mapValue!40963 () ValueCell!12363)

(declare-fun mapKey!40963 () (_ BitVec 32))

(assert (=> mapNonEmpty!40963 (= (arr!33275 _values!874) (store mapRest!40963 mapKey!40963 mapValue!40963))))

(declare-fun b!1077910 () Bool)

(declare-fun tp_is_empty!26145 () Bool)

(assert (=> b!1077910 (= e!616366 tp_is_empty!26145)))

(declare-fun res!718332 () Bool)

(assert (=> start!95480 (=> (not res!718332) (not e!616363))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95480 (= res!718332 (validMask!0 mask!1414))))

(assert (=> start!95480 e!616363))

(assert (=> start!95480 true))

(declare-fun array_inv!25572 (array!69202) Bool)

(assert (=> start!95480 (array_inv!25572 _keys!1070)))

(declare-fun e!616364 () Bool)

(declare-fun array_inv!25573 (array!69204) Bool)

(assert (=> start!95480 (and (array_inv!25573 _values!874) e!616364)))

(declare-fun b!1077911 () Bool)

(declare-fun res!718325 () Bool)

(assert (=> b!1077911 (=> (not res!718325) (not e!616363))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077911 (= res!718325 (and (= (size!33812 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33811 _keys!1070) (size!33812 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077912 () Bool)

(declare-fun res!718326 () Bool)

(assert (=> b!1077912 (=> (not res!718326) (not e!616363))))

(declare-datatypes ((List!23346 0))(
  ( (Nil!23343) (Cons!23342 (h!24551 (_ BitVec 64)) (t!32712 List!23346)) )
))
(declare-fun arrayNoDuplicates!0 (array!69202 (_ BitVec 32) List!23346) Bool)

(assert (=> b!1077912 (= res!718326 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23343))))

(declare-fun b!1077913 () Bool)

(declare-fun res!718328 () Bool)

(assert (=> b!1077913 (=> (not res!718328) (not e!616363))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077913 (= res!718328 (validKeyInArray!0 k0!904))))

(declare-fun b!1077914 () Bool)

(declare-fun e!616365 () Bool)

(assert (=> b!1077914 (= e!616364 (and e!616365 mapRes!40963))))

(declare-fun condMapEmpty!40963 () Bool)

(declare-fun mapDefault!40963 () ValueCell!12363)

(assert (=> b!1077914 (= condMapEmpty!40963 (= (arr!33275 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12363)) mapDefault!40963)))))

(declare-fun b!1077915 () Bool)

(declare-fun res!718324 () Bool)

(assert (=> b!1077915 (=> (not res!718324) (not e!616363))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69202 (_ BitVec 32)) Bool)

(assert (=> b!1077915 (= res!718324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070)) mask!1414))))

(declare-fun mapIsEmpty!40963 () Bool)

(assert (=> mapIsEmpty!40963 mapRes!40963))

(declare-fun b!1077916 () Bool)

(declare-fun noDuplicate!1597 (List!23346) Bool)

(assert (=> b!1077916 (= e!616363 (not (noDuplicate!1597 Nil!23343)))))

(declare-fun b!1077917 () Bool)

(declare-fun res!718329 () Bool)

(assert (=> b!1077917 (=> (not res!718329) (not e!616363))))

(assert (=> b!1077917 (= res!718329 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33811 _keys!1070))))))

(declare-fun b!1077918 () Bool)

(declare-fun res!718331 () Bool)

(assert (=> b!1077918 (=> (not res!718331) (not e!616363))))

(assert (=> b!1077918 (= res!718331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077919 () Bool)

(declare-fun res!718327 () Bool)

(assert (=> b!1077919 (=> (not res!718327) (not e!616363))))

(assert (=> b!1077919 (= res!718327 (= (select (arr!33274 _keys!1070) i!650) k0!904))))

(declare-fun b!1077920 () Bool)

(assert (=> b!1077920 (= e!616365 tp_is_empty!26145)))

(assert (= (and start!95480 res!718332) b!1077911))

(assert (= (and b!1077911 res!718325) b!1077918))

(assert (= (and b!1077918 res!718331) b!1077912))

(assert (= (and b!1077912 res!718326) b!1077917))

(assert (= (and b!1077917 res!718329) b!1077913))

(assert (= (and b!1077913 res!718328) b!1077919))

(assert (= (and b!1077919 res!718327) b!1077915))

(assert (= (and b!1077915 res!718324) b!1077909))

(assert (= (and b!1077909 res!718330) b!1077916))

(assert (= (and b!1077914 condMapEmpty!40963) mapIsEmpty!40963))

(assert (= (and b!1077914 (not condMapEmpty!40963)) mapNonEmpty!40963))

(get-info :version)

(assert (= (and mapNonEmpty!40963 ((_ is ValueCellFull!12363) mapValue!40963)) b!1077910))

(assert (= (and b!1077914 ((_ is ValueCellFull!12363) mapDefault!40963)) b!1077920))

(assert (= start!95480 b!1077914))

(declare-fun m!996701 () Bool)

(assert (=> b!1077916 m!996701))

(declare-fun m!996703 () Bool)

(assert (=> b!1077919 m!996703))

(declare-fun m!996705 () Bool)

(assert (=> b!1077913 m!996705))

(declare-fun m!996707 () Bool)

(assert (=> b!1077912 m!996707))

(declare-fun m!996709 () Bool)

(assert (=> b!1077918 m!996709))

(declare-fun m!996711 () Bool)

(assert (=> mapNonEmpty!40963 m!996711))

(declare-fun m!996713 () Bool)

(assert (=> b!1077915 m!996713))

(declare-fun m!996715 () Bool)

(assert (=> b!1077915 m!996715))

(declare-fun m!996717 () Bool)

(assert (=> start!95480 m!996717))

(declare-fun m!996719 () Bool)

(assert (=> start!95480 m!996719))

(declare-fun m!996721 () Bool)

(assert (=> start!95480 m!996721))

(check-sat (not b!1077915) (not start!95480) (not b!1077918) (not b!1077912) (not mapNonEmpty!40963) tp_is_empty!26145 (not b!1077913) (not b!1077916))
(check-sat)
(get-model)

(declare-fun b!1077967 () Bool)

(declare-fun e!616391 () Bool)

(declare-fun call!45730 () Bool)

(assert (=> b!1077967 (= e!616391 call!45730)))

(declare-fun b!1077968 () Bool)

(declare-fun e!616390 () Bool)

(declare-fun contains!6385 (List!23346 (_ BitVec 64)) Bool)

(assert (=> b!1077968 (= e!616390 (contains!6385 Nil!23343 (select (arr!33274 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45727 () Bool)

(declare-fun c!108271 () Bool)

(assert (=> bm!45727 (= call!45730 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108271 (Cons!23342 (select (arr!33274 _keys!1070) #b00000000000000000000000000000000) Nil!23343) Nil!23343)))))

(declare-fun d!129831 () Bool)

(declare-fun res!718368 () Bool)

(declare-fun e!616392 () Bool)

(assert (=> d!129831 (=> res!718368 e!616392)))

(assert (=> d!129831 (= res!718368 (bvsge #b00000000000000000000000000000000 (size!33811 _keys!1070)))))

(assert (=> d!129831 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23343) e!616392)))

(declare-fun b!1077969 () Bool)

(declare-fun e!616393 () Bool)

(assert (=> b!1077969 (= e!616392 e!616393)))

(declare-fun res!718366 () Bool)

(assert (=> b!1077969 (=> (not res!718366) (not e!616393))))

(assert (=> b!1077969 (= res!718366 (not e!616390))))

(declare-fun res!718367 () Bool)

(assert (=> b!1077969 (=> (not res!718367) (not e!616390))))

(assert (=> b!1077969 (= res!718367 (validKeyInArray!0 (select (arr!33274 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1077970 () Bool)

(assert (=> b!1077970 (= e!616391 call!45730)))

(declare-fun b!1077971 () Bool)

(assert (=> b!1077971 (= e!616393 e!616391)))

(assert (=> b!1077971 (= c!108271 (validKeyInArray!0 (select (arr!33274 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!129831 (not res!718368)) b!1077969))

(assert (= (and b!1077969 res!718367) b!1077968))

(assert (= (and b!1077969 res!718366) b!1077971))

(assert (= (and b!1077971 c!108271) b!1077970))

(assert (= (and b!1077971 (not c!108271)) b!1077967))

(assert (= (or b!1077970 b!1077967) bm!45727))

(declare-fun m!996745 () Bool)

(assert (=> b!1077968 m!996745))

(assert (=> b!1077968 m!996745))

(declare-fun m!996747 () Bool)

(assert (=> b!1077968 m!996747))

(assert (=> bm!45727 m!996745))

(declare-fun m!996749 () Bool)

(assert (=> bm!45727 m!996749))

(assert (=> b!1077969 m!996745))

(assert (=> b!1077969 m!996745))

(declare-fun m!996751 () Bool)

(assert (=> b!1077969 m!996751))

(assert (=> b!1077971 m!996745))

(assert (=> b!1077971 m!996745))

(assert (=> b!1077971 m!996751))

(assert (=> b!1077912 d!129831))

(declare-fun d!129833 () Bool)

(declare-fun res!718373 () Bool)

(declare-fun e!616398 () Bool)

(assert (=> d!129833 (=> res!718373 e!616398)))

(assert (=> d!129833 (= res!718373 ((_ is Nil!23343) Nil!23343))))

(assert (=> d!129833 (= (noDuplicate!1597 Nil!23343) e!616398)))

(declare-fun b!1077976 () Bool)

(declare-fun e!616399 () Bool)

(assert (=> b!1077976 (= e!616398 e!616399)))

(declare-fun res!718374 () Bool)

(assert (=> b!1077976 (=> (not res!718374) (not e!616399))))

(assert (=> b!1077976 (= res!718374 (not (contains!6385 (t!32712 Nil!23343) (h!24551 Nil!23343))))))

(declare-fun b!1077977 () Bool)

(assert (=> b!1077977 (= e!616399 (noDuplicate!1597 (t!32712 Nil!23343)))))

(assert (= (and d!129833 (not res!718373)) b!1077976))

(assert (= (and b!1077976 res!718374) b!1077977))

(declare-fun m!996753 () Bool)

(assert (=> b!1077976 m!996753))

(declare-fun m!996755 () Bool)

(assert (=> b!1077977 m!996755))

(assert (=> b!1077916 d!129833))

(declare-fun b!1077986 () Bool)

(declare-fun e!616406 () Bool)

(declare-fun e!616407 () Bool)

(assert (=> b!1077986 (= e!616406 e!616407)))

(declare-fun c!108274 () Bool)

(assert (=> b!1077986 (= c!108274 (validKeyInArray!0 (select (arr!33274 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1077987 () Bool)

(declare-fun call!45733 () Bool)

(assert (=> b!1077987 (= e!616407 call!45733)))

(declare-fun bm!45730 () Bool)

(assert (=> bm!45730 (= call!45733 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun d!129835 () Bool)

(declare-fun res!718380 () Bool)

(assert (=> d!129835 (=> res!718380 e!616406)))

(assert (=> d!129835 (= res!718380 (bvsge #b00000000000000000000000000000000 (size!33811 _keys!1070)))))

(assert (=> d!129835 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!616406)))

(declare-fun b!1077988 () Bool)

(declare-fun e!616408 () Bool)

(assert (=> b!1077988 (= e!616408 call!45733)))

(declare-fun b!1077989 () Bool)

(assert (=> b!1077989 (= e!616407 e!616408)))

(declare-fun lt!478555 () (_ BitVec 64))

(assert (=> b!1077989 (= lt!478555 (select (arr!33274 _keys!1070) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35409 0))(
  ( (Unit!35410) )
))
(declare-fun lt!478554 () Unit!35409)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69202 (_ BitVec 64) (_ BitVec 32)) Unit!35409)

(assert (=> b!1077989 (= lt!478554 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!478555 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!69202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1077989 (arrayContainsKey!0 _keys!1070 lt!478555 #b00000000000000000000000000000000)))

(declare-fun lt!478553 () Unit!35409)

(assert (=> b!1077989 (= lt!478553 lt!478554)))

(declare-fun res!718379 () Bool)

(declare-datatypes ((SeekEntryResult!9898 0))(
  ( (MissingZero!9898 (index!41962 (_ BitVec 32))) (Found!9898 (index!41963 (_ BitVec 32))) (Intermediate!9898 (undefined!10710 Bool) (index!41964 (_ BitVec 32)) (x!96626 (_ BitVec 32))) (Undefined!9898) (MissingVacant!9898 (index!41965 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!69202 (_ BitVec 32)) SeekEntryResult!9898)

(assert (=> b!1077989 (= res!718379 (= (seekEntryOrOpen!0 (select (arr!33274 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9898 #b00000000000000000000000000000000)))))

(assert (=> b!1077989 (=> (not res!718379) (not e!616408))))

(assert (= (and d!129835 (not res!718380)) b!1077986))

(assert (= (and b!1077986 c!108274) b!1077989))

(assert (= (and b!1077986 (not c!108274)) b!1077987))

(assert (= (and b!1077989 res!718379) b!1077988))

(assert (= (or b!1077988 b!1077987) bm!45730))

(assert (=> b!1077986 m!996745))

(assert (=> b!1077986 m!996745))

(assert (=> b!1077986 m!996751))

(declare-fun m!996757 () Bool)

(assert (=> bm!45730 m!996757))

(assert (=> b!1077989 m!996745))

(declare-fun m!996759 () Bool)

(assert (=> b!1077989 m!996759))

(declare-fun m!996761 () Bool)

(assert (=> b!1077989 m!996761))

(assert (=> b!1077989 m!996745))

(declare-fun m!996763 () Bool)

(assert (=> b!1077989 m!996763))

(assert (=> b!1077918 d!129835))

(declare-fun d!129837 () Bool)

(assert (=> d!129837 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1077913 d!129837))

(declare-fun b!1077990 () Bool)

(declare-fun e!616409 () Bool)

(declare-fun e!616410 () Bool)

(assert (=> b!1077990 (= e!616409 e!616410)))

(declare-fun c!108275 () Bool)

(assert (=> b!1077990 (= c!108275 (validKeyInArray!0 (select (arr!33274 (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070))) #b00000000000000000000000000000000)))))

(declare-fun b!1077991 () Bool)

(declare-fun call!45734 () Bool)

(assert (=> b!1077991 (= e!616410 call!45734)))

(declare-fun bm!45731 () Bool)

(assert (=> bm!45731 (= call!45734 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070)) mask!1414))))

(declare-fun d!129839 () Bool)

(declare-fun res!718382 () Bool)

(assert (=> d!129839 (=> res!718382 e!616409)))

(assert (=> d!129839 (= res!718382 (bvsge #b00000000000000000000000000000000 (size!33811 (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070)))))))

(assert (=> d!129839 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070)) mask!1414) e!616409)))

(declare-fun b!1077992 () Bool)

(declare-fun e!616411 () Bool)

(assert (=> b!1077992 (= e!616411 call!45734)))

(declare-fun b!1077993 () Bool)

(assert (=> b!1077993 (= e!616410 e!616411)))

(declare-fun lt!478558 () (_ BitVec 64))

(assert (=> b!1077993 (= lt!478558 (select (arr!33274 (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070))) #b00000000000000000000000000000000))))

(declare-fun lt!478557 () Unit!35409)

(assert (=> b!1077993 (= lt!478557 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070)) lt!478558 #b00000000000000000000000000000000))))

(assert (=> b!1077993 (arrayContainsKey!0 (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070)) lt!478558 #b00000000000000000000000000000000)))

(declare-fun lt!478556 () Unit!35409)

(assert (=> b!1077993 (= lt!478556 lt!478557)))

(declare-fun res!718381 () Bool)

(assert (=> b!1077993 (= res!718381 (= (seekEntryOrOpen!0 (select (arr!33274 (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070))) #b00000000000000000000000000000000) (array!69203 (store (arr!33274 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33811 _keys!1070)) mask!1414) (Found!9898 #b00000000000000000000000000000000)))))

(assert (=> b!1077993 (=> (not res!718381) (not e!616411))))

(assert (= (and d!129839 (not res!718382)) b!1077990))

(assert (= (and b!1077990 c!108275) b!1077993))

(assert (= (and b!1077990 (not c!108275)) b!1077991))

(assert (= (and b!1077993 res!718381) b!1077992))

(assert (= (or b!1077992 b!1077991) bm!45731))

(declare-fun m!996765 () Bool)

(assert (=> b!1077990 m!996765))

(assert (=> b!1077990 m!996765))

(declare-fun m!996767 () Bool)

(assert (=> b!1077990 m!996767))

(declare-fun m!996769 () Bool)

(assert (=> bm!45731 m!996769))

(assert (=> b!1077993 m!996765))

(declare-fun m!996771 () Bool)

(assert (=> b!1077993 m!996771))

(declare-fun m!996773 () Bool)

(assert (=> b!1077993 m!996773))

(assert (=> b!1077993 m!996765))

(declare-fun m!996775 () Bool)

(assert (=> b!1077993 m!996775))

(assert (=> b!1077915 d!129839))

(declare-fun d!129841 () Bool)

(assert (=> d!129841 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!95480 d!129841))

(declare-fun d!129843 () Bool)

(assert (=> d!129843 (= (array_inv!25572 _keys!1070) (bvsge (size!33811 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!95480 d!129843))

(declare-fun d!129845 () Bool)

(assert (=> d!129845 (= (array_inv!25573 _values!874) (bvsge (size!33812 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!95480 d!129845))

(declare-fun condMapEmpty!40969 () Bool)

(declare-fun mapDefault!40969 () ValueCell!12363)

(assert (=> mapNonEmpty!40963 (= condMapEmpty!40969 (= mapRest!40963 ((as const (Array (_ BitVec 32) ValueCell!12363)) mapDefault!40969)))))

(declare-fun e!616416 () Bool)

(declare-fun mapRes!40969 () Bool)

(assert (=> mapNonEmpty!40963 (= tp!78426 (and e!616416 mapRes!40969))))

(declare-fun b!1078001 () Bool)

(assert (=> b!1078001 (= e!616416 tp_is_empty!26145)))

(declare-fun mapIsEmpty!40969 () Bool)

(assert (=> mapIsEmpty!40969 mapRes!40969))

(declare-fun b!1078000 () Bool)

(declare-fun e!616417 () Bool)

(assert (=> b!1078000 (= e!616417 tp_is_empty!26145)))

(declare-fun mapNonEmpty!40969 () Bool)

(declare-fun tp!78432 () Bool)

(assert (=> mapNonEmpty!40969 (= mapRes!40969 (and tp!78432 e!616417))))

(declare-fun mapValue!40969 () ValueCell!12363)

(declare-fun mapRest!40969 () (Array (_ BitVec 32) ValueCell!12363))

(declare-fun mapKey!40969 () (_ BitVec 32))

(assert (=> mapNonEmpty!40969 (= mapRest!40963 (store mapRest!40969 mapKey!40969 mapValue!40969))))

(assert (= (and mapNonEmpty!40963 condMapEmpty!40969) mapIsEmpty!40969))

(assert (= (and mapNonEmpty!40963 (not condMapEmpty!40969)) mapNonEmpty!40969))

(assert (= (and mapNonEmpty!40969 ((_ is ValueCellFull!12363) mapValue!40969)) b!1078000))

(assert (= (and mapNonEmpty!40963 ((_ is ValueCellFull!12363) mapDefault!40969)) b!1078001))

(declare-fun m!996777 () Bool)

(assert (=> mapNonEmpty!40969 m!996777))

(check-sat (not b!1077971) (not b!1077989) (not bm!45730) (not bm!45727) (not b!1077986) (not b!1077969) (not b!1077968) (not mapNonEmpty!40969) (not b!1077976) (not b!1077977) (not b!1077993) (not bm!45731) tp_is_empty!26145 (not b!1077990))
(check-sat)
