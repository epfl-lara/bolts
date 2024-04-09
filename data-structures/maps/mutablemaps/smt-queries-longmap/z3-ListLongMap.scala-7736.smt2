; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97182 () Bool)

(assert start!97182)

(declare-fun b!1105073 () Bool)

(declare-fun e!630768 () Bool)

(declare-fun tp_is_empty!27393 () Bool)

(assert (=> b!1105073 (= e!630768 tp_is_empty!27393)))

(declare-fun b!1105074 () Bool)

(declare-fun e!630769 () Bool)

(declare-fun e!630765 () Bool)

(assert (=> b!1105074 (= e!630769 e!630765)))

(declare-fun res!737425 () Bool)

(assert (=> b!1105074 (=> (not res!737425) (not e!630765))))

(declare-datatypes ((array!71660 0))(
  ( (array!71661 (arr!34480 (Array (_ BitVec 32) (_ BitVec 64))) (size!35017 (_ BitVec 32))) )
))
(declare-fun lt!495227 () array!71660)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71660 (_ BitVec 32)) Bool)

(assert (=> b!1105074 (= res!737425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495227 mask!1564))))

(declare-fun _keys!1208 () array!71660)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1105074 (= lt!495227 (array!71661 (store (arr!34480 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35017 _keys!1208)))))

(declare-fun mapIsEmpty!42904 () Bool)

(declare-fun mapRes!42904 () Bool)

(assert (=> mapIsEmpty!42904 mapRes!42904))

(declare-fun b!1105075 () Bool)

(declare-fun res!737424 () Bool)

