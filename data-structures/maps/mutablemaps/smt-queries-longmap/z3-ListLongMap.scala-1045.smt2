; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21966 () Bool)

(assert start!21966)

(declare-fun b!224432 () Bool)

(declare-fun b_free!6021 () Bool)

(declare-fun b_next!6021 () Bool)

(assert (=> b!224432 (= b_free!6021 (not b_next!6021))))

(declare-fun tp!21204 () Bool)

(declare-fun b_and!12937 () Bool)

(assert (=> b!224432 (= tp!21204 b_and!12937)))

(declare-fun b!224425 () Bool)

(declare-fun c!37202 () Bool)

(declare-datatypes ((SeekEntryResult!868 0))(
  ( (MissingZero!868 (index!5642 (_ BitVec 32))) (Found!868 (index!5643 (_ BitVec 32))) (Intermediate!868 (undefined!1680 Bool) (index!5644 (_ BitVec 32)) (x!23144 (_ BitVec 32))) (Undefined!868) (MissingVacant!868 (index!5645 (_ BitVec 32))) )
))
(declare-fun lt!113186 () SeekEntryResult!868)

(get-info :version)

(assert (=> b!224425 (= c!37202 ((_ is MissingVacant!868) lt!113186))))

(declare-fun e!145718 () Bool)

(declare-fun e!145720 () Bool)

(assert (=> b!224425 (= e!145718 e!145720)))

(declare-fun b!224426 () Bool)

(declare-fun e!145717 () Bool)

(declare-fun e!145705 () Bool)

(assert (=> b!224426 (= e!145717 e!145705)))

(declare-fun res!110459 () Bool)

