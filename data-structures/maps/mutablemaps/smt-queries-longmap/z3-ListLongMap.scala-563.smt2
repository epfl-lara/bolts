; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15270 () Bool)

(assert start!15270)

(declare-fun b!147375 () Bool)

(declare-fun b_free!3149 () Bool)

(declare-fun b_next!3149 () Bool)

(assert (=> b!147375 (= b_free!3149 (not b_next!3149))))

(declare-fun tp!11955 () Bool)

(declare-fun b_and!9261 () Bool)

(assert (=> b!147375 (= tp!11955 b_and!9261)))

(declare-fun b!147370 () Bool)

(declare-fun b_free!3151 () Bool)

(declare-fun b_next!3151 () Bool)

(assert (=> b!147370 (= b_free!3151 (not b_next!3151))))

(declare-fun tp!11956 () Bool)

(declare-fun b_and!9263 () Bool)

(assert (=> b!147370 (= tp!11956 b_and!9263)))

(declare-fun b!147359 () Bool)

(declare-fun e!96214 () Bool)

(declare-fun e!96211 () Bool)

(assert (=> b!147359 (= e!96214 e!96211)))

(declare-fun b!147360 () Bool)

(declare-datatypes ((Unit!4667 0))(
  ( (Unit!4668) )
))
(declare-fun e!96210 () Unit!4667)

(declare-fun Unit!4669 () Unit!4667)

(assert (=> b!147360 (= e!96210 Unit!4669)))

(declare-fun lt!77779 () Unit!4667)

