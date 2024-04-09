; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14190 () Bool)

(assert start!14190)

(declare-fun b!131717 () Bool)

(declare-fun b_free!2909 () Bool)

(declare-fun b_next!2909 () Bool)

(assert (=> b!131717 (= b_free!2909 (not b_next!2909))))

(declare-fun tp!11165 () Bool)

(declare-fun b_and!8177 () Bool)

(assert (=> b!131717 (= tp!11165 b_and!8177)))

(declare-fun b!131713 () Bool)

(declare-fun b_free!2911 () Bool)

(declare-fun b_next!2911 () Bool)

(assert (=> b!131713 (= b_free!2911 (not b_next!2911))))

(declare-fun tp!11164 () Bool)

(declare-fun b_and!8179 () Bool)

(assert (=> b!131713 (= tp!11164 b_and!8179)))

(declare-fun b!131699 () Bool)

(declare-fun e!85904 () Bool)

(declare-fun e!85903 () Bool)

(assert (=> b!131699 (= e!85904 e!85903)))

(declare-fun b!131700 () Bool)

(declare-fun e!85907 () Bool)

(declare-fun e!85896 () Bool)

(assert (=> b!131700 (= e!85907 e!85896)))

(declare-fun res!63458 () Bool)

(assert (=> b!131700 (=> (not res!63458) (not e!85896))))