(assert (=> b!1105075 (=> (not res!737424) (not e!630769))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41651 0))(
  ( (V!41652 (val!13753 Int)) )
))
(declare-datatypes ((ValueCell!12987 0))(
  ( (ValueCellFull!12987 (v!16387 V!41651)) (EmptyCell!12987) )
))
(declare-datatypes ((array!71662 0))(
  ( (array!71663 (arr!34481 (Array (_ BitVec 32) ValueCell!12987)) (size!35018 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71662)

(assert (=> b!1105075 (= res!737424 (and (= (size!35018 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35017 _keys!1208) (size!35018 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1105076 () Bool)

(declare-fun res!737430 () Bool)

(assert (=> b!1105076 (=> (not res!737430) (not e!630769))))

(declare-datatypes ((List!24190 0))(
  ( (Nil!24187) (Cons!24186 (h!25395 (_ BitVec 64)) (t!34462 List!24190)) )
))
(declare-fun arrayNoDuplicates!0 (array!71660 (_ BitVec 32) List!24190) Bool)

(assert (=> b!1105076 (= res!737430 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24187))))

(declare-fun b!1105077 () Bool)

(declare-fun e!630766 () Bool)

(assert (=> b!1105077 (= e!630766 (and e!630768 mapRes!42904))))

(declare-fun condMapEmpty!42904 () Bool)

(declare-fun mapDefault!42904 () ValueCell!12987)

(assert (=> b!1105077 (= condMapEmpty!42904 (= (arr!34481 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12987)) mapDefault!42904)))))

(declare-fun b!1105078 () Bool)

(declare-fun res!737429 () Bool)

(assert (=> b!1105078 (=> (not res!737429) (not e!630769))))

(assert (=> b!1105078 (= res!737429 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35017 _keys!1208))))))

(declare-fun b!1105079 () Bool)

(declare-fun res!737426 () Bool)

(assert (=> b!1105079 (=> (not res!737426) (not e!630769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1105079 (= res!737426 (validMask!0 mask!1564))))

(declare-fun res!737422 () Bool)

(assert (=> start!97182 (=> (not res!737422) (not e!630769))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97182 (= res!737422 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35017 _keys!1208))))))

(assert (=> start!97182 e!630769))

(declare-fun array_inv!26402 (array!71660) Bool)

(assert (=> start!97182 (array_inv!26402 _keys!1208)))

(assert (=> start!97182 true))

(declare-fun array_inv!26403 (array!71662) Bool)

(assert (=> start!97182 (and (array_inv!26403 _values!996) e!630766)))

(declare-fun b!1105080 () Bool)

(declare-fun res!737427 () Bool)

(assert (=> b!1105080 (=> (not res!737427) (not e!630769))))

(assert (=> b!1105080 (= res!737427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1105081 () Bool)

(declare-fun res!737431 () Bool)

(assert (=> b!1105081 (=> (not res!737431) (not e!630769))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1105081 (= res!737431 (= (select (arr!34480 _keys!1208) i!673) k0!934))))

(declare-fun b!1105082 () Bool)

(declare-fun res!737423 () Bool)

(assert (=> b!1105082 (=> (not res!737423) (not e!630769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1105082 (= res!737423 (validKeyInArray!0 k0!934))))

(declare-fun b!1105083 () Bool)

(declare-fun e!630767 () Bool)

(assert (=> b!1105083 (= e!630767 tp_is_empty!27393)))

(declare-fun mapNonEmpty!42904 () Bool)

(declare-fun tp!81825 () Bool)

(assert (=> mapNonEmpty!42904 (= mapRes!42904 (and tp!81825 e!630767))))

(declare-fun mapValue!42904 () ValueCell!12987)

(declare-fun mapKey!42904 () (_ BitVec 32))

(declare-fun mapRest!42904 () (Array (_ BitVec 32) ValueCell!12987))

(assert (=> mapNonEmpty!42904 (= (arr!34481 _values!996) (store mapRest!42904 mapKey!42904 mapValue!42904))))

(declare-fun b!1105084 () Bool)

(declare-fun res!737428 () Bool)

(assert (=> b!1105084 (=> (not res!737428) (not e!630765))))

(assert (=> b!1105084 (= res!737428 (arrayNoDuplicates!0 lt!495227 #b00000000000000000000000000000000 Nil!24187))))

(declare-fun b!1105085 () Bool)

(assert (=> b!1105085 (= e!630765 (not (or (bvsge #b00000000000000000000000000000000 (size!35017 _keys!1208)) (bvslt (size!35017 _keys!1208) #b01111111111111111111111111111111))))))

(declare-fun arrayContainsKey!0 (array!71660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1105085 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36199 0))(
  ( (Unit!36200) )
))
(declare-fun lt!495228 () Unit!36199)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71660 (_ BitVec 64) (_ BitVec 32)) Unit!36199)

(assert (=> b!1105085 (= lt!495228 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!97182 res!737422) b!1105079))

(assert (= (and b!1105079 res!737426) b!1105075))

(assert (= (and b!1105075 res!737424) b!1105080))

(assert (= (and b!1105080 res!737427) b!1105076))

(assert (= (and b!1105076 res!737430) b!1105078))

(assert (= (and b!1105078 res!737429) b!1105082))

(assert (= (and b!1105082 res!737423) b!1105081))

(assert (= (and b!1105081 res!737431) b!1105074))

(assert (= (and b!1105074 res!737425) b!1105084))

(assert (= (and b!1105084 res!737428) b!1105085))

(assert (= (and b!1105077 condMapEmpty!42904) mapIsEmpty!42904))

(assert (= (and b!1105077 (not condMapEmpty!42904)) mapNonEmpty!42904))

(get-info :version)

(assert (= (and mapNonEmpty!42904 ((_ is ValueCellFull!12987) mapValue!42904)) b!1105083))

(assert (= (and b!1105077 ((_ is ValueCellFull!12987) mapDefault!42904)) b!1105073))

(assert (= start!97182 b!1105077))

(declare-fun m!1024705 () Bool)

(assert (=> b!1105074 m!1024705))

(declare-fun m!1024707 () Bool)

(assert (=> b!1105074 m!1024707))

(declare-fun m!1024709 () Bool)

(assert (=> b!1105085 m!1024709))

(declare-fun m!1024711 () Bool)

(assert (=> b!1105085 m!1024711))

(declare-fun m!1024713 () Bool)

(assert (=> b!1105084 m!1024713))

(declare-fun m!1024715 () Bool)

(assert (=> b!1105076 m!1024715))

(declare-fun m!1024717 () Bool)

(assert (=> mapNonEmpty!42904 m!1024717))

(declare-fun m!1024719 () Bool)

(assert (=> b!1105082 m!1024719))

(declare-fun m!1024721 () Bool)

(assert (=> start!97182 m!1024721))

(declare-fun m!1024723 () Bool)

(assert (=> start!97182 m!1024723))

(declare-fun m!1024725 () Bool)

(assert (=> b!1105081 m!1024725))

(declare-fun m!1024727 () Bool)

(assert (=> b!1105079 m!1024727))

(declare-fun m!1024729 () Bool)

(assert (=> b!1105080 m!1024729))

(check-sat (not b!1105080) (not b!1105079) (not b!1105084) (not b!1105076) tp_is_empty!27393 (not b!1105074) (not mapNonEmpty!42904) (not b!1105085) (not start!97182) (not b!1105082))
(check-sat)
(get-model)

(declare-fun b!1105133 () Bool)

(declare-fun e!630794 () Bool)

(declare-fun e!630795 () Bool)

(assert (=> b!1105133 (= e!630794 e!630795)))

(declare-fun c!108951 () Bool)

(assert (=> b!1105133 (= c!108951 (validKeyInArray!0 (select (arr!34480 lt!495227) #b00000000000000000000000000000000)))))

(declare-fun d!130871 () Bool)

(declare-fun res!737467 () Bool)

(assert (=> d!130871 (=> res!737467 e!630794)))

(assert (=> d!130871 (= res!737467 (bvsge #b00000000000000000000000000000000 (size!35017 lt!495227)))))

(assert (=> d!130871 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495227 mask!1564) e!630794)))

(declare-fun b!1105134 () Bool)

(declare-fun e!630796 () Bool)

(declare-fun call!46350 () Bool)

(assert (=> b!1105134 (= e!630796 call!46350)))

(declare-fun b!1105135 () Bool)

(assert (=> b!1105135 (= e!630795 call!46350)))

(declare-fun b!1105136 () Bool)

(assert (=> b!1105136 (= e!630795 e!630796)))

(declare-fun lt!495241 () (_ BitVec 64))

(assert (=> b!1105136 (= lt!495241 (select (arr!34480 lt!495227) #b00000000000000000000000000000000))))

(declare-fun lt!495242 () Unit!36199)

(assert (=> b!1105136 (= lt!495242 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!495227 lt!495241 #b00000000000000000000000000000000))))

(assert (=> b!1105136 (arrayContainsKey!0 lt!495227 lt!495241 #b00000000000000000000000000000000)))

(declare-fun lt!495243 () Unit!36199)

(assert (=> b!1105136 (= lt!495243 lt!495242)))

(declare-fun res!737466 () Bool)

(declare-datatypes ((SeekEntryResult!9921 0))(
  ( (MissingZero!9921 (index!42054 (_ BitVec 32))) (Found!9921 (index!42055 (_ BitVec 32))) (Intermediate!9921 (undefined!10733 Bool) (index!42056 (_ BitVec 32)) (x!99373 (_ BitVec 32))) (Undefined!9921) (MissingVacant!9921 (index!42057 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71660 (_ BitVec 32)) SeekEntryResult!9921)

(assert (=> b!1105136 (= res!737466 (= (seekEntryOrOpen!0 (select (arr!34480 lt!495227) #b00000000000000000000000000000000) lt!495227 mask!1564) (Found!9921 #b00000000000000000000000000000000)))))

(assert (=> b!1105136 (=> (not res!737466) (not e!630796))))

(declare-fun bm!46347 () Bool)

(assert (=> bm!46347 (= call!46350 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!495227 mask!1564))))

(assert (= (and d!130871 (not res!737467)) b!1105133))

(assert (= (and b!1105133 c!108951) b!1105136))

(assert (= (and b!1105133 (not c!108951)) b!1105135))

(assert (= (and b!1105136 res!737466) b!1105134))

(assert (= (or b!1105134 b!1105135) bm!46347))

(declare-fun m!1024757 () Bool)

(assert (=> b!1105133 m!1024757))

(assert (=> b!1105133 m!1024757))

(declare-fun m!1024759 () Bool)

(assert (=> b!1105133 m!1024759))

(assert (=> b!1105136 m!1024757))

(declare-fun m!1024761 () Bool)

(assert (=> b!1105136 m!1024761))

(declare-fun m!1024763 () Bool)

(assert (=> b!1105136 m!1024763))

(assert (=> b!1105136 m!1024757))

(declare-fun m!1024765 () Bool)

(assert (=> b!1105136 m!1024765))

(declare-fun m!1024767 () Bool)

(assert (=> bm!46347 m!1024767))

(assert (=> b!1105074 d!130871))

(declare-fun d!130873 () Bool)

(assert (=> d!130873 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1105079 d!130873))

(declare-fun b!1105137 () Bool)

(declare-fun e!630797 () Bool)

(declare-fun e!630798 () Bool)

(assert (=> b!1105137 (= e!630797 e!630798)))

(declare-fun c!108952 () Bool)

(assert (=> b!1105137 (= c!108952 (validKeyInArray!0 (select (arr!34480 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!130875 () Bool)

(declare-fun res!737469 () Bool)

(assert (=> d!130875 (=> res!737469 e!630797)))

(assert (=> d!130875 (= res!737469 (bvsge #b00000000000000000000000000000000 (size!35017 _keys!1208)))))

(assert (=> d!130875 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!630797)))

(declare-fun b!1105138 () Bool)

(declare-fun e!630799 () Bool)

(declare-fun call!46351 () Bool)

(assert (=> b!1105138 (= e!630799 call!46351)))

(declare-fun b!1105139 () Bool)

(assert (=> b!1105139 (= e!630798 call!46351)))

(declare-fun b!1105140 () Bool)

(assert (=> b!1105140 (= e!630798 e!630799)))

(declare-fun lt!495244 () (_ BitVec 64))

(assert (=> b!1105140 (= lt!495244 (select (arr!34480 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!495245 () Unit!36199)

(assert (=> b!1105140 (= lt!495245 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!495244 #b00000000000000000000000000000000))))

(assert (=> b!1105140 (arrayContainsKey!0 _keys!1208 lt!495244 #b00000000000000000000000000000000)))

(declare-fun lt!495246 () Unit!36199)

(assert (=> b!1105140 (= lt!495246 lt!495245)))

(declare-fun res!737468 () Bool)

(assert (=> b!1105140 (= res!737468 (= (seekEntryOrOpen!0 (select (arr!34480 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9921 #b00000000000000000000000000000000)))))

(assert (=> b!1105140 (=> (not res!737468) (not e!630799))))

(declare-fun bm!46348 () Bool)

(assert (=> bm!46348 (= call!46351 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(assert (= (and d!130875 (not res!737469)) b!1105137))

(assert (= (and b!1105137 c!108952) b!1105140))

(assert (= (and b!1105137 (not c!108952)) b!1105139))

(assert (= (and b!1105140 res!737468) b!1105138))

(assert (= (or b!1105138 b!1105139) bm!46348))

(declare-fun m!1024769 () Bool)

(assert (=> b!1105137 m!1024769))

(assert (=> b!1105137 m!1024769))

(declare-fun m!1024771 () Bool)

(assert (=> b!1105137 m!1024771))

(assert (=> b!1105140 m!1024769))

(declare-fun m!1024773 () Bool)

(assert (=> b!1105140 m!1024773))

(declare-fun m!1024775 () Bool)

(assert (=> b!1105140 m!1024775))

(assert (=> b!1105140 m!1024769))

(declare-fun m!1024777 () Bool)

(assert (=> b!1105140 m!1024777))

(declare-fun m!1024779 () Bool)

(assert (=> bm!46348 m!1024779))

(assert (=> b!1105080 d!130875))

(declare-fun b!1105151 () Bool)

(declare-fun e!630811 () Bool)

(declare-fun contains!6433 (List!24190 (_ BitVec 64)) Bool)

(assert (=> b!1105151 (= e!630811 (contains!6433 Nil!24187 (select (arr!34480 lt!495227) #b00000000000000000000000000000000)))))

(declare-fun b!1105152 () Bool)

(declare-fun e!630809 () Bool)

(declare-fun e!630808 () Bool)

(assert (=> b!1105152 (= e!630809 e!630808)))

(declare-fun c!108955 () Bool)

(assert (=> b!1105152 (= c!108955 (validKeyInArray!0 (select (arr!34480 lt!495227) #b00000000000000000000000000000000)))))

(declare-fun d!130877 () Bool)

(declare-fun res!737478 () Bool)

(declare-fun e!630810 () Bool)

(assert (=> d!130877 (=> res!737478 e!630810)))

(assert (=> d!130877 (= res!737478 (bvsge #b00000000000000000000000000000000 (size!35017 lt!495227)))))

(assert (=> d!130877 (= (arrayNoDuplicates!0 lt!495227 #b00000000000000000000000000000000 Nil!24187) e!630810)))

(declare-fun b!1105153 () Bool)

(assert (=> b!1105153 (= e!630810 e!630809)))

(declare-fun res!737477 () Bool)

(assert (=> b!1105153 (=> (not res!737477) (not e!630809))))

(assert (=> b!1105153 (= res!737477 (not e!630811))))

(declare-fun res!737476 () Bool)

(assert (=> b!1105153 (=> (not res!737476) (not e!630811))))

(assert (=> b!1105153 (= res!737476 (validKeyInArray!0 (select (arr!34480 lt!495227) #b00000000000000000000000000000000)))))

(declare-fun bm!46351 () Bool)

(declare-fun call!46354 () Bool)

(assert (=> bm!46351 (= call!46354 (arrayNoDuplicates!0 lt!495227 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108955 (Cons!24186 (select (arr!34480 lt!495227) #b00000000000000000000000000000000) Nil!24187) Nil!24187)))))

(declare-fun b!1105154 () Bool)

(assert (=> b!1105154 (= e!630808 call!46354)))

(declare-fun b!1105155 () Bool)

(assert (=> b!1105155 (= e!630808 call!46354)))

(assert (= (and d!130877 (not res!737478)) b!1105153))

(assert (= (and b!1105153 res!737476) b!1105151))

(assert (= (and b!1105153 res!737477) b!1105152))

(assert (= (and b!1105152 c!108955) b!1105155))

(assert (= (and b!1105152 (not c!108955)) b!1105154))

(assert (= (or b!1105155 b!1105154) bm!46351))

(assert (=> b!1105151 m!1024757))

(assert (=> b!1105151 m!1024757))

(declare-fun m!1024781 () Bool)

(assert (=> b!1105151 m!1024781))

(assert (=> b!1105152 m!1024757))

(assert (=> b!1105152 m!1024757))

(assert (=> b!1105152 m!1024759))

(assert (=> b!1105153 m!1024757))

(assert (=> b!1105153 m!1024757))

(assert (=> b!1105153 m!1024759))

(assert (=> bm!46351 m!1024757))

(declare-fun m!1024783 () Bool)

(assert (=> bm!46351 m!1024783))

(assert (=> b!1105084 d!130877))

(declare-fun d!130879 () Bool)

(declare-fun res!737483 () Bool)

(declare-fun e!630816 () Bool)

(assert (=> d!130879 (=> res!737483 e!630816)))

(assert (=> d!130879 (= res!737483 (= (select (arr!34480 _keys!1208) #b00000000000000000000000000000000) k0!934))))

(assert (=> d!130879 (= (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000) e!630816)))

(declare-fun b!1105160 () Bool)

(declare-fun e!630817 () Bool)

(assert (=> b!1105160 (= e!630816 e!630817)))

(declare-fun res!737484 () Bool)

(assert (=> b!1105160 (=> (not res!737484) (not e!630817))))

(assert (=> b!1105160 (= res!737484 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!35017 _keys!1208)))))

(declare-fun b!1105161 () Bool)

(assert (=> b!1105161 (= e!630817 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130879 (not res!737483)) b!1105160))

(assert (= (and b!1105160 res!737484) b!1105161))

(assert (=> d!130879 m!1024769))

(declare-fun m!1024785 () Bool)

(assert (=> b!1105161 m!1024785))

(assert (=> b!1105085 d!130879))

(declare-fun d!130881 () Bool)

(assert (=> d!130881 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!495249 () Unit!36199)

(declare-fun choose!13 (array!71660 (_ BitVec 64) (_ BitVec 32)) Unit!36199)

(assert (=> d!130881 (= lt!495249 (choose!13 _keys!1208 k0!934 i!673))))

(assert (=> d!130881 (bvsge i!673 #b00000000000000000000000000000000)))

(assert (=> d!130881 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673) lt!495249)))

(declare-fun bs!32415 () Bool)

(assert (= bs!32415 d!130881))

(assert (=> bs!32415 m!1024709))

(declare-fun m!1024787 () Bool)

(assert (=> bs!32415 m!1024787))

(assert (=> b!1105085 d!130881))

(declare-fun d!130883 () Bool)

(assert (=> d!130883 (= (array_inv!26402 _keys!1208) (bvsge (size!35017 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!97182 d!130883))

(declare-fun d!130885 () Bool)

(assert (=> d!130885 (= (array_inv!26403 _values!996) (bvsge (size!35018 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!97182 d!130885))

(declare-fun b!1105162 () Bool)

(declare-fun e!630821 () Bool)

(assert (=> b!1105162 (= e!630821 (contains!6433 Nil!24187 (select (arr!34480 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1105163 () Bool)

(declare-fun e!630819 () Bool)

(declare-fun e!630818 () Bool)

(assert (=> b!1105163 (= e!630819 e!630818)))

(declare-fun c!108956 () Bool)

(assert (=> b!1105163 (= c!108956 (validKeyInArray!0 (select (arr!34480 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun d!130887 () Bool)

(declare-fun res!737487 () Bool)

(declare-fun e!630820 () Bool)

(assert (=> d!130887 (=> res!737487 e!630820)))

(assert (=> d!130887 (= res!737487 (bvsge #b00000000000000000000000000000000 (size!35017 _keys!1208)))))

(assert (=> d!130887 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24187) e!630820)))

(declare-fun b!1105164 () Bool)

(assert (=> b!1105164 (= e!630820 e!630819)))

(declare-fun res!737486 () Bool)

(assert (=> b!1105164 (=> (not res!737486) (not e!630819))))

(assert (=> b!1105164 (= res!737486 (not e!630821))))

(declare-fun res!737485 () Bool)

(assert (=> b!1105164 (=> (not res!737485) (not e!630821))))

(assert (=> b!1105164 (= res!737485 (validKeyInArray!0 (select (arr!34480 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!46352 () Bool)

(declare-fun call!46355 () Bool)

(assert (=> bm!46352 (= call!46355 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108956 (Cons!24186 (select (arr!34480 _keys!1208) #b00000000000000000000000000000000) Nil!24187) Nil!24187)))))

(declare-fun b!1105165 () Bool)

(assert (=> b!1105165 (= e!630818 call!46355)))

(declare-fun b!1105166 () Bool)

(assert (=> b!1105166 (= e!630818 call!46355)))

(assert (= (and d!130887 (not res!737487)) b!1105164))

(assert (= (and b!1105164 res!737485) b!1105162))

(assert (= (and b!1105164 res!737486) b!1105163))

(assert (= (and b!1105163 c!108956) b!1105166))

(assert (= (and b!1105163 (not c!108956)) b!1105165))

(assert (= (or b!1105166 b!1105165) bm!46352))

(assert (=> b!1105162 m!1024769))

(assert (=> b!1105162 m!1024769))

(declare-fun m!1024789 () Bool)

(assert (=> b!1105162 m!1024789))

(assert (=> b!1105163 m!1024769))

(assert (=> b!1105163 m!1024769))

(assert (=> b!1105163 m!1024771))

(assert (=> b!1105164 m!1024769))

(assert (=> b!1105164 m!1024769))

(assert (=> b!1105164 m!1024771))

(assert (=> bm!46352 m!1024769))

(declare-fun m!1024791 () Bool)

(assert (=> bm!46352 m!1024791))

(assert (=> b!1105076 d!130887))

(declare-fun d!130889 () Bool)

(assert (=> d!130889 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1105082 d!130889))

(declare-fun condMapEmpty!42910 () Bool)

(declare-fun mapDefault!42910 () ValueCell!12987)

(assert (=> mapNonEmpty!42904 (= condMapEmpty!42910 (= mapRest!42904 ((as const (Array (_ BitVec 32) ValueCell!12987)) mapDefault!42910)))))

(declare-fun e!630826 () Bool)

(declare-fun mapRes!42910 () Bool)

(assert (=> mapNonEmpty!42904 (= tp!81825 (and e!630826 mapRes!42910))))

(declare-fun mapIsEmpty!42910 () Bool)

(assert (=> mapIsEmpty!42910 mapRes!42910))

(declare-fun b!1105174 () Bool)

(assert (=> b!1105174 (= e!630826 tp_is_empty!27393)))

(declare-fun b!1105173 () Bool)

(declare-fun e!630827 () Bool)

(assert (=> b!1105173 (= e!630827 tp_is_empty!27393)))

(declare-fun mapNonEmpty!42910 () Bool)

(declare-fun tp!81831 () Bool)

(assert (=> mapNonEmpty!42910 (= mapRes!42910 (and tp!81831 e!630827))))

(declare-fun mapRest!42910 () (Array (_ BitVec 32) ValueCell!12987))

(declare-fun mapKey!42910 () (_ BitVec 32))

(declare-fun mapValue!42910 () ValueCell!12987)

(assert (=> mapNonEmpty!42910 (= mapRest!42904 (store mapRest!42910 mapKey!42910 mapValue!42910))))

(assert (= (and mapNonEmpty!42904 condMapEmpty!42910) mapIsEmpty!42910))

(assert (= (and mapNonEmpty!42904 (not condMapEmpty!42910)) mapNonEmpty!42910))

(assert (= (and mapNonEmpty!42910 ((_ is ValueCellFull!12987) mapValue!42910)) b!1105173))

(assert (= (and mapNonEmpty!42904 ((_ is ValueCellFull!12987) mapDefault!42910)) b!1105174))

(declare-fun m!1024793 () Bool)

(assert (=> mapNonEmpty!42910 m!1024793))

(check-sat (not mapNonEmpty!42910) (not bm!46352) (not bm!46347) (not b!1105133) (not b!1105153) (not b!1105162) (not b!1105137) (not bm!46348) (not b!1105136) (not b!1105161) tp_is_empty!27393 (not b!1105140) (not d!130881) (not b!1105164) (not b!1105151) (not b!1105163) (not bm!46351) (not b!1105152))
(check-sat)
