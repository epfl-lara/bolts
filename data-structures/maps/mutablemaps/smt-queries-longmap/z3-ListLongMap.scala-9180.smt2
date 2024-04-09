; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110454 () Bool)

(assert start!110454)

(declare-fun b!1306333 () Bool)

(declare-fun res!867323 () Bool)

(declare-fun e!745290 () Bool)

(assert (=> b!1306333 (=> (not res!867323) (not e!745290))))

(declare-datatypes ((List!29976 0))(
  ( (Nil!29973) (Cons!29972 (h!31181 (_ BitVec 64)) (t!43589 List!29976)) )
))
(declare-fun noDuplicate!2093 (List!29976) Bool)

(assert (=> b!1306333 (= res!867323 (noDuplicate!2093 Nil!29973))))

(declare-fun mapNonEmpty!54118 () Bool)

(declare-fun mapRes!54118 () Bool)

(declare-fun tp!103199 () Bool)

(declare-fun e!745292 () Bool)

(assert (=> mapNonEmpty!54118 (= mapRes!54118 (and tp!103199 e!745292))))

(declare-fun mapKey!54118 () (_ BitVec 32))

(declare-datatypes ((V!51763 0))(
  ( (V!51764 (val!17572 Int)) )
))
(declare-datatypes ((ValueCell!16599 0))(
  ( (ValueCellFull!16599 (v!20196 V!51763)) (EmptyCell!16599) )
))
(declare-fun mapRest!54118 () (Array (_ BitVec 32) ValueCell!16599))