(declare-datatypes ((V!3635 0))(
  ( (V!3636 (val!1540 Int)) )
))
(declare-datatypes ((array!5028 0))(
  ( (array!5029 (arr!2374 (Array (_ BitVec 32) (_ BitVec 64))) (size!2650 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1152 0))(
  ( (ValueCellFull!1152 (v!3370 V!3635)) (EmptyCell!1152) )
))
(declare-datatypes ((array!5030 0))(
  ( (array!5031 (arr!2375 (Array (_ BitVec 32) ValueCell!1152)) (size!2651 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1212 0))(
  ( (LongMapFixedSize!1213 (defaultEntry!3025 Int) (mask!7407 (_ BitVec 32)) (extraKeys!2770 (_ BitVec 32)) (zeroValue!2870 V!3635) (minValue!2870 V!3635) (_size!655 (_ BitVec 32)) (_keys!4794 array!5028) (_values!3008 array!5030) (_vacant!655 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!994 0))(
  ( (Cell!995 (v!3371 LongMapFixedSize!1212)) )
))
(declare-datatypes ((LongMap!994 0))(
  ( (LongMap!995 (underlying!508 Cell!994)) )
))
(declare-fun thiss!992 () LongMap!994)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!161 (array!5028 array!5030 (_ BitVec 32) (_ BitVec 32) V!3635 V!3635 (_ BitVec 64) (_ BitVec 32) Int) Unit!4667)

(assert (=> b!147360 (= lt!77779 (lemmaListMapContainsThenArrayContainsFrom!161 (_keys!4794 (v!3371 (underlying!508 thiss!992))) (_values!3008 (v!3371 (underlying!508 thiss!992))) (mask!7407 (v!3371 (underlying!508 thiss!992))) (extraKeys!2770 (v!3371 (underlying!508 thiss!992))) (zeroValue!2870 (v!3371 (underlying!508 thiss!992))) (minValue!2870 (v!3371 (underlying!508 thiss!992))) (select (arr!2374 (_keys!4794 (v!3371 (underlying!508 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3025 (v!3371 (underlying!508 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!5028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!147360 (arrayContainsKey!0 (_keys!4794 (v!3371 (underlying!508 thiss!992))) (select (arr!2374 (_keys!4794 (v!3371 (underlying!508 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!77780 () Unit!4667)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!5028 (_ BitVec 32) (_ BitVec 32)) Unit!4667)

(assert (=> b!147360 (= lt!77780 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4794 (v!3371 (underlying!508 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1806 0))(
  ( (Nil!1803) (Cons!1802 (h!2410 (_ BitVec 64)) (t!6547 List!1806)) )
))
(declare-fun arrayNoDuplicates!0 (array!5028 (_ BitVec 32) List!1806) Bool)

(assert (=> b!147360 (arrayNoDuplicates!0 (_keys!4794 (v!3371 (underlying!508 thiss!992))) from!355 Nil!1803)))

(declare-fun lt!77778 () Unit!4667)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!5028 (_ BitVec 32) (_ BitVec 64) List!1806) Unit!4667)

(assert (=> b!147360 (= lt!77778 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4794 (v!3371 (underlying!508 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2374 (_keys!4794 (v!3371 (underlying!508 thiss!992)))) from!355) (Cons!1802 (select (arr!2374 (_keys!4794 (v!3371 (underlying!508 thiss!992)))) from!355) Nil!1803)))))

(assert (=> b!147360 false))

(declare-fun b!147361 () Bool)

(declare-fun e!96213 () Bool)

(declare-fun tp_is_empty!2991 () Bool)

(assert (=> b!147361 (= e!96213 tp_is_empty!2991)))

(declare-fun mapIsEmpty!5049 () Bool)

(declare-fun mapRes!5050 () Bool)

(assert (=> mapIsEmpty!5049 mapRes!5050))

(declare-fun b!147362 () Bool)

(declare-fun e!96216 () Bool)

(declare-fun mapRes!5049 () Bool)

(assert (=> b!147362 (= e!96216 (and e!96213 mapRes!5049))))

(declare-fun condMapEmpty!5050 () Bool)

(declare-fun mapDefault!5050 () ValueCell!1152)

(assert (=> b!147362 (= condMapEmpty!5050 (= (arr!2375 (_values!3008 (v!3371 (underlying!508 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1152)) mapDefault!5050)))))

(declare-fun b!147363 () Bool)

(declare-fun res!70024 () Bool)

(declare-fun e!96208 () Bool)

(assert (=> b!147363 (=> (not res!70024) (not e!96208))))

(assert (=> b!147363 (= res!70024 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2650 (_keys!4794 (v!3371 (underlying!508 thiss!992)))))))))

(declare-fun b!147364 () Bool)

(declare-fun e!96215 () Bool)

(assert (=> b!147364 (= e!96211 e!96215)))

(declare-fun b!147365 () Bool)

(declare-fun res!70022 () Bool)

(assert (=> b!147365 (=> (not res!70022) (not e!96208))))

(declare-fun newMap!16 () LongMapFixedSize!1212)

(assert (=> b!147365 (= res!70022 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7407 newMap!16)) (_size!655 (v!3371 (underlying!508 thiss!992)))))))

(declare-fun mapNonEmpty!5049 () Bool)

(declare-fun tp!11954 () Bool)

(declare-fun e!96206 () Bool)

(assert (=> mapNonEmpty!5049 (= mapRes!5049 (and tp!11954 e!96206))))

(declare-fun mapKey!5049 () (_ BitVec 32))

(declare-fun mapRest!5050 () (Array (_ BitVec 32) ValueCell!1152))

(declare-fun mapValue!5050 () ValueCell!1152)

(assert (=> mapNonEmpty!5049 (= (arr!2375 (_values!3008 (v!3371 (underlying!508 thiss!992)))) (store mapRest!5050 mapKey!5049 mapValue!5050))))

(declare-fun b!147366 () Bool)

(declare-fun e!96218 () Bool)

(assert (=> b!147366 (= e!96218 false)))

(declare-datatypes ((tuple2!2764 0))(
  ( (tuple2!2765 (_1!1392 (_ BitVec 64)) (_2!1392 V!3635)) )
))
(declare-datatypes ((List!1807 0))(
  ( (Nil!1804) (Cons!1803 (h!2411 tuple2!2764) (t!6548 List!1807)) )
))
(declare-datatypes ((ListLongMap!1791 0))(
  ( (ListLongMap!1792 (toList!911 List!1807)) )
))
(declare-fun lt!77774 () ListLongMap!1791)

(declare-fun getCurrentListMapNoExtraKeys!153 (array!5028 array!5030 (_ BitVec 32) (_ BitVec 32) V!3635 V!3635 (_ BitVec 32) Int) ListLongMap!1791)

(assert (=> b!147366 (= lt!77774 (getCurrentListMapNoExtraKeys!153 (_keys!4794 (v!3371 (underlying!508 thiss!992))) (_values!3008 (v!3371 (underlying!508 thiss!992))) (mask!7407 (v!3371 (underlying!508 thiss!992))) (extraKeys!2770 (v!3371 (underlying!508 thiss!992))) (zeroValue!2870 (v!3371 (underlying!508 thiss!992))) (minValue!2870 (v!3371 (underlying!508 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3025 (v!3371 (underlying!508 thiss!992)))))))

(declare-fun b!147367 () Bool)

(declare-fun res!70025 () Bool)

(assert (=> b!147367 (=> (not res!70025) (not e!96208))))

(declare-fun valid!592 (LongMapFixedSize!1212) Bool)

(assert (=> b!147367 (= res!70025 (valid!592 newMap!16))))

(declare-fun b!147368 () Bool)

(declare-fun e!96212 () Bool)

(assert (=> b!147368 (= e!96208 e!96212)))

(declare-fun res!70026 () Bool)

(assert (=> b!147368 (=> (not res!70026) (not e!96212))))

(declare-fun lt!77773 () ListLongMap!1791)

(declare-fun lt!77777 () ListLongMap!1791)

(assert (=> b!147368 (= res!70026 (and (= lt!77777 lt!77773) (not (= (select (arr!2374 (_keys!4794 (v!3371 (underlying!508 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2374 (_keys!4794 (v!3371 (underlying!508 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1477 (LongMapFixedSize!1212) ListLongMap!1791)

(assert (=> b!147368 (= lt!77773 (map!1477 newMap!16))))

(declare-fun getCurrentListMap!574 (array!5028 array!5030 (_ BitVec 32) (_ BitVec 32) V!3635 V!3635 (_ BitVec 32) Int) ListLongMap!1791)

(assert (=> b!147368 (= lt!77777 (getCurrentListMap!574 (_keys!4794 (v!3371 (underlying!508 thiss!992))) (_values!3008 (v!3371 (underlying!508 thiss!992))) (mask!7407 (v!3371 (underlying!508 thiss!992))) (extraKeys!2770 (v!3371 (underlying!508 thiss!992))) (zeroValue!2870 (v!3371 (underlying!508 thiss!992))) (minValue!2870 (v!3371 (underlying!508 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3025 (v!3371 (underlying!508 thiss!992)))))))

(declare-fun b!147369 () Bool)

(declare-fun e!96220 () Bool)

(declare-fun e!96217 () Bool)

(assert (=> b!147369 (= e!96220 (and e!96217 mapRes!5050))))

(declare-fun condMapEmpty!5049 () Bool)

(declare-fun mapDefault!5049 () ValueCell!1152)

(assert (=> b!147369 (= condMapEmpty!5049 (= (arr!2375 (_values!3008 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1152)) mapDefault!5049)))))

(declare-fun mapNonEmpty!5050 () Bool)

(declare-fun tp!11953 () Bool)

(declare-fun e!96207 () Bool)

(assert (=> mapNonEmpty!5050 (= mapRes!5050 (and tp!11953 e!96207))))

(declare-fun mapKey!5050 () (_ BitVec 32))

(declare-fun mapRest!5049 () (Array (_ BitVec 32) ValueCell!1152))

(declare-fun mapValue!5049 () ValueCell!1152)

(assert (=> mapNonEmpty!5050 (= (arr!2375 (_values!3008 newMap!16)) (store mapRest!5049 mapKey!5050 mapValue!5049))))

(declare-fun e!96221 () Bool)

(declare-fun array_inv!1475 (array!5028) Bool)

(declare-fun array_inv!1476 (array!5030) Bool)

(assert (=> b!147370 (= e!96221 (and tp!11956 tp_is_empty!2991 (array_inv!1475 (_keys!4794 newMap!16)) (array_inv!1476 (_values!3008 newMap!16)) e!96220))))

(declare-fun b!147371 () Bool)

(assert (=> b!147371 (= e!96212 e!96218)))

(declare-fun res!70021 () Bool)

(assert (=> b!147371 (=> (not res!70021) (not e!96218))))

(declare-datatypes ((tuple2!2766 0))(
  ( (tuple2!2767 (_1!1393 Bool) (_2!1393 LongMapFixedSize!1212)) )
))
(declare-fun lt!77776 () tuple2!2766)

(assert (=> b!147371 (= res!70021 (and (_1!1393 lt!77776) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!77775 () Unit!4667)

(assert (=> b!147371 (= lt!77775 e!96210)))

(declare-fun c!27824 () Bool)

(declare-fun contains!952 (ListLongMap!1791 (_ BitVec 64)) Bool)

(assert (=> b!147371 (= c!27824 (contains!952 lt!77773 (select (arr!2374 (_keys!4794 (v!3371 (underlying!508 thiss!992)))) from!355)))))

(declare-fun update!227 (LongMapFixedSize!1212 (_ BitVec 64) V!3635) tuple2!2766)

(declare-fun get!1588 (ValueCell!1152 V!3635) V!3635)

(declare-fun dynLambda!460 (Int (_ BitVec 64)) V!3635)

(assert (=> b!147371 (= lt!77776 (update!227 newMap!16 (select (arr!2374 (_keys!4794 (v!3371 (underlying!508 thiss!992)))) from!355) (get!1588 (select (arr!2375 (_values!3008 (v!3371 (underlying!508 thiss!992)))) from!355) (dynLambda!460 (defaultEntry!3025 (v!3371 (underlying!508 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!147372 () Bool)

(assert (=> b!147372 (= e!96217 tp_is_empty!2991)))

(declare-fun b!147373 () Bool)

(assert (=> b!147373 (= e!96206 tp_is_empty!2991)))

(declare-fun b!147374 () Bool)

(declare-fun Unit!4670 () Unit!4667)

(assert (=> b!147374 (= e!96210 Unit!4670)))

(assert (=> b!147375 (= e!96215 (and tp!11955 tp_is_empty!2991 (array_inv!1475 (_keys!4794 (v!3371 (underlying!508 thiss!992)))) (array_inv!1476 (_values!3008 (v!3371 (underlying!508 thiss!992)))) e!96216))))

(declare-fun b!147376 () Bool)

(assert (=> b!147376 (= e!96207 tp_is_empty!2991)))

(declare-fun res!70023 () Bool)

(assert (=> start!15270 (=> (not res!70023) (not e!96208))))

(declare-fun valid!593 (LongMap!994) Bool)

(assert (=> start!15270 (= res!70023 (valid!593 thiss!992))))

(assert (=> start!15270 e!96208))

(assert (=> start!15270 e!96214))

(assert (=> start!15270 true))

(assert (=> start!15270 e!96221))

(declare-fun mapIsEmpty!5050 () Bool)

(assert (=> mapIsEmpty!5050 mapRes!5049))

(assert (= (and start!15270 res!70023) b!147363))

(assert (= (and b!147363 res!70024) b!147367))

(assert (= (and b!147367 res!70025) b!147365))

(assert (= (and b!147365 res!70022) b!147368))

(assert (= (and b!147368 res!70026) b!147371))

(assert (= (and b!147371 c!27824) b!147360))

(assert (= (and b!147371 (not c!27824)) b!147374))

(assert (= (and b!147371 res!70021) b!147366))

(assert (= (and b!147362 condMapEmpty!5050) mapIsEmpty!5050))

(assert (= (and b!147362 (not condMapEmpty!5050)) mapNonEmpty!5049))

(get-info :version)

(assert (= (and mapNonEmpty!5049 ((_ is ValueCellFull!1152) mapValue!5050)) b!147373))

(assert (= (and b!147362 ((_ is ValueCellFull!1152) mapDefault!5050)) b!147361))

(assert (= b!147375 b!147362))

(assert (= b!147364 b!147375))

(assert (= b!147359 b!147364))

(assert (= start!15270 b!147359))

(assert (= (and b!147369 condMapEmpty!5049) mapIsEmpty!5049))

(assert (= (and b!147369 (not condMapEmpty!5049)) mapNonEmpty!5050))

(assert (= (and mapNonEmpty!5050 ((_ is ValueCellFull!1152) mapValue!5049)) b!147376))

(assert (= (and b!147369 ((_ is ValueCellFull!1152) mapDefault!5049)) b!147372))

(assert (= b!147370 b!147369))

(assert (= start!15270 b!147370))

(declare-fun b_lambda!6627 () Bool)

(assert (=> (not b_lambda!6627) (not b!147371)))

(declare-fun t!6544 () Bool)

(declare-fun tb!2701 () Bool)

(assert (=> (and b!147375 (= (defaultEntry!3025 (v!3371 (underlying!508 thiss!992))) (defaultEntry!3025 (v!3371 (underlying!508 thiss!992)))) t!6544) tb!2701))

(declare-fun result!4405 () Bool)

(assert (=> tb!2701 (= result!4405 tp_is_empty!2991)))

(assert (=> b!147371 t!6544))

(declare-fun b_and!9265 () Bool)

(assert (= b_and!9261 (and (=> t!6544 result!4405) b_and!9265)))

(declare-fun t!6546 () Bool)

(declare-fun tb!2703 () Bool)

(assert (=> (and b!147370 (= (defaultEntry!3025 newMap!16) (defaultEntry!3025 (v!3371 (underlying!508 thiss!992)))) t!6546) tb!2703))

(declare-fun result!4409 () Bool)

(assert (= result!4409 result!4405))

(assert (=> b!147371 t!6546))

(declare-fun b_and!9267 () Bool)

(assert (= b_and!9263 (and (=> t!6546 result!4409) b_and!9267)))

(declare-fun m!177337 () Bool)

(assert (=> b!147367 m!177337))

(declare-fun m!177339 () Bool)

(assert (=> mapNonEmpty!5050 m!177339))

(declare-fun m!177341 () Bool)

(assert (=> b!147375 m!177341))

(declare-fun m!177343 () Bool)

(assert (=> b!147375 m!177343))

(declare-fun m!177345 () Bool)

(assert (=> start!15270 m!177345))

(declare-fun m!177347 () Bool)

(assert (=> b!147360 m!177347))

(declare-fun m!177349 () Bool)

(assert (=> b!147360 m!177349))

(declare-fun m!177351 () Bool)

(assert (=> b!147360 m!177351))

(declare-fun m!177353 () Bool)

(assert (=> b!147360 m!177353))

(assert (=> b!147360 m!177351))

(assert (=> b!147360 m!177351))

(declare-fun m!177355 () Bool)

(assert (=> b!147360 m!177355))

(assert (=> b!147360 m!177351))

(declare-fun m!177357 () Bool)

(assert (=> b!147360 m!177357))

(assert (=> b!147368 m!177351))

(declare-fun m!177359 () Bool)

(assert (=> b!147368 m!177359))

(declare-fun m!177361 () Bool)

(assert (=> b!147368 m!177361))

(declare-fun m!177363 () Bool)

(assert (=> b!147371 m!177363))

(declare-fun m!177365 () Bool)

(assert (=> b!147371 m!177365))

(declare-fun m!177367 () Bool)

(assert (=> b!147371 m!177367))

(assert (=> b!147371 m!177351))

(declare-fun m!177369 () Bool)

(assert (=> b!147371 m!177369))

(assert (=> b!147371 m!177351))

(assert (=> b!147371 m!177365))

(assert (=> b!147371 m!177351))

(assert (=> b!147371 m!177367))

(declare-fun m!177371 () Bool)

(assert (=> b!147371 m!177371))

(assert (=> b!147371 m!177363))

(declare-fun m!177373 () Bool)

(assert (=> mapNonEmpty!5049 m!177373))

(declare-fun m!177375 () Bool)

(assert (=> b!147370 m!177375))

(declare-fun m!177377 () Bool)

(assert (=> b!147370 m!177377))

(declare-fun m!177379 () Bool)

(assert (=> b!147366 m!177379))

(check-sat (not b_next!3151) b_and!9267 (not b_next!3149) (not b!147370) (not b!147371) (not mapNonEmpty!5050) tp_is_empty!2991 b_and!9265 (not b!147366) (not b!147368) (not b!147367) (not start!15270) (not mapNonEmpty!5049) (not b!147360) (not b!147375) (not b_lambda!6627))
(check-sat b_and!9265 b_and!9267 (not b_next!3149) (not b_next!3151))
