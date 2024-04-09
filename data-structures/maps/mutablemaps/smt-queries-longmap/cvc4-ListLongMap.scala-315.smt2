; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5372 () Bool)

(assert start!5372)

(declare-fun b_free!1355 () Bool)

(declare-fun b_next!1355 () Bool)

(assert (=> start!5372 (= b_free!1355 (not b_next!1355))))

(declare-fun tp!5720 () Bool)

(declare-fun b_and!2333 () Bool)

(assert (=> start!5372 (= tp!5720 b_and!2333)))

(declare-fun res!23278 () Bool)

(declare-fun e!24492 () Bool)

(assert (=> start!5372 (=> (not res!23278) (not e!24492))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5372 (= res!23278 (validMask!0 mask!853))))

(assert (=> start!5372 e!24492))

(assert (=> start!5372 true))

(assert (=> start!5372 tp!5720))

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((V!2085 0))(
  ( (V!2086 (val!911 Int)) )
))
(declare-fun lt!14448 () V!2085)

(declare-datatypes ((array!2571 0))(
  ( (array!2572 (arr!1229 (Array (_ BitVec 32) (_ BitVec 64))) (size!1336 (_ BitVec 32))) )
))
(declare-fun lt!14445 () array!2571)

(declare-fun b!38560 () Bool)

