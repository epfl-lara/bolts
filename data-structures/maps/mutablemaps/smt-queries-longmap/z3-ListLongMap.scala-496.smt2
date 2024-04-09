; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11272 () Bool)

(assert start!11272)

(declare-fun b!92616 () Bool)

(declare-fun b_free!2345 () Bool)

(declare-fun b_next!2345 () Bool)

(assert (=> b!92616 (= b_free!2345 (not b_next!2345))))

(declare-fun tp!9295 () Bool)

(declare-fun b_and!5609 () Bool)

(assert (=> b!92616 (= tp!9295 b_and!5609)))

(declare-fun b!92614 () Bool)

(declare-fun b_free!2347 () Bool)

(declare-fun b_next!2347 () Bool)

(assert (=> b!92614 (= b_free!2347 (not b_next!2347))))

(declare-fun tp!9293 () Bool)

(declare-fun b_and!5611 () Bool)

(assert (=> b!92614 (= tp!9293 b_and!5611)))

(declare-fun b!92596 () Bool)

(declare-fun e!60384 () Bool)

(declare-fun e!60386 () Bool)

(assert (=> b!92596 (= e!60384 (not e!60386))))

(declare-fun res!47072 () Bool)

(assert (=> b!92596 (=> res!47072 e!60386)))

