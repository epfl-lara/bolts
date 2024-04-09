; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97086 () Bool)

(assert start!97086)

(declare-fun mapIsEmpty!42814 () Bool)

(declare-fun mapRes!42814 () Bool)

(assert (=> mapIsEmpty!42814 mapRes!42814))

(declare-fun b!1103905 () Bool)

(declare-fun res!736570 () Bool)

(declare-fun e!630181 () Bool)

(assert (=> b!1103905 (=> (not res!736570) (not e!630181))))

(declare-datatypes ((array!71552 0))(
  ( (array!71553 (arr!34429 (Array (_ BitVec 32) (_ BitVec 64))) (size!34966 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71552)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71552 (_ BitVec 32)) Bool)

(assert (=> b!1103905 (= res!736570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208)) mask!1564))))

(declare-fun mapNonEmpty!42814 () Bool)

(declare-fun tp!81735 () Bool)

(declare-fun e!630184 () Bool)

(assert (=> mapNonEmpty!42814 (= mapRes!42814 (and tp!81735 e!630184))))

(declare-fun mapKey!42814 () (_ BitVec 32))

(declare-datatypes ((V!41579 0))(
  ( (V!41580 (val!13726 Int)) )
))
(declare-datatypes ((ValueCell!12960 0))(
  ( (ValueCellFull!12960 (v!16359 V!41579)) (EmptyCell!12960) )
))
(declare-fun mapValue!42814 () ValueCell!12960)