(declare-datatypes ((array!86979 0))(
  ( (array!86980 (arr!41966 (Array (_ BitVec 32) ValueCell!16599)) (size!42517 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86979)

(declare-fun mapValue!54118 () ValueCell!16599)

(assert (=> mapNonEmpty!54118 (= (arr!41966 _values!1354) (store mapRest!54118 mapKey!54118 mapValue!54118))))

(declare-fun b!1306334 () Bool)

(declare-fun e!745293 () Bool)

(declare-fun contains!8347 (List!29976 (_ BitVec 64)) Bool)

(assert (=> b!1306334 (= e!745293 (contains!8347 Nil!29973 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1306335 () Bool)

(assert (=> b!1306335 (= e!745290 e!745293)))

(declare-fun res!867319 () Bool)

(assert (=> b!1306335 (=> res!867319 e!745293)))

(assert (=> b!1306335 (= res!867319 (contains!8347 Nil!29973 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1306336 () Bool)

(declare-fun res!867321 () Bool)

(assert (=> b!1306336 (=> (not res!867321) (not e!745290))))

(declare-datatypes ((array!86981 0))(
  ( (array!86982 (arr!41967 (Array (_ BitVec 32) (_ BitVec 64))) (size!42518 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86981)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306336 (= res!867321 (and (= (size!42517 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42518 _keys!1628) (size!42517 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1306338 () Bool)

(declare-fun tp_is_empty!34995 () Bool)

(assert (=> b!1306338 (= e!745292 tp_is_empty!34995)))

(declare-fun b!1306339 () Bool)

(declare-fun res!867322 () Bool)

(assert (=> b!1306339 (=> (not res!867322) (not e!745290))))

(assert (=> b!1306339 (= res!867322 (and (bvsle #b00000000000000000000000000000000 (size!42518 _keys!1628)) (bvslt (size!42518 _keys!1628) #b01111111111111111111111111111111)))))

(declare-fun b!1306340 () Bool)

(declare-fun e!745291 () Bool)

(assert (=> b!1306340 (= e!745291 tp_is_empty!34995)))

(declare-fun b!1306341 () Bool)

(declare-fun e!745289 () Bool)

(assert (=> b!1306341 (= e!745289 (and e!745291 mapRes!54118))))

(declare-fun condMapEmpty!54118 () Bool)

(declare-fun mapDefault!54118 () ValueCell!16599)

(assert (=> b!1306341 (= condMapEmpty!54118 (= (arr!41966 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16599)) mapDefault!54118)))))

(declare-fun mapIsEmpty!54118 () Bool)

(assert (=> mapIsEmpty!54118 mapRes!54118))

(declare-fun b!1306337 () Bool)

(declare-fun res!867320 () Bool)

(assert (=> b!1306337 (=> (not res!867320) (not e!745290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86981 (_ BitVec 32)) Bool)

(assert (=> b!1306337 (= res!867320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!867324 () Bool)

(assert (=> start!110454 (=> (not res!867324) (not e!745290))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110454 (= res!867324 (validMask!0 mask!2040))))

(assert (=> start!110454 e!745290))

(assert (=> start!110454 true))

(declare-fun array_inv!31731 (array!86979) Bool)

(assert (=> start!110454 (and (array_inv!31731 _values!1354) e!745289)))

(declare-fun array_inv!31732 (array!86981) Bool)

(assert (=> start!110454 (array_inv!31732 _keys!1628)))

(assert (= (and start!110454 res!867324) b!1306336))

(assert (= (and b!1306336 res!867321) b!1306337))

(assert (= (and b!1306337 res!867320) b!1306339))

(assert (= (and b!1306339 res!867322) b!1306333))

(assert (= (and b!1306333 res!867323) b!1306335))

(assert (= (and b!1306335 (not res!867319)) b!1306334))

(assert (= (and b!1306341 condMapEmpty!54118) mapIsEmpty!54118))

(assert (= (and b!1306341 (not condMapEmpty!54118)) mapNonEmpty!54118))

(get-info :version)

(assert (= (and mapNonEmpty!54118 ((_ is ValueCellFull!16599) mapValue!54118)) b!1306338))

(assert (= (and b!1306341 ((_ is ValueCellFull!16599) mapDefault!54118)) b!1306340))

(assert (= start!110454 b!1306341))

(declare-fun m!1197405 () Bool)

(assert (=> b!1306333 m!1197405))

(declare-fun m!1197407 () Bool)

(assert (=> b!1306337 m!1197407))

(declare-fun m!1197409 () Bool)

(assert (=> start!110454 m!1197409))

(declare-fun m!1197411 () Bool)

(assert (=> start!110454 m!1197411))

(declare-fun m!1197413 () Bool)

(assert (=> start!110454 m!1197413))

(declare-fun m!1197415 () Bool)

(assert (=> b!1306335 m!1197415))

(declare-fun m!1197417 () Bool)

(assert (=> b!1306334 m!1197417))

(declare-fun m!1197419 () Bool)

(assert (=> mapNonEmpty!54118 m!1197419))

(check-sat (not b!1306335) (not start!110454) tp_is_empty!34995 (not b!1306337) (not b!1306334) (not mapNonEmpty!54118) (not b!1306333))
(check-sat)
(get-model)

(declare-fun d!142171 () Bool)

(declare-fun res!867348 () Bool)

(declare-fun e!745319 () Bool)

(assert (=> d!142171 (=> res!867348 e!745319)))

(assert (=> d!142171 (= res!867348 (bvsge #b00000000000000000000000000000000 (size!42518 _keys!1628)))))

(assert (=> d!142171 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040) e!745319)))

(declare-fun b!1306377 () Bool)

(declare-fun e!745320 () Bool)

(declare-fun call!64628 () Bool)

(assert (=> b!1306377 (= e!745320 call!64628)))

(declare-fun b!1306378 () Bool)

(declare-fun e!745318 () Bool)

(assert (=> b!1306378 (= e!745320 e!745318)))

(declare-fun lt!584856 () (_ BitVec 64))

(assert (=> b!1306378 (= lt!584856 (select (arr!41967 _keys!1628) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43220 0))(
  ( (Unit!43221) )
))
(declare-fun lt!584854 () Unit!43220)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86981 (_ BitVec 64) (_ BitVec 32)) Unit!43220)

(assert (=> b!1306378 (= lt!584854 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1628 lt!584856 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1306378 (arrayContainsKey!0 _keys!1628 lt!584856 #b00000000000000000000000000000000)))

(declare-fun lt!584855 () Unit!43220)

(assert (=> b!1306378 (= lt!584855 lt!584854)))

(declare-fun res!867347 () Bool)

(declare-datatypes ((SeekEntryResult!10031 0))(
  ( (MissingZero!10031 (index!42494 (_ BitVec 32))) (Found!10031 (index!42495 (_ BitVec 32))) (Intermediate!10031 (undefined!10843 Bool) (index!42496 (_ BitVec 32)) (x!116022 (_ BitVec 32))) (Undefined!10031) (MissingVacant!10031 (index!42497 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86981 (_ BitVec 32)) SeekEntryResult!10031)

(assert (=> b!1306378 (= res!867347 (= (seekEntryOrOpen!0 (select (arr!41967 _keys!1628) #b00000000000000000000000000000000) _keys!1628 mask!2040) (Found!10031 #b00000000000000000000000000000000)))))

(assert (=> b!1306378 (=> (not res!867347) (not e!745318))))

(declare-fun b!1306379 () Bool)

(assert (=> b!1306379 (= e!745318 call!64628)))

(declare-fun b!1306380 () Bool)

(assert (=> b!1306380 (= e!745319 e!745320)))

(declare-fun c!125489 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1306380 (= c!125489 (validKeyInArray!0 (select (arr!41967 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun bm!64625 () Bool)

(assert (=> bm!64625 (= call!64628 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1628 mask!2040))))

(assert (= (and d!142171 (not res!867348)) b!1306380))

(assert (= (and b!1306380 c!125489) b!1306378))

(assert (= (and b!1306380 (not c!125489)) b!1306377))

(assert (= (and b!1306378 res!867347) b!1306379))

(assert (= (or b!1306379 b!1306377) bm!64625))

(declare-fun m!1197437 () Bool)

(assert (=> b!1306378 m!1197437))

(declare-fun m!1197439 () Bool)

(assert (=> b!1306378 m!1197439))

(declare-fun m!1197441 () Bool)

(assert (=> b!1306378 m!1197441))

(assert (=> b!1306378 m!1197437))

(declare-fun m!1197443 () Bool)

(assert (=> b!1306378 m!1197443))

(assert (=> b!1306380 m!1197437))

(assert (=> b!1306380 m!1197437))

(declare-fun m!1197445 () Bool)

(assert (=> b!1306380 m!1197445))

(declare-fun m!1197447 () Bool)

(assert (=> bm!64625 m!1197447))

(assert (=> b!1306337 d!142171))

(declare-fun d!142173 () Bool)

(declare-fun res!867353 () Bool)

(declare-fun e!745325 () Bool)

(assert (=> d!142173 (=> res!867353 e!745325)))

(assert (=> d!142173 (= res!867353 ((_ is Nil!29973) Nil!29973))))

(assert (=> d!142173 (= (noDuplicate!2093 Nil!29973) e!745325)))

(declare-fun b!1306385 () Bool)

(declare-fun e!745326 () Bool)

(assert (=> b!1306385 (= e!745325 e!745326)))

(declare-fun res!867354 () Bool)

(assert (=> b!1306385 (=> (not res!867354) (not e!745326))))

(assert (=> b!1306385 (= res!867354 (not (contains!8347 (t!43589 Nil!29973) (h!31181 Nil!29973))))))

(declare-fun b!1306386 () Bool)

(assert (=> b!1306386 (= e!745326 (noDuplicate!2093 (t!43589 Nil!29973)))))

(assert (= (and d!142173 (not res!867353)) b!1306385))

(assert (= (and b!1306385 res!867354) b!1306386))

(declare-fun m!1197449 () Bool)

(assert (=> b!1306385 m!1197449))

(declare-fun m!1197451 () Bool)

(assert (=> b!1306386 m!1197451))

(assert (=> b!1306333 d!142173))

(declare-fun d!142175 () Bool)

(assert (=> d!142175 (= (validMask!0 mask!2040) (and (or (= mask!2040 #b00000000000000000000000000000111) (= mask!2040 #b00000000000000000000000000001111) (= mask!2040 #b00000000000000000000000000011111) (= mask!2040 #b00000000000000000000000000111111) (= mask!2040 #b00000000000000000000000001111111) (= mask!2040 #b00000000000000000000000011111111) (= mask!2040 #b00000000000000000000000111111111) (= mask!2040 #b00000000000000000000001111111111) (= mask!2040 #b00000000000000000000011111111111) (= mask!2040 #b00000000000000000000111111111111) (= mask!2040 #b00000000000000000001111111111111) (= mask!2040 #b00000000000000000011111111111111) (= mask!2040 #b00000000000000000111111111111111) (= mask!2040 #b00000000000000001111111111111111) (= mask!2040 #b00000000000000011111111111111111) (= mask!2040 #b00000000000000111111111111111111) (= mask!2040 #b00000000000001111111111111111111) (= mask!2040 #b00000000000011111111111111111111) (= mask!2040 #b00000000000111111111111111111111) (= mask!2040 #b00000000001111111111111111111111) (= mask!2040 #b00000000011111111111111111111111) (= mask!2040 #b00000000111111111111111111111111) (= mask!2040 #b00000001111111111111111111111111) (= mask!2040 #b00000011111111111111111111111111) (= mask!2040 #b00000111111111111111111111111111) (= mask!2040 #b00001111111111111111111111111111) (= mask!2040 #b00011111111111111111111111111111) (= mask!2040 #b00111111111111111111111111111111)) (bvsle mask!2040 #b00111111111111111111111111111111)))))

(assert (=> start!110454 d!142175))

(declare-fun d!142177 () Bool)

(assert (=> d!142177 (= (array_inv!31731 _values!1354) (bvsge (size!42517 _values!1354) #b00000000000000000000000000000000))))

(assert (=> start!110454 d!142177))

(declare-fun d!142179 () Bool)

(assert (=> d!142179 (= (array_inv!31732 _keys!1628) (bvsge (size!42518 _keys!1628) #b00000000000000000000000000000000))))

(assert (=> start!110454 d!142179))

(declare-fun d!142181 () Bool)

(declare-fun lt!584859 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!657 (List!29976) (InoxSet (_ BitVec 64)))

(assert (=> d!142181 (= lt!584859 (select (content!657 Nil!29973) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!745331 () Bool)

(assert (=> d!142181 (= lt!584859 e!745331)))

(declare-fun res!867360 () Bool)

(assert (=> d!142181 (=> (not res!867360) (not e!745331))))

(assert (=> d!142181 (= res!867360 ((_ is Cons!29972) Nil!29973))))

(assert (=> d!142181 (= (contains!8347 Nil!29973 #b1000000000000000000000000000000000000000000000000000000000000000) lt!584859)))

(declare-fun b!1306391 () Bool)

(declare-fun e!745332 () Bool)

(assert (=> b!1306391 (= e!745331 e!745332)))

(declare-fun res!867359 () Bool)

(assert (=> b!1306391 (=> res!867359 e!745332)))

(assert (=> b!1306391 (= res!867359 (= (h!31181 Nil!29973) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1306392 () Bool)

(assert (=> b!1306392 (= e!745332 (contains!8347 (t!43589 Nil!29973) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!142181 res!867360) b!1306391))

(assert (= (and b!1306391 (not res!867359)) b!1306392))

(declare-fun m!1197453 () Bool)

(assert (=> d!142181 m!1197453))

(declare-fun m!1197455 () Bool)

(assert (=> d!142181 m!1197455))

(declare-fun m!1197457 () Bool)

(assert (=> b!1306392 m!1197457))

(assert (=> b!1306334 d!142181))

(declare-fun d!142183 () Bool)

(declare-fun lt!584860 () Bool)

(assert (=> d!142183 (= lt!584860 (select (content!657 Nil!29973) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!745333 () Bool)

(assert (=> d!142183 (= lt!584860 e!745333)))

(declare-fun res!867362 () Bool)

(assert (=> d!142183 (=> (not res!867362) (not e!745333))))

(assert (=> d!142183 (= res!867362 ((_ is Cons!29972) Nil!29973))))

(assert (=> d!142183 (= (contains!8347 Nil!29973 #b0000000000000000000000000000000000000000000000000000000000000000) lt!584860)))

(declare-fun b!1306393 () Bool)

(declare-fun e!745334 () Bool)

(assert (=> b!1306393 (= e!745333 e!745334)))

(declare-fun res!867361 () Bool)

(assert (=> b!1306393 (=> res!867361 e!745334)))

(assert (=> b!1306393 (= res!867361 (= (h!31181 Nil!29973) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1306394 () Bool)

(assert (=> b!1306394 (= e!745334 (contains!8347 (t!43589 Nil!29973) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!142183 res!867362) b!1306393))

(assert (= (and b!1306393 (not res!867361)) b!1306394))

(assert (=> d!142183 m!1197453))

(declare-fun m!1197459 () Bool)

(assert (=> d!142183 m!1197459))

(declare-fun m!1197461 () Bool)

(assert (=> b!1306394 m!1197461))

(assert (=> b!1306335 d!142183))

(declare-fun mapNonEmpty!54124 () Bool)

(declare-fun mapRes!54124 () Bool)

(declare-fun tp!103205 () Bool)

(declare-fun e!745339 () Bool)

(assert (=> mapNonEmpty!54124 (= mapRes!54124 (and tp!103205 e!745339))))

(declare-fun mapRest!54124 () (Array (_ BitVec 32) ValueCell!16599))

(declare-fun mapValue!54124 () ValueCell!16599)

(declare-fun mapKey!54124 () (_ BitVec 32))

(assert (=> mapNonEmpty!54124 (= mapRest!54118 (store mapRest!54124 mapKey!54124 mapValue!54124))))

(declare-fun mapIsEmpty!54124 () Bool)

(assert (=> mapIsEmpty!54124 mapRes!54124))

(declare-fun condMapEmpty!54124 () Bool)

(declare-fun mapDefault!54124 () ValueCell!16599)

(assert (=> mapNonEmpty!54118 (= condMapEmpty!54124 (= mapRest!54118 ((as const (Array (_ BitVec 32) ValueCell!16599)) mapDefault!54124)))))

(declare-fun e!745340 () Bool)

(assert (=> mapNonEmpty!54118 (= tp!103199 (and e!745340 mapRes!54124))))

(declare-fun b!1306401 () Bool)

(assert (=> b!1306401 (= e!745339 tp_is_empty!34995)))

(declare-fun b!1306402 () Bool)

(assert (=> b!1306402 (= e!745340 tp_is_empty!34995)))

(assert (= (and mapNonEmpty!54118 condMapEmpty!54124) mapIsEmpty!54124))

(assert (= (and mapNonEmpty!54118 (not condMapEmpty!54124)) mapNonEmpty!54124))

(assert (= (and mapNonEmpty!54124 ((_ is ValueCellFull!16599) mapValue!54124)) b!1306401))

(assert (= (and mapNonEmpty!54118 ((_ is ValueCellFull!16599) mapDefault!54124)) b!1306402))

(declare-fun m!1197463 () Bool)

(assert (=> mapNonEmpty!54124 m!1197463))

(check-sat (not b!1306385) (not mapNonEmpty!54124) (not b!1306394) (not b!1306386) (not d!142181) (not b!1306378) (not bm!64625) (not b!1306380) (not d!142183) tp_is_empty!34995 (not b!1306392))
(check-sat)