(declare-datatypes ((ValueCell!625 0))(
  ( (ValueCellFull!625 (v!1979 V!2085)) (EmptyCell!625) )
))
(declare-datatypes ((array!2573 0))(
  ( (array!2574 (arr!1230 (Array (_ BitVec 32) ValueCell!625)) (size!1337 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!230 0))(
  ( (LongMapFixedSize!231 (defaultEntry!1793 Int) (mask!5114 (_ BitVec 32)) (extraKeys!1684 (_ BitVec 32)) (zeroValue!1711 V!2085) (minValue!1711 V!2085) (_size!164 (_ BitVec 32)) (_keys!3246 array!2571) (_values!1776 array!2573) (_vacant!164 (_ BitVec 32))) )
))
(declare-fun valid!118 (LongMapFixedSize!230) Bool)

(assert (=> b!38560 (= e!24492 (not (valid!118 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-datatypes ((List!1061 0))(
  ( (Nil!1058) (Cons!1057 (h!1625 (_ BitVec 64)) (t!3908 List!1061)) )
))
(declare-fun arrayNoDuplicates!0 (array!2571 (_ BitVec 32) List!1061) Bool)

(assert (=> b!38560 (arrayNoDuplicates!0 lt!14445 #b00000000000000000000000000000000 Nil!1058)))

(declare-datatypes ((Unit!958 0))(
  ( (Unit!959) )
))
(declare-fun lt!14449 () Unit!958)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2571 (_ BitVec 32) (_ BitVec 32) List!1061) Unit!958)

(assert (=> b!38560 (= lt!14449 (lemmaArrayNoDuplicatesInAll0Array!0 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2571 (_ BitVec 32)) Bool)

(assert (=> b!38560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14445 mask!853)))

(declare-fun lt!14446 () Unit!958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2571 (_ BitVec 32) (_ BitVec 32)) Unit!958)

(assert (=> b!38560 (= lt!14446 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14445 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2571 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!38560 (= (arrayCountValidKeys!0 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14447 () Unit!958)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2571 (_ BitVec 32) (_ BitVec 32)) Unit!958)

(assert (=> b!38560 (= lt!14447 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!38560 (= lt!14445 (array!2572 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!186 (Int (_ BitVec 64)) V!2085)

(assert (=> b!38560 (= lt!14448 (dynLambda!186 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5372 res!23278) b!38560))

(declare-fun b_lambda!2033 () Bool)

(assert (=> (not b_lambda!2033) (not b!38560)))

(declare-fun t!3907 () Bool)

(declare-fun tb!833 () Bool)

(assert (=> (and start!5372 (= defaultEntry!470 defaultEntry!470) t!3907) tb!833))

(declare-fun result!1421 () Bool)

(declare-fun tp_is_empty!1745 () Bool)

(assert (=> tb!833 (= result!1421 tp_is_empty!1745)))

(assert (=> b!38560 t!3907))

(declare-fun b_and!2335 () Bool)

(assert (= b_and!2333 (and (=> t!3907 result!1421) b_and!2335)))

(declare-fun m!31295 () Bool)

(assert (=> start!5372 m!31295))

(declare-fun m!31297 () Bool)

(assert (=> b!38560 m!31297))

(declare-fun m!31299 () Bool)

(assert (=> b!38560 m!31299))

(declare-fun m!31301 () Bool)

(assert (=> b!38560 m!31301))

(declare-fun m!31303 () Bool)

(assert (=> b!38560 m!31303))

(declare-fun m!31305 () Bool)

(assert (=> b!38560 m!31305))

(declare-fun m!31307 () Bool)

(assert (=> b!38560 m!31307))

(declare-fun m!31309 () Bool)

(assert (=> b!38560 m!31309))

(declare-fun m!31311 () Bool)

(assert (=> b!38560 m!31311))

(push 1)

(assert (not b_next!1355))

(assert (not start!5372))

(assert b_and!2335)

(assert tp_is_empty!1745)

(assert (not b!38560))

(assert (not b_lambda!2033))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2335)

(assert (not b_next!1355))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!2037 () Bool)

(assert (= b_lambda!2033 (or (and start!5372 b_free!1355) b_lambda!2037)))

(push 1)

(assert (not b_next!1355))

(assert (not start!5372))

(assert b_and!2335)

(assert tp_is_empty!1745)

(assert (not b!38560))

(assert (not b_lambda!2037))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2335)

(assert (not b_next!1355))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6263 () Bool)

(declare-fun res!23291 () Bool)

(declare-fun e!24503 () Bool)

(assert (=> d!6263 (=> (not res!23291) (not e!24503))))

(declare-fun simpleValid!20 (LongMapFixedSize!230) Bool)

(assert (=> d!6263 (= res!23291 (simpleValid!20 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(assert (=> d!6263 (= (valid!118 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) e!24503)))

(declare-fun b!38579 () Bool)

(declare-fun res!23292 () Bool)

(assert (=> b!38579 (=> (not res!23292) (not e!24503))))

(assert (=> b!38579 (= res!23292 (= (arrayCountValidKeys!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (_size!164 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38580 () Bool)

(declare-fun res!23293 () Bool)

(assert (=> b!38580 (=> (not res!23293) (not e!24503))))

(assert (=> b!38580 (= res!23293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!38581 () Bool)

(assert (=> b!38581 (= e!24503 (arrayNoDuplicates!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 Nil!1058))))

(assert (= (and d!6263 res!23291) b!38579))

(assert (= (and b!38579 res!23292) b!38580))

(assert (= (and b!38580 res!23293) b!38581))

(declare-fun m!31313 () Bool)

(assert (=> d!6263 m!31313))

(declare-fun m!31315 () Bool)

(assert (=> b!38579 m!31315))

(declare-fun m!31317 () Bool)

(assert (=> b!38580 m!31317))

(declare-fun m!31319 () Bool)

(assert (=> b!38581 m!31319))

(assert (=> b!38560 d!6263))

(declare-fun bm!2903 () Bool)

(declare-fun call!2906 () (_ BitVec 32))

(assert (=> bm!2903 (= call!2906 (arrayCountValidKeys!0 lt!14445 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38601 () Bool)

(declare-fun e!24515 () (_ BitVec 32))

(declare-fun e!24514 () (_ BitVec 32))

(assert (=> b!38601 (= e!24515 e!24514)))

(declare-fun c!4434 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!38601 (= c!4434 (validKeyInArray!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000)))))

(declare-fun d!6265 () Bool)

(declare-fun lt!14455 () (_ BitVec 32))

(assert (=> d!6265 (and (bvsge lt!14455 #b00000000000000000000000000000000) (bvsle lt!14455 (bvsub (size!1336 lt!14445) #b00000000000000000000000000000000)))))

(assert (=> d!6265 (= lt!14455 e!24515)))

(declare-fun c!4435 () Bool)

(assert (=> d!6265 (= c!4435 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6265 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1336 lt!14445)))))

(assert (=> d!6265 (= (arrayCountValidKeys!0 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14455)))

(declare-fun b!38602 () Bool)

(assert (=> b!38602 (= e!24514 (bvadd #b00000000000000000000000000000001 call!2906))))

(declare-fun b!38603 () Bool)

(assert (=> b!38603 (= e!24515 #b00000000000000000000000000000000)))

(declare-fun b!38604 () Bool)

(assert (=> b!38604 (= e!24514 call!2906)))

(assert (= (and d!6265 c!4435) b!38603))

(assert (= (and d!6265 (not c!4435)) b!38601))

(assert (= (and b!38601 c!4434) b!38602))

(assert (= (and b!38601 (not c!4434)) b!38604))

(assert (= (or b!38602 b!38604) bm!2903))

(declare-fun m!31331 () Bool)

(assert (=> bm!2903 m!31331))

(declare-fun m!31333 () Bool)

(assert (=> b!38601 m!31333))

(assert (=> b!38601 m!31333))

(declare-fun m!31337 () Bool)

(assert (=> b!38601 m!31337))

(assert (=> b!38560 d!6265))

(declare-fun bm!2909 () Bool)

(declare-fun call!2912 () Bool)

(declare-fun c!4441 () Bool)

(assert (=> bm!2909 (= call!2912 (arrayNoDuplicates!0 lt!14445 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4441 (Cons!1057 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) Nil!1058) Nil!1058)))))

(declare-fun b!38633 () Bool)

(declare-fun e!24538 () Bool)

(assert (=> b!38633 (= e!24538 call!2912)))

(declare-fun b!38634 () Bool)

(declare-fun e!24540 () Bool)

(declare-fun e!24539 () Bool)

(assert (=> b!38634 (= e!24540 e!24539)))

(declare-fun res!23322 () Bool)

(assert (=> b!38634 (=> (not res!23322) (not e!24539))))

(declare-fun e!24537 () Bool)

(assert (=> b!38634 (= res!23322 (not e!24537))))

(declare-fun res!23323 () Bool)

(assert (=> b!38634 (=> (not res!23323) (not e!24537))))

(assert (=> b!38634 (= res!23323 (validKeyInArray!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000)))))

(declare-fun b!38635 () Bool)

(assert (=> b!38635 (= e!24539 e!24538)))

(assert (=> b!38635 (= c!4441 (validKeyInArray!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000)))))

(declare-fun d!6273 () Bool)

(declare-fun res!23321 () Bool)

(assert (=> d!6273 (=> res!23321 e!24540)))

(assert (=> d!6273 (= res!23321 (bvsge #b00000000000000000000000000000000 (size!1336 lt!14445)))))

(assert (=> d!6273 (= (arrayNoDuplicates!0 lt!14445 #b00000000000000000000000000000000 Nil!1058) e!24540)))

(declare-fun b!38636 () Bool)

(declare-fun contains!503 (List!1061 (_ BitVec 64)) Bool)

(assert (=> b!38636 (= e!24537 (contains!503 Nil!1058 (select (arr!1229 lt!14445) #b00000000000000000000000000000000)))))

(declare-fun b!38637 () Bool)

(assert (=> b!38637 (= e!24538 call!2912)))

(assert (= (and d!6273 (not res!23321)) b!38634))

(assert (= (and b!38634 res!23323) b!38636))

(assert (= (and b!38634 res!23322) b!38635))

(assert (= (and b!38635 c!4441) b!38633))

(assert (= (and b!38635 (not c!4441)) b!38637))

(assert (= (or b!38633 b!38637) bm!2909))

(assert (=> bm!2909 m!31333))

(declare-fun m!31355 () Bool)

(assert (=> bm!2909 m!31355))

(assert (=> b!38634 m!31333))

(assert (=> b!38634 m!31333))

(assert (=> b!38634 m!31337))

(assert (=> b!38635 m!31333))

(assert (=> b!38635 m!31333))

(assert (=> b!38635 m!31337))

(assert (=> b!38636 m!31333))

(assert (=> b!38636 m!31333))

(declare-fun m!31357 () Bool)

(assert (=> b!38636 m!31357))

(assert (=> b!38560 d!6273))

(declare-fun b!38666 () Bool)

(declare-fun e!24560 () Bool)

(declare-fun e!24561 () Bool)

(assert (=> b!38666 (= e!24560 e!24561)))

(declare-fun c!4451 () Bool)

(assert (=> b!38666 (= c!4451 (validKeyInArray!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000)))))

(declare-fun b!38667 () Bool)

(declare-fun e!24562 () Bool)

(assert (=> b!38667 (= e!24561 e!24562)))

(declare-fun lt!14483 () (_ BitVec 64))

(assert (=> b!38667 (= lt!14483 (select (arr!1229 lt!14445) #b00000000000000000000000000000000))))

(declare-fun lt!14482 () Unit!958)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2571 (_ BitVec 64) (_ BitVec 32)) Unit!958)

(assert (=> b!38667 (= lt!14482 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14445 lt!14483 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!2571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!38667 (arrayContainsKey!0 lt!14445 lt!14483 #b00000000000000000000000000000000)))

(declare-fun lt!14484 () Unit!958)

(assert (=> b!38667 (= lt!14484 lt!14482)))

(declare-fun res!23334 () Bool)

(declare-datatypes ((SeekEntryResult!178 0))(
  ( (MissingZero!178 (index!2834 (_ BitVec 32))) (Found!178 (index!2835 (_ BitVec 32))) (Intermediate!178 (undefined!990 Bool) (index!2836 (_ BitVec 32)) (x!7614 (_ BitVec 32))) (Undefined!178) (MissingVacant!178 (index!2837 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2571 (_ BitVec 32)) SeekEntryResult!178)

(assert (=> b!38667 (= res!23334 (= (seekEntryOrOpen!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14445 mask!853) (Found!178 #b00000000000000000000000000000000)))))

(assert (=> b!38667 (=> (not res!23334) (not e!24562))))

(declare-fun d!6281 () Bool)

(declare-fun res!23335 () Bool)

(assert (=> d!6281 (=> res!23335 e!24560)))

(assert (=> d!6281 (= res!23335 (bvsge #b00000000000000000000000000000000 (size!1336 lt!14445)))))

(assert (=> d!6281 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14445 mask!853) e!24560)))

(declare-fun b!38668 () Bool)

(declare-fun call!2918 () Bool)

(assert (=> b!38668 (= e!24561 call!2918)))

(declare-fun b!38669 () Bool)

(assert (=> b!38669 (= e!24562 call!2918)))

(declare-fun bm!2915 () Bool)

(assert (=> bm!2915 (= call!2918 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14445 mask!853))))

(assert (= (and d!6281 (not res!23335)) b!38666))

(assert (= (and b!38666 c!4451) b!38667))

(assert (= (and b!38666 (not c!4451)) b!38668))

(assert (= (and b!38667 res!23334) b!38669))

(assert (= (or b!38669 b!38668) bm!2915))

(assert (=> b!38666 m!31333))

(assert (=> b!38666 m!31333))

(assert (=> b!38666 m!31337))

(assert (=> b!38667 m!31333))

(declare-fun m!31371 () Bool)

(assert (=> b!38667 m!31371))

(declare-fun m!31373 () Bool)

(assert (=> b!38667 m!31373))

(assert (=> b!38667 m!31333))

(declare-fun m!31375 () Bool)

(assert (=> b!38667 m!31375))

(declare-fun m!31377 () Bool)

(assert (=> bm!2915 m!31377))

(assert (=> b!38560 d!6281))

(declare-fun d!6289 () Bool)

(assert (=> d!6289 (arrayNoDuplicates!0 lt!14445 #b00000000000000000000000000000000 Nil!1058)))

(declare-fun lt!14494 () Unit!958)

(declare-fun choose!111 (array!2571 (_ BitVec 32) (_ BitVec 32) List!1061) Unit!958)

(assert (=> d!6289 (= lt!14494 (choose!111 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1058))))

(assert (=> d!6289 (= (size!1336 lt!14445) (bvadd #b00000000000000000000000000000001 mask!853))))

(assert (=> d!6289 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1058) lt!14494)))

(declare-fun bs!1600 () Bool)

(assert (= bs!1600 d!6289))

(assert (=> bs!1600 m!31299))

(declare-fun m!31385 () Bool)

(assert (=> bs!1600 m!31385))

(assert (=> b!38560 d!6289))

(declare-fun d!6297 () Bool)

(assert (=> d!6297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14445 mask!853)))

(declare-fun lt!14499 () Unit!958)

(declare-fun choose!34 (array!2571 (_ BitVec 32) (_ BitVec 32)) Unit!958)

(assert (=> d!6297 (= lt!14499 (choose!34 lt!14445 mask!853 #b00000000000000000000000000000000))))

(assert (=> d!6297 (validMask!0 mask!853)))

(assert (=> d!6297 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!14445 mask!853 #b00000000000000000000000000000000) lt!14499)))

(declare-fun bs!1601 () Bool)

(assert (= bs!1601 d!6297))

(assert (=> bs!1601 m!31301))

(declare-fun m!31387 () Bool)

(assert (=> bs!1601 m!31387))

(assert (=> bs!1601 m!31295))

(assert (=> b!38560 d!6297))

(declare-fun d!6299 () Bool)

(assert (=> d!6299 (= (arrayCountValidKeys!0 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!14502 () Unit!958)

(declare-fun choose!59 (array!2571 (_ BitVec 32) (_ BitVec 32)) Unit!958)

(assert (=> d!6299 (= lt!14502 (choose!59 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6299 (bvslt (size!1336 lt!14445) #b01111111111111111111111111111111)))

(assert (=> d!6299 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) lt!14502)))

(declare-fun bs!1602 () Bool)

(assert (= bs!1602 d!6299))

(assert (=> bs!1602 m!31309))

(declare-fun m!31397 () Bool)

(assert (=> bs!1602 m!31397))

(assert (=> b!38560 d!6299))

(declare-fun d!6303 () Bool)

(assert (=> d!6303 (= (validMask!0 mask!853) (and (or (= mask!853 #b00000000000000000000000000000111) (= mask!853 #b00000000000000000000000000001111) (= mask!853 #b00000000000000000000000000011111) (= mask!853 #b00000000000000000000000000111111) (= mask!853 #b00000000000000000000000001111111) (= mask!853 #b00000000000000000000000011111111) (= mask!853 #b00000000000000000000000111111111) (= mask!853 #b00000000000000000000001111111111) (= mask!853 #b00000000000000000000011111111111) (= mask!853 #b00000000000000000000111111111111) (= mask!853 #b00000000000000000001111111111111) (= mask!853 #b00000000000000000011111111111111) (= mask!853 #b00000000000000000111111111111111) (= mask!853 #b00000000000000001111111111111111) (= mask!853 #b00000000000000011111111111111111) (= mask!853 #b00000000000000111111111111111111) (= mask!853 #b00000000000001111111111111111111) (= mask!853 #b00000000000011111111111111111111) (= mask!853 #b00000000000111111111111111111111) (= mask!853 #b00000000001111111111111111111111) (= mask!853 #b00000000011111111111111111111111) (= mask!853 #b00000000111111111111111111111111) (= mask!853 #b00000001111111111111111111111111) (= mask!853 #b00000011111111111111111111111111) (= mask!853 #b00000111111111111111111111111111) (= mask!853 #b00001111111111111111111111111111) (= mask!853 #b00011111111111111111111111111111) (= mask!853 #b00111111111111111111111111111111)) (bvsle mask!853 #b00111111111111111111111111111111)))))

(assert (=> start!5372 d!6303))

(push 1)

(assert (not bm!2915))

(assert (not d!6299))

(assert (not bm!2909))

(assert (not b!38580))

(assert (not bm!2903))

(assert (not d!6289))

(assert (not b!38666))

(assert (not b_lambda!2037))

(assert (not b_next!1355))

(assert (not b!38635))

(assert (not b!38636))

(assert (not b!38601))

(assert (not b!38667))

(assert (not b!38579))

(assert b_and!2335)

(assert (not b!38634))

(assert (not d!6297))

(assert tp_is_empty!1745)

(assert (not b!38581))

(assert (not d!6263))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2335)

(assert (not b_next!1355))

(check-sat)

(get-model)

(pop 1)

(declare-fun call!2936 () (_ BitVec 32))

(declare-fun bm!2933 () Bool)

(assert (=> bm!2933 (= call!2936 (arrayCountValidKeys!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(declare-fun b!38777 () Bool)

(declare-fun e!24625 () (_ BitVec 32))

(declare-fun e!24624 () (_ BitVec 32))

(assert (=> b!38777 (= e!24625 e!24624)))

(declare-fun c!4474 () Bool)

(assert (=> b!38777 (= c!4474 (validKeyInArray!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun lt!14531 () (_ BitVec 32))

(declare-fun d!6351 () Bool)

(assert (=> d!6351 (and (bvsge lt!14531 #b00000000000000000000000000000000) (bvsle lt!14531 (bvsub (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(assert (=> d!6351 (= lt!14531 e!24625)))

(declare-fun c!4475 () Bool)

(assert (=> d!6351 (= c!4475 (bvsge #b00000000000000000000000000000000 (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6351 (and (bvsle #b00000000000000000000000000000000 (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6351 (= (arrayCountValidKeys!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) lt!14531)))

(declare-fun b!38778 () Bool)

(assert (=> b!38778 (= e!24624 (bvadd #b00000000000000000000000000000001 call!2936))))

(declare-fun b!38779 () Bool)

(assert (=> b!38779 (= e!24625 #b00000000000000000000000000000000)))

(declare-fun b!38780 () Bool)

(assert (=> b!38780 (= e!24624 call!2936)))

(assert (= (and d!6351 c!4475) b!38779))

(assert (= (and d!6351 (not c!4475)) b!38777))

(assert (= (and b!38777 c!4474) b!38778))

(assert (= (and b!38777 (not c!4474)) b!38780))

(assert (= (or b!38778 b!38780) bm!2933))

(declare-fun m!31481 () Bool)

(assert (=> bm!2933 m!31481))

(declare-fun m!31483 () Bool)

(assert (=> b!38777 m!31483))

(assert (=> b!38777 m!31483))

(declare-fun m!31485 () Bool)

(assert (=> b!38777 m!31485))

(assert (=> b!38579 d!6351))

(declare-fun bm!2934 () Bool)

(declare-fun call!2937 () (_ BitVec 32))

(assert (=> bm!2934 (= call!2937 (arrayCountValidKeys!0 lt!14445 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun b!38781 () Bool)

(declare-fun e!24627 () (_ BitVec 32))

(declare-fun e!24626 () (_ BitVec 32))

(assert (=> b!38781 (= e!24627 e!24626)))

(declare-fun c!4476 () Bool)

(assert (=> b!38781 (= c!4476 (validKeyInArray!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!6355 () Bool)

(declare-fun lt!14532 () (_ BitVec 32))

(assert (=> d!6355 (and (bvsge lt!14532 #b00000000000000000000000000000000) (bvsle lt!14532 (bvsub (size!1336 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!6355 (= lt!14532 e!24627)))

(declare-fun c!4477 () Bool)

(assert (=> d!6355 (= c!4477 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> d!6355 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 mask!853) (size!1336 lt!14445)))))

(assert (=> d!6355 (= (arrayCountValidKeys!0 lt!14445 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 mask!853)) lt!14532)))

(declare-fun b!38782 () Bool)

(assert (=> b!38782 (= e!24626 (bvadd #b00000000000000000000000000000001 call!2937))))

(declare-fun b!38783 () Bool)

(assert (=> b!38783 (= e!24627 #b00000000000000000000000000000000)))

(declare-fun b!38784 () Bool)

(assert (=> b!38784 (= e!24626 call!2937)))

(assert (= (and d!6355 c!4477) b!38783))

(assert (= (and d!6355 (not c!4477)) b!38781))

(assert (= (and b!38781 c!4476) b!38782))

(assert (= (and b!38781 (not c!4476)) b!38784))

(assert (= (or b!38782 b!38784) bm!2934))

(declare-fun m!31487 () Bool)

(assert (=> bm!2934 m!31487))

(declare-fun m!31489 () Bool)

(assert (=> b!38781 m!31489))

(assert (=> b!38781 m!31489))

(declare-fun m!31491 () Bool)

(assert (=> b!38781 m!31491))

(assert (=> bm!2903 d!6355))

(assert (=> d!6289 d!6273))

(declare-fun d!6357 () Bool)

(assert (=> d!6357 (arrayNoDuplicates!0 lt!14445 #b00000000000000000000000000000000 Nil!1058)))

(assert (=> d!6357 true))

(declare-fun res!23407 () Unit!958)

(assert (=> d!6357 (= (choose!111 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1058) res!23407)))

(declare-fun bs!1611 () Bool)

(assert (= bs!1611 d!6357))

(assert (=> bs!1611 m!31299))

(assert (=> d!6289 d!6357))

(declare-fun b!38785 () Bool)

(declare-fun e!24628 () Bool)

(declare-fun e!24629 () Bool)

(assert (=> b!38785 (= e!24628 e!24629)))

(declare-fun c!4478 () Bool)

(assert (=> b!38785 (= c!4478 (validKeyInArray!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!38786 () Bool)

(declare-fun e!24630 () Bool)

(assert (=> b!38786 (= e!24629 e!24630)))

(declare-fun lt!14537 () (_ BitVec 64))

(assert (=> b!38786 (= lt!14537 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000))))

(declare-fun lt!14536 () Unit!958)

(assert (=> b!38786 (= lt!14536 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14537 #b00000000000000000000000000000000))))

(assert (=> b!38786 (arrayContainsKey!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14537 #b00000000000000000000000000000000)))

(declare-fun lt!14538 () Unit!958)

(assert (=> b!38786 (= lt!14538 lt!14536)))

(declare-fun res!23408 () Bool)

(assert (=> b!38786 (= res!23408 (= (seekEntryOrOpen!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (Found!178 #b00000000000000000000000000000000)))))

(assert (=> b!38786 (=> (not res!23408) (not e!24630))))

(declare-fun d!6361 () Bool)

(declare-fun res!23409 () Bool)

(assert (=> d!6361 (=> res!23409 e!24628)))

(assert (=> d!6361 (= res!23409 (bvsge #b00000000000000000000000000000000 (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6361 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) e!24628)))

(declare-fun b!38787 () Bool)

(declare-fun call!2938 () Bool)

(assert (=> b!38787 (= e!24629 call!2938)))

(declare-fun b!38788 () Bool)

(assert (=> b!38788 (= e!24630 call!2938)))

(declare-fun bm!2935 () Bool)

(assert (=> bm!2935 (= call!2938 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (= (and d!6361 (not res!23409)) b!38785))

(assert (= (and b!38785 c!4478) b!38786))

(assert (= (and b!38785 (not c!4478)) b!38787))

(assert (= (and b!38786 res!23408) b!38788))

(assert (= (or b!38788 b!38787) bm!2935))

(assert (=> b!38785 m!31483))

(assert (=> b!38785 m!31483))

(assert (=> b!38785 m!31485))

(assert (=> b!38786 m!31483))

(declare-fun m!31495 () Bool)

(assert (=> b!38786 m!31495))

(declare-fun m!31497 () Bool)

(assert (=> b!38786 m!31497))

(assert (=> b!38786 m!31483))

(declare-fun m!31499 () Bool)

(assert (=> b!38786 m!31499))

(declare-fun m!31501 () Bool)

(assert (=> bm!2935 m!31501))

(assert (=> b!38580 d!6361))

(declare-fun d!6363 () Bool)

(assert (=> d!6363 (= (validKeyInArray!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000)) (and (not (= (select (arr!1229 lt!14445) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1229 lt!14445) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!38601 d!6363))

(declare-fun c!4479 () Bool)

(declare-fun bm!2936 () Bool)

(declare-fun call!2939 () Bool)

(assert (=> bm!2936 (= call!2939 (arrayNoDuplicates!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4479 (Cons!1057 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) Nil!1058) Nil!1058)))))

(declare-fun b!38795 () Bool)

(declare-fun e!24638 () Bool)

(assert (=> b!38795 (= e!24638 call!2939)))

(declare-fun b!38796 () Bool)

(declare-fun e!24640 () Bool)

(declare-fun e!24639 () Bool)

(assert (=> b!38796 (= e!24640 e!24639)))

(declare-fun res!23417 () Bool)

(assert (=> b!38796 (=> (not res!23417) (not e!24639))))

(declare-fun e!24637 () Bool)

(assert (=> b!38796 (= res!23417 (not e!24637))))

(declare-fun res!23418 () Bool)

(assert (=> b!38796 (=> (not res!23418) (not e!24637))))

(assert (=> b!38796 (= res!23418 (validKeyInArray!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!38797 () Bool)

(assert (=> b!38797 (= e!24639 e!24638)))

(assert (=> b!38797 (= c!4479 (validKeyInArray!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun d!6365 () Bool)

(declare-fun res!23416 () Bool)

(assert (=> d!6365 (=> res!23416 e!24640)))

(assert (=> d!6365 (= res!23416 (bvsge #b00000000000000000000000000000000 (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6365 (= (arrayNoDuplicates!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000 Nil!1058) e!24640)))

(declare-fun b!38798 () Bool)

(assert (=> b!38798 (= e!24637 (contains!503 Nil!1058 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!38799 () Bool)

(assert (=> b!38799 (= e!24638 call!2939)))

(assert (= (and d!6365 (not res!23416)) b!38796))

(assert (= (and b!38796 res!23418) b!38798))

(assert (= (and b!38796 res!23417) b!38797))

(assert (= (and b!38797 c!4479) b!38795))

(assert (= (and b!38797 (not c!4479)) b!38799))

(assert (= (or b!38795 b!38799) bm!2936))

(assert (=> bm!2936 m!31483))

(declare-fun m!31505 () Bool)

(assert (=> bm!2936 m!31505))

(assert (=> b!38796 m!31483))

(assert (=> b!38796 m!31483))

(assert (=> b!38796 m!31485))

(assert (=> b!38797 m!31483))

(assert (=> b!38797 m!31483))

(assert (=> b!38797 m!31485))

(assert (=> b!38798 m!31483))

(assert (=> b!38798 m!31483))

(declare-fun m!31507 () Bool)

(assert (=> b!38798 m!31507))

(assert (=> b!38581 d!6365))

(declare-fun bm!2937 () Bool)

(declare-fun call!2940 () Bool)

(declare-fun c!4480 () Bool)

(assert (=> bm!2937 (= call!2940 (arrayNoDuplicates!0 lt!14445 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4480 (Cons!1057 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4441 (Cons!1057 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) Nil!1058) Nil!1058)) (ite c!4441 (Cons!1057 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) Nil!1058) Nil!1058))))))

(declare-fun b!38800 () Bool)

(declare-fun e!24642 () Bool)

(assert (=> b!38800 (= e!24642 call!2940)))

(declare-fun b!38801 () Bool)

(declare-fun e!24644 () Bool)

(declare-fun e!24643 () Bool)

(assert (=> b!38801 (= e!24644 e!24643)))

(declare-fun res!23420 () Bool)

(assert (=> b!38801 (=> (not res!23420) (not e!24643))))

(declare-fun e!24641 () Bool)

(assert (=> b!38801 (= res!23420 (not e!24641))))

(declare-fun res!23421 () Bool)

(assert (=> b!38801 (=> (not res!23421) (not e!24641))))

(assert (=> b!38801 (= res!23421 (validKeyInArray!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!38802 () Bool)

(assert (=> b!38802 (= e!24643 e!24642)))

(assert (=> b!38802 (= c!4480 (validKeyInArray!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!6369 () Bool)

(declare-fun res!23419 () Bool)

(assert (=> d!6369 (=> res!23419 e!24644)))

(assert (=> d!6369 (= res!23419 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1336 lt!14445)))))

(assert (=> d!6369 (= (arrayNoDuplicates!0 lt!14445 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4441 (Cons!1057 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) Nil!1058) Nil!1058)) e!24644)))

(declare-fun b!38803 () Bool)

(assert (=> b!38803 (= e!24641 (contains!503 (ite c!4441 (Cons!1057 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) Nil!1058) Nil!1058) (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!38804 () Bool)

(assert (=> b!38804 (= e!24642 call!2940)))

(assert (= (and d!6369 (not res!23419)) b!38801))

(assert (= (and b!38801 res!23421) b!38803))

(assert (= (and b!38801 res!23420) b!38802))

(assert (= (and b!38802 c!4480) b!38800))

(assert (= (and b!38802 (not c!4480)) b!38804))

(assert (= (or b!38800 b!38804) bm!2937))

(assert (=> bm!2937 m!31489))

(declare-fun m!31509 () Bool)

(assert (=> bm!2937 m!31509))

(assert (=> b!38801 m!31489))

(assert (=> b!38801 m!31489))

(assert (=> b!38801 m!31491))

(assert (=> b!38802 m!31489))

(assert (=> b!38802 m!31489))

(assert (=> b!38802 m!31491))

(assert (=> b!38803 m!31489))

(assert (=> b!38803 m!31489))

(declare-fun m!31511 () Bool)

(assert (=> b!38803 m!31511))

(assert (=> bm!2909 d!6369))

(assert (=> b!38666 d!6363))

(assert (=> b!38634 d!6363))

(assert (=> d!6297 d!6281))

(declare-fun d!6371 () Bool)

(assert (=> d!6371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!14445 mask!853)))

(assert (=> d!6371 true))

(declare-fun _$30!39 () Unit!958)

(assert (=> d!6371 (= (choose!34 lt!14445 mask!853 #b00000000000000000000000000000000) _$30!39)))

(declare-fun bs!1612 () Bool)

(assert (= bs!1612 d!6371))

(assert (=> bs!1612 m!31301))

(assert (=> d!6297 d!6371))

(assert (=> d!6297 d!6303))

(declare-fun d!6373 () Bool)

(assert (=> d!6373 (arrayContainsKey!0 lt!14445 lt!14483 #b00000000000000000000000000000000)))

(declare-fun lt!14547 () Unit!958)

(declare-fun choose!13 (array!2571 (_ BitVec 64) (_ BitVec 32)) Unit!958)

(assert (=> d!6373 (= lt!14547 (choose!13 lt!14445 lt!14483 #b00000000000000000000000000000000))))

(assert (=> d!6373 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6373 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14445 lt!14483 #b00000000000000000000000000000000) lt!14547)))

(declare-fun bs!1613 () Bool)

(assert (= bs!1613 d!6373))

(assert (=> bs!1613 m!31373))

(declare-fun m!31513 () Bool)

(assert (=> bs!1613 m!31513))

(assert (=> b!38667 d!6373))

(declare-fun d!6375 () Bool)

(declare-fun res!23426 () Bool)

(declare-fun e!24658 () Bool)

(assert (=> d!6375 (=> res!23426 e!24658)))

(assert (=> d!6375 (= res!23426 (= (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14483))))

(assert (=> d!6375 (= (arrayContainsKey!0 lt!14445 lt!14483 #b00000000000000000000000000000000) e!24658)))

(declare-fun b!38827 () Bool)

(declare-fun e!24659 () Bool)

(assert (=> b!38827 (= e!24658 e!24659)))

(declare-fun res!23427 () Bool)

(assert (=> b!38827 (=> (not res!23427) (not e!24659))))

(assert (=> b!38827 (= res!23427 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1336 lt!14445)))))

(declare-fun b!38828 () Bool)

(assert (=> b!38828 (= e!24659 (arrayContainsKey!0 lt!14445 lt!14483 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6375 (not res!23426)) b!38827))

(assert (= (and b!38827 res!23427) b!38828))

(assert (=> d!6375 m!31333))

(declare-fun m!31523 () Bool)

(assert (=> b!38828 m!31523))

(assert (=> b!38667 d!6375))

(declare-fun d!6377 () Bool)

(declare-fun lt!14573 () SeekEntryResult!178)

(assert (=> d!6377 (and (or (is-Undefined!178 lt!14573) (not (is-Found!178 lt!14573)) (and (bvsge (index!2835 lt!14573) #b00000000000000000000000000000000) (bvslt (index!2835 lt!14573) (size!1336 lt!14445)))) (or (is-Undefined!178 lt!14573) (is-Found!178 lt!14573) (not (is-MissingZero!178 lt!14573)) (and (bvsge (index!2834 lt!14573) #b00000000000000000000000000000000) (bvslt (index!2834 lt!14573) (size!1336 lt!14445)))) (or (is-Undefined!178 lt!14573) (is-Found!178 lt!14573) (is-MissingZero!178 lt!14573) (not (is-MissingVacant!178 lt!14573)) (and (bvsge (index!2837 lt!14573) #b00000000000000000000000000000000) (bvslt (index!2837 lt!14573) (size!1336 lt!14445)))) (or (is-Undefined!178 lt!14573) (ite (is-Found!178 lt!14573) (= (select (arr!1229 lt!14445) (index!2835 lt!14573)) (select (arr!1229 lt!14445) #b00000000000000000000000000000000)) (ite (is-MissingZero!178 lt!14573) (= (select (arr!1229 lt!14445) (index!2834 lt!14573)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!178 lt!14573) (= (select (arr!1229 lt!14445) (index!2837 lt!14573)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!24695 () SeekEntryResult!178)

(assert (=> d!6377 (= lt!14573 e!24695)))

(declare-fun c!4510 () Bool)

(declare-fun lt!14574 () SeekEntryResult!178)

(assert (=> d!6377 (= c!4510 (and (is-Intermediate!178 lt!14574) (undefined!990 lt!14574)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2571 (_ BitVec 32)) SeekEntryResult!178)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!6377 (= lt!14574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) mask!853) (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14445 mask!853))))

(assert (=> d!6377 (validMask!0 mask!853)))

(assert (=> d!6377 (= (seekEntryOrOpen!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14445 mask!853) lt!14573)))

(declare-fun b!38883 () Bool)

(declare-fun c!4511 () Bool)

(declare-fun lt!14575 () (_ BitVec 64))

(assert (=> b!38883 (= c!4511 (= lt!14575 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!24696 () SeekEntryResult!178)

(declare-fun e!24694 () SeekEntryResult!178)

(assert (=> b!38883 (= e!24696 e!24694)))

(declare-fun b!38884 () Bool)

(assert (=> b!38884 (= e!24694 (MissingZero!178 (index!2836 lt!14574)))))

(declare-fun b!38885 () Bool)

(assert (=> b!38885 (= e!24695 e!24696)))

(assert (=> b!38885 (= lt!14575 (select (arr!1229 lt!14445) (index!2836 lt!14574)))))

(declare-fun c!4512 () Bool)

(assert (=> b!38885 (= c!4512 (= lt!14575 (select (arr!1229 lt!14445) #b00000000000000000000000000000000)))))

(declare-fun b!38886 () Bool)

(assert (=> b!38886 (= e!24696 (Found!178 (index!2836 lt!14574)))))

(declare-fun b!38887 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2571 (_ BitVec 32)) SeekEntryResult!178)

(assert (=> b!38887 (= e!24694 (seekKeyOrZeroReturnVacant!0 (x!7614 lt!14574) (index!2836 lt!14574) (index!2836 lt!14574) (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14445 mask!853))))

(declare-fun b!38888 () Bool)

(assert (=> b!38888 (= e!24695 Undefined!178)))

(assert (= (and d!6377 c!4510) b!38888))

(assert (= (and d!6377 (not c!4510)) b!38885))

(assert (= (and b!38885 c!4512) b!38886))

(assert (= (and b!38885 (not c!4512)) b!38883))

(assert (= (and b!38883 c!4511) b!38884))

(assert (= (and b!38883 (not c!4511)) b!38887))

(declare-fun m!31569 () Bool)

(assert (=> d!6377 m!31569))

(assert (=> d!6377 m!31295))

(declare-fun m!31571 () Bool)

(assert (=> d!6377 m!31571))

(declare-fun m!31573 () Bool)

(assert (=> d!6377 m!31573))

(declare-fun m!31575 () Bool)

(assert (=> d!6377 m!31575))

(assert (=> d!6377 m!31333))

(declare-fun m!31577 () Bool)

(assert (=> d!6377 m!31577))

(assert (=> d!6377 m!31333))

(assert (=> d!6377 m!31575))

(declare-fun m!31579 () Bool)

(assert (=> b!38885 m!31579))

(assert (=> b!38887 m!31333))

(declare-fun m!31581 () Bool)

(assert (=> b!38887 m!31581))

(assert (=> b!38667 d!6377))

(assert (=> b!38635 d!6363))

(declare-fun d!6389 () Bool)

(declare-fun lt!14578 () Bool)

(declare-fun content!27 (List!1061) (Set (_ BitVec 64)))

(assert (=> d!6389 (= lt!14578 (member (select (arr!1229 lt!14445) #b00000000000000000000000000000000) (content!27 Nil!1058)))))

(declare-fun e!24702 () Bool)

(assert (=> d!6389 (= lt!14578 e!24702)))

(declare-fun res!23447 () Bool)

(assert (=> d!6389 (=> (not res!23447) (not e!24702))))

(assert (=> d!6389 (= res!23447 (is-Cons!1057 Nil!1058))))

(assert (=> d!6389 (= (contains!503 Nil!1058 (select (arr!1229 lt!14445) #b00000000000000000000000000000000)) lt!14578)))

(declare-fun b!38893 () Bool)

(declare-fun e!24701 () Bool)

(assert (=> b!38893 (= e!24702 e!24701)))

(declare-fun res!23446 () Bool)

(assert (=> b!38893 (=> res!23446 e!24701)))

(assert (=> b!38893 (= res!23446 (= (h!1625 Nil!1058) (select (arr!1229 lt!14445) #b00000000000000000000000000000000)))))

(declare-fun b!38894 () Bool)

(assert (=> b!38894 (= e!24701 (contains!503 (t!3908 Nil!1058) (select (arr!1229 lt!14445) #b00000000000000000000000000000000)))))

(assert (= (and d!6389 res!23447) b!38893))

(assert (= (and b!38893 (not res!23446)) b!38894))

(declare-fun m!31583 () Bool)

(assert (=> d!6389 m!31583))

(assert (=> d!6389 m!31333))

(declare-fun m!31585 () Bool)

(assert (=> d!6389 m!31585))

(assert (=> b!38894 m!31333))

(declare-fun m!31587 () Bool)

(assert (=> b!38894 m!31587))

(assert (=> b!38636 d!6389))

(declare-fun b!38895 () Bool)

(declare-fun e!24703 () Bool)

(declare-fun e!24704 () Bool)

(assert (=> b!38895 (= e!24703 e!24704)))

(declare-fun c!4513 () Bool)

(assert (=> b!38895 (= c!4513 (validKeyInArray!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!38896 () Bool)

(declare-fun e!24705 () Bool)

(assert (=> b!38896 (= e!24704 e!24705)))

(declare-fun lt!14580 () (_ BitVec 64))

(assert (=> b!38896 (= lt!14580 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!14579 () Unit!958)

(assert (=> b!38896 (= lt!14579 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14445 lt!14580 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!38896 (arrayContainsKey!0 lt!14445 lt!14580 #b00000000000000000000000000000000)))

(declare-fun lt!14581 () Unit!958)

(assert (=> b!38896 (= lt!14581 lt!14579)))

(declare-fun res!23448 () Bool)

(assert (=> b!38896 (= res!23448 (= (seekEntryOrOpen!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14445 mask!853) (Found!178 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!38896 (=> (not res!23448) (not e!24705))))

(declare-fun d!6391 () Bool)

(declare-fun res!23449 () Bool)

(assert (=> d!6391 (=> res!23449 e!24703)))

(assert (=> d!6391 (= res!23449 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1336 lt!14445)))))

(assert (=> d!6391 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!14445 mask!853) e!24703)))

(declare-fun b!38897 () Bool)

(declare-fun call!2945 () Bool)

(assert (=> b!38897 (= e!24704 call!2945)))

(declare-fun b!38898 () Bool)

(assert (=> b!38898 (= e!24705 call!2945)))

(declare-fun bm!2942 () Bool)

(assert (=> bm!2942 (= call!2945 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14445 mask!853))))

(assert (= (and d!6391 (not res!23449)) b!38895))

(assert (= (and b!38895 c!4513) b!38896))

(assert (= (and b!38895 (not c!4513)) b!38897))

(assert (= (and b!38896 res!23448) b!38898))

(assert (= (or b!38898 b!38897) bm!2942))

(assert (=> b!38895 m!31489))

(assert (=> b!38895 m!31489))

(assert (=> b!38895 m!31491))

(assert (=> b!38896 m!31489))

(declare-fun m!31589 () Bool)

(assert (=> b!38896 m!31589))

(declare-fun m!31591 () Bool)

(assert (=> b!38896 m!31591))

(assert (=> b!38896 m!31489))

(declare-fun m!31593 () Bool)

(assert (=> b!38896 m!31593))

(declare-fun m!31595 () Bool)

(assert (=> bm!2942 m!31595))

(assert (=> bm!2915 d!6391))

(assert (=> d!6299 d!6265))

(declare-fun d!6393 () Bool)

(assert (=> d!6393 (= (arrayCountValidKeys!0 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(assert (=> d!6393 true))

(declare-fun _$88!25 () Unit!958)

(assert (=> d!6393 (= (choose!59 lt!14445 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) _$88!25)))

(declare-fun bs!1614 () Bool)

(assert (= bs!1614 d!6393))

(assert (=> bs!1614 m!31309))

(assert (=> d!6299 d!6393))

(declare-fun e!24708 () Bool)

(declare-fun b!38910 () Bool)

(assert (=> b!38910 (= e!24708 (and (bvsge (extraKeys!1684 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000) (bvsle (extraKeys!1684 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000011) (bvsge (_vacant!164 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000)))))

(declare-fun d!6395 () Bool)

(declare-fun res!23458 () Bool)

(assert (=> d!6395 (=> (not res!23458) (not e!24708))))

(assert (=> d!6395 (= res!23458 (validMask!0 (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (=> d!6395 (= (simpleValid!20 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) e!24708)))

(declare-fun b!38907 () Bool)

(declare-fun res!23461 () Bool)

(assert (=> b!38907 (=> (not res!23461) (not e!24708))))

(assert (=> b!38907 (= res!23461 (and (= (size!1337 (_values!1776 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001)) (= (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (size!1337 (_values!1776 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))) (bvsge (_size!164 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000000) (bvsle (_size!164 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001))))))

(declare-fun b!38909 () Bool)

(declare-fun res!23459 () Bool)

(assert (=> b!38909 (=> (not res!23459) (not e!24708))))

(declare-fun size!1352 (LongMapFixedSize!230) (_ BitVec 32))

(assert (=> b!38909 (= res!23459 (= (size!1352 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd (_size!164 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvsdiv (bvadd (extraKeys!1684 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!38908 () Bool)

(declare-fun res!23460 () Bool)

(assert (=> b!38908 (=> (not res!23460) (not e!24708))))

(assert (=> b!38908 (= res!23460 (bvsge (size!1352 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (_size!164 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (= (and d!6395 res!23458) b!38907))

(assert (= (and b!38907 res!23461) b!38908))

(assert (= (and b!38908 res!23460) b!38909))

(assert (= (and b!38909 res!23459) b!38910))

(declare-fun m!31597 () Bool)

(assert (=> d!6395 m!31597))

(declare-fun m!31599 () Bool)

(assert (=> b!38909 m!31599))

(assert (=> b!38908 m!31599))

(assert (=> d!6263 d!6395))

(push 1)

(assert (not b!38797))

(assert (not bm!2933))

(assert (not b_next!1355))

(assert (not d!6373))

(assert (not bm!2942))

(assert (not d!6371))

(assert (not b!38802))

(assert (not b!38895))

(assert (not b!38785))

(assert (not b!38894))

(assert (not b!38796))

(assert (not b!38887))

(assert (not bm!2936))

(assert (not b!38801))

(assert (not b!38786))

(assert (not b!38798))

(assert (not b_lambda!2037))

(assert (not bm!2934))

(assert (not d!6395))

(assert (not d!6357))

(assert (not d!6377))

(assert b_and!2335)

(assert (not bm!2935))

(assert (not b!38908))

(assert tp_is_empty!1745)

(assert (not b!38781))

(assert (not d!6389))

(assert (not d!6393))

(assert (not bm!2937))

(assert (not b!38777))

(assert (not b!38896))

(assert (not b!38828))

(assert (not b!38803))

(assert (not b!38909))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2335)

(assert (not b_next!1355))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6481 () Bool)

(assert (=> d!6481 (= (validKeyInArray!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (and (not (= (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!38785 d!6481))

(declare-fun d!6483 () Bool)

(assert (=> d!6483 (= (size!1352 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvadd (_size!164 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (bvsdiv (bvadd (extraKeys!1684 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!38909 d!6483))

(assert (=> d!6393 d!6265))

(declare-fun d!6485 () Bool)

(assert (=> d!6485 (arrayContainsKey!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14537 #b00000000000000000000000000000000)))

(declare-fun lt!14635 () Unit!958)

(assert (=> d!6485 (= lt!14635 (choose!13 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14537 #b00000000000000000000000000000000))))

(assert (=> d!6485 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!6485 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14537 #b00000000000000000000000000000000) lt!14635)))

(declare-fun bs!1621 () Bool)

(assert (= bs!1621 d!6485))

(assert (=> bs!1621 m!31497))

(declare-fun m!31763 () Bool)

(assert (=> bs!1621 m!31763))

(assert (=> b!38786 d!6485))

(declare-fun d!6487 () Bool)

(declare-fun res!23503 () Bool)

(declare-fun e!24792 () Bool)

(assert (=> d!6487 (=> res!23503 e!24792)))

(assert (=> d!6487 (= res!23503 (= (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) lt!14537))))

(assert (=> d!6487 (= (arrayContainsKey!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14537 #b00000000000000000000000000000000) e!24792)))

(declare-fun b!39043 () Bool)

(declare-fun e!24793 () Bool)

(assert (=> b!39043 (= e!24792 e!24793)))

(declare-fun res!23504 () Bool)

(assert (=> b!39043 (=> (not res!23504) (not e!24793))))

(assert (=> b!39043 (= res!23504 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(declare-fun b!39044 () Bool)

(assert (=> b!39044 (= e!24793 (arrayContainsKey!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14537 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6487 (not res!23503)) b!39043))

(assert (= (and b!39043 res!23504) b!39044))

(assert (=> d!6487 m!31483))

(declare-fun m!31765 () Bool)

(assert (=> b!39044 m!31765))

(assert (=> b!38786 d!6487))

(declare-fun d!6489 () Bool)

(declare-fun lt!14636 () SeekEntryResult!178)

(assert (=> d!6489 (and (or (is-Undefined!178 lt!14636) (not (is-Found!178 lt!14636)) (and (bvsge (index!2835 lt!14636) #b00000000000000000000000000000000) (bvslt (index!2835 lt!14636) (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))) (or (is-Undefined!178 lt!14636) (is-Found!178 lt!14636) (not (is-MissingZero!178 lt!14636)) (and (bvsge (index!2834 lt!14636) #b00000000000000000000000000000000) (bvslt (index!2834 lt!14636) (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))) (or (is-Undefined!178 lt!14636) (is-Found!178 lt!14636) (is-MissingZero!178 lt!14636) (not (is-MissingVacant!178 lt!14636)) (and (bvsge (index!2837 lt!14636) #b00000000000000000000000000000000) (bvslt (index!2837 lt!14636) (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))) (or (is-Undefined!178 lt!14636) (ite (is-Found!178 lt!14636) (= (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2835 lt!14636)) (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)) (ite (is-MissingZero!178 lt!14636) (= (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2834 lt!14636)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!178 lt!14636) (= (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2837 lt!14636)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!24799 () SeekEntryResult!178)

(assert (=> d!6489 (= lt!14636 e!24799)))

(declare-fun c!4562 () Bool)

(declare-fun lt!14637 () SeekEntryResult!178)

(assert (=> d!6489 (= c!4562 (and (is-Intermediate!178 lt!14637) (undefined!990 lt!14637)))))

(assert (=> d!6489 (= lt!14637 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (=> d!6489 (validMask!0 (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(assert (=> d!6489 (= (seekEntryOrOpen!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) lt!14636)))

(declare-fun b!39051 () Bool)

(declare-fun c!4563 () Bool)

(declare-fun lt!14638 () (_ BitVec 64))

(assert (=> b!39051 (= c!4563 (= lt!14638 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!24800 () SeekEntryResult!178)

(declare-fun e!24798 () SeekEntryResult!178)

(assert (=> b!39051 (= e!24800 e!24798)))

(declare-fun b!39052 () Bool)

(assert (=> b!39052 (= e!24798 (MissingZero!178 (index!2836 lt!14637)))))

(declare-fun b!39053 () Bool)

(assert (=> b!39053 (= e!24799 e!24800)))

(assert (=> b!39053 (= lt!14638 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (index!2836 lt!14637)))))

(declare-fun c!4564 () Bool)

(assert (=> b!39053 (= c!4564 (= lt!14638 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000)))))

(declare-fun b!39054 () Bool)

(assert (=> b!39054 (= e!24800 (Found!178 (index!2836 lt!14637)))))

(declare-fun b!39055 () Bool)

(assert (=> b!39055 (= e!24798 (seekKeyOrZeroReturnVacant!0 (x!7614 lt!14637) (index!2836 lt!14637) (index!2836 lt!14637) (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) #b00000000000000000000000000000000) (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(declare-fun b!39056 () Bool)

(assert (=> b!39056 (= e!24799 Undefined!178)))

(assert (= (and d!6489 c!4562) b!39056))

(assert (= (and d!6489 (not c!4562)) b!39053))

(assert (= (and b!39053 c!4564) b!39054))

(assert (= (and b!39053 (not c!4564)) b!39051))

(assert (= (and b!39051 c!4563) b!39052))

(assert (= (and b!39051 (not c!4563)) b!39055))

(declare-fun m!31767 () Bool)

(assert (=> d!6489 m!31767))

(assert (=> d!6489 m!31597))

(declare-fun m!31769 () Bool)

(assert (=> d!6489 m!31769))

(declare-fun m!31771 () Bool)

(assert (=> d!6489 m!31771))

(declare-fun m!31773 () Bool)

(assert (=> d!6489 m!31773))

(assert (=> d!6489 m!31483))

(declare-fun m!31775 () Bool)

(assert (=> d!6489 m!31775))

(assert (=> d!6489 m!31483))

(assert (=> d!6489 m!31773))

(declare-fun m!31777 () Bool)

(assert (=> b!39053 m!31777))

(assert (=> b!39055 m!31483))

(declare-fun m!31779 () Bool)

(assert (=> b!39055 m!31779))

(assert (=> b!38786 d!6489))

(declare-fun b!39061 () Bool)

(declare-fun e!24803 () Bool)

(declare-fun e!24804 () Bool)

(assert (=> b!39061 (= e!24803 e!24804)))

(declare-fun c!4565 () Bool)

(assert (=> b!39061 (= c!4565 (validKeyInArray!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39062 () Bool)

(declare-fun e!24805 () Bool)

(assert (=> b!39062 (= e!24804 e!24805)))

(declare-fun lt!14640 () (_ BitVec 64))

(assert (=> b!39062 (= lt!14640 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!14639 () Unit!958)

(assert (=> b!39062 (= lt!14639 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14640 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!39062 (arrayContainsKey!0 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) lt!14640 #b00000000000000000000000000000000)))

(declare-fun lt!14641 () Unit!958)

(assert (=> b!39062 (= lt!14641 lt!14639)))

(declare-fun res!23511 () Bool)

(assert (=> b!39062 (= res!23511 (= (seekEntryOrOpen!0 (select (arr!1229 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) (Found!178 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!39062 (=> (not res!23511) (not e!24805))))

(declare-fun d!6491 () Bool)

(declare-fun res!23512 () Bool)

(assert (=> d!6491 (=> res!23512 e!24803)))

(assert (=> d!6491 (= res!23512 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1336 (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))))

(assert (=> d!6491 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))) e!24803)))

(declare-fun b!39063 () Bool)

(declare-fun call!2955 () Bool)

(assert (=> b!39063 (= e!24804 call!2955)))

(declare-fun b!39064 () Bool)

(assert (=> b!39064 (= e!24805 call!2955)))

(declare-fun bm!2952 () Bool)

(assert (=> bm!2952 (= call!2955 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3246 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)) (mask!5114 (LongMapFixedSize!231 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!14448 lt!14448 #b00000000000000000000000000000000 lt!14445 (array!2574 ((as const (Array (_ BitVec 32) ValueCell!625)) EmptyCell!625) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000))))))

(assert (= (and d!6491 (not res!23512)) b!39061))

(assert (= (and b!39061 c!4565) b!39062))

(assert (= (and b!39061 (not c!4565)) b!39063))

(assert (= (and b!39062 res!23511) b!39064))

(assert (= (or b!39064 b!39063) bm!2952))

(declare-fun m!31781 () Bool)

(assert (=> b!39061 m!31781))

(assert (=> b!39061 m!31781))

(declare-fun m!31783 () Bool)

(assert (=> b!39061 m!31783))

(assert (=> b!39062 m!31781))

(declare-fun m!31785 () Bool)

(assert (=> b!39062 m!31785))

(declare-fun m!31787 () Bool)

(assert (=> b!39062 m!31787))

(assert (=> b!39062 m!31781))

(declare-fun m!31789 () Bool)

(assert (=> b!39062 m!31789))

(declare-fun m!31791 () Bool)

(assert (=> bm!2952 m!31791))

(assert (=> bm!2935 d!6491))

(assert (=> d!6371 d!6281))

(assert (=> d!6357 d!6273))

(declare-fun d!6493 () Bool)

(assert (=> d!6493 (= (content!27 Nil!1058) (as emptyset (Set (_ BitVec 64))))))

(assert (=> d!6389 d!6493))

(declare-fun d!6495 () Bool)

(assert (=> d!6495 (= (validKeyInArray!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (and (not (= (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!38895 d!6495))

(declare-fun d!6497 () Bool)

(assert (=> d!6497 (arrayContainsKey!0 lt!14445 lt!14580 #b00000000000000000000000000000000)))

(declare-fun lt!14642 () Unit!958)

(assert (=> d!6497 (= lt!14642 (choose!13 lt!14445 lt!14580 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> d!6497 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(assert (=> d!6497 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14445 lt!14580 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14642)))

(declare-fun bs!1622 () Bool)

(assert (= bs!1622 d!6497))

(assert (=> bs!1622 m!31591))

(declare-fun m!31793 () Bool)

(assert (=> bs!1622 m!31793))

(assert (=> b!38896 d!6497))

(declare-fun d!6499 () Bool)

(declare-fun res!23516 () Bool)

(declare-fun e!24811 () Bool)

(assert (=> d!6499 (=> res!23516 e!24811)))

(assert (=> d!6499 (= res!23516 (= (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14580))))

(assert (=> d!6499 (= (arrayContainsKey!0 lt!14445 lt!14580 #b00000000000000000000000000000000) e!24811)))

(declare-fun b!39074 () Bool)

(declare-fun e!24812 () Bool)

(assert (=> b!39074 (= e!24811 e!24812)))

(declare-fun res!23517 () Bool)

(assert (=> b!39074 (=> (not res!23517) (not e!24812))))

(assert (=> b!39074 (= res!23517 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1336 lt!14445)))))

(declare-fun b!39075 () Bool)

(assert (=> b!39075 (= e!24812 (arrayContainsKey!0 lt!14445 lt!14580 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!6499 (not res!23516)) b!39074))

(assert (= (and b!39074 res!23517) b!39075))

(assert (=> d!6499 m!31333))

(declare-fun m!31795 () Bool)

(assert (=> b!39075 m!31795))

(assert (=> b!38896 d!6499))

(declare-fun d!6501 () Bool)

(declare-fun lt!14649 () SeekEntryResult!178)

(assert (=> d!6501 (and (or (is-Undefined!178 lt!14649) (not (is-Found!178 lt!14649)) (and (bvsge (index!2835 lt!14649) #b00000000000000000000000000000000) (bvslt (index!2835 lt!14649) (size!1336 lt!14445)))) (or (is-Undefined!178 lt!14649) (is-Found!178 lt!14649) (not (is-MissingZero!178 lt!14649)) (and (bvsge (index!2834 lt!14649) #b00000000000000000000000000000000) (bvslt (index!2834 lt!14649) (size!1336 lt!14445)))) (or (is-Undefined!178 lt!14649) (is-Found!178 lt!14649) (is-MissingZero!178 lt!14649) (not (is-MissingVacant!178 lt!14649)) (and (bvsge (index!2837 lt!14649) #b00000000000000000000000000000000) (bvslt (index!2837 lt!14649) (size!1336 lt!14445)))) (or (is-Undefined!178 lt!14649) (ite (is-Found!178 lt!14649) (= (select (arr!1229 lt!14445) (index!2835 lt!14649)) (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (ite (is-MissingZero!178 lt!14649) (= (select (arr!1229 lt!14445) (index!2834 lt!14649)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!178 lt!14649) (= (select (arr!1229 lt!14445) (index!2837 lt!14649)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!24818 () SeekEntryResult!178)

(assert (=> d!6501 (= lt!14649 e!24818)))

(declare-fun c!4573 () Bool)

(declare-fun lt!14650 () SeekEntryResult!178)

(assert (=> d!6501 (= c!4573 (and (is-Intermediate!178 lt!14650) (undefined!990 lt!14650)))))

(assert (=> d!6501 (= lt!14650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) mask!853) (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14445 mask!853))))

(assert (=> d!6501 (validMask!0 mask!853)))

(assert (=> d!6501 (= (seekEntryOrOpen!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14445 mask!853) lt!14649)))

(declare-fun b!39084 () Bool)

(declare-fun c!4574 () Bool)

(declare-fun lt!14651 () (_ BitVec 64))

(assert (=> b!39084 (= c!4574 (= lt!14651 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!24819 () SeekEntryResult!178)

(declare-fun e!24817 () SeekEntryResult!178)

(assert (=> b!39084 (= e!24819 e!24817)))

(declare-fun b!39085 () Bool)

(assert (=> b!39085 (= e!24817 (MissingZero!178 (index!2836 lt!14650)))))

(declare-fun b!39086 () Bool)

(assert (=> b!39086 (= e!24818 e!24819)))

(assert (=> b!39086 (= lt!14651 (select (arr!1229 lt!14445) (index!2836 lt!14650)))))

(declare-fun c!4575 () Bool)

(assert (=> b!39086 (= c!4575 (= lt!14651 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!39088 () Bool)

(assert (=> b!39088 (= e!24819 (Found!178 (index!2836 lt!14650)))))

(declare-fun b!39090 () Bool)

(assert (=> b!39090 (= e!24817 (seekKeyOrZeroReturnVacant!0 (x!7614 lt!14650) (index!2836 lt!14650) (index!2836 lt!14650) (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!14445 mask!853))))

(declare-fun b!39091 () Bool)

(assert (=> b!39091 (= e!24818 Undefined!178)))

(assert (= (and d!6501 c!4573) b!39091))

(assert (= (and d!6501 (not c!4573)) b!39086))

(assert (= (and b!39086 c!4575) b!39088))

(assert (= (and b!39086 (not c!4575)) b!39084))

(assert (= (and b!39084 c!4574) b!39085))

(assert (= (and b!39084 (not c!4574)) b!39090))

(declare-fun m!31805 () Bool)

(assert (=> d!6501 m!31805))

(assert (=> d!6501 m!31295))

(declare-fun m!31807 () Bool)

(assert (=> d!6501 m!31807))

(declare-fun m!31809 () Bool)

(assert (=> d!6501 m!31809))

(declare-fun m!31811 () Bool)

(assert (=> d!6501 m!31811))

(assert (=> d!6501 m!31489))

(declare-fun m!31813 () Bool)

(assert (=> d!6501 m!31813))

(assert (=> d!6501 m!31489))

(assert (=> d!6501 m!31811))

(declare-fun m!31815 () Bool)

(assert (=> b!39086 m!31815))

(assert (=> b!39090 m!31489))

(declare-fun m!31817 () Bool)

(assert (=> b!39090 m!31817))

(assert (=> b!38896 d!6501))

(assert (=> d!6373 d!6375))

(declare-fun d!6505 () Bool)

(assert (=> d!6505 (arrayContainsKey!0 lt!14445 lt!14483 #b00000000000000000000000000000000)))

(assert (=> d!6505 true))

(declare-fun _$60!329 () Unit!958)

(assert (=> d!6505 (= (choose!13 lt!14445 lt!14483 #b00000000000000000000000000000000) _$60!329)))

(declare-fun bs!1623 () Bool)

(assert (= bs!1623 d!6505))

(assert (=> bs!1623 m!31373))

(assert (=> d!6373 d!6505))

(declare-fun d!6507 () Bool)

(assert (not d!6507))

(assert (=> b!38894 d!6507))

(declare-fun b!39135 () Bool)

(declare-fun e!24848 () SeekEntryResult!178)

(assert (=> b!39135 (= e!24848 (Intermediate!178 false (toIndex!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!39136 () Bool)

(declare-fun e!24849 () Bool)

(declare-fun e!24851 () Bool)

(assert (=> b!39136 (= e!24849 e!24851)))

(declare-fun res!23535 () Bool)

(declare-fun lt!14669 () SeekEntryResult!178)

(assert (=> b!39136 (= res!23535 (and (is-Intermediate!178 lt!14669) (not (undefined!990 lt!14669)) (bvslt (x!7614 lt!14669) #b01111111111111111111111111111110) (bvsge (x!7614 lt!14669) #b00000000000000000000000000000000) (bvsge (x!7614 lt!14669) #b00000000000000000000000000000000)))))

(assert (=> b!39136 (=> (not res!23535) (not e!24851))))

(declare-fun d!6509 () Bool)

(assert (=> d!6509 e!24849))

(declare-fun c!4591 () Bool)

(assert (=> d!6509 (= c!4591 (and (is-Intermediate!178 lt!14669) (undefined!990 lt!14669)))))

(declare-fun e!24850 () SeekEntryResult!178)

(assert (=> d!6509 (= lt!14669 e!24850)))

(declare-fun c!4592 () Bool)

(assert (=> d!6509 (= c!4592 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!14670 () (_ BitVec 64))

(assert (=> d!6509 (= lt!14670 (select (arr!1229 lt!14445) (toIndex!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) mask!853)))))

(assert (=> d!6509 (validMask!0 mask!853)))

(assert (=> d!6509 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) mask!853) (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14445 mask!853) lt!14669)))

(declare-fun b!39137 () Bool)

(assert (=> b!39137 (and (bvsge (index!2836 lt!14669) #b00000000000000000000000000000000) (bvslt (index!2836 lt!14669) (size!1336 lt!14445)))))

(declare-fun res!23534 () Bool)

(assert (=> b!39137 (= res!23534 (= (select (arr!1229 lt!14445) (index!2836 lt!14669)) (select (arr!1229 lt!14445) #b00000000000000000000000000000000)))))

(declare-fun e!24852 () Bool)

(assert (=> b!39137 (=> res!23534 e!24852)))

(assert (=> b!39137 (= e!24851 e!24852)))

(declare-fun b!39138 () Bool)

(assert (=> b!39138 (and (bvsge (index!2836 lt!14669) #b00000000000000000000000000000000) (bvslt (index!2836 lt!14669) (size!1336 lt!14445)))))

(assert (=> b!39138 (= e!24852 (= (select (arr!1229 lt!14445) (index!2836 lt!14669)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!39139 () Bool)

(assert (=> b!39139 (= e!24849 (bvsge (x!7614 lt!14669) #b01111111111111111111111111111110))))

(declare-fun b!39140 () Bool)

(assert (=> b!39140 (= e!24850 (Intermediate!178 true (toIndex!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000))))

(declare-fun b!39141 () Bool)

(assert (=> b!39141 (= e!24850 e!24848)))

(declare-fun c!4593 () Bool)

(assert (=> b!39141 (= c!4593 (or (= lt!14670 (select (arr!1229 lt!14445) #b00000000000000000000000000000000)) (= (bvadd lt!14670 lt!14670) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!39142 () Bool)

(assert (=> b!39142 (and (bvsge (index!2836 lt!14669) #b00000000000000000000000000000000) (bvslt (index!2836 lt!14669) (size!1336 lt!14445)))))

(declare-fun res!23536 () Bool)

(assert (=> b!39142 (= res!23536 (= (select (arr!1229 lt!14445) (index!2836 lt!14669)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39142 (=> res!23536 e!24852)))

(declare-fun b!39143 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!39143 (= e!24848 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) mask!853) #b00000000000000000000000000000000 mask!853) (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14445 mask!853))))

(assert (= (and d!6509 c!4592) b!39140))

(assert (= (and d!6509 (not c!4592)) b!39141))

(assert (= (and b!39141 c!4593) b!39135))

(assert (= (and b!39141 (not c!4593)) b!39143))

(assert (= (and d!6509 c!4591) b!39139))

(assert (= (and d!6509 (not c!4591)) b!39136))

(assert (= (and b!39136 res!23535) b!39137))

(assert (= (and b!39137 (not res!23534)) b!39142))

(assert (= (and b!39142 (not res!23536)) b!39138))

(declare-fun m!31849 () Bool)

(assert (=> b!39142 m!31849))

(assert (=> b!39137 m!31849))

(assert (=> b!39138 m!31849))

(assert (=> d!6509 m!31575))

(declare-fun m!31851 () Bool)

(assert (=> d!6509 m!31851))

(assert (=> d!6509 m!31295))

(assert (=> b!39143 m!31575))

(declare-fun m!31853 () Bool)

(assert (=> b!39143 m!31853))

(assert (=> b!39143 m!31853))

(assert (=> b!39143 m!31333))

(declare-fun m!31855 () Bool)

(assert (=> b!39143 m!31855))

(assert (=> d!6377 d!6509))

(declare-fun d!6525 () Bool)

(declare-fun lt!14676 () (_ BitVec 32))

(declare-fun lt!14675 () (_ BitVec 32))

(assert (=> d!6525 (= lt!14676 (bvmul (bvxor lt!14675 (bvlshr lt!14675 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!6525 (= lt!14675 ((_ extract 31 0) (bvand (bvxor (select (arr!1229 lt!14445) #b00000000000000000000000000000000) (bvlshr (select (arr!1229 lt!14445) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!6525 (and (bvsge mask!853 #b00000000000000000000000000000000) (let ((res!23537 (let ((h!1628 ((_ extract 31 0) (bvand (bvxor (select (arr!1229 lt!14445) #b00000000000000000000000000000000) (bvlshr (select (arr!1229 lt!14445) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7631 (bvmul (bvxor h!1628 (bvlshr h!1628 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7631 (bvlshr x!7631 #b00000000000000000000000000001101)) mask!853))))) (and (bvslt res!23537 (bvadd mask!853 #b00000000000000000000000000000001)) (bvsge res!23537 #b00000000000000000000000000000000))))))

(assert (=> d!6525 (= (toIndex!0 (select (arr!1229 lt!14445) #b00000000000000000000000000000000) mask!853) (bvand (bvxor lt!14676 (bvlshr lt!14676 #b00000000000000000000000000001101)) mask!853))))

(assert (=> d!6377 d!6525))

(assert (=> d!6377 d!6303))

(declare-fun b!39144 () Bool)

(declare-fun e!24853 () Bool)

(declare-fun e!24854 () Bool)

(assert (=> b!39144 (= e!24853 e!24854)))

(declare-fun c!4594 () Bool)

(assert (=> b!39144 (= c!4594 (validKeyInArray!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(declare-fun b!39145 () Bool)

(declare-fun e!24855 () Bool)

(assert (=> b!39145 (= e!24854 e!24855)))

(declare-fun lt!14678 () (_ BitVec 64))

(assert (=> b!39145 (= lt!14678 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(declare-fun lt!14677 () Unit!958)

(assert (=> b!39145 (= lt!14677 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!14445 lt!14678 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (=> b!39145 (arrayContainsKey!0 lt!14445 lt!14678 #b00000000000000000000000000000000)))

(declare-fun lt!14679 () Unit!958)

(assert (=> b!39145 (= lt!14679 lt!14677)))

(declare-fun res!23538 () Bool)

(assert (=> b!39145 (= res!23538 (= (seekEntryOrOpen!0 (select (arr!1229 lt!14445) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)) lt!14445 mask!853) (Found!178 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001))))))

(assert (=> b!39145 (=> (not res!23538) (not e!24855))))

(declare-fun d!6527 () Bool)

(declare-fun res!23539 () Bool)

(assert (=> d!6527 (=> res!23539 e!24853)))

(assert (=> d!6527 (= res!23539 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1336 lt!14445)))))

(assert (=> d!6527 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14445 mask!853) e!24853)))

(declare-fun b!39146 () Bool)

(declare-fun call!2959 () Bool)

(assert (=> b!39146 (= e!24854 call!2959)))

(declare-fun b!39147 () Bool)

(assert (=> b!39147 (= e!24855 call!2959)))

(declare-fun bm!2956 () Bool)

(assert (=> bm!2956 (= call!2959 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!14445 mask!853))))

(assert (= (and d!6527 (not res!23539)) b!39144))

(assert (= (and b!39144 c!4594) b!39145))

(assert (= (and b!39144 (not c!4594)) b!39146))

(assert (= (and b!39145 res!23538) b!39147))

(assert (= (or b!39147 b!39146) bm!2956))

(declare-fun m!31857 () Bool)

(assert (=> b!39144 m!31857))

(assert (=> b!39144 m!31857))

(declare-fun m!31859 () Bool)

(assert (=> b!39144 m!31859))

(assert (=> b!39145 m!31857))

(declare-fun m!31861 () Bool)

(assert (=> b!39145 m!31861))

(declare-fun m!31863 () Bool)

(assert (=> b!39145 m!31863))

(assert (=> b!39145 m!31857))

(declare-fun m!31865 () Bool)

(assert (=> b!39145 m!31865))

(declare-fun m!31867 () Bool)

(assert (=> bm!2956 m!31867))

(assert (=> bm!2942 d!6527))

(declare-fun b!39160 () Bool)

(declare-fun e!24862 () SeekEntryResult!178)

(assert (=> b!39160 (= e!24862 (Found!178 (index!2836 lt!14574)))))

(declare-fun b!39161 () Bool)

(declare-fun e!24863 () SeekEntryResult!178)

(assert (=> b!39161 (= e!24863 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7614 lt!14574) #b00000000000000000000000000000001) (nextIndex!0 (index!2836 lt!14574) (x!7614 lt!14574) mask!853) (index!2836 lt!14574) (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14445 mask!853))))

(declare-fun d!6529 () Bool)

(declare-fun lt!14684 () SeekEntryResult!178)

(assert (=> d!6529 (and (or (is-Undefined!178 lt!14684) (not (is-Found!178 lt!14684)) (and (bvsge (index!2835 lt!14684) #b00000000000000000000000000000000) (bvslt (index!2835 lt!14684) (size!1336 lt!14445)))) (or (is-Undefined!178 lt!14684) (is-Found!178 lt!14684) (not (is-MissingVacant!178 lt!14684)) (not (= (index!2837 lt!14684) (index!2836 lt!14574))) (and (bvsge (index!2837 lt!14684) #b00000000000000000000000000000000) (bvslt (index!2837 lt!14684) (size!1336 lt!14445)))) (or (is-Undefined!178 lt!14684) (ite (is-Found!178 lt!14684) (= (select (arr!1229 lt!14445) (index!2835 lt!14684)) (select (arr!1229 lt!14445) #b00000000000000000000000000000000)) (and (is-MissingVacant!178 lt!14684) (= (index!2837 lt!14684) (index!2836 lt!14574)) (= (select (arr!1229 lt!14445) (index!2837 lt!14684)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!24864 () SeekEntryResult!178)

(assert (=> d!6529 (= lt!14684 e!24864)))

(declare-fun c!4603 () Bool)

(assert (=> d!6529 (= c!4603 (bvsge (x!7614 lt!14574) #b01111111111111111111111111111110))))

(declare-fun lt!14685 () (_ BitVec 64))

(assert (=> d!6529 (= lt!14685 (select (arr!1229 lt!14445) (index!2836 lt!14574)))))

(assert (=> d!6529 (validMask!0 mask!853)))

(assert (=> d!6529 (= (seekKeyOrZeroReturnVacant!0 (x!7614 lt!14574) (index!2836 lt!14574) (index!2836 lt!14574) (select (arr!1229 lt!14445) #b00000000000000000000000000000000) lt!14445 mask!853) lt!14684)))

(declare-fun b!39162 () Bool)

(assert (=> b!39162 (= e!24863 (MissingVacant!178 (index!2836 lt!14574)))))

(declare-fun b!39163 () Bool)

(declare-fun c!4602 () Bool)

(assert (=> b!39163 (= c!4602 (= lt!14685 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!39163 (= e!24862 e!24863)))

(declare-fun b!39164 () Bool)

(assert (=> b!39164 (= e!24864 Undefined!178)))

(declare-fun b!39165 () Bool)

(assert (=> b!39165 (= e!24864 e!24862)))

