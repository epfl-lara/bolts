; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97104 () Bool)

(assert start!97104)

(declare-fun b!1104057 () Bool)

(declare-fun e!630259 () Bool)

(declare-fun e!630256 () Bool)

(declare-fun mapRes!42826 () Bool)

(assert (=> b!1104057 (= e!630259 (and e!630256 mapRes!42826))))

(declare-fun condMapEmpty!42826 () Bool)

(declare-datatypes ((V!41587 0))(
  ( (V!41588 (val!13729 Int)) )
))
(declare-datatypes ((ValueCell!12963 0))(
  ( (ValueCellFull!12963 (v!16362 V!41587)) (EmptyCell!12963) )
))
(declare-datatypes ((array!71564 0))(
  ( (array!71565 (arr!34434 (Array (_ BitVec 32) ValueCell!12963)) (size!34971 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71564)

(declare-fun mapDefault!42826 () ValueCell!12963)

(assert (=> b!1104057 (= condMapEmpty!42826 (= (arr!34434 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12963)) mapDefault!42826)))))

(declare-fun b!1104058 () Bool)

(declare-fun tp_is_empty!27345 () Bool)

(assert (=> b!1104058 (= e!630256 tp_is_empty!27345)))

(declare-fun mapNonEmpty!42826 () Bool)

(declare-fun tp!81747 () Bool)

(declare-fun e!630258 () Bool)

(assert (=> mapNonEmpty!42826 (= mapRes!42826 (and tp!81747 e!630258))))

(declare-fun mapRest!42826 () (Array (_ BitVec 32) ValueCell!12963))

(declare-fun mapValue!42826 () ValueCell!12963)

(declare-fun mapKey!42826 () (_ BitVec 32))

(assert (=> mapNonEmpty!42826 (= (arr!34434 _values!996) (store mapRest!42826 mapKey!42826 mapValue!42826))))

(declare-fun b!1104059 () Bool)

(declare-fun res!736668 () Bool)

(declare-fun e!630260 () Bool)

(assert (=> b!1104059 (=> (not res!736668) (not e!630260))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!71566 0))(
  ( (array!71567 (arr!34435 (Array (_ BitVec 32) (_ BitVec 64))) (size!34972 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71566)

(assert (=> b!1104059 (= res!736668 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34972 _keys!1208))))))

(declare-fun b!1104060 () Bool)

(declare-fun res!736667 () Bool)

(assert (=> b!1104060 (=> (not res!736667) (not e!630260))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1104060 (= res!736667 (and (= (size!34971 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34972 _keys!1208) (size!34971 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104061 () Bool)

(declare-datatypes ((List!24172 0))(
  ( (Nil!24169) (Cons!24168 (h!25377 (_ BitVec 64)) (t!34444 List!24172)) )
))
(declare-fun noDuplicate!1602 (List!24172) Bool)

(assert (=> b!1104061 (= e!630260 (not (noDuplicate!1602 Nil!24169)))))

(declare-fun b!1104062 () Bool)

(declare-fun res!736672 () Bool)

(assert (=> b!1104062 (=> (not res!736672) (not e!630260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71566 (_ BitVec 32)) Bool)

(assert (=> b!1104062 (= res!736672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104063 () Bool)

(declare-fun res!736666 () Bool)

(assert (=> b!1104063 (=> (not res!736666) (not e!630260))))

(assert (=> b!1104063 (= res!736666 (and (bvsle #b00000000000000000000000000000000 (size!34972 _keys!1208)) (bvslt (size!34972 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1104064 () Bool)

(declare-fun res!736670 () Bool)

(assert (=> b!1104064 (=> (not res!736670) (not e!630260))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1104064 (= res!736670 (= (select (arr!34435 _keys!1208) i!673) k0!934))))

(declare-fun b!1104065 () Bool)

(declare-fun res!736673 () Bool)

(assert (=> b!1104065 (=> (not res!736673) (not e!630260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104065 (= res!736673 (validMask!0 mask!1564))))

(declare-fun res!736671 () Bool)

(assert (=> start!97104 (=> (not res!736671) (not e!630260))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97104 (= res!736671 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34972 _keys!1208))))))

(assert (=> start!97104 e!630260))

(declare-fun array_inv!26368 (array!71566) Bool)

(assert (=> start!97104 (array_inv!26368 _keys!1208)))

(assert (=> start!97104 true))

(declare-fun array_inv!26369 (array!71564) Bool)

(assert (=> start!97104 (and (array_inv!26369 _values!996) e!630259)))

(declare-fun mapIsEmpty!42826 () Bool)

(assert (=> mapIsEmpty!42826 mapRes!42826))

(declare-fun b!1104066 () Bool)

(assert (=> b!1104066 (= e!630258 tp_is_empty!27345)))

(declare-fun b!1104067 () Bool)

(declare-fun res!736675 () Bool)

(assert (=> b!1104067 (=> (not res!736675) (not e!630260))))

(declare-fun arrayNoDuplicates!0 (array!71566 (_ BitVec 32) List!24172) Bool)

(assert (=> b!1104067 (= res!736675 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24169))))

(declare-fun b!1104068 () Bool)

(declare-fun res!736674 () Bool)

(assert (=> b!1104068 (=> (not res!736674) (not e!630260))))

(assert (=> b!1104068 (= res!736674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208)) mask!1564))))

(declare-fun b!1104069 () Bool)

(declare-fun res!736669 () Bool)

(assert (=> b!1104069 (=> (not res!736669) (not e!630260))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104069 (= res!736669 (validKeyInArray!0 k0!934))))

(assert (= (and start!97104 res!736671) b!1104065))

(assert (= (and b!1104065 res!736673) b!1104060))

(assert (= (and b!1104060 res!736667) b!1104062))

(assert (= (and b!1104062 res!736672) b!1104067))

(assert (= (and b!1104067 res!736675) b!1104059))

(assert (= (and b!1104059 res!736668) b!1104069))

(assert (= (and b!1104069 res!736669) b!1104064))

(assert (= (and b!1104064 res!736670) b!1104068))

(assert (= (and b!1104068 res!736674) b!1104063))

(assert (= (and b!1104063 res!736666) b!1104061))

(assert (= (and b!1104057 condMapEmpty!42826) mapIsEmpty!42826))

(assert (= (and b!1104057 (not condMapEmpty!42826)) mapNonEmpty!42826))

(get-info :version)

(assert (= (and mapNonEmpty!42826 ((_ is ValueCellFull!12963) mapValue!42826)) b!1104066))

(assert (= (and b!1104057 ((_ is ValueCellFull!12963) mapDefault!42826)) b!1104058))

(assert (= start!97104 b!1104057))

(declare-fun m!1024059 () Bool)

(assert (=> b!1104064 m!1024059))

(declare-fun m!1024061 () Bool)

(assert (=> b!1104068 m!1024061))

(declare-fun m!1024063 () Bool)

(assert (=> b!1104068 m!1024063))

(declare-fun m!1024065 () Bool)

(assert (=> b!1104061 m!1024065))

(declare-fun m!1024067 () Bool)

(assert (=> b!1104062 m!1024067))

(declare-fun m!1024069 () Bool)

(assert (=> b!1104069 m!1024069))

(declare-fun m!1024071 () Bool)

(assert (=> start!97104 m!1024071))

(declare-fun m!1024073 () Bool)

(assert (=> start!97104 m!1024073))

(declare-fun m!1024075 () Bool)

(assert (=> b!1104067 m!1024075))

(declare-fun m!1024077 () Bool)

(assert (=> b!1104065 m!1024077))

(declare-fun m!1024079 () Bool)

(assert (=> mapNonEmpty!42826 m!1024079))

(check-sat tp_is_empty!27345 (not b!1104069) (not b!1104061) (not b!1104065) (not b!1104068) (not start!97104) (not b!1104067) (not b!1104062) (not mapNonEmpty!42826))
(check-sat)
(get-model)

(declare-fun d!130819 () Bool)

(assert (=> d!130819 (= (array_inv!26368 _keys!1208) (bvsge (size!34972 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!97104 d!130819))

(declare-fun d!130821 () Bool)

(assert (=> d!130821 (= (array_inv!26369 _values!996) (bvsge (size!34971 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!97104 d!130821))

(declare-fun bm!46333 () Bool)

(declare-fun call!46336 () Bool)

(assert (=> bm!46333 (= call!46336 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208)) mask!1564))))

(declare-fun d!130823 () Bool)

(declare-fun res!736710 () Bool)

(declare-fun e!630283 () Bool)

(assert (=> d!130823 (=> res!736710 e!630283)))

(assert (=> d!130823 (= res!736710 (bvsge #b00000000000000000000000000000000 (size!34972 (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208)))))))

(assert (=> d!130823 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208)) mask!1564) e!630283)))

(declare-fun b!1104117 () Bool)

(declare-fun e!630284 () Bool)

(assert (=> b!1104117 (= e!630284 call!46336)))

(declare-fun b!1104118 () Bool)

(declare-fun e!630282 () Bool)

(assert (=> b!1104118 (= e!630283 e!630282)))

(declare-fun c!108937 () Bool)

(assert (=> b!1104118 (= c!108937 (validKeyInArray!0 (select (arr!34435 (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208))) #b00000000000000000000000000000000)))))

(declare-fun b!1104119 () Bool)

(assert (=> b!1104119 (= e!630282 e!630284)))

(declare-fun lt!495088 () (_ BitVec 64))

(assert (=> b!1104119 (= lt!495088 (select (arr!34435 (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!36181 0))(
  ( (Unit!36182) )
))
(declare-fun lt!495087 () Unit!36181)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71566 (_ BitVec 64) (_ BitVec 32)) Unit!36181)

(assert (=> b!1104119 (= lt!495087 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208)) lt!495088 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!71566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1104119 (arrayContainsKey!0 (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208)) lt!495088 #b00000000000000000000000000000000)))

(declare-fun lt!495089 () Unit!36181)

(assert (=> b!1104119 (= lt!495089 lt!495087)))

(declare-fun res!736711 () Bool)

(declare-datatypes ((SeekEntryResult!9919 0))(
  ( (MissingZero!9919 (index!42046 (_ BitVec 32))) (Found!9919 (index!42047 (_ BitVec 32))) (Intermediate!9919 (undefined!10731 Bool) (index!42048 (_ BitVec 32)) (x!99303 (_ BitVec 32))) (Undefined!9919) (MissingVacant!9919 (index!42049 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71566 (_ BitVec 32)) SeekEntryResult!9919)

(assert (=> b!1104119 (= res!736711 (= (seekEntryOrOpen!0 (select (arr!34435 (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208))) #b00000000000000000000000000000000) (array!71567 (store (arr!34435 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34972 _keys!1208)) mask!1564) (Found!9919 #b00000000000000000000000000000000)))))

(assert (=> b!1104119 (=> (not res!736711) (not e!630284))))

(declare-fun b!1104120 () Bool)

(assert (=> b!1104120 (= e!630282 call!46336)))

(assert (= (and d!130823 (not res!736710)) b!1104118))

(assert (= (and b!1104118 c!108937) b!1104119))

(assert (= (and b!1104118 (not c!108937)) b!1104120))

(assert (= (and b!1104119 res!736711) b!1104117))

(assert (= (or b!1104117 b!1104120) bm!46333))

(declare-fun m!1024103 () Bool)

(assert (=> bm!46333 m!1024103))

(declare-fun m!1024105 () Bool)

(assert (=> b!1104118 m!1024105))

(assert (=> b!1104118 m!1024105))

(declare-fun m!1024107 () Bool)

(assert (=> b!1104118 m!1024107))

(assert (=> b!1104119 m!1024105))

(declare-fun m!1024109 () Bool)

(assert (=> b!1104119 m!1024109))

(declare-fun m!1024111 () Bool)

(assert (=> b!1104119 m!1024111))

(assert (=> b!1104119 m!1024105))

(declare-fun m!1024113 () Bool)

(assert (=> b!1104119 m!1024113))

(assert (=> b!1104068 d!130823))

(declare-fun bm!46334 () Bool)

(declare-fun call!46337 () Bool)

(assert (=> bm!46334 (= call!46337 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun d!130825 () Bool)

(declare-fun res!736712 () Bool)

(declare-fun e!630286 () Bool)

(assert (=> d!130825 (=> res!736712 e!630286)))

(assert (=> d!130825 (= res!736712 (bvsge #b00000000000000000000000000000000 (size!34972 _keys!1208)))))

(assert (=> d!130825 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!630286)))

(declare-fun b!1104121 () Bool)

(declare-fun e!630287 () Bool)

(assert (=> b!1104121 (= e!630287 call!46337)))

(declare-fun b!1104122 () Bool)

(declare-fun e!630285 () Bool)

(assert (=> b!1104122 (= e!630286 e!630285)))

(declare-fun c!108938 () Bool)

(assert (=> b!1104122 (= c!108938 (validKeyInArray!0 (select (arr!34435 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1104123 () Bool)

(assert (=> b!1104123 (= e!630285 e!630287)))

(declare-fun lt!495091 () (_ BitVec 64))

(assert (=> b!1104123 (= lt!495091 (select (arr!34435 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!495090 () Unit!36181)

(assert (=> b!1104123 (= lt!495090 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!495091 #b00000000000000000000000000000000))))

(assert (=> b!1104123 (arrayContainsKey!0 _keys!1208 lt!495091 #b00000000000000000000000000000000)))

(declare-fun lt!495092 () Unit!36181)

(assert (=> b!1104123 (= lt!495092 lt!495090)))

(declare-fun res!736713 () Bool)

(assert (=> b!1104123 (= res!736713 (= (seekEntryOrOpen!0 (select (arr!34435 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9919 #b00000000000000000000000000000000)))))

(assert (=> b!1104123 (=> (not res!736713) (not e!630287))))

(declare-fun b!1104124 () Bool)

(assert (=> b!1104124 (= e!630285 call!46337)))

(assert (= (and d!130825 (not res!736712)) b!1104122))

(assert (= (and b!1104122 c!108938) b!1104123))

(assert (= (and b!1104122 (not c!108938)) b!1104124))

(assert (= (and b!1104123 res!736713) b!1104121))

(assert (= (or b!1104121 b!1104124) bm!46334))

(declare-fun m!1024115 () Bool)

(assert (=> bm!46334 m!1024115))

(declare-fun m!1024117 () Bool)

(assert (=> b!1104122 m!1024117))

(assert (=> b!1104122 m!1024117))

(declare-fun m!1024119 () Bool)

(assert (=> b!1104122 m!1024119))

(assert (=> b!1104123 m!1024117))

(declare-fun m!1024121 () Bool)

(assert (=> b!1104123 m!1024121))

(declare-fun m!1024123 () Bool)

(assert (=> b!1104123 m!1024123))

(assert (=> b!1104123 m!1024117))

(declare-fun m!1024125 () Bool)

(assert (=> b!1104123 m!1024125))

(assert (=> b!1104062 d!130825))

(declare-fun d!130827 () Bool)

(declare-fun res!736721 () Bool)

(declare-fun e!630296 () Bool)

(assert (=> d!130827 (=> res!736721 e!630296)))

(assert (=> d!130827 (= res!736721 (bvsge #b00000000000000000000000000000000 (size!34972 _keys!1208)))))

(assert (=> d!130827 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24169) e!630296)))

(declare-fun b!1104135 () Bool)

(declare-fun e!630299 () Bool)

(assert (=> b!1104135 (= e!630296 e!630299)))

(declare-fun res!736722 () Bool)

(assert (=> b!1104135 (=> (not res!736722) (not e!630299))))

(declare-fun e!630298 () Bool)

(assert (=> b!1104135 (= res!736722 (not e!630298))))

(declare-fun res!736720 () Bool)

(assert (=> b!1104135 (=> (not res!736720) (not e!630298))))

(assert (=> b!1104135 (= res!736720 (validKeyInArray!0 (select (arr!34435 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1104136 () Bool)

(declare-fun e!630297 () Bool)

(declare-fun call!46340 () Bool)

(assert (=> b!1104136 (= e!630297 call!46340)))

(declare-fun b!1104137 () Bool)

(assert (=> b!1104137 (= e!630299 e!630297)))

(declare-fun c!108941 () Bool)

(assert (=> b!1104137 (= c!108941 (validKeyInArray!0 (select (arr!34435 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1104138 () Bool)

(declare-fun contains!6429 (List!24172 (_ BitVec 64)) Bool)

(assert (=> b!1104138 (= e!630298 (contains!6429 Nil!24169 (select (arr!34435 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!46337 () Bool)

(assert (=> bm!46337 (= call!46340 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108941 (Cons!24168 (select (arr!34435 _keys!1208) #b00000000000000000000000000000000) Nil!24169) Nil!24169)))))

(declare-fun b!1104139 () Bool)

(assert (=> b!1104139 (= e!630297 call!46340)))

(assert (= (and d!130827 (not res!736721)) b!1104135))

(assert (= (and b!1104135 res!736720) b!1104138))

(assert (= (and b!1104135 res!736722) b!1104137))

(assert (= (and b!1104137 c!108941) b!1104139))

(assert (= (and b!1104137 (not c!108941)) b!1104136))

(assert (= (or b!1104139 b!1104136) bm!46337))

(assert (=> b!1104135 m!1024117))

(assert (=> b!1104135 m!1024117))

(assert (=> b!1104135 m!1024119))

(assert (=> b!1104137 m!1024117))

(assert (=> b!1104137 m!1024117))

(assert (=> b!1104137 m!1024119))

(assert (=> b!1104138 m!1024117))

(assert (=> b!1104138 m!1024117))

(declare-fun m!1024127 () Bool)

(assert (=> b!1104138 m!1024127))

(assert (=> bm!46337 m!1024117))

(declare-fun m!1024129 () Bool)

(assert (=> bm!46337 m!1024129))

(assert (=> b!1104067 d!130827))

(declare-fun d!130829 () Bool)

(declare-fun res!736727 () Bool)

(declare-fun e!630304 () Bool)

(assert (=> d!130829 (=> res!736727 e!630304)))

(assert (=> d!130829 (= res!736727 ((_ is Nil!24169) Nil!24169))))

(assert (=> d!130829 (= (noDuplicate!1602 Nil!24169) e!630304)))

(declare-fun b!1104144 () Bool)

(declare-fun e!630305 () Bool)

(assert (=> b!1104144 (= e!630304 e!630305)))

(declare-fun res!736728 () Bool)

(assert (=> b!1104144 (=> (not res!736728) (not e!630305))))

(assert (=> b!1104144 (= res!736728 (not (contains!6429 (t!34444 Nil!24169) (h!25377 Nil!24169))))))

(declare-fun b!1104145 () Bool)

(assert (=> b!1104145 (= e!630305 (noDuplicate!1602 (t!34444 Nil!24169)))))

(assert (= (and d!130829 (not res!736727)) b!1104144))

(assert (= (and b!1104144 res!736728) b!1104145))

(declare-fun m!1024131 () Bool)

(assert (=> b!1104144 m!1024131))

(declare-fun m!1024133 () Bool)

(assert (=> b!1104145 m!1024133))

(assert (=> b!1104061 d!130829))

(declare-fun d!130831 () Bool)

(assert (=> d!130831 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1104065 d!130831))

(declare-fun d!130833 () Bool)

(assert (=> d!130833 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1104069 d!130833))

(declare-fun condMapEmpty!42832 () Bool)

(declare-fun mapDefault!42832 () ValueCell!12963)

(assert (=> mapNonEmpty!42826 (= condMapEmpty!42832 (= mapRest!42826 ((as const (Array (_ BitVec 32) ValueCell!12963)) mapDefault!42832)))))

(declare-fun e!630311 () Bool)

(declare-fun mapRes!42832 () Bool)

(assert (=> mapNonEmpty!42826 (= tp!81747 (and e!630311 mapRes!42832))))

(declare-fun b!1104152 () Bool)

(declare-fun e!630310 () Bool)

(assert (=> b!1104152 (= e!630310 tp_is_empty!27345)))

(declare-fun mapIsEmpty!42832 () Bool)

(assert (=> mapIsEmpty!42832 mapRes!42832))

(declare-fun b!1104153 () Bool)

(assert (=> b!1104153 (= e!630311 tp_is_empty!27345)))

(declare-fun mapNonEmpty!42832 () Bool)

(declare-fun tp!81753 () Bool)

(assert (=> mapNonEmpty!42832 (= mapRes!42832 (and tp!81753 e!630310))))

(declare-fun mapValue!42832 () ValueCell!12963)

(declare-fun mapKey!42832 () (_ BitVec 32))

(declare-fun mapRest!42832 () (Array (_ BitVec 32) ValueCell!12963))

(assert (=> mapNonEmpty!42832 (= mapRest!42826 (store mapRest!42832 mapKey!42832 mapValue!42832))))

(assert (= (and mapNonEmpty!42826 condMapEmpty!42832) mapIsEmpty!42832))

(assert (= (and mapNonEmpty!42826 (not condMapEmpty!42832)) mapNonEmpty!42832))

(assert (= (and mapNonEmpty!42832 ((_ is ValueCellFull!12963) mapValue!42832)) b!1104152))

(assert (= (and mapNonEmpty!42826 ((_ is ValueCellFull!12963) mapDefault!42832)) b!1104153))

(declare-fun m!1024135 () Bool)

(assert (=> mapNonEmpty!42832 m!1024135))

(check-sat (not b!1104135) tp_is_empty!27345 (not b!1104144) (not b!1104138) (not mapNonEmpty!42832) (not bm!46333) (not b!1104118) (not b!1104122) (not b!1104145) (not b!1104119) (not bm!46337) (not b!1104123) (not b!1104137) (not bm!46334))
(check-sat)