(declare-datatypes ((array!71554 0))(
  ( (array!71555 (arr!34430 (Array (_ BitVec 32) ValueCell!12960)) (size!34967 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71554)

(declare-fun mapRest!42814 () (Array (_ BitVec 32) ValueCell!12960))

(assert (=> mapNonEmpty!42814 (= (arr!34430 _values!996) (store mapRest!42814 mapKey!42814 mapValue!42814))))

(declare-fun b!1103906 () Bool)

(declare-fun tp_is_empty!27339 () Bool)

(assert (=> b!1103906 (= e!630184 tp_is_empty!27339)))

(declare-fun b!1103907 () Bool)

(declare-fun res!736571 () Bool)

(assert (=> b!1103907 (=> (not res!736571) (not e!630181))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103907 (= res!736571 (and (= (size!34967 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34966 _keys!1208) (size!34967 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103908 () Bool)

(declare-fun res!736563 () Bool)

(assert (=> b!1103908 (=> (not res!736563) (not e!630181))))

(assert (=> b!1103908 (= res!736563 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34966 _keys!1208))))))

(declare-fun b!1103909 () Bool)

(declare-fun res!736567 () Bool)

(assert (=> b!1103909 (=> (not res!736567) (not e!630181))))

(assert (=> b!1103909 (= res!736567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103910 () Bool)

(assert (=> b!1103910 (= e!630181 (and (bvsle #b00000000000000000000000000000000 (size!34966 _keys!1208)) (bvsge (size!34966 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1103911 () Bool)

(declare-fun e!630182 () Bool)

(assert (=> b!1103911 (= e!630182 tp_is_empty!27339)))

(declare-fun b!1103912 () Bool)

(declare-fun res!736566 () Bool)

(assert (=> b!1103912 (=> (not res!736566) (not e!630181))))

(declare-datatypes ((List!24171 0))(
  ( (Nil!24168) (Cons!24167 (h!25376 (_ BitVec 64)) (t!34443 List!24171)) )
))
(declare-fun arrayNoDuplicates!0 (array!71552 (_ BitVec 32) List!24171) Bool)

(assert (=> b!1103912 (= res!736566 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24168))))

(declare-fun b!1103914 () Bool)

(declare-fun res!736565 () Bool)

(assert (=> b!1103914 (=> (not res!736565) (not e!630181))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1103914 (= res!736565 (= (select (arr!34429 _keys!1208) i!673) k0!934))))

(declare-fun b!1103915 () Bool)

(declare-fun e!630185 () Bool)

(assert (=> b!1103915 (= e!630185 (and e!630182 mapRes!42814))))

(declare-fun condMapEmpty!42814 () Bool)

(declare-fun mapDefault!42814 () ValueCell!12960)

(assert (=> b!1103915 (= condMapEmpty!42814 (= (arr!34430 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12960)) mapDefault!42814)))))

(declare-fun b!1103916 () Bool)

(declare-fun res!736569 () Bool)

(assert (=> b!1103916 (=> (not res!736569) (not e!630181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103916 (= res!736569 (validMask!0 mask!1564))))

(declare-fun b!1103913 () Bool)

(declare-fun res!736564 () Bool)

(assert (=> b!1103913 (=> (not res!736564) (not e!630181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103913 (= res!736564 (validKeyInArray!0 k0!934))))

(declare-fun res!736568 () Bool)

(assert (=> start!97086 (=> (not res!736568) (not e!630181))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97086 (= res!736568 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34966 _keys!1208))))))

(assert (=> start!97086 e!630181))

(declare-fun array_inv!26366 (array!71552) Bool)

(assert (=> start!97086 (array_inv!26366 _keys!1208)))

(assert (=> start!97086 true))

(declare-fun array_inv!26367 (array!71554) Bool)

(assert (=> start!97086 (and (array_inv!26367 _values!996) e!630185)))

(assert (= (and start!97086 res!736568) b!1103916))

(assert (= (and b!1103916 res!736569) b!1103907))

(assert (= (and b!1103907 res!736571) b!1103909))

(assert (= (and b!1103909 res!736567) b!1103912))

(assert (= (and b!1103912 res!736566) b!1103908))

(assert (= (and b!1103908 res!736563) b!1103913))

(assert (= (and b!1103913 res!736564) b!1103914))

(assert (= (and b!1103914 res!736565) b!1103905))

(assert (= (and b!1103905 res!736570) b!1103910))

(assert (= (and b!1103915 condMapEmpty!42814) mapIsEmpty!42814))

(assert (= (and b!1103915 (not condMapEmpty!42814)) mapNonEmpty!42814))

(get-info :version)

(assert (= (and mapNonEmpty!42814 ((_ is ValueCellFull!12960) mapValue!42814)) b!1103906))

(assert (= (and b!1103915 ((_ is ValueCellFull!12960) mapDefault!42814)) b!1103911))

(assert (= start!97086 b!1103915))

(declare-fun m!1023967 () Bool)

(assert (=> b!1103913 m!1023967))

(declare-fun m!1023969 () Bool)

(assert (=> b!1103905 m!1023969))

(declare-fun m!1023971 () Bool)

(assert (=> b!1103905 m!1023971))

(declare-fun m!1023973 () Bool)

(assert (=> mapNonEmpty!42814 m!1023973))

(declare-fun m!1023975 () Bool)

(assert (=> b!1103914 m!1023975))

(declare-fun m!1023977 () Bool)

(assert (=> b!1103909 m!1023977))

(declare-fun m!1023979 () Bool)

(assert (=> start!97086 m!1023979))

(declare-fun m!1023981 () Bool)

(assert (=> start!97086 m!1023981))

(declare-fun m!1023983 () Bool)

(assert (=> b!1103916 m!1023983))

(declare-fun m!1023985 () Bool)

(assert (=> b!1103912 m!1023985))

(check-sat (not b!1103913) tp_is_empty!27339 (not b!1103916) (not mapNonEmpty!42814) (not b!1103909) (not b!1103912) (not start!97086) (not b!1103905))
(check-sat)
(get-model)

(declare-fun d!130803 () Bool)

(declare-fun res!736605 () Bool)

(declare-fun e!630209 () Bool)

(assert (=> d!130803 (=> res!736605 e!630209)))

(assert (=> d!130803 (= res!736605 (bvsge #b00000000000000000000000000000000 (size!34966 _keys!1208)))))

(assert (=> d!130803 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24168) e!630209)))

(declare-fun b!1103963 () Bool)

(declare-fun e!630210 () Bool)

(declare-fun call!46329 () Bool)

(assert (=> b!1103963 (= e!630210 call!46329)))

(declare-fun bm!46326 () Bool)

(declare-fun c!108930 () Bool)

(assert (=> bm!46326 (= call!46329 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108930 (Cons!24167 (select (arr!34429 _keys!1208) #b00000000000000000000000000000000) Nil!24168) Nil!24168)))))

(declare-fun b!1103964 () Bool)

(declare-fun e!630212 () Bool)

(assert (=> b!1103964 (= e!630212 e!630210)))

(assert (=> b!1103964 (= c!108930 (validKeyInArray!0 (select (arr!34429 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1103965 () Bool)

(declare-fun e!630211 () Bool)

(declare-fun contains!6428 (List!24171 (_ BitVec 64)) Bool)

(assert (=> b!1103965 (= e!630211 (contains!6428 Nil!24168 (select (arr!34429 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1103966 () Bool)

(assert (=> b!1103966 (= e!630209 e!630212)))

(declare-fun res!736606 () Bool)

(assert (=> b!1103966 (=> (not res!736606) (not e!630212))))

(assert (=> b!1103966 (= res!736606 (not e!630211))))

(declare-fun res!736607 () Bool)

(assert (=> b!1103966 (=> (not res!736607) (not e!630211))))

(assert (=> b!1103966 (= res!736607 (validKeyInArray!0 (select (arr!34429 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1103967 () Bool)

(assert (=> b!1103967 (= e!630210 call!46329)))

(assert (= (and d!130803 (not res!736605)) b!1103966))

(assert (= (and b!1103966 res!736607) b!1103965))

(assert (= (and b!1103966 res!736606) b!1103964))

(assert (= (and b!1103964 c!108930) b!1103963))

(assert (= (and b!1103964 (not c!108930)) b!1103967))

(assert (= (or b!1103963 b!1103967) bm!46326))

(declare-fun m!1024007 () Bool)

(assert (=> bm!46326 m!1024007))

(declare-fun m!1024009 () Bool)

(assert (=> bm!46326 m!1024009))

(assert (=> b!1103964 m!1024007))

(assert (=> b!1103964 m!1024007))

(declare-fun m!1024011 () Bool)

(assert (=> b!1103964 m!1024011))

(assert (=> b!1103965 m!1024007))

(assert (=> b!1103965 m!1024007))

(declare-fun m!1024013 () Bool)

(assert (=> b!1103965 m!1024013))

(assert (=> b!1103966 m!1024007))

(assert (=> b!1103966 m!1024007))

(assert (=> b!1103966 m!1024011))

(assert (=> b!1103912 d!130803))

(declare-fun d!130805 () Bool)

(assert (=> d!130805 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1103916 d!130805))

(declare-fun d!130807 () Bool)

(assert (=> d!130807 (= (array_inv!26366 _keys!1208) (bvsge (size!34966 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!97086 d!130807))

(declare-fun d!130809 () Bool)

(assert (=> d!130809 (= (array_inv!26367 _values!996) (bvsge (size!34967 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!97086 d!130809))

(declare-fun b!1103976 () Bool)

(declare-fun e!630220 () Bool)

(declare-fun call!46332 () Bool)

(assert (=> b!1103976 (= e!630220 call!46332)))

(declare-fun d!130811 () Bool)

(declare-fun res!736613 () Bool)

(declare-fun e!630221 () Bool)

(assert (=> d!130811 (=> res!736613 e!630221)))

(assert (=> d!130811 (= res!736613 (bvsge #b00000000000000000000000000000000 (size!34966 (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208)))))))

(assert (=> d!130811 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208)) mask!1564) e!630221)))

(declare-fun b!1103977 () Bool)

(assert (=> b!1103977 (= e!630221 e!630220)))

(declare-fun c!108933 () Bool)

(assert (=> b!1103977 (= c!108933 (validKeyInArray!0 (select (arr!34429 (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208))) #b00000000000000000000000000000000)))))

(declare-fun bm!46329 () Bool)

(assert (=> bm!46329 (= call!46332 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208)) mask!1564))))

(declare-fun b!1103978 () Bool)

(declare-fun e!630219 () Bool)

(assert (=> b!1103978 (= e!630219 call!46332)))

(declare-fun b!1103979 () Bool)

(assert (=> b!1103979 (= e!630220 e!630219)))

(declare-fun lt!495076 () (_ BitVec 64))

(assert (=> b!1103979 (= lt!495076 (select (arr!34429 (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!36179 0))(
  ( (Unit!36180) )
))
(declare-fun lt!495075 () Unit!36179)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71552 (_ BitVec 64) (_ BitVec 32)) Unit!36179)

(assert (=> b!1103979 (= lt!495075 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208)) lt!495076 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!71552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1103979 (arrayContainsKey!0 (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208)) lt!495076 #b00000000000000000000000000000000)))

(declare-fun lt!495077 () Unit!36179)

(assert (=> b!1103979 (= lt!495077 lt!495075)))

(declare-fun res!736612 () Bool)

(declare-datatypes ((SeekEntryResult!9918 0))(
  ( (MissingZero!9918 (index!42042 (_ BitVec 32))) (Found!9918 (index!42043 (_ BitVec 32))) (Intermediate!9918 (undefined!10730 Bool) (index!42044 (_ BitVec 32)) (x!99292 (_ BitVec 32))) (Undefined!9918) (MissingVacant!9918 (index!42045 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71552 (_ BitVec 32)) SeekEntryResult!9918)

(assert (=> b!1103979 (= res!736612 (= (seekEntryOrOpen!0 (select (arr!34429 (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208))) #b00000000000000000000000000000000) (array!71553 (store (arr!34429 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34966 _keys!1208)) mask!1564) (Found!9918 #b00000000000000000000000000000000)))))

(assert (=> b!1103979 (=> (not res!736612) (not e!630219))))

(assert (= (and d!130811 (not res!736613)) b!1103977))

(assert (= (and b!1103977 c!108933) b!1103979))

(assert (= (and b!1103977 (not c!108933)) b!1103976))

(assert (= (and b!1103979 res!736612) b!1103978))

(assert (= (or b!1103978 b!1103976) bm!46329))

(declare-fun m!1024015 () Bool)

(assert (=> b!1103977 m!1024015))

(assert (=> b!1103977 m!1024015))

(declare-fun m!1024017 () Bool)

(assert (=> b!1103977 m!1024017))

(declare-fun m!1024019 () Bool)

(assert (=> bm!46329 m!1024019))

(assert (=> b!1103979 m!1024015))

(declare-fun m!1024021 () Bool)

(assert (=> b!1103979 m!1024021))

(declare-fun m!1024023 () Bool)

(assert (=> b!1103979 m!1024023))

(assert (=> b!1103979 m!1024015))

(declare-fun m!1024025 () Bool)

(assert (=> b!1103979 m!1024025))

(assert (=> b!1103905 d!130811))

(declare-fun b!1103980 () Bool)

(declare-fun e!630223 () Bool)

(declare-fun call!46333 () Bool)

(assert (=> b!1103980 (= e!630223 call!46333)))

(declare-fun d!130813 () Bool)

(declare-fun res!736615 () Bool)

(declare-fun e!630224 () Bool)

(assert (=> d!130813 (=> res!736615 e!630224)))

(assert (=> d!130813 (= res!736615 (bvsge #b00000000000000000000000000000000 (size!34966 _keys!1208)))))

(assert (=> d!130813 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!630224)))

(declare-fun b!1103981 () Bool)

(assert (=> b!1103981 (= e!630224 e!630223)))

(declare-fun c!108934 () Bool)

(assert (=> b!1103981 (= c!108934 (validKeyInArray!0 (select (arr!34429 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun bm!46330 () Bool)

(assert (=> bm!46330 (= call!46333 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1103982 () Bool)

(declare-fun e!630222 () Bool)

(assert (=> b!1103982 (= e!630222 call!46333)))

(declare-fun b!1103983 () Bool)

(assert (=> b!1103983 (= e!630223 e!630222)))

(declare-fun lt!495079 () (_ BitVec 64))

(assert (=> b!1103983 (= lt!495079 (select (arr!34429 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!495078 () Unit!36179)

(assert (=> b!1103983 (= lt!495078 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!495079 #b00000000000000000000000000000000))))

(assert (=> b!1103983 (arrayContainsKey!0 _keys!1208 lt!495079 #b00000000000000000000000000000000)))

(declare-fun lt!495080 () Unit!36179)

(assert (=> b!1103983 (= lt!495080 lt!495078)))

(declare-fun res!736614 () Bool)

(assert (=> b!1103983 (= res!736614 (= (seekEntryOrOpen!0 (select (arr!34429 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9918 #b00000000000000000000000000000000)))))

(assert (=> b!1103983 (=> (not res!736614) (not e!630222))))

(assert (= (and d!130813 (not res!736615)) b!1103981))

(assert (= (and b!1103981 c!108934) b!1103983))

(assert (= (and b!1103981 (not c!108934)) b!1103980))

(assert (= (and b!1103983 res!736614) b!1103982))

(assert (= (or b!1103982 b!1103980) bm!46330))

(assert (=> b!1103981 m!1024007))

(assert (=> b!1103981 m!1024007))

(assert (=> b!1103981 m!1024011))

(declare-fun m!1024027 () Bool)

(assert (=> bm!46330 m!1024027))

(assert (=> b!1103983 m!1024007))

(declare-fun m!1024029 () Bool)

(assert (=> b!1103983 m!1024029))

(declare-fun m!1024031 () Bool)

(assert (=> b!1103983 m!1024031))

(assert (=> b!1103983 m!1024007))

(declare-fun m!1024033 () Bool)

(assert (=> b!1103983 m!1024033))

(assert (=> b!1103909 d!130813))

(declare-fun d!130815 () Bool)

(assert (=> d!130815 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1103913 d!130815))

(declare-fun mapIsEmpty!42820 () Bool)

(declare-fun mapRes!42820 () Bool)

(assert (=> mapIsEmpty!42820 mapRes!42820))

(declare-fun b!1103990 () Bool)

(declare-fun e!630229 () Bool)

(assert (=> b!1103990 (= e!630229 tp_is_empty!27339)))

(declare-fun condMapEmpty!42820 () Bool)

(declare-fun mapDefault!42820 () ValueCell!12960)

(assert (=> mapNonEmpty!42814 (= condMapEmpty!42820 (= mapRest!42814 ((as const (Array (_ BitVec 32) ValueCell!12960)) mapDefault!42820)))))

(declare-fun e!630230 () Bool)

(assert (=> mapNonEmpty!42814 (= tp!81735 (and e!630230 mapRes!42820))))

(declare-fun b!1103991 () Bool)

(assert (=> b!1103991 (= e!630230 tp_is_empty!27339)))

(declare-fun mapNonEmpty!42820 () Bool)

(declare-fun tp!81741 () Bool)

(assert (=> mapNonEmpty!42820 (= mapRes!42820 (and tp!81741 e!630229))))

(declare-fun mapRest!42820 () (Array (_ BitVec 32) ValueCell!12960))

(declare-fun mapValue!42820 () ValueCell!12960)

(declare-fun mapKey!42820 () (_ BitVec 32))

(assert (=> mapNonEmpty!42820 (= mapRest!42814 (store mapRest!42820 mapKey!42820 mapValue!42820))))

(assert (= (and mapNonEmpty!42814 condMapEmpty!42820) mapIsEmpty!42820))

(assert (= (and mapNonEmpty!42814 (not condMapEmpty!42820)) mapNonEmpty!42820))

(assert (= (and mapNonEmpty!42820 ((_ is ValueCellFull!12960) mapValue!42820)) b!1103990))

(assert (= (and mapNonEmpty!42814 ((_ is ValueCellFull!12960) mapDefault!42820)) b!1103991))

(declare-fun m!1024035 () Bool)

(assert (=> mapNonEmpty!42820 m!1024035))

(check-sat (not b!1103977) (not bm!46329) tp_is_empty!27339 (not b!1103965) (not bm!46326) (not bm!46330) (not b!1103966) (not b!1103981) (not b!1103964) (not b!1103979) (not mapNonEmpty!42820) (not b!1103983))
(check-sat)