(declare-datatypes ((V!3475 0))(
  ( (V!3476 (val!1480 Int)) )
))
(declare-datatypes ((array!4766 0))(
  ( (array!4767 (arr!2254 (Array (_ BitVec 32) (_ BitVec 64))) (size!2522 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1092 0))(
  ( (ValueCellFull!1092 (v!3185 V!3475)) (EmptyCell!1092) )
))
(declare-datatypes ((array!4768 0))(
  ( (array!4769 (arr!2255 (Array (_ BitVec 32) ValueCell!1092)) (size!2523 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1092 0))(
  ( (LongMapFixedSize!1093 (defaultEntry!2854 Int) (mask!7148 (_ BitVec 32)) (extraKeys!2621 (_ BitVec 32)) (zeroValue!2710 V!3475) (minValue!2710 V!3475) (_size!595 (_ BitVec 32)) (_keys!4601 array!4766) (_values!2837 array!4768) (_vacant!595 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!882 0))(
  ( (Cell!883 (v!3186 LongMapFixedSize!1092)) )
))
(declare-datatypes ((LongMap!882 0))(
  ( (LongMap!883 (underlying!452 Cell!882)) )
))
(declare-fun thiss!992 () LongMap!882)

(declare-datatypes ((tuple2!2600 0))(
  ( (tuple2!2601 (_1!1310 (_ BitVec 64)) (_2!1310 V!3475)) )
))
(declare-datatypes ((List!1732 0))(
  ( (Nil!1729) (Cons!1728 (h!2333 tuple2!2600) (t!6179 List!1732)) )
))
(declare-datatypes ((ListLongMap!1703 0))(
  ( (ListLongMap!1704 (toList!867 List!1732)) )
))
(declare-fun lt!68659 () ListLongMap!1703)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!68658 () ListLongMap!1703)

(assert (=> b!131700 (= res!63458 (and (= lt!68658 lt!68659) (not (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1092)

(declare-fun map!1401 (LongMapFixedSize!1092) ListLongMap!1703)

(assert (=> b!131700 (= lt!68659 (map!1401 newMap!16))))

(declare-fun getCurrentListMap!538 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 32) Int) ListLongMap!1703)

(assert (=> b!131700 (= lt!68658 (getCurrentListMap!538 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun mapIsEmpty!4619 () Bool)

(declare-fun mapRes!4619 () Bool)

(assert (=> mapIsEmpty!4619 mapRes!4619))

(declare-fun b!131701 () Bool)

(declare-fun e!85900 () Bool)

(assert (=> b!131701 (= e!85896 e!85900)))

(declare-fun res!63456 () Bool)

(assert (=> b!131701 (=> (not res!63456) (not e!85900))))

(declare-fun contains!892 (ListLongMap!1703 (_ BitVec 64)) Bool)

(assert (=> b!131701 (= res!63456 (contains!892 lt!68659 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2602 0))(
  ( (tuple2!2603 (_1!1311 Bool) (_2!1311 LongMapFixedSize!1092)) )
))
(declare-fun lt!68657 () tuple2!2602)

(declare-fun update!190 (LongMapFixedSize!1092 (_ BitVec 64) V!3475) tuple2!2602)

(declare-fun get!1481 (ValueCell!1092 V!3475) V!3475)

(declare-fun dynLambda!423 (Int (_ BitVec 64)) V!3475)

(assert (=> b!131701 (= lt!68657 (update!190 newMap!16 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!131702 () Bool)

(declare-fun res!63461 () Bool)

(assert (=> b!131702 (=> (not res!63461) (not e!85900))))

(assert (=> b!131702 (= res!63461 (and (= (size!2523 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7148 (v!3186 (underlying!452 thiss!992))))) (= (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (size!2523 (_values!2837 (v!3186 (underlying!452 thiss!992))))) (bvsge (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!131703 () Bool)

(declare-fun res!63455 () Bool)

(assert (=> b!131703 (=> (not res!63455) (not e!85900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4766 (_ BitVec 32)) Bool)

(assert (=> b!131703 (= res!63455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun b!131704 () Bool)

(declare-fun e!85897 () Bool)

(declare-fun tp_is_empty!2871 () Bool)

(assert (=> b!131704 (= e!85897 tp_is_empty!2871)))

(declare-fun b!131705 () Bool)

(declare-fun res!63453 () Bool)

(assert (=> b!131705 (=> (not res!63453) (not e!85900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!131705 (= res!63453 (validMask!0 (mask!7148 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun b!131706 () Bool)

(declare-fun e!85909 () Bool)

(declare-fun e!85908 () Bool)

(assert (=> b!131706 (= e!85909 (and e!85908 mapRes!4619))))

(declare-fun condMapEmpty!4619 () Bool)

(declare-fun mapDefault!4620 () ValueCell!1092)

(assert (=> b!131706 (= condMapEmpty!4619 (= (arr!2255 (_values!2837 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1092)) mapDefault!4620)))))

(declare-fun b!131707 () Bool)

(declare-fun e!85902 () Bool)

(assert (=> b!131707 (= e!85902 tp_is_empty!2871)))

(declare-fun b!131709 () Bool)

(declare-datatypes ((List!1733 0))(
  ( (Nil!1730) (Cons!1729 (h!2334 (_ BitVec 64)) (t!6180 List!1733)) )
))
(declare-fun arrayNoDuplicates!0 (array!4766 (_ BitVec 32) List!1733) Bool)

(assert (=> b!131709 (= e!85900 (not (arrayNoDuplicates!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000000 Nil!1730)))))

(declare-fun mapNonEmpty!4619 () Bool)

(declare-fun mapRes!4620 () Bool)

(declare-fun tp!11163 () Bool)

(declare-fun e!85901 () Bool)

(assert (=> mapNonEmpty!4619 (= mapRes!4620 (and tp!11163 e!85901))))

(declare-fun mapValue!4619 () ValueCell!1092)

(declare-fun mapKey!4619 () (_ BitVec 32))

(declare-fun mapRest!4620 () (Array (_ BitVec 32) ValueCell!1092))

(assert (=> mapNonEmpty!4619 (= (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (store mapRest!4620 mapKey!4619 mapValue!4619))))

(declare-fun b!131710 () Bool)

(declare-fun e!85906 () Bool)

(assert (=> b!131710 (= e!85906 (and e!85902 mapRes!4620))))

(declare-fun condMapEmpty!4620 () Bool)

(declare-fun mapDefault!4619 () ValueCell!1092)

(assert (=> b!131710 (= condMapEmpty!4620 (= (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1092)) mapDefault!4619)))))

(declare-fun b!131711 () Bool)

(declare-fun res!63459 () Bool)

(assert (=> b!131711 (=> (not res!63459) (not e!85907))))

(assert (=> b!131711 (= res!63459 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7148 newMap!16)) (_size!595 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun mapNonEmpty!4620 () Bool)

(declare-fun tp!11166 () Bool)

(assert (=> mapNonEmpty!4620 (= mapRes!4619 (and tp!11166 e!85897))))

(declare-fun mapValue!4620 () ValueCell!1092)

(declare-fun mapKey!4620 () (_ BitVec 32))

(declare-fun mapRest!4619 () (Array (_ BitVec 32) ValueCell!1092))

(assert (=> mapNonEmpty!4620 (= (arr!2255 (_values!2837 newMap!16)) (store mapRest!4619 mapKey!4620 mapValue!4620))))

(declare-fun b!131712 () Bool)

(declare-fun res!63454 () Bool)

(assert (=> b!131712 (=> (not res!63454) (not e!85907))))

(assert (=> b!131712 (= res!63454 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992)))))))))

(declare-fun e!85905 () Bool)

(declare-fun array_inv!1387 (array!4766) Bool)

(declare-fun array_inv!1388 (array!4768) Bool)

(assert (=> b!131713 (= e!85905 (and tp!11164 tp_is_empty!2871 (array_inv!1387 (_keys!4601 newMap!16)) (array_inv!1388 (_values!2837 newMap!16)) e!85909))))

(declare-fun b!131714 () Bool)

(assert (=> b!131714 (= e!85908 tp_is_empty!2871)))

(declare-fun mapIsEmpty!4620 () Bool)

(assert (=> mapIsEmpty!4620 mapRes!4620))

(declare-fun b!131715 () Bool)

(declare-fun res!63457 () Bool)

(assert (=> b!131715 (=> (not res!63457) (not e!85907))))

(declare-fun valid!517 (LongMapFixedSize!1092) Bool)

(assert (=> b!131715 (= res!63457 (valid!517 newMap!16))))

(declare-fun b!131708 () Bool)

(declare-fun e!85898 () Bool)

(assert (=> b!131708 (= e!85898 e!85904)))

(declare-fun res!63460 () Bool)

(assert (=> start!14190 (=> (not res!63460) (not e!85907))))

(declare-fun valid!518 (LongMap!882) Bool)

(assert (=> start!14190 (= res!63460 (valid!518 thiss!992))))

(assert (=> start!14190 e!85907))

(assert (=> start!14190 e!85898))

(assert (=> start!14190 true))

(assert (=> start!14190 e!85905))

(declare-fun b!131716 () Bool)

(assert (=> b!131716 (= e!85901 tp_is_empty!2871)))

(assert (=> b!131717 (= e!85903 (and tp!11165 tp_is_empty!2871 (array_inv!1387 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (array_inv!1388 (_values!2837 (v!3186 (underlying!452 thiss!992)))) e!85906))))

(assert (= (and start!14190 res!63460) b!131712))

(assert (= (and b!131712 res!63454) b!131715))

(assert (= (and b!131715 res!63457) b!131711))

(assert (= (and b!131711 res!63459) b!131700))

(assert (= (and b!131700 res!63458) b!131701))

(assert (= (and b!131701 res!63456) b!131705))

(assert (= (and b!131705 res!63453) b!131702))

(assert (= (and b!131702 res!63461) b!131703))

(assert (= (and b!131703 res!63455) b!131709))

(assert (= (and b!131710 condMapEmpty!4620) mapIsEmpty!4620))

(assert (= (and b!131710 (not condMapEmpty!4620)) mapNonEmpty!4619))

(get-info :version)

(assert (= (and mapNonEmpty!4619 ((_ is ValueCellFull!1092) mapValue!4619)) b!131716))

(assert (= (and b!131710 ((_ is ValueCellFull!1092) mapDefault!4619)) b!131707))

(assert (= b!131717 b!131710))

(assert (= b!131699 b!131717))

(assert (= b!131708 b!131699))

(assert (= start!14190 b!131708))

(assert (= (and b!131706 condMapEmpty!4619) mapIsEmpty!4619))

(assert (= (and b!131706 (not condMapEmpty!4619)) mapNonEmpty!4620))

(assert (= (and mapNonEmpty!4620 ((_ is ValueCellFull!1092) mapValue!4620)) b!131704))

(assert (= (and b!131706 ((_ is ValueCellFull!1092) mapDefault!4620)) b!131714))

(assert (= b!131713 b!131706))

(assert (= start!14190 b!131713))

(declare-fun b_lambda!5895 () Bool)

(assert (=> (not b_lambda!5895) (not b!131701)))

(declare-fun t!6176 () Bool)

(declare-fun tb!2409 () Bool)

(assert (=> (and b!131717 (= (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))) t!6176) tb!2409))

(declare-fun result!3971 () Bool)

(assert (=> tb!2409 (= result!3971 tp_is_empty!2871)))

(assert (=> b!131701 t!6176))

(declare-fun b_and!8181 () Bool)

(assert (= b_and!8177 (and (=> t!6176 result!3971) b_and!8181)))

(declare-fun t!6178 () Bool)

(declare-fun tb!2411 () Bool)

(assert (=> (and b!131713 (= (defaultEntry!2854 newMap!16) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))) t!6178) tb!2411))

(declare-fun result!3975 () Bool)

(assert (= result!3975 result!3971))

(assert (=> b!131701 t!6178))

(declare-fun b_and!8183 () Bool)

(assert (= b_and!8179 (and (=> t!6178 result!3975) b_and!8183)))

(declare-fun m!155431 () Bool)

(assert (=> b!131705 m!155431))

(declare-fun m!155433 () Bool)

(assert (=> b!131709 m!155433))

(declare-fun m!155435 () Bool)

(assert (=> b!131701 m!155435))

(declare-fun m!155437 () Bool)

(assert (=> b!131701 m!155437))

(declare-fun m!155439 () Bool)

(assert (=> b!131701 m!155439))

(declare-fun m!155441 () Bool)

(assert (=> b!131701 m!155441))

(assert (=> b!131701 m!155437))

(assert (=> b!131701 m!155441))

(assert (=> b!131701 m!155439))

(declare-fun m!155443 () Bool)

(assert (=> b!131701 m!155443))

(assert (=> b!131701 m!155435))

(assert (=> b!131701 m!155441))

(declare-fun m!155445 () Bool)

(assert (=> b!131701 m!155445))

(declare-fun m!155447 () Bool)

(assert (=> start!14190 m!155447))

(declare-fun m!155449 () Bool)

(assert (=> b!131703 m!155449))

(declare-fun m!155451 () Bool)

(assert (=> b!131713 m!155451))

(declare-fun m!155453 () Bool)

(assert (=> b!131713 m!155453))

(declare-fun m!155455 () Bool)

(assert (=> mapNonEmpty!4619 m!155455))

(declare-fun m!155457 () Bool)

(assert (=> b!131715 m!155457))

(assert (=> b!131700 m!155441))

(declare-fun m!155459 () Bool)

(assert (=> b!131700 m!155459))

(declare-fun m!155461 () Bool)

(assert (=> b!131700 m!155461))

(declare-fun m!155463 () Bool)

(assert (=> b!131717 m!155463))

(declare-fun m!155465 () Bool)

(assert (=> b!131717 m!155465))

(declare-fun m!155467 () Bool)

(assert (=> mapNonEmpty!4620 m!155467))

(check-sat (not b!131705) (not b!131715) (not b_lambda!5895) (not mapNonEmpty!4619) (not start!14190) (not b!131709) (not b_next!2911) (not b!131701) (not b_next!2909) (not b!131717) b_and!8181 tp_is_empty!2871 (not b!131700) b_and!8183 (not mapNonEmpty!4620) (not b!131713) (not b!131703))
(check-sat b_and!8181 b_and!8183 (not b_next!2909) (not b_next!2911))
(get-model)

(declare-fun b_lambda!5899 () Bool)

(assert (= b_lambda!5895 (or (and b!131717 b_free!2909) (and b!131713 b_free!2911 (= (defaultEntry!2854 newMap!16) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))))) b_lambda!5899)))

(check-sat (not b!131705) (not b!131715) (not mapNonEmpty!4619) (not start!14190) (not b!131709) (not b_next!2911) (not b!131701) (not b_next!2909) b_and!8181 tp_is_empty!2871 (not b!131700) b_and!8183 (not b_lambda!5899) (not b!131717) (not mapNonEmpty!4620) (not b!131713) (not b!131703))
(check-sat b_and!8181 b_and!8183 (not b_next!2909) (not b_next!2911))
(get-model)

(declare-fun b!131789 () Bool)

(declare-fun e!85966 () Bool)

(declare-fun call!14404 () Bool)

(assert (=> b!131789 (= e!85966 call!14404)))

(declare-fun bm!14401 () Bool)

(declare-fun c!24333 () Bool)

(assert (=> bm!14401 (= call!14404 (arrayNoDuplicates!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!24333 (Cons!1729 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) Nil!1730) Nil!1730)))))

(declare-fun b!131791 () Bool)

(declare-fun e!85964 () Bool)

(assert (=> b!131791 (= e!85964 e!85966)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!131791 (= c!24333 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!131792 () Bool)

(declare-fun e!85963 () Bool)

(assert (=> b!131792 (= e!85963 e!85964)))

(declare-fun res!63496 () Bool)

(assert (=> b!131792 (=> (not res!63496) (not e!85964))))

(declare-fun e!85965 () Bool)

(assert (=> b!131792 (= res!63496 (not e!85965))))

(declare-fun res!63497 () Bool)

(assert (=> b!131792 (=> (not res!63497) (not e!85965))))

(assert (=> b!131792 (= res!63497 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!131793 () Bool)

(declare-fun contains!894 (List!1733 (_ BitVec 64)) Bool)

(assert (=> b!131793 (= e!85965 (contains!894 Nil!1730 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!40109 () Bool)

(declare-fun res!63495 () Bool)

(assert (=> d!40109 (=> res!63495 e!85963)))

(assert (=> d!40109 (= res!63495 (bvsge #b00000000000000000000000000000000 (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(assert (=> d!40109 (= (arrayNoDuplicates!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000000 Nil!1730) e!85963)))

(declare-fun b!131790 () Bool)

(assert (=> b!131790 (= e!85966 call!14404)))

(assert (= (and d!40109 (not res!63495)) b!131792))

(assert (= (and b!131792 res!63497) b!131793))

(assert (= (and b!131792 res!63496) b!131791))

(assert (= (and b!131791 c!24333) b!131789))

(assert (= (and b!131791 (not c!24333)) b!131790))

(assert (= (or b!131789 b!131790) bm!14401))

(declare-fun m!155507 () Bool)

(assert (=> bm!14401 m!155507))

(declare-fun m!155509 () Bool)

(assert (=> bm!14401 m!155509))

(assert (=> b!131791 m!155507))

(assert (=> b!131791 m!155507))

(declare-fun m!155511 () Bool)

(assert (=> b!131791 m!155511))

(assert (=> b!131792 m!155507))

(assert (=> b!131792 m!155507))

(assert (=> b!131792 m!155511))

(assert (=> b!131793 m!155507))

(assert (=> b!131793 m!155507))

(declare-fun m!155513 () Bool)

(assert (=> b!131793 m!155513))

(assert (=> b!131709 d!40109))

(declare-fun b!131803 () Bool)

(declare-fun e!85974 () Bool)

(declare-fun call!14407 () Bool)

(assert (=> b!131803 (= e!85974 call!14407)))

(declare-fun bm!14404 () Bool)

(assert (=> bm!14404 (= call!14407 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun b!131804 () Bool)

(declare-fun e!85975 () Bool)

(assert (=> b!131804 (= e!85975 call!14407)))

(declare-fun b!131805 () Bool)

(assert (=> b!131805 (= e!85975 e!85974)))

(declare-fun lt!68677 () (_ BitVec 64))

(assert (=> b!131805 (= lt!68677 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4131 0))(
  ( (Unit!4132) )
))
(declare-fun lt!68675 () Unit!4131)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!4766 (_ BitVec 64) (_ BitVec 32)) Unit!4131)

(assert (=> b!131805 (= lt!68675 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) lt!68677 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!4766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!131805 (arrayContainsKey!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) lt!68677 #b00000000000000000000000000000000)))

(declare-fun lt!68676 () Unit!4131)

(assert (=> b!131805 (= lt!68676 lt!68675)))

(declare-fun res!63503 () Bool)

(declare-datatypes ((SeekEntryResult!284 0))(
  ( (MissingZero!284 (index!3295 (_ BitVec 32))) (Found!284 (index!3296 (_ BitVec 32))) (Intermediate!284 (undefined!1096 Bool) (index!3297 (_ BitVec 32)) (x!15512 (_ BitVec 32))) (Undefined!284) (MissingVacant!284 (index!3298 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4766 (_ BitVec 32)) SeekEntryResult!284)

(assert (=> b!131805 (= res!63503 (= (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))) (Found!284 #b00000000000000000000000000000000)))))

(assert (=> b!131805 (=> (not res!63503) (not e!85974))))

(declare-fun b!131802 () Bool)

(declare-fun e!85973 () Bool)

(assert (=> b!131802 (= e!85973 e!85975)))

(declare-fun c!24336 () Bool)

(assert (=> b!131802 (= c!24336 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!40111 () Bool)

(declare-fun res!63502 () Bool)

(assert (=> d!40111 (=> res!63502 e!85973)))

(assert (=> d!40111 (= res!63502 (bvsge #b00000000000000000000000000000000 (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(assert (=> d!40111 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))) e!85973)))

(assert (= (and d!40111 (not res!63502)) b!131802))

(assert (= (and b!131802 c!24336) b!131805))

(assert (= (and b!131802 (not c!24336)) b!131804))

(assert (= (and b!131805 res!63503) b!131803))

(assert (= (or b!131803 b!131804) bm!14404))

(declare-fun m!155515 () Bool)

(assert (=> bm!14404 m!155515))

(assert (=> b!131805 m!155507))

(declare-fun m!155517 () Bool)

(assert (=> b!131805 m!155517))

(declare-fun m!155519 () Bool)

(assert (=> b!131805 m!155519))

(assert (=> b!131805 m!155507))

(declare-fun m!155521 () Bool)

(assert (=> b!131805 m!155521))

(assert (=> b!131802 m!155507))

(assert (=> b!131802 m!155507))

(assert (=> b!131802 m!155511))

(assert (=> b!131703 d!40111))

(declare-fun d!40113 () Bool)

(assert (=> d!40113 (= (validMask!0 (mask!7148 (v!3186 (underlying!452 thiss!992)))) (and (or (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000001111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000011111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000001111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000011111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000001111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000011111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000001111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000011111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000000111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000001111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000011111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000000111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000001111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000011111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000000111111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000001111111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000011111111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000000111111111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000001111111111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000011111111111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00000111111111111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00001111111111111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00011111111111111111111111111111) (= (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!7148 (v!3186 (underlying!452 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!131705 d!40113))

(declare-fun d!40115 () Bool)

(assert (=> d!40115 (= (array_inv!1387 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvsge (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!131717 d!40115))

(declare-fun d!40117 () Bool)

(assert (=> d!40117 (= (array_inv!1388 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvsge (size!2523 (_values!2837 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!131717 d!40117))

(declare-fun d!40119 () Bool)

(assert (=> d!40119 (= (map!1401 newMap!16) (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun bs!5466 () Bool)

(assert (= bs!5466 d!40119))

(declare-fun m!155523 () Bool)

(assert (=> bs!5466 m!155523))

(assert (=> b!131700 d!40119))

(declare-fun d!40121 () Bool)

(declare-fun e!86007 () Bool)

(assert (=> d!40121 e!86007))

(declare-fun res!63525 () Bool)

(assert (=> d!40121 (=> (not res!63525) (not e!86007))))

(assert (=> d!40121 (= res!63525 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))))

(declare-fun lt!68723 () ListLongMap!1703)

(declare-fun lt!68737 () ListLongMap!1703)

(assert (=> d!40121 (= lt!68723 lt!68737)))

(declare-fun lt!68735 () Unit!4131)

(declare-fun e!86005 () Unit!4131)

(assert (=> d!40121 (= lt!68735 e!86005)))

(declare-fun c!24353 () Bool)

(declare-fun e!86012 () Bool)

(assert (=> d!40121 (= c!24353 e!86012)))

(declare-fun res!63529 () Bool)

(assert (=> d!40121 (=> (not res!63529) (not e!86012))))

(assert (=> d!40121 (= res!63529 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun e!86014 () ListLongMap!1703)

(assert (=> d!40121 (= lt!68737 e!86014)))

(declare-fun c!24354 () Bool)

(assert (=> d!40121 (= c!24354 (and (not (= (bvand (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!40121 (validMask!0 (mask!7148 (v!3186 (underlying!452 thiss!992))))))

(assert (=> d!40121 (= (getCurrentListMap!538 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))) lt!68723)))

(declare-fun b!131848 () Bool)

(declare-fun e!86009 () ListLongMap!1703)

(assert (=> b!131848 (= e!86014 e!86009)))

(declare-fun c!24351 () Bool)

(assert (=> b!131848 (= c!24351 (and (not (= (bvand (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131849 () Bool)

(declare-fun call!14424 () ListLongMap!1703)

(assert (=> b!131849 (= e!86009 call!14424)))

(declare-fun b!131850 () Bool)

(declare-fun e!86003 () Bool)

(declare-fun apply!115 (ListLongMap!1703 (_ BitVec 64)) V!3475)

(assert (=> b!131850 (= e!86003 (= (apply!115 lt!68723 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun b!131851 () Bool)

(declare-fun e!86002 () Bool)

(assert (=> b!131851 (= e!86002 e!86003)))

(declare-fun res!63523 () Bool)

(declare-fun call!14426 () Bool)

(assert (=> b!131851 (= res!63523 call!14426)))

(assert (=> b!131851 (=> (not res!63523) (not e!86003))))

(declare-fun bm!14419 () Bool)

(declare-fun call!14428 () ListLongMap!1703)

(declare-fun call!14422 () ListLongMap!1703)

(assert (=> bm!14419 (= call!14428 call!14422)))

(declare-fun b!131852 () Bool)

(declare-fun call!14423 () ListLongMap!1703)

(declare-fun +!169 (ListLongMap!1703 tuple2!2600) ListLongMap!1703)

(assert (=> b!131852 (= e!86014 (+!169 call!14423 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun bm!14420 () Bool)

(declare-fun call!14425 () Bool)

(assert (=> bm!14420 (= call!14425 (contains!892 lt!68723 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131853 () Bool)

(declare-fun e!86011 () Bool)

(assert (=> b!131853 (= e!86011 (= (apply!115 lt!68723 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun bm!14421 () Bool)

(declare-fun call!14427 () ListLongMap!1703)

(assert (=> bm!14421 (= call!14422 call!14427)))

(declare-fun b!131854 () Bool)

(assert (=> b!131854 (= e!86012 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!131855 () Bool)

(declare-fun e!86004 () Bool)

(assert (=> b!131855 (= e!86004 (not call!14425))))

(declare-fun b!131856 () Bool)

(declare-fun e!86010 () ListLongMap!1703)

(assert (=> b!131856 (= e!86010 call!14428)))

(declare-fun b!131857 () Bool)

(declare-fun res!63522 () Bool)

(assert (=> b!131857 (=> (not res!63522) (not e!86007))))

(assert (=> b!131857 (= res!63522 e!86002)))

(declare-fun c!24349 () Bool)

(assert (=> b!131857 (= c!24349 (not (= (bvand (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!131858 () Bool)

(declare-fun lt!68732 () Unit!4131)

(assert (=> b!131858 (= e!86005 lt!68732)))

(declare-fun lt!68724 () ListLongMap!1703)

(declare-fun getCurrentListMapNoExtraKeys!136 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 32) Int) ListLongMap!1703)

(assert (=> b!131858 (= lt!68724 (getCurrentListMapNoExtraKeys!136 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun lt!68738 () (_ BitVec 64))

(assert (=> b!131858 (= lt!68738 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68736 () (_ BitVec 64))

(assert (=> b!131858 (= lt!68736 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!68739 () Unit!4131)

(declare-fun addStillContains!91 (ListLongMap!1703 (_ BitVec 64) V!3475 (_ BitVec 64)) Unit!4131)

(assert (=> b!131858 (= lt!68739 (addStillContains!91 lt!68724 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68736))))

(assert (=> b!131858 (contains!892 (+!169 lt!68724 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68736)))

(declare-fun lt!68742 () Unit!4131)

(assert (=> b!131858 (= lt!68742 lt!68739)))

(declare-fun lt!68725 () ListLongMap!1703)

(assert (=> b!131858 (= lt!68725 (getCurrentListMapNoExtraKeys!136 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun lt!68728 () (_ BitVec 64))

(assert (=> b!131858 (= lt!68728 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68727 () (_ BitVec 64))

(assert (=> b!131858 (= lt!68727 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!68731 () Unit!4131)

(declare-fun addApplyDifferent!91 (ListLongMap!1703 (_ BitVec 64) V!3475 (_ BitVec 64)) Unit!4131)

(assert (=> b!131858 (= lt!68731 (addApplyDifferent!91 lt!68725 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68727))))

(assert (=> b!131858 (= (apply!115 (+!169 lt!68725 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68727) (apply!115 lt!68725 lt!68727))))

(declare-fun lt!68730 () Unit!4131)

(assert (=> b!131858 (= lt!68730 lt!68731)))

(declare-fun lt!68726 () ListLongMap!1703)

(assert (=> b!131858 (= lt!68726 (getCurrentListMapNoExtraKeys!136 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun lt!68733 () (_ BitVec 64))

(assert (=> b!131858 (= lt!68733 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68722 () (_ BitVec 64))

(assert (=> b!131858 (= lt!68722 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!68740 () Unit!4131)

(assert (=> b!131858 (= lt!68740 (addApplyDifferent!91 lt!68726 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68722))))

(assert (=> b!131858 (= (apply!115 (+!169 lt!68726 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68722) (apply!115 lt!68726 lt!68722))))

(declare-fun lt!68734 () Unit!4131)

(assert (=> b!131858 (= lt!68734 lt!68740)))

(declare-fun lt!68741 () ListLongMap!1703)

(assert (=> b!131858 (= lt!68741 (getCurrentListMapNoExtraKeys!136 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun lt!68743 () (_ BitVec 64))

(assert (=> b!131858 (= lt!68743 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68729 () (_ BitVec 64))

(assert (=> b!131858 (= lt!68729 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!131858 (= lt!68732 (addApplyDifferent!91 lt!68741 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68729))))

(assert (=> b!131858 (= (apply!115 (+!169 lt!68741 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68729) (apply!115 lt!68741 lt!68729))))

(declare-fun b!131859 () Bool)

(assert (=> b!131859 (= e!86010 call!14424)))

(declare-fun b!131860 () Bool)

(declare-fun e!86006 () Bool)

(assert (=> b!131860 (= e!86006 (= (apply!115 lt!68723 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!131860 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2523 (_values!2837 (v!3186 (underlying!452 thiss!992))))))))

(assert (=> b!131860 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun bm!14422 () Bool)

(assert (=> bm!14422 (= call!14423 (+!169 (ite c!24354 call!14427 (ite c!24351 call!14422 call!14428)) (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(declare-fun b!131861 () Bool)

(declare-fun e!86008 () Bool)

(assert (=> b!131861 (= e!86008 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!131862 () Bool)

(assert (=> b!131862 (= e!86004 e!86011)))

(declare-fun res!63526 () Bool)

(assert (=> b!131862 (= res!63526 call!14425)))

(assert (=> b!131862 (=> (not res!63526) (not e!86011))))

(declare-fun b!131863 () Bool)

(declare-fun res!63530 () Bool)

(assert (=> b!131863 (=> (not res!63530) (not e!86007))))

(declare-fun e!86013 () Bool)

(assert (=> b!131863 (= res!63530 e!86013)))

(declare-fun res!63527 () Bool)

(assert (=> b!131863 (=> res!63527 e!86013)))

(assert (=> b!131863 (= res!63527 (not e!86008))))

(declare-fun res!63528 () Bool)

(assert (=> b!131863 (=> (not res!63528) (not e!86008))))

(assert (=> b!131863 (= res!63528 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun bm!14423 () Bool)

(assert (=> bm!14423 (= call!14424 call!14423)))

(declare-fun b!131864 () Bool)

(assert (=> b!131864 (= e!86007 e!86004)))

(declare-fun c!24352 () Bool)

(assert (=> b!131864 (= c!24352 (not (= (bvand (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!131865 () Bool)

(assert (=> b!131865 (= e!86002 (not call!14426))))

(declare-fun b!131866 () Bool)

(declare-fun c!24350 () Bool)

(assert (=> b!131866 (= c!24350 (and (not (= (bvand (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!131866 (= e!86009 e!86010)))

(declare-fun bm!14424 () Bool)

(assert (=> bm!14424 (= call!14427 (getCurrentListMapNoExtraKeys!136 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun bm!14425 () Bool)

(assert (=> bm!14425 (= call!14426 (contains!892 lt!68723 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131867 () Bool)

(declare-fun Unit!4133 () Unit!4131)

(assert (=> b!131867 (= e!86005 Unit!4133)))

(declare-fun b!131868 () Bool)

(assert (=> b!131868 (= e!86013 e!86006)))

(declare-fun res!63524 () Bool)

(assert (=> b!131868 (=> (not res!63524) (not e!86006))))

(assert (=> b!131868 (= res!63524 (contains!892 lt!68723 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!131868 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(assert (= (and d!40121 c!24354) b!131852))

(assert (= (and d!40121 (not c!24354)) b!131848))

(assert (= (and b!131848 c!24351) b!131849))

(assert (= (and b!131848 (not c!24351)) b!131866))

(assert (= (and b!131866 c!24350) b!131859))

(assert (= (and b!131866 (not c!24350)) b!131856))

(assert (= (or b!131859 b!131856) bm!14419))

(assert (= (or b!131849 bm!14419) bm!14421))

(assert (= (or b!131849 b!131859) bm!14423))

(assert (= (or b!131852 bm!14421) bm!14424))

(assert (= (or b!131852 bm!14423) bm!14422))

(assert (= (and d!40121 res!63529) b!131854))

(assert (= (and d!40121 c!24353) b!131858))

(assert (= (and d!40121 (not c!24353)) b!131867))

(assert (= (and d!40121 res!63525) b!131863))

(assert (= (and b!131863 res!63528) b!131861))

(assert (= (and b!131863 (not res!63527)) b!131868))

(assert (= (and b!131868 res!63524) b!131860))

(assert (= (and b!131863 res!63530) b!131857))

(assert (= (and b!131857 c!24349) b!131851))

(assert (= (and b!131857 (not c!24349)) b!131865))

(assert (= (and b!131851 res!63523) b!131850))

(assert (= (or b!131851 b!131865) bm!14425))

(assert (= (and b!131857 res!63522) b!131864))

(assert (= (and b!131864 c!24352) b!131862))

(assert (= (and b!131864 (not c!24352)) b!131855))

(assert (= (and b!131862 res!63526) b!131853))

(assert (= (or b!131862 b!131855) bm!14420))

(declare-fun b_lambda!5901 () Bool)

(assert (=> (not b_lambda!5901) (not b!131860)))

(assert (=> b!131860 t!6176))

(declare-fun b_and!8193 () Bool)

(assert (= b_and!8181 (and (=> t!6176 result!3971) b_and!8193)))

(assert (=> b!131860 t!6178))

(declare-fun b_and!8195 () Bool)

(assert (= b_and!8183 (and (=> t!6178 result!3975) b_and!8195)))

(declare-fun m!155525 () Bool)

(assert (=> b!131853 m!155525))

(assert (=> d!40121 m!155431))

(declare-fun m!155527 () Bool)

(assert (=> bm!14425 m!155527))

(declare-fun m!155529 () Bool)

(assert (=> b!131860 m!155529))

(declare-fun m!155531 () Bool)

(assert (=> b!131860 m!155531))

(assert (=> b!131860 m!155529))

(declare-fun m!155533 () Bool)

(assert (=> b!131860 m!155533))

(assert (=> b!131860 m!155533))

(assert (=> b!131860 m!155437))

(declare-fun m!155535 () Bool)

(assert (=> b!131860 m!155535))

(assert (=> b!131860 m!155437))

(assert (=> b!131854 m!155529))

(assert (=> b!131854 m!155529))

(declare-fun m!155537 () Bool)

(assert (=> b!131854 m!155537))

(assert (=> b!131868 m!155529))

(assert (=> b!131868 m!155529))

(declare-fun m!155539 () Bool)

(assert (=> b!131868 m!155539))

(declare-fun m!155541 () Bool)

(assert (=> b!131858 m!155541))

(declare-fun m!155543 () Bool)

(assert (=> b!131858 m!155543))

(declare-fun m!155545 () Bool)

(assert (=> b!131858 m!155545))

(declare-fun m!155547 () Bool)

(assert (=> b!131858 m!155547))

(declare-fun m!155549 () Bool)

(assert (=> b!131858 m!155549))

(declare-fun m!155551 () Bool)

(assert (=> b!131858 m!155551))

(assert (=> b!131858 m!155529))

(declare-fun m!155553 () Bool)

(assert (=> b!131858 m!155553))

(declare-fun m!155555 () Bool)

(assert (=> b!131858 m!155555))

(declare-fun m!155557 () Bool)

(assert (=> b!131858 m!155557))

(declare-fun m!155559 () Bool)

(assert (=> b!131858 m!155559))

(assert (=> b!131858 m!155553))

(declare-fun m!155561 () Bool)

(assert (=> b!131858 m!155561))

(assert (=> b!131858 m!155549))

(assert (=> b!131858 m!155543))

(declare-fun m!155563 () Bool)

(assert (=> b!131858 m!155563))

(assert (=> b!131858 m!155559))

(declare-fun m!155565 () Bool)

(assert (=> b!131858 m!155565))

(declare-fun m!155567 () Bool)

(assert (=> b!131858 m!155567))

(declare-fun m!155569 () Bool)

(assert (=> b!131858 m!155569))

(declare-fun m!155571 () Bool)

(assert (=> b!131858 m!155571))

(declare-fun m!155573 () Bool)

(assert (=> b!131852 m!155573))

(declare-fun m!155575 () Bool)

(assert (=> b!131850 m!155575))

(assert (=> bm!14424 m!155547))

(declare-fun m!155577 () Bool)

(assert (=> bm!14420 m!155577))

(assert (=> b!131861 m!155529))

(assert (=> b!131861 m!155529))

(assert (=> b!131861 m!155537))

(declare-fun m!155579 () Bool)

(assert (=> bm!14422 m!155579))

(assert (=> b!131700 d!40121))

(declare-fun d!40123 () Bool)

(assert (=> d!40123 (= (array_inv!1387 (_keys!4601 newMap!16)) (bvsge (size!2522 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!131713 d!40123))

(declare-fun d!40125 () Bool)

(assert (=> d!40125 (= (array_inv!1388 (_values!2837 newMap!16)) (bvsge (size!2523 (_values!2837 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!131713 d!40125))

(declare-fun d!40127 () Bool)

(declare-fun e!86020 () Bool)

(assert (=> d!40127 e!86020))

(declare-fun res!63533 () Bool)

(assert (=> d!40127 (=> res!63533 e!86020)))

(declare-fun lt!68754 () Bool)

(assert (=> d!40127 (= res!63533 (not lt!68754))))

(declare-fun lt!68753 () Bool)

(assert (=> d!40127 (= lt!68754 lt!68753)))

(declare-fun lt!68752 () Unit!4131)

(declare-fun e!86019 () Unit!4131)

(assert (=> d!40127 (= lt!68752 e!86019)))

(declare-fun c!24357 () Bool)

(assert (=> d!40127 (= c!24357 lt!68753)))

(declare-fun containsKey!174 (List!1732 (_ BitVec 64)) Bool)

(assert (=> d!40127 (= lt!68753 (containsKey!174 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> d!40127 (= (contains!892 lt!68659 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) lt!68754)))

(declare-fun b!131875 () Bool)

(declare-fun lt!68755 () Unit!4131)

(assert (=> b!131875 (= e!86019 lt!68755)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!123 (List!1732 (_ BitVec 64)) Unit!4131)

(assert (=> b!131875 (= lt!68755 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-datatypes ((Option!176 0))(
  ( (Some!175 (v!3190 V!3475)) (None!174) )
))
(declare-fun isDefined!124 (Option!176) Bool)

(declare-fun getValueByKey!170 (List!1732 (_ BitVec 64)) Option!176)

(assert (=> b!131875 (isDefined!124 (getValueByKey!170 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun b!131876 () Bool)

(declare-fun Unit!4134 () Unit!4131)

(assert (=> b!131876 (= e!86019 Unit!4134)))

(declare-fun b!131877 () Bool)

(assert (=> b!131877 (= e!86020 (isDefined!124 (getValueByKey!170 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))))))

(assert (= (and d!40127 c!24357) b!131875))

(assert (= (and d!40127 (not c!24357)) b!131876))

(assert (= (and d!40127 (not res!63533)) b!131877))

(assert (=> d!40127 m!155441))

(declare-fun m!155581 () Bool)

(assert (=> d!40127 m!155581))

(assert (=> b!131875 m!155441))

(declare-fun m!155583 () Bool)

(assert (=> b!131875 m!155583))

(assert (=> b!131875 m!155441))

(declare-fun m!155585 () Bool)

(assert (=> b!131875 m!155585))

(assert (=> b!131875 m!155585))

(declare-fun m!155587 () Bool)

(assert (=> b!131875 m!155587))

(assert (=> b!131877 m!155441))

(assert (=> b!131877 m!155585))

(assert (=> b!131877 m!155585))

(assert (=> b!131877 m!155587))

(assert (=> b!131701 d!40127))

(declare-fun b!131962 () Bool)

(declare-fun res!63564 () Bool)

(declare-fun e!86078 () Bool)

(assert (=> b!131962 (=> (not res!63564) (not e!86078))))

(declare-fun call!14484 () Bool)

(assert (=> b!131962 (= res!63564 call!14484)))

(declare-fun e!86071 () Bool)

(assert (=> b!131962 (= e!86071 e!86078)))

(declare-fun b!131963 () Bool)

(declare-fun lt!68829 () Unit!4131)

(declare-fun e!86083 () Unit!4131)

(assert (=> b!131963 (= lt!68829 e!86083)))

(declare-fun c!24399 () Bool)

(declare-fun call!14497 () Bool)

(assert (=> b!131963 (= c!24399 call!14497)))

(declare-fun e!86066 () tuple2!2602)

(assert (=> b!131963 (= e!86066 (tuple2!2603 false newMap!16))))

(declare-fun bm!14474 () Bool)

(declare-fun c!24397 () Bool)

(declare-fun c!24396 () Bool)

(assert (=> bm!14474 (= c!24397 c!24396)))

(declare-fun e!86086 () ListLongMap!1703)

(declare-fun lt!68833 () SeekEntryResult!284)

(assert (=> bm!14474 (= call!14497 (contains!892 e!86086 (ite c!24396 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68833)))))))

(declare-fun b!131964 () Bool)

(declare-fun lt!68811 () Unit!4131)

(declare-fun lt!68812 () Unit!4131)

(assert (=> b!131964 (= lt!68811 lt!68812)))

(declare-fun call!14493 () ListLongMap!1703)

(declare-fun call!14492 () ListLongMap!1703)

(assert (=> b!131964 (= call!14493 call!14492)))

(declare-fun lt!68819 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!60 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 V!3475 Int) Unit!4131)

(assert (=> b!131964 (= lt!68812 (lemmaChangeZeroKeyThenAddPairToListMap!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) lt!68819 (zeroValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2710 newMap!16) (defaultEntry!2854 newMap!16)))))

(assert (=> b!131964 (= lt!68819 (bvor (extraKeys!2621 newMap!16) #b00000000000000000000000000000001))))

(declare-fun e!86067 () tuple2!2602)

(assert (=> b!131964 (= e!86067 (tuple2!2603 true (LongMapFixedSize!1093 (defaultEntry!2854 newMap!16) (mask!7148 newMap!16) (bvor (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2710 newMap!16) (_size!595 newMap!16) (_keys!4601 newMap!16) (_values!2837 newMap!16) (_vacant!595 newMap!16))))))

(declare-fun bm!14475 () Bool)

(declare-fun call!14486 () ListLongMap!1703)

(assert (=> bm!14475 (= call!14493 call!14486)))

(declare-fun b!131965 () Bool)

(declare-fun Unit!4135 () Unit!4131)

(assert (=> b!131965 (= e!86083 Unit!4135)))

(declare-fun lt!68814 () Unit!4131)

(declare-fun call!14481 () Unit!4131)

(assert (=> b!131965 (= lt!68814 call!14481)))

(declare-fun lt!68815 () SeekEntryResult!284)

(declare-fun call!14500 () SeekEntryResult!284)

(assert (=> b!131965 (= lt!68815 call!14500)))

(declare-fun res!63566 () Bool)

(assert (=> b!131965 (= res!63566 ((_ is Found!284) lt!68815))))

(declare-fun e!86079 () Bool)

(assert (=> b!131965 (=> (not res!63566) (not e!86079))))

(assert (=> b!131965 e!86079))

(declare-fun lt!68823 () Unit!4131)

(assert (=> b!131965 (= lt!68823 lt!68814)))

(assert (=> b!131965 false))

(declare-fun b!131966 () Bool)

(declare-fun lt!68816 () Unit!4131)

(declare-fun lt!68832 () Unit!4131)

(assert (=> b!131966 (= lt!68816 lt!68832)))

(assert (=> b!131966 (= call!14493 call!14492)))

(declare-fun lt!68818 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!60 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 V!3475 Int) Unit!4131)

(assert (=> b!131966 (= lt!68832 (lemmaChangeLongMinValueKeyThenAddPairToListMap!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) lt!68818 (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2854 newMap!16)))))

(assert (=> b!131966 (= lt!68818 (bvor (extraKeys!2621 newMap!16) #b00000000000000000000000000000010))))

(assert (=> b!131966 (= e!86067 (tuple2!2603 true (LongMapFixedSize!1093 (defaultEntry!2854 newMap!16) (mask!7148 newMap!16) (bvor (extraKeys!2621 newMap!16) #b00000000000000000000000000000010) (zeroValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!595 newMap!16) (_keys!4601 newMap!16) (_values!2837 newMap!16) (_vacant!595 newMap!16))))))

(declare-fun b!131967 () Bool)

(declare-fun e!86073 () ListLongMap!1703)

(declare-fun call!14487 () ListLongMap!1703)

(assert (=> b!131967 (= e!86073 call!14487)))

(declare-fun e!86069 () Bool)

(declare-fun b!131968 () Bool)

(declare-fun lt!68821 () SeekEntryResult!284)

(assert (=> b!131968 (= e!86069 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68821)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun b!131969 () Bool)

(declare-fun lt!68830 () Unit!4131)

(declare-fun lt!68825 () Unit!4131)

(assert (=> b!131969 (= lt!68830 lt!68825)))

(assert (=> b!131969 call!14497))

(declare-fun lt!68831 () array!4768)

(declare-fun lemmaValidKeyInArrayIsInListMap!118 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 32) Int) Unit!4131)

(assert (=> b!131969 (= lt!68825 (lemmaValidKeyInArrayIsInListMap!118 (_keys!4601 newMap!16) lt!68831 (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (index!3296 lt!68833) (defaultEntry!2854 newMap!16)))))

(assert (=> b!131969 (= lt!68831 (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16))))))

(declare-fun lt!68817 () Unit!4131)

(declare-fun lt!68824 () Unit!4131)

(assert (=> b!131969 (= lt!68817 lt!68824)))

(declare-fun call!14499 () ListLongMap!1703)

(assert (=> b!131969 (= call!14486 call!14499)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!60 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 32) (_ BitVec 64) V!3475 Int) Unit!4131)

(assert (=> b!131969 (= lt!68824 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (index!3296 lt!68833) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2854 newMap!16)))))

(declare-fun lt!68836 () Unit!4131)

(declare-fun e!86084 () Unit!4131)

(assert (=> b!131969 (= lt!68836 e!86084)))

(declare-fun c!24386 () Bool)

(assert (=> b!131969 (= c!24386 (contains!892 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun e!86074 () tuple2!2602)

(assert (=> b!131969 (= e!86074 (tuple2!2603 true (LongMapFixedSize!1093 (defaultEntry!2854 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (_size!595 newMap!16) (_keys!4601 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16))) (_vacant!595 newMap!16))))))

(declare-fun b!131970 () Bool)

(declare-fun e!86080 () Bool)

(declare-fun call!14494 () Bool)

(assert (=> b!131970 (= e!86080 (not call!14494))))

(declare-fun b!131971 () Bool)

(declare-fun lt!68822 () Unit!4131)

(assert (=> b!131971 (= e!86084 lt!68822)))

(assert (=> b!131971 (= lt!68822 call!14481)))

(declare-fun call!14496 () SeekEntryResult!284)

(assert (=> b!131971 (= lt!68821 call!14496)))

(declare-fun res!63572 () Bool)

(assert (=> b!131971 (= res!63572 ((_ is Found!284) lt!68821))))

(assert (=> b!131971 (=> (not res!63572) (not e!86069))))

(assert (=> b!131971 e!86069))

(declare-fun b!131972 () Bool)

(declare-fun e!86076 () Bool)

(declare-fun lt!68827 () SeekEntryResult!284)

(assert (=> b!131972 (= e!86076 ((_ is Undefined!284) lt!68827))))

(declare-fun b!131973 () Bool)

(declare-fun Unit!4136 () Unit!4131)

(assert (=> b!131973 (= e!86084 Unit!4136)))

(declare-fun lt!68810 () Unit!4131)

(declare-fun call!14478 () Unit!4131)

(assert (=> b!131973 (= lt!68810 call!14478)))

(declare-fun lt!68834 () SeekEntryResult!284)

(assert (=> b!131973 (= lt!68834 call!14496)))

(declare-fun c!24395 () Bool)

(assert (=> b!131973 (= c!24395 ((_ is MissingZero!284) lt!68834))))

(declare-fun e!86070 () Bool)

(assert (=> b!131973 e!86070))

(declare-fun lt!68835 () Unit!4131)

(assert (=> b!131973 (= lt!68835 lt!68810)))

(assert (=> b!131973 false))

(declare-fun b!131974 () Bool)

(declare-fun res!63574 () Bool)

(declare-fun e!86075 () Bool)

(assert (=> b!131974 (=> (not res!63574) (not e!86075))))

(declare-fun call!14488 () Bool)

(assert (=> b!131974 (= res!63574 call!14488)))

(assert (=> b!131974 (= e!86070 e!86075)))

(declare-fun c!24387 () Bool)

(declare-fun bm!14476 () Bool)

(declare-fun call!14479 () ListLongMap!1703)

(declare-fun c!24394 () Bool)

(assert (=> bm!14476 (= call!14479 (getCurrentListMap!538 (_keys!4601 newMap!16) (ite c!24394 (_values!2837 newMap!16) lt!68831) (mask!7148 newMap!16) (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)) (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun b!131975 () Bool)

(declare-fun e!86077 () tuple2!2602)

(assert (=> b!131975 (= e!86077 e!86074)))

(declare-fun c!24390 () Bool)

(assert (=> b!131975 (= c!24390 ((_ is MissingZero!284) lt!68833))))

(declare-fun b!131976 () Bool)

(declare-fun c!24392 () Bool)

(assert (=> b!131976 (= c!24392 ((_ is MissingVacant!284) lt!68833))))

(assert (=> b!131976 (= e!86066 e!86077)))

(declare-fun b!131977 () Bool)

(assert (=> b!131977 (= e!86086 call!14479)))

(declare-fun b!131978 () Bool)

(declare-fun e!86081 () Bool)

(declare-fun call!14489 () ListLongMap!1703)

(declare-fun call!14483 () ListLongMap!1703)

(assert (=> b!131978 (= e!86081 (= call!14489 call!14483))))

(declare-fun bm!14477 () Bool)

(assert (=> bm!14477 (= call!14492 call!14479)))

(declare-fun bm!14478 () Bool)

(declare-fun call!14477 () SeekEntryResult!284)

(assert (=> bm!14478 (= call!14496 call!14477)))

(declare-fun b!131979 () Bool)

(assert (=> b!131979 (= e!86073 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun b!131980 () Bool)

(declare-fun res!63570 () Bool)

(assert (=> b!131980 (= res!63570 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3298 lt!68827)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!86085 () Bool)

(assert (=> b!131980 (=> (not res!63570) (not e!86085))))

(declare-fun b!131981 () Bool)

(declare-fun lt!68813 () tuple2!2602)

(declare-fun call!14485 () tuple2!2602)

(assert (=> b!131981 (= lt!68813 call!14485)))

(assert (=> b!131981 (= e!86074 (tuple2!2603 (_1!1311 lt!68813) (_2!1311 lt!68813)))))

(declare-fun b!131982 () Bool)

(declare-fun e!86065 () tuple2!2602)

(assert (=> b!131982 (= e!86065 e!86067)))

(assert (=> b!131982 (= c!24387 (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!131983 () Bool)

(declare-fun e!86068 () Bool)

(assert (=> b!131983 (= e!86068 (= call!14489 (+!169 call!14483 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!131984 () Bool)

(assert (=> b!131984 (= e!86065 e!86066)))

(assert (=> b!131984 (= lt!68833 (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (_keys!4601 newMap!16) (mask!7148 newMap!16)))))

(assert (=> b!131984 (= c!24396 ((_ is Undefined!284) lt!68833))))

(declare-fun b!131985 () Bool)

(assert (=> b!131985 (= e!86079 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68815)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun b!131986 () Bool)

(declare-fun res!63562 () Bool)

(assert (=> b!131986 (= res!63562 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3298 lt!68834)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!131986 (=> (not res!63562) (not e!86080))))

(declare-fun b!131987 () Bool)

(assert (=> b!131987 (= e!86076 e!86085)))

(declare-fun res!63567 () Bool)

(assert (=> b!131987 (= res!63567 call!14484)))

(assert (=> b!131987 (=> (not res!63567) (not e!86085))))

(declare-fun bm!14479 () Bool)

(declare-fun updateHelperNewKey!60 (LongMapFixedSize!1092 (_ BitVec 64) V!3475 (_ BitVec 32)) tuple2!2602)

(assert (=> bm!14479 (= call!14485 (updateHelperNewKey!60 newMap!16 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833))))))

(declare-fun b!131988 () Bool)

(declare-fun res!63569 () Bool)

(declare-fun call!14495 () Bool)

(assert (=> b!131988 (= res!63569 call!14495)))

(assert (=> b!131988 (=> (not res!63569) (not e!86079))))

(declare-fun b!131989 () Bool)

(declare-fun lt!68826 () Unit!4131)

(assert (=> b!131989 (= e!86083 lt!68826)))

(assert (=> b!131989 (= lt!68826 call!14478)))

(assert (=> b!131989 (= lt!68827 call!14500)))

(declare-fun c!24389 () Bool)

(assert (=> b!131989 (= c!24389 ((_ is MissingZero!284) lt!68827))))

(assert (=> b!131989 e!86071))

(declare-fun b!131990 () Bool)

(declare-fun c!24398 () Bool)

(assert (=> b!131990 (= c!24398 ((_ is MissingVacant!284) lt!68827))))

(assert (=> b!131990 (= e!86071 e!86076)))

(declare-fun b!131991 () Bool)

(declare-fun call!14498 () Bool)

(assert (=> b!131991 (= e!86078 (not call!14498))))

(declare-fun b!131992 () Bool)

(assert (=> b!131992 (= e!86081 e!86068)))

(declare-fun res!63575 () Bool)

(assert (=> b!131992 (= res!63575 (contains!892 call!14489 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> b!131992 (=> (not res!63575) (not e!86068))))

(declare-fun bm!14480 () Bool)

(declare-fun call!14490 () ListLongMap!1703)

(assert (=> bm!14480 (= call!14487 call!14490)))

(declare-fun b!131993 () Bool)

(assert (=> b!131993 (= e!86086 call!14499)))

(declare-fun bm!14481 () Bool)

(declare-fun call!14491 () Bool)

(assert (=> bm!14481 (= call!14495 call!14491)))

(declare-fun bm!14482 () Bool)

(declare-fun call!14480 () Bool)

(assert (=> bm!14482 (= call!14488 call!14480)))

(declare-fun b!131994 () Bool)

(declare-fun c!24388 () Bool)

(assert (=> b!131994 (= c!24388 ((_ is MissingVacant!284) lt!68834))))

(declare-fun e!86082 () Bool)

(assert (=> b!131994 (= e!86070 e!86082)))

(declare-fun bm!14483 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!60 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 64) Int) Unit!4131)

(assert (=> bm!14483 (= call!14478 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (defaultEntry!2854 newMap!16)))))

(declare-fun bm!14484 () Bool)

(assert (=> bm!14484 (= call!14484 call!14495)))

(declare-fun b!131995 () Bool)

(declare-fun res!63568 () Bool)

(assert (=> b!131995 (= res!63568 call!14480)))

(assert (=> b!131995 (=> (not res!63568) (not e!86069))))

(declare-fun bm!14485 () Bool)

(declare-fun lt!68828 () tuple2!2602)

(assert (=> bm!14485 (= call!14489 (map!1401 (_2!1311 lt!68828)))))

(declare-fun d!40129 () Bool)

(declare-fun e!86072 () Bool)

(assert (=> d!40129 e!86072))

(declare-fun res!63571 () Bool)

(assert (=> d!40129 (=> (not res!63571) (not e!86072))))

(assert (=> d!40129 (= res!63571 (valid!517 (_2!1311 lt!68828)))))

(assert (=> d!40129 (= lt!68828 e!86065)))

(assert (=> d!40129 (= c!24394 (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (bvneg (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))))))

(assert (=> d!40129 (valid!517 newMap!16)))

(assert (=> d!40129 (= (update!190 newMap!16 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!68828)))

(declare-fun bm!14486 () Bool)

(assert (=> bm!14486 (= call!14480 call!14491)))

(declare-fun b!131996 () Bool)

(assert (=> b!131996 (= e!86082 ((_ is Undefined!284) lt!68834))))

(declare-fun bm!14487 () Bool)

(assert (=> bm!14487 (= call!14490 (getCurrentListMap!538 (_keys!4601 newMap!16) (ite (or c!24394 c!24396) (_values!2837 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16)))) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun bm!14488 () Bool)

(assert (=> bm!14488 (= call!14486 (+!169 e!86073 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!24393 () Bool)

(assert (=> bm!14488 (= c!24393 c!24394)))

(declare-fun bm!14489 () Bool)

(declare-fun call!14482 () Bool)

(assert (=> bm!14489 (= call!14498 call!14482)))

(declare-fun bm!14490 () Bool)

(assert (=> bm!14490 (= call!14483 (map!1401 newMap!16))))

(declare-fun bm!14491 () Bool)

(assert (=> bm!14491 (= call!14477 (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (_keys!4601 newMap!16) (mask!7148 newMap!16)))))

(declare-fun b!131997 () Bool)

(declare-fun lt!68820 () tuple2!2602)

(assert (=> b!131997 (= e!86077 (tuple2!2603 (_1!1311 lt!68820) (_2!1311 lt!68820)))))

(assert (=> b!131997 (= lt!68820 call!14485)))

(declare-fun bm!14492 () Bool)

(assert (=> bm!14492 (= call!14482 (arrayContainsKey!0 (_keys!4601 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!131998 () Bool)

(assert (=> b!131998 (= e!86082 e!86080)))

(declare-fun res!63565 () Bool)

(assert (=> b!131998 (= res!63565 call!14488)))

(assert (=> b!131998 (=> (not res!63565) (not e!86080))))

(declare-fun bm!14493 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!14493 (= call!14491 (inRange!0 (ite c!24396 (ite c!24399 (index!3296 lt!68815) (ite c!24389 (index!3295 lt!68827) (index!3298 lt!68827))) (ite c!24386 (index!3296 lt!68821) (ite c!24395 (index!3295 lt!68834) (index!3298 lt!68834)))) (mask!7148 newMap!16)))))

(declare-fun b!131999 () Bool)

(declare-fun res!63563 () Bool)

(assert (=> b!131999 (=> (not res!63563) (not e!86075))))

(assert (=> b!131999 (= res!63563 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3295 lt!68834)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!14494 () Bool)

(assert (=> bm!14494 (= call!14494 call!14482)))

(declare-fun b!132000 () Bool)

(assert (=> b!132000 (= e!86072 e!86081)))

(declare-fun c!24391 () Bool)

(assert (=> b!132000 (= c!24391 (_1!1311 lt!68828))))

(declare-fun b!132001 () Bool)

(assert (=> b!132001 (= e!86075 (not call!14494))))

(declare-fun bm!14495 () Bool)

(assert (=> bm!14495 (= call!14499 call!14490)))

(declare-fun bm!14496 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!60 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 64) Int) Unit!4131)

(assert (=> bm!14496 (= call!14481 (lemmaInListMapThenSeekEntryOrOpenFindsIt!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (defaultEntry!2854 newMap!16)))))

(declare-fun b!132002 () Bool)

(declare-fun res!63573 () Bool)

(assert (=> b!132002 (=> (not res!63573) (not e!86078))))

(assert (=> b!132002 (= res!63573 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3295 lt!68827)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!14497 () Bool)

(assert (=> bm!14497 (= call!14500 call!14477)))

(declare-fun b!132003 () Bool)

(assert (=> b!132003 (= e!86085 (not call!14498))))

(assert (= (and d!40129 c!24394) b!131982))

(assert (= (and d!40129 (not c!24394)) b!131984))

(assert (= (and b!131982 c!24387) b!131964))

(assert (= (and b!131982 (not c!24387)) b!131966))

(assert (= (or b!131964 b!131966) bm!14477))

(assert (= (or b!131964 b!131966) bm!14480))

(assert (= (or b!131964 b!131966) bm!14475))

(assert (= (and b!131984 c!24396) b!131963))

(assert (= (and b!131984 (not c!24396)) b!131976))

(assert (= (and b!131963 c!24399) b!131965))

(assert (= (and b!131963 (not c!24399)) b!131989))

(assert (= (and b!131965 res!63566) b!131988))

(assert (= (and b!131988 res!63569) b!131985))

(assert (= (and b!131989 c!24389) b!131962))

(assert (= (and b!131989 (not c!24389)) b!131990))

(assert (= (and b!131962 res!63564) b!132002))

(assert (= (and b!132002 res!63573) b!131991))

(assert (= (and b!131990 c!24398) b!131987))

(assert (= (and b!131990 (not c!24398)) b!131972))

(assert (= (and b!131987 res!63567) b!131980))

(assert (= (and b!131980 res!63570) b!132003))

(assert (= (or b!131962 b!131987) bm!14484))

(assert (= (or b!131991 b!132003) bm!14489))

(assert (= (or b!131988 bm!14484) bm!14481))

(assert (= (or b!131965 b!131989) bm!14497))

(assert (= (and b!131976 c!24392) b!131997))

(assert (= (and b!131976 (not c!24392)) b!131975))

(assert (= (and b!131975 c!24390) b!131981))

(assert (= (and b!131975 (not c!24390)) b!131969))

(assert (= (and b!131969 c!24386) b!131971))

(assert (= (and b!131969 (not c!24386)) b!131973))

(assert (= (and b!131971 res!63572) b!131995))

(assert (= (and b!131995 res!63568) b!131968))

(assert (= (and b!131973 c!24395) b!131974))

(assert (= (and b!131973 (not c!24395)) b!131994))

(assert (= (and b!131974 res!63574) b!131999))

(assert (= (and b!131999 res!63563) b!132001))

(assert (= (and b!131994 c!24388) b!131998))

(assert (= (and b!131994 (not c!24388)) b!131996))

(assert (= (and b!131998 res!63565) b!131986))

(assert (= (and b!131986 res!63562) b!131970))

(assert (= (or b!131974 b!131998) bm!14482))

(assert (= (or b!132001 b!131970) bm!14494))

(assert (= (or b!131995 bm!14482) bm!14486))

(assert (= (or b!131971 b!131973) bm!14478))

(assert (= (or b!131997 b!131981) bm!14479))

(assert (= (or b!131963 b!131969) bm!14495))

(assert (= (or bm!14481 bm!14486) bm!14493))

(assert (= (or b!131989 b!131973) bm!14483))

(assert (= (or bm!14489 bm!14494) bm!14492))

(assert (= (or bm!14497 bm!14478) bm!14491))

(assert (= (or b!131965 b!131971) bm!14496))

(assert (= (or b!131963 b!131969) bm!14474))

(assert (= (and bm!14474 c!24397) b!131993))

(assert (= (and bm!14474 (not c!24397)) b!131977))

(assert (= (or bm!14477 b!131977) bm!14476))

(assert (= (or bm!14480 bm!14495) bm!14487))

(assert (= (or bm!14475 b!131969) bm!14488))

(assert (= (and bm!14488 c!24393) b!131967))

(assert (= (and bm!14488 (not c!24393)) b!131979))

(assert (= (and d!40129 res!63571) b!132000))

(assert (= (and b!132000 c!24391) b!131992))

(assert (= (and b!132000 (not c!24391)) b!131978))

(assert (= (and b!131992 res!63575) b!131983))

(assert (= (or b!131992 b!131983 b!131978) bm!14485))

(assert (= (or b!131983 b!131978) bm!14490))

(assert (=> bm!14492 m!155441))

(declare-fun m!155589 () Bool)

(assert (=> bm!14492 m!155589))

(assert (=> bm!14479 m!155441))

(assert (=> bm!14479 m!155439))

(declare-fun m!155591 () Bool)

(assert (=> bm!14479 m!155591))

(assert (=> bm!14490 m!155459))

(declare-fun m!155593 () Bool)

(assert (=> bm!14485 m!155593))

(assert (=> b!131984 m!155441))

(declare-fun m!155595 () Bool)

(assert (=> b!131984 m!155595))

(declare-fun m!155597 () Bool)

(assert (=> b!131983 m!155597))

(declare-fun m!155599 () Bool)

(assert (=> b!131985 m!155599))

(assert (=> b!131964 m!155439))

(declare-fun m!155601 () Bool)

(assert (=> b!131964 m!155601))

(declare-fun m!155603 () Bool)

(assert (=> b!131968 m!155603))

(declare-fun m!155605 () Bool)

(assert (=> b!131999 m!155605))

(assert (=> bm!14483 m!155441))

(declare-fun m!155607 () Bool)

(assert (=> bm!14483 m!155607))

(assert (=> b!131966 m!155439))

(declare-fun m!155609 () Bool)

(assert (=> b!131966 m!155609))

(assert (=> b!131969 m!155441))

(assert (=> b!131969 m!155439))

(declare-fun m!155611 () Bool)

(assert (=> b!131969 m!155611))

(declare-fun m!155613 () Bool)

(assert (=> b!131969 m!155613))

(declare-fun m!155615 () Bool)

(assert (=> b!131969 m!155615))

(assert (=> b!131969 m!155523))

(assert (=> b!131969 m!155441))

(declare-fun m!155617 () Bool)

(assert (=> b!131969 m!155617))

(assert (=> b!131969 m!155523))

(assert (=> bm!14491 m!155441))

(assert (=> bm!14491 m!155595))

(declare-fun m!155619 () Bool)

(assert (=> bm!14488 m!155619))

(declare-fun m!155621 () Bool)

(assert (=> bm!14474 m!155621))

(declare-fun m!155623 () Bool)

(assert (=> bm!14474 m!155623))

(assert (=> b!131979 m!155523))

(assert (=> bm!14487 m!155615))

(declare-fun m!155625 () Bool)

(assert (=> bm!14487 m!155625))

(assert (=> bm!14496 m!155441))

(declare-fun m!155627 () Bool)

(assert (=> bm!14496 m!155627))

(declare-fun m!155629 () Bool)

(assert (=> b!132002 m!155629))

(declare-fun m!155631 () Bool)

(assert (=> bm!14476 m!155631))

(declare-fun m!155633 () Bool)

(assert (=> b!131986 m!155633))

(declare-fun m!155635 () Bool)

(assert (=> bm!14493 m!155635))

(declare-fun m!155637 () Bool)

(assert (=> b!131980 m!155637))

(assert (=> b!131992 m!155441))

(declare-fun m!155639 () Bool)

(assert (=> b!131992 m!155639))

(declare-fun m!155641 () Bool)

(assert (=> d!40129 m!155641))

(assert (=> d!40129 m!155457))

(assert (=> b!131701 d!40129))

(declare-fun d!40131 () Bool)

(declare-fun c!24402 () Bool)

(assert (=> d!40131 (= c!24402 ((_ is ValueCellFull!1092) (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun e!86089 () V!3475)

(assert (=> d!40131 (= (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!86089)))

(declare-fun b!132008 () Bool)

(declare-fun get!1483 (ValueCell!1092 V!3475) V!3475)

(assert (=> b!132008 (= e!86089 (get!1483 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!132009 () Bool)

(declare-fun get!1484 (ValueCell!1092 V!3475) V!3475)

(assert (=> b!132009 (= e!86089 (get!1484 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!40131 c!24402) b!132008))

(assert (= (and d!40131 (not c!24402)) b!132009))

(assert (=> b!132008 m!155435))

(assert (=> b!132008 m!155437))

(declare-fun m!155643 () Bool)

(assert (=> b!132008 m!155643))

(assert (=> b!132009 m!155435))

(assert (=> b!132009 m!155437))

(declare-fun m!155645 () Bool)

(assert (=> b!132009 m!155645))

(assert (=> b!131701 d!40131))

(declare-fun d!40133 () Bool)

(declare-fun res!63582 () Bool)

(declare-fun e!86092 () Bool)

(assert (=> d!40133 (=> (not res!63582) (not e!86092))))

(declare-fun simpleValid!90 (LongMapFixedSize!1092) Bool)

(assert (=> d!40133 (= res!63582 (simpleValid!90 newMap!16))))

(assert (=> d!40133 (= (valid!517 newMap!16) e!86092)))

(declare-fun b!132016 () Bool)

(declare-fun res!63583 () Bool)

(assert (=> b!132016 (=> (not res!63583) (not e!86092))))

(declare-fun arrayCountValidKeys!0 (array!4766 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!132016 (= res!63583 (= (arrayCountValidKeys!0 (_keys!4601 newMap!16) #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))) (_size!595 newMap!16)))))

(declare-fun b!132017 () Bool)

(declare-fun res!63584 () Bool)

(assert (=> b!132017 (=> (not res!63584) (not e!86092))))

(assert (=> b!132017 (= res!63584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4601 newMap!16) (mask!7148 newMap!16)))))

(declare-fun b!132018 () Bool)

(assert (=> b!132018 (= e!86092 (arrayNoDuplicates!0 (_keys!4601 newMap!16) #b00000000000000000000000000000000 Nil!1730))))

(assert (= (and d!40133 res!63582) b!132016))

(assert (= (and b!132016 res!63583) b!132017))

(assert (= (and b!132017 res!63584) b!132018))

(declare-fun m!155647 () Bool)

(assert (=> d!40133 m!155647))

(declare-fun m!155649 () Bool)

(assert (=> b!132016 m!155649))

(declare-fun m!155651 () Bool)

(assert (=> b!132017 m!155651))

(declare-fun m!155653 () Bool)

(assert (=> b!132018 m!155653))

(assert (=> b!131715 d!40133))

(declare-fun d!40135 () Bool)

(assert (=> d!40135 (= (valid!518 thiss!992) (valid!517 (v!3186 (underlying!452 thiss!992))))))

(declare-fun bs!5467 () Bool)

(assert (= bs!5467 d!40135))

(declare-fun m!155655 () Bool)

(assert (=> bs!5467 m!155655))

(assert (=> start!14190 d!40135))

(declare-fun b!132025 () Bool)

(declare-fun e!86098 () Bool)

(assert (=> b!132025 (= e!86098 tp_is_empty!2871)))

(declare-fun b!132026 () Bool)

(declare-fun e!86097 () Bool)

(assert (=> b!132026 (= e!86097 tp_is_empty!2871)))

(declare-fun condMapEmpty!4629 () Bool)

(declare-fun mapDefault!4629 () ValueCell!1092)

(assert (=> mapNonEmpty!4619 (= condMapEmpty!4629 (= mapRest!4620 ((as const (Array (_ BitVec 32) ValueCell!1092)) mapDefault!4629)))))

(declare-fun mapRes!4629 () Bool)

(assert (=> mapNonEmpty!4619 (= tp!11163 (and e!86097 mapRes!4629))))

(declare-fun mapIsEmpty!4629 () Bool)

(assert (=> mapIsEmpty!4629 mapRes!4629))

(declare-fun mapNonEmpty!4629 () Bool)

(declare-fun tp!11181 () Bool)

(assert (=> mapNonEmpty!4629 (= mapRes!4629 (and tp!11181 e!86098))))

(declare-fun mapKey!4629 () (_ BitVec 32))

(declare-fun mapValue!4629 () ValueCell!1092)

(declare-fun mapRest!4629 () (Array (_ BitVec 32) ValueCell!1092))

(assert (=> mapNonEmpty!4629 (= mapRest!4620 (store mapRest!4629 mapKey!4629 mapValue!4629))))

(assert (= (and mapNonEmpty!4619 condMapEmpty!4629) mapIsEmpty!4629))

(assert (= (and mapNonEmpty!4619 (not condMapEmpty!4629)) mapNonEmpty!4629))

(assert (= (and mapNonEmpty!4629 ((_ is ValueCellFull!1092) mapValue!4629)) b!132025))

(assert (= (and mapNonEmpty!4619 ((_ is ValueCellFull!1092) mapDefault!4629)) b!132026))

(declare-fun m!155657 () Bool)

(assert (=> mapNonEmpty!4629 m!155657))

(declare-fun b!132027 () Bool)

(declare-fun e!86100 () Bool)

(assert (=> b!132027 (= e!86100 tp_is_empty!2871)))

(declare-fun b!132028 () Bool)

(declare-fun e!86099 () Bool)

(assert (=> b!132028 (= e!86099 tp_is_empty!2871)))

(declare-fun condMapEmpty!4630 () Bool)

(declare-fun mapDefault!4630 () ValueCell!1092)

(assert (=> mapNonEmpty!4620 (= condMapEmpty!4630 (= mapRest!4619 ((as const (Array (_ BitVec 32) ValueCell!1092)) mapDefault!4630)))))

(declare-fun mapRes!4630 () Bool)

(assert (=> mapNonEmpty!4620 (= tp!11166 (and e!86099 mapRes!4630))))

(declare-fun mapIsEmpty!4630 () Bool)

(assert (=> mapIsEmpty!4630 mapRes!4630))

(declare-fun mapNonEmpty!4630 () Bool)

(declare-fun tp!11182 () Bool)

(assert (=> mapNonEmpty!4630 (= mapRes!4630 (and tp!11182 e!86100))))

(declare-fun mapValue!4630 () ValueCell!1092)

(declare-fun mapKey!4630 () (_ BitVec 32))

(declare-fun mapRest!4630 () (Array (_ BitVec 32) ValueCell!1092))

(assert (=> mapNonEmpty!4630 (= mapRest!4619 (store mapRest!4630 mapKey!4630 mapValue!4630))))

(assert (= (and mapNonEmpty!4620 condMapEmpty!4630) mapIsEmpty!4630))

(assert (= (and mapNonEmpty!4620 (not condMapEmpty!4630)) mapNonEmpty!4630))

(assert (= (and mapNonEmpty!4630 ((_ is ValueCellFull!1092) mapValue!4630)) b!132027))

(assert (= (and mapNonEmpty!4620 ((_ is ValueCellFull!1092) mapDefault!4630)) b!132028))

(declare-fun m!155659 () Bool)

(assert (=> mapNonEmpty!4630 m!155659))

(declare-fun b_lambda!5903 () Bool)

(assert (= b_lambda!5901 (or (and b!131717 b_free!2909) (and b!131713 b_free!2911 (= (defaultEntry!2854 newMap!16) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))))) b_lambda!5903)))

(check-sat (not bm!14422) (not d!40135) (not bm!14487) (not bm!14483) (not d!40127) (not b!131984) (not bm!14474) (not b!131793) (not b!131850) (not mapNonEmpty!4629) (not bm!14404) (not b!131861) tp_is_empty!2871 (not b!132008) (not b!131983) (not b!131791) (not d!40121) (not b!131854) (not b!131858) (not b!131877) (not b!131805) (not d!40129) (not mapNonEmpty!4630) (not b!131792) (not d!40119) (not b!132016) (not bm!14420) (not b!131966) (not bm!14479) (not b!131860) b_and!8195 (not bm!14485) (not bm!14496) b_and!8193 (not bm!14424) (not bm!14401) (not b!131852) (not b_next!2911) (not b!131868) (not bm!14493) (not b_lambda!5903) (not b_next!2909) (not b!132009) (not b_lambda!5899) (not b!132017) (not d!40133) (not bm!14490) (not b!131969) (not b!131802) (not b!131979) (not b!131992) (not bm!14425) (not bm!14492) (not bm!14491) (not b!131875) (not b!131964) (not b!132018) (not b!131853) (not bm!14476) (not bm!14488))
(check-sat b_and!8193 b_and!8195 (not b_next!2909) (not b_next!2911))
(get-model)

(declare-fun d!40137 () Bool)

(declare-fun get!1485 (Option!176) V!3475)

(assert (=> d!40137 (= (apply!115 lt!68723 #b1000000000000000000000000000000000000000000000000000000000000000) (get!1485 (getValueByKey!170 (toList!867 lt!68723) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5468 () Bool)

(assert (= bs!5468 d!40137))

(declare-fun m!155661 () Bool)

(assert (=> bs!5468 m!155661))

(assert (=> bs!5468 m!155661))

(declare-fun m!155663 () Bool)

(assert (=> bs!5468 m!155663))

(assert (=> b!131853 d!40137))

(declare-fun d!40139 () Bool)

(declare-fun e!86106 () Bool)

(assert (=> d!40139 e!86106))

(declare-fun res!63588 () Bool)

(assert (=> d!40139 (=> (not res!63588) (not e!86106))))

(assert (=> d!40139 (= res!63588 (or (bvsge #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))))

(declare-fun lt!68838 () ListLongMap!1703)

(declare-fun lt!68852 () ListLongMap!1703)

(assert (=> d!40139 (= lt!68838 lt!68852)))

(declare-fun lt!68850 () Unit!4131)

(declare-fun e!86104 () Unit!4131)

(assert (=> d!40139 (= lt!68850 e!86104)))

(declare-fun c!24407 () Bool)

(declare-fun e!86111 () Bool)

(assert (=> d!40139 (= c!24407 e!86111)))

(declare-fun res!63592 () Bool)

(assert (=> d!40139 (=> (not res!63592) (not e!86111))))

(assert (=> d!40139 (= res!63592 (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(declare-fun e!86113 () ListLongMap!1703)

(assert (=> d!40139 (= lt!68852 e!86113)))

(declare-fun c!24408 () Bool)

(assert (=> d!40139 (= c!24408 (and (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!40139 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40139 (= (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) lt!68838)))

(declare-fun b!132029 () Bool)

(declare-fun e!86108 () ListLongMap!1703)

(assert (=> b!132029 (= e!86113 e!86108)))

(declare-fun c!24405 () Bool)

(assert (=> b!132029 (= c!24405 (and (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!132030 () Bool)

(declare-fun call!14503 () ListLongMap!1703)

(assert (=> b!132030 (= e!86108 call!14503)))

(declare-fun b!132031 () Bool)

(declare-fun e!86102 () Bool)

(assert (=> b!132031 (= e!86102 (= (apply!115 lt!68838 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2710 newMap!16)))))

(declare-fun b!132032 () Bool)

(declare-fun e!86101 () Bool)

(assert (=> b!132032 (= e!86101 e!86102)))

(declare-fun res!63586 () Bool)

(declare-fun call!14505 () Bool)

(assert (=> b!132032 (= res!63586 call!14505)))

(assert (=> b!132032 (=> (not res!63586) (not e!86102))))

(declare-fun bm!14498 () Bool)

(declare-fun call!14507 () ListLongMap!1703)

(declare-fun call!14501 () ListLongMap!1703)

(assert (=> bm!14498 (= call!14507 call!14501)))

(declare-fun b!132033 () Bool)

(declare-fun call!14502 () ListLongMap!1703)

(assert (=> b!132033 (= e!86113 (+!169 call!14502 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 newMap!16))))))

(declare-fun bm!14499 () Bool)

(declare-fun call!14504 () Bool)

(assert (=> bm!14499 (= call!14504 (contains!892 lt!68838 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!132034 () Bool)

(declare-fun e!86110 () Bool)

(assert (=> b!132034 (= e!86110 (= (apply!115 lt!68838 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2710 newMap!16)))))

(declare-fun bm!14500 () Bool)

(declare-fun call!14506 () ListLongMap!1703)

(assert (=> bm!14500 (= call!14501 call!14506)))

(declare-fun b!132035 () Bool)

(assert (=> b!132035 (= e!86111 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!132036 () Bool)

(declare-fun e!86103 () Bool)

(assert (=> b!132036 (= e!86103 (not call!14504))))

(declare-fun b!132037 () Bool)

(declare-fun e!86109 () ListLongMap!1703)

(assert (=> b!132037 (= e!86109 call!14507)))

(declare-fun b!132038 () Bool)

(declare-fun res!63585 () Bool)

(assert (=> b!132038 (=> (not res!63585) (not e!86106))))

(assert (=> b!132038 (= res!63585 e!86101)))

(declare-fun c!24403 () Bool)

(assert (=> b!132038 (= c!24403 (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!132039 () Bool)

(declare-fun lt!68847 () Unit!4131)

(assert (=> b!132039 (= e!86104 lt!68847)))

(declare-fun lt!68839 () ListLongMap!1703)

(assert (=> b!132039 (= lt!68839 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!68853 () (_ BitVec 64))

(assert (=> b!132039 (= lt!68853 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68851 () (_ BitVec 64))

(assert (=> b!132039 (= lt!68851 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68854 () Unit!4131)

(assert (=> b!132039 (= lt!68854 (addStillContains!91 lt!68839 lt!68853 (zeroValue!2710 newMap!16) lt!68851))))

(assert (=> b!132039 (contains!892 (+!169 lt!68839 (tuple2!2601 lt!68853 (zeroValue!2710 newMap!16))) lt!68851)))

(declare-fun lt!68857 () Unit!4131)

(assert (=> b!132039 (= lt!68857 lt!68854)))

(declare-fun lt!68840 () ListLongMap!1703)

(assert (=> b!132039 (= lt!68840 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!68843 () (_ BitVec 64))

(assert (=> b!132039 (= lt!68843 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68842 () (_ BitVec 64))

(assert (=> b!132039 (= lt!68842 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68846 () Unit!4131)

(assert (=> b!132039 (= lt!68846 (addApplyDifferent!91 lt!68840 lt!68843 (minValue!2710 newMap!16) lt!68842))))

(assert (=> b!132039 (= (apply!115 (+!169 lt!68840 (tuple2!2601 lt!68843 (minValue!2710 newMap!16))) lt!68842) (apply!115 lt!68840 lt!68842))))

(declare-fun lt!68845 () Unit!4131)

(assert (=> b!132039 (= lt!68845 lt!68846)))

(declare-fun lt!68841 () ListLongMap!1703)

(assert (=> b!132039 (= lt!68841 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!68848 () (_ BitVec 64))

(assert (=> b!132039 (= lt!68848 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68837 () (_ BitVec 64))

(assert (=> b!132039 (= lt!68837 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68855 () Unit!4131)

(assert (=> b!132039 (= lt!68855 (addApplyDifferent!91 lt!68841 lt!68848 (zeroValue!2710 newMap!16) lt!68837))))

(assert (=> b!132039 (= (apply!115 (+!169 lt!68841 (tuple2!2601 lt!68848 (zeroValue!2710 newMap!16))) lt!68837) (apply!115 lt!68841 lt!68837))))

(declare-fun lt!68849 () Unit!4131)

(assert (=> b!132039 (= lt!68849 lt!68855)))

(declare-fun lt!68856 () ListLongMap!1703)

(assert (=> b!132039 (= lt!68856 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!68858 () (_ BitVec 64))

(assert (=> b!132039 (= lt!68858 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68844 () (_ BitVec 64))

(assert (=> b!132039 (= lt!68844 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!132039 (= lt!68847 (addApplyDifferent!91 lt!68856 lt!68858 (minValue!2710 newMap!16) lt!68844))))

(assert (=> b!132039 (= (apply!115 (+!169 lt!68856 (tuple2!2601 lt!68858 (minValue!2710 newMap!16))) lt!68844) (apply!115 lt!68856 lt!68844))))

(declare-fun b!132040 () Bool)

(assert (=> b!132040 (= e!86109 call!14503)))

(declare-fun b!132041 () Bool)

(declare-fun e!86105 () Bool)

(assert (=> b!132041 (= e!86105 (= (apply!115 lt!68838 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)) (get!1481 (select (arr!2255 (_values!2837 newMap!16)) #b00000000000000000000000000000000) (dynLambda!423 (defaultEntry!2854 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!132041 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2523 (_values!2837 newMap!16))))))

(assert (=> b!132041 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(declare-fun bm!14501 () Bool)

(assert (=> bm!14501 (= call!14502 (+!169 (ite c!24408 call!14506 (ite c!24405 call!14501 call!14507)) (ite (or c!24408 c!24405) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 newMap!16)) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 newMap!16)))))))

(declare-fun b!132042 () Bool)

(declare-fun e!86107 () Bool)

(assert (=> b!132042 (= e!86107 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!132043 () Bool)

(assert (=> b!132043 (= e!86103 e!86110)))

(declare-fun res!63589 () Bool)

(assert (=> b!132043 (= res!63589 call!14504)))

(assert (=> b!132043 (=> (not res!63589) (not e!86110))))

(declare-fun b!132044 () Bool)

(declare-fun res!63593 () Bool)

(assert (=> b!132044 (=> (not res!63593) (not e!86106))))

(declare-fun e!86112 () Bool)

(assert (=> b!132044 (= res!63593 e!86112)))

(declare-fun res!63590 () Bool)

(assert (=> b!132044 (=> res!63590 e!86112)))

(assert (=> b!132044 (= res!63590 (not e!86107))))

(declare-fun res!63591 () Bool)

(assert (=> b!132044 (=> (not res!63591) (not e!86107))))

(assert (=> b!132044 (= res!63591 (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(declare-fun bm!14502 () Bool)

(assert (=> bm!14502 (= call!14503 call!14502)))

(declare-fun b!132045 () Bool)

(assert (=> b!132045 (= e!86106 e!86103)))

(declare-fun c!24406 () Bool)

(assert (=> b!132045 (= c!24406 (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!132046 () Bool)

(assert (=> b!132046 (= e!86101 (not call!14505))))

(declare-fun b!132047 () Bool)

(declare-fun c!24404 () Bool)

(assert (=> b!132047 (= c!24404 (and (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!132047 (= e!86108 e!86109)))

(declare-fun bm!14503 () Bool)

(assert (=> bm!14503 (= call!14506 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun bm!14504 () Bool)

(assert (=> bm!14504 (= call!14505 (contains!892 lt!68838 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!132048 () Bool)

(declare-fun Unit!4137 () Unit!4131)

(assert (=> b!132048 (= e!86104 Unit!4137)))

(declare-fun b!132049 () Bool)

(assert (=> b!132049 (= e!86112 e!86105)))

(declare-fun res!63587 () Bool)

(assert (=> b!132049 (=> (not res!63587) (not e!86105))))

(assert (=> b!132049 (= res!63587 (contains!892 lt!68838 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!132049 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(assert (= (and d!40139 c!24408) b!132033))

(assert (= (and d!40139 (not c!24408)) b!132029))

(assert (= (and b!132029 c!24405) b!132030))

(assert (= (and b!132029 (not c!24405)) b!132047))

(assert (= (and b!132047 c!24404) b!132040))

(assert (= (and b!132047 (not c!24404)) b!132037))

(assert (= (or b!132040 b!132037) bm!14498))

(assert (= (or b!132030 bm!14498) bm!14500))

(assert (= (or b!132030 b!132040) bm!14502))

(assert (= (or b!132033 bm!14500) bm!14503))

(assert (= (or b!132033 bm!14502) bm!14501))

(assert (= (and d!40139 res!63592) b!132035))

(assert (= (and d!40139 c!24407) b!132039))

(assert (= (and d!40139 (not c!24407)) b!132048))

(assert (= (and d!40139 res!63588) b!132044))

(assert (= (and b!132044 res!63591) b!132042))

(assert (= (and b!132044 (not res!63590)) b!132049))

(assert (= (and b!132049 res!63587) b!132041))

(assert (= (and b!132044 res!63593) b!132038))

(assert (= (and b!132038 c!24403) b!132032))

(assert (= (and b!132038 (not c!24403)) b!132046))

(assert (= (and b!132032 res!63586) b!132031))

(assert (= (or b!132032 b!132046) bm!14504))

(assert (= (and b!132038 res!63585) b!132045))

(assert (= (and b!132045 c!24406) b!132043))

(assert (= (and b!132045 (not c!24406)) b!132036))

(assert (= (and b!132043 res!63589) b!132034))

(assert (= (or b!132043 b!132036) bm!14499))

(declare-fun b_lambda!5905 () Bool)

(assert (=> (not b_lambda!5905) (not b!132041)))

(declare-fun tb!2417 () Bool)

(declare-fun t!6187 () Bool)

(assert (=> (and b!131717 (= (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) (defaultEntry!2854 newMap!16)) t!6187) tb!2417))

(declare-fun result!3985 () Bool)

(assert (=> tb!2417 (= result!3985 tp_is_empty!2871)))

(assert (=> b!132041 t!6187))

(declare-fun b_and!8197 () Bool)

(assert (= b_and!8193 (and (=> t!6187 result!3985) b_and!8197)))

(declare-fun t!6189 () Bool)

(declare-fun tb!2419 () Bool)

(assert (=> (and b!131713 (= (defaultEntry!2854 newMap!16) (defaultEntry!2854 newMap!16)) t!6189) tb!2419))

(declare-fun result!3987 () Bool)

(assert (= result!3987 result!3985))

(assert (=> b!132041 t!6189))

(declare-fun b_and!8199 () Bool)

(assert (= b_and!8195 (and (=> t!6189 result!3987) b_and!8199)))

(declare-fun m!155665 () Bool)

(assert (=> b!132034 m!155665))

(declare-fun m!155667 () Bool)

(assert (=> d!40139 m!155667))

(declare-fun m!155669 () Bool)

(assert (=> bm!14504 m!155669))

(declare-fun m!155671 () Bool)

(assert (=> b!132041 m!155671))

(declare-fun m!155673 () Bool)

(assert (=> b!132041 m!155673))

(assert (=> b!132041 m!155671))

(declare-fun m!155675 () Bool)

(assert (=> b!132041 m!155675))

(assert (=> b!132041 m!155675))

(declare-fun m!155677 () Bool)

(assert (=> b!132041 m!155677))

(declare-fun m!155679 () Bool)

(assert (=> b!132041 m!155679))

(assert (=> b!132041 m!155677))

(assert (=> b!132035 m!155671))

(assert (=> b!132035 m!155671))

(declare-fun m!155681 () Bool)

(assert (=> b!132035 m!155681))

(assert (=> b!132049 m!155671))

(assert (=> b!132049 m!155671))

(declare-fun m!155683 () Bool)

(assert (=> b!132049 m!155683))

(declare-fun m!155685 () Bool)

(assert (=> b!132039 m!155685))

(declare-fun m!155687 () Bool)

(assert (=> b!132039 m!155687))

(declare-fun m!155689 () Bool)

(assert (=> b!132039 m!155689))

(declare-fun m!155691 () Bool)

(assert (=> b!132039 m!155691))

(declare-fun m!155693 () Bool)

(assert (=> b!132039 m!155693))

(declare-fun m!155695 () Bool)

(assert (=> b!132039 m!155695))

(assert (=> b!132039 m!155671))

(declare-fun m!155697 () Bool)

(assert (=> b!132039 m!155697))

(declare-fun m!155699 () Bool)

(assert (=> b!132039 m!155699))

(declare-fun m!155701 () Bool)

(assert (=> b!132039 m!155701))

(declare-fun m!155703 () Bool)

(assert (=> b!132039 m!155703))

(assert (=> b!132039 m!155697))

(declare-fun m!155705 () Bool)

(assert (=> b!132039 m!155705))

(assert (=> b!132039 m!155693))

(assert (=> b!132039 m!155687))

(declare-fun m!155707 () Bool)

(assert (=> b!132039 m!155707))

(assert (=> b!132039 m!155703))

(declare-fun m!155709 () Bool)

(assert (=> b!132039 m!155709))

(declare-fun m!155711 () Bool)

(assert (=> b!132039 m!155711))

(declare-fun m!155713 () Bool)

(assert (=> b!132039 m!155713))

(declare-fun m!155715 () Bool)

(assert (=> b!132039 m!155715))

(declare-fun m!155717 () Bool)

(assert (=> b!132033 m!155717))

(declare-fun m!155719 () Bool)

(assert (=> b!132031 m!155719))

(assert (=> bm!14503 m!155691))

(declare-fun m!155721 () Bool)

(assert (=> bm!14499 m!155721))

(assert (=> b!132042 m!155671))

(assert (=> b!132042 m!155671))

(assert (=> b!132042 m!155681))

(declare-fun m!155723 () Bool)

(assert (=> bm!14501 m!155723))

(assert (=> b!131979 d!40139))

(declare-fun d!40141 () Bool)

(assert (=> d!40141 (= (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)) (and (not (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!131791 d!40141))

(declare-fun b!132050 () Bool)

(declare-fun e!86117 () Bool)

(declare-fun call!14508 () Bool)

(assert (=> b!132050 (= e!86117 call!14508)))

(declare-fun bm!14505 () Bool)

(declare-fun c!24409 () Bool)

(assert (=> bm!14505 (= call!14508 (arrayNoDuplicates!0 (_keys!4601 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!24409 (Cons!1729 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000) Nil!1730) Nil!1730)))))

(declare-fun b!132052 () Bool)

(declare-fun e!86115 () Bool)

(assert (=> b!132052 (= e!86115 e!86117)))

(assert (=> b!132052 (= c!24409 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!132053 () Bool)

(declare-fun e!86114 () Bool)

(assert (=> b!132053 (= e!86114 e!86115)))

(declare-fun res!63595 () Bool)

(assert (=> b!132053 (=> (not res!63595) (not e!86115))))

(declare-fun e!86116 () Bool)

(assert (=> b!132053 (= res!63595 (not e!86116))))

(declare-fun res!63596 () Bool)

(assert (=> b!132053 (=> (not res!63596) (not e!86116))))

(assert (=> b!132053 (= res!63596 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!132054 () Bool)

(assert (=> b!132054 (= e!86116 (contains!894 Nil!1730 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!40143 () Bool)

(declare-fun res!63594 () Bool)

(assert (=> d!40143 (=> res!63594 e!86114)))

(assert (=> d!40143 (= res!63594 (bvsge #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(assert (=> d!40143 (= (arrayNoDuplicates!0 (_keys!4601 newMap!16) #b00000000000000000000000000000000 Nil!1730) e!86114)))

(declare-fun b!132051 () Bool)

(assert (=> b!132051 (= e!86117 call!14508)))

(assert (= (and d!40143 (not res!63594)) b!132053))

(assert (= (and b!132053 res!63596) b!132054))

(assert (= (and b!132053 res!63595) b!132052))

(assert (= (and b!132052 c!24409) b!132050))

(assert (= (and b!132052 (not c!24409)) b!132051))

(assert (= (or b!132050 b!132051) bm!14505))

(assert (=> bm!14505 m!155671))

(declare-fun m!155725 () Bool)

(assert (=> bm!14505 m!155725))

(assert (=> b!132052 m!155671))

(assert (=> b!132052 m!155671))

(assert (=> b!132052 m!155681))

(assert (=> b!132053 m!155671))

(assert (=> b!132053 m!155671))

(assert (=> b!132053 m!155681))

(assert (=> b!132054 m!155671))

(assert (=> b!132054 m!155671))

(declare-fun m!155727 () Bool)

(assert (=> b!132054 m!155727))

(assert (=> b!132018 d!40143))

(declare-fun d!40145 () Bool)

(declare-fun e!86120 () Bool)

(assert (=> d!40145 e!86120))

(declare-fun res!63601 () Bool)

(assert (=> d!40145 (=> (not res!63601) (not e!86120))))

(declare-fun lt!68867 () ListLongMap!1703)

(assert (=> d!40145 (= res!63601 (contains!892 lt!68867 (_1!1310 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(declare-fun lt!68869 () List!1732)

(assert (=> d!40145 (= lt!68867 (ListLongMap!1704 lt!68869))))

(declare-fun lt!68870 () Unit!4131)

(declare-fun lt!68868 () Unit!4131)

(assert (=> d!40145 (= lt!68870 lt!68868)))

(assert (=> d!40145 (= (getValueByKey!170 lt!68869 (_1!1310 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!87 (List!1732 (_ BitVec 64) V!3475) Unit!4131)

(assert (=> d!40145 (= lt!68868 (lemmaContainsTupThenGetReturnValue!87 lt!68869 (_1!1310 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(declare-fun insertStrictlySorted!89 (List!1732 (_ BitVec 64) V!3475) List!1732)

(assert (=> d!40145 (= lt!68869 (insertStrictlySorted!89 (toList!867 call!14423) (_1!1310 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40145 (= (+!169 call!14423 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68867)))

(declare-fun b!132059 () Bool)

(declare-fun res!63602 () Bool)

(assert (=> b!132059 (=> (not res!63602) (not e!86120))))

(assert (=> b!132059 (= res!63602 (= (getValueByKey!170 (toList!867 lt!68867) (_1!1310 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))))

(declare-fun b!132060 () Bool)

(declare-fun contains!895 (List!1732 tuple2!2600) Bool)

(assert (=> b!132060 (= e!86120 (contains!895 (toList!867 lt!68867) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))

(assert (= (and d!40145 res!63601) b!132059))

(assert (= (and b!132059 res!63602) b!132060))

(declare-fun m!155729 () Bool)

(assert (=> d!40145 m!155729))

(declare-fun m!155731 () Bool)

(assert (=> d!40145 m!155731))

(declare-fun m!155733 () Bool)

(assert (=> d!40145 m!155733))

(declare-fun m!155735 () Bool)

(assert (=> d!40145 m!155735))

(declare-fun m!155737 () Bool)

(assert (=> b!132059 m!155737))

(declare-fun m!155739 () Bool)

(assert (=> b!132060 m!155739))

(assert (=> b!131852 d!40145))

(declare-fun d!40147 () Bool)

(declare-fun e!86123 () Bool)

(assert (=> d!40147 e!86123))

(declare-fun res!63607 () Bool)

(assert (=> d!40147 (=> (not res!63607) (not e!86123))))

(declare-fun lt!68876 () SeekEntryResult!284)

(assert (=> d!40147 (= res!63607 ((_ is Found!284) lt!68876))))

(assert (=> d!40147 (= lt!68876 (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (_keys!4601 newMap!16) (mask!7148 newMap!16)))))

(declare-fun lt!68875 () Unit!4131)

(declare-fun choose!816 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 64) Int) Unit!4131)

(assert (=> d!40147 (= lt!68875 (choose!816 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (defaultEntry!2854 newMap!16)))))

(assert (=> d!40147 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40147 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (defaultEntry!2854 newMap!16)) lt!68875)))

(declare-fun b!132065 () Bool)

(declare-fun res!63608 () Bool)

(assert (=> b!132065 (=> (not res!63608) (not e!86123))))

(assert (=> b!132065 (= res!63608 (inRange!0 (index!3296 lt!68876) (mask!7148 newMap!16)))))

(declare-fun b!132066 () Bool)

(assert (=> b!132066 (= e!86123 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68876)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> b!132066 (and (bvsge (index!3296 lt!68876) #b00000000000000000000000000000000) (bvslt (index!3296 lt!68876) (size!2522 (_keys!4601 newMap!16))))))

(assert (= (and d!40147 res!63607) b!132065))

(assert (= (and b!132065 res!63608) b!132066))

(assert (=> d!40147 m!155441))

(assert (=> d!40147 m!155595))

(assert (=> d!40147 m!155441))

(declare-fun m!155741 () Bool)

(assert (=> d!40147 m!155741))

(assert (=> d!40147 m!155667))

(declare-fun m!155743 () Bool)

(assert (=> b!132065 m!155743))

(declare-fun m!155745 () Bool)

(assert (=> b!132066 m!155745))

(assert (=> bm!14496 d!40147))

(declare-fun b!132075 () Bool)

(declare-fun e!86128 () (_ BitVec 32))

(declare-fun call!14511 () (_ BitVec 32))

(assert (=> b!132075 (= e!86128 (bvadd #b00000000000000000000000000000001 call!14511))))

(declare-fun bm!14508 () Bool)

(assert (=> bm!14508 (= call!14511 (arrayCountValidKeys!0 (_keys!4601 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2522 (_keys!4601 newMap!16))))))

(declare-fun b!132076 () Bool)

(assert (=> b!132076 (= e!86128 call!14511)))

(declare-fun d!40149 () Bool)

(declare-fun lt!68879 () (_ BitVec 32))

(assert (=> d!40149 (and (bvsge lt!68879 #b00000000000000000000000000000000) (bvsle lt!68879 (bvsub (size!2522 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!86129 () (_ BitVec 32))

(assert (=> d!40149 (= lt!68879 e!86129)))

(declare-fun c!24415 () Bool)

(assert (=> d!40149 (= c!24415 (bvsge #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(assert (=> d!40149 (and (bvsle #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2522 (_keys!4601 newMap!16)) (size!2522 (_keys!4601 newMap!16))))))

(assert (=> d!40149 (= (arrayCountValidKeys!0 (_keys!4601 newMap!16) #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))) lt!68879)))

(declare-fun b!132077 () Bool)

(assert (=> b!132077 (= e!86129 e!86128)))

(declare-fun c!24414 () Bool)

(assert (=> b!132077 (= c!24414 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!132078 () Bool)

(assert (=> b!132078 (= e!86129 #b00000000000000000000000000000000)))

(assert (= (and d!40149 c!24415) b!132078))

(assert (= (and d!40149 (not c!24415)) b!132077))

(assert (= (and b!132077 c!24414) b!132075))

(assert (= (and b!132077 (not c!24414)) b!132076))

(assert (= (or b!132075 b!132076) bm!14508))

(declare-fun m!155747 () Bool)

(assert (=> bm!14508 m!155747))

(assert (=> b!132077 m!155671))

(assert (=> b!132077 m!155671))

(assert (=> b!132077 m!155681))

(assert (=> b!132016 d!40149))

(declare-fun b!132103 () Bool)

(declare-fun lt!68894 () Unit!4131)

(declare-fun lt!68899 () Unit!4131)

(assert (=> b!132103 (= lt!68894 lt!68899)))

(declare-fun lt!68895 () (_ BitVec 64))

(declare-fun lt!68896 () V!3475)

(declare-fun lt!68898 () ListLongMap!1703)

(declare-fun lt!68897 () (_ BitVec 64))

(assert (=> b!132103 (not (contains!892 (+!169 lt!68898 (tuple2!2601 lt!68897 lt!68896)) lt!68895))))

(declare-fun addStillNotContains!62 (ListLongMap!1703 (_ BitVec 64) V!3475 (_ BitVec 64)) Unit!4131)

(assert (=> b!132103 (= lt!68899 (addStillNotContains!62 lt!68898 lt!68897 lt!68896 lt!68895))))

(assert (=> b!132103 (= lt!68895 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!132103 (= lt!68896 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!132103 (= lt!68897 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun call!14514 () ListLongMap!1703)

(assert (=> b!132103 (= lt!68898 call!14514)))

(declare-fun e!86144 () ListLongMap!1703)

(assert (=> b!132103 (= e!86144 (+!169 call!14514 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!132104 () Bool)

(assert (=> b!132104 (= e!86144 call!14514)))

(declare-fun bm!14511 () Bool)

(assert (=> bm!14511 (= call!14514 (getCurrentListMapNoExtraKeys!136 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun d!40151 () Bool)

(declare-fun e!86147 () Bool)

(assert (=> d!40151 e!86147))

(declare-fun res!63617 () Bool)

(assert (=> d!40151 (=> (not res!63617) (not e!86147))))

(declare-fun lt!68900 () ListLongMap!1703)

(assert (=> d!40151 (= res!63617 (not (contains!892 lt!68900 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!86149 () ListLongMap!1703)

(assert (=> d!40151 (= lt!68900 e!86149)))

(declare-fun c!24426 () Bool)

(assert (=> d!40151 (= c!24426 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(assert (=> d!40151 (validMask!0 (mask!7148 (v!3186 (underlying!452 thiss!992))))))

(assert (=> d!40151 (= (getCurrentListMapNoExtraKeys!136 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992)))) lt!68900)))

(declare-fun b!132105 () Bool)

(assert (=> b!132105 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(assert (=> b!132105 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2523 (_values!2837 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun e!86145 () Bool)

(assert (=> b!132105 (= e!86145 (= (apply!115 lt!68900 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!86148 () Bool)

(declare-fun b!132106 () Bool)

(assert (=> b!132106 (= e!86148 (= lt!68900 (getCurrentListMapNoExtraKeys!136 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (_values!2837 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992))) (extraKeys!2621 (v!3186 (underlying!452 thiss!992))) (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) (minValue!2710 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun b!132107 () Bool)

(declare-fun e!86150 () Bool)

(assert (=> b!132107 (= e!86150 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!132107 (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000)))

(declare-fun b!132108 () Bool)

(declare-fun e!86146 () Bool)

(assert (=> b!132108 (= e!86147 e!86146)))

(declare-fun c!24425 () Bool)

(assert (=> b!132108 (= c!24425 e!86150)))

(declare-fun res!63619 () Bool)

(assert (=> b!132108 (=> (not res!63619) (not e!86150))))

(assert (=> b!132108 (= res!63619 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun b!132109 () Bool)

(assert (=> b!132109 (= e!86146 e!86145)))

(assert (=> b!132109 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun res!63620 () Bool)

(assert (=> b!132109 (= res!63620 (contains!892 lt!68900 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!132109 (=> (not res!63620) (not e!86145))))

(declare-fun b!132110 () Bool)

(assert (=> b!132110 (= e!86149 (ListLongMap!1704 Nil!1729))))

(declare-fun b!132111 () Bool)

(assert (=> b!132111 (= e!86149 e!86144)))

(declare-fun c!24424 () Bool)

(assert (=> b!132111 (= c!24424 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!132112 () Bool)

(declare-fun res!63618 () Bool)

(assert (=> b!132112 (=> (not res!63618) (not e!86147))))

(assert (=> b!132112 (= res!63618 (not (contains!892 lt!68900 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!132113 () Bool)

(assert (=> b!132113 (= e!86146 e!86148)))

(declare-fun c!24427 () Bool)

(assert (=> b!132113 (= c!24427 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun b!132114 () Bool)

(declare-fun isEmpty!412 (ListLongMap!1703) Bool)

(assert (=> b!132114 (= e!86148 (isEmpty!412 lt!68900))))

(assert (= (and d!40151 c!24426) b!132110))

(assert (= (and d!40151 (not c!24426)) b!132111))

(assert (= (and b!132111 c!24424) b!132103))

(assert (= (and b!132111 (not c!24424)) b!132104))

(assert (= (or b!132103 b!132104) bm!14511))

(assert (= (and d!40151 res!63617) b!132112))

(assert (= (and b!132112 res!63618) b!132108))

(assert (= (and b!132108 res!63619) b!132107))

(assert (= (and b!132108 c!24425) b!132109))

(assert (= (and b!132108 (not c!24425)) b!132113))

(assert (= (and b!132109 res!63620) b!132105))

(assert (= (and b!132113 c!24427) b!132106))

(assert (= (and b!132113 (not c!24427)) b!132114))

(declare-fun b_lambda!5907 () Bool)

(assert (=> (not b_lambda!5907) (not b!132103)))

(assert (=> b!132103 t!6176))

(declare-fun b_and!8201 () Bool)

(assert (= b_and!8197 (and (=> t!6176 result!3971) b_and!8201)))

(assert (=> b!132103 t!6178))

(declare-fun b_and!8203 () Bool)

(assert (= b_and!8199 (and (=> t!6178 result!3975) b_and!8203)))

(declare-fun b_lambda!5909 () Bool)

(assert (=> (not b_lambda!5909) (not b!132105)))

(assert (=> b!132105 t!6176))

(declare-fun b_and!8205 () Bool)

(assert (= b_and!8201 (and (=> t!6176 result!3971) b_and!8205)))

(assert (=> b!132105 t!6178))

(declare-fun b_and!8207 () Bool)

(assert (= b_and!8203 (and (=> t!6178 result!3975) b_and!8207)))

(declare-fun m!155749 () Bool)

(assert (=> b!132106 m!155749))

(assert (=> b!132107 m!155529))

(assert (=> b!132107 m!155529))

(assert (=> b!132107 m!155537))

(declare-fun m!155751 () Bool)

(assert (=> b!132103 m!155751))

(declare-fun m!155753 () Bool)

(assert (=> b!132103 m!155753))

(declare-fun m!155755 () Bool)

(assert (=> b!132103 m!155755))

(assert (=> b!132103 m!155529))

(assert (=> b!132103 m!155437))

(assert (=> b!132103 m!155533))

(assert (=> b!132103 m!155437))

(assert (=> b!132103 m!155535))

(assert (=> b!132103 m!155753))

(declare-fun m!155757 () Bool)

(assert (=> b!132103 m!155757))

(assert (=> b!132103 m!155533))

(assert (=> b!132105 m!155529))

(declare-fun m!155759 () Bool)

(assert (=> b!132105 m!155759))

(assert (=> b!132105 m!155529))

(assert (=> b!132105 m!155437))

(assert (=> b!132105 m!155533))

(assert (=> b!132105 m!155437))

(assert (=> b!132105 m!155535))

(assert (=> b!132105 m!155533))

(assert (=> bm!14511 m!155749))

(assert (=> b!132111 m!155529))

(assert (=> b!132111 m!155529))

(assert (=> b!132111 m!155537))

(declare-fun m!155761 () Bool)

(assert (=> b!132114 m!155761))

(assert (=> b!132109 m!155529))

(assert (=> b!132109 m!155529))

(declare-fun m!155763 () Bool)

(assert (=> b!132109 m!155763))

(declare-fun m!155765 () Bool)

(assert (=> d!40151 m!155765))

(assert (=> d!40151 m!155431))

(declare-fun m!155767 () Bool)

(assert (=> b!132112 m!155767))

(assert (=> bm!14424 d!40151))

(declare-fun d!40153 () Bool)

(assert (=> d!40153 (= (inRange!0 (ite c!24396 (ite c!24399 (index!3296 lt!68815) (ite c!24389 (index!3295 lt!68827) (index!3298 lt!68827))) (ite c!24386 (index!3296 lt!68821) (ite c!24395 (index!3295 lt!68834) (index!3298 lt!68834)))) (mask!7148 newMap!16)) (and (bvsge (ite c!24396 (ite c!24399 (index!3296 lt!68815) (ite c!24389 (index!3295 lt!68827) (index!3298 lt!68827))) (ite c!24386 (index!3296 lt!68821) (ite c!24395 (index!3295 lt!68834) (index!3298 lt!68834)))) #b00000000000000000000000000000000) (bvslt (ite c!24396 (ite c!24399 (index!3296 lt!68815) (ite c!24389 (index!3295 lt!68827) (index!3298 lt!68827))) (ite c!24386 (index!3296 lt!68821) (ite c!24395 (index!3295 lt!68834) (index!3298 lt!68834)))) (bvadd (mask!7148 newMap!16) #b00000000000000000000000000000001))))))

(assert (=> bm!14493 d!40153))

(declare-fun d!40155 () Bool)

(assert (=> d!40155 (= (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (and (not (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!131861 d!40155))

(declare-fun d!40157 () Bool)

(assert (=> d!40157 (= (apply!115 lt!68723 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1485 (getValueByKey!170 (toList!867 lt!68723) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(declare-fun bs!5469 () Bool)

(assert (= bs!5469 d!40157))

(assert (=> bs!5469 m!155529))

(declare-fun m!155769 () Bool)

(assert (=> bs!5469 m!155769))

(assert (=> bs!5469 m!155769))

(declare-fun m!155771 () Bool)

(assert (=> bs!5469 m!155771))

(assert (=> b!131860 d!40157))

(declare-fun d!40159 () Bool)

(declare-fun c!24428 () Bool)

(assert (=> d!40159 (= c!24428 ((_ is ValueCellFull!1092) (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun e!86151 () V!3475)

(assert (=> d!40159 (= (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!86151)))

(declare-fun b!132115 () Bool)

(assert (=> b!132115 (= e!86151 (get!1483 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!132116 () Bool)

(assert (=> b!132116 (= e!86151 (get!1484 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!40159 c!24428) b!132115))

(assert (= (and d!40159 (not c!24428)) b!132116))

(assert (=> b!132115 m!155533))

(assert (=> b!132115 m!155437))

(declare-fun m!155773 () Bool)

(assert (=> b!132115 m!155773))

(assert (=> b!132116 m!155533))

(assert (=> b!132116 m!155437))

(declare-fun m!155775 () Bool)

(assert (=> b!132116 m!155775))

(assert (=> b!131860 d!40159))

(assert (=> bm!14490 d!40119))

(declare-fun d!40161 () Bool)

(assert (=> d!40161 (= (get!1484 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!132009 d!40161))

(declare-fun d!40163 () Bool)

(declare-fun e!86154 () Bool)

(assert (=> d!40163 e!86154))

(declare-fun res!63623 () Bool)

(assert (=> d!40163 (=> (not res!63623) (not e!86154))))

(assert (=> d!40163 (= res!63623 (and (bvsge (index!3296 lt!68833) #b00000000000000000000000000000000) (bvslt (index!3296 lt!68833) (size!2522 (_keys!4601 newMap!16)))))))

(declare-fun lt!68903 () Unit!4131)

(declare-fun choose!817 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 32) Int) Unit!4131)

(assert (=> d!40163 (= lt!68903 (choose!817 (_keys!4601 newMap!16) lt!68831 (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (index!3296 lt!68833) (defaultEntry!2854 newMap!16)))))

(assert (=> d!40163 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40163 (= (lemmaValidKeyInArrayIsInListMap!118 (_keys!4601 newMap!16) lt!68831 (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (index!3296 lt!68833) (defaultEntry!2854 newMap!16)) lt!68903)))

(declare-fun b!132119 () Bool)

(assert (=> b!132119 (= e!86154 (contains!892 (getCurrentListMap!538 (_keys!4601 newMap!16) lt!68831 (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68833))))))

(assert (= (and d!40163 res!63623) b!132119))

(declare-fun m!155777 () Bool)

(assert (=> d!40163 m!155777))

(assert (=> d!40163 m!155667))

(declare-fun m!155779 () Bool)

(assert (=> b!132119 m!155779))

(assert (=> b!132119 m!155621))

(assert (=> b!132119 m!155779))

(assert (=> b!132119 m!155621))

(declare-fun m!155781 () Bool)

(assert (=> b!132119 m!155781))

(assert (=> b!131969 d!40163))

(declare-fun d!40165 () Bool)

(declare-fun e!86157 () Bool)

(assert (=> d!40165 e!86157))

(declare-fun res!63626 () Bool)

(assert (=> d!40165 (=> (not res!63626) (not e!86157))))

(assert (=> d!40165 (= res!63626 (and (bvsge (index!3296 lt!68833) #b00000000000000000000000000000000) (bvslt (index!3296 lt!68833) (size!2523 (_values!2837 newMap!16)))))))

(declare-fun lt!68906 () Unit!4131)

(declare-fun choose!818 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 32) (_ BitVec 64) V!3475 Int) Unit!4131)

(assert (=> d!40165 (= lt!68906 (choose!818 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (index!3296 lt!68833) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2854 newMap!16)))))

(assert (=> d!40165 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40165 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (index!3296 lt!68833) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2854 newMap!16)) lt!68906)))

(declare-fun b!132122 () Bool)

(assert (=> b!132122 (= e!86157 (= (+!169 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!538 (_keys!4601 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16))) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16))))))

(assert (= (and d!40165 res!63626) b!132122))

(assert (=> d!40165 m!155441))

(assert (=> d!40165 m!155439))

(declare-fun m!155783 () Bool)

(assert (=> d!40165 m!155783))

(assert (=> d!40165 m!155667))

(assert (=> b!132122 m!155523))

(assert (=> b!132122 m!155523))

(declare-fun m!155785 () Bool)

(assert (=> b!132122 m!155785))

(assert (=> b!132122 m!155615))

(declare-fun m!155787 () Bool)

(assert (=> b!132122 m!155787))

(assert (=> b!131969 d!40165))

(declare-fun d!40167 () Bool)

(declare-fun e!86159 () Bool)

(assert (=> d!40167 e!86159))

(declare-fun res!63627 () Bool)

(assert (=> d!40167 (=> res!63627 e!86159)))

(declare-fun lt!68909 () Bool)

(assert (=> d!40167 (= res!63627 (not lt!68909))))

(declare-fun lt!68908 () Bool)

(assert (=> d!40167 (= lt!68909 lt!68908)))

(declare-fun lt!68907 () Unit!4131)

(declare-fun e!86158 () Unit!4131)

(assert (=> d!40167 (= lt!68907 e!86158)))

(declare-fun c!24429 () Bool)

(assert (=> d!40167 (= c!24429 lt!68908)))

(assert (=> d!40167 (= lt!68908 (containsKey!174 (toList!867 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> d!40167 (= (contains!892 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) lt!68909)))

(declare-fun b!132123 () Bool)

(declare-fun lt!68910 () Unit!4131)

(assert (=> b!132123 (= e!86158 lt!68910)))

(assert (=> b!132123 (= lt!68910 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!867 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> b!132123 (isDefined!124 (getValueByKey!170 (toList!867 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun b!132124 () Bool)

(declare-fun Unit!4138 () Unit!4131)

(assert (=> b!132124 (= e!86158 Unit!4138)))

(declare-fun b!132125 () Bool)

(assert (=> b!132125 (= e!86159 (isDefined!124 (getValueByKey!170 (toList!867 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))))))

(assert (= (and d!40167 c!24429) b!132123))

(assert (= (and d!40167 (not c!24429)) b!132124))

(assert (= (and d!40167 (not res!63627)) b!132125))

(assert (=> d!40167 m!155441))

(declare-fun m!155789 () Bool)

(assert (=> d!40167 m!155789))

(assert (=> b!132123 m!155441))

(declare-fun m!155791 () Bool)

(assert (=> b!132123 m!155791))

(assert (=> b!132123 m!155441))

(declare-fun m!155793 () Bool)

(assert (=> b!132123 m!155793))

(assert (=> b!132123 m!155793))

(declare-fun m!155795 () Bool)

(assert (=> b!132123 m!155795))

(assert (=> b!132125 m!155441))

(assert (=> b!132125 m!155793))

(assert (=> b!132125 m!155793))

(assert (=> b!132125 m!155795))

(assert (=> b!131969 d!40167))

(assert (=> b!131969 d!40139))

(declare-fun d!40169 () Bool)

(declare-fun e!86160 () Bool)

(assert (=> d!40169 e!86160))

(declare-fun res!63628 () Bool)

(assert (=> d!40169 (=> (not res!63628) (not e!86160))))

(declare-fun lt!68911 () ListLongMap!1703)

(assert (=> d!40169 (= res!63628 (contains!892 lt!68911 (_1!1310 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!68913 () List!1732)

(assert (=> d!40169 (= lt!68911 (ListLongMap!1704 lt!68913))))

(declare-fun lt!68914 () Unit!4131)

(declare-fun lt!68912 () Unit!4131)

(assert (=> d!40169 (= lt!68914 lt!68912)))

(assert (=> d!40169 (= (getValueByKey!170 lt!68913 (_1!1310 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!175 (_2!1310 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40169 (= lt!68912 (lemmaContainsTupThenGetReturnValue!87 lt!68913 (_1!1310 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1310 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40169 (= lt!68913 (insertStrictlySorted!89 (toList!867 call!14483) (_1!1310 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!1310 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40169 (= (+!169 call!14483 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!68911)))

(declare-fun b!132126 () Bool)

(declare-fun res!63629 () Bool)

(assert (=> b!132126 (=> (not res!63629) (not e!86160))))

(assert (=> b!132126 (= res!63629 (= (getValueByKey!170 (toList!867 lt!68911) (_1!1310 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!175 (_2!1310 (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!132127 () Bool)

(assert (=> b!132127 (= e!86160 (contains!895 (toList!867 lt!68911) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!40169 res!63628) b!132126))

(assert (= (and b!132126 res!63629) b!132127))

(declare-fun m!155797 () Bool)

(assert (=> d!40169 m!155797))

(declare-fun m!155799 () Bool)

(assert (=> d!40169 m!155799))

(declare-fun m!155801 () Bool)

(assert (=> d!40169 m!155801))

(declare-fun m!155803 () Bool)

(assert (=> d!40169 m!155803))

(declare-fun m!155805 () Bool)

(assert (=> b!132126 m!155805))

(declare-fun m!155807 () Bool)

(assert (=> b!132127 m!155807))

(assert (=> b!131983 d!40169))

(declare-fun d!40171 () Bool)

(assert (=> d!40171 (= (apply!115 (+!169 lt!68726 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68722) (get!1485 (getValueByKey!170 (toList!867 (+!169 lt!68726 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))) lt!68722)))))

(declare-fun bs!5470 () Bool)

(assert (= bs!5470 d!40171))

(declare-fun m!155809 () Bool)

(assert (=> bs!5470 m!155809))

(assert (=> bs!5470 m!155809))

(declare-fun m!155811 () Bool)

(assert (=> bs!5470 m!155811))

(assert (=> b!131858 d!40171))

(declare-fun d!40173 () Bool)

(declare-fun e!86161 () Bool)

(assert (=> d!40173 e!86161))

(declare-fun res!63630 () Bool)

(assert (=> d!40173 (=> (not res!63630) (not e!86161))))

(declare-fun lt!68915 () ListLongMap!1703)

(assert (=> d!40173 (= res!63630 (contains!892 lt!68915 (_1!1310 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(declare-fun lt!68917 () List!1732)

(assert (=> d!40173 (= lt!68915 (ListLongMap!1704 lt!68917))))

(declare-fun lt!68918 () Unit!4131)

(declare-fun lt!68916 () Unit!4131)

(assert (=> d!40173 (= lt!68918 lt!68916)))

(assert (=> d!40173 (= (getValueByKey!170 lt!68917 (_1!1310 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40173 (= lt!68916 (lemmaContainsTupThenGetReturnValue!87 lt!68917 (_1!1310 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40173 (= lt!68917 (insertStrictlySorted!89 (toList!867 lt!68726) (_1!1310 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40173 (= (+!169 lt!68726 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68915)))

(declare-fun b!132128 () Bool)

(declare-fun res!63631 () Bool)

(assert (=> b!132128 (=> (not res!63631) (not e!86161))))

(assert (=> b!132128 (= res!63631 (= (getValueByKey!170 (toList!867 lt!68915) (_1!1310 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))))))))

(declare-fun b!132129 () Bool)

(assert (=> b!132129 (= e!86161 (contains!895 (toList!867 lt!68915) (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))))))

(assert (= (and d!40173 res!63630) b!132128))

(assert (= (and b!132128 res!63631) b!132129))

(declare-fun m!155813 () Bool)

(assert (=> d!40173 m!155813))

(declare-fun m!155815 () Bool)

(assert (=> d!40173 m!155815))

(declare-fun m!155817 () Bool)

(assert (=> d!40173 m!155817))

(declare-fun m!155819 () Bool)

(assert (=> d!40173 m!155819))

(declare-fun m!155821 () Bool)

(assert (=> b!132128 m!155821))

(declare-fun m!155823 () Bool)

(assert (=> b!132129 m!155823))

(assert (=> b!131858 d!40173))

(declare-fun d!40175 () Bool)

(declare-fun e!86162 () Bool)

(assert (=> d!40175 e!86162))

(declare-fun res!63632 () Bool)

(assert (=> d!40175 (=> (not res!63632) (not e!86162))))

(declare-fun lt!68919 () ListLongMap!1703)

(assert (=> d!40175 (= res!63632 (contains!892 lt!68919 (_1!1310 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(declare-fun lt!68921 () List!1732)

(assert (=> d!40175 (= lt!68919 (ListLongMap!1704 lt!68921))))

(declare-fun lt!68922 () Unit!4131)

(declare-fun lt!68920 () Unit!4131)

(assert (=> d!40175 (= lt!68922 lt!68920)))

(assert (=> d!40175 (= (getValueByKey!170 lt!68921 (_1!1310 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40175 (= lt!68920 (lemmaContainsTupThenGetReturnValue!87 lt!68921 (_1!1310 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40175 (= lt!68921 (insertStrictlySorted!89 (toList!867 lt!68741) (_1!1310 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40175 (= (+!169 lt!68741 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68919)))

(declare-fun b!132130 () Bool)

(declare-fun res!63633 () Bool)

(assert (=> b!132130 (=> (not res!63633) (not e!86162))))

(assert (=> b!132130 (= res!63633 (= (getValueByKey!170 (toList!867 lt!68919) (_1!1310 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))))

(declare-fun b!132131 () Bool)

(assert (=> b!132131 (= e!86162 (contains!895 (toList!867 lt!68919) (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))

(assert (= (and d!40175 res!63632) b!132130))

(assert (= (and b!132130 res!63633) b!132131))

(declare-fun m!155825 () Bool)

(assert (=> d!40175 m!155825))

(declare-fun m!155827 () Bool)

(assert (=> d!40175 m!155827))

(declare-fun m!155829 () Bool)

(assert (=> d!40175 m!155829))

(declare-fun m!155831 () Bool)

(assert (=> d!40175 m!155831))

(declare-fun m!155833 () Bool)

(assert (=> b!132130 m!155833))

(declare-fun m!155835 () Bool)

(assert (=> b!132131 m!155835))

(assert (=> b!131858 d!40175))

(declare-fun d!40177 () Bool)

(assert (=> d!40177 (= (apply!115 (+!169 lt!68725 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68727) (apply!115 lt!68725 lt!68727))))

(declare-fun lt!68925 () Unit!4131)

(declare-fun choose!819 (ListLongMap!1703 (_ BitVec 64) V!3475 (_ BitVec 64)) Unit!4131)

(assert (=> d!40177 (= lt!68925 (choose!819 lt!68725 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68727))))

(declare-fun e!86165 () Bool)

(assert (=> d!40177 e!86165))

(declare-fun res!63636 () Bool)

(assert (=> d!40177 (=> (not res!63636) (not e!86165))))

(assert (=> d!40177 (= res!63636 (contains!892 lt!68725 lt!68727))))

(assert (=> d!40177 (= (addApplyDifferent!91 lt!68725 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68727) lt!68925)))

(declare-fun b!132135 () Bool)

(assert (=> b!132135 (= e!86165 (not (= lt!68727 lt!68728)))))

(assert (= (and d!40177 res!63636) b!132135))

(declare-fun m!155837 () Bool)

(assert (=> d!40177 m!155837))

(assert (=> d!40177 m!155549))

(assert (=> d!40177 m!155551))

(declare-fun m!155839 () Bool)

(assert (=> d!40177 m!155839))

(assert (=> d!40177 m!155549))

(assert (=> d!40177 m!155567))

(assert (=> b!131858 d!40177))

(assert (=> b!131858 d!40151))

(declare-fun d!40179 () Bool)

(assert (=> d!40179 (= (apply!115 (+!169 lt!68726 (tuple2!2601 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68722) (apply!115 lt!68726 lt!68722))))

(declare-fun lt!68926 () Unit!4131)

(assert (=> d!40179 (= lt!68926 (choose!819 lt!68726 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68722))))

(declare-fun e!86166 () Bool)

(assert (=> d!40179 e!86166))

(declare-fun res!63637 () Bool)

(assert (=> d!40179 (=> (not res!63637) (not e!86166))))

(assert (=> d!40179 (= res!63637 (contains!892 lt!68726 lt!68722))))

(assert (=> d!40179 (= (addApplyDifferent!91 lt!68726 lt!68733 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68722) lt!68926)))

(declare-fun b!132136 () Bool)

(assert (=> b!132136 (= e!86166 (not (= lt!68722 lt!68733)))))

(assert (= (and d!40179 res!63637) b!132136))

(declare-fun m!155841 () Bool)

(assert (=> d!40179 m!155841))

(assert (=> d!40179 m!155543))

(assert (=> d!40179 m!155563))

(declare-fun m!155843 () Bool)

(assert (=> d!40179 m!155843))

(assert (=> d!40179 m!155543))

(assert (=> d!40179 m!155541))

(assert (=> b!131858 d!40179))

(declare-fun d!40181 () Bool)

(declare-fun e!86167 () Bool)

(assert (=> d!40181 e!86167))

(declare-fun res!63638 () Bool)

(assert (=> d!40181 (=> (not res!63638) (not e!86167))))

(declare-fun lt!68927 () ListLongMap!1703)

(assert (=> d!40181 (= res!63638 (contains!892 lt!68927 (_1!1310 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(declare-fun lt!68929 () List!1732)

(assert (=> d!40181 (= lt!68927 (ListLongMap!1704 lt!68929))))

(declare-fun lt!68930 () Unit!4131)

(declare-fun lt!68928 () Unit!4131)

(assert (=> d!40181 (= lt!68930 lt!68928)))

(assert (=> d!40181 (= (getValueByKey!170 lt!68929 (_1!1310 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40181 (= lt!68928 (lemmaContainsTupThenGetReturnValue!87 lt!68929 (_1!1310 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40181 (= lt!68929 (insertStrictlySorted!89 (toList!867 lt!68724) (_1!1310 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40181 (= (+!169 lt!68724 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68927)))

(declare-fun b!132137 () Bool)

(declare-fun res!63639 () Bool)

(assert (=> b!132137 (=> (not res!63639) (not e!86167))))

(assert (=> b!132137 (= res!63639 (= (getValueByKey!170 (toList!867 lt!68927) (_1!1310 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))))))))

(declare-fun b!132138 () Bool)

(assert (=> b!132138 (= e!86167 (contains!895 (toList!867 lt!68927) (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))))))

(assert (= (and d!40181 res!63638) b!132137))

(assert (= (and b!132137 res!63639) b!132138))

(declare-fun m!155845 () Bool)

(assert (=> d!40181 m!155845))

(declare-fun m!155847 () Bool)

(assert (=> d!40181 m!155847))

(declare-fun m!155849 () Bool)

(assert (=> d!40181 m!155849))

(declare-fun m!155851 () Bool)

(assert (=> d!40181 m!155851))

(declare-fun m!155853 () Bool)

(assert (=> b!132137 m!155853))

(declare-fun m!155855 () Bool)

(assert (=> b!132138 m!155855))

(assert (=> b!131858 d!40181))

(declare-fun d!40183 () Bool)

(assert (=> d!40183 (= (apply!115 (+!169 lt!68725 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68727) (get!1485 (getValueByKey!170 (toList!867 (+!169 lt!68725 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) lt!68727)))))

(declare-fun bs!5471 () Bool)

(assert (= bs!5471 d!40183))

(declare-fun m!155857 () Bool)

(assert (=> bs!5471 m!155857))

(assert (=> bs!5471 m!155857))

(declare-fun m!155859 () Bool)

(assert (=> bs!5471 m!155859))

(assert (=> b!131858 d!40183))

(declare-fun d!40185 () Bool)

(assert (=> d!40185 (= (apply!115 lt!68725 lt!68727) (get!1485 (getValueByKey!170 (toList!867 lt!68725) lt!68727)))))

(declare-fun bs!5472 () Bool)

(assert (= bs!5472 d!40185))

(declare-fun m!155861 () Bool)

(assert (=> bs!5472 m!155861))

(assert (=> bs!5472 m!155861))

(declare-fun m!155863 () Bool)

(assert (=> bs!5472 m!155863))

(assert (=> b!131858 d!40185))

(declare-fun d!40187 () Bool)

(declare-fun e!86169 () Bool)

(assert (=> d!40187 e!86169))

(declare-fun res!63640 () Bool)

(assert (=> d!40187 (=> res!63640 e!86169)))

(declare-fun lt!68933 () Bool)

(assert (=> d!40187 (= res!63640 (not lt!68933))))

(declare-fun lt!68932 () Bool)

(assert (=> d!40187 (= lt!68933 lt!68932)))

(declare-fun lt!68931 () Unit!4131)

(declare-fun e!86168 () Unit!4131)

(assert (=> d!40187 (= lt!68931 e!86168)))

(declare-fun c!24430 () Bool)

(assert (=> d!40187 (= c!24430 lt!68932)))

(assert (=> d!40187 (= lt!68932 (containsKey!174 (toList!867 (+!169 lt!68724 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))) lt!68736))))

(assert (=> d!40187 (= (contains!892 (+!169 lt!68724 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68736) lt!68933)))

(declare-fun b!132139 () Bool)

(declare-fun lt!68934 () Unit!4131)

(assert (=> b!132139 (= e!86168 lt!68934)))

(assert (=> b!132139 (= lt!68934 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!867 (+!169 lt!68724 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))) lt!68736))))

(assert (=> b!132139 (isDefined!124 (getValueByKey!170 (toList!867 (+!169 lt!68724 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))) lt!68736))))

(declare-fun b!132140 () Bool)

(declare-fun Unit!4139 () Unit!4131)

(assert (=> b!132140 (= e!86168 Unit!4139)))

(declare-fun b!132141 () Bool)

(assert (=> b!132141 (= e!86169 (isDefined!124 (getValueByKey!170 (toList!867 (+!169 lt!68724 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))))) lt!68736)))))

(assert (= (and d!40187 c!24430) b!132139))

(assert (= (and d!40187 (not c!24430)) b!132140))

(assert (= (and d!40187 (not res!63640)) b!132141))

(declare-fun m!155865 () Bool)

(assert (=> d!40187 m!155865))

(declare-fun m!155867 () Bool)

(assert (=> b!132139 m!155867))

(declare-fun m!155869 () Bool)

(assert (=> b!132139 m!155869))

(assert (=> b!132139 m!155869))

(declare-fun m!155871 () Bool)

(assert (=> b!132139 m!155871))

(assert (=> b!132141 m!155869))

(assert (=> b!132141 m!155869))

(assert (=> b!132141 m!155871))

(assert (=> b!131858 d!40187))

(declare-fun d!40189 () Bool)

(assert (=> d!40189 (= (apply!115 (+!169 lt!68741 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68729) (apply!115 lt!68741 lt!68729))))

(declare-fun lt!68935 () Unit!4131)

(assert (=> d!40189 (= lt!68935 (choose!819 lt!68741 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68729))))

(declare-fun e!86170 () Bool)

(assert (=> d!40189 e!86170))

(declare-fun res!63641 () Bool)

(assert (=> d!40189 (=> (not res!63641) (not e!86170))))

(assert (=> d!40189 (= res!63641 (contains!892 lt!68741 lt!68729))))

(assert (=> d!40189 (= (addApplyDifferent!91 lt!68741 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68729) lt!68935)))

(declare-fun b!132142 () Bool)

(assert (=> b!132142 (= e!86170 (not (= lt!68729 lt!68743)))))

(assert (= (and d!40189 res!63641) b!132142))

(declare-fun m!155873 () Bool)

(assert (=> d!40189 m!155873))

(assert (=> d!40189 m!155553))

(assert (=> d!40189 m!155561))

(declare-fun m!155875 () Bool)

(assert (=> d!40189 m!155875))

(assert (=> d!40189 m!155553))

(assert (=> d!40189 m!155569))

(assert (=> b!131858 d!40189))

(declare-fun d!40191 () Bool)

(assert (=> d!40191 (contains!892 (+!169 lt!68724 (tuple2!2601 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68736)))

(declare-fun lt!68938 () Unit!4131)

(declare-fun choose!820 (ListLongMap!1703 (_ BitVec 64) V!3475 (_ BitVec 64)) Unit!4131)

(assert (=> d!40191 (= lt!68938 (choose!820 lt!68724 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68736))))

(assert (=> d!40191 (contains!892 lt!68724 lt!68736)))

(assert (=> d!40191 (= (addStillContains!91 lt!68724 lt!68738 (zeroValue!2710 (v!3186 (underlying!452 thiss!992))) lt!68736) lt!68938)))

(declare-fun bs!5473 () Bool)

(assert (= bs!5473 d!40191))

(assert (=> bs!5473 m!155559))

(assert (=> bs!5473 m!155559))

(assert (=> bs!5473 m!155565))

(declare-fun m!155877 () Bool)

(assert (=> bs!5473 m!155877))

(declare-fun m!155879 () Bool)

(assert (=> bs!5473 m!155879))

(assert (=> b!131858 d!40191))

(declare-fun d!40193 () Bool)

(assert (=> d!40193 (= (apply!115 lt!68726 lt!68722) (get!1485 (getValueByKey!170 (toList!867 lt!68726) lt!68722)))))

(declare-fun bs!5474 () Bool)

(assert (= bs!5474 d!40193))

(declare-fun m!155881 () Bool)

(assert (=> bs!5474 m!155881))

(assert (=> bs!5474 m!155881))

(declare-fun m!155883 () Bool)

(assert (=> bs!5474 m!155883))

(assert (=> b!131858 d!40193))

(declare-fun d!40195 () Bool)

(assert (=> d!40195 (= (apply!115 lt!68741 lt!68729) (get!1485 (getValueByKey!170 (toList!867 lt!68741) lt!68729)))))

(declare-fun bs!5475 () Bool)

(assert (= bs!5475 d!40195))

(declare-fun m!155885 () Bool)

(assert (=> bs!5475 m!155885))

(assert (=> bs!5475 m!155885))

(declare-fun m!155887 () Bool)

(assert (=> bs!5475 m!155887))

(assert (=> b!131858 d!40195))

(declare-fun d!40197 () Bool)

(assert (=> d!40197 (= (apply!115 (+!169 lt!68741 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68729) (get!1485 (getValueByKey!170 (toList!867 (+!169 lt!68741 (tuple2!2601 lt!68743 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) lt!68729)))))

(declare-fun bs!5476 () Bool)

(assert (= bs!5476 d!40197))

(declare-fun m!155889 () Bool)

(assert (=> bs!5476 m!155889))

(assert (=> bs!5476 m!155889))

(declare-fun m!155891 () Bool)

(assert (=> bs!5476 m!155891))

(assert (=> b!131858 d!40197))

(declare-fun d!40199 () Bool)

(declare-fun e!86171 () Bool)

(assert (=> d!40199 e!86171))

(declare-fun res!63642 () Bool)

(assert (=> d!40199 (=> (not res!63642) (not e!86171))))

(declare-fun lt!68939 () ListLongMap!1703)

(assert (=> d!40199 (= res!63642 (contains!892 lt!68939 (_1!1310 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(declare-fun lt!68941 () List!1732)

(assert (=> d!40199 (= lt!68939 (ListLongMap!1704 lt!68941))))

(declare-fun lt!68942 () Unit!4131)

(declare-fun lt!68940 () Unit!4131)

(assert (=> d!40199 (= lt!68942 lt!68940)))

(assert (=> d!40199 (= (getValueByKey!170 lt!68941 (_1!1310 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40199 (= lt!68940 (lemmaContainsTupThenGetReturnValue!87 lt!68941 (_1!1310 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40199 (= lt!68941 (insertStrictlySorted!89 (toList!867 lt!68725) (_1!1310 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) (_2!1310 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (=> d!40199 (= (+!169 lt!68725 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))))) lt!68939)))

(declare-fun b!132144 () Bool)

(declare-fun res!63643 () Bool)

(assert (=> b!132144 (=> (not res!63643) (not e!86171))))

(assert (=> b!132144 (= res!63643 (= (getValueByKey!170 (toList!867 lt!68939) (_1!1310 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) (Some!175 (_2!1310 (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))))

(declare-fun b!132145 () Bool)

(assert (=> b!132145 (= e!86171 (contains!895 (toList!867 lt!68939) (tuple2!2601 lt!68728 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))

(assert (= (and d!40199 res!63642) b!132144))

(assert (= (and b!132144 res!63643) b!132145))

(declare-fun m!155893 () Bool)

(assert (=> d!40199 m!155893))

(declare-fun m!155895 () Bool)

(assert (=> d!40199 m!155895))

(declare-fun m!155897 () Bool)

(assert (=> d!40199 m!155897))

(declare-fun m!155899 () Bool)

(assert (=> d!40199 m!155899))

(declare-fun m!155901 () Bool)

(assert (=> b!132144 m!155901))

(declare-fun m!155903 () Bool)

(assert (=> b!132145 m!155903))

(assert (=> b!131858 d!40199))

(declare-fun d!40201 () Bool)

(declare-fun res!63644 () Bool)

(declare-fun e!86172 () Bool)

(assert (=> d!40201 (=> (not res!63644) (not e!86172))))

(assert (=> d!40201 (= res!63644 (simpleValid!90 (v!3186 (underlying!452 thiss!992))))))

(assert (=> d!40201 (= (valid!517 (v!3186 (underlying!452 thiss!992))) e!86172)))

(declare-fun b!132146 () Bool)

(declare-fun res!63645 () Bool)

(assert (=> b!132146 (=> (not res!63645) (not e!86172))))

(assert (=> b!132146 (= res!63645 (= (arrayCountValidKeys!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000000 (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))) (_size!595 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun b!132147 () Bool)

(declare-fun res!63646 () Bool)

(assert (=> b!132147 (=> (not res!63646) (not e!86172))))

(assert (=> b!132147 (= res!63646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun b!132148 () Bool)

(assert (=> b!132148 (= e!86172 (arrayNoDuplicates!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) #b00000000000000000000000000000000 Nil!1730))))

(assert (= (and d!40201 res!63644) b!132146))

(assert (= (and b!132146 res!63645) b!132147))

(assert (= (and b!132147 res!63646) b!132148))

(declare-fun m!155905 () Bool)

(assert (=> d!40201 m!155905))

(declare-fun m!155907 () Bool)

(assert (=> b!132146 m!155907))

(assert (=> b!132147 m!155449))

(assert (=> b!132148 m!155433))

(assert (=> d!40135 d!40201))

(declare-fun d!40203 () Bool)

(declare-fun e!86173 () Bool)

(assert (=> d!40203 e!86173))

(declare-fun res!63647 () Bool)

(assert (=> d!40203 (=> (not res!63647) (not e!86173))))

(declare-fun lt!68943 () ListLongMap!1703)

(assert (=> d!40203 (= res!63647 (contains!892 lt!68943 (_1!1310 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun lt!68945 () List!1732)

(assert (=> d!40203 (= lt!68943 (ListLongMap!1704 lt!68945))))

(declare-fun lt!68946 () Unit!4131)

(declare-fun lt!68944 () Unit!4131)

(assert (=> d!40203 (= lt!68946 lt!68944)))

(assert (=> d!40203 (= (getValueByKey!170 lt!68945 (_1!1310 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!175 (_2!1310 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!40203 (= lt!68944 (lemmaContainsTupThenGetReturnValue!87 lt!68945 (_1!1310 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1310 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!40203 (= lt!68945 (insertStrictlySorted!89 (toList!867 e!86073) (_1!1310 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) (_2!1310 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!40203 (= (+!169 e!86073 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!68943)))

(declare-fun b!132149 () Bool)

(declare-fun res!63648 () Bool)

(assert (=> b!132149 (=> (not res!63648) (not e!86173))))

(assert (=> b!132149 (= res!63648 (= (getValueByKey!170 (toList!867 lt!68943) (_1!1310 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))) (Some!175 (_2!1310 (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!132150 () Bool)

(assert (=> b!132150 (= e!86173 (contains!895 (toList!867 lt!68943) (ite c!24394 (ite c!24387 (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!40203 res!63647) b!132149))

(assert (= (and b!132149 res!63648) b!132150))

(declare-fun m!155909 () Bool)

(assert (=> d!40203 m!155909))

(declare-fun m!155911 () Bool)

(assert (=> d!40203 m!155911))

(declare-fun m!155913 () Bool)

(assert (=> d!40203 m!155913))

(declare-fun m!155915 () Bool)

(assert (=> d!40203 m!155915))

(declare-fun m!155917 () Bool)

(assert (=> b!132149 m!155917))

(declare-fun m!155919 () Bool)

(assert (=> b!132150 m!155919))

(assert (=> bm!14488 d!40203))

(assert (=> b!131854 d!40155))

(declare-fun d!40205 () Bool)

(declare-fun res!63653 () Bool)

(declare-fun e!86178 () Bool)

(assert (=> d!40205 (=> res!63653 e!86178)))

(assert (=> d!40205 (= res!63653 (and ((_ is Cons!1728) (toList!867 lt!68659)) (= (_1!1310 (h!2333 (toList!867 lt!68659))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))))))

(assert (=> d!40205 (= (containsKey!174 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) e!86178)))

(declare-fun b!132155 () Bool)

(declare-fun e!86179 () Bool)

(assert (=> b!132155 (= e!86178 e!86179)))

(declare-fun res!63654 () Bool)

(assert (=> b!132155 (=> (not res!63654) (not e!86179))))

(assert (=> b!132155 (= res!63654 (and (or (not ((_ is Cons!1728) (toList!867 lt!68659))) (bvsle (_1!1310 (h!2333 (toList!867 lt!68659))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))) ((_ is Cons!1728) (toList!867 lt!68659)) (bvslt (_1!1310 (h!2333 (toList!867 lt!68659))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))))))

(declare-fun b!132156 () Bool)

(assert (=> b!132156 (= e!86179 (containsKey!174 (t!6179 (toList!867 lt!68659)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (= (and d!40205 (not res!63653)) b!132155))

(assert (= (and b!132155 res!63654) b!132156))

(assert (=> b!132156 m!155441))

(declare-fun m!155921 () Bool)

(assert (=> b!132156 m!155921))

(assert (=> d!40127 d!40205))

(declare-fun d!40207 () Bool)

(assert (=> d!40207 (= (map!1401 (_2!1311 lt!68828)) (getCurrentListMap!538 (_keys!4601 (_2!1311 lt!68828)) (_values!2837 (_2!1311 lt!68828)) (mask!7148 (_2!1311 lt!68828)) (extraKeys!2621 (_2!1311 lt!68828)) (zeroValue!2710 (_2!1311 lt!68828)) (minValue!2710 (_2!1311 lt!68828)) #b00000000000000000000000000000000 (defaultEntry!2854 (_2!1311 lt!68828))))))

(declare-fun bs!5477 () Bool)

(assert (= bs!5477 d!40207))

(declare-fun m!155923 () Bool)

(assert (=> bs!5477 m!155923))

(assert (=> bm!14485 d!40207))

(declare-fun d!40209 () Bool)

(declare-fun lt!68949 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!130 (List!1733) (InoxSet (_ BitVec 64)))

(assert (=> d!40209 (= lt!68949 (select (content!130 Nil!1730) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!86185 () Bool)

(assert (=> d!40209 (= lt!68949 e!86185)))

(declare-fun res!63659 () Bool)

(assert (=> d!40209 (=> (not res!63659) (not e!86185))))

(assert (=> d!40209 (= res!63659 ((_ is Cons!1729) Nil!1730))))

(assert (=> d!40209 (= (contains!894 Nil!1730 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)) lt!68949)))

(declare-fun b!132161 () Bool)

(declare-fun e!86184 () Bool)

(assert (=> b!132161 (= e!86185 e!86184)))

(declare-fun res!63660 () Bool)

(assert (=> b!132161 (=> res!63660 e!86184)))

(assert (=> b!132161 (= res!63660 (= (h!2334 Nil!1730) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!132162 () Bool)

(assert (=> b!132162 (= e!86184 (contains!894 (t!6180 Nil!1730) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!40209 res!63659) b!132161))

(assert (= (and b!132161 (not res!63660)) b!132162))

(declare-fun m!155925 () Bool)

(assert (=> d!40209 m!155925))

(assert (=> d!40209 m!155507))

(declare-fun m!155927 () Bool)

(assert (=> d!40209 m!155927))

(assert (=> b!132162 m!155507))

(declare-fun m!155929 () Bool)

(assert (=> b!132162 m!155929))

(assert (=> b!131793 d!40209))

(declare-fun d!40211 () Bool)

(assert (=> d!40211 (= (+!169 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) lt!68819 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!68952 () Unit!4131)

(declare-fun choose!821 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 V!3475 Int) Unit!4131)

(assert (=> d!40211 (= lt!68952 (choose!821 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) lt!68819 (zeroValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2710 newMap!16) (defaultEntry!2854 newMap!16)))))

(assert (=> d!40211 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40211 (= (lemmaChangeZeroKeyThenAddPairToListMap!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) lt!68819 (zeroValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2710 newMap!16) (defaultEntry!2854 newMap!16)) lt!68952)))

(declare-fun bs!5478 () Bool)

(assert (= bs!5478 d!40211))

(assert (=> bs!5478 m!155523))

(assert (=> bs!5478 m!155667))

(assert (=> bs!5478 m!155439))

(declare-fun m!155931 () Bool)

(assert (=> bs!5478 m!155931))

(assert (=> bs!5478 m!155439))

(declare-fun m!155933 () Bool)

(assert (=> bs!5478 m!155933))

(assert (=> bs!5478 m!155523))

(declare-fun m!155935 () Bool)

(assert (=> bs!5478 m!155935))

(assert (=> b!131964 d!40211))

(declare-fun d!40213 () Bool)

(assert (=> d!40213 (arrayContainsKey!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) lt!68677 #b00000000000000000000000000000000)))

(declare-fun lt!68955 () Unit!4131)

(declare-fun choose!13 (array!4766 (_ BitVec 64) (_ BitVec 32)) Unit!4131)

(assert (=> d!40213 (= lt!68955 (choose!13 (_keys!4601 (v!3186 (underlying!452 thiss!992))) lt!68677 #b00000000000000000000000000000000))))

(assert (=> d!40213 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!40213 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) lt!68677 #b00000000000000000000000000000000) lt!68955)))

(declare-fun bs!5479 () Bool)

(assert (= bs!5479 d!40213))

(assert (=> bs!5479 m!155519))

(declare-fun m!155937 () Bool)

(assert (=> bs!5479 m!155937))

(assert (=> b!131805 d!40213))

(declare-fun d!40215 () Bool)

(declare-fun res!63665 () Bool)

(declare-fun e!86190 () Bool)

(assert (=> d!40215 (=> res!63665 e!86190)))

(assert (=> d!40215 (= res!63665 (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) lt!68677))))

(assert (=> d!40215 (= (arrayContainsKey!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) lt!68677 #b00000000000000000000000000000000) e!86190)))

(declare-fun b!132167 () Bool)

(declare-fun e!86191 () Bool)

(assert (=> b!132167 (= e!86190 e!86191)))

(declare-fun res!63666 () Bool)

(assert (=> b!132167 (=> (not res!63666) (not e!86191))))

(assert (=> b!132167 (= res!63666 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(declare-fun b!132168 () Bool)

(assert (=> b!132168 (= e!86191 (arrayContainsKey!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) lt!68677 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!40215 (not res!63665)) b!132167))

(assert (= (and b!132167 res!63666) b!132168))

(assert (=> d!40215 m!155507))

(declare-fun m!155939 () Bool)

(assert (=> b!132168 m!155939))

(assert (=> b!131805 d!40215))

(declare-fun b!132181 () Bool)

(declare-fun e!86200 () SeekEntryResult!284)

(declare-fun lt!68962 () SeekEntryResult!284)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4766 (_ BitVec 32)) SeekEntryResult!284)

(assert (=> b!132181 (= e!86200 (seekKeyOrZeroReturnVacant!0 (x!15512 lt!68962) (index!3297 lt!68962) (index!3297 lt!68962) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun b!132182 () Bool)

(declare-fun e!86198 () SeekEntryResult!284)

(assert (=> b!132182 (= e!86198 Undefined!284)))

(declare-fun d!40217 () Bool)

(declare-fun lt!68963 () SeekEntryResult!284)

(assert (=> d!40217 (and (or ((_ is Undefined!284) lt!68963) (not ((_ is Found!284) lt!68963)) (and (bvsge (index!3296 lt!68963) #b00000000000000000000000000000000) (bvslt (index!3296 lt!68963) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))) (or ((_ is Undefined!284) lt!68963) ((_ is Found!284) lt!68963) (not ((_ is MissingZero!284) lt!68963)) (and (bvsge (index!3295 lt!68963) #b00000000000000000000000000000000) (bvslt (index!3295 lt!68963) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))) (or ((_ is Undefined!284) lt!68963) ((_ is Found!284) lt!68963) ((_ is MissingZero!284) lt!68963) (not ((_ is MissingVacant!284) lt!68963)) (and (bvsge (index!3298 lt!68963) #b00000000000000000000000000000000) (bvslt (index!3298 lt!68963) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))) (or ((_ is Undefined!284) lt!68963) (ite ((_ is Found!284) lt!68963) (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (index!3296 lt!68963)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!284) lt!68963) (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (index!3295 lt!68963)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!284) lt!68963) (= (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (index!3298 lt!68963)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40217 (= lt!68963 e!86198)))

(declare-fun c!24438 () Bool)

(assert (=> d!40217 (= c!24438 (and ((_ is Intermediate!284) lt!68962) (undefined!1096 lt!68962)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!4766 (_ BitVec 32)) SeekEntryResult!284)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!40217 (= lt!68962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) (mask!7148 (v!3186 (underlying!452 thiss!992)))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))))))

(assert (=> d!40217 (validMask!0 (mask!7148 (v!3186 (underlying!452 thiss!992))))))

(assert (=> d!40217 (= (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))) lt!68963)))

(declare-fun b!132183 () Bool)

(declare-fun c!24439 () Bool)

(declare-fun lt!68964 () (_ BitVec 64))

(assert (=> b!132183 (= c!24439 (= lt!68964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!86199 () SeekEntryResult!284)

(assert (=> b!132183 (= e!86199 e!86200)))

(declare-fun b!132184 () Bool)

(assert (=> b!132184 (= e!86198 e!86199)))

(assert (=> b!132184 (= lt!68964 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (index!3297 lt!68962)))))

(declare-fun c!24437 () Bool)

(assert (=> b!132184 (= c!24437 (= lt!68964 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!132185 () Bool)

(assert (=> b!132185 (= e!86200 (MissingZero!284 (index!3297 lt!68962)))))

(declare-fun b!132186 () Bool)

(assert (=> b!132186 (= e!86199 (Found!284 (index!3297 lt!68962)))))

(assert (= (and d!40217 c!24438) b!132182))

(assert (= (and d!40217 (not c!24438)) b!132184))

(assert (= (and b!132184 c!24437) b!132186))

(assert (= (and b!132184 (not c!24437)) b!132183))

(assert (= (and b!132183 c!24439) b!132185))

(assert (= (and b!132183 (not c!24439)) b!132181))

(assert (=> b!132181 m!155507))

(declare-fun m!155941 () Bool)

(assert (=> b!132181 m!155941))

(assert (=> d!40217 m!155507))

(declare-fun m!155943 () Bool)

(assert (=> d!40217 m!155943))

(assert (=> d!40217 m!155943))

(assert (=> d!40217 m!155507))

(declare-fun m!155945 () Bool)

(assert (=> d!40217 m!155945))

(assert (=> d!40217 m!155431))

(declare-fun m!155947 () Bool)

(assert (=> d!40217 m!155947))

(declare-fun m!155949 () Bool)

(assert (=> d!40217 m!155949))

(declare-fun m!155951 () Bool)

(assert (=> d!40217 m!155951))

(declare-fun m!155953 () Bool)

(assert (=> b!132184 m!155953))

(assert (=> b!131805 d!40217))

(declare-fun d!40219 () Bool)

(declare-fun e!86202 () Bool)

(assert (=> d!40219 e!86202))

(declare-fun res!63667 () Bool)

(assert (=> d!40219 (=> res!63667 e!86202)))

(declare-fun lt!68967 () Bool)

(assert (=> d!40219 (= res!63667 (not lt!68967))))

(declare-fun lt!68966 () Bool)

(assert (=> d!40219 (= lt!68967 lt!68966)))

(declare-fun lt!68965 () Unit!4131)

(declare-fun e!86201 () Unit!4131)

(assert (=> d!40219 (= lt!68965 e!86201)))

(declare-fun c!24440 () Bool)

(assert (=> d!40219 (= c!24440 lt!68966)))

(assert (=> d!40219 (= lt!68966 (containsKey!174 (toList!867 lt!68723) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!40219 (= (contains!892 lt!68723 #b1000000000000000000000000000000000000000000000000000000000000000) lt!68967)))

(declare-fun b!132187 () Bool)

(declare-fun lt!68968 () Unit!4131)

(assert (=> b!132187 (= e!86201 lt!68968)))

(assert (=> b!132187 (= lt!68968 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!867 lt!68723) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!132187 (isDefined!124 (getValueByKey!170 (toList!867 lt!68723) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!132188 () Bool)

(declare-fun Unit!4140 () Unit!4131)

(assert (=> b!132188 (= e!86201 Unit!4140)))

(declare-fun b!132189 () Bool)

(assert (=> b!132189 (= e!86202 (isDefined!124 (getValueByKey!170 (toList!867 lt!68723) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!40219 c!24440) b!132187))

(assert (= (and d!40219 (not c!24440)) b!132188))

(assert (= (and d!40219 (not res!63667)) b!132189))

(declare-fun m!155955 () Bool)

(assert (=> d!40219 m!155955))

(declare-fun m!155957 () Bool)

(assert (=> b!132187 m!155957))

(assert (=> b!132187 m!155661))

(assert (=> b!132187 m!155661))

(declare-fun m!155959 () Bool)

(assert (=> b!132187 m!155959))

(assert (=> b!132189 m!155661))

(assert (=> b!132189 m!155661))

(assert (=> b!132189 m!155959))

(assert (=> bm!14420 d!40219))

(declare-fun b!132206 () Bool)

(declare-fun res!63679 () Bool)

(declare-fun e!86213 () Bool)

(assert (=> b!132206 (=> (not res!63679) (not e!86213))))

(declare-fun call!14519 () Bool)

(assert (=> b!132206 (= res!63679 call!14519)))

(declare-fun e!86214 () Bool)

(assert (=> b!132206 (= e!86214 e!86213)))

(declare-fun d!40221 () Bool)

(declare-fun e!86211 () Bool)

(assert (=> d!40221 e!86211))

(declare-fun c!24446 () Bool)

(declare-fun lt!68974 () SeekEntryResult!284)

(assert (=> d!40221 (= c!24446 ((_ is MissingZero!284) lt!68974))))

(assert (=> d!40221 (= lt!68974 (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (_keys!4601 newMap!16) (mask!7148 newMap!16)))))

(declare-fun lt!68973 () Unit!4131)

(declare-fun choose!822 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 64) Int) Unit!4131)

(assert (=> d!40221 (= lt!68973 (choose!822 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (defaultEntry!2854 newMap!16)))))

(assert (=> d!40221 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40221 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (defaultEntry!2854 newMap!16)) lt!68973)))

(declare-fun bm!14516 () Bool)

(assert (=> bm!14516 (= call!14519 (inRange!0 (ite c!24446 (index!3295 lt!68974) (index!3298 lt!68974)) (mask!7148 newMap!16)))))

(declare-fun b!132207 () Bool)

(declare-fun e!86212 () Bool)

(assert (=> b!132207 (= e!86211 e!86212)))

(declare-fun res!63677 () Bool)

(assert (=> b!132207 (= res!63677 call!14519)))

(assert (=> b!132207 (=> (not res!63677) (not e!86212))))

(declare-fun b!132208 () Bool)

(declare-fun call!14520 () Bool)

(assert (=> b!132208 (= e!86213 (not call!14520))))

(declare-fun b!132209 () Bool)

(assert (=> b!132209 (and (bvsge (index!3295 lt!68974) #b00000000000000000000000000000000) (bvslt (index!3295 lt!68974) (size!2522 (_keys!4601 newMap!16))))))

(declare-fun res!63678 () Bool)

(assert (=> b!132209 (= res!63678 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3295 lt!68974)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!132209 (=> (not res!63678) (not e!86212))))

(declare-fun bm!14517 () Bool)

(assert (=> bm!14517 (= call!14520 (arrayContainsKey!0 (_keys!4601 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun b!132210 () Bool)

(assert (=> b!132210 (= e!86214 ((_ is Undefined!284) lt!68974))))

(declare-fun b!132211 () Bool)

(assert (=> b!132211 (= e!86212 (not call!14520))))

(declare-fun b!132212 () Bool)

(assert (=> b!132212 (= e!86211 e!86214)))

(declare-fun c!24445 () Bool)

(assert (=> b!132212 (= c!24445 ((_ is MissingVacant!284) lt!68974))))

(declare-fun b!132213 () Bool)

(declare-fun res!63676 () Bool)

(assert (=> b!132213 (=> (not res!63676) (not e!86213))))

(assert (=> b!132213 (= res!63676 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3298 lt!68974)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!132213 (and (bvsge (index!3298 lt!68974) #b00000000000000000000000000000000) (bvslt (index!3298 lt!68974) (size!2522 (_keys!4601 newMap!16))))))

(assert (= (and d!40221 c!24446) b!132207))

(assert (= (and d!40221 (not c!24446)) b!132212))

(assert (= (and b!132207 res!63677) b!132209))

(assert (= (and b!132209 res!63678) b!132211))

(assert (= (and b!132212 c!24445) b!132206))

(assert (= (and b!132212 (not c!24445)) b!132210))

(assert (= (and b!132206 res!63679) b!132213))

(assert (= (and b!132213 res!63676) b!132208))

(assert (= (or b!132207 b!132206) bm!14516))

(assert (= (or b!132211 b!132208) bm!14517))

(declare-fun m!155961 () Bool)

(assert (=> b!132209 m!155961))

(assert (=> bm!14517 m!155441))

(assert (=> bm!14517 m!155589))

(assert (=> d!40221 m!155441))

(assert (=> d!40221 m!155595))

(assert (=> d!40221 m!155441))

(declare-fun m!155963 () Bool)

(assert (=> d!40221 m!155963))

(assert (=> d!40221 m!155667))

(declare-fun m!155965 () Bool)

(assert (=> bm!14516 m!155965))

(declare-fun m!155967 () Bool)

(assert (=> b!132213 m!155967))

(assert (=> bm!14483 d!40221))

(declare-fun b!132214 () Bool)

(declare-fun e!86218 () Bool)

(declare-fun call!14521 () Bool)

(assert (=> b!132214 (= e!86218 call!14521)))

(declare-fun c!24447 () Bool)

(declare-fun bm!14518 () Bool)

(assert (=> bm!14518 (= call!14521 (arrayNoDuplicates!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!24447 (Cons!1729 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!24333 (Cons!1729 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) Nil!1730) Nil!1730)) (ite c!24333 (Cons!1729 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) Nil!1730) Nil!1730))))))

(declare-fun b!132216 () Bool)

(declare-fun e!86216 () Bool)

(assert (=> b!132216 (= e!86216 e!86218)))

(assert (=> b!132216 (= c!24447 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!132217 () Bool)

(declare-fun e!86215 () Bool)

(assert (=> b!132217 (= e!86215 e!86216)))

(declare-fun res!63681 () Bool)

(assert (=> b!132217 (=> (not res!63681) (not e!86216))))

(declare-fun e!86217 () Bool)

(assert (=> b!132217 (= res!63681 (not e!86217))))

(declare-fun res!63682 () Bool)

(assert (=> b!132217 (=> (not res!63682) (not e!86217))))

(assert (=> b!132217 (= res!63682 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!132218 () Bool)

(assert (=> b!132218 (= e!86217 (contains!894 (ite c!24333 (Cons!1729 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) Nil!1730) Nil!1730) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!40223 () Bool)

(declare-fun res!63680 () Bool)

(assert (=> d!40223 (=> res!63680 e!86215)))

(assert (=> d!40223 (= res!63680 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(assert (=> d!40223 (= (arrayNoDuplicates!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!24333 (Cons!1729 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) #b00000000000000000000000000000000) Nil!1730) Nil!1730)) e!86215)))

(declare-fun b!132215 () Bool)

(assert (=> b!132215 (= e!86218 call!14521)))

(assert (= (and d!40223 (not res!63680)) b!132217))

(assert (= (and b!132217 res!63682) b!132218))

(assert (= (and b!132217 res!63681) b!132216))

(assert (= (and b!132216 c!24447) b!132214))

(assert (= (and b!132216 (not c!24447)) b!132215))

(assert (= (or b!132214 b!132215) bm!14518))

(declare-fun m!155969 () Bool)

(assert (=> bm!14518 m!155969))

(declare-fun m!155971 () Bool)

(assert (=> bm!14518 m!155971))

(assert (=> b!132216 m!155969))

(assert (=> b!132216 m!155969))

(declare-fun m!155973 () Bool)

(assert (=> b!132216 m!155973))

(assert (=> b!132217 m!155969))

(assert (=> b!132217 m!155969))

(assert (=> b!132217 m!155973))

(assert (=> b!132218 m!155969))

(assert (=> b!132218 m!155969))

(declare-fun m!155975 () Bool)

(assert (=> b!132218 m!155975))

(assert (=> bm!14401 d!40223))

(declare-fun d!40225 () Bool)

(declare-fun e!86220 () Bool)

(assert (=> d!40225 e!86220))

(declare-fun res!63683 () Bool)

(assert (=> d!40225 (=> res!63683 e!86220)))

(declare-fun lt!68977 () Bool)

(assert (=> d!40225 (= res!63683 (not lt!68977))))

(declare-fun lt!68976 () Bool)

(assert (=> d!40225 (= lt!68977 lt!68976)))

(declare-fun lt!68975 () Unit!4131)

(declare-fun e!86219 () Unit!4131)

(assert (=> d!40225 (= lt!68975 e!86219)))

(declare-fun c!24448 () Bool)

(assert (=> d!40225 (= c!24448 lt!68976)))

(assert (=> d!40225 (= lt!68976 (containsKey!174 (toList!867 lt!68723) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!40225 (= (contains!892 lt!68723 #b0000000000000000000000000000000000000000000000000000000000000000) lt!68977)))

(declare-fun b!132219 () Bool)

(declare-fun lt!68978 () Unit!4131)

(assert (=> b!132219 (= e!86219 lt!68978)))

(assert (=> b!132219 (= lt!68978 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!867 lt!68723) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!132219 (isDefined!124 (getValueByKey!170 (toList!867 lt!68723) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!132220 () Bool)

(declare-fun Unit!4141 () Unit!4131)

(assert (=> b!132220 (= e!86219 Unit!4141)))

(declare-fun b!132221 () Bool)

(assert (=> b!132221 (= e!86220 (isDefined!124 (getValueByKey!170 (toList!867 lt!68723) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!40225 c!24448) b!132219))

(assert (= (and d!40225 (not c!24448)) b!132220))

(assert (= (and d!40225 (not res!63683)) b!132221))

(declare-fun m!155977 () Bool)

(assert (=> d!40225 m!155977))

(declare-fun m!155979 () Bool)

(assert (=> b!132219 m!155979))

(declare-fun m!155981 () Bool)

(assert (=> b!132219 m!155981))

(assert (=> b!132219 m!155981))

(declare-fun m!155983 () Bool)

(assert (=> b!132219 m!155983))

(assert (=> b!132221 m!155981))

(assert (=> b!132221 m!155981))

(assert (=> b!132221 m!155983))

(assert (=> bm!14425 d!40225))

(declare-fun b!132223 () Bool)

(declare-fun e!86222 () Bool)

(declare-fun call!14522 () Bool)

(assert (=> b!132223 (= e!86222 call!14522)))

(declare-fun bm!14519 () Bool)

(assert (=> bm!14519 (= call!14522 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))))))

(declare-fun b!132224 () Bool)

(declare-fun e!86223 () Bool)

(assert (=> b!132224 (= e!86223 call!14522)))

(declare-fun b!132225 () Bool)

(assert (=> b!132225 (= e!86223 e!86222)))

(declare-fun lt!68981 () (_ BitVec 64))

(assert (=> b!132225 (= lt!68981 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!68979 () Unit!4131)

(assert (=> b!132225 (= lt!68979 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) lt!68981 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!132225 (arrayContainsKey!0 (_keys!4601 (v!3186 (underlying!452 thiss!992))) lt!68981 #b00000000000000000000000000000000)))

(declare-fun lt!68980 () Unit!4131)

(assert (=> b!132225 (= lt!68980 lt!68979)))

(declare-fun res!63685 () Bool)

(assert (=> b!132225 (= res!63685 (= (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))) (Found!284 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!132225 (=> (not res!63685) (not e!86222))))

(declare-fun b!132222 () Bool)

(declare-fun e!86221 () Bool)

(assert (=> b!132222 (= e!86221 e!86223)))

(declare-fun c!24449 () Bool)

(assert (=> b!132222 (= c!24449 (validKeyInArray!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!40227 () Bool)

(declare-fun res!63684 () Bool)

(assert (=> d!40227 (=> res!63684 e!86221)))

(assert (=> d!40227 (= res!63684 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2522 (_keys!4601 (v!3186 (underlying!452 thiss!992))))))))

(assert (=> d!40227 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4601 (v!3186 (underlying!452 thiss!992))) (mask!7148 (v!3186 (underlying!452 thiss!992)))) e!86221)))

(assert (= (and d!40227 (not res!63684)) b!132222))

(assert (= (and b!132222 c!24449) b!132225))

(assert (= (and b!132222 (not c!24449)) b!132224))

(assert (= (and b!132225 res!63685) b!132223))

(assert (= (or b!132223 b!132224) bm!14519))

(declare-fun m!155985 () Bool)

(assert (=> bm!14519 m!155985))

(assert (=> b!132225 m!155969))

(declare-fun m!155987 () Bool)

(assert (=> b!132225 m!155987))

(declare-fun m!155989 () Bool)

(assert (=> b!132225 m!155989))

(assert (=> b!132225 m!155969))

(declare-fun m!155991 () Bool)

(assert (=> b!132225 m!155991))

(assert (=> b!132222 m!155969))

(assert (=> b!132222 m!155969))

(assert (=> b!132222 m!155973))

(assert (=> bm!14404 d!40227))

(declare-fun d!40229 () Bool)

(declare-fun isEmpty!413 (Option!176) Bool)

(assert (=> d!40229 (= (isDefined!124 (getValueByKey!170 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))) (not (isEmpty!413 (getValueByKey!170 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))))

(declare-fun bs!5480 () Bool)

(assert (= bs!5480 d!40229))

(assert (=> bs!5480 m!155585))

(declare-fun m!155993 () Bool)

(assert (=> bs!5480 m!155993))

(assert (=> b!131877 d!40229))

(declare-fun b!132237 () Bool)

(declare-fun e!86229 () Option!176)

(assert (=> b!132237 (= e!86229 None!174)))

(declare-fun b!132234 () Bool)

(declare-fun e!86228 () Option!176)

(assert (=> b!132234 (= e!86228 (Some!175 (_2!1310 (h!2333 (toList!867 lt!68659)))))))

(declare-fun d!40231 () Bool)

(declare-fun c!24454 () Bool)

(assert (=> d!40231 (= c!24454 (and ((_ is Cons!1728) (toList!867 lt!68659)) (= (_1!1310 (h!2333 (toList!867 lt!68659))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))))))

(assert (=> d!40231 (= (getValueByKey!170 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) e!86228)))

(declare-fun b!132235 () Bool)

(assert (=> b!132235 (= e!86228 e!86229)))

(declare-fun c!24455 () Bool)

(assert (=> b!132235 (= c!24455 (and ((_ is Cons!1728) (toList!867 lt!68659)) (not (= (_1!1310 (h!2333 (toList!867 lt!68659))) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))))

(declare-fun b!132236 () Bool)

(assert (=> b!132236 (= e!86229 (getValueByKey!170 (t!6179 (toList!867 lt!68659)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (= (and d!40231 c!24454) b!132234))

(assert (= (and d!40231 (not c!24454)) b!132235))

(assert (= (and b!132235 c!24455) b!132236))

(assert (= (and b!132235 (not c!24455)) b!132237))

(assert (=> b!132236 m!155441))

(declare-fun m!155995 () Bool)

(assert (=> b!132236 m!155995))

(assert (=> b!131877 d!40231))

(declare-fun d!40233 () Bool)

(declare-fun e!86231 () Bool)

(assert (=> d!40233 e!86231))

(declare-fun res!63686 () Bool)

(assert (=> d!40233 (=> res!63686 e!86231)))

(declare-fun lt!68984 () Bool)

(assert (=> d!40233 (= res!63686 (not lt!68984))))

(declare-fun lt!68983 () Bool)

(assert (=> d!40233 (= lt!68984 lt!68983)))

(declare-fun lt!68982 () Unit!4131)

(declare-fun e!86230 () Unit!4131)

(assert (=> d!40233 (= lt!68982 e!86230)))

(declare-fun c!24456 () Bool)

(assert (=> d!40233 (= c!24456 lt!68983)))

(assert (=> d!40233 (= lt!68983 (containsKey!174 (toList!867 lt!68723) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> d!40233 (= (contains!892 lt!68723 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) lt!68984)))

(declare-fun b!132238 () Bool)

(declare-fun lt!68985 () Unit!4131)

(assert (=> b!132238 (= e!86230 lt!68985)))

(assert (=> b!132238 (= lt!68985 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!867 lt!68723) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!132238 (isDefined!124 (getValueByKey!170 (toList!867 lt!68723) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!132239 () Bool)

(declare-fun Unit!4142 () Unit!4131)

(assert (=> b!132239 (= e!86230 Unit!4142)))

(declare-fun b!132240 () Bool)

(assert (=> b!132240 (= e!86231 (isDefined!124 (getValueByKey!170 (toList!867 lt!68723) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))))

(assert (= (and d!40233 c!24456) b!132238))

(assert (= (and d!40233 (not c!24456)) b!132239))

(assert (= (and d!40233 (not res!63686)) b!132240))

(assert (=> d!40233 m!155529))

(declare-fun m!155997 () Bool)

(assert (=> d!40233 m!155997))

(assert (=> b!132238 m!155529))

(declare-fun m!155999 () Bool)

(assert (=> b!132238 m!155999))

(assert (=> b!132238 m!155529))

(assert (=> b!132238 m!155769))

(assert (=> b!132238 m!155769))

(declare-fun m!156001 () Bool)

(assert (=> b!132238 m!156001))

(assert (=> b!132240 m!155529))

(assert (=> b!132240 m!155769))

(assert (=> b!132240 m!155769))

(assert (=> b!132240 m!156001))

(assert (=> b!131868 d!40233))

(declare-fun b!132252 () Bool)

(declare-fun e!86234 () Bool)

(assert (=> b!132252 (= e!86234 (and (bvsge (extraKeys!2621 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!2621 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!595 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun d!40235 () Bool)

(declare-fun res!63698 () Bool)

(assert (=> d!40235 (=> (not res!63698) (not e!86234))))

(assert (=> d!40235 (= res!63698 (validMask!0 (mask!7148 newMap!16)))))

(assert (=> d!40235 (= (simpleValid!90 newMap!16) e!86234)))

(declare-fun b!132249 () Bool)

(declare-fun res!63696 () Bool)

(assert (=> b!132249 (=> (not res!63696) (not e!86234))))

(assert (=> b!132249 (= res!63696 (and (= (size!2523 (_values!2837 newMap!16)) (bvadd (mask!7148 newMap!16) #b00000000000000000000000000000001)) (= (size!2522 (_keys!4601 newMap!16)) (size!2523 (_values!2837 newMap!16))) (bvsge (_size!595 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!595 newMap!16) (bvadd (mask!7148 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!132250 () Bool)

(declare-fun res!63697 () Bool)

(assert (=> b!132250 (=> (not res!63697) (not e!86234))))

(declare-fun size!2526 (LongMapFixedSize!1092) (_ BitVec 32))

(assert (=> b!132250 (= res!63697 (bvsge (size!2526 newMap!16) (_size!595 newMap!16)))))

(declare-fun b!132251 () Bool)

(declare-fun res!63695 () Bool)

(assert (=> b!132251 (=> (not res!63695) (not e!86234))))

(assert (=> b!132251 (= res!63695 (= (size!2526 newMap!16) (bvadd (_size!595 newMap!16) (bvsdiv (bvadd (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!40235 res!63698) b!132249))

(assert (= (and b!132249 res!63696) b!132250))

(assert (= (and b!132250 res!63697) b!132251))

(assert (= (and b!132251 res!63695) b!132252))

(assert (=> d!40235 m!155667))

(declare-fun m!156003 () Bool)

(assert (=> b!132250 m!156003))

(assert (=> b!132251 m!156003))

(assert (=> d!40133 d!40235))

(declare-fun d!40237 () Bool)

(declare-fun e!86240 () Bool)

(assert (=> d!40237 e!86240))

(declare-fun res!63702 () Bool)

(assert (=> d!40237 (=> (not res!63702) (not e!86240))))

(assert (=> d!40237 (= res!63702 (or (bvsge #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))))

(declare-fun lt!68987 () ListLongMap!1703)

(declare-fun lt!69001 () ListLongMap!1703)

(assert (=> d!40237 (= lt!68987 lt!69001)))

(declare-fun lt!68999 () Unit!4131)

(declare-fun e!86238 () Unit!4131)

(assert (=> d!40237 (= lt!68999 e!86238)))

(declare-fun c!24461 () Bool)

(declare-fun e!86245 () Bool)

(assert (=> d!40237 (= c!24461 e!86245)))

(declare-fun res!63706 () Bool)

(assert (=> d!40237 (=> (not res!63706) (not e!86245))))

(assert (=> d!40237 (= res!63706 (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(declare-fun e!86247 () ListLongMap!1703)

(assert (=> d!40237 (= lt!69001 e!86247)))

(declare-fun c!24462 () Bool)

(assert (=> d!40237 (= c!24462 (and (not (= (bvand (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!40237 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40237 (= (getCurrentListMap!538 (_keys!4601 newMap!16) (ite c!24394 (_values!2837 newMap!16) lt!68831) (mask!7148 newMap!16) (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)) (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) lt!68987)))

(declare-fun b!132253 () Bool)

(declare-fun e!86242 () ListLongMap!1703)

(assert (=> b!132253 (= e!86247 e!86242)))

(declare-fun c!24459 () Bool)

(assert (=> b!132253 (= c!24459 (and (not (= (bvand (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!132254 () Bool)

(declare-fun call!14525 () ListLongMap!1703)

(assert (=> b!132254 (= e!86242 call!14525)))

(declare-fun e!86236 () Bool)

(declare-fun b!132255 () Bool)

(assert (=> b!132255 (= e!86236 (= (apply!115 lt!68987 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16))))))

(declare-fun b!132256 () Bool)

(declare-fun e!86235 () Bool)

(assert (=> b!132256 (= e!86235 e!86236)))

(declare-fun res!63700 () Bool)

(declare-fun call!14527 () Bool)

(assert (=> b!132256 (= res!63700 call!14527)))

(assert (=> b!132256 (=> (not res!63700) (not e!86236))))

(declare-fun bm!14520 () Bool)

(declare-fun call!14529 () ListLongMap!1703)

(declare-fun call!14523 () ListLongMap!1703)

(assert (=> bm!14520 (= call!14529 call!14523)))

(declare-fun call!14524 () ListLongMap!1703)

(declare-fun b!132257 () Bool)

(assert (=> b!132257 (= e!86247 (+!169 call!14524 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)))))))

(declare-fun bm!14521 () Bool)

(declare-fun call!14526 () Bool)

(assert (=> bm!14521 (= call!14526 (contains!892 lt!68987 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!86244 () Bool)

(declare-fun b!132258 () Bool)

(assert (=> b!132258 (= e!86244 (= (apply!115 lt!68987 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16))))))

(declare-fun bm!14522 () Bool)

(declare-fun call!14528 () ListLongMap!1703)

(assert (=> bm!14522 (= call!14523 call!14528)))

(declare-fun b!132259 () Bool)

(assert (=> b!132259 (= e!86245 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!132260 () Bool)

(declare-fun e!86237 () Bool)

(assert (=> b!132260 (= e!86237 (not call!14526))))

(declare-fun b!132261 () Bool)

(declare-fun e!86243 () ListLongMap!1703)

(assert (=> b!132261 (= e!86243 call!14529)))

(declare-fun b!132262 () Bool)

(declare-fun res!63699 () Bool)

(assert (=> b!132262 (=> (not res!63699) (not e!86240))))

(assert (=> b!132262 (= res!63699 e!86235)))

(declare-fun c!24457 () Bool)

(assert (=> b!132262 (= c!24457 (not (= (bvand (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!132263 () Bool)

(declare-fun lt!68996 () Unit!4131)

(assert (=> b!132263 (= e!86238 lt!68996)))

(declare-fun lt!68988 () ListLongMap!1703)

(assert (=> b!132263 (= lt!68988 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite c!24394 (_values!2837 newMap!16) lt!68831) (mask!7148 newMap!16) (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)) (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!69002 () (_ BitVec 64))

(assert (=> b!132263 (= lt!69002 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!69000 () (_ BitVec 64))

(assert (=> b!132263 (= lt!69000 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!69003 () Unit!4131)

(assert (=> b!132263 (= lt!69003 (addStillContains!91 lt!68988 lt!69002 (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)) lt!69000))))

(assert (=> b!132263 (contains!892 (+!169 lt!68988 (tuple2!2601 lt!69002 (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)))) lt!69000)))

(declare-fun lt!69006 () Unit!4131)

(assert (=> b!132263 (= lt!69006 lt!69003)))

(declare-fun lt!68989 () ListLongMap!1703)

(assert (=> b!132263 (= lt!68989 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite c!24394 (_values!2837 newMap!16) lt!68831) (mask!7148 newMap!16) (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)) (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!68992 () (_ BitVec 64))

(assert (=> b!132263 (= lt!68992 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68991 () (_ BitVec 64))

(assert (=> b!132263 (= lt!68991 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!68995 () Unit!4131)

(assert (=> b!132263 (= lt!68995 (addApplyDifferent!91 lt!68989 lt!68992 (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)) lt!68991))))

(assert (=> b!132263 (= (apply!115 (+!169 lt!68989 (tuple2!2601 lt!68992 (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)))) lt!68991) (apply!115 lt!68989 lt!68991))))

(declare-fun lt!68994 () Unit!4131)

(assert (=> b!132263 (= lt!68994 lt!68995)))

(declare-fun lt!68990 () ListLongMap!1703)

(assert (=> b!132263 (= lt!68990 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite c!24394 (_values!2837 newMap!16) lt!68831) (mask!7148 newMap!16) (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)) (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!68997 () (_ BitVec 64))

(assert (=> b!132263 (= lt!68997 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68986 () (_ BitVec 64))

(assert (=> b!132263 (= lt!68986 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!69004 () Unit!4131)

(assert (=> b!132263 (= lt!69004 (addApplyDifferent!91 lt!68990 lt!68997 (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)) lt!68986))))

(assert (=> b!132263 (= (apply!115 (+!169 lt!68990 (tuple2!2601 lt!68997 (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)))) lt!68986) (apply!115 lt!68990 lt!68986))))

(declare-fun lt!68998 () Unit!4131)

(assert (=> b!132263 (= lt!68998 lt!69004)))

(declare-fun lt!69005 () ListLongMap!1703)

(assert (=> b!132263 (= lt!69005 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite c!24394 (_values!2837 newMap!16) lt!68831) (mask!7148 newMap!16) (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)) (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!69007 () (_ BitVec 64))

(assert (=> b!132263 (= lt!69007 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!68993 () (_ BitVec 64))

(assert (=> b!132263 (= lt!68993 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!132263 (= lt!68996 (addApplyDifferent!91 lt!69005 lt!69007 (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)) lt!68993))))

(assert (=> b!132263 (= (apply!115 (+!169 lt!69005 (tuple2!2601 lt!69007 (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)))) lt!68993) (apply!115 lt!69005 lt!68993))))

(declare-fun b!132264 () Bool)

(assert (=> b!132264 (= e!86243 call!14525)))

(declare-fun e!86239 () Bool)

(declare-fun b!132265 () Bool)

(assert (=> b!132265 (= e!86239 (= (apply!115 lt!68987 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)) (get!1481 (select (arr!2255 (ite c!24394 (_values!2837 newMap!16) lt!68831)) #b00000000000000000000000000000000) (dynLambda!423 (defaultEntry!2854 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!132265 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2523 (ite c!24394 (_values!2837 newMap!16) lt!68831))))))

(assert (=> b!132265 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(declare-fun bm!14523 () Bool)

(assert (=> bm!14523 (= call!14524 (+!169 (ite c!24462 call!14528 (ite c!24459 call!14523 call!14529)) (ite (or c!24462 c!24459) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16))))))))

(declare-fun b!132266 () Bool)

(declare-fun e!86241 () Bool)

(assert (=> b!132266 (= e!86241 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!132267 () Bool)

(assert (=> b!132267 (= e!86237 e!86244)))

(declare-fun res!63703 () Bool)

(assert (=> b!132267 (= res!63703 call!14526)))

(assert (=> b!132267 (=> (not res!63703) (not e!86244))))

(declare-fun b!132268 () Bool)

(declare-fun res!63707 () Bool)

(assert (=> b!132268 (=> (not res!63707) (not e!86240))))

(declare-fun e!86246 () Bool)

(assert (=> b!132268 (= res!63707 e!86246)))

(declare-fun res!63704 () Bool)

(assert (=> b!132268 (=> res!63704 e!86246)))

(assert (=> b!132268 (= res!63704 (not e!86241))))

(declare-fun res!63705 () Bool)

(assert (=> b!132268 (=> (not res!63705) (not e!86241))))

(assert (=> b!132268 (= res!63705 (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(declare-fun bm!14524 () Bool)

(assert (=> bm!14524 (= call!14525 call!14524)))

(declare-fun b!132269 () Bool)

(assert (=> b!132269 (= e!86240 e!86237)))

(declare-fun c!24460 () Bool)

(assert (=> b!132269 (= c!24460 (not (= (bvand (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!132270 () Bool)

(assert (=> b!132270 (= e!86235 (not call!14527))))

(declare-fun c!24458 () Bool)

(declare-fun b!132271 () Bool)

(assert (=> b!132271 (= c!24458 (and (not (= (bvand (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!132271 (= e!86242 e!86243)))

(declare-fun bm!14525 () Bool)

(assert (=> bm!14525 (= call!14528 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite c!24394 (_values!2837 newMap!16) lt!68831) (mask!7148 newMap!16) (ite c!24394 (ite c!24387 lt!68819 lt!68818) (extraKeys!2621 newMap!16)) (ite (and c!24394 c!24387) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2710 newMap!16)) (ite c!24394 (ite c!24387 (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2710 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun bm!14526 () Bool)

(assert (=> bm!14526 (= call!14527 (contains!892 lt!68987 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!132272 () Bool)

(declare-fun Unit!4143 () Unit!4131)

(assert (=> b!132272 (= e!86238 Unit!4143)))

(declare-fun b!132273 () Bool)

(assert (=> b!132273 (= e!86246 e!86239)))

(declare-fun res!63701 () Bool)

(assert (=> b!132273 (=> (not res!63701) (not e!86239))))

(assert (=> b!132273 (= res!63701 (contains!892 lt!68987 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!132273 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(assert (= (and d!40237 c!24462) b!132257))

(assert (= (and d!40237 (not c!24462)) b!132253))

(assert (= (and b!132253 c!24459) b!132254))

(assert (= (and b!132253 (not c!24459)) b!132271))

(assert (= (and b!132271 c!24458) b!132264))

(assert (= (and b!132271 (not c!24458)) b!132261))

(assert (= (or b!132264 b!132261) bm!14520))

(assert (= (or b!132254 bm!14520) bm!14522))

(assert (= (or b!132254 b!132264) bm!14524))

(assert (= (or b!132257 bm!14522) bm!14525))

(assert (= (or b!132257 bm!14524) bm!14523))

(assert (= (and d!40237 res!63706) b!132259))

(assert (= (and d!40237 c!24461) b!132263))

(assert (= (and d!40237 (not c!24461)) b!132272))

(assert (= (and d!40237 res!63702) b!132268))

(assert (= (and b!132268 res!63705) b!132266))

(assert (= (and b!132268 (not res!63704)) b!132273))

(assert (= (and b!132273 res!63701) b!132265))

(assert (= (and b!132268 res!63707) b!132262))

(assert (= (and b!132262 c!24457) b!132256))

(assert (= (and b!132262 (not c!24457)) b!132270))

(assert (= (and b!132256 res!63700) b!132255))

(assert (= (or b!132256 b!132270) bm!14526))

(assert (= (and b!132262 res!63699) b!132269))

(assert (= (and b!132269 c!24460) b!132267))

(assert (= (and b!132269 (not c!24460)) b!132260))

(assert (= (and b!132267 res!63703) b!132258))

(assert (= (or b!132267 b!132260) bm!14521))

(declare-fun b_lambda!5911 () Bool)

(assert (=> (not b_lambda!5911) (not b!132265)))

(assert (=> b!132265 t!6187))

(declare-fun b_and!8209 () Bool)

(assert (= b_and!8205 (and (=> t!6187 result!3985) b_and!8209)))

(assert (=> b!132265 t!6189))

(declare-fun b_and!8211 () Bool)

(assert (= b_and!8207 (and (=> t!6189 result!3987) b_and!8211)))

(declare-fun m!156005 () Bool)

(assert (=> b!132258 m!156005))

(assert (=> d!40237 m!155667))

(declare-fun m!156007 () Bool)

(assert (=> bm!14526 m!156007))

(assert (=> b!132265 m!155671))

(declare-fun m!156009 () Bool)

(assert (=> b!132265 m!156009))

(assert (=> b!132265 m!155671))

(declare-fun m!156011 () Bool)

(assert (=> b!132265 m!156011))

(assert (=> b!132265 m!156011))

(assert (=> b!132265 m!155677))

(declare-fun m!156013 () Bool)

(assert (=> b!132265 m!156013))

(assert (=> b!132265 m!155677))

(assert (=> b!132259 m!155671))

(assert (=> b!132259 m!155671))

(assert (=> b!132259 m!155681))

(assert (=> b!132273 m!155671))

(assert (=> b!132273 m!155671))

(declare-fun m!156015 () Bool)

(assert (=> b!132273 m!156015))

(declare-fun m!156017 () Bool)

(assert (=> b!132263 m!156017))

(declare-fun m!156019 () Bool)

(assert (=> b!132263 m!156019))

(declare-fun m!156021 () Bool)

(assert (=> b!132263 m!156021))

(declare-fun m!156023 () Bool)

(assert (=> b!132263 m!156023))

(declare-fun m!156025 () Bool)

(assert (=> b!132263 m!156025))

(declare-fun m!156027 () Bool)

(assert (=> b!132263 m!156027))

(assert (=> b!132263 m!155671))

(declare-fun m!156029 () Bool)

(assert (=> b!132263 m!156029))

(declare-fun m!156031 () Bool)

(assert (=> b!132263 m!156031))

(declare-fun m!156033 () Bool)

(assert (=> b!132263 m!156033))

(declare-fun m!156035 () Bool)

(assert (=> b!132263 m!156035))

(assert (=> b!132263 m!156029))

(declare-fun m!156037 () Bool)

(assert (=> b!132263 m!156037))

(assert (=> b!132263 m!156025))

(assert (=> b!132263 m!156019))

(declare-fun m!156039 () Bool)

(assert (=> b!132263 m!156039))

(assert (=> b!132263 m!156035))

(declare-fun m!156041 () Bool)

(assert (=> b!132263 m!156041))

(declare-fun m!156043 () Bool)

(assert (=> b!132263 m!156043))

(declare-fun m!156045 () Bool)

(assert (=> b!132263 m!156045))

(declare-fun m!156047 () Bool)

(assert (=> b!132263 m!156047))

(declare-fun m!156049 () Bool)

(assert (=> b!132257 m!156049))

(declare-fun m!156051 () Bool)

(assert (=> b!132255 m!156051))

(assert (=> bm!14525 m!156023))

(declare-fun m!156053 () Bool)

(assert (=> bm!14521 m!156053))

(assert (=> b!132266 m!155671))

(assert (=> b!132266 m!155671))

(assert (=> b!132266 m!155681))

(declare-fun m!156055 () Bool)

(assert (=> bm!14523 m!156055))

(assert (=> bm!14476 d!40237))

(assert (=> b!131802 d!40141))

(declare-fun d!40239 () Bool)

(assert (=> d!40239 (isDefined!124 (getValueByKey!170 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun lt!69010 () Unit!4131)

(declare-fun choose!823 (List!1732 (_ BitVec 64)) Unit!4131)

(assert (=> d!40239 (= lt!69010 (choose!823 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun e!86250 () Bool)

(assert (=> d!40239 e!86250))

(declare-fun res!63710 () Bool)

(assert (=> d!40239 (=> (not res!63710) (not e!86250))))

(declare-fun isStrictlySorted!316 (List!1732) Bool)

(assert (=> d!40239 (= res!63710 (isStrictlySorted!316 (toList!867 lt!68659)))))

(assert (=> d!40239 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) lt!69010)))

(declare-fun b!132276 () Bool)

(assert (=> b!132276 (= e!86250 (containsKey!174 (toList!867 lt!68659) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (= (and d!40239 res!63710) b!132276))

(assert (=> d!40239 m!155441))

(assert (=> d!40239 m!155585))

(assert (=> d!40239 m!155585))

(assert (=> d!40239 m!155587))

(assert (=> d!40239 m!155441))

(declare-fun m!156057 () Bool)

(assert (=> d!40239 m!156057))

(declare-fun m!156059 () Bool)

(assert (=> d!40239 m!156059))

(assert (=> b!132276 m!155441))

(assert (=> b!132276 m!155581))

(assert (=> b!131875 d!40239))

(assert (=> b!131875 d!40229))

(assert (=> b!131875 d!40231))

(declare-fun d!40241 () Bool)

(assert (=> d!40241 (= (apply!115 lt!68723 #b0000000000000000000000000000000000000000000000000000000000000000) (get!1485 (getValueByKey!170 (toList!867 lt!68723) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!5481 () Bool)

(assert (= bs!5481 d!40241))

(assert (=> bs!5481 m!155981))

(assert (=> bs!5481 m!155981))

(declare-fun m!156061 () Bool)

(assert (=> bs!5481 m!156061))

(assert (=> b!131850 d!40241))

(declare-fun b!132278 () Bool)

(declare-fun e!86252 () Bool)

(declare-fun call!14530 () Bool)

(assert (=> b!132278 (= e!86252 call!14530)))

(declare-fun bm!14527 () Bool)

(assert (=> bm!14527 (= call!14530 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4601 newMap!16) (mask!7148 newMap!16)))))

(declare-fun b!132279 () Bool)

(declare-fun e!86253 () Bool)

(assert (=> b!132279 (= e!86253 call!14530)))

(declare-fun b!132280 () Bool)

(assert (=> b!132280 (= e!86253 e!86252)))

(declare-fun lt!69013 () (_ BitVec 64))

(assert (=> b!132280 (= lt!69013 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!69011 () Unit!4131)

(assert (=> b!132280 (= lt!69011 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4601 newMap!16) lt!69013 #b00000000000000000000000000000000))))

(assert (=> b!132280 (arrayContainsKey!0 (_keys!4601 newMap!16) lt!69013 #b00000000000000000000000000000000)))

(declare-fun lt!69012 () Unit!4131)

(assert (=> b!132280 (= lt!69012 lt!69011)))

(declare-fun res!63712 () Bool)

(assert (=> b!132280 (= res!63712 (= (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000) (_keys!4601 newMap!16) (mask!7148 newMap!16)) (Found!284 #b00000000000000000000000000000000)))))

(assert (=> b!132280 (=> (not res!63712) (not e!86252))))

(declare-fun b!132277 () Bool)

(declare-fun e!86251 () Bool)

(assert (=> b!132277 (= e!86251 e!86253)))

(declare-fun c!24463 () Bool)

(assert (=> b!132277 (= c!24463 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!40243 () Bool)

(declare-fun res!63711 () Bool)

(assert (=> d!40243 (=> res!63711 e!86251)))

(assert (=> d!40243 (= res!63711 (bvsge #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(assert (=> d!40243 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4601 newMap!16) (mask!7148 newMap!16)) e!86251)))

(assert (= (and d!40243 (not res!63711)) b!132277))

(assert (= (and b!132277 c!24463) b!132280))

(assert (= (and b!132277 (not c!24463)) b!132279))

(assert (= (and b!132280 res!63712) b!132278))

(assert (= (or b!132278 b!132279) bm!14527))

(declare-fun m!156063 () Bool)

(assert (=> bm!14527 m!156063))

(assert (=> b!132280 m!155671))

(declare-fun m!156065 () Bool)

(assert (=> b!132280 m!156065))

(declare-fun m!156067 () Bool)

(assert (=> b!132280 m!156067))

(assert (=> b!132280 m!155671))

(declare-fun m!156069 () Bool)

(assert (=> b!132280 m!156069))

(assert (=> b!132277 m!155671))

(assert (=> b!132277 m!155671))

(assert (=> b!132277 m!155681))

(assert (=> b!132017 d!40243))

(declare-fun d!40245 () Bool)

(declare-fun e!86255 () Bool)

(assert (=> d!40245 e!86255))

(declare-fun res!63713 () Bool)

(assert (=> d!40245 (=> res!63713 e!86255)))

(declare-fun lt!69016 () Bool)

(assert (=> d!40245 (= res!63713 (not lt!69016))))

(declare-fun lt!69015 () Bool)

(assert (=> d!40245 (= lt!69016 lt!69015)))

(declare-fun lt!69014 () Unit!4131)

(declare-fun e!86254 () Unit!4131)

(assert (=> d!40245 (= lt!69014 e!86254)))

(declare-fun c!24464 () Bool)

(assert (=> d!40245 (= c!24464 lt!69015)))

(assert (=> d!40245 (= lt!69015 (containsKey!174 (toList!867 call!14489) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> d!40245 (= (contains!892 call!14489 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) lt!69016)))

(declare-fun b!132281 () Bool)

(declare-fun lt!69017 () Unit!4131)

(assert (=> b!132281 (= e!86254 lt!69017)))

(assert (=> b!132281 (= lt!69017 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!867 call!14489) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> b!132281 (isDefined!124 (getValueByKey!170 (toList!867 call!14489) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun b!132282 () Bool)

(declare-fun Unit!4144 () Unit!4131)

(assert (=> b!132282 (= e!86254 Unit!4144)))

(declare-fun b!132283 () Bool)

(assert (=> b!132283 (= e!86255 (isDefined!124 (getValueByKey!170 (toList!867 call!14489) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))))))

(assert (= (and d!40245 c!24464) b!132281))

(assert (= (and d!40245 (not c!24464)) b!132282))

(assert (= (and d!40245 (not res!63713)) b!132283))

(assert (=> d!40245 m!155441))

(declare-fun m!156071 () Bool)

(assert (=> d!40245 m!156071))

(assert (=> b!132281 m!155441))

(declare-fun m!156073 () Bool)

(assert (=> b!132281 m!156073))

(assert (=> b!132281 m!155441))

(declare-fun m!156075 () Bool)

(assert (=> b!132281 m!156075))

(assert (=> b!132281 m!156075))

(declare-fun m!156077 () Bool)

(assert (=> b!132281 m!156077))

(assert (=> b!132283 m!155441))

(assert (=> b!132283 m!156075))

(assert (=> b!132283 m!156075))

(assert (=> b!132283 m!156077))

(assert (=> b!131992 d!40245))

(declare-fun b!132318 () Bool)

(declare-fun e!86276 () Bool)

(declare-fun call!14539 () Bool)

(assert (=> b!132318 (= e!86276 (not call!14539))))

(declare-fun b!132319 () Bool)

(declare-fun e!86275 () Bool)

(declare-fun e!86277 () Bool)

(assert (=> b!132319 (= e!86275 e!86277)))

(declare-fun res!63736 () Bool)

(declare-fun call!14542 () Bool)

(assert (=> b!132319 (= res!63736 call!14542)))

(assert (=> b!132319 (=> (not res!63736) (not e!86277))))

(declare-fun b!132320 () Bool)

(declare-fun res!63737 () Bool)

(declare-fun call!14541 () Bool)

(assert (=> b!132320 (= res!63737 call!14541)))

(declare-fun e!86279 () Bool)

(assert (=> b!132320 (=> (not res!63737) (not e!86279))))

(declare-fun lt!69104 () tuple2!2602)

(declare-fun e!86278 () Bool)

(declare-fun b!132321 () Bool)

(assert (=> b!132321 (= e!86278 (= (map!1401 (_2!1311 lt!69104)) (+!169 (map!1401 newMap!16) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!132322 () Bool)

(declare-fun e!86272 () Unit!4131)

(declare-fun Unit!4145 () Unit!4131)

(assert (=> b!132322 (= e!86272 Unit!4145)))

(declare-fun lt!69083 () Unit!4131)

(declare-fun lemmaArrayContainsKeyThenInListMap!41 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 64) (_ BitVec 32) Int) Unit!4131)

(assert (=> b!132322 (= lt!69083 (lemmaArrayContainsKeyThenInListMap!41 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(assert (=> b!132322 (contains!892 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355))))

(declare-fun lt!69097 () Unit!4131)

(assert (=> b!132322 (= lt!69097 lt!69083)))

(assert (=> b!132322 false))

(declare-fun bm!14536 () Bool)

(assert (=> bm!14536 (= call!14539 (arrayContainsKey!0 (_keys!4601 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun c!24474 () Bool)

(declare-fun bm!14537 () Bool)

(declare-fun c!24473 () Bool)

(declare-fun lt!69079 () SeekEntryResult!284)

(declare-fun lt!69100 () SeekEntryResult!284)

(assert (=> bm!14537 (= call!14541 (inRange!0 (ite c!24474 (index!3296 lt!69079) (ite c!24473 (index!3295 lt!69100) (index!3298 lt!69100))) (mask!7148 newMap!16)))))

(declare-fun b!132323 () Bool)

(declare-fun e!86274 () Unit!4131)

(declare-fun Unit!4146 () Unit!4131)

(assert (=> b!132323 (= e!86274 Unit!4146)))

(declare-fun lt!69102 () Unit!4131)

(assert (=> b!132323 (= lt!69102 (lemmaInListMapThenSeekEntryOrOpenFindsIt!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (defaultEntry!2854 newMap!16)))))

(declare-fun call!14540 () SeekEntryResult!284)

(assert (=> b!132323 (= lt!69079 call!14540)))

(declare-fun res!63738 () Bool)

(assert (=> b!132323 (= res!63738 ((_ is Found!284) lt!69079))))

(assert (=> b!132323 (=> (not res!63738) (not e!86279))))

(assert (=> b!132323 e!86279))

(declare-fun lt!69086 () Unit!4131)

(assert (=> b!132323 (= lt!69086 lt!69102)))

(assert (=> b!132323 false))

(declare-fun b!132324 () Bool)

(assert (=> b!132324 (= e!86277 (not call!14539))))

(declare-fun b!132325 () Bool)

(declare-fun res!63733 () Bool)

(assert (=> b!132325 (= res!63733 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3298 lt!69100)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!132325 (=> (not res!63733) (not e!86277))))

(declare-fun b!132327 () Bool)

(declare-fun res!63734 () Bool)

(assert (=> b!132327 (=> (not res!63734) (not e!86278))))

(assert (=> b!132327 (= res!63734 (valid!517 (_2!1311 lt!69104)))))

(declare-fun bm!14538 () Bool)

(assert (=> bm!14538 (= call!14540 (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (_keys!4601 newMap!16) (mask!7148 newMap!16)))))

(declare-fun b!132328 () Bool)

(declare-fun Unit!4147 () Unit!4131)

(assert (=> b!132328 (= e!86272 Unit!4147)))

(declare-fun b!132329 () Bool)

(declare-fun res!63739 () Bool)

(assert (=> b!132329 (=> (not res!63739) (not e!86276))))

(assert (=> b!132329 (= res!63739 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3295 lt!69100)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!132330 () Bool)

(declare-fun c!24476 () Bool)

(assert (=> b!132330 (= c!24476 ((_ is MissingVacant!284) lt!69100))))

(declare-fun e!86273 () Bool)

(assert (=> b!132330 (= e!86273 e!86275)))

(declare-fun b!132331 () Bool)

(assert (=> b!132331 (= e!86279 (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!69079)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun b!132332 () Bool)

(declare-fun res!63735 () Bool)

(assert (=> b!132332 (=> (not res!63735) (not e!86278))))

(assert (=> b!132332 (= res!63735 (contains!892 (map!1401 (_2!1311 lt!69104)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun bm!14539 () Bool)

(assert (=> bm!14539 (= call!14542 call!14541)))

(declare-fun b!132333 () Bool)

(declare-fun res!63740 () Bool)

(assert (=> b!132333 (=> (not res!63740) (not e!86276))))

(assert (=> b!132333 (= res!63740 call!14542)))

(assert (=> b!132333 (= e!86273 e!86276)))

(declare-fun b!132334 () Bool)

(assert (=> b!132334 (= e!86275 ((_ is Undefined!284) lt!69100))))

(declare-fun b!132326 () Bool)

(declare-fun lt!69093 () Unit!4131)

(assert (=> b!132326 (= e!86274 lt!69093)))

(assert (=> b!132326 (= lt!69093 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (defaultEntry!2854 newMap!16)))))

(assert (=> b!132326 (= lt!69100 call!14540)))

(assert (=> b!132326 (= c!24473 ((_ is MissingZero!284) lt!69100))))

(assert (=> b!132326 e!86273))

(declare-fun d!40247 () Bool)

(assert (=> d!40247 e!86278))

(declare-fun res!63732 () Bool)

(assert (=> d!40247 (=> (not res!63732) (not e!86278))))

(assert (=> d!40247 (= res!63732 (_1!1311 lt!69104))))

(assert (=> d!40247 (= lt!69104 (tuple2!2603 true (LongMapFixedSize!1093 (defaultEntry!2854 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (bvadd (_size!595 newMap!16) #b00000000000000000000000000000001) (array!4767 (store (arr!2254 (_keys!4601 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (size!2522 (_keys!4601 newMap!16))) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16))) (_vacant!595 newMap!16))))))

(declare-fun lt!69088 () Unit!4131)

(declare-fun lt!69095 () Unit!4131)

(assert (=> d!40247 (= lt!69088 lt!69095)))

(declare-fun lt!69098 () array!4766)

(declare-fun lt!69089 () array!4768)

(assert (=> d!40247 (contains!892 (getCurrentListMap!538 lt!69098 lt!69089 (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (select (store (arr!2254 (_keys!4601 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833))))))

(assert (=> d!40247 (= lt!69095 (lemmaValidKeyInArrayIsInListMap!118 lt!69098 lt!69089 (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (defaultEntry!2854 newMap!16)))))

(assert (=> d!40247 (= lt!69089 (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16))))))

(assert (=> d!40247 (= lt!69098 (array!4767 (store (arr!2254 (_keys!4601 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (size!2522 (_keys!4601 newMap!16))))))

(declare-fun lt!69087 () Unit!4131)

(declare-fun lt!69085 () Unit!4131)

(assert (=> d!40247 (= lt!69087 lt!69085)))

(declare-fun lt!69105 () array!4766)

(assert (=> d!40247 (= (arrayCountValidKeys!0 lt!69105 (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (bvadd (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!4766 (_ BitVec 32)) Unit!4131)

(assert (=> d!40247 (= lt!69085 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!69105 (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833))))))

(assert (=> d!40247 (= lt!69105 (array!4767 (store (arr!2254 (_keys!4601 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (size!2522 (_keys!4601 newMap!16))))))

(declare-fun lt!69081 () Unit!4131)

(declare-fun lt!69084 () Unit!4131)

(assert (=> d!40247 (= lt!69081 lt!69084)))

(declare-fun lt!69107 () array!4766)

(assert (=> d!40247 (arrayContainsKey!0 lt!69107 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b00000000000000000000000000000000)))

(assert (=> d!40247 (= lt!69084 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!69107 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833))))))

(assert (=> d!40247 (= lt!69107 (array!4767 (store (arr!2254 (_keys!4601 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (size!2522 (_keys!4601 newMap!16))))))

(declare-fun lt!69090 () Unit!4131)

(declare-fun lt!69099 () Unit!4131)

(assert (=> d!40247 (= lt!69090 lt!69099)))

(assert (=> d!40247 (= (+!169 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (tuple2!2601 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!538 (array!4767 (store (arr!2254 (_keys!4601 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (size!2522 (_keys!4601 newMap!16))) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16))) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!41 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 (_ BitVec 32) (_ BitVec 64) V!3475 Int) Unit!4131)

(assert (=> d!40247 (= lt!69099 (lemmaAddValidKeyToArrayThenAddPairToListMap!41 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2854 newMap!16)))))

(declare-fun lt!69096 () Unit!4131)

(declare-fun lt!69101 () Unit!4131)

(assert (=> d!40247 (= lt!69096 lt!69101)))

(assert (=> d!40247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!4767 (store (arr!2254 (_keys!4601 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (size!2522 (_keys!4601 newMap!16))) (mask!7148 newMap!16))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!4766 (_ BitVec 32) (_ BitVec 32)) Unit!4131)

(assert (=> d!40247 (= lt!69101 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (_keys!4601 newMap!16) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (mask!7148 newMap!16)))))

(declare-fun lt!69080 () Unit!4131)

(declare-fun lt!69094 () Unit!4131)

(assert (=> d!40247 (= lt!69080 lt!69094)))

(assert (=> d!40247 (= (arrayCountValidKeys!0 (array!4767 (store (arr!2254 (_keys!4601 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (size!2522 (_keys!4601 newMap!16))) #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))) (bvadd (arrayCountValidKeys!0 (_keys!4601 newMap!16) #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!4766 (_ BitVec 32) (_ BitVec 64)) Unit!4131)

(assert (=> d!40247 (= lt!69094 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!4601 newMap!16) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun lt!69078 () Unit!4131)

(declare-fun lt!69106 () Unit!4131)

(assert (=> d!40247 (= lt!69078 lt!69106)))

(declare-fun lt!69082 () (_ BitVec 32))

(declare-fun lt!69092 () List!1733)

(assert (=> d!40247 (arrayNoDuplicates!0 (array!4767 (store (arr!2254 (_keys!4601 newMap!16)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (size!2522 (_keys!4601 newMap!16))) lt!69082 lt!69092)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!4766 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!1733) Unit!4131)

(assert (=> d!40247 (= lt!69106 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!4601 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833)) lt!69082 lt!69092))))

(assert (=> d!40247 (= lt!69092 Nil!1730)))

(assert (=> d!40247 (= lt!69082 #b00000000000000000000000000000000)))

(declare-fun lt!69103 () Unit!4131)

(assert (=> d!40247 (= lt!69103 e!86272)))

(declare-fun c!24475 () Bool)

(assert (=> d!40247 (= c!24475 (arrayContainsKey!0 (_keys!4601 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun lt!69091 () Unit!4131)

(assert (=> d!40247 (= lt!69091 e!86274)))

(assert (=> d!40247 (= c!24474 (contains!892 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> d!40247 (valid!517 newMap!16)))

(assert (=> d!40247 (= (updateHelperNewKey!60 newMap!16 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!24392 (index!3298 lt!68833) (index!3295 lt!68833))) lt!69104)))

(assert (= (and d!40247 c!24474) b!132323))

(assert (= (and d!40247 (not c!24474)) b!132326))

(assert (= (and b!132323 res!63738) b!132320))

(assert (= (and b!132320 res!63737) b!132331))

(assert (= (and b!132326 c!24473) b!132333))

(assert (= (and b!132326 (not c!24473)) b!132330))

(assert (= (and b!132333 res!63740) b!132329))

(assert (= (and b!132329 res!63739) b!132318))

(assert (= (and b!132330 c!24476) b!132319))

(assert (= (and b!132330 (not c!24476)) b!132334))

(assert (= (and b!132319 res!63736) b!132325))

(assert (= (and b!132325 res!63733) b!132324))

(assert (= (or b!132333 b!132319) bm!14539))

(assert (= (or b!132318 b!132324) bm!14536))

(assert (= (or b!132320 bm!14539) bm!14537))

(assert (= (or b!132323 b!132326) bm!14538))

(assert (= (and d!40247 c!24475) b!132322))

(assert (= (and d!40247 (not c!24475)) b!132328))

(assert (= (and d!40247 res!63732) b!132327))

(assert (= (and b!132327 res!63734) b!132332))

(assert (= (and b!132332 res!63735) b!132321))

(declare-fun m!156079 () Bool)

(assert (=> b!132321 m!156079))

(assert (=> b!132321 m!155459))

(assert (=> b!132321 m!155459))

(declare-fun m!156081 () Bool)

(assert (=> b!132321 m!156081))

(assert (=> bm!14538 m!155441))

(assert (=> bm!14538 m!155595))

(assert (=> b!132322 m!155441))

(declare-fun m!156083 () Bool)

(assert (=> b!132322 m!156083))

(assert (=> b!132322 m!155523))

(assert (=> b!132322 m!155523))

(assert (=> b!132322 m!155441))

(assert (=> b!132322 m!155617))

(declare-fun m!156085 () Bool)

(assert (=> b!132329 m!156085))

(assert (=> b!132326 m!155441))

(assert (=> b!132326 m!155607))

(declare-fun m!156087 () Bool)

(assert (=> b!132327 m!156087))

(declare-fun m!156089 () Bool)

(assert (=> b!132325 m!156089))

(assert (=> d!40247 m!155649))

(declare-fun m!156091 () Bool)

(assert (=> d!40247 m!156091))

(declare-fun m!156093 () Bool)

(assert (=> d!40247 m!156093))

(declare-fun m!156095 () Bool)

(assert (=> d!40247 m!156095))

(assert (=> d!40247 m!155457))

(assert (=> d!40247 m!155441))

(assert (=> d!40247 m!155589))

(assert (=> d!40247 m!156093))

(declare-fun m!156097 () Bool)

(assert (=> d!40247 m!156097))

(assert (=> d!40247 m!155441))

(declare-fun m!156099 () Bool)

(assert (=> d!40247 m!156099))

(assert (=> d!40247 m!155523))

(assert (=> d!40247 m!155785))

(assert (=> d!40247 m!155523))

(assert (=> d!40247 m!155441))

(assert (=> d!40247 m!155617))

(declare-fun m!156101 () Bool)

(assert (=> d!40247 m!156101))

(declare-fun m!156103 () Bool)

(assert (=> d!40247 m!156103))

(declare-fun m!156105 () Bool)

(assert (=> d!40247 m!156105))

(assert (=> d!40247 m!155441))

(assert (=> d!40247 m!155439))

(declare-fun m!156107 () Bool)

(assert (=> d!40247 m!156107))

(declare-fun m!156109 () Bool)

(assert (=> d!40247 m!156109))

(declare-fun m!156111 () Bool)

(assert (=> d!40247 m!156111))

(assert (=> d!40247 m!156091))

(declare-fun m!156113 () Bool)

(assert (=> d!40247 m!156113))

(assert (=> d!40247 m!155441))

(declare-fun m!156115 () Bool)

(assert (=> d!40247 m!156115))

(declare-fun m!156117 () Bool)

(assert (=> d!40247 m!156117))

(assert (=> d!40247 m!155523))

(assert (=> d!40247 m!155441))

(declare-fun m!156119 () Bool)

(assert (=> d!40247 m!156119))

(assert (=> d!40247 m!155441))

(declare-fun m!156121 () Bool)

(assert (=> d!40247 m!156121))

(declare-fun m!156123 () Bool)

(assert (=> d!40247 m!156123))

(assert (=> d!40247 m!155441))

(declare-fun m!156125 () Bool)

(assert (=> d!40247 m!156125))

(declare-fun m!156127 () Bool)

(assert (=> b!132331 m!156127))

(assert (=> b!132332 m!156079))

(assert (=> b!132332 m!156079))

(assert (=> b!132332 m!155441))

(declare-fun m!156129 () Bool)

(assert (=> b!132332 m!156129))

(assert (=> bm!14536 m!155441))

(assert (=> bm!14536 m!155589))

(declare-fun m!156131 () Bool)

(assert (=> bm!14537 m!156131))

(assert (=> b!132323 m!155441))

(assert (=> b!132323 m!155627))

(assert (=> bm!14479 d!40247))

(assert (=> d!40121 d!40113))

(declare-fun d!40249 () Bool)

(declare-fun res!63741 () Bool)

(declare-fun e!86280 () Bool)

(assert (=> d!40249 (=> res!63741 e!86280)))

(assert (=> d!40249 (= res!63741 (= (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> d!40249 (= (arrayContainsKey!0 (_keys!4601 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) #b00000000000000000000000000000000) e!86280)))

(declare-fun b!132335 () Bool)

(declare-fun e!86281 () Bool)

(assert (=> b!132335 (= e!86280 e!86281)))

(declare-fun res!63742 () Bool)

(assert (=> b!132335 (=> (not res!63742) (not e!86281))))

(assert (=> b!132335 (= res!63742 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2522 (_keys!4601 newMap!16))))))

(declare-fun b!132336 () Bool)

(assert (=> b!132336 (= e!86281 (arrayContainsKey!0 (_keys!4601 newMap!16) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!40249 (not res!63741)) b!132335))

(assert (= (and b!132335 res!63742) b!132336))

(assert (=> d!40249 m!155671))

(assert (=> b!132336 m!155441))

(declare-fun m!156133 () Bool)

(assert (=> b!132336 m!156133))

(assert (=> bm!14492 d!40249))

(declare-fun d!40251 () Bool)

(declare-fun res!63743 () Bool)

(declare-fun e!86282 () Bool)

(assert (=> d!40251 (=> (not res!63743) (not e!86282))))

(assert (=> d!40251 (= res!63743 (simpleValid!90 (_2!1311 lt!68828)))))

(assert (=> d!40251 (= (valid!517 (_2!1311 lt!68828)) e!86282)))

(declare-fun b!132337 () Bool)

(declare-fun res!63744 () Bool)

(assert (=> b!132337 (=> (not res!63744) (not e!86282))))

(assert (=> b!132337 (= res!63744 (= (arrayCountValidKeys!0 (_keys!4601 (_2!1311 lt!68828)) #b00000000000000000000000000000000 (size!2522 (_keys!4601 (_2!1311 lt!68828)))) (_size!595 (_2!1311 lt!68828))))))

(declare-fun b!132338 () Bool)

(declare-fun res!63745 () Bool)

(assert (=> b!132338 (=> (not res!63745) (not e!86282))))

(assert (=> b!132338 (= res!63745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4601 (_2!1311 lt!68828)) (mask!7148 (_2!1311 lt!68828))))))

(declare-fun b!132339 () Bool)

(assert (=> b!132339 (= e!86282 (arrayNoDuplicates!0 (_keys!4601 (_2!1311 lt!68828)) #b00000000000000000000000000000000 Nil!1730))))

(assert (= (and d!40251 res!63743) b!132337))

(assert (= (and b!132337 res!63744) b!132338))

(assert (= (and b!132338 res!63745) b!132339))

(declare-fun m!156135 () Bool)

(assert (=> d!40251 m!156135))

(declare-fun m!156137 () Bool)

(assert (=> b!132337 m!156137))

(declare-fun m!156139 () Bool)

(assert (=> b!132338 m!156139))

(declare-fun m!156141 () Bool)

(assert (=> b!132339 m!156141))

(assert (=> d!40129 d!40251))

(assert (=> d!40129 d!40133))

(declare-fun d!40253 () Bool)

(assert (=> d!40253 (= (get!1483 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!3185 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(assert (=> b!132008 d!40253))

(declare-fun d!40255 () Bool)

(declare-fun e!86283 () Bool)

(assert (=> d!40255 e!86283))

(declare-fun res!63746 () Bool)

(assert (=> d!40255 (=> (not res!63746) (not e!86283))))

(declare-fun lt!69108 () ListLongMap!1703)

(assert (=> d!40255 (= res!63746 (contains!892 lt!69108 (_1!1310 (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))))

(declare-fun lt!69110 () List!1732)

(assert (=> d!40255 (= lt!69108 (ListLongMap!1704 lt!69110))))

(declare-fun lt!69111 () Unit!4131)

(declare-fun lt!69109 () Unit!4131)

(assert (=> d!40255 (= lt!69111 lt!69109)))

(assert (=> d!40255 (= (getValueByKey!170 lt!69110 (_1!1310 (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))) (Some!175 (_2!1310 (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))))

(assert (=> d!40255 (= lt!69109 (lemmaContainsTupThenGetReturnValue!87 lt!69110 (_1!1310 (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) (_2!1310 (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))))

(assert (=> d!40255 (= lt!69110 (insertStrictlySorted!89 (toList!867 (ite c!24354 call!14427 (ite c!24351 call!14422 call!14428))) (_1!1310 (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) (_2!1310 (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))))))

(assert (=> d!40255 (= (+!169 (ite c!24354 call!14427 (ite c!24351 call!14422 call!14428)) (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))) lt!69108)))

(declare-fun b!132340 () Bool)

(declare-fun res!63747 () Bool)

(assert (=> b!132340 (=> (not res!63747) (not e!86283))))

(assert (=> b!132340 (= res!63747 (= (getValueByKey!170 (toList!867 lt!69108) (_1!1310 (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992))))))) (Some!175 (_2!1310 (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))))

(declare-fun b!132341 () Bool)

(assert (=> b!132341 (= e!86283 (contains!895 (toList!867 lt!69108) (ite (or c!24354 c!24351) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 (v!3186 (underlying!452 thiss!992)))) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 (v!3186 (underlying!452 thiss!992)))))))))

(assert (= (and d!40255 res!63746) b!132340))

(assert (= (and b!132340 res!63747) b!132341))

(declare-fun m!156143 () Bool)

(assert (=> d!40255 m!156143))

(declare-fun m!156145 () Bool)

(assert (=> d!40255 m!156145))

(declare-fun m!156147 () Bool)

(assert (=> d!40255 m!156147))

(declare-fun m!156149 () Bool)

(assert (=> d!40255 m!156149))

(declare-fun m!156151 () Bool)

(assert (=> b!132340 m!156151))

(declare-fun m!156153 () Bool)

(assert (=> b!132341 m!156153))

(assert (=> bm!14422 d!40255))

(declare-fun b!132342 () Bool)

(declare-fun lt!69112 () SeekEntryResult!284)

(declare-fun e!86286 () SeekEntryResult!284)

(assert (=> b!132342 (= e!86286 (seekKeyOrZeroReturnVacant!0 (x!15512 lt!69112) (index!3297 lt!69112) (index!3297 lt!69112) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (_keys!4601 newMap!16) (mask!7148 newMap!16)))))

(declare-fun b!132343 () Bool)

(declare-fun e!86284 () SeekEntryResult!284)

(assert (=> b!132343 (= e!86284 Undefined!284)))

(declare-fun d!40257 () Bool)

(declare-fun lt!69113 () SeekEntryResult!284)

(assert (=> d!40257 (and (or ((_ is Undefined!284) lt!69113) (not ((_ is Found!284) lt!69113)) (and (bvsge (index!3296 lt!69113) #b00000000000000000000000000000000) (bvslt (index!3296 lt!69113) (size!2522 (_keys!4601 newMap!16))))) (or ((_ is Undefined!284) lt!69113) ((_ is Found!284) lt!69113) (not ((_ is MissingZero!284) lt!69113)) (and (bvsge (index!3295 lt!69113) #b00000000000000000000000000000000) (bvslt (index!3295 lt!69113) (size!2522 (_keys!4601 newMap!16))))) (or ((_ is Undefined!284) lt!69113) ((_ is Found!284) lt!69113) ((_ is MissingZero!284) lt!69113) (not ((_ is MissingVacant!284) lt!69113)) (and (bvsge (index!3298 lt!69113) #b00000000000000000000000000000000) (bvslt (index!3298 lt!69113) (size!2522 (_keys!4601 newMap!16))))) (or ((_ is Undefined!284) lt!69113) (ite ((_ is Found!284) lt!69113) (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!69113)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)) (ite ((_ is MissingZero!284) lt!69113) (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3295 lt!69113)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!284) lt!69113) (= (select (arr!2254 (_keys!4601 newMap!16)) (index!3298 lt!69113)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!40257 (= lt!69113 e!86284)))

(declare-fun c!24478 () Bool)

(assert (=> d!40257 (= c!24478 (and ((_ is Intermediate!284) lt!69112) (undefined!1096 lt!69112)))))

(assert (=> d!40257 (= lt!69112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (mask!7148 newMap!16)) (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (_keys!4601 newMap!16) (mask!7148 newMap!16)))))

(assert (=> d!40257 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40257 (= (seekEntryOrOpen!0 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (_keys!4601 newMap!16) (mask!7148 newMap!16)) lt!69113)))

(declare-fun b!132344 () Bool)

(declare-fun c!24479 () Bool)

(declare-fun lt!69114 () (_ BitVec 64))

(assert (=> b!132344 (= c!24479 (= lt!69114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!86285 () SeekEntryResult!284)

(assert (=> b!132344 (= e!86285 e!86286)))

(declare-fun b!132345 () Bool)

(assert (=> b!132345 (= e!86284 e!86285)))

(assert (=> b!132345 (= lt!69114 (select (arr!2254 (_keys!4601 newMap!16)) (index!3297 lt!69112)))))

(declare-fun c!24477 () Bool)

(assert (=> b!132345 (= c!24477 (= lt!69114 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355)))))

(declare-fun b!132346 () Bool)

(assert (=> b!132346 (= e!86286 (MissingZero!284 (index!3297 lt!69112)))))

(declare-fun b!132347 () Bool)

(assert (=> b!132347 (= e!86285 (Found!284 (index!3297 lt!69112)))))

(assert (= (and d!40257 c!24478) b!132343))

(assert (= (and d!40257 (not c!24478)) b!132345))

(assert (= (and b!132345 c!24477) b!132347))

(assert (= (and b!132345 (not c!24477)) b!132344))

(assert (= (and b!132344 c!24479) b!132346))

(assert (= (and b!132344 (not c!24479)) b!132342))

(assert (=> b!132342 m!155441))

(declare-fun m!156155 () Bool)

(assert (=> b!132342 m!156155))

(assert (=> d!40257 m!155441))

(declare-fun m!156157 () Bool)

(assert (=> d!40257 m!156157))

(assert (=> d!40257 m!156157))

(assert (=> d!40257 m!155441))

(declare-fun m!156159 () Bool)

(assert (=> d!40257 m!156159))

(assert (=> d!40257 m!155667))

(declare-fun m!156161 () Bool)

(assert (=> d!40257 m!156161))

(declare-fun m!156163 () Bool)

(assert (=> d!40257 m!156163))

(declare-fun m!156165 () Bool)

(assert (=> d!40257 m!156165))

(declare-fun m!156167 () Bool)

(assert (=> b!132345 m!156167))

(assert (=> bm!14491 d!40257))

(declare-fun d!40259 () Bool)

(declare-fun e!86292 () Bool)

(assert (=> d!40259 e!86292))

(declare-fun res!63751 () Bool)

(assert (=> d!40259 (=> (not res!63751) (not e!86292))))

(assert (=> d!40259 (= res!63751 (or (bvsge #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))))

(declare-fun lt!69116 () ListLongMap!1703)

(declare-fun lt!69130 () ListLongMap!1703)

(assert (=> d!40259 (= lt!69116 lt!69130)))

(declare-fun lt!69128 () Unit!4131)

(declare-fun e!86290 () Unit!4131)

(assert (=> d!40259 (= lt!69128 e!86290)))

(declare-fun c!24484 () Bool)

(declare-fun e!86297 () Bool)

(assert (=> d!40259 (= c!24484 e!86297)))

(declare-fun res!63755 () Bool)

(assert (=> d!40259 (=> (not res!63755) (not e!86297))))

(assert (=> d!40259 (= res!63755 (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(declare-fun e!86299 () ListLongMap!1703)

(assert (=> d!40259 (= lt!69130 e!86299)))

(declare-fun c!24485 () Bool)

(assert (=> d!40259 (= c!24485 (and (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!40259 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40259 (= (getCurrentListMap!538 (_keys!4601 newMap!16) (ite (or c!24394 c!24396) (_values!2837 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16)))) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) lt!69116)))

(declare-fun b!132348 () Bool)

(declare-fun e!86294 () ListLongMap!1703)

(assert (=> b!132348 (= e!86299 e!86294)))

(declare-fun c!24482 () Bool)

(assert (=> b!132348 (= c!24482 (and (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!132349 () Bool)

(declare-fun call!14545 () ListLongMap!1703)

(assert (=> b!132349 (= e!86294 call!14545)))

(declare-fun b!132350 () Bool)

(declare-fun e!86288 () Bool)

(assert (=> b!132350 (= e!86288 (= (apply!115 lt!69116 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2710 newMap!16)))))

(declare-fun b!132351 () Bool)

(declare-fun e!86287 () Bool)

(assert (=> b!132351 (= e!86287 e!86288)))

(declare-fun res!63749 () Bool)

(declare-fun call!14547 () Bool)

(assert (=> b!132351 (= res!63749 call!14547)))

(assert (=> b!132351 (=> (not res!63749) (not e!86288))))

(declare-fun bm!14540 () Bool)

(declare-fun call!14549 () ListLongMap!1703)

(declare-fun call!14543 () ListLongMap!1703)

(assert (=> bm!14540 (= call!14549 call!14543)))

(declare-fun b!132352 () Bool)

(declare-fun call!14544 () ListLongMap!1703)

(assert (=> b!132352 (= e!86299 (+!169 call!14544 (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 newMap!16))))))

(declare-fun bm!14541 () Bool)

(declare-fun call!14546 () Bool)

(assert (=> bm!14541 (= call!14546 (contains!892 lt!69116 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!132353 () Bool)

(declare-fun e!86296 () Bool)

(assert (=> b!132353 (= e!86296 (= (apply!115 lt!69116 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2710 newMap!16)))))

(declare-fun bm!14542 () Bool)

(declare-fun call!14548 () ListLongMap!1703)

(assert (=> bm!14542 (= call!14543 call!14548)))

(declare-fun b!132354 () Bool)

(assert (=> b!132354 (= e!86297 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!132355 () Bool)

(declare-fun e!86289 () Bool)

(assert (=> b!132355 (= e!86289 (not call!14546))))

(declare-fun b!132356 () Bool)

(declare-fun e!86295 () ListLongMap!1703)

(assert (=> b!132356 (= e!86295 call!14549)))

(declare-fun b!132357 () Bool)

(declare-fun res!63748 () Bool)

(assert (=> b!132357 (=> (not res!63748) (not e!86292))))

(assert (=> b!132357 (= res!63748 e!86287)))

(declare-fun c!24480 () Bool)

(assert (=> b!132357 (= c!24480 (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!132358 () Bool)

(declare-fun lt!69125 () Unit!4131)

(assert (=> b!132358 (= e!86290 lt!69125)))

(declare-fun lt!69117 () ListLongMap!1703)

(assert (=> b!132358 (= lt!69117 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite (or c!24394 c!24396) (_values!2837 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16)))) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!69131 () (_ BitVec 64))

(assert (=> b!132358 (= lt!69131 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!69129 () (_ BitVec 64))

(assert (=> b!132358 (= lt!69129 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!69132 () Unit!4131)

(assert (=> b!132358 (= lt!69132 (addStillContains!91 lt!69117 lt!69131 (zeroValue!2710 newMap!16) lt!69129))))

(assert (=> b!132358 (contains!892 (+!169 lt!69117 (tuple2!2601 lt!69131 (zeroValue!2710 newMap!16))) lt!69129)))

(declare-fun lt!69135 () Unit!4131)

(assert (=> b!132358 (= lt!69135 lt!69132)))

(declare-fun lt!69118 () ListLongMap!1703)

(assert (=> b!132358 (= lt!69118 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite (or c!24394 c!24396) (_values!2837 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16)))) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!69121 () (_ BitVec 64))

(assert (=> b!132358 (= lt!69121 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!69120 () (_ BitVec 64))

(assert (=> b!132358 (= lt!69120 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!69124 () Unit!4131)

(assert (=> b!132358 (= lt!69124 (addApplyDifferent!91 lt!69118 lt!69121 (minValue!2710 newMap!16) lt!69120))))

(assert (=> b!132358 (= (apply!115 (+!169 lt!69118 (tuple2!2601 lt!69121 (minValue!2710 newMap!16))) lt!69120) (apply!115 lt!69118 lt!69120))))

(declare-fun lt!69123 () Unit!4131)

(assert (=> b!132358 (= lt!69123 lt!69124)))

(declare-fun lt!69119 () ListLongMap!1703)

(assert (=> b!132358 (= lt!69119 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite (or c!24394 c!24396) (_values!2837 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16)))) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!69126 () (_ BitVec 64))

(assert (=> b!132358 (= lt!69126 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!69115 () (_ BitVec 64))

(assert (=> b!132358 (= lt!69115 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(declare-fun lt!69133 () Unit!4131)

(assert (=> b!132358 (= lt!69133 (addApplyDifferent!91 lt!69119 lt!69126 (zeroValue!2710 newMap!16) lt!69115))))

(assert (=> b!132358 (= (apply!115 (+!169 lt!69119 (tuple2!2601 lt!69126 (zeroValue!2710 newMap!16))) lt!69115) (apply!115 lt!69119 lt!69115))))

(declare-fun lt!69127 () Unit!4131)

(assert (=> b!132358 (= lt!69127 lt!69133)))

(declare-fun lt!69134 () ListLongMap!1703)

(assert (=> b!132358 (= lt!69134 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite (or c!24394 c!24396) (_values!2837 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16)))) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!69136 () (_ BitVec 64))

(assert (=> b!132358 (= lt!69136 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!69122 () (_ BitVec 64))

(assert (=> b!132358 (= lt!69122 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!132358 (= lt!69125 (addApplyDifferent!91 lt!69134 lt!69136 (minValue!2710 newMap!16) lt!69122))))

(assert (=> b!132358 (= (apply!115 (+!169 lt!69134 (tuple2!2601 lt!69136 (minValue!2710 newMap!16))) lt!69122) (apply!115 lt!69134 lt!69122))))

(declare-fun b!132359 () Bool)

(assert (=> b!132359 (= e!86295 call!14545)))

(declare-fun e!86291 () Bool)

(declare-fun b!132360 () Bool)

(assert (=> b!132360 (= e!86291 (= (apply!115 lt!69116 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)) (get!1481 (select (arr!2255 (ite (or c!24394 c!24396) (_values!2837 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16))))) #b00000000000000000000000000000000) (dynLambda!423 (defaultEntry!2854 newMap!16) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!132360 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2523 (ite (or c!24394 c!24396) (_values!2837 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16)))))))))

(assert (=> b!132360 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(declare-fun bm!14543 () Bool)

(assert (=> bm!14543 (= call!14544 (+!169 (ite c!24485 call!14548 (ite c!24482 call!14543 call!14549)) (ite (or c!24485 c!24482) (tuple2!2601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2710 newMap!16)) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2710 newMap!16)))))))

(declare-fun b!132361 () Bool)

(declare-fun e!86293 () Bool)

(assert (=> b!132361 (= e!86293 (validKeyInArray!0 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!132362 () Bool)

(assert (=> b!132362 (= e!86289 e!86296)))

(declare-fun res!63752 () Bool)

(assert (=> b!132362 (= res!63752 call!14546)))

(assert (=> b!132362 (=> (not res!63752) (not e!86296))))

(declare-fun b!132363 () Bool)

(declare-fun res!63756 () Bool)

(assert (=> b!132363 (=> (not res!63756) (not e!86292))))

(declare-fun e!86298 () Bool)

(assert (=> b!132363 (= res!63756 e!86298)))

(declare-fun res!63753 () Bool)

(assert (=> b!132363 (=> res!63753 e!86298)))

(assert (=> b!132363 (= res!63753 (not e!86293))))

(declare-fun res!63754 () Bool)

(assert (=> b!132363 (=> (not res!63754) (not e!86293))))

(assert (=> b!132363 (= res!63754 (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(declare-fun bm!14544 () Bool)

(assert (=> bm!14544 (= call!14545 call!14544)))

(declare-fun b!132364 () Bool)

(assert (=> b!132364 (= e!86292 e!86289)))

(declare-fun c!24483 () Bool)

(assert (=> b!132364 (= c!24483 (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!132365 () Bool)

(assert (=> b!132365 (= e!86287 (not call!14547))))

(declare-fun b!132366 () Bool)

(declare-fun c!24481 () Bool)

(assert (=> b!132366 (= c!24481 (and (not (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2621 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!132366 (= e!86294 e!86295)))

(declare-fun bm!14545 () Bool)

(assert (=> bm!14545 (= call!14548 (getCurrentListMapNoExtraKeys!136 (_keys!4601 newMap!16) (ite (or c!24394 c!24396) (_values!2837 newMap!16) (array!4769 (store (arr!2255 (_values!2837 newMap!16)) (index!3296 lt!68833) (ValueCellFull!1092 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2523 (_values!2837 newMap!16)))) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun bm!14546 () Bool)

(assert (=> bm!14546 (= call!14547 (contains!892 lt!69116 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!132367 () Bool)

(declare-fun Unit!4148 () Unit!4131)

(assert (=> b!132367 (= e!86290 Unit!4148)))

(declare-fun b!132368 () Bool)

(assert (=> b!132368 (= e!86298 e!86291)))

(declare-fun res!63750 () Bool)

(assert (=> b!132368 (=> (not res!63750) (not e!86291))))

(assert (=> b!132368 (= res!63750 (contains!892 lt!69116 (select (arr!2254 (_keys!4601 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> b!132368 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!2522 (_keys!4601 newMap!16))))))

(assert (= (and d!40259 c!24485) b!132352))

(assert (= (and d!40259 (not c!24485)) b!132348))

(assert (= (and b!132348 c!24482) b!132349))

(assert (= (and b!132348 (not c!24482)) b!132366))

(assert (= (and b!132366 c!24481) b!132359))

(assert (= (and b!132366 (not c!24481)) b!132356))

(assert (= (or b!132359 b!132356) bm!14540))

(assert (= (or b!132349 bm!14540) bm!14542))

(assert (= (or b!132349 b!132359) bm!14544))

(assert (= (or b!132352 bm!14542) bm!14545))

(assert (= (or b!132352 bm!14544) bm!14543))

(assert (= (and d!40259 res!63755) b!132354))

(assert (= (and d!40259 c!24484) b!132358))

(assert (= (and d!40259 (not c!24484)) b!132367))

(assert (= (and d!40259 res!63751) b!132363))

(assert (= (and b!132363 res!63754) b!132361))

(assert (= (and b!132363 (not res!63753)) b!132368))

(assert (= (and b!132368 res!63750) b!132360))

(assert (= (and b!132363 res!63756) b!132357))

(assert (= (and b!132357 c!24480) b!132351))

(assert (= (and b!132357 (not c!24480)) b!132365))

(assert (= (and b!132351 res!63749) b!132350))

(assert (= (or b!132351 b!132365) bm!14546))

(assert (= (and b!132357 res!63748) b!132364))

(assert (= (and b!132364 c!24483) b!132362))

(assert (= (and b!132364 (not c!24483)) b!132355))

(assert (= (and b!132362 res!63752) b!132353))

(assert (= (or b!132362 b!132355) bm!14541))

(declare-fun b_lambda!5913 () Bool)

(assert (=> (not b_lambda!5913) (not b!132360)))

(assert (=> b!132360 t!6187))

(declare-fun b_and!8213 () Bool)

(assert (= b_and!8209 (and (=> t!6187 result!3985) b_and!8213)))

(assert (=> b!132360 t!6189))

(declare-fun b_and!8215 () Bool)

(assert (= b_and!8211 (and (=> t!6189 result!3987) b_and!8215)))

(declare-fun m!156169 () Bool)

(assert (=> b!132353 m!156169))

(assert (=> d!40259 m!155667))

(declare-fun m!156171 () Bool)

(assert (=> bm!14546 m!156171))

(assert (=> b!132360 m!155671))

(declare-fun m!156173 () Bool)

(assert (=> b!132360 m!156173))

(assert (=> b!132360 m!155671))

(declare-fun m!156175 () Bool)

(assert (=> b!132360 m!156175))

(assert (=> b!132360 m!156175))

(assert (=> b!132360 m!155677))

(declare-fun m!156177 () Bool)

(assert (=> b!132360 m!156177))

(assert (=> b!132360 m!155677))

(assert (=> b!132354 m!155671))

(assert (=> b!132354 m!155671))

(assert (=> b!132354 m!155681))

(assert (=> b!132368 m!155671))

(assert (=> b!132368 m!155671))

(declare-fun m!156179 () Bool)

(assert (=> b!132368 m!156179))

(declare-fun m!156181 () Bool)

(assert (=> b!132358 m!156181))

(declare-fun m!156183 () Bool)

(assert (=> b!132358 m!156183))

(declare-fun m!156185 () Bool)

(assert (=> b!132358 m!156185))

(declare-fun m!156187 () Bool)

(assert (=> b!132358 m!156187))

(declare-fun m!156189 () Bool)

(assert (=> b!132358 m!156189))

(declare-fun m!156191 () Bool)

(assert (=> b!132358 m!156191))

(assert (=> b!132358 m!155671))

(declare-fun m!156193 () Bool)

(assert (=> b!132358 m!156193))

(declare-fun m!156195 () Bool)

(assert (=> b!132358 m!156195))

(declare-fun m!156197 () Bool)

(assert (=> b!132358 m!156197))

(declare-fun m!156199 () Bool)

(assert (=> b!132358 m!156199))

(assert (=> b!132358 m!156193))

(declare-fun m!156201 () Bool)

(assert (=> b!132358 m!156201))

(assert (=> b!132358 m!156189))

(assert (=> b!132358 m!156183))

(declare-fun m!156203 () Bool)

(assert (=> b!132358 m!156203))

(assert (=> b!132358 m!156199))

(declare-fun m!156205 () Bool)

(assert (=> b!132358 m!156205))

(declare-fun m!156207 () Bool)

(assert (=> b!132358 m!156207))

(declare-fun m!156209 () Bool)

(assert (=> b!132358 m!156209))

(declare-fun m!156211 () Bool)

(assert (=> b!132358 m!156211))

(declare-fun m!156213 () Bool)

(assert (=> b!132352 m!156213))

(declare-fun m!156215 () Bool)

(assert (=> b!132350 m!156215))

(assert (=> bm!14545 m!156187))

(declare-fun m!156217 () Bool)

(assert (=> bm!14541 m!156217))

(assert (=> b!132361 m!155671))

(assert (=> b!132361 m!155671))

(assert (=> b!132361 m!155681))

(declare-fun m!156219 () Bool)

(assert (=> bm!14543 m!156219))

(assert (=> bm!14487 d!40259))

(assert (=> b!131984 d!40257))

(declare-fun d!40261 () Bool)

(assert (=> d!40261 (= (+!169 (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)) (tuple2!2601 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (getCurrentListMap!538 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) lt!68818 (zeroValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000 (defaultEntry!2854 newMap!16)))))

(declare-fun lt!69139 () Unit!4131)

(declare-fun choose!824 (array!4766 array!4768 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3475 V!3475 V!3475 Int) Unit!4131)

(assert (=> d!40261 (= lt!69139 (choose!824 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) lt!68818 (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2854 newMap!16)))))

(assert (=> d!40261 (validMask!0 (mask!7148 newMap!16))))

(assert (=> d!40261 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!60 (_keys!4601 newMap!16) (_values!2837 newMap!16) (mask!7148 newMap!16) (extraKeys!2621 newMap!16) lt!68818 (zeroValue!2710 newMap!16) (minValue!2710 newMap!16) (get!1481 (select (arr!2255 (_values!2837 (v!3186 (underlying!452 thiss!992)))) from!355) (dynLambda!423 (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2854 newMap!16)) lt!69139)))

(declare-fun bs!5482 () Bool)

(assert (= bs!5482 d!40261))

(assert (=> bs!5482 m!155439))

(declare-fun m!156221 () Bool)

(assert (=> bs!5482 m!156221))

(assert (=> bs!5482 m!155439))

(declare-fun m!156223 () Bool)

(assert (=> bs!5482 m!156223))

(assert (=> bs!5482 m!155523))

(assert (=> bs!5482 m!155523))

(declare-fun m!156225 () Bool)

(assert (=> bs!5482 m!156225))

(assert (=> bs!5482 m!155667))

(assert (=> b!131966 d!40261))

(declare-fun d!40263 () Bool)

(declare-fun e!86301 () Bool)

(assert (=> d!40263 e!86301))

(declare-fun res!63757 () Bool)

(assert (=> d!40263 (=> res!63757 e!86301)))

(declare-fun lt!69142 () Bool)

(assert (=> d!40263 (= res!63757 (not lt!69142))))

(declare-fun lt!69141 () Bool)

(assert (=> d!40263 (= lt!69142 lt!69141)))

(declare-fun lt!69140 () Unit!4131)

(declare-fun e!86300 () Unit!4131)

(assert (=> d!40263 (= lt!69140 e!86300)))

(declare-fun c!24486 () Bool)

(assert (=> d!40263 (= c!24486 lt!69141)))

(assert (=> d!40263 (= lt!69141 (containsKey!174 (toList!867 e!86086) (ite c!24396 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68833)))))))

(assert (=> d!40263 (= (contains!892 e!86086 (ite c!24396 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68833)))) lt!69142)))

(declare-fun b!132369 () Bool)

(declare-fun lt!69143 () Unit!4131)

(assert (=> b!132369 (= e!86300 lt!69143)))

(assert (=> b!132369 (= lt!69143 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!867 e!86086) (ite c!24396 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68833)))))))

(assert (=> b!132369 (isDefined!124 (getValueByKey!170 (toList!867 e!86086) (ite c!24396 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68833)))))))

(declare-fun b!132370 () Bool)

(declare-fun Unit!4149 () Unit!4131)

(assert (=> b!132370 (= e!86300 Unit!4149)))

(declare-fun b!132371 () Bool)

(assert (=> b!132371 (= e!86301 (isDefined!124 (getValueByKey!170 (toList!867 e!86086) (ite c!24396 (select (arr!2254 (_keys!4601 (v!3186 (underlying!452 thiss!992)))) from!355) (select (arr!2254 (_keys!4601 newMap!16)) (index!3296 lt!68833))))))))

(assert (= (and d!40263 c!24486) b!132369))

(assert (= (and d!40263 (not c!24486)) b!132370))

(assert (= (and d!40263 (not res!63757)) b!132371))

(declare-fun m!156227 () Bool)

(assert (=> d!40263 m!156227))

(declare-fun m!156229 () Bool)

(assert (=> b!132369 m!156229))

(declare-fun m!156231 () Bool)

(assert (=> b!132369 m!156231))

(assert (=> b!132369 m!156231))

(declare-fun m!156233 () Bool)

(assert (=> b!132369 m!156233))

(assert (=> b!132371 m!156231))

(assert (=> b!132371 m!156231))

(assert (=> b!132371 m!156233))

(assert (=> bm!14474 d!40263))

(assert (=> b!131792 d!40141))

(assert (=> d!40119 d!40139))

(declare-fun b!132372 () Bool)

(declare-fun e!86303 () Bool)

(assert (=> b!132372 (= e!86303 tp_is_empty!2871)))

(declare-fun b!132373 () Bool)

(declare-fun e!86302 () Bool)

(assert (=> b!132373 (= e!86302 tp_is_empty!2871)))

(declare-fun condMapEmpty!4631 () Bool)

(declare-fun mapDefault!4631 () ValueCell!1092)

(assert (=> mapNonEmpty!4630 (= condMapEmpty!4631 (= mapRest!4630 ((as const (Array (_ BitVec 32) ValueCell!1092)) mapDefault!4631)))))

(declare-fun mapRes!4631 () Bool)

(assert (=> mapNonEmpty!4630 (= tp!11182 (and e!86302 mapRes!4631))))

(declare-fun mapIsEmpty!4631 () Bool)

(assert (=> mapIsEmpty!4631 mapRes!4631))

(declare-fun mapNonEmpty!4631 () Bool)

(declare-fun tp!11183 () Bool)

(assert (=> mapNonEmpty!4631 (= mapRes!4631 (and tp!11183 e!86303))))

(declare-fun mapKey!4631 () (_ BitVec 32))

(declare-fun mapValue!4631 () ValueCell!1092)

(declare-fun mapRest!4631 () (Array (_ BitVec 32) ValueCell!1092))

(assert (=> mapNonEmpty!4631 (= mapRest!4630 (store mapRest!4631 mapKey!4631 mapValue!4631))))

(assert (= (and mapNonEmpty!4630 condMapEmpty!4631) mapIsEmpty!4631))

(assert (= (and mapNonEmpty!4630 (not condMapEmpty!4631)) mapNonEmpty!4631))

(assert (= (and mapNonEmpty!4631 ((_ is ValueCellFull!1092) mapValue!4631)) b!132372))

(assert (= (and mapNonEmpty!4630 ((_ is ValueCellFull!1092) mapDefault!4631)) b!132373))

(declare-fun m!156235 () Bool)

(assert (=> mapNonEmpty!4631 m!156235))

(declare-fun b!132374 () Bool)

(declare-fun e!86305 () Bool)

(assert (=> b!132374 (= e!86305 tp_is_empty!2871)))

(declare-fun b!132375 () Bool)

(declare-fun e!86304 () Bool)

(assert (=> b!132375 (= e!86304 tp_is_empty!2871)))

(declare-fun condMapEmpty!4632 () Bool)

(declare-fun mapDefault!4632 () ValueCell!1092)

(assert (=> mapNonEmpty!4629 (= condMapEmpty!4632 (= mapRest!4629 ((as const (Array (_ BitVec 32) ValueCell!1092)) mapDefault!4632)))))

(declare-fun mapRes!4632 () Bool)

(assert (=> mapNonEmpty!4629 (= tp!11181 (and e!86304 mapRes!4632))))

(declare-fun mapIsEmpty!4632 () Bool)

(assert (=> mapIsEmpty!4632 mapRes!4632))

(declare-fun mapNonEmpty!4632 () Bool)

(declare-fun tp!11184 () Bool)

(assert (=> mapNonEmpty!4632 (= mapRes!4632 (and tp!11184 e!86305))))

(declare-fun mapKey!4632 () (_ BitVec 32))

(declare-fun mapRest!4632 () (Array (_ BitVec 32) ValueCell!1092))

(declare-fun mapValue!4632 () ValueCell!1092)

(assert (=> mapNonEmpty!4632 (= mapRest!4629 (store mapRest!4632 mapKey!4632 mapValue!4632))))

(assert (= (and mapNonEmpty!4629 condMapEmpty!4632) mapIsEmpty!4632))

(assert (= (and mapNonEmpty!4629 (not condMapEmpty!4632)) mapNonEmpty!4632))

(assert (= (and mapNonEmpty!4632 ((_ is ValueCellFull!1092) mapValue!4632)) b!132374))

(assert (= (and mapNonEmpty!4629 ((_ is ValueCellFull!1092) mapDefault!4632)) b!132375))

(declare-fun m!156237 () Bool)

(assert (=> mapNonEmpty!4632 m!156237))

(declare-fun b_lambda!5915 () Bool)

(assert (= b_lambda!5905 (or (and b!131717 b_free!2909 (= (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) (defaultEntry!2854 newMap!16))) (and b!131713 b_free!2911) b_lambda!5915)))

(declare-fun b_lambda!5917 () Bool)

(assert (= b_lambda!5907 (or (and b!131717 b_free!2909) (and b!131713 b_free!2911 (= (defaultEntry!2854 newMap!16) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))))) b_lambda!5917)))

(declare-fun b_lambda!5919 () Bool)

(assert (= b_lambda!5911 (or (and b!131717 b_free!2909 (= (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) (defaultEntry!2854 newMap!16))) (and b!131713 b_free!2911) b_lambda!5919)))

(declare-fun b_lambda!5921 () Bool)

(assert (= b_lambda!5909 (or (and b!131717 b_free!2909) (and b!131713 b_free!2911 (= (defaultEntry!2854 newMap!16) (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))))) b_lambda!5921)))

(declare-fun b_lambda!5923 () Bool)

(assert (= b_lambda!5913 (or (and b!131717 b_free!2909 (= (defaultEntry!2854 (v!3186 (underlying!452 thiss!992))) (defaultEntry!2854 newMap!16))) (and b!131713 b_free!2911) b_lambda!5923)))

(check-sat (not b!132144) (not b!132137) (not d!40217) (not b!132031) (not d!40145) (not b!132265) (not b!132217) (not bm!14505) (not d!40193) (not b!132033) (not b!132106) (not b!132326) (not bm!14525) (not d!40261) (not d!40245) (not b!132105) tp_is_empty!2871 (not b!132236) (not b!132371) (not b!132039) (not b!132065) (not b!132181) (not b!132042) (not b!132112) (not b!132218) (not d!40189) (not b!132339) (not d!40197) (not d!40201) (not d!40237) (not mapNonEmpty!4632) (not b_lambda!5919) (not b!132259) (not b!132189) (not b!132156) (not d!40221) (not b!132131) (not b!132337) (not b!132322) (not d!40239) (not b!132109) (not b!132358) (not b!132141) (not b!132369) (not d!40203) (not b!132225) (not bm!14523) (not b!132332) (not b!132352) (not d!40241) (not bm!14503) (not d!40229) (not b!132122) (not b!132147) (not bm!14527) (not b!132128) (not b_lambda!5917) (not d!40199) (not b!132146) (not b!132130) (not d!40259) (not bm!14536) (not b!132187) (not b!132115) (not d!40169) (not b!132221) (not b!132336) (not b!132123) (not d!40207) (not bm!14546) (not b!132114) (not b!132250) (not d!40195) (not d!40137) (not d!40157) (not b!132148) (not b!132119) (not bm!14519) (not d!40165) (not b!132361) (not mapNonEmpty!4631) (not b!132034) (not b!132368) (not bm!14501) (not bm!14517) (not b!132266) (not b!132116) (not bm!14541) (not d!40177) (not b!132125) (not b!132273) (not b!132035) (not b_lambda!5921) (not d!40167) (not b!132240) (not d!40233) (not b!132138) (not d!40255) (not b!132103) (not b!132283) (not bm!14511) (not b!132327) (not b!132321) (not b!132338) (not b_next!2911) (not bm!14504) (not b_lambda!5923) (not d!40251) (not b!132323) (not b_lambda!5903) (not b!132281) (not b!132049) (not b!132263) (not b!132340) (not bm!14538) (not d!40225) (not b!132168) (not bm!14537) (not b!132127) (not b!132360) (not b!132139) (not d!40175) (not b_lambda!5915) (not b!132107) (not b!132350) (not b!132059) (not d!40181) (not d!40185) (not b!132053) (not b_next!2909) (not bm!14545) (not b_lambda!5899) (not d!40191) (not b!132280) (not d!40211) (not b!132251) (not d!40219) (not bm!14508) (not b!132238) (not b!132126) (not b!132162) (not d!40187) (not d!40139) (not d!40213) (not d!40147) b_and!8213 (not bm!14518) (not b!132257) (not b!132150) (not bm!14521) (not d!40263) (not b!132052) (not b!132354) (not d!40171) (not bm!14526) (not b!132277) (not b!132054) (not b!132222) (not b!132145) (not b!132149) (not d!40151) (not b!132219) (not b!132255) (not b!132111) (not b!132276) (not b!132041) (not d!40173) (not d!40163) (not b!132341) (not b!132060) (not b!132342) (not b!132077) (not d!40247) (not bm!14543) (not d!40183) (not b!132353) (not bm!14516) (not b!132258) (not d!40179) (not b!132129) (not d!40257) (not d!40209) (not b!132216) (not d!40235) (not bm!14499) b_and!8215)
(check-sat b_and!8213 b_and!8215 (not b_next!2909) (not b_next!2911))
