; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6050 () Bool)

(assert start!6050)

(declare-fun b_free!1451 () Bool)

(declare-fun b_next!1451 () Bool)

(assert (=> start!6050 (= b_free!1451 (not b_next!1451))))

(declare-fun tp!5864 () Bool)

(declare-fun b_and!2561 () Bool)

(assert (=> start!6050 (= tp!5864 b_and!2561)))

(declare-fun res!25059 () Bool)

(declare-fun e!26612 () Bool)

(assert (=> start!6050 (=> (not res!25059) (not e!26612))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6050 (= res!25059 (validMask!0 mask!853))))

(assert (=> start!6050 e!26612))

(assert (=> start!6050 true))

(assert (=> start!6050 tp!5864))

(declare-fun b!42087 () Bool)

(declare-fun e!26613 () Bool)

(assert (=> b!42087 (= e!26612 (not e!26613))))

(declare-fun res!25060 () Bool)

(assert (=> b!42087 (=> res!25060 e!26613)))

(declare-datatypes ((V!2213 0))(
  ( (V!2214 (val!959 Int)) )
))
(declare-datatypes ((tuple2!1576 0))(
  ( (tuple2!1577 (_1!798 (_ BitVec 64)) (_2!798 V!2213)) )
))
(declare-datatypes ((List!1156 0))(
  ( (Nil!1153) (Cons!1152 (h!1729 tuple2!1576) (t!4111 List!1156)) )
))
(declare-datatypes ((ListLongMap!1157 0))(
  ( (ListLongMap!1158 (toList!594 List!1156)) )
))
(declare-fun lt!17296 () ListLongMap!1157)

(assert (=> b!42087 (= res!25060 (= lt!17296 (ListLongMap!1158 Nil!1153)))))

(declare-fun defaultEntry!470 () Int)

(declare-fun lt!17295 () V!2213)

(declare-datatypes ((array!2763 0))(
  ( (array!2764 (arr!1325 (Array (_ BitVec 32) (_ BitVec 64))) (size!1483 (_ BitVec 32))) )
))
(declare-fun lt!17297 () array!2763)

