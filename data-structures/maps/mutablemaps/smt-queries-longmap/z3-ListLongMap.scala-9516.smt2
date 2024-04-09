; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112984 () Bool)

(assert start!112984)

(declare-fun b!1338866 () Bool)

(declare-fun e!762504 () Bool)

(declare-fun e!762503 () Bool)

(declare-fun mapRes!57220 () Bool)

(assert (=> b!1338866 (= e!762504 (and e!762503 mapRes!57220))))

(declare-fun condMapEmpty!57220 () Bool)

(declare-datatypes ((V!54451 0))(
  ( (V!54452 (val!18580 Int)) )
))
(declare-datatypes ((ValueCell!17607 0))(
  ( (ValueCellFull!17607 (v!21225 V!54451)) (EmptyCell!17607) )
))
(declare-datatypes ((array!90853 0))(
  ( (array!90854 (arr!43879 (Array (_ BitVec 32) ValueCell!17607)) (size!44430 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90853)

(declare-fun mapDefault!57220 () ValueCell!17607)

(assert (=> b!1338866 (= condMapEmpty!57220 (= (arr!43879 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17607)) mapDefault!57220)))))

(declare-fun b!1338867 () Bool)

(declare-fun res!888331 () Bool)

(declare-fun e!762499 () Bool)

(assert (=> b!1338867 (=> (not res!888331) (not e!762499))))

(declare-datatypes ((array!90855 0))(
  ( (array!90856 (arr!43880 (Array (_ BitVec 32) (_ BitVec 64))) (size!44431 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90855)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90855 (_ BitVec 32)) Bool)

(assert (=> b!1338867 (= res!888331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1338868 () Bool)

(declare-fun e!762502 () Bool)

(declare-fun tp_is_empty!37011 () Bool)

(assert (=> b!1338868 (= e!762502 tp_is_empty!37011)))

(declare-fun b!1338869 () Bool)

(declare-fun res!888334 () Bool)

(assert (=> b!1338869 (=> (not res!888334) (not e!762499))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1338869 (= res!888334 (and (= (size!44430 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44431 _keys!1571) (size!44430 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1338870 () Bool)

(assert (=> b!1338870 (= e!762503 tp_is_empty!37011)))

(declare-fun b!1338871 () Bool)

(declare-fun e!762501 () Bool)

(declare-datatypes ((List!31265 0))(
  ( (Nil!31262) (Cons!31261 (h!32470 (_ BitVec 64)) (t!45604 List!31265)) )
))
(declare-fun contains!9010 (List!31265 (_ BitVec 64)) Bool)

(assert (=> b!1338871 (= e!762501 (contains!9010 Nil!31262 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338872 () Bool)

(assert (=> b!1338872 (= e!762499 e!762501)))

(declare-fun res!888335 () Bool)

(assert (=> b!1338872 (=> res!888335 e!762501)))

(assert (=> b!1338872 (= res!888335 (contains!9010 Nil!31262 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!57220 () Bool)

(declare-fun tp!108920 () Bool)

(assert (=> mapNonEmpty!57220 (= mapRes!57220 (and tp!108920 e!762502))))

(declare-fun mapValue!57220 () ValueCell!17607)

(declare-fun mapRest!57220 () (Array (_ BitVec 32) ValueCell!17607))

(declare-fun mapKey!57220 () (_ BitVec 32))

(assert (=> mapNonEmpty!57220 (= (arr!43879 _values!1303) (store mapRest!57220 mapKey!57220 mapValue!57220))))

(declare-fun mapIsEmpty!57220 () Bool)

(assert (=> mapIsEmpty!57220 mapRes!57220))

(declare-fun b!1338874 () Bool)

(declare-fun res!888333 () Bool)

(assert (=> b!1338874 (=> (not res!888333) (not e!762499))))

(declare-fun noDuplicate!2104 (List!31265) Bool)

(assert (=> b!1338874 (= res!888333 (noDuplicate!2104 Nil!31262))))

(declare-fun b!1338873 () Bool)

(declare-fun res!888332 () Bool)

(assert (=> b!1338873 (=> (not res!888332) (not e!762499))))

(assert (=> b!1338873 (= res!888332 (and (bvsle #b00000000000000000000000000000000 (size!44431 _keys!1571)) (bvslt (size!44431 _keys!1571) #b01111111111111111111111111111111)))))

(declare-fun res!888336 () Bool)

(assert (=> start!112984 (=> (not res!888336) (not e!762499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112984 (= res!888336 (validMask!0 mask!1977))))

(assert (=> start!112984 e!762499))

(assert (=> start!112984 true))

(declare-fun array_inv!33013 (array!90853) Bool)

(assert (=> start!112984 (and (array_inv!33013 _values!1303) e!762504)))

(declare-fun array_inv!33014 (array!90855) Bool)

(assert (=> start!112984 (array_inv!33014 _keys!1571)))

(assert (= (and start!112984 res!888336) b!1338869))

(assert (= (and b!1338869 res!888334) b!1338867))

(assert (= (and b!1338867 res!888331) b!1338873))

(assert (= (and b!1338873 res!888332) b!1338874))

(assert (= (and b!1338874 res!888333) b!1338872))

(assert (= (and b!1338872 (not res!888335)) b!1338871))

(assert (= (and b!1338866 condMapEmpty!57220) mapIsEmpty!57220))

(assert (= (and b!1338866 (not condMapEmpty!57220)) mapNonEmpty!57220))

(get-info :version)

(assert (= (and mapNonEmpty!57220 ((_ is ValueCellFull!17607) mapValue!57220)) b!1338868))

(assert (= (and b!1338866 ((_ is ValueCellFull!17607) mapDefault!57220)) b!1338870))

(assert (= start!112984 b!1338866))

(declare-fun m!1227121 () Bool)

(assert (=> b!1338874 m!1227121))

(declare-fun m!1227123 () Bool)

(assert (=> start!112984 m!1227123))

(declare-fun m!1227125 () Bool)

(assert (=> start!112984 m!1227125))

(declare-fun m!1227127 () Bool)

(assert (=> start!112984 m!1227127))

(declare-fun m!1227129 () Bool)

(assert (=> b!1338872 m!1227129))

(declare-fun m!1227131 () Bool)

(assert (=> b!1338871 m!1227131))

(declare-fun m!1227133 () Bool)

(assert (=> b!1338867 m!1227133))

(declare-fun m!1227135 () Bool)

(assert (=> mapNonEmpty!57220 m!1227135))

(check-sat (not b!1338872) (not b!1338874) (not start!112984) (not b!1338867) (not b!1338871) (not mapNonEmpty!57220) tp_is_empty!37011)
(check-sat)
(get-model)

(declare-fun d!144029 () Bool)

(assert (=> d!144029 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!112984 d!144029))

(declare-fun d!144031 () Bool)

(assert (=> d!144031 (= (array_inv!33013 _values!1303) (bvsge (size!44430 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!112984 d!144031))

(declare-fun d!144033 () Bool)

(assert (=> d!144033 (= (array_inv!33014 _keys!1571) (bvsge (size!44431 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!112984 d!144033))

(declare-fun d!144035 () Bool)

(declare-fun res!888359 () Bool)

(declare-fun e!762527 () Bool)

(assert (=> d!144035 (=> res!888359 e!762527)))

(assert (=> d!144035 (= res!888359 ((_ is Nil!31262) Nil!31262))))

(assert (=> d!144035 (= (noDuplicate!2104 Nil!31262) e!762527)))

(declare-fun b!1338906 () Bool)

(declare-fun e!762528 () Bool)

(assert (=> b!1338906 (= e!762527 e!762528)))

(declare-fun res!888360 () Bool)

(assert (=> b!1338906 (=> (not res!888360) (not e!762528))))

(assert (=> b!1338906 (= res!888360 (not (contains!9010 (t!45604 Nil!31262) (h!32470 Nil!31262))))))

(declare-fun b!1338907 () Bool)

(assert (=> b!1338907 (= e!762528 (noDuplicate!2104 (t!45604 Nil!31262)))))

(assert (= (and d!144035 (not res!888359)) b!1338906))

(assert (= (and b!1338906 res!888360) b!1338907))

(declare-fun m!1227153 () Bool)

(assert (=> b!1338906 m!1227153))

(declare-fun m!1227155 () Bool)

(assert (=> b!1338907 m!1227155))

(assert (=> b!1338874 d!144035))

(declare-fun d!144037 () Bool)

(declare-fun lt!593745 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!669 (List!31265) (InoxSet (_ BitVec 64)))

(assert (=> d!144037 (= lt!593745 (select (content!669 Nil!31262) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!762534 () Bool)

(assert (=> d!144037 (= lt!593745 e!762534)))

(declare-fun res!888365 () Bool)

(assert (=> d!144037 (=> (not res!888365) (not e!762534))))

(assert (=> d!144037 (= res!888365 ((_ is Cons!31261) Nil!31262))))

(assert (=> d!144037 (= (contains!9010 Nil!31262 #b1000000000000000000000000000000000000000000000000000000000000000) lt!593745)))

(declare-fun b!1338912 () Bool)

(declare-fun e!762533 () Bool)

(assert (=> b!1338912 (= e!762534 e!762533)))

(declare-fun res!888366 () Bool)

(assert (=> b!1338912 (=> res!888366 e!762533)))

(assert (=> b!1338912 (= res!888366 (= (h!32470 Nil!31262) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338913 () Bool)

(assert (=> b!1338913 (= e!762533 (contains!9010 (t!45604 Nil!31262) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144037 res!888365) b!1338912))

(assert (= (and b!1338912 (not res!888366)) b!1338913))

(declare-fun m!1227157 () Bool)

(assert (=> d!144037 m!1227157))

(declare-fun m!1227159 () Bool)

(assert (=> d!144037 m!1227159))

(declare-fun m!1227161 () Bool)

(assert (=> b!1338913 m!1227161))

(assert (=> b!1338871 d!144037))

(declare-fun d!144039 () Bool)

(declare-fun lt!593746 () Bool)

(assert (=> d!144039 (= lt!593746 (select (content!669 Nil!31262) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!762536 () Bool)

(assert (=> d!144039 (= lt!593746 e!762536)))

(declare-fun res!888367 () Bool)

(assert (=> d!144039 (=> (not res!888367) (not e!762536))))

(assert (=> d!144039 (= res!888367 ((_ is Cons!31261) Nil!31262))))

(assert (=> d!144039 (= (contains!9010 Nil!31262 #b0000000000000000000000000000000000000000000000000000000000000000) lt!593746)))

(declare-fun b!1338914 () Bool)

(declare-fun e!762535 () Bool)

(assert (=> b!1338914 (= e!762536 e!762535)))

(declare-fun res!888368 () Bool)

(assert (=> b!1338914 (=> res!888368 e!762535)))

(assert (=> b!1338914 (= res!888368 (= (h!32470 Nil!31262) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338915 () Bool)

(assert (=> b!1338915 (= e!762535 (contains!9010 (t!45604 Nil!31262) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!144039 res!888367) b!1338914))

(assert (= (and b!1338914 (not res!888368)) b!1338915))

(assert (=> d!144039 m!1227157))

(declare-fun m!1227163 () Bool)

(assert (=> d!144039 m!1227163))

(declare-fun m!1227165 () Bool)

(assert (=> b!1338915 m!1227165))

(assert (=> b!1338872 d!144039))

(declare-fun bm!65030 () Bool)

(declare-fun call!65033 () Bool)

(assert (=> bm!65030 (= call!65033 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(declare-fun b!1338925 () Bool)

(declare-fun e!762543 () Bool)

(declare-fun e!762545 () Bool)

(assert (=> b!1338925 (= e!762543 e!762545)))

(declare-fun lt!593753 () (_ BitVec 64))

(assert (=> b!1338925 (= lt!593753 (select (arr!43880 _keys!1571) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43919 0))(
  ( (Unit!43920) )
))
(declare-fun lt!593755 () Unit!43919)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!90855 (_ BitVec 64) (_ BitVec 32)) Unit!43919)

(assert (=> b!1338925 (= lt!593755 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!593753 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!90855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1338925 (arrayContainsKey!0 _keys!1571 lt!593753 #b00000000000000000000000000000000)))

(declare-fun lt!593754 () Unit!43919)

(assert (=> b!1338925 (= lt!593754 lt!593755)))

(declare-fun res!888374 () Bool)

(declare-datatypes ((SeekEntryResult!10052 0))(
  ( (MissingZero!10052 (index!42578 (_ BitVec 32))) (Found!10052 (index!42579 (_ BitVec 32))) (Intermediate!10052 (undefined!10864 Bool) (index!42580 (_ BitVec 32)) (x!119604 (_ BitVec 32))) (Undefined!10052) (MissingVacant!10052 (index!42581 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!90855 (_ BitVec 32)) SeekEntryResult!10052)

(assert (=> b!1338925 (= res!888374 (= (seekEntryOrOpen!0 (select (arr!43880 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) (Found!10052 #b00000000000000000000000000000000)))))

(assert (=> b!1338925 (=> (not res!888374) (not e!762545))))

(declare-fun b!1338926 () Bool)

(assert (=> b!1338926 (= e!762545 call!65033)))

(declare-fun b!1338927 () Bool)

(assert (=> b!1338927 (= e!762543 call!65033)))

(declare-fun d!144041 () Bool)

(declare-fun res!888373 () Bool)

(declare-fun e!762544 () Bool)

(assert (=> d!144041 (=> res!888373 e!762544)))

(assert (=> d!144041 (= res!888373 (bvsge #b00000000000000000000000000000000 (size!44431 _keys!1571)))))

(assert (=> d!144041 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977) e!762544)))

(declare-fun b!1338924 () Bool)

(assert (=> b!1338924 (= e!762544 e!762543)))

(declare-fun c!126240 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1338924 (= c!126240 (validKeyInArray!0 (select (arr!43880 _keys!1571) #b00000000000000000000000000000000)))))

(assert (= (and d!144041 (not res!888373)) b!1338924))

(assert (= (and b!1338924 c!126240) b!1338925))

(assert (= (and b!1338924 (not c!126240)) b!1338927))

(assert (= (and b!1338925 res!888374) b!1338926))

(assert (= (or b!1338926 b!1338927) bm!65030))

(declare-fun m!1227167 () Bool)

(assert (=> bm!65030 m!1227167))

(declare-fun m!1227169 () Bool)

(assert (=> b!1338925 m!1227169))

(declare-fun m!1227171 () Bool)

(assert (=> b!1338925 m!1227171))

(declare-fun m!1227173 () Bool)

(assert (=> b!1338925 m!1227173))

(assert (=> b!1338925 m!1227169))

(declare-fun m!1227175 () Bool)

(assert (=> b!1338925 m!1227175))

(assert (=> b!1338924 m!1227169))

(assert (=> b!1338924 m!1227169))

(declare-fun m!1227177 () Bool)

(assert (=> b!1338924 m!1227177))

(assert (=> b!1338867 d!144041))

(declare-fun mapNonEmpty!57226 () Bool)

(declare-fun mapRes!57226 () Bool)

(declare-fun tp!108926 () Bool)

(declare-fun e!762551 () Bool)

(assert (=> mapNonEmpty!57226 (= mapRes!57226 (and tp!108926 e!762551))))

(declare-fun mapValue!57226 () ValueCell!17607)

(declare-fun mapRest!57226 () (Array (_ BitVec 32) ValueCell!17607))

(declare-fun mapKey!57226 () (_ BitVec 32))

(assert (=> mapNonEmpty!57226 (= mapRest!57220 (store mapRest!57226 mapKey!57226 mapValue!57226))))

(declare-fun condMapEmpty!57226 () Bool)

(declare-fun mapDefault!57226 () ValueCell!17607)

(assert (=> mapNonEmpty!57220 (= condMapEmpty!57226 (= mapRest!57220 ((as const (Array (_ BitVec 32) ValueCell!17607)) mapDefault!57226)))))

(declare-fun e!762550 () Bool)

(assert (=> mapNonEmpty!57220 (= tp!108920 (and e!762550 mapRes!57226))))

(declare-fun mapIsEmpty!57226 () Bool)

(assert (=> mapIsEmpty!57226 mapRes!57226))

(declare-fun b!1338935 () Bool)

(assert (=> b!1338935 (= e!762550 tp_is_empty!37011)))

(declare-fun b!1338934 () Bool)

(assert (=> b!1338934 (= e!762551 tp_is_empty!37011)))

(assert (= (and mapNonEmpty!57220 condMapEmpty!57226) mapIsEmpty!57226))

(assert (= (and mapNonEmpty!57220 (not condMapEmpty!57226)) mapNonEmpty!57226))

(assert (= (and mapNonEmpty!57226 ((_ is ValueCellFull!17607) mapValue!57226)) b!1338934))

(assert (= (and mapNonEmpty!57220 ((_ is ValueCellFull!17607) mapDefault!57226)) b!1338935))

(declare-fun m!1227179 () Bool)

(assert (=> mapNonEmpty!57226 m!1227179))

(check-sat (not mapNonEmpty!57226) (not b!1338915) (not b!1338913) (not b!1338907) (not b!1338925) (not b!1338924) (not d!144039) tp_is_empty!37011 (not d!144037) (not bm!65030) (not b!1338906))
(check-sat)