(declare-datatypes ((V!3099 0))(
  ( (V!3100 (val!1339 Int)) )
))
(declare-datatypes ((array!4148 0))(
  ( (array!4149 (arr!1972 (Array (_ BitVec 32) (_ BitVec 64))) (size!2220 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!951 0))(
  ( (ValueCellFull!951 (v!2734 V!3099)) (EmptyCell!951) )
))
(declare-datatypes ((array!4150 0))(
  ( (array!4151 (arr!1973 (Array (_ BitVec 32) ValueCell!951)) (size!2221 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!810 0))(
  ( (LongMapFixedSize!811 (defaultEntry!2419 Int) (mask!6485 (_ BitVec 32)) (extraKeys!2248 (_ BitVec 32)) (zeroValue!2306 V!3099) (minValue!2306 V!3099) (_size!454 (_ BitVec 32)) (_keys!4101 array!4148) (_values!2402 array!4150) (_vacant!454 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!614 0))(
  ( (Cell!615 (v!2735 LongMapFixedSize!810)) )
))
(declare-datatypes ((LongMap!614 0))(
  ( (LongMap!615 (underlying!318 Cell!614)) )
))
(declare-fun thiss!992 () LongMap!614)

(declare-datatypes ((tuple2!2302 0))(
  ( (tuple2!2303 (_1!1161 (_ BitVec 64)) (_2!1161 V!3099)) )
))
(declare-datatypes ((List!1586 0))(
  ( (Nil!1583) (Cons!1582 (h!2174 tuple2!2302) (t!5444 List!1586)) )
))
(declare-datatypes ((ListLongMap!1523 0))(
  ( (ListLongMap!1524 (toList!777 List!1586)) )
))
(declare-fun lt!45437 () ListLongMap!1523)

(declare-fun lt!45434 () ListLongMap!1523)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!92596 (= res!47072 (or (not (= lt!45437 lt!45434)) (bvsge (bvsub from!355 #b00000000000000000000000000000001) (size!2220 (_keys!4101 (v!2735 (underlying!318 thiss!992)))))))))

(declare-datatypes ((tuple2!2304 0))(
  ( (tuple2!2305 (_1!1162 Bool) (_2!1162 LongMapFixedSize!810)) )
))
(declare-fun lt!45426 () tuple2!2304)

(declare-fun map!1229 (LongMapFixedSize!810) ListLongMap!1523)

(assert (=> b!92596 (= lt!45434 (map!1229 (_2!1162 lt!45426)))))

(declare-fun getCurrentListMap!459 (array!4148 array!4150 (_ BitVec 32) (_ BitVec 32) V!3099 V!3099 (_ BitVec 32) Int) ListLongMap!1523)

(assert (=> b!92596 (= lt!45437 (getCurrentListMap!459 (_keys!4101 (v!2735 (underlying!318 thiss!992))) (_values!2402 (v!2735 (underlying!318 thiss!992))) (mask!6485 (v!2735 (underlying!318 thiss!992))) (extraKeys!2248 (v!2735 (underlying!318 thiss!992))) (zeroValue!2306 (v!2735 (underlying!318 thiss!992))) (minValue!2306 (v!2735 (underlying!318 thiss!992))) from!355 (defaultEntry!2419 (v!2735 (underlying!318 thiss!992)))))))

(declare-fun lt!45431 () ListLongMap!1523)

(declare-fun lt!45436 () tuple2!2302)

(declare-fun lt!45424 () tuple2!2302)

(declare-fun lt!45432 () ListLongMap!1523)

(declare-fun +!132 (ListLongMap!1523 tuple2!2302) ListLongMap!1523)

(assert (=> b!92596 (= (+!132 lt!45431 lt!45424) (+!132 (+!132 lt!45432 lt!45424) lt!45436))))

(assert (=> b!92596 (= lt!45424 (tuple2!2303 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2306 (v!2735 (underlying!318 thiss!992)))))))

(declare-fun lt!45425 () V!3099)

(declare-datatypes ((Unit!2782 0))(
  ( (Unit!2783) )
))
(declare-fun lt!45428 () Unit!2782)

(declare-fun addCommutativeForDiffKeys!51 (ListLongMap!1523 (_ BitVec 64) V!3099 (_ BitVec 64) V!3099) Unit!2782)

(assert (=> b!92596 (= lt!45428 (addCommutativeForDiffKeys!51 lt!45432 (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) lt!45425 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2306 (v!2735 (underlying!318 thiss!992)))))))

(declare-fun lt!45429 () ListLongMap!1523)

(assert (=> b!92596 (= lt!45429 lt!45431)))

(assert (=> b!92596 (= lt!45431 (+!132 lt!45432 lt!45436))))

(declare-fun lt!45440 () ListLongMap!1523)

(declare-fun lt!45430 () tuple2!2302)

(assert (=> b!92596 (= lt!45429 (+!132 lt!45440 lt!45430))))

(declare-fun lt!45441 () ListLongMap!1523)

(assert (=> b!92596 (= lt!45432 (+!132 lt!45441 lt!45430))))

(assert (=> b!92596 (= lt!45430 (tuple2!2303 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2306 (v!2735 (underlying!318 thiss!992)))))))

(assert (=> b!92596 (= lt!45440 (+!132 lt!45441 lt!45436))))

(assert (=> b!92596 (= lt!45436 (tuple2!2303 (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) lt!45425))))

(declare-fun lt!45427 () Unit!2782)

(assert (=> b!92596 (= lt!45427 (addCommutativeForDiffKeys!51 lt!45441 (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) lt!45425 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2306 (v!2735 (underlying!318 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!96 (array!4148 array!4150 (_ BitVec 32) (_ BitVec 32) V!3099 V!3099 (_ BitVec 32) Int) ListLongMap!1523)

(assert (=> b!92596 (= lt!45441 (getCurrentListMapNoExtraKeys!96 (_keys!4101 (v!2735 (underlying!318 thiss!992))) (_values!2402 (v!2735 (underlying!318 thiss!992))) (mask!6485 (v!2735 (underlying!318 thiss!992))) (extraKeys!2248 (v!2735 (underlying!318 thiss!992))) (zeroValue!2306 (v!2735 (underlying!318 thiss!992))) (minValue!2306 (v!2735 (underlying!318 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2419 (v!2735 (underlying!318 thiss!992)))))))

(declare-fun res!47066 () Bool)

(declare-fun e!60372 () Bool)

(assert (=> start!11272 (=> (not res!47066) (not e!60372))))

(declare-fun valid!359 (LongMap!614) Bool)

(assert (=> start!11272 (= res!47066 (valid!359 thiss!992))))

(assert (=> start!11272 e!60372))

(declare-fun e!60387 () Bool)

(assert (=> start!11272 e!60387))

(assert (=> start!11272 true))

(declare-fun e!60381 () Bool)

(assert (=> start!11272 e!60381))

(declare-fun mapNonEmpty!3595 () Bool)

(declare-fun mapRes!3596 () Bool)

(declare-fun tp!9294 () Bool)

(declare-fun e!60375 () Bool)

(assert (=> mapNonEmpty!3595 (= mapRes!3596 (and tp!9294 e!60375))))

(declare-fun mapValue!3595 () ValueCell!951)

(declare-fun mapKey!3596 () (_ BitVec 32))

(declare-fun newMap!16 () LongMapFixedSize!810)

(declare-fun mapRest!3596 () (Array (_ BitVec 32) ValueCell!951))

(assert (=> mapNonEmpty!3595 (= (arr!1973 (_values!2402 newMap!16)) (store mapRest!3596 mapKey!3596 mapValue!3595))))

(declare-fun mapIsEmpty!3595 () Bool)

(declare-fun mapRes!3595 () Bool)

(assert (=> mapIsEmpty!3595 mapRes!3595))

(declare-fun b!92597 () Bool)

(declare-fun res!47073 () Bool)

(assert (=> b!92597 (=> (not res!47073) (not e!60372))))

(assert (=> b!92597 (= res!47073 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2220 (_keys!4101 (v!2735 (underlying!318 thiss!992)))))))))

(declare-fun b!92598 () Bool)

(assert (=> b!92598 (= e!60386 (= (getCurrentListMap!459 (_keys!4101 (v!2735 (underlying!318 thiss!992))) (_values!2402 (v!2735 (underlying!318 thiss!992))) (mask!6485 (v!2735 (underlying!318 thiss!992))) (extraKeys!2248 (v!2735 (underlying!318 thiss!992))) (zeroValue!2306 (v!2735 (underlying!318 thiss!992))) (minValue!2306 (v!2735 (underlying!318 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2419 (v!2735 (underlying!318 thiss!992)))) lt!45434))))

(declare-fun b!92599 () Bool)

(declare-fun e!60385 () Bool)

(declare-fun e!60379 () Bool)

(assert (=> b!92599 (= e!60385 e!60379)))

(declare-fun res!47068 () Bool)

(assert (=> b!92599 (=> (not res!47068) (not e!60379))))

(assert (=> b!92599 (= res!47068 (and (not (= (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1261 (ValueCell!951 V!3099) V!3099)

(declare-fun dynLambda!367 (Int (_ BitVec 64)) V!3099)

(assert (=> b!92599 (= lt!45425 (get!1261 (select (arr!1973 (_values!2402 (v!2735 (underlying!318 thiss!992)))) from!355) (dynLambda!367 (defaultEntry!2419 (v!2735 (underlying!318 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!92600 () Bool)

(declare-fun e!60388 () Unit!2782)

(declare-fun Unit!2784 () Unit!2782)

(assert (=> b!92600 (= e!60388 Unit!2784)))

(declare-fun b!92601 () Bool)

(declare-fun Unit!2785 () Unit!2782)

(assert (=> b!92601 (= e!60388 Unit!2785)))

(declare-fun lt!45433 () Unit!2782)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!87 (array!4148 array!4150 (_ BitVec 32) (_ BitVec 32) V!3099 V!3099 (_ BitVec 64) (_ BitVec 32) Int) Unit!2782)

(assert (=> b!92601 (= lt!45433 (lemmaListMapContainsThenArrayContainsFrom!87 (_keys!4101 (v!2735 (underlying!318 thiss!992))) (_values!2402 (v!2735 (underlying!318 thiss!992))) (mask!6485 (v!2735 (underlying!318 thiss!992))) (extraKeys!2248 (v!2735 (underlying!318 thiss!992))) (zeroValue!2306 (v!2735 (underlying!318 thiss!992))) (minValue!2306 (v!2735 (underlying!318 thiss!992))) (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2419 (v!2735 (underlying!318 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!92601 (arrayContainsKey!0 (_keys!4101 (v!2735 (underlying!318 thiss!992))) (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!45438 () Unit!2782)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4148 (_ BitVec 32) (_ BitVec 32)) Unit!2782)

(assert (=> b!92601 (= lt!45438 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4101 (v!2735 (underlying!318 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1587 0))(
  ( (Nil!1584) (Cons!1583 (h!2175 (_ BitVec 64)) (t!5445 List!1587)) )
))
(declare-fun arrayNoDuplicates!0 (array!4148 (_ BitVec 32) List!1587) Bool)

(assert (=> b!92601 (arrayNoDuplicates!0 (_keys!4101 (v!2735 (underlying!318 thiss!992))) from!355 Nil!1584)))

(declare-fun lt!45423 () Unit!2782)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4148 (_ BitVec 32) (_ BitVec 64) List!1587) Unit!2782)

(assert (=> b!92601 (= lt!45423 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4101 (v!2735 (underlying!318 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) (Cons!1583 (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) Nil!1584)))))

(assert (=> b!92601 false))

(declare-fun b!92602 () Bool)

(declare-fun e!60380 () Bool)

(declare-fun e!60378 () Bool)

(assert (=> b!92602 (= e!60380 (and e!60378 mapRes!3595))))

(declare-fun condMapEmpty!3596 () Bool)

(declare-fun mapDefault!3596 () ValueCell!951)

(assert (=> b!92602 (= condMapEmpty!3596 (= (arr!1973 (_values!2402 (v!2735 (underlying!318 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!951)) mapDefault!3596)))))

(declare-fun b!92603 () Bool)

(assert (=> b!92603 (= e!60372 e!60385)))

(declare-fun res!47065 () Bool)

(assert (=> b!92603 (=> (not res!47065) (not e!60385))))

(declare-fun lt!45439 () ListLongMap!1523)

(declare-fun lt!45435 () ListLongMap!1523)

(assert (=> b!92603 (= res!47065 (= lt!45439 lt!45435))))

(assert (=> b!92603 (= lt!45435 (map!1229 newMap!16))))

(assert (=> b!92603 (= lt!45439 (getCurrentListMap!459 (_keys!4101 (v!2735 (underlying!318 thiss!992))) (_values!2402 (v!2735 (underlying!318 thiss!992))) (mask!6485 (v!2735 (underlying!318 thiss!992))) (extraKeys!2248 (v!2735 (underlying!318 thiss!992))) (zeroValue!2306 (v!2735 (underlying!318 thiss!992))) (minValue!2306 (v!2735 (underlying!318 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2419 (v!2735 (underlying!318 thiss!992)))))))

(declare-fun b!92604 () Bool)

(declare-fun res!47069 () Bool)

(assert (=> b!92604 (=> res!47069 e!60386)))

(assert (=> b!92604 (= res!47069 (bvslt (bvadd #b00000000000000000000000000000001 (mask!6485 (_2!1162 lt!45426))) (_size!454 (v!2735 (underlying!318 thiss!992)))))))

(declare-fun b!92605 () Bool)

(assert (=> b!92605 (= e!60379 e!60384)))

(declare-fun res!47067 () Bool)

(assert (=> b!92605 (=> (not res!47067) (not e!60384))))

(assert (=> b!92605 (= res!47067 (and (_1!1162 lt!45426) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!45422 () Unit!2782)

(assert (=> b!92605 (= lt!45422 e!60388)))

(declare-fun c!15441 () Bool)

(declare-fun contains!788 (ListLongMap!1523 (_ BitVec 64)) Bool)

(assert (=> b!92605 (= c!15441 (contains!788 lt!45435 (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355)))))

(declare-fun update!136 (LongMapFixedSize!810 (_ BitVec 64) V!3099) tuple2!2304)

(assert (=> b!92605 (= lt!45426 (update!136 newMap!16 (select (arr!1972 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) from!355) lt!45425))))

(declare-fun b!92606 () Bool)

(declare-fun e!60382 () Bool)

(declare-fun tp_is_empty!2589 () Bool)

(assert (=> b!92606 (= e!60382 tp_is_empty!2589)))

(declare-fun b!92607 () Bool)

(declare-fun e!60376 () Bool)

(declare-fun e!60377 () Bool)

(assert (=> b!92607 (= e!60376 e!60377)))

(declare-fun b!92608 () Bool)

(declare-fun res!47071 () Bool)

(assert (=> b!92608 (=> res!47071 e!60386)))

(declare-fun valid!360 (LongMapFixedSize!810) Bool)

(assert (=> b!92608 (= res!47071 (not (valid!360 (_2!1162 lt!45426))))))

(declare-fun b!92609 () Bool)

(assert (=> b!92609 (= e!60378 tp_is_empty!2589)))

(declare-fun b!92610 () Bool)

(declare-fun res!47070 () Bool)

(assert (=> b!92610 (=> (not res!47070) (not e!60372))))

(assert (=> b!92610 (= res!47070 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6485 newMap!16)) (_size!454 (v!2735 (underlying!318 thiss!992)))))))

(declare-fun b!92611 () Bool)

(declare-fun e!60383 () Bool)

(declare-fun e!60371 () Bool)

(assert (=> b!92611 (= e!60383 (and e!60371 mapRes!3596))))

(declare-fun condMapEmpty!3595 () Bool)

(declare-fun mapDefault!3595 () ValueCell!951)

(assert (=> b!92611 (= condMapEmpty!3595 (= (arr!1973 (_values!2402 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!951)) mapDefault!3595)))))

(declare-fun b!92612 () Bool)

(assert (=> b!92612 (= e!60387 e!60376)))

(declare-fun b!92613 () Bool)

(declare-fun res!47064 () Bool)

(assert (=> b!92613 (=> (not res!47064) (not e!60372))))

(assert (=> b!92613 (= res!47064 (valid!360 newMap!16))))

(declare-fun mapIsEmpty!3596 () Bool)

(assert (=> mapIsEmpty!3596 mapRes!3596))

(declare-fun array_inv!1183 (array!4148) Bool)

(declare-fun array_inv!1184 (array!4150) Bool)

(assert (=> b!92614 (= e!60381 (and tp!9293 tp_is_empty!2589 (array_inv!1183 (_keys!4101 newMap!16)) (array_inv!1184 (_values!2402 newMap!16)) e!60383))))

(declare-fun b!92615 () Bool)

(assert (=> b!92615 (= e!60375 tp_is_empty!2589)))

(declare-fun mapNonEmpty!3596 () Bool)

(declare-fun tp!9296 () Bool)

(assert (=> mapNonEmpty!3596 (= mapRes!3595 (and tp!9296 e!60382))))

(declare-fun mapRest!3595 () (Array (_ BitVec 32) ValueCell!951))

(declare-fun mapKey!3595 () (_ BitVec 32))

(declare-fun mapValue!3596 () ValueCell!951)

(assert (=> mapNonEmpty!3596 (= (arr!1973 (_values!2402 (v!2735 (underlying!318 thiss!992)))) (store mapRest!3595 mapKey!3595 mapValue!3596))))

(assert (=> b!92616 (= e!60377 (and tp!9295 tp_is_empty!2589 (array_inv!1183 (_keys!4101 (v!2735 (underlying!318 thiss!992)))) (array_inv!1184 (_values!2402 (v!2735 (underlying!318 thiss!992)))) e!60380))))

(declare-fun b!92617 () Bool)

(assert (=> b!92617 (= e!60371 tp_is_empty!2589)))

(assert (= (and start!11272 res!47066) b!92597))

(assert (= (and b!92597 res!47073) b!92613))

(assert (= (and b!92613 res!47064) b!92610))

(assert (= (and b!92610 res!47070) b!92603))

(assert (= (and b!92603 res!47065) b!92599))

(assert (= (and b!92599 res!47068) b!92605))

(assert (= (and b!92605 c!15441) b!92601))

(assert (= (and b!92605 (not c!15441)) b!92600))

(assert (= (and b!92605 res!47067) b!92596))

(assert (= (and b!92596 (not res!47072)) b!92608))

(assert (= (and b!92608 (not res!47071)) b!92604))

(assert (= (and b!92604 (not res!47069)) b!92598))

(assert (= (and b!92602 condMapEmpty!3596) mapIsEmpty!3595))

(assert (= (and b!92602 (not condMapEmpty!3596)) mapNonEmpty!3596))

(get-info :version)

(assert (= (and mapNonEmpty!3596 ((_ is ValueCellFull!951) mapValue!3596)) b!92606))

(assert (= (and b!92602 ((_ is ValueCellFull!951) mapDefault!3596)) b!92609))

(assert (= b!92616 b!92602))

(assert (= b!92607 b!92616))

(assert (= b!92612 b!92607))

(assert (= start!11272 b!92612))

(assert (= (and b!92611 condMapEmpty!3595) mapIsEmpty!3596))

(assert (= (and b!92611 (not condMapEmpty!3595)) mapNonEmpty!3595))

(assert (= (and mapNonEmpty!3595 ((_ is ValueCellFull!951) mapValue!3595)) b!92615))

(assert (= (and b!92611 ((_ is ValueCellFull!951) mapDefault!3595)) b!92617))

(assert (= b!92614 b!92611))

(assert (= start!11272 b!92614))

(declare-fun b_lambda!4093 () Bool)

(assert (=> (not b_lambda!4093) (not b!92599)))

(declare-fun t!5441 () Bool)

(declare-fun tb!1825 () Bool)

(assert (=> (and b!92616 (= (defaultEntry!2419 (v!2735 (underlying!318 thiss!992))) (defaultEntry!2419 (v!2735 (underlying!318 thiss!992)))) t!5441) tb!1825))

(declare-fun result!3115 () Bool)

(assert (=> tb!1825 (= result!3115 tp_is_empty!2589)))

(assert (=> b!92599 t!5441))

(declare-fun b_and!5613 () Bool)

(assert (= b_and!5609 (and (=> t!5441 result!3115) b_and!5613)))

(declare-fun t!5443 () Bool)

(declare-fun tb!1827 () Bool)

(assert (=> (and b!92614 (= (defaultEntry!2419 newMap!16) (defaultEntry!2419 (v!2735 (underlying!318 thiss!992)))) t!5443) tb!1827))

(declare-fun result!3119 () Bool)

(assert (= result!3119 result!3115))

(assert (=> b!92599 t!5443))

(declare-fun b_and!5615 () Bool)

(assert (= b_and!5611 (and (=> t!5443 result!3119) b_and!5615)))

(declare-fun m!99719 () Bool)

(assert (=> b!92608 m!99719))

(declare-fun m!99721 () Bool)

(assert (=> b!92596 m!99721))

(declare-fun m!99723 () Bool)

(assert (=> b!92596 m!99723))

(declare-fun m!99725 () Bool)

(assert (=> b!92596 m!99725))

(declare-fun m!99727 () Bool)

(assert (=> b!92596 m!99727))

(declare-fun m!99729 () Bool)

(assert (=> b!92596 m!99729))

(declare-fun m!99731 () Bool)

(assert (=> b!92596 m!99731))

(declare-fun m!99733 () Bool)

(assert (=> b!92596 m!99733))

(assert (=> b!92596 m!99727))

(declare-fun m!99735 () Bool)

(assert (=> b!92596 m!99735))

(declare-fun m!99737 () Bool)

(assert (=> b!92596 m!99737))

(assert (=> b!92596 m!99723))

(declare-fun m!99739 () Bool)

(assert (=> b!92596 m!99739))

(assert (=> b!92596 m!99727))

(declare-fun m!99741 () Bool)

(assert (=> b!92596 m!99741))

(declare-fun m!99743 () Bool)

(assert (=> b!92596 m!99743))

(declare-fun m!99745 () Bool)

(assert (=> b!92596 m!99745))

(declare-fun m!99747 () Bool)

(assert (=> mapNonEmpty!3595 m!99747))

(declare-fun m!99749 () Bool)

(assert (=> b!92613 m!99749))

(declare-fun m!99751 () Bool)

(assert (=> b!92598 m!99751))

(assert (=> b!92605 m!99727))

(assert (=> b!92605 m!99727))

(declare-fun m!99753 () Bool)

(assert (=> b!92605 m!99753))

(assert (=> b!92605 m!99727))

(declare-fun m!99755 () Bool)

(assert (=> b!92605 m!99755))

(declare-fun m!99757 () Bool)

(assert (=> b!92616 m!99757))

(declare-fun m!99759 () Bool)

(assert (=> b!92616 m!99759))

(assert (=> b!92599 m!99727))

(declare-fun m!99761 () Bool)

(assert (=> b!92599 m!99761))

(declare-fun m!99763 () Bool)

(assert (=> b!92599 m!99763))

(assert (=> b!92599 m!99761))

(assert (=> b!92599 m!99763))

(declare-fun m!99765 () Bool)

(assert (=> b!92599 m!99765))

(declare-fun m!99767 () Bool)

(assert (=> b!92601 m!99767))

(declare-fun m!99769 () Bool)

(assert (=> b!92601 m!99769))

(assert (=> b!92601 m!99727))

(declare-fun m!99771 () Bool)

(assert (=> b!92601 m!99771))

(assert (=> b!92601 m!99727))

(assert (=> b!92601 m!99727))

(declare-fun m!99773 () Bool)

(assert (=> b!92601 m!99773))

(assert (=> b!92601 m!99727))

(declare-fun m!99775 () Bool)

(assert (=> b!92601 m!99775))

(declare-fun m!99777 () Bool)

(assert (=> mapNonEmpty!3596 m!99777))

(declare-fun m!99779 () Bool)

(assert (=> b!92603 m!99779))

(declare-fun m!99781 () Bool)

(assert (=> b!92603 m!99781))

(declare-fun m!99783 () Bool)

(assert (=> start!11272 m!99783))

(declare-fun m!99785 () Bool)

(assert (=> b!92614 m!99785))

(declare-fun m!99787 () Bool)

(assert (=> b!92614 m!99787))

(check-sat (not b!92599) (not b!92608) tp_is_empty!2589 (not mapNonEmpty!3596) (not b_lambda!4093) (not mapNonEmpty!3595) (not b!92614) b_and!5615 (not start!11272) (not b!92616) b_and!5613 (not b!92603) (not b!92598) (not b!92601) (not b_next!2347) (not b!92596) (not b!92613) (not b_next!2345) (not b!92605))
(check-sat b_and!5613 b_and!5615 (not b_next!2345) (not b_next!2347))