(declare-datatypes ((ValueCell!673 0))(
  ( (ValueCellFull!673 (v!2042 V!2213)) (EmptyCell!673) )
))
(declare-datatypes ((array!2765 0))(
  ( (array!2766 (arr!1326 (Array (_ BitVec 32) ValueCell!673)) (size!1484 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!326 0))(
  ( (LongMapFixedSize!327 (defaultEntry!1856 Int) (mask!5290 (_ BitVec 32)) (extraKeys!1747 (_ BitVec 32)) (zeroValue!1774 V!2213) (minValue!1774 V!2213) (_size!212 (_ BitVec 32)) (_keys!3369 array!2763) (_values!1839 array!2765) (_vacant!212 (_ BitVec 32))) )
))
(declare-fun map!764 (LongMapFixedSize!326) ListLongMap!1157)

(assert (=> b!42087 (= lt!17296 (map!764 (LongMapFixedSize!327 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17295 lt!17295 #b00000000000000000000000000000000 lt!17297 (array!2766 ((as const (Array (_ BitVec 32) ValueCell!673)) EmptyCell!673) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1157 0))(
  ( (Nil!1154) (Cons!1153 (h!1730 (_ BitVec 64)) (t!4112 List!1157)) )
))
(declare-fun arrayNoDuplicates!0 (array!2763 (_ BitVec 32) List!1157) Bool)

(assert (=> b!42087 (arrayNoDuplicates!0 lt!17297 #b00000000000000000000000000000000 Nil!1154)))

(declare-datatypes ((Unit!1089 0))(
  ( (Unit!1090) )
))
(declare-fun lt!17299 () Unit!1089)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2763 (_ BitVec 32) (_ BitVec 32) List!1157) Unit!1089)

(assert (=> b!42087 (= lt!17299 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17297 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1154))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2763 (_ BitVec 32)) Bool)

(assert (=> b!42087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17297 mask!853)))

(declare-fun lt!17294 () Unit!1089)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2763 (_ BitVec 32) (_ BitVec 32)) Unit!1089)

(assert (=> b!42087 (= lt!17294 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17297 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2763 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42087 (= (arrayCountValidKeys!0 lt!17297 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17298 () Unit!1089)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2763 (_ BitVec 32) (_ BitVec 32)) Unit!1089)

(assert (=> b!42087 (= lt!17298 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17297 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42087 (= lt!17297 (array!2764 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!234 (Int (_ BitVec 64)) V!2213)

(assert (=> b!42087 (= lt!17295 (dynLambda!234 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!42088 () Bool)

(declare-fun isEmpty!276 (List!1156) Bool)

(assert (=> b!42088 (= e!26613 (not (isEmpty!276 (toList!594 lt!17296))))))

(assert (= (and start!6050 res!25059) b!42087))

(assert (= (and b!42087 (not res!25060)) b!42088))

(declare-fun b_lambda!2201 () Bool)

(assert (=> (not b_lambda!2201) (not b!42087)))

(declare-fun t!4110 () Bool)

(declare-fun tb!941 () Bool)

(assert (=> (and start!6050 (= defaultEntry!470 defaultEntry!470) t!4110) tb!941))

(declare-fun result!1625 () Bool)

(declare-fun tp_is_empty!1841 () Bool)

(assert (=> tb!941 (= result!1625 tp_is_empty!1841)))

(assert (=> b!42087 t!4110))

(declare-fun b_and!2563 () Bool)

(assert (= b_and!2561 (and (=> t!4110 result!1625) b_and!2563)))

(declare-fun m!35715 () Bool)

(assert (=> start!6050 m!35715))

(declare-fun m!35717 () Bool)

(assert (=> b!42087 m!35717))

(declare-fun m!35719 () Bool)

(assert (=> b!42087 m!35719))

(declare-fun m!35721 () Bool)

(assert (=> b!42087 m!35721))

(declare-fun m!35723 () Bool)

(assert (=> b!42087 m!35723))

(declare-fun m!35725 () Bool)

(assert (=> b!42087 m!35725))

(declare-fun m!35727 () Bool)

(assert (=> b!42087 m!35727))

(declare-fun m!35729 () Bool)

(assert (=> b!42087 m!35729))

(declare-fun m!35731 () Bool)

(assert (=> b!42087 m!35731))

(declare-fun m!35733 () Bool)

(assert (=> b!42088 m!35733))

(push 1)

(assert (not b!42087))

(assert tp_is_empty!1841)

(assert (not b_next!1451))

(assert (not b!42088))

(assert (not start!6050))

(assert (not b_lambda!2201))

(assert b_and!2563)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2563)

(assert (not b_next!1451))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2205 () Bool)

(assert (= b_lambda!2201 (or (and start!6050 b_free!1451) b_lambda!2205)))

(push 1)

(assert (not b!42087))

(assert tp_is_empty!1841)

(assert (not b_next!1451))

(assert (not b!42088))

(assert (not start!6050))

(assert (not b_lambda!2205))

(assert b_and!2563)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2563)

(assert (not b_next!1451))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!7561 () Bool)

(assert (=> d!7561 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!6050 d!7561))

(declare-fun d!7567 () Bool)

(assert (=> d!7567 (= (isEmpty!276 (toList!594 lt!17296)) (is-Nil!1153 (toList!594 lt!17296)))))

(assert (=> b!42088 d!7567))

(declare-fun b!42109 () Bool)

(declare-fun e!26628 () Bool)

(declare-fun contains!552 (List!1157 (_ BitVec 64)) Bool)

(assert (=> b!42109 (= e!26628 (contains!552 Nil!1154 (select (arr!1325 lt!17297) #b00000000000000000000000000000000)))))

(declare-fun b!42110 () Bool)

(declare-fun e!26630 () Bool)

(declare-fun call!3265 () Bool)

(assert (=> b!42110 (= e!26630 call!3265)))

(declare-fun b!42111 () Bool)

(declare-fun e!26629 () Bool)

(assert (=> b!42111 (= e!26629 e!26630)))

(declare-fun c!5268 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!42111 (= c!5268 (validKeyInArray!0 (select (arr!1325 lt!17297) #b00000000000000000000000000000000)))))

(declare-fun b!42112 () Bool)

(assert (=> b!42112 (= e!26630 call!3265)))

(declare-fun b!42113 () Bool)

(declare-fun e!26631 () Bool)

(assert (=> b!42113 (= e!26631 e!26629)))

(declare-fun res!25071 () Bool)

(assert (=> b!42113 (=> (not res!25071) (not e!26629))))

(assert (=> b!42113 (= res!25071 (not e!26628))))

(declare-fun res!25072 () Bool)

(assert (=> b!42113 (=> (not res!25072) (not e!26628))))

(assert (=> b!42113 (= res!25072 (validKeyInArray!0 (select (arr!1325 lt!17297) #b00000000000000000000000000000000)))))

(declare-fun d!7571 () Bool)

(declare-fun res!25073 () Bool)

(assert (=> d!7571 (=> res!25073 e!26631)))

(assert (=> d!7571 (= res!25073 (bvsge #b00000000000000000000000000000000 (size!1483 lt!17297)))))

(assert (=> d!7571 (= (arrayNoDuplicates!0 lt!17297 #b00000000000000000000000000000000 Nil!1154) e!26631)))

(declare-fun bm!3262 () Bool)

(assert (=> bm!3262 (= call!3265 (arrayNoDuplicates!0 lt!17297 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!5268 (Cons!1153 (select (arr!1325 lt!17297) #b00000000000000000000000000000000) Nil!1154) Nil!1154)))))

(assert (= (and d!7571 (not res!25073)) b!42113))

(assert (= (and b!42113 res!25072) b!42109))

(assert (= (and b!42113 res!25071) b!42111))

(assert (= (and b!42111 c!5268) b!42110))

(assert (= (and b!42111 (not c!5268)) b!42112))

(assert (= (or b!42110 b!42112) bm!3262))

(declare-fun m!35739 () Bool)

(assert (=> b!42109 m!35739))

(assert (=> b!42109 m!35739))

(declare-fun m!35741 () Bool)

(assert (=> b!42109 m!35741))

(assert (=> b!42111 m!35739))

(assert (=> b!42111 m!35739))

(declare-fun m!35743 () Bool)

(assert (=> b!42111 m!35743))

(assert (=> b!42113 m!35739))

(assert (=> b!42113 m!35739))

(assert (=> b!42113 m!35743))

(assert (=> bm!3262 m!35739))

(declare-fun m!35745 () Bool)

(assert (=> bm!3262 m!35745))

(assert (=> b!42087 d!7571))

(declare-fun d!7575 () Bool)

(assert (=> d!7575 (= (arrayCountValidKeys!0 lt!17297 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17317 () Unit!1089)

(declare-fun choose!59 (array!2763 (_ BitVec 32) (_ BitVec 32)) Unit!1089)

(assert (=> d!7575 (= lt!17317 (choose!59 lt!17297 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7575 (bvslt (size!1483 lt!17297) #b01111111111111111111111111111111)))

(assert (=> d!7575 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17297 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17317)))

(declare-fun bs!1813 () Bool)

(assert (= bs!1813 d!7575))

(assert (=> bs!1813 m!35717))

(declare-fun m!35761 () Bool)

(assert (=> bs!1813 m!35761))

(assert (=> b!42087 d!7575))

(declare-fun d!7581 () Bool)

(assert (=> d!7581 (arrayNoDuplicates!0 lt!17297 #b00000000000000000000000000000000 Nil!1154)))

(declare-fun lt!17320 () Unit!1089)

(declare-fun choose!111 (array!2763 (_ BitVec 32) (_ BitVec 32) List!1157) Unit!1089)

(assert (=> d!7581 (= lt!17320 (choose!111 lt!17297 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1154))))

(assert (=> d!7581 (= (size!1483 lt!17297) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!7581 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!17297 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1154) lt!17320)))

(declare-fun bs!1814 () Bool)

(assert (= bs!1814 d!7581))

(assert (=> bs!1814 m!35721))

(declare-fun m!35763 () Bool)

(assert (=> bs!1814 m!35763))

(assert (=> b!42087 d!7581))

(declare-fun d!7583 () Bool)

(assert (=> d!7583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17297 mask!853)))

(declare-fun lt!17332 () Unit!1089)

(declare-fun choose!34 (array!2763 (_ BitVec 32) (_ BitVec 32)) Unit!1089)

(assert (=> d!7583 (= lt!17332 (choose!34 lt!17297 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!7583 (validMask!0 mask!853)))

(assert (=> d!7583 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17297 mask!853 #b00000000000000000000000000000000) lt!17332)))

(declare-fun bs!1816 () Bool)

(assert (= bs!1816 d!7583))

(assert (=> bs!1816 m!35727))

(declare-fun m!35767 () Bool)

(assert (=> bs!1816 m!35767))

(assert (=> bs!1816 m!35715))

(assert (=> b!42087 d!7583))

(declare-fun bm!3274 () Bool)

(declare-fun call!3277 () Bool)

(assert (=> bm!3274 (= call!3277 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!17297 mask!853))))

(declare-fun b!42161 () Bool)

(declare-fun e!26668 () Bool)

(assert (=> b!42161 (= e!26668 call!3277)))

(declare-fun b!42162 () Bool)

(declare-fun e!26667 () Bool)

(declare-fun e!26666 () Bool)

(assert (=> b!42162 (= e!26667 e!26666)))

(declare-fun c!5282 () Bool)

(assert (=> b!42162 (= c!5282 (validKeyInArray!0 (select (arr!1325 lt!17297) #b00000000000000000000000000000000)))))

(declare-fun b!42163 () Bool)

(assert (=> b!42163 (= e!26666 call!3277)))

(declare-fun b!42164 () Bool)

(assert (=> b!42164 (= e!26666 e!26668)))

(declare-fun lt!17346 () (_ BitVec 64))

(assert (=> b!42164 (= lt!17346 (select (arr!1325 lt!17297) #b00000000000000000000000000000000))))

(declare-fun lt!17344 () Unit!1089)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2763 (_ BitVec 64) (_ BitVec 32)) Unit!1089)

(assert (=> b!42164 (= lt!17344 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!17297 lt!17346 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2763 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!42164 (arrayContainsKey!0 lt!17297 lt!17346 #b00000000000000000000000000000000)))

(declare-fun lt!17345 () Unit!1089)

(assert (=> b!42164 (= lt!17345 lt!17344)))

(declare-fun res!25095 () Bool)

(declare-datatypes ((SeekEntryResult!191 0))(
  ( (MissingZero!191 (index!2886 (_ BitVec 32))) (Found!191 (index!2887 (_ BitVec 32))) (Intermediate!191 (undefined!1003 Bool) (index!2888 (_ BitVec 32)) (x!8020 (_ BitVec 32))) (Undefined!191) (MissingVacant!191 (index!2889 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2763 (_ BitVec 32)) SeekEntryResult!191)

(assert (=> b!42164 (= res!25095 (= (seekEntryOrOpen!0 (select (arr!1325 lt!17297) #b00000000000000000000000000000000) lt!17297 mask!853) (Found!191 #b00000000000000000000000000000000)))))

(assert (=> b!42164 (=> (not res!25095) (not e!26668))))

(declare-fun d!7587 () Bool)

(declare-fun res!25096 () Bool)

(assert (=> d!7587 (=> res!25096 e!26667)))

(assert (=> d!7587 (= res!25096 (bvsge #b00000000000000000000000000000000 (size!1483 lt!17297)))))

(assert (=> d!7587 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17297 mask!853) e!26667)))

(assert (= (and d!7587 (not res!25096)) b!42162))

(assert (= (and b!42162 c!5282) b!42164))

(assert (= (and b!42162 (not c!5282)) b!42163))

(assert (= (and b!42164 res!25095) b!42161))

(assert (= (or b!42161 b!42163) bm!3274))

(declare-fun m!35787 () Bool)

(assert (=> bm!3274 m!35787))

(assert (=> b!42162 m!35739))

(assert (=> b!42162 m!35739))

(assert (=> b!42162 m!35743))

(assert (=> b!42164 m!35739))

(declare-fun m!35789 () Bool)

(assert (=> b!42164 m!35789))

(declare-fun m!35791 () Bool)

(assert (=> b!42164 m!35791))

(assert (=> b!42164 m!35739))

(declare-fun m!35793 () Bool)

(assert (=> b!42164 m!35793))

(assert (=> b!42087 d!7587))

(declare-fun d!7595 () Bool)

(declare-fun getCurrentListMap!346 (array!2763 array!2765 (_ BitVec 32) (_ BitVec 32) V!2213 V!2213 (_ BitVec 32) Int) ListLongMap!1157)

(assert (=> d!7595 (= (map!764 (LongMapFixedSize!327 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17295 lt!17295 #b00000000000000000000000000000000 lt!17297 (array!2766 ((as const (Array (_ BitVec 32) ValueCell!673)) EmptyCell!673) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (getCurrentListMap!346 (_keys!3369 (LongMapFixedSize!327 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17295 lt!17295 #b00000000000000000000000000000000 lt!17297 (array!2766 ((as const (Array (_ BitVec 32) ValueCell!673)) EmptyCell!673) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (_values!1839 (LongMapFixedSize!327 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17295 lt!17295 #b00000000000000000000000000000000 lt!17297 (array!2766 ((as const (Array (_ BitVec 32) ValueCell!673)) EmptyCell!673) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5290 (LongMapFixedSize!327 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17295 lt!17295 #b00000000000000000000000000000000 lt!17297 (array!2766 ((as const (Array (_ BitVec 32) ValueCell!673)) EmptyCell!673) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (extraKeys!1747 (LongMapFixedSize!327 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17295 lt!17295 #b00000000000000000000000000000000 lt!17297 (array!2766 ((as const (Array (_ BitVec 32) ValueCell!673)) EmptyCell!673) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (zeroValue!1774 (LongMapFixedSize!327 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17295 lt!17295 #b00000000000000000000000000000000 lt!17297 (array!2766 ((as const (Array (_ BitVec 32) ValueCell!673)) EmptyCell!673) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (minValue!1774 (LongMapFixedSize!327 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17295 lt!17295 #b00000000000000000000000000000000 lt!17297 (array!2766 ((as const (Array (_ BitVec 32) ValueCell!673)) EmptyCell!673) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!1856 (LongMapFixedSize!327 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17295 lt!17295 #b00000000000000000000000000000000 lt!17297 (array!2766 ((as const (Array (_ BitVec 32) ValueCell!673)) EmptyCell!673) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun bs!1819 () Bool)

(assert (= bs!1819 d!7595))

(declare-fun m!35801 () Bool)

(assert (=> bs!1819 m!35801))

(assert (=> b!42087 d!7595))

(declare-fun b!42204 () Bool)

(declare-fun e!26693 () (_ BitVec 32))

(declare-fun call!3287 () (_ BitVec 32))

(assert (=> b!42204 (= e!26693 (bvadd #b00000000000000000000000000000001 call!3287))))

(declare-fun d!7603 () Bool)

(declare-fun lt!17356 () (_ BitVec 32))

(assert (=> d!7603 (and (bvsge lt!17356 #b00000000000000000000000000000000) (bvsle lt!17356 (bvsub (size!1483 lt!17297) #b00000000000000000000000000000000)))))

(declare-fun e!26694 () (_ BitVec 32))

(assert (=> d!7603 (= lt!17356 e!26694)))

(declare-fun c!5299 () Bool)

(assert (=> d!7603 (= c!5299 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!7603 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1483 lt!17297)))))

(assert (=> d!7603 (= (arrayCountValidKeys!0 lt!17297 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!17356)))

(declare-fun b!42205 () Bool)

(assert (=> b!42205 (= e!26694 #b00000000000000000000000000000000)))

(declare-fun b!42206 () Bool)

(assert (=> b!42206 (= e!26693 call!3287)))

(declare-fun bm!3284 () Bool)

(assert (=> bm!3284 (= call!3287 (arrayCountValidKeys!0 lt!17297 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!42207 () Bool)

(assert (=> b!42207 (= e!26694 e!26693)))

(declare-fun c!5298 () Bool)

(assert (=> b!42207 (= c!5298 (validKeyInArray!0 (select (arr!1325 lt!17297) #b00000000000000000000000000000000)))))

(assert (= (and d!7603 c!5299) b!42205))

(assert (= (and d!7603 (not c!5299)) b!42207))

(assert (= (and b!42207 c!5298) b!42204))

(assert (= (and b!42207 (not c!5298)) b!42206))

(assert (= (or b!42204 b!42206) bm!3284))

(declare-fun m!35807 () Bool)

(assert (=> bm!3284 m!35807))

(assert (=> b!42207 m!35739))

(assert (=> b!42207 m!35739))

(assert (=> b!42207 m!35743))

(assert (=> b!42087 d!7603))

(push 1)