(assert (=> b!224426 (=> (not res!110459) (not e!145705))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!224426 (= res!110459 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!224427 () Bool)

(declare-fun res!110446 () Bool)

(declare-fun e!145715 () Bool)

(assert (=> b!224427 (=> (not res!110446) (not e!145715))))

(declare-fun lt!113180 () Bool)

(assert (=> b!224427 (= res!110446 (not lt!113180))))

(declare-fun b!224428 () Bool)

(declare-fun res!110451 () Bool)

(assert (=> b!224428 (=> (not res!110451) (not e!145715))))

(declare-datatypes ((V!7491 0))(
  ( (V!7492 (val!2986 Int)) )
))
(declare-datatypes ((ValueCell!2598 0))(
  ( (ValueCellFull!2598 (v!5002 V!7491)) (EmptyCell!2598) )
))
(declare-datatypes ((array!11008 0))(
  ( (array!11009 (arr!5223 (Array (_ BitVec 32) ValueCell!2598)) (size!5556 (_ BitVec 32))) )
))
(declare-datatypes ((array!11010 0))(
  ( (array!11011 (arr!5224 (Array (_ BitVec 32) (_ BitVec 64))) (size!5557 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3096 0))(
  ( (LongMapFixedSize!3097 (defaultEntry!4207 Int) (mask!10041 (_ BitVec 32)) (extraKeys!3944 (_ BitVec 32)) (zeroValue!4048 V!7491) (minValue!4048 V!7491) (_size!1597 (_ BitVec 32)) (_keys!6261 array!11010) (_values!4190 array!11008) (_vacant!1597 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3096)

(declare-datatypes ((List!3356 0))(
  ( (Nil!3353) (Cons!3352 (h!4000 (_ BitVec 64)) (t!8323 List!3356)) )
))
(declare-fun arrayNoDuplicates!0 (array!11010 (_ BitVec 32) List!3356) Bool)

(assert (=> b!224428 (= res!110451 (arrayNoDuplicates!0 (_keys!6261 thiss!1504) #b00000000000000000000000000000000 Nil!3353))))

(declare-fun b!224429 () Bool)

(declare-fun e!145716 () Bool)

(declare-fun tp_is_empty!5883 () Bool)

(assert (=> b!224429 (= e!145716 tp_is_empty!5883)))

(declare-fun b!224430 () Bool)

(declare-fun e!145704 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1555 (List!3356 (_ BitVec 64)) Bool)

(assert (=> b!224430 (= e!145704 (contains!1555 Nil!3353 key!932))))

(declare-fun b!224431 () Bool)

(declare-fun res!110449 () Bool)

(assert (=> b!224431 (= res!110449 (= (select (arr!5224 (_keys!6261 thiss!1504)) (index!5645 lt!113186)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!145708 () Bool)

(assert (=> b!224431 (=> (not res!110449) (not e!145708))))

(declare-fun e!145714 () Bool)

(declare-fun e!145713 () Bool)

(declare-fun array_inv!3447 (array!11010) Bool)

(declare-fun array_inv!3448 (array!11008) Bool)

(assert (=> b!224432 (= e!145714 (and tp!21204 tp_is_empty!5883 (array_inv!3447 (_keys!6261 thiss!1504)) (array_inv!3448 (_values!4190 thiss!1504)) e!145713))))

(declare-fun b!224433 () Bool)

(assert (=> b!224433 (= e!145720 ((_ is Undefined!868) lt!113186))))

(declare-fun b!224434 () Bool)

(declare-datatypes ((Unit!6747 0))(
  ( (Unit!6748) )
))
(declare-fun e!145706 () Unit!6747)

(declare-fun Unit!6749 () Unit!6747)

(assert (=> b!224434 (= e!145706 Unit!6749)))

(declare-fun lt!113181 () Unit!6747)

(declare-fun lemmaArrayContainsKeyThenInListMap!78 (array!11010 array!11008 (_ BitVec 32) (_ BitVec 32) V!7491 V!7491 (_ BitVec 64) (_ BitVec 32) Int) Unit!6747)

(assert (=> b!224434 (= lt!113181 (lemmaArrayContainsKeyThenInListMap!78 (_keys!6261 thiss!1504) (_values!4190 thiss!1504) (mask!10041 thiss!1504) (extraKeys!3944 thiss!1504) (zeroValue!4048 thiss!1504) (minValue!4048 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4207 thiss!1504)))))

(assert (=> b!224434 false))

(declare-fun b!224436 () Bool)

(declare-fun res!110458 () Bool)

(assert (=> b!224436 (=> (not res!110458) (not e!145715))))

(assert (=> b!224436 (= res!110458 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5557 (_keys!6261 thiss!1504)))))))

(declare-fun b!224437 () Bool)

(declare-fun res!110448 () Bool)

(assert (=> b!224437 (=> (not res!110448) (not e!145715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!224437 (= res!110448 (validKeyInArray!0 key!932))))

(declare-fun mapNonEmpty!9994 () Bool)

(declare-fun mapRes!9994 () Bool)

(declare-fun tp!21205 () Bool)

(assert (=> mapNonEmpty!9994 (= mapRes!9994 (and tp!21205 e!145716))))

(declare-fun mapKey!9994 () (_ BitVec 32))

(declare-fun mapRest!9994 () (Array (_ BitVec 32) ValueCell!2598))

(declare-fun mapValue!9994 () ValueCell!2598)

(assert (=> mapNonEmpty!9994 (= (arr!5223 (_values!4190 thiss!1504)) (store mapRest!9994 mapKey!9994 mapValue!9994))))

(declare-fun b!224438 () Bool)

(declare-fun e!145703 () Bool)

(declare-fun call!20895 () Bool)

(assert (=> b!224438 (= e!145703 (not call!20895))))

(declare-fun b!224439 () Bool)

(declare-fun e!145712 () Bool)

(assert (=> b!224439 (= e!145712 e!145715)))

(declare-fun res!110462 () Bool)

(assert (=> b!224439 (=> (not res!110462) (not e!145715))))

(assert (=> b!224439 (= res!110462 (and (bvslt (size!5557 (_keys!6261 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5557 (_keys!6261 thiss!1504)))))))

(declare-fun lt!113183 () Unit!6747)

(assert (=> b!224439 (= lt!113183 e!145706)))

(declare-fun c!37205 () Bool)

(assert (=> b!224439 (= c!37205 lt!113180)))

(declare-fun arrayContainsKey!0 (array!11010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!224439 (= lt!113180 (arrayContainsKey!0 (_keys!6261 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224440 () Bool)

(declare-fun e!145711 () Bool)

(assert (=> b!224440 (= e!145711 tp_is_empty!5883)))

(declare-fun b!224441 () Bool)

(declare-fun res!110455 () Bool)

(assert (=> b!224441 (=> (not res!110455) (not e!145703))))

(declare-fun call!20896 () Bool)

(assert (=> b!224441 (= res!110455 call!20896)))

(assert (=> b!224441 (= e!145718 e!145703)))

(declare-fun b!224442 () Bool)

(assert (=> b!224442 (= e!145715 false)))

(declare-fun lt!113182 () Bool)

(assert (=> b!224442 (= lt!113182 (contains!1555 Nil!3353 key!932))))

(declare-fun c!37204 () Bool)

(declare-fun bm!20892 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20892 (= call!20896 (inRange!0 (ite c!37204 (index!5642 lt!113186) (index!5645 lt!113186)) (mask!10041 thiss!1504)))))

(declare-fun b!224443 () Bool)

(declare-fun e!145719 () Bool)

(declare-fun e!145707 () Bool)

(assert (=> b!224443 (= e!145719 e!145707)))

(declare-fun res!110461 () Bool)

(assert (=> b!224443 (=> (not res!110461) (not e!145707))))

(assert (=> b!224443 (= res!110461 (or (= lt!113186 (MissingZero!868 index!297)) (= lt!113186 (MissingVacant!868 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11010 (_ BitVec 32)) SeekEntryResult!868)

(assert (=> b!224443 (= lt!113186 (seekEntryOrOpen!0 key!932 (_keys!6261 thiss!1504) (mask!10041 thiss!1504)))))

(declare-fun b!224444 () Bool)

(declare-fun e!145709 () Unit!6747)

(declare-fun lt!113187 () Unit!6747)

(assert (=> b!224444 (= e!145709 lt!113187)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!248 (array!11010 array!11008 (_ BitVec 32) (_ BitVec 32) V!7491 V!7491 (_ BitVec 64) Int) Unit!6747)

(assert (=> b!224444 (= lt!113187 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!248 (_keys!6261 thiss!1504) (_values!4190 thiss!1504) (mask!10041 thiss!1504) (extraKeys!3944 thiss!1504) (zeroValue!4048 thiss!1504) (minValue!4048 thiss!1504) key!932 (defaultEntry!4207 thiss!1504)))))

(assert (=> b!224444 (= c!37204 ((_ is MissingZero!868) lt!113186))))

(assert (=> b!224444 e!145718))

(declare-fun b!224445 () Bool)

(assert (=> b!224445 (= e!145713 (and e!145711 mapRes!9994))))

(declare-fun condMapEmpty!9994 () Bool)

(declare-fun mapDefault!9994 () ValueCell!2598)

(assert (=> b!224445 (= condMapEmpty!9994 (= (arr!5223 (_values!4190 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2598)) mapDefault!9994)))))

(declare-fun b!224446 () Bool)

(declare-fun res!110447 () Bool)

(assert (=> b!224446 (=> (not res!110447) (not e!145715))))

(declare-fun noDuplicate!85 (List!3356) Bool)

(assert (=> b!224446 (= res!110447 (noDuplicate!85 Nil!3353))))

(declare-fun b!224447 () Bool)

(declare-fun res!110453 () Bool)

(assert (=> b!224447 (=> (not res!110453) (not e!145703))))

(assert (=> b!224447 (= res!110453 (= (select (arr!5224 (_keys!6261 thiss!1504)) (index!5642 lt!113186)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!224448 () Bool)

(declare-fun res!110464 () Bool)

(assert (=> b!224448 (=> (not res!110464) (not e!145719))))

(assert (=> b!224448 (= res!110464 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!20893 () Bool)

(assert (=> bm!20893 (= call!20895 (arrayContainsKey!0 (_keys!6261 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!110452 () Bool)

(assert (=> start!21966 (=> (not res!110452) (not e!145719))))

(declare-fun valid!1240 (LongMapFixedSize!3096) Bool)

(assert (=> start!21966 (= res!110452 (valid!1240 thiss!1504))))

(assert (=> start!21966 e!145719))

(assert (=> start!21966 e!145714))

(assert (=> start!21966 true))

(declare-fun b!224435 () Bool)

(declare-fun Unit!6750 () Unit!6747)

(assert (=> b!224435 (= e!145709 Unit!6750)))

(declare-fun lt!113185 () Unit!6747)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!240 (array!11010 array!11008 (_ BitVec 32) (_ BitVec 32) V!7491 V!7491 (_ BitVec 64) Int) Unit!6747)

(assert (=> b!224435 (= lt!113185 (lemmaInListMapThenSeekEntryOrOpenFindsIt!240 (_keys!6261 thiss!1504) (_values!4190 thiss!1504) (mask!10041 thiss!1504) (extraKeys!3944 thiss!1504) (zeroValue!4048 thiss!1504) (minValue!4048 thiss!1504) key!932 (defaultEntry!4207 thiss!1504)))))

(assert (=> b!224435 false))

(declare-fun mapIsEmpty!9994 () Bool)

(assert (=> mapIsEmpty!9994 mapRes!9994))

(declare-fun b!224449 () Bool)

(assert (=> b!224449 (= e!145705 (not (contains!1555 Nil!3353 key!932)))))

(declare-fun b!224450 () Bool)

(assert (=> b!224450 (= e!145720 e!145708)))

(declare-fun res!110460 () Bool)

(assert (=> b!224450 (= res!110460 call!20896)))

(assert (=> b!224450 (=> (not res!110460) (not e!145708))))

(declare-fun b!224451 () Bool)

(declare-fun res!110445 () Bool)

(assert (=> b!224451 (=> (not res!110445) (not e!145715))))

(assert (=> b!224451 (= res!110445 (not (contains!1555 Nil!3353 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224452 () Bool)

(declare-fun Unit!6751 () Unit!6747)

(assert (=> b!224452 (= e!145706 Unit!6751)))

(declare-fun b!224453 () Bool)

(declare-fun res!110457 () Bool)

(assert (=> b!224453 (=> (not res!110457) (not e!145715))))

(assert (=> b!224453 (= res!110457 (not (contains!1555 Nil!3353 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224454 () Bool)

(assert (=> b!224454 (= e!145708 (not call!20895))))

(declare-fun b!224455 () Bool)

(declare-fun res!110454 () Bool)

(assert (=> b!224455 (=> (not res!110454) (not e!145715))))

(assert (=> b!224455 (= res!110454 e!145717)))

(declare-fun res!110450 () Bool)

(assert (=> b!224455 (=> res!110450 e!145717)))

(assert (=> b!224455 (= res!110450 e!145704)))

(declare-fun res!110463 () Bool)

(assert (=> b!224455 (=> (not res!110463) (not e!145704))))

(assert (=> b!224455 (= res!110463 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!224456 () Bool)

(assert (=> b!224456 (= e!145707 e!145712)))

(declare-fun res!110456 () Bool)

(assert (=> b!224456 (=> (not res!110456) (not e!145712))))

(assert (=> b!224456 (= res!110456 (inRange!0 index!297 (mask!10041 thiss!1504)))))

(declare-fun lt!113184 () Unit!6747)

(assert (=> b!224456 (= lt!113184 e!145709)))

(declare-fun c!37203 () Bool)

(declare-datatypes ((tuple2!4420 0))(
  ( (tuple2!4421 (_1!2220 (_ BitVec 64)) (_2!2220 V!7491)) )
))
(declare-datatypes ((List!3357 0))(
  ( (Nil!3354) (Cons!3353 (h!4001 tuple2!4420) (t!8324 List!3357)) )
))
(declare-datatypes ((ListLongMap!3347 0))(
  ( (ListLongMap!3348 (toList!1689 List!3357)) )
))
(declare-fun contains!1556 (ListLongMap!3347 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1212 (array!11010 array!11008 (_ BitVec 32) (_ BitVec 32) V!7491 V!7491 (_ BitVec 32) Int) ListLongMap!3347)

(assert (=> b!224456 (= c!37203 (contains!1556 (getCurrentListMap!1212 (_keys!6261 thiss!1504) (_values!4190 thiss!1504) (mask!10041 thiss!1504) (extraKeys!3944 thiss!1504) (zeroValue!4048 thiss!1504) (minValue!4048 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4207 thiss!1504)) key!932))))

(assert (= (and start!21966 res!110452) b!224448))

(assert (= (and b!224448 res!110464) b!224443))

(assert (= (and b!224443 res!110461) b!224456))

(assert (= (and b!224456 c!37203) b!224435))

(assert (= (and b!224456 (not c!37203)) b!224444))

(assert (= (and b!224444 c!37204) b!224441))

(assert (= (and b!224444 (not c!37204)) b!224425))

(assert (= (and b!224441 res!110455) b!224447))

(assert (= (and b!224447 res!110453) b!224438))

(assert (= (and b!224425 c!37202) b!224450))

(assert (= (and b!224425 (not c!37202)) b!224433))

(assert (= (and b!224450 res!110460) b!224431))

(assert (= (and b!224431 res!110449) b!224454))

(assert (= (or b!224441 b!224450) bm!20892))

(assert (= (or b!224438 b!224454) bm!20893))

(assert (= (and b!224456 res!110456) b!224439))

(assert (= (and b!224439 c!37205) b!224434))

(assert (= (and b!224439 (not c!37205)) b!224452))

(assert (= (and b!224439 res!110462) b!224446))

(assert (= (and b!224446 res!110447) b!224453))

(assert (= (and b!224453 res!110457) b!224451))

(assert (= (and b!224451 res!110445) b!224455))

(assert (= (and b!224455 res!110463) b!224430))

(assert (= (and b!224455 (not res!110450)) b!224426))

(assert (= (and b!224426 res!110459) b!224449))

(assert (= (and b!224455 res!110454) b!224428))

(assert (= (and b!224428 res!110451) b!224436))

(assert (= (and b!224436 res!110458) b!224437))

(assert (= (and b!224437 res!110448) b!224427))

(assert (= (and b!224427 res!110446) b!224442))

(assert (= (and b!224445 condMapEmpty!9994) mapIsEmpty!9994))

(assert (= (and b!224445 (not condMapEmpty!9994)) mapNonEmpty!9994))

(assert (= (and mapNonEmpty!9994 ((_ is ValueCellFull!2598) mapValue!9994)) b!224429))

(assert (= (and b!224445 ((_ is ValueCellFull!2598) mapDefault!9994)) b!224440))

(assert (= b!224432 b!224445))

(assert (= start!21966 b!224432))

(declare-fun m!247435 () Bool)

(assert (=> b!224443 m!247435))

(declare-fun m!247437 () Bool)

(assert (=> mapNonEmpty!9994 m!247437))

(declare-fun m!247439 () Bool)

(assert (=> b!224437 m!247439))

(declare-fun m!247441 () Bool)

(assert (=> bm!20892 m!247441))

(declare-fun m!247443 () Bool)

(assert (=> b!224435 m!247443))

(declare-fun m!247445 () Bool)

(assert (=> b!224428 m!247445))

(declare-fun m!247447 () Bool)

(assert (=> b!224444 m!247447))

(declare-fun m!247449 () Bool)

(assert (=> b!224432 m!247449))

(declare-fun m!247451 () Bool)

(assert (=> b!224432 m!247451))

(declare-fun m!247453 () Bool)

(assert (=> b!224447 m!247453))

(declare-fun m!247455 () Bool)

(assert (=> b!224442 m!247455))

(declare-fun m!247457 () Bool)

(assert (=> b!224439 m!247457))

(declare-fun m!247459 () Bool)

(assert (=> b!224434 m!247459))

(declare-fun m!247461 () Bool)

(assert (=> b!224451 m!247461))

(declare-fun m!247463 () Bool)

(assert (=> start!21966 m!247463))

(assert (=> b!224449 m!247455))

(assert (=> bm!20893 m!247457))

(declare-fun m!247465 () Bool)

(assert (=> b!224446 m!247465))

(declare-fun m!247467 () Bool)

(assert (=> b!224453 m!247467))

(declare-fun m!247469 () Bool)

(assert (=> b!224431 m!247469))

(assert (=> b!224430 m!247455))

(declare-fun m!247471 () Bool)

(assert (=> b!224456 m!247471))

(declare-fun m!247473 () Bool)

(assert (=> b!224456 m!247473))

(assert (=> b!224456 m!247473))

(declare-fun m!247475 () Bool)

(assert (=> b!224456 m!247475))

(check-sat (not bm!20893) (not b!224453) (not b!224439) (not b!224432) (not b!224435) (not b!224428) (not b!224430) (not b!224443) tp_is_empty!5883 (not mapNonEmpty!9994) (not b!224451) (not b!224442) (not b_next!6021) (not b!224434) (not b!224456) (not bm!20892) (not b!224444) (not b!224446) (not b!224437) (not b!224449) b_and!12937 (not start!21966))
(check-sat b_and!12937 (not b_next!6021))
