; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90338 () Bool)

(assert start!90338)

(declare-fun b!1033541 () Bool)

(declare-fun b_free!20799 () Bool)

(declare-fun b_next!20799 () Bool)

(assert (=> b!1033541 (= b_free!20799 (not b_next!20799))))

(declare-fun tp!73498 () Bool)

(declare-fun b_and!33287 () Bool)

(assert (=> b!1033541 (= tp!73498 b_and!33287)))

(declare-fun res!690641 () Bool)

(declare-fun e!584249 () Bool)

(assert (=> start!90338 (=> (not res!690641) (not e!584249))))

(declare-datatypes ((V!37565 0))(
  ( (V!37566 (val!12310 Int)) )
))
(declare-datatypes ((ValueCell!11556 0))(
  ( (ValueCellFull!11556 (v!14888 V!37565)) (EmptyCell!11556) )
))
(declare-datatypes ((array!65102 0))(
  ( (array!65103 (arr!31341 (Array (_ BitVec 32) (_ BitVec 64))) (size!31864 (_ BitVec 32))) )
))
(declare-datatypes ((array!65104 0))(
  ( (array!65105 (arr!31342 (Array (_ BitVec 32) ValueCell!11556)) (size!31865 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5706 0))(
  ( (LongMapFixedSize!5707 (defaultEntry!6227 Int) (mask!30079 (_ BitVec 32)) (extraKeys!5959 (_ BitVec 32)) (zeroValue!6063 V!37565) (minValue!6063 V!37565) (_size!2908 (_ BitVec 32)) (_keys!11404 array!65102) (_values!6250 array!65104) (_vacant!2908 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5706)

(declare-fun valid!2105 (LongMapFixedSize!5706) Bool)

(assert (=> start!90338 (= res!690641 (valid!2105 thiss!1427))))

(assert (=> start!90338 e!584249))

(declare-fun e!584253 () Bool)

(assert (=> start!90338 e!584253))

(assert (=> start!90338 true))

(declare-fun b!1033539 () Bool)

(declare-fun e!584250 () Bool)

(assert (=> b!1033539 (= e!584249 (not e!584250))))

(declare-fun res!690642 () Bool)

(assert (=> b!1033539 (=> (not res!690642) (not e!584250))))

(declare-fun lt!456102 () LongMapFixedSize!5706)

(assert (=> b!1033539 (= res!690642 (valid!2105 lt!456102))))

(declare-fun lt!456100 () V!37565)

(assert (=> b!1033539 (= lt!456102 (LongMapFixedSize!5707 (defaultEntry!6227 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) (_size!2908 thiss!1427) (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (_vacant!2908 thiss!1427)))))

(declare-datatypes ((tuple2!15834 0))(
  ( (tuple2!15835 (_1!7927 (_ BitVec 64)) (_2!7927 V!37565)) )
))
(declare-datatypes ((List!22022 0))(
  ( (Nil!22019) (Cons!22018 (h!23220 tuple2!15834) (t!31227 List!22022)) )
))
(declare-datatypes ((ListLongMap!13871 0))(
  ( (ListLongMap!13872 (toList!6951 List!22022)) )
))
(declare-fun -!527 (ListLongMap!13871 (_ BitVec 64)) ListLongMap!13871)

(declare-fun getCurrentListMap!3957 (array!65102 array!65104 (_ BitVec 32) (_ BitVec 32) V!37565 V!37565 (_ BitVec 32) Int) ListLongMap!13871)

(assert (=> b!1033539 (= (-!527 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-datatypes ((Unit!33810 0))(
  ( (Unit!33811) )
))
(declare-fun lt!456101 () Unit!33810)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!10 (array!65102 array!65104 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!37565 V!37565 V!37565 Int) Unit!33810)

(assert (=> b!1033539 (= lt!456101 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!10 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) (zeroValue!6063 thiss!1427) lt!456100 (minValue!6063 thiss!1427) (defaultEntry!6227 thiss!1427)))))

(declare-fun dynLambda!2001 (Int (_ BitVec 64)) V!37565)

(assert (=> b!1033539 (= lt!456100 (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033540 () Bool)

(declare-fun e!584252 () Bool)

(declare-fun tp_is_empty!24519 () Bool)

(assert (=> b!1033540 (= e!584252 tp_is_empty!24519)))

(declare-fun e!584251 () Bool)

(declare-fun array_inv!24081 (array!65102) Bool)

(declare-fun array_inv!24082 (array!65104) Bool)

(assert (=> b!1033541 (= e!584253 (and tp!73498 tp_is_empty!24519 (array_inv!24081 (_keys!11404 thiss!1427)) (array_inv!24082 (_values!6250 thiss!1427)) e!584251))))

(declare-fun b!1033542 () Bool)

(declare-fun e!584255 () Bool)

(declare-fun mapRes!38261 () Bool)

(assert (=> b!1033542 (= e!584251 (and e!584255 mapRes!38261))))

(declare-fun condMapEmpty!38261 () Bool)

(declare-fun mapDefault!38261 () ValueCell!11556)

(assert (=> b!1033542 (= condMapEmpty!38261 (= (arr!31342 (_values!6250 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11556)) mapDefault!38261)))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun b!1033543 () Bool)

(declare-fun map!14707 (LongMapFixedSize!5706) ListLongMap!13871)

(assert (=> b!1033543 (= e!584250 (= (map!14707 lt!456102) (-!527 (map!14707 thiss!1427) key!909)))))

(declare-fun mapNonEmpty!38261 () Bool)

(declare-fun tp!73497 () Bool)

(assert (=> mapNonEmpty!38261 (= mapRes!38261 (and tp!73497 e!584252))))

(declare-fun mapRest!38261 () (Array (_ BitVec 32) ValueCell!11556))

(declare-fun mapKey!38261 () (_ BitVec 32))

(declare-fun mapValue!38261 () ValueCell!11556)

(assert (=> mapNonEmpty!38261 (= (arr!31342 (_values!6250 thiss!1427)) (store mapRest!38261 mapKey!38261 mapValue!38261))))

(declare-fun b!1033544 () Bool)

(declare-fun res!690640 () Bool)

(assert (=> b!1033544 (=> (not res!690640) (not e!584249))))

(assert (=> b!1033544 (= res!690640 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38261 () Bool)

(assert (=> mapIsEmpty!38261 mapRes!38261))

(declare-fun b!1033545 () Bool)

(assert (=> b!1033545 (= e!584255 tp_is_empty!24519)))

(assert (= (and start!90338 res!690641) b!1033544))

(assert (= (and b!1033544 res!690640) b!1033539))

(assert (= (and b!1033539 res!690642) b!1033543))

(assert (= (and b!1033542 condMapEmpty!38261) mapIsEmpty!38261))

(assert (= (and b!1033542 (not condMapEmpty!38261)) mapNonEmpty!38261))

(get-info :version)

(assert (= (and mapNonEmpty!38261 ((_ is ValueCellFull!11556) mapValue!38261)) b!1033540))

(assert (= (and b!1033542 ((_ is ValueCellFull!11556) mapDefault!38261)) b!1033545))

(assert (= b!1033541 b!1033542))

(assert (= start!90338 b!1033541))

(declare-fun b_lambda!16077 () Bool)

(assert (=> (not b_lambda!16077) (not b!1033539)))

(declare-fun t!31226 () Bool)

(declare-fun tb!7029 () Bool)

(assert (=> (and b!1033541 (= (defaultEntry!6227 thiss!1427) (defaultEntry!6227 thiss!1427)) t!31226) tb!7029))

(declare-fun result!14395 () Bool)

(assert (=> tb!7029 (= result!14395 tp_is_empty!24519)))

(assert (=> b!1033539 t!31226))

(declare-fun b_and!33289 () Bool)

(assert (= b_and!33287 (and (=> t!31226 result!14395) b_and!33289)))

(declare-fun m!953377 () Bool)

(assert (=> mapNonEmpty!38261 m!953377))

(declare-fun m!953379 () Bool)

(assert (=> b!1033539 m!953379))

(declare-fun m!953381 () Bool)

(assert (=> b!1033539 m!953381))

(declare-fun m!953383 () Bool)

(assert (=> b!1033539 m!953383))

(declare-fun m!953385 () Bool)

(assert (=> b!1033539 m!953385))

(declare-fun m!953387 () Bool)

(assert (=> b!1033539 m!953387))

(declare-fun m!953389 () Bool)

(assert (=> b!1033539 m!953389))

(assert (=> b!1033539 m!953387))

(declare-fun m!953391 () Bool)

(assert (=> start!90338 m!953391))

(declare-fun m!953393 () Bool)

(assert (=> b!1033543 m!953393))

(declare-fun m!953395 () Bool)

(assert (=> b!1033543 m!953395))

(assert (=> b!1033543 m!953395))

(declare-fun m!953397 () Bool)

(assert (=> b!1033543 m!953397))

(declare-fun m!953399 () Bool)

(assert (=> b!1033541 m!953399))

(declare-fun m!953401 () Bool)

(assert (=> b!1033541 m!953401))

(check-sat (not mapNonEmpty!38261) (not b!1033543) tp_is_empty!24519 (not b_next!20799) (not b!1033539) (not b_lambda!16077) (not b!1033541) b_and!33289 (not start!90338))
(check-sat b_and!33289 (not b_next!20799))
(get-model)

(declare-fun b_lambda!16081 () Bool)

(assert (= b_lambda!16077 (or (and b!1033541 b_free!20799) b_lambda!16081)))

(check-sat (not mapNonEmpty!38261) (not b!1033543) (not b_lambda!16081) tp_is_empty!24519 (not b_next!20799) (not b!1033539) (not b!1033541) b_and!33289 (not start!90338))
(check-sat b_and!33289 (not b_next!20799))
(get-model)

(declare-fun b!1033613 () Bool)

(declare-fun e!584307 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1033613 (= e!584307 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033614 () Bool)

(declare-fun e!584313 () Bool)

(declare-fun e!584310 () Bool)

(assert (=> b!1033614 (= e!584313 e!584310)))

(declare-fun res!690671 () Bool)

(assert (=> b!1033614 (=> (not res!690671) (not e!584310))))

(declare-fun lt!456160 () ListLongMap!13871)

(declare-fun contains!6035 (ListLongMap!13871 (_ BitVec 64)) Bool)

(assert (=> b!1033614 (= res!690671 (contains!6035 lt!456160 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033614 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1033615 () Bool)

(declare-fun e!584315 () Unit!33810)

(declare-fun Unit!33812 () Unit!33810)

(assert (=> b!1033615 (= e!584315 Unit!33812)))

(declare-fun bm!43657 () Bool)

(declare-fun call!43660 () Bool)

(assert (=> bm!43657 (= call!43660 (contains!6035 lt!456160 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033616 () Bool)

(declare-fun res!690675 () Bool)

(declare-fun e!584306 () Bool)

(assert (=> b!1033616 (=> (not res!690675) (not e!584306))))

(assert (=> b!1033616 (= res!690675 e!584313)))

(declare-fun res!690673 () Bool)

(assert (=> b!1033616 (=> res!690673 e!584313)))

(declare-fun e!584312 () Bool)

(assert (=> b!1033616 (= res!690673 (not e!584312))))

(declare-fun res!690672 () Bool)

(assert (=> b!1033616 (=> (not res!690672) (not e!584312))))

(assert (=> b!1033616 (= res!690672 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1033617 () Bool)

(declare-fun e!584308 () Bool)

(declare-fun call!43662 () Bool)

(assert (=> b!1033617 (= e!584308 (not call!43662))))

(declare-fun b!1033618 () Bool)

(assert (=> b!1033618 (= e!584312 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033619 () Bool)

(declare-fun lt!456171 () Unit!33810)

(assert (=> b!1033619 (= e!584315 lt!456171)))

(declare-fun lt!456157 () ListLongMap!13871)

(declare-fun getCurrentListMapNoExtraKeys!3534 (array!65102 array!65104 (_ BitVec 32) (_ BitVec 32) V!37565 V!37565 (_ BitVec 32) Int) ListLongMap!13871)

(assert (=> b!1033619 (= lt!456157 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun lt!456165 () (_ BitVec 64))

(assert (=> b!1033619 (= lt!456165 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456168 () (_ BitVec 64))

(assert (=> b!1033619 (= lt!456168 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456161 () Unit!33810)

(declare-fun addStillContains!629 (ListLongMap!13871 (_ BitVec 64) V!37565 (_ BitVec 64)) Unit!33810)

(assert (=> b!1033619 (= lt!456161 (addStillContains!629 lt!456157 lt!456165 lt!456100 lt!456168))))

(declare-fun +!3064 (ListLongMap!13871 tuple2!15834) ListLongMap!13871)

(assert (=> b!1033619 (contains!6035 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)) lt!456168)))

(declare-fun lt!456163 () Unit!33810)

(assert (=> b!1033619 (= lt!456163 lt!456161)))

(declare-fun lt!456164 () ListLongMap!13871)

(assert (=> b!1033619 (= lt!456164 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun lt!456166 () (_ BitVec 64))

(assert (=> b!1033619 (= lt!456166 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456174 () (_ BitVec 64))

(assert (=> b!1033619 (= lt!456174 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456158 () Unit!33810)

(declare-fun addApplyDifferent!481 (ListLongMap!13871 (_ BitVec 64) V!37565 (_ BitVec 64)) Unit!33810)

(assert (=> b!1033619 (= lt!456158 (addApplyDifferent!481 lt!456164 lt!456166 (minValue!6063 thiss!1427) lt!456174))))

(declare-fun apply!941 (ListLongMap!13871 (_ BitVec 64)) V!37565)

(assert (=> b!1033619 (= (apply!941 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) lt!456174) (apply!941 lt!456164 lt!456174))))

(declare-fun lt!456170 () Unit!33810)

(assert (=> b!1033619 (= lt!456170 lt!456158)))

(declare-fun lt!456176 () ListLongMap!13871)

(assert (=> b!1033619 (= lt!456176 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun lt!456173 () (_ BitVec 64))

(assert (=> b!1033619 (= lt!456173 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456169 () (_ BitVec 64))

(assert (=> b!1033619 (= lt!456169 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456177 () Unit!33810)

(assert (=> b!1033619 (= lt!456177 (addApplyDifferent!481 lt!456176 lt!456173 lt!456100 lt!456169))))

(assert (=> b!1033619 (= (apply!941 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100)) lt!456169) (apply!941 lt!456176 lt!456169))))

(declare-fun lt!456159 () Unit!33810)

(assert (=> b!1033619 (= lt!456159 lt!456177)))

(declare-fun lt!456175 () ListLongMap!13871)

(assert (=> b!1033619 (= lt!456175 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun lt!456172 () (_ BitVec 64))

(assert (=> b!1033619 (= lt!456172 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456156 () (_ BitVec 64))

(assert (=> b!1033619 (= lt!456156 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033619 (= lt!456171 (addApplyDifferent!481 lt!456175 lt!456172 (minValue!6063 thiss!1427) lt!456156))))

(assert (=> b!1033619 (= (apply!941 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) lt!456156) (apply!941 lt!456175 lt!456156))))

(declare-fun call!43665 () ListLongMap!13871)

(declare-fun call!43664 () ListLongMap!13871)

(declare-fun c!104335 () Bool)

(declare-fun call!43663 () ListLongMap!13871)

(declare-fun bm!43659 () Bool)

(declare-fun c!104333 () Bool)

(declare-fun call!43666 () ListLongMap!13871)

(assert (=> bm!43659 (= call!43664 (+!3064 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663)) (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1033620 () Bool)

(declare-fun e!584303 () Bool)

(assert (=> b!1033620 (= e!584303 (= (apply!941 lt!456160 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6063 thiss!1427)))))

(declare-fun bm!43660 () Bool)

(assert (=> bm!43660 (= call!43663 call!43666)))

(declare-fun bm!43661 () Bool)

(assert (=> bm!43661 (= call!43665 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun b!1033621 () Bool)

(declare-fun e!584304 () ListLongMap!13871)

(assert (=> b!1033621 (= e!584304 call!43663)))

(declare-fun b!1033622 () Bool)

(declare-fun e!584309 () Bool)

(assert (=> b!1033622 (= e!584306 e!584309)))

(declare-fun c!104332 () Bool)

(assert (=> b!1033622 (= c!104332 (not (= (bvand (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!43662 () Bool)

(assert (=> bm!43662 (= call!43666 call!43665)))

(declare-fun b!1033623 () Bool)

(declare-fun res!690677 () Bool)

(assert (=> b!1033623 (=> (not res!690677) (not e!584306))))

(assert (=> b!1033623 (= res!690677 e!584308)))

(declare-fun c!104336 () Bool)

(assert (=> b!1033623 (= c!104336 (not (= (bvand (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43663 () Bool)

(assert (=> bm!43663 (= call!43662 (contains!6035 lt!456160 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033624 () Bool)

(assert (=> b!1033624 (= e!584309 e!584303)))

(declare-fun res!690670 () Bool)

(assert (=> b!1033624 (= res!690670 call!43660)))

(assert (=> b!1033624 (=> (not res!690670) (not e!584303))))

(declare-fun b!1033625 () Bool)

(declare-fun e!584311 () ListLongMap!13871)

(declare-fun call!43661 () ListLongMap!13871)

(assert (=> b!1033625 (= e!584311 call!43661)))

(declare-fun b!1033626 () Bool)

(assert (=> b!1033626 (= e!584309 (not call!43660))))

(declare-fun b!1033627 () Bool)

(declare-fun e!584314 () ListLongMap!13871)

(assert (=> b!1033627 (= e!584314 e!584311)))

(assert (=> b!1033627 (= c!104335 (and (not (= (bvand (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!123759 () Bool)

(assert (=> d!123759 e!584306))

(declare-fun res!690674 () Bool)

(assert (=> d!123759 (=> (not res!690674) (not e!584306))))

(assert (=> d!123759 (= res!690674 (or (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))))

(declare-fun lt!456167 () ListLongMap!13871)

(assert (=> d!123759 (= lt!456160 lt!456167)))

(declare-fun lt!456162 () Unit!33810)

(assert (=> d!123759 (= lt!456162 e!584315)))

(declare-fun c!104331 () Bool)

(assert (=> d!123759 (= c!104331 e!584307)))

(declare-fun res!690678 () Bool)

(assert (=> d!123759 (=> (not res!690678) (not e!584307))))

(assert (=> d!123759 (= res!690678 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!123759 (= lt!456167 e!584314)))

(assert (=> d!123759 (= c!104333 (and (not (= (bvand (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!123759 (validMask!0 (mask!30079 thiss!1427))))

(assert (=> d!123759 (= (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)) lt!456160)))

(declare-fun bm!43658 () Bool)

(assert (=> bm!43658 (= call!43661 call!43664)))

(declare-fun b!1033628 () Bool)

(assert (=> b!1033628 (= e!584314 (+!3064 call!43664 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(declare-fun b!1033629 () Bool)

(declare-fun get!16444 (ValueCell!11556 V!37565) V!37565)

(assert (=> b!1033629 (= e!584310 (= (apply!941 lt!456160 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1033629 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31865 (_values!6250 thiss!1427))))))

(assert (=> b!1033629 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1033630 () Bool)

(declare-fun e!584305 () Bool)

(assert (=> b!1033630 (= e!584308 e!584305)))

(declare-fun res!690676 () Bool)

(assert (=> b!1033630 (= res!690676 call!43662)))

(assert (=> b!1033630 (=> (not res!690676) (not e!584305))))

(declare-fun b!1033631 () Bool)

(assert (=> b!1033631 (= e!584305 (= (apply!941 lt!456160 #b0000000000000000000000000000000000000000000000000000000000000000) lt!456100))))

(declare-fun b!1033632 () Bool)

(assert (=> b!1033632 (= e!584304 call!43661)))

(declare-fun b!1033633 () Bool)

(declare-fun c!104334 () Bool)

(assert (=> b!1033633 (= c!104334 (and (not (= (bvand (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1033633 (= e!584311 e!584304)))

(assert (= (and d!123759 c!104333) b!1033628))

(assert (= (and d!123759 (not c!104333)) b!1033627))

(assert (= (and b!1033627 c!104335) b!1033625))

(assert (= (and b!1033627 (not c!104335)) b!1033633))

(assert (= (and b!1033633 c!104334) b!1033632))

(assert (= (and b!1033633 (not c!104334)) b!1033621))

(assert (= (or b!1033632 b!1033621) bm!43660))

(assert (= (or b!1033625 bm!43660) bm!43662))

(assert (= (or b!1033625 b!1033632) bm!43658))

(assert (= (or b!1033628 bm!43662) bm!43661))

(assert (= (or b!1033628 bm!43658) bm!43659))

(assert (= (and d!123759 res!690678) b!1033613))

(assert (= (and d!123759 c!104331) b!1033619))

(assert (= (and d!123759 (not c!104331)) b!1033615))

(assert (= (and d!123759 res!690674) b!1033616))

(assert (= (and b!1033616 res!690672) b!1033618))

(assert (= (and b!1033616 (not res!690673)) b!1033614))

(assert (= (and b!1033614 res!690671) b!1033629))

(assert (= (and b!1033616 res!690675) b!1033623))

(assert (= (and b!1033623 c!104336) b!1033630))

(assert (= (and b!1033623 (not c!104336)) b!1033617))

(assert (= (and b!1033630 res!690676) b!1033631))

(assert (= (or b!1033630 b!1033617) bm!43663))

(assert (= (and b!1033623 res!690677) b!1033622))

(assert (= (and b!1033622 c!104332) b!1033624))

(assert (= (and b!1033622 (not c!104332)) b!1033626))

(assert (= (and b!1033624 res!690670) b!1033620))

(assert (= (or b!1033624 b!1033626) bm!43657))

(declare-fun b_lambda!16083 () Bool)

(assert (=> (not b_lambda!16083) (not b!1033629)))

(assert (=> b!1033629 t!31226))

(declare-fun b_and!33295 () Bool)

(assert (= b_and!33289 (and (=> t!31226 result!14395) b_and!33295)))

(declare-fun m!953429 () Bool)

(assert (=> bm!43659 m!953429))

(declare-fun m!953431 () Bool)

(assert (=> b!1033628 m!953431))

(declare-fun m!953433 () Bool)

(assert (=> b!1033631 m!953433))

(declare-fun m!953435 () Bool)

(assert (=> b!1033618 m!953435))

(assert (=> b!1033618 m!953435))

(declare-fun m!953437 () Bool)

(assert (=> b!1033618 m!953437))

(declare-fun m!953439 () Bool)

(assert (=> bm!43661 m!953439))

(assert (=> b!1033613 m!953435))

(assert (=> b!1033613 m!953435))

(assert (=> b!1033613 m!953437))

(declare-fun m!953441 () Bool)

(assert (=> bm!43663 m!953441))

(assert (=> b!1033614 m!953435))

(assert (=> b!1033614 m!953435))

(declare-fun m!953443 () Bool)

(assert (=> b!1033614 m!953443))

(declare-fun m!953445 () Bool)

(assert (=> b!1033629 m!953445))

(assert (=> b!1033629 m!953385))

(assert (=> b!1033629 m!953445))

(assert (=> b!1033629 m!953385))

(declare-fun m!953447 () Bool)

(assert (=> b!1033629 m!953447))

(assert (=> b!1033629 m!953435))

(assert (=> b!1033629 m!953435))

(declare-fun m!953449 () Bool)

(assert (=> b!1033629 m!953449))

(assert (=> b!1033619 m!953439))

(declare-fun m!953451 () Bool)

(assert (=> b!1033619 m!953451))

(declare-fun m!953453 () Bool)

(assert (=> b!1033619 m!953453))

(declare-fun m!953455 () Bool)

(assert (=> b!1033619 m!953455))

(declare-fun m!953457 () Bool)

(assert (=> b!1033619 m!953457))

(assert (=> b!1033619 m!953457))

(declare-fun m!953459 () Bool)

(assert (=> b!1033619 m!953459))

(declare-fun m!953461 () Bool)

(assert (=> b!1033619 m!953461))

(declare-fun m!953463 () Bool)

(assert (=> b!1033619 m!953463))

(declare-fun m!953465 () Bool)

(assert (=> b!1033619 m!953465))

(declare-fun m!953467 () Bool)

(assert (=> b!1033619 m!953467))

(declare-fun m!953469 () Bool)

(assert (=> b!1033619 m!953469))

(declare-fun m!953471 () Bool)

(assert (=> b!1033619 m!953471))

(declare-fun m!953473 () Bool)

(assert (=> b!1033619 m!953473))

(assert (=> b!1033619 m!953471))

(assert (=> b!1033619 m!953463))

(declare-fun m!953475 () Bool)

(assert (=> b!1033619 m!953475))

(assert (=> b!1033619 m!953435))

(assert (=> b!1033619 m!953461))

(declare-fun m!953477 () Bool)

(assert (=> b!1033619 m!953477))

(declare-fun m!953479 () Bool)

(assert (=> b!1033619 m!953479))

(declare-fun m!953481 () Bool)

(assert (=> bm!43657 m!953481))

(declare-fun m!953483 () Bool)

(assert (=> d!123759 m!953483))

(declare-fun m!953485 () Bool)

(assert (=> b!1033620 m!953485))

(assert (=> b!1033539 d!123759))

(declare-fun d!123761 () Bool)

(assert (=> d!123761 (= (-!527 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun lt!456180 () Unit!33810)

(declare-fun choose!1702 (array!65102 array!65104 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!37565 V!37565 V!37565 Int) Unit!33810)

(assert (=> d!123761 (= lt!456180 (choose!1702 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) (zeroValue!6063 thiss!1427) lt!456100 (minValue!6063 thiss!1427) (defaultEntry!6227 thiss!1427)))))

(assert (=> d!123761 (validMask!0 (mask!30079 thiss!1427))))

(assert (=> d!123761 (= (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!10 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) (zeroValue!6063 thiss!1427) lt!456100 (minValue!6063 thiss!1427) (defaultEntry!6227 thiss!1427)) lt!456180)))

(declare-fun bs!30207 () Bool)

(assert (= bs!30207 d!123761))

(declare-fun m!953487 () Bool)

(assert (=> bs!30207 m!953487))

(assert (=> bs!30207 m!953387))

(assert (=> bs!30207 m!953389))

(assert (=> bs!30207 m!953387))

(assert (=> bs!30207 m!953379))

(assert (=> bs!30207 m!953483))

(assert (=> b!1033539 d!123761))

(declare-fun d!123763 () Bool)

(declare-fun res!690685 () Bool)

(declare-fun e!584318 () Bool)

(assert (=> d!123763 (=> (not res!690685) (not e!584318))))

(declare-fun simpleValid!404 (LongMapFixedSize!5706) Bool)

(assert (=> d!123763 (= res!690685 (simpleValid!404 lt!456102))))

(assert (=> d!123763 (= (valid!2105 lt!456102) e!584318)))

(declare-fun b!1033640 () Bool)

(declare-fun res!690686 () Bool)

(assert (=> b!1033640 (=> (not res!690686) (not e!584318))))

(declare-fun arrayCountValidKeys!0 (array!65102 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1033640 (= res!690686 (= (arrayCountValidKeys!0 (_keys!11404 lt!456102) #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))) (_size!2908 lt!456102)))))

(declare-fun b!1033641 () Bool)

(declare-fun res!690687 () Bool)

(assert (=> b!1033641 (=> (not res!690687) (not e!584318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65102 (_ BitVec 32)) Bool)

(assert (=> b!1033641 (= res!690687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11404 lt!456102) (mask!30079 lt!456102)))))

(declare-fun b!1033642 () Bool)

(declare-datatypes ((List!22023 0))(
  ( (Nil!22020) (Cons!22019 (h!23221 (_ BitVec 64)) (t!31230 List!22023)) )
))
(declare-fun arrayNoDuplicates!0 (array!65102 (_ BitVec 32) List!22023) Bool)

(assert (=> b!1033642 (= e!584318 (arrayNoDuplicates!0 (_keys!11404 lt!456102) #b00000000000000000000000000000000 Nil!22020))))

(assert (= (and d!123763 res!690685) b!1033640))

(assert (= (and b!1033640 res!690686) b!1033641))

(assert (= (and b!1033641 res!690687) b!1033642))

(declare-fun m!953489 () Bool)

(assert (=> d!123763 m!953489))

(declare-fun m!953491 () Bool)

(assert (=> b!1033640 m!953491))

(declare-fun m!953493 () Bool)

(assert (=> b!1033641 m!953493))

(declare-fun m!953495 () Bool)

(assert (=> b!1033642 m!953495))

(assert (=> b!1033539 d!123763))

(declare-fun d!123765 () Bool)

(declare-fun lt!456183 () ListLongMap!13871)

(assert (=> d!123765 (not (contains!6035 lt!456183 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun removeStrictlySorted!57 (List!22022 (_ BitVec 64)) List!22022)

(assert (=> d!123765 (= lt!456183 (ListLongMap!13872 (removeStrictlySorted!57 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123765 (= (-!527 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) lt!456183)))

(declare-fun bs!30208 () Bool)

(assert (= bs!30208 d!123765))

(declare-fun m!953497 () Bool)

(assert (=> bs!30208 m!953497))

(declare-fun m!953499 () Bool)

(assert (=> bs!30208 m!953499))

(assert (=> b!1033539 d!123765))

(declare-fun b!1033643 () Bool)

(declare-fun e!584323 () Bool)

(assert (=> b!1033643 (= e!584323 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033644 () Bool)

(declare-fun e!584329 () Bool)

(declare-fun e!584326 () Bool)

(assert (=> b!1033644 (= e!584329 e!584326)))

(declare-fun res!690689 () Bool)

(assert (=> b!1033644 (=> (not res!690689) (not e!584326))))

(declare-fun lt!456188 () ListLongMap!13871)

(assert (=> b!1033644 (= res!690689 (contains!6035 lt!456188 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033644 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1033645 () Bool)

(declare-fun e!584331 () Unit!33810)

(declare-fun Unit!33813 () Unit!33810)

(assert (=> b!1033645 (= e!584331 Unit!33813)))

(declare-fun bm!43664 () Bool)

(declare-fun call!43667 () Bool)

(assert (=> bm!43664 (= call!43667 (contains!6035 lt!456188 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033646 () Bool)

(declare-fun res!690693 () Bool)

(declare-fun e!584322 () Bool)

(assert (=> b!1033646 (=> (not res!690693) (not e!584322))))

(assert (=> b!1033646 (= res!690693 e!584329)))

(declare-fun res!690691 () Bool)

(assert (=> b!1033646 (=> res!690691 e!584329)))

(declare-fun e!584328 () Bool)

(assert (=> b!1033646 (= res!690691 (not e!584328))))

(declare-fun res!690690 () Bool)

(assert (=> b!1033646 (=> (not res!690690) (not e!584328))))

(assert (=> b!1033646 (= res!690690 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1033647 () Bool)

(declare-fun e!584324 () Bool)

(declare-fun call!43669 () Bool)

(assert (=> b!1033647 (= e!584324 (not call!43669))))

(declare-fun b!1033648 () Bool)

(assert (=> b!1033648 (= e!584328 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033649 () Bool)

(declare-fun lt!456199 () Unit!33810)

(assert (=> b!1033649 (= e!584331 lt!456199)))

(declare-fun lt!456185 () ListLongMap!13871)

(assert (=> b!1033649 (= lt!456185 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun lt!456193 () (_ BitVec 64))

(assert (=> b!1033649 (= lt!456193 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456196 () (_ BitVec 64))

(assert (=> b!1033649 (= lt!456196 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456189 () Unit!33810)

(assert (=> b!1033649 (= lt!456189 (addStillContains!629 lt!456185 lt!456193 (zeroValue!6063 thiss!1427) lt!456196))))

(assert (=> b!1033649 (contains!6035 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) lt!456196)))

(declare-fun lt!456191 () Unit!33810)

(assert (=> b!1033649 (= lt!456191 lt!456189)))

(declare-fun lt!456192 () ListLongMap!13871)

(assert (=> b!1033649 (= lt!456192 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun lt!456194 () (_ BitVec 64))

(assert (=> b!1033649 (= lt!456194 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456202 () (_ BitVec 64))

(assert (=> b!1033649 (= lt!456202 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456186 () Unit!33810)

(assert (=> b!1033649 (= lt!456186 (addApplyDifferent!481 lt!456192 lt!456194 (minValue!6063 thiss!1427) lt!456202))))

(assert (=> b!1033649 (= (apply!941 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) lt!456202) (apply!941 lt!456192 lt!456202))))

(declare-fun lt!456198 () Unit!33810)

(assert (=> b!1033649 (= lt!456198 lt!456186)))

(declare-fun lt!456204 () ListLongMap!13871)

(assert (=> b!1033649 (= lt!456204 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun lt!456201 () (_ BitVec 64))

(assert (=> b!1033649 (= lt!456201 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456197 () (_ BitVec 64))

(assert (=> b!1033649 (= lt!456197 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456205 () Unit!33810)

(assert (=> b!1033649 (= lt!456205 (addApplyDifferent!481 lt!456204 lt!456201 (zeroValue!6063 thiss!1427) lt!456197))))

(assert (=> b!1033649 (= (apply!941 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) lt!456197) (apply!941 lt!456204 lt!456197))))

(declare-fun lt!456187 () Unit!33810)

(assert (=> b!1033649 (= lt!456187 lt!456205)))

(declare-fun lt!456203 () ListLongMap!13871)

(assert (=> b!1033649 (= lt!456203 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun lt!456200 () (_ BitVec 64))

(assert (=> b!1033649 (= lt!456200 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456184 () (_ BitVec 64))

(assert (=> b!1033649 (= lt!456184 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033649 (= lt!456199 (addApplyDifferent!481 lt!456203 lt!456200 (minValue!6063 thiss!1427) lt!456184))))

(assert (=> b!1033649 (= (apply!941 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) lt!456184) (apply!941 lt!456203 lt!456184))))

(declare-fun call!43670 () ListLongMap!13871)

(declare-fun call!43671 () ListLongMap!13871)

(declare-fun bm!43666 () Bool)

(declare-fun call!43672 () ListLongMap!13871)

(declare-fun c!104339 () Bool)

(declare-fun call!43673 () ListLongMap!13871)

(declare-fun c!104341 () Bool)

(assert (=> bm!43666 (= call!43671 (+!3064 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670)) (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1033650 () Bool)

(declare-fun e!584319 () Bool)

(assert (=> b!1033650 (= e!584319 (= (apply!941 lt!456188 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6063 thiss!1427)))))

(declare-fun bm!43667 () Bool)

(assert (=> bm!43667 (= call!43670 call!43673)))

(declare-fun bm!43668 () Bool)

(assert (=> bm!43668 (= call!43672 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun b!1033651 () Bool)

(declare-fun e!584320 () ListLongMap!13871)

(assert (=> b!1033651 (= e!584320 call!43670)))

(declare-fun b!1033652 () Bool)

(declare-fun e!584325 () Bool)

(assert (=> b!1033652 (= e!584322 e!584325)))

(declare-fun c!104338 () Bool)

(assert (=> b!1033652 (= c!104338 (not (= (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!43669 () Bool)

(assert (=> bm!43669 (= call!43673 call!43672)))

(declare-fun b!1033653 () Bool)

(declare-fun res!690695 () Bool)

(assert (=> b!1033653 (=> (not res!690695) (not e!584322))))

(assert (=> b!1033653 (= res!690695 e!584324)))

(declare-fun c!104342 () Bool)

(assert (=> b!1033653 (= c!104342 (not (= (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43670 () Bool)

(assert (=> bm!43670 (= call!43669 (contains!6035 lt!456188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033654 () Bool)

(assert (=> b!1033654 (= e!584325 e!584319)))

(declare-fun res!690688 () Bool)

(assert (=> b!1033654 (= res!690688 call!43667)))

(assert (=> b!1033654 (=> (not res!690688) (not e!584319))))

(declare-fun b!1033655 () Bool)

(declare-fun e!584327 () ListLongMap!13871)

(declare-fun call!43668 () ListLongMap!13871)

(assert (=> b!1033655 (= e!584327 call!43668)))

(declare-fun b!1033656 () Bool)

(assert (=> b!1033656 (= e!584325 (not call!43667))))

(declare-fun b!1033657 () Bool)

(declare-fun e!584330 () ListLongMap!13871)

(assert (=> b!1033657 (= e!584330 e!584327)))

(assert (=> b!1033657 (= c!104341 (and (not (= (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!123767 () Bool)

(assert (=> d!123767 e!584322))

(declare-fun res!690692 () Bool)

(assert (=> d!123767 (=> (not res!690692) (not e!584322))))

(assert (=> d!123767 (= res!690692 (or (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))))

(declare-fun lt!456195 () ListLongMap!13871)

(assert (=> d!123767 (= lt!456188 lt!456195)))

(declare-fun lt!456190 () Unit!33810)

(assert (=> d!123767 (= lt!456190 e!584331)))

(declare-fun c!104337 () Bool)

(assert (=> d!123767 (= c!104337 e!584323)))

(declare-fun res!690696 () Bool)

(assert (=> d!123767 (=> (not res!690696) (not e!584323))))

(assert (=> d!123767 (= res!690696 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!123767 (= lt!456195 e!584330)))

(assert (=> d!123767 (= c!104339 (and (not (= (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123767 (validMask!0 (mask!30079 thiss!1427))))

(assert (=> d!123767 (= (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)) lt!456188)))

(declare-fun bm!43665 () Bool)

(assert (=> bm!43665 (= call!43668 call!43671)))

(declare-fun b!1033658 () Bool)

(assert (=> b!1033658 (= e!584330 (+!3064 call!43671 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(declare-fun b!1033659 () Bool)

(assert (=> b!1033659 (= e!584326 (= (apply!941 lt!456188 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1033659 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31865 (_values!6250 thiss!1427))))))

(assert (=> b!1033659 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1033660 () Bool)

(declare-fun e!584321 () Bool)

(assert (=> b!1033660 (= e!584324 e!584321)))

(declare-fun res!690694 () Bool)

(assert (=> b!1033660 (= res!690694 call!43669)))

(assert (=> b!1033660 (=> (not res!690694) (not e!584321))))

(declare-fun b!1033661 () Bool)

(assert (=> b!1033661 (= e!584321 (= (apply!941 lt!456188 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6063 thiss!1427)))))

(declare-fun b!1033662 () Bool)

(assert (=> b!1033662 (= e!584320 call!43668)))

(declare-fun b!1033663 () Bool)

(declare-fun c!104340 () Bool)

(assert (=> b!1033663 (= c!104340 (and (not (= (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1033663 (= e!584327 e!584320)))

(assert (= (and d!123767 c!104339) b!1033658))

(assert (= (and d!123767 (not c!104339)) b!1033657))

(assert (= (and b!1033657 c!104341) b!1033655))

(assert (= (and b!1033657 (not c!104341)) b!1033663))

(assert (= (and b!1033663 c!104340) b!1033662))

(assert (= (and b!1033663 (not c!104340)) b!1033651))

(assert (= (or b!1033662 b!1033651) bm!43667))

(assert (= (or b!1033655 bm!43667) bm!43669))

(assert (= (or b!1033655 b!1033662) bm!43665))

(assert (= (or b!1033658 bm!43669) bm!43668))

(assert (= (or b!1033658 bm!43665) bm!43666))

(assert (= (and d!123767 res!690696) b!1033643))

(assert (= (and d!123767 c!104337) b!1033649))

(assert (= (and d!123767 (not c!104337)) b!1033645))

(assert (= (and d!123767 res!690692) b!1033646))

(assert (= (and b!1033646 res!690690) b!1033648))

(assert (= (and b!1033646 (not res!690691)) b!1033644))

(assert (= (and b!1033644 res!690689) b!1033659))

(assert (= (and b!1033646 res!690693) b!1033653))

(assert (= (and b!1033653 c!104342) b!1033660))

(assert (= (and b!1033653 (not c!104342)) b!1033647))

(assert (= (and b!1033660 res!690694) b!1033661))

(assert (= (or b!1033660 b!1033647) bm!43670))

(assert (= (and b!1033653 res!690695) b!1033652))

(assert (= (and b!1033652 c!104338) b!1033654))

(assert (= (and b!1033652 (not c!104338)) b!1033656))

(assert (= (and b!1033654 res!690688) b!1033650))

(assert (= (or b!1033654 b!1033656) bm!43664))

(declare-fun b_lambda!16085 () Bool)

(assert (=> (not b_lambda!16085) (not b!1033659)))

(assert (=> b!1033659 t!31226))

(declare-fun b_and!33297 () Bool)

(assert (= b_and!33295 (and (=> t!31226 result!14395) b_and!33297)))

(declare-fun m!953501 () Bool)

(assert (=> bm!43666 m!953501))

(declare-fun m!953503 () Bool)

(assert (=> b!1033658 m!953503))

(declare-fun m!953505 () Bool)

(assert (=> b!1033661 m!953505))

(assert (=> b!1033648 m!953435))

(assert (=> b!1033648 m!953435))

(assert (=> b!1033648 m!953437))

(declare-fun m!953507 () Bool)

(assert (=> bm!43668 m!953507))

(assert (=> b!1033643 m!953435))

(assert (=> b!1033643 m!953435))

(assert (=> b!1033643 m!953437))

(declare-fun m!953509 () Bool)

(assert (=> bm!43670 m!953509))

(assert (=> b!1033644 m!953435))

(assert (=> b!1033644 m!953435))

(declare-fun m!953511 () Bool)

(assert (=> b!1033644 m!953511))

(assert (=> b!1033659 m!953445))

(assert (=> b!1033659 m!953385))

(assert (=> b!1033659 m!953445))

(assert (=> b!1033659 m!953385))

(assert (=> b!1033659 m!953447))

(assert (=> b!1033659 m!953435))

(assert (=> b!1033659 m!953435))

(declare-fun m!953513 () Bool)

(assert (=> b!1033659 m!953513))

(assert (=> b!1033649 m!953507))

(declare-fun m!953515 () Bool)

(assert (=> b!1033649 m!953515))

(declare-fun m!953517 () Bool)

(assert (=> b!1033649 m!953517))

(declare-fun m!953519 () Bool)

(assert (=> b!1033649 m!953519))

(declare-fun m!953521 () Bool)

(assert (=> b!1033649 m!953521))

(assert (=> b!1033649 m!953521))

(declare-fun m!953523 () Bool)

(assert (=> b!1033649 m!953523))

(declare-fun m!953525 () Bool)

(assert (=> b!1033649 m!953525))

(declare-fun m!953527 () Bool)

(assert (=> b!1033649 m!953527))

(declare-fun m!953529 () Bool)

(assert (=> b!1033649 m!953529))

(declare-fun m!953531 () Bool)

(assert (=> b!1033649 m!953531))

(declare-fun m!953533 () Bool)

(assert (=> b!1033649 m!953533))

(declare-fun m!953535 () Bool)

(assert (=> b!1033649 m!953535))

(declare-fun m!953537 () Bool)

(assert (=> b!1033649 m!953537))

(assert (=> b!1033649 m!953535))

(assert (=> b!1033649 m!953527))

(declare-fun m!953539 () Bool)

(assert (=> b!1033649 m!953539))

(assert (=> b!1033649 m!953435))

(assert (=> b!1033649 m!953525))

(declare-fun m!953541 () Bool)

(assert (=> b!1033649 m!953541))

(declare-fun m!953543 () Bool)

(assert (=> b!1033649 m!953543))

(declare-fun m!953545 () Bool)

(assert (=> bm!43664 m!953545))

(assert (=> d!123767 m!953483))

(declare-fun m!953547 () Bool)

(assert (=> b!1033650 m!953547))

(assert (=> b!1033539 d!123767))

(declare-fun d!123769 () Bool)

(assert (=> d!123769 (= (map!14707 lt!456102) (getCurrentListMap!3957 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) #b00000000000000000000000000000000 (defaultEntry!6227 lt!456102)))))

(declare-fun bs!30209 () Bool)

(assert (= bs!30209 d!123769))

(declare-fun m!953549 () Bool)

(assert (=> bs!30209 m!953549))

(assert (=> b!1033543 d!123769))

(declare-fun d!123771 () Bool)

(declare-fun lt!456206 () ListLongMap!13871)

(assert (=> d!123771 (not (contains!6035 lt!456206 key!909))))

(assert (=> d!123771 (= lt!456206 (ListLongMap!13872 (removeStrictlySorted!57 (toList!6951 (map!14707 thiss!1427)) key!909)))))

(assert (=> d!123771 (= (-!527 (map!14707 thiss!1427) key!909) lt!456206)))

(declare-fun bs!30210 () Bool)

(assert (= bs!30210 d!123771))

(declare-fun m!953551 () Bool)

(assert (=> bs!30210 m!953551))

(declare-fun m!953553 () Bool)

(assert (=> bs!30210 m!953553))

(assert (=> b!1033543 d!123771))

(declare-fun d!123773 () Bool)

(assert (=> d!123773 (= (map!14707 thiss!1427) (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(declare-fun bs!30211 () Bool)

(assert (= bs!30211 d!123773))

(assert (=> bs!30211 m!953387))

(assert (=> b!1033543 d!123773))

(declare-fun d!123775 () Bool)

(declare-fun res!690697 () Bool)

(declare-fun e!584332 () Bool)

(assert (=> d!123775 (=> (not res!690697) (not e!584332))))

(assert (=> d!123775 (= res!690697 (simpleValid!404 thiss!1427))))

(assert (=> d!123775 (= (valid!2105 thiss!1427) e!584332)))

(declare-fun b!1033664 () Bool)

(declare-fun res!690698 () Bool)

(assert (=> b!1033664 (=> (not res!690698) (not e!584332))))

(assert (=> b!1033664 (= res!690698 (= (arrayCountValidKeys!0 (_keys!11404 thiss!1427) #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))) (_size!2908 thiss!1427)))))

(declare-fun b!1033665 () Bool)

(declare-fun res!690699 () Bool)

(assert (=> b!1033665 (=> (not res!690699) (not e!584332))))

(assert (=> b!1033665 (= res!690699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11404 thiss!1427) (mask!30079 thiss!1427)))))

(declare-fun b!1033666 () Bool)

(assert (=> b!1033666 (= e!584332 (arrayNoDuplicates!0 (_keys!11404 thiss!1427) #b00000000000000000000000000000000 Nil!22020))))

(assert (= (and d!123775 res!690697) b!1033664))

(assert (= (and b!1033664 res!690698) b!1033665))

(assert (= (and b!1033665 res!690699) b!1033666))

(declare-fun m!953555 () Bool)

(assert (=> d!123775 m!953555))

(declare-fun m!953557 () Bool)

(assert (=> b!1033664 m!953557))

(declare-fun m!953559 () Bool)

(assert (=> b!1033665 m!953559))

(declare-fun m!953561 () Bool)

(assert (=> b!1033666 m!953561))

(assert (=> start!90338 d!123775))

(declare-fun d!123777 () Bool)

(assert (=> d!123777 (= (array_inv!24081 (_keys!11404 thiss!1427)) (bvsge (size!31864 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033541 d!123777))

(declare-fun d!123779 () Bool)

(assert (=> d!123779 (= (array_inv!24082 (_values!6250 thiss!1427)) (bvsge (size!31865 (_values!6250 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033541 d!123779))

(declare-fun condMapEmpty!38267 () Bool)

(declare-fun mapDefault!38267 () ValueCell!11556)

(assert (=> mapNonEmpty!38261 (= condMapEmpty!38267 (= mapRest!38261 ((as const (Array (_ BitVec 32) ValueCell!11556)) mapDefault!38267)))))

(declare-fun e!584337 () Bool)

(declare-fun mapRes!38267 () Bool)

(assert (=> mapNonEmpty!38261 (= tp!73497 (and e!584337 mapRes!38267))))

(declare-fun mapIsEmpty!38267 () Bool)

(assert (=> mapIsEmpty!38267 mapRes!38267))

(declare-fun mapNonEmpty!38267 () Bool)

(declare-fun tp!73507 () Bool)

(declare-fun e!584338 () Bool)

(assert (=> mapNonEmpty!38267 (= mapRes!38267 (and tp!73507 e!584338))))

(declare-fun mapRest!38267 () (Array (_ BitVec 32) ValueCell!11556))

(declare-fun mapValue!38267 () ValueCell!11556)

(declare-fun mapKey!38267 () (_ BitVec 32))

(assert (=> mapNonEmpty!38267 (= mapRest!38261 (store mapRest!38267 mapKey!38267 mapValue!38267))))

(declare-fun b!1033673 () Bool)

(assert (=> b!1033673 (= e!584338 tp_is_empty!24519)))

(declare-fun b!1033674 () Bool)

(assert (=> b!1033674 (= e!584337 tp_is_empty!24519)))

(assert (= (and mapNonEmpty!38261 condMapEmpty!38267) mapIsEmpty!38267))

(assert (= (and mapNonEmpty!38261 (not condMapEmpty!38267)) mapNonEmpty!38267))

(assert (= (and mapNonEmpty!38267 ((_ is ValueCellFull!11556) mapValue!38267)) b!1033673))

(assert (= (and mapNonEmpty!38261 ((_ is ValueCellFull!11556) mapDefault!38267)) b!1033674))

(declare-fun m!953563 () Bool)

(assert (=> mapNonEmpty!38267 m!953563))

(declare-fun b_lambda!16087 () Bool)

(assert (= b_lambda!16083 (or (and b!1033541 b_free!20799) b_lambda!16087)))

(declare-fun b_lambda!16089 () Bool)

(assert (= b_lambda!16085 (or (and b!1033541 b_free!20799) b_lambda!16089)))

(check-sat (not bm!43663) b_and!33297 (not b_lambda!16081) tp_is_empty!24519 (not b!1033641) (not d!123765) (not d!123771) (not d!123769) (not d!123763) (not b!1033661) (not bm!43657) (not bm!43661) (not b!1033643) (not b!1033642) (not b!1033631) (not b!1033659) (not bm!43659) (not b!1033629) (not b!1033648) (not d!123767) (not d!123775) (not b!1033613) (not b_next!20799) (not b!1033664) (not b!1033665) (not bm!43666) (not b!1033618) (not b!1033644) (not bm!43664) (not b!1033640) (not bm!43668) (not b_lambda!16087) (not mapNonEmpty!38267) (not b!1033650) (not b!1033619) (not d!123761) (not b!1033649) (not b_lambda!16089) (not b!1033628) (not b!1033658) (not b!1033666) (not d!123773) (not b!1033614) (not b!1033620) (not bm!43670) (not d!123759))
(check-sat b_and!33297 (not b_next!20799))
(get-model)

(assert (=> d!123773 d!123767))

(declare-fun b!1033699 () Bool)

(declare-fun res!690710 () Bool)

(declare-fun e!584359 () Bool)

(assert (=> b!1033699 (=> (not res!690710) (not e!584359))))

(declare-fun lt!456224 () ListLongMap!13871)

(assert (=> b!1033699 (= res!690710 (not (contains!6035 lt!456224 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033700 () Bool)

(declare-fun e!584353 () Bool)

(declare-fun isEmpty!929 (ListLongMap!13871) Bool)

(assert (=> b!1033700 (= e!584353 (isEmpty!929 lt!456224))))

(declare-fun b!1033701 () Bool)

(declare-fun e!584356 () ListLongMap!13871)

(declare-fun e!584354 () ListLongMap!13871)

(assert (=> b!1033701 (= e!584356 e!584354)))

(declare-fun c!104351 () Bool)

(assert (=> b!1033701 (= c!104351 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033702 () Bool)

(declare-fun e!584357 () Bool)

(assert (=> b!1033702 (= e!584357 e!584353)))

(declare-fun c!104352 () Bool)

(assert (=> b!1033702 (= c!104352 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1033703 () Bool)

(declare-fun e!584358 () Bool)

(assert (=> b!1033703 (= e!584358 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033703 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1033704 () Bool)

(assert (=> b!1033704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> b!1033704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31865 (_values!6250 thiss!1427))))))

(declare-fun e!584355 () Bool)

(assert (=> b!1033704 (= e!584355 (= (apply!941 lt!456224 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1033705 () Bool)

(assert (=> b!1033705 (= e!584353 (= lt!456224 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427))))))

(declare-fun d!123781 () Bool)

(assert (=> d!123781 e!584359))

(declare-fun res!690711 () Bool)

(assert (=> d!123781 (=> (not res!690711) (not e!584359))))

(assert (=> d!123781 (= res!690711 (not (contains!6035 lt!456224 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123781 (= lt!456224 e!584356)))

(declare-fun c!104353 () Bool)

(assert (=> d!123781 (= c!104353 (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!123781 (validMask!0 (mask!30079 thiss!1427))))

(assert (=> d!123781 (= (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)) lt!456224)))

(declare-fun b!1033706 () Bool)

(declare-fun call!43676 () ListLongMap!13871)

(assert (=> b!1033706 (= e!584354 call!43676)))

(declare-fun bm!43673 () Bool)

(assert (=> bm!43673 (= call!43676 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427)))))

(declare-fun b!1033707 () Bool)

(declare-fun lt!456227 () Unit!33810)

(declare-fun lt!456223 () Unit!33810)

(assert (=> b!1033707 (= lt!456227 lt!456223)))

(declare-fun lt!456221 () (_ BitVec 64))

(declare-fun lt!456222 () (_ BitVec 64))

(declare-fun lt!456225 () ListLongMap!13871)

(declare-fun lt!456226 () V!37565)

(assert (=> b!1033707 (not (contains!6035 (+!3064 lt!456225 (tuple2!15835 lt!456222 lt!456226)) lt!456221))))

(declare-fun addStillNotContains!244 (ListLongMap!13871 (_ BitVec 64) V!37565 (_ BitVec 64)) Unit!33810)

(assert (=> b!1033707 (= lt!456223 (addStillNotContains!244 lt!456225 lt!456222 lt!456226 lt!456221))))

(assert (=> b!1033707 (= lt!456221 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1033707 (= lt!456226 (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1033707 (= lt!456222 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033707 (= lt!456225 call!43676)))

(assert (=> b!1033707 (= e!584354 (+!3064 call!43676 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1033708 () Bool)

(assert (=> b!1033708 (= e!584357 e!584355)))

(assert (=> b!1033708 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun res!690709 () Bool)

(assert (=> b!1033708 (= res!690709 (contains!6035 lt!456224 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033708 (=> (not res!690709) (not e!584355))))

(declare-fun b!1033709 () Bool)

(assert (=> b!1033709 (= e!584356 (ListLongMap!13872 Nil!22019))))

(declare-fun b!1033710 () Bool)

(assert (=> b!1033710 (= e!584359 e!584357)))

(declare-fun c!104354 () Bool)

(assert (=> b!1033710 (= c!104354 e!584358)))

(declare-fun res!690708 () Bool)

(assert (=> b!1033710 (=> (not res!690708) (not e!584358))))

(assert (=> b!1033710 (= res!690708 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (= (and d!123781 c!104353) b!1033709))

(assert (= (and d!123781 (not c!104353)) b!1033701))

(assert (= (and b!1033701 c!104351) b!1033707))

(assert (= (and b!1033701 (not c!104351)) b!1033706))

(assert (= (or b!1033707 b!1033706) bm!43673))

(assert (= (and d!123781 res!690711) b!1033699))

(assert (= (and b!1033699 res!690710) b!1033710))

(assert (= (and b!1033710 res!690708) b!1033703))

(assert (= (and b!1033710 c!104354) b!1033708))

(assert (= (and b!1033710 (not c!104354)) b!1033702))

(assert (= (and b!1033708 res!690709) b!1033704))

(assert (= (and b!1033702 c!104352) b!1033705))

(assert (= (and b!1033702 (not c!104352)) b!1033700))

(declare-fun b_lambda!16091 () Bool)

(assert (=> (not b_lambda!16091) (not b!1033704)))

(assert (=> b!1033704 t!31226))

(declare-fun b_and!33299 () Bool)

(assert (= b_and!33297 (and (=> t!31226 result!14395) b_and!33299)))

(declare-fun b_lambda!16093 () Bool)

(assert (=> (not b_lambda!16093) (not b!1033707)))

(assert (=> b!1033707 t!31226))

(declare-fun b_and!33301 () Bool)

(assert (= b_and!33299 (and (=> t!31226 result!14395) b_and!33301)))

(assert (=> b!1033701 m!953435))

(assert (=> b!1033701 m!953435))

(assert (=> b!1033701 m!953437))

(assert (=> b!1033703 m!953435))

(assert (=> b!1033703 m!953435))

(assert (=> b!1033703 m!953437))

(declare-fun m!953565 () Bool)

(assert (=> bm!43673 m!953565))

(assert (=> b!1033708 m!953435))

(assert (=> b!1033708 m!953435))

(declare-fun m!953567 () Bool)

(assert (=> b!1033708 m!953567))

(declare-fun m!953569 () Bool)

(assert (=> b!1033699 m!953569))

(declare-fun m!953571 () Bool)

(assert (=> b!1033707 m!953571))

(assert (=> b!1033707 m!953385))

(declare-fun m!953573 () Bool)

(assert (=> b!1033707 m!953573))

(declare-fun m!953575 () Bool)

(assert (=> b!1033707 m!953575))

(assert (=> b!1033707 m!953445))

(declare-fun m!953577 () Bool)

(assert (=> b!1033707 m!953577))

(assert (=> b!1033707 m!953573))

(assert (=> b!1033707 m!953435))

(assert (=> b!1033707 m!953445))

(assert (=> b!1033707 m!953385))

(assert (=> b!1033707 m!953447))

(assert (=> b!1033704 m!953385))

(assert (=> b!1033704 m!953445))

(assert (=> b!1033704 m!953435))

(assert (=> b!1033704 m!953435))

(declare-fun m!953579 () Bool)

(assert (=> b!1033704 m!953579))

(assert (=> b!1033704 m!953445))

(assert (=> b!1033704 m!953385))

(assert (=> b!1033704 m!953447))

(declare-fun m!953581 () Bool)

(assert (=> b!1033700 m!953581))

(assert (=> b!1033705 m!953565))

(declare-fun m!953583 () Bool)

(assert (=> d!123781 m!953583))

(assert (=> d!123781 m!953483))

(assert (=> bm!43668 d!123781))

(declare-fun b!1033711 () Bool)

(declare-fun res!690714 () Bool)

(declare-fun e!584366 () Bool)

(assert (=> b!1033711 (=> (not res!690714) (not e!584366))))

(declare-fun lt!456231 () ListLongMap!13871)

(assert (=> b!1033711 (= res!690714 (not (contains!6035 lt!456231 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033712 () Bool)

(declare-fun e!584360 () Bool)

(assert (=> b!1033712 (= e!584360 (isEmpty!929 lt!456231))))

(declare-fun b!1033713 () Bool)

(declare-fun e!584363 () ListLongMap!13871)

(declare-fun e!584361 () ListLongMap!13871)

(assert (=> b!1033713 (= e!584363 e!584361)))

(declare-fun c!104355 () Bool)

(assert (=> b!1033713 (= c!104355 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033714 () Bool)

(declare-fun e!584364 () Bool)

(assert (=> b!1033714 (= e!584364 e!584360)))

(declare-fun c!104356 () Bool)

(assert (=> b!1033714 (= c!104356 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1033715 () Bool)

(declare-fun e!584365 () Bool)

(assert (=> b!1033715 (= e!584365 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033715 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1033716 () Bool)

(assert (=> b!1033716 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> b!1033716 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31865 (_values!6250 thiss!1427))))))

(declare-fun e!584362 () Bool)

(assert (=> b!1033716 (= e!584362 (= (apply!941 lt!456231 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1033717 () Bool)

(assert (=> b!1033717 (= e!584360 (= lt!456231 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427))))))

(declare-fun d!123783 () Bool)

(assert (=> d!123783 e!584366))

(declare-fun res!690715 () Bool)

(assert (=> d!123783 (=> (not res!690715) (not e!584366))))

(assert (=> d!123783 (= res!690715 (not (contains!6035 lt!456231 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123783 (= lt!456231 e!584363)))

(declare-fun c!104357 () Bool)

(assert (=> d!123783 (= c!104357 (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!123783 (validMask!0 (mask!30079 thiss!1427))))

(assert (=> d!123783 (= (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)) lt!456231)))

(declare-fun b!1033718 () Bool)

(declare-fun call!43677 () ListLongMap!13871)

(assert (=> b!1033718 (= e!584361 call!43677)))

(declare-fun bm!43674 () Bool)

(assert (=> bm!43674 (= call!43677 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427)))))

(declare-fun b!1033719 () Bool)

(declare-fun lt!456234 () Unit!33810)

(declare-fun lt!456230 () Unit!33810)

(assert (=> b!1033719 (= lt!456234 lt!456230)))

(declare-fun lt!456228 () (_ BitVec 64))

(declare-fun lt!456229 () (_ BitVec 64))

(declare-fun lt!456233 () V!37565)

(declare-fun lt!456232 () ListLongMap!13871)

(assert (=> b!1033719 (not (contains!6035 (+!3064 lt!456232 (tuple2!15835 lt!456229 lt!456233)) lt!456228))))

(assert (=> b!1033719 (= lt!456230 (addStillNotContains!244 lt!456232 lt!456229 lt!456233 lt!456228))))

(assert (=> b!1033719 (= lt!456228 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1033719 (= lt!456233 (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1033719 (= lt!456229 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1033719 (= lt!456232 call!43677)))

(assert (=> b!1033719 (= e!584361 (+!3064 call!43677 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1033720 () Bool)

(assert (=> b!1033720 (= e!584364 e!584362)))

(assert (=> b!1033720 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun res!690713 () Bool)

(assert (=> b!1033720 (= res!690713 (contains!6035 lt!456231 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033720 (=> (not res!690713) (not e!584362))))

(declare-fun b!1033721 () Bool)

(assert (=> b!1033721 (= e!584363 (ListLongMap!13872 Nil!22019))))

(declare-fun b!1033722 () Bool)

(assert (=> b!1033722 (= e!584366 e!584364)))

(declare-fun c!104358 () Bool)

(assert (=> b!1033722 (= c!104358 e!584365)))

(declare-fun res!690712 () Bool)

(assert (=> b!1033722 (=> (not res!690712) (not e!584365))))

(assert (=> b!1033722 (= res!690712 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (= (and d!123783 c!104357) b!1033721))

(assert (= (and d!123783 (not c!104357)) b!1033713))

(assert (= (and b!1033713 c!104355) b!1033719))

(assert (= (and b!1033713 (not c!104355)) b!1033718))

(assert (= (or b!1033719 b!1033718) bm!43674))

(assert (= (and d!123783 res!690715) b!1033711))

(assert (= (and b!1033711 res!690714) b!1033722))

(assert (= (and b!1033722 res!690712) b!1033715))

(assert (= (and b!1033722 c!104358) b!1033720))

(assert (= (and b!1033722 (not c!104358)) b!1033714))

(assert (= (and b!1033720 res!690713) b!1033716))

(assert (= (and b!1033714 c!104356) b!1033717))

(assert (= (and b!1033714 (not c!104356)) b!1033712))

(declare-fun b_lambda!16095 () Bool)

(assert (=> (not b_lambda!16095) (not b!1033716)))

(assert (=> b!1033716 t!31226))

(declare-fun b_and!33303 () Bool)

(assert (= b_and!33301 (and (=> t!31226 result!14395) b_and!33303)))

(declare-fun b_lambda!16097 () Bool)

(assert (=> (not b_lambda!16097) (not b!1033719)))

(assert (=> b!1033719 t!31226))

(declare-fun b_and!33305 () Bool)

(assert (= b_and!33303 (and (=> t!31226 result!14395) b_and!33305)))

(assert (=> b!1033713 m!953435))

(assert (=> b!1033713 m!953435))

(assert (=> b!1033713 m!953437))

(assert (=> b!1033715 m!953435))

(assert (=> b!1033715 m!953435))

(assert (=> b!1033715 m!953437))

(declare-fun m!953585 () Bool)

(assert (=> bm!43674 m!953585))

(assert (=> b!1033720 m!953435))

(assert (=> b!1033720 m!953435))

(declare-fun m!953587 () Bool)

(assert (=> b!1033720 m!953587))

(declare-fun m!953589 () Bool)

(assert (=> b!1033711 m!953589))

(declare-fun m!953591 () Bool)

(assert (=> b!1033719 m!953591))

(assert (=> b!1033719 m!953385))

(declare-fun m!953593 () Bool)

(assert (=> b!1033719 m!953593))

(declare-fun m!953595 () Bool)

(assert (=> b!1033719 m!953595))

(assert (=> b!1033719 m!953445))

(declare-fun m!953597 () Bool)

(assert (=> b!1033719 m!953597))

(assert (=> b!1033719 m!953593))

(assert (=> b!1033719 m!953435))

(assert (=> b!1033719 m!953445))

(assert (=> b!1033719 m!953385))

(assert (=> b!1033719 m!953447))

(assert (=> b!1033716 m!953385))

(assert (=> b!1033716 m!953445))

(assert (=> b!1033716 m!953435))

(assert (=> b!1033716 m!953435))

(declare-fun m!953599 () Bool)

(assert (=> b!1033716 m!953599))

(assert (=> b!1033716 m!953445))

(assert (=> b!1033716 m!953385))

(assert (=> b!1033716 m!953447))

(declare-fun m!953601 () Bool)

(assert (=> b!1033712 m!953601))

(assert (=> b!1033717 m!953585))

(declare-fun m!953603 () Bool)

(assert (=> d!123783 m!953603))

(assert (=> d!123783 m!953483))

(assert (=> bm!43661 d!123783))

(declare-fun d!123785 () Bool)

(declare-fun e!584369 () Bool)

(assert (=> d!123785 e!584369))

(declare-fun res!690721 () Bool)

(assert (=> d!123785 (=> (not res!690721) (not e!584369))))

(declare-fun lt!456244 () ListLongMap!13871)

(assert (=> d!123785 (= res!690721 (contains!6035 lt!456244 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun lt!456243 () List!22022)

(assert (=> d!123785 (= lt!456244 (ListLongMap!13872 lt!456243))))

(declare-fun lt!456246 () Unit!33810)

(declare-fun lt!456245 () Unit!33810)

(assert (=> d!123785 (= lt!456246 lt!456245)))

(declare-datatypes ((Option!642 0))(
  ( (Some!641 (v!14890 V!37565)) (None!640) )
))
(declare-fun getValueByKey!591 (List!22022 (_ BitVec 64)) Option!642)

(assert (=> d!123785 (= (getValueByKey!591 lt!456243 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) (Some!641 (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!280 (List!22022 (_ BitVec 64) V!37565) Unit!33810)

(assert (=> d!123785 (= lt!456245 (lemmaContainsTupThenGetReturnValue!280 lt!456243 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun insertStrictlySorted!372 (List!22022 (_ BitVec 64) V!37565) List!22022)

(assert (=> d!123785 (= lt!456243 (insertStrictlySorted!372 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670))) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!123785 (= (+!3064 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670)) (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456244)))

(declare-fun b!1033727 () Bool)

(declare-fun res!690720 () Bool)

(assert (=> b!1033727 (=> (not res!690720) (not e!584369))))

(assert (=> b!1033727 (= res!690720 (= (getValueByKey!591 (toList!6951 lt!456244) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) (Some!641 (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1033728 () Bool)

(declare-fun contains!6036 (List!22022 tuple2!15834) Bool)

(assert (=> b!1033728 (= e!584369 (contains!6036 (toList!6951 lt!456244) (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (= (and d!123785 res!690721) b!1033727))

(assert (= (and b!1033727 res!690720) b!1033728))

(declare-fun m!953605 () Bool)

(assert (=> d!123785 m!953605))

(declare-fun m!953607 () Bool)

(assert (=> d!123785 m!953607))

(declare-fun m!953609 () Bool)

(assert (=> d!123785 m!953609))

(declare-fun m!953611 () Bool)

(assert (=> d!123785 m!953611))

(declare-fun m!953613 () Bool)

(assert (=> b!1033727 m!953613))

(declare-fun m!953615 () Bool)

(assert (=> b!1033728 m!953615))

(assert (=> bm!43666 d!123785))

(declare-fun d!123787 () Bool)

(assert (=> d!123787 (= (apply!941 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) lt!456202) (apply!941 lt!456192 lt!456202))))

(declare-fun lt!456249 () Unit!33810)

(declare-fun choose!1703 (ListLongMap!13871 (_ BitVec 64) V!37565 (_ BitVec 64)) Unit!33810)

(assert (=> d!123787 (= lt!456249 (choose!1703 lt!456192 lt!456194 (minValue!6063 thiss!1427) lt!456202))))

(declare-fun e!584372 () Bool)

(assert (=> d!123787 e!584372))

(declare-fun res!690724 () Bool)

(assert (=> d!123787 (=> (not res!690724) (not e!584372))))

(assert (=> d!123787 (= res!690724 (contains!6035 lt!456192 lt!456202))))

(assert (=> d!123787 (= (addApplyDifferent!481 lt!456192 lt!456194 (minValue!6063 thiss!1427) lt!456202) lt!456249)))

(declare-fun b!1033732 () Bool)

(assert (=> b!1033732 (= e!584372 (not (= lt!456202 lt!456194)))))

(assert (= (and d!123787 res!690724) b!1033732))

(declare-fun m!953617 () Bool)

(assert (=> d!123787 m!953617))

(assert (=> d!123787 m!953525))

(assert (=> d!123787 m!953541))

(declare-fun m!953619 () Bool)

(assert (=> d!123787 m!953619))

(assert (=> d!123787 m!953525))

(assert (=> d!123787 m!953533))

(assert (=> b!1033649 d!123787))

(declare-fun d!123789 () Bool)

(declare-fun get!16445 (Option!642) V!37565)

(assert (=> d!123789 (= (apply!941 lt!456204 lt!456197) (get!16445 (getValueByKey!591 (toList!6951 lt!456204) lt!456197)))))

(declare-fun bs!30212 () Bool)

(assert (= bs!30212 d!123789))

(declare-fun m!953621 () Bool)

(assert (=> bs!30212 m!953621))

(assert (=> bs!30212 m!953621))

(declare-fun m!953623 () Bool)

(assert (=> bs!30212 m!953623))

(assert (=> b!1033649 d!123789))

(declare-fun d!123791 () Bool)

(assert (=> d!123791 (= (apply!941 lt!456192 lt!456202) (get!16445 (getValueByKey!591 (toList!6951 lt!456192) lt!456202)))))

(declare-fun bs!30213 () Bool)

(assert (= bs!30213 d!123791))

(declare-fun m!953625 () Bool)

(assert (=> bs!30213 m!953625))

(assert (=> bs!30213 m!953625))

(declare-fun m!953627 () Bool)

(assert (=> bs!30213 m!953627))

(assert (=> b!1033649 d!123791))

(declare-fun d!123793 () Bool)

(assert (=> d!123793 (contains!6035 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) lt!456196)))

(declare-fun lt!456252 () Unit!33810)

(declare-fun choose!1704 (ListLongMap!13871 (_ BitVec 64) V!37565 (_ BitVec 64)) Unit!33810)

(assert (=> d!123793 (= lt!456252 (choose!1704 lt!456185 lt!456193 (zeroValue!6063 thiss!1427) lt!456196))))

(assert (=> d!123793 (contains!6035 lt!456185 lt!456196)))

(assert (=> d!123793 (= (addStillContains!629 lt!456185 lt!456193 (zeroValue!6063 thiss!1427) lt!456196) lt!456252)))

(declare-fun bs!30214 () Bool)

(assert (= bs!30214 d!123793))

(assert (=> bs!30214 m!953535))

(assert (=> bs!30214 m!953535))

(assert (=> bs!30214 m!953537))

(declare-fun m!953629 () Bool)

(assert (=> bs!30214 m!953629))

(declare-fun m!953631 () Bool)

(assert (=> bs!30214 m!953631))

(assert (=> b!1033649 d!123793))

(assert (=> b!1033649 d!123781))

(declare-fun d!123795 () Bool)

(assert (=> d!123795 (= (apply!941 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) lt!456184) (apply!941 lt!456203 lt!456184))))

(declare-fun lt!456253 () Unit!33810)

(assert (=> d!123795 (= lt!456253 (choose!1703 lt!456203 lt!456200 (minValue!6063 thiss!1427) lt!456184))))

(declare-fun e!584373 () Bool)

(assert (=> d!123795 e!584373))

(declare-fun res!690725 () Bool)

(assert (=> d!123795 (=> (not res!690725) (not e!584373))))

(assert (=> d!123795 (= res!690725 (contains!6035 lt!456203 lt!456184))))

(assert (=> d!123795 (= (addApplyDifferent!481 lt!456203 lt!456200 (minValue!6063 thiss!1427) lt!456184) lt!456253)))

(declare-fun b!1033734 () Bool)

(assert (=> b!1033734 (= e!584373 (not (= lt!456184 lt!456200)))))

(assert (= (and d!123795 res!690725) b!1033734))

(declare-fun m!953633 () Bool)

(assert (=> d!123795 m!953633))

(assert (=> d!123795 m!953527))

(assert (=> d!123795 m!953539))

(declare-fun m!953635 () Bool)

(assert (=> d!123795 m!953635))

(assert (=> d!123795 m!953527))

(assert (=> d!123795 m!953519))

(assert (=> b!1033649 d!123795))

(declare-fun d!123797 () Bool)

(assert (=> d!123797 (= (apply!941 lt!456203 lt!456184) (get!16445 (getValueByKey!591 (toList!6951 lt!456203) lt!456184)))))

(declare-fun bs!30215 () Bool)

(assert (= bs!30215 d!123797))

(declare-fun m!953637 () Bool)

(assert (=> bs!30215 m!953637))

(assert (=> bs!30215 m!953637))

(declare-fun m!953639 () Bool)

(assert (=> bs!30215 m!953639))

(assert (=> b!1033649 d!123797))

(declare-fun d!123799 () Bool)

(declare-fun e!584374 () Bool)

(assert (=> d!123799 e!584374))

(declare-fun res!690727 () Bool)

(assert (=> d!123799 (=> (not res!690727) (not e!584374))))

(declare-fun lt!456255 () ListLongMap!13871)

(assert (=> d!123799 (= res!690727 (contains!6035 lt!456255 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456254 () List!22022)

(assert (=> d!123799 (= lt!456255 (ListLongMap!13872 lt!456254))))

(declare-fun lt!456257 () Unit!33810)

(declare-fun lt!456256 () Unit!33810)

(assert (=> d!123799 (= lt!456257 lt!456256)))

(assert (=> d!123799 (= (getValueByKey!591 lt!456254 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(assert (=> d!123799 (= lt!456256 (lemmaContainsTupThenGetReturnValue!280 lt!456254 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(assert (=> d!123799 (= lt!456254 (insertStrictlySorted!372 (toList!6951 lt!456192) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(assert (=> d!123799 (= (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) lt!456255)))

(declare-fun b!1033735 () Bool)

(declare-fun res!690726 () Bool)

(assert (=> b!1033735 (=> (not res!690726) (not e!584374))))

(assert (=> b!1033735 (= res!690726 (= (getValueByKey!591 (toList!6951 lt!456255) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))

(declare-fun b!1033736 () Bool)

(assert (=> b!1033736 (= e!584374 (contains!6036 (toList!6951 lt!456255) (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))

(assert (= (and d!123799 res!690727) b!1033735))

(assert (= (and b!1033735 res!690726) b!1033736))

(declare-fun m!953641 () Bool)

(assert (=> d!123799 m!953641))

(declare-fun m!953643 () Bool)

(assert (=> d!123799 m!953643))

(declare-fun m!953645 () Bool)

(assert (=> d!123799 m!953645))

(declare-fun m!953647 () Bool)

(assert (=> d!123799 m!953647))

(declare-fun m!953649 () Bool)

(assert (=> b!1033735 m!953649))

(declare-fun m!953651 () Bool)

(assert (=> b!1033736 m!953651))

(assert (=> b!1033649 d!123799))

(declare-fun d!123801 () Bool)

(assert (=> d!123801 (= (apply!941 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) lt!456202) (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) lt!456202)))))

(declare-fun bs!30216 () Bool)

(assert (= bs!30216 d!123801))

(declare-fun m!953653 () Bool)

(assert (=> bs!30216 m!953653))

(assert (=> bs!30216 m!953653))

(declare-fun m!953655 () Bool)

(assert (=> bs!30216 m!953655))

(assert (=> b!1033649 d!123801))

(declare-fun d!123803 () Bool)

(declare-fun e!584375 () Bool)

(assert (=> d!123803 e!584375))

(declare-fun res!690729 () Bool)

(assert (=> d!123803 (=> (not res!690729) (not e!584375))))

(declare-fun lt!456259 () ListLongMap!13871)

(assert (=> d!123803 (= res!690729 (contains!6035 lt!456259 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456258 () List!22022)

(assert (=> d!123803 (= lt!456259 (ListLongMap!13872 lt!456258))))

(declare-fun lt!456261 () Unit!33810)

(declare-fun lt!456260 () Unit!33810)

(assert (=> d!123803 (= lt!456261 lt!456260)))

(assert (=> d!123803 (= (getValueByKey!591 lt!456258 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(assert (=> d!123803 (= lt!456260 (lemmaContainsTupThenGetReturnValue!280 lt!456258 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(assert (=> d!123803 (= lt!456258 (insertStrictlySorted!372 (toList!6951 lt!456203) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(assert (=> d!123803 (= (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) lt!456259)))

(declare-fun b!1033737 () Bool)

(declare-fun res!690728 () Bool)

(assert (=> b!1033737 (=> (not res!690728) (not e!584375))))

(assert (=> b!1033737 (= res!690728 (= (getValueByKey!591 (toList!6951 lt!456259) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))

(declare-fun b!1033738 () Bool)

(assert (=> b!1033738 (= e!584375 (contains!6036 (toList!6951 lt!456259) (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))

(assert (= (and d!123803 res!690729) b!1033737))

(assert (= (and b!1033737 res!690728) b!1033738))

(declare-fun m!953657 () Bool)

(assert (=> d!123803 m!953657))

(declare-fun m!953659 () Bool)

(assert (=> d!123803 m!953659))

(declare-fun m!953661 () Bool)

(assert (=> d!123803 m!953661))

(declare-fun m!953663 () Bool)

(assert (=> d!123803 m!953663))

(declare-fun m!953665 () Bool)

(assert (=> b!1033737 m!953665))

(declare-fun m!953667 () Bool)

(assert (=> b!1033738 m!953667))

(assert (=> b!1033649 d!123803))

(declare-fun d!123805 () Bool)

(declare-fun e!584376 () Bool)

(assert (=> d!123805 e!584376))

(declare-fun res!690731 () Bool)

(assert (=> d!123805 (=> (not res!690731) (not e!584376))))

(declare-fun lt!456263 () ListLongMap!13871)

(assert (=> d!123805 (= res!690731 (contains!6035 lt!456263 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(declare-fun lt!456262 () List!22022)

(assert (=> d!123805 (= lt!456263 (ListLongMap!13872 lt!456262))))

(declare-fun lt!456265 () Unit!33810)

(declare-fun lt!456264 () Unit!33810)

(assert (=> d!123805 (= lt!456265 lt!456264)))

(assert (=> d!123805 (= (getValueByKey!591 lt!456262 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(assert (=> d!123805 (= lt!456264 (lemmaContainsTupThenGetReturnValue!280 lt!456262 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(assert (=> d!123805 (= lt!456262 (insertStrictlySorted!372 (toList!6951 lt!456204) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(assert (=> d!123805 (= (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) lt!456263)))

(declare-fun b!1033739 () Bool)

(declare-fun res!690730 () Bool)

(assert (=> b!1033739 (=> (not res!690730) (not e!584376))))

(assert (=> b!1033739 (= res!690730 (= (getValueByKey!591 (toList!6951 lt!456263) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))

(declare-fun b!1033740 () Bool)

(assert (=> b!1033740 (= e!584376 (contains!6036 (toList!6951 lt!456263) (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))

(assert (= (and d!123805 res!690731) b!1033739))

(assert (= (and b!1033739 res!690730) b!1033740))

(declare-fun m!953669 () Bool)

(assert (=> d!123805 m!953669))

(declare-fun m!953671 () Bool)

(assert (=> d!123805 m!953671))

(declare-fun m!953673 () Bool)

(assert (=> d!123805 m!953673))

(declare-fun m!953675 () Bool)

(assert (=> d!123805 m!953675))

(declare-fun m!953677 () Bool)

(assert (=> b!1033739 m!953677))

(declare-fun m!953679 () Bool)

(assert (=> b!1033740 m!953679))

(assert (=> b!1033649 d!123805))

(declare-fun d!123807 () Bool)

(assert (=> d!123807 (= (apply!941 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) lt!456184) (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) lt!456184)))))

(declare-fun bs!30217 () Bool)

(assert (= bs!30217 d!123807))

(declare-fun m!953681 () Bool)

(assert (=> bs!30217 m!953681))

(assert (=> bs!30217 m!953681))

(declare-fun m!953683 () Bool)

(assert (=> bs!30217 m!953683))

(assert (=> b!1033649 d!123807))

(declare-fun d!123809 () Bool)

(assert (=> d!123809 (= (apply!941 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) lt!456197) (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) lt!456197)))))

(declare-fun bs!30218 () Bool)

(assert (= bs!30218 d!123809))

(declare-fun m!953685 () Bool)

(assert (=> bs!30218 m!953685))

(assert (=> bs!30218 m!953685))

(declare-fun m!953687 () Bool)

(assert (=> bs!30218 m!953687))

(assert (=> b!1033649 d!123809))

(declare-fun d!123811 () Bool)

(assert (=> d!123811 (= (apply!941 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) lt!456197) (apply!941 lt!456204 lt!456197))))

(declare-fun lt!456266 () Unit!33810)

(assert (=> d!123811 (= lt!456266 (choose!1703 lt!456204 lt!456201 (zeroValue!6063 thiss!1427) lt!456197))))

(declare-fun e!584377 () Bool)

(assert (=> d!123811 e!584377))

(declare-fun res!690732 () Bool)

(assert (=> d!123811 (=> (not res!690732) (not e!584377))))

(assert (=> d!123811 (= res!690732 (contains!6035 lt!456204 lt!456197))))

(assert (=> d!123811 (= (addApplyDifferent!481 lt!456204 lt!456201 (zeroValue!6063 thiss!1427) lt!456197) lt!456266)))

(declare-fun b!1033741 () Bool)

(assert (=> b!1033741 (= e!584377 (not (= lt!456197 lt!456201)))))

(assert (= (and d!123811 res!690732) b!1033741))

(declare-fun m!953689 () Bool)

(assert (=> d!123811 m!953689))

(assert (=> d!123811 m!953521))

(assert (=> d!123811 m!953523))

(declare-fun m!953691 () Bool)

(assert (=> d!123811 m!953691))

(assert (=> d!123811 m!953521))

(assert (=> d!123811 m!953517))

(assert (=> b!1033649 d!123811))

(declare-fun d!123813 () Bool)

(declare-fun e!584378 () Bool)

(assert (=> d!123813 e!584378))

(declare-fun res!690734 () Bool)

(assert (=> d!123813 (=> (not res!690734) (not e!584378))))

(declare-fun lt!456268 () ListLongMap!13871)

(assert (=> d!123813 (= res!690734 (contains!6035 lt!456268 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(declare-fun lt!456267 () List!22022)

(assert (=> d!123813 (= lt!456268 (ListLongMap!13872 lt!456267))))

(declare-fun lt!456270 () Unit!33810)

(declare-fun lt!456269 () Unit!33810)

(assert (=> d!123813 (= lt!456270 lt!456269)))

(assert (=> d!123813 (= (getValueByKey!591 lt!456267 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(assert (=> d!123813 (= lt!456269 (lemmaContainsTupThenGetReturnValue!280 lt!456267 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(assert (=> d!123813 (= lt!456267 (insertStrictlySorted!372 (toList!6951 lt!456185) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(assert (=> d!123813 (= (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) lt!456268)))

(declare-fun b!1033742 () Bool)

(declare-fun res!690733 () Bool)

(assert (=> b!1033742 (=> (not res!690733) (not e!584378))))

(assert (=> b!1033742 (= res!690733 (= (getValueByKey!591 (toList!6951 lt!456268) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(declare-fun b!1033743 () Bool)

(assert (=> b!1033743 (= e!584378 (contains!6036 (toList!6951 lt!456268) (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))

(assert (= (and d!123813 res!690734) b!1033742))

(assert (= (and b!1033742 res!690733) b!1033743))

(declare-fun m!953693 () Bool)

(assert (=> d!123813 m!953693))

(declare-fun m!953695 () Bool)

(assert (=> d!123813 m!953695))

(declare-fun m!953697 () Bool)

(assert (=> d!123813 m!953697))

(declare-fun m!953699 () Bool)

(assert (=> d!123813 m!953699))

(declare-fun m!953701 () Bool)

(assert (=> b!1033742 m!953701))

(declare-fun m!953703 () Bool)

(assert (=> b!1033743 m!953703))

(assert (=> b!1033649 d!123813))

(declare-fun d!123815 () Bool)

(declare-fun e!584383 () Bool)

(assert (=> d!123815 e!584383))

(declare-fun res!690737 () Bool)

(assert (=> d!123815 (=> res!690737 e!584383)))

(declare-fun lt!456279 () Bool)

(assert (=> d!123815 (= res!690737 (not lt!456279))))

(declare-fun lt!456280 () Bool)

(assert (=> d!123815 (= lt!456279 lt!456280)))

(declare-fun lt!456281 () Unit!33810)

(declare-fun e!584384 () Unit!33810)

(assert (=> d!123815 (= lt!456281 e!584384)))

(declare-fun c!104361 () Bool)

(assert (=> d!123815 (= c!104361 lt!456280)))

(declare-fun containsKey!564 (List!22022 (_ BitVec 64)) Bool)

(assert (=> d!123815 (= lt!456280 (containsKey!564 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196))))

(assert (=> d!123815 (= (contains!6035 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) lt!456196) lt!456279)))

(declare-fun b!1033750 () Bool)

(declare-fun lt!456282 () Unit!33810)

(assert (=> b!1033750 (= e!584384 lt!456282)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!396 (List!22022 (_ BitVec 64)) Unit!33810)

(assert (=> b!1033750 (= lt!456282 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196))))

(declare-fun isDefined!436 (Option!642) Bool)

(assert (=> b!1033750 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196))))

(declare-fun b!1033751 () Bool)

(declare-fun Unit!33814 () Unit!33810)

(assert (=> b!1033751 (= e!584384 Unit!33814)))

(declare-fun b!1033752 () Bool)

(assert (=> b!1033752 (= e!584383 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196)))))

(assert (= (and d!123815 c!104361) b!1033750))

(assert (= (and d!123815 (not c!104361)) b!1033751))

(assert (= (and d!123815 (not res!690737)) b!1033752))

(declare-fun m!953705 () Bool)

(assert (=> d!123815 m!953705))

(declare-fun m!953707 () Bool)

(assert (=> b!1033750 m!953707))

(declare-fun m!953709 () Bool)

(assert (=> b!1033750 m!953709))

(assert (=> b!1033750 m!953709))

(declare-fun m!953711 () Bool)

(assert (=> b!1033750 m!953711))

(assert (=> b!1033752 m!953709))

(assert (=> b!1033752 m!953709))

(assert (=> b!1033752 m!953711))

(assert (=> b!1033649 d!123815))

(declare-fun d!123817 () Bool)

(assert (=> d!123817 (= (apply!941 lt!456188 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16445 (getValueByKey!591 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30219 () Bool)

(assert (= bs!30219 d!123817))

(declare-fun m!953713 () Bool)

(assert (=> bs!30219 m!953713))

(assert (=> bs!30219 m!953713))

(declare-fun m!953715 () Bool)

(assert (=> bs!30219 m!953715))

(assert (=> b!1033650 d!123817))

(declare-fun d!123819 () Bool)

(assert (=> d!123819 (= (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1033648 d!123819))

(declare-fun d!123821 () Bool)

(assert (=> d!123821 (= (validMask!0 (mask!30079 thiss!1427)) (and (or (= (mask!30079 thiss!1427) #b00000000000000000000000000000111) (= (mask!30079 thiss!1427) #b00000000000000000000000000001111) (= (mask!30079 thiss!1427) #b00000000000000000000000000011111) (= (mask!30079 thiss!1427) #b00000000000000000000000000111111) (= (mask!30079 thiss!1427) #b00000000000000000000000001111111) (= (mask!30079 thiss!1427) #b00000000000000000000000011111111) (= (mask!30079 thiss!1427) #b00000000000000000000000111111111) (= (mask!30079 thiss!1427) #b00000000000000000000001111111111) (= (mask!30079 thiss!1427) #b00000000000000000000011111111111) (= (mask!30079 thiss!1427) #b00000000000000000000111111111111) (= (mask!30079 thiss!1427) #b00000000000000000001111111111111) (= (mask!30079 thiss!1427) #b00000000000000000011111111111111) (= (mask!30079 thiss!1427) #b00000000000000000111111111111111) (= (mask!30079 thiss!1427) #b00000000000000001111111111111111) (= (mask!30079 thiss!1427) #b00000000000000011111111111111111) (= (mask!30079 thiss!1427) #b00000000000000111111111111111111) (= (mask!30079 thiss!1427) #b00000000000001111111111111111111) (= (mask!30079 thiss!1427) #b00000000000011111111111111111111) (= (mask!30079 thiss!1427) #b00000000000111111111111111111111) (= (mask!30079 thiss!1427) #b00000000001111111111111111111111) (= (mask!30079 thiss!1427) #b00000000011111111111111111111111) (= (mask!30079 thiss!1427) #b00000000111111111111111111111111) (= (mask!30079 thiss!1427) #b00000001111111111111111111111111) (= (mask!30079 thiss!1427) #b00000011111111111111111111111111) (= (mask!30079 thiss!1427) #b00000111111111111111111111111111) (= (mask!30079 thiss!1427) #b00001111111111111111111111111111) (= (mask!30079 thiss!1427) #b00011111111111111111111111111111) (= (mask!30079 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30079 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> d!123767 d!123821))

(declare-fun d!123823 () Bool)

(assert (=> d!123823 (= (apply!941 lt!456160 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16445 (getValueByKey!591 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30220 () Bool)

(assert (= bs!30220 d!123823))

(declare-fun m!953717 () Bool)

(assert (=> bs!30220 m!953717))

(assert (=> bs!30220 m!953717))

(declare-fun m!953719 () Bool)

(assert (=> bs!30220 m!953719))

(assert (=> b!1033620 d!123823))

(assert (=> b!1033619 d!123783))

(declare-fun d!123825 () Bool)

(declare-fun e!584385 () Bool)

(assert (=> d!123825 e!584385))

(declare-fun res!690738 () Bool)

(assert (=> d!123825 (=> res!690738 e!584385)))

(declare-fun lt!456283 () Bool)

(assert (=> d!123825 (= res!690738 (not lt!456283))))

(declare-fun lt!456284 () Bool)

(assert (=> d!123825 (= lt!456283 lt!456284)))

(declare-fun lt!456285 () Unit!33810)

(declare-fun e!584386 () Unit!33810)

(assert (=> d!123825 (= lt!456285 e!584386)))

(declare-fun c!104362 () Bool)

(assert (=> d!123825 (= c!104362 lt!456284)))

(assert (=> d!123825 (= lt!456284 (containsKey!564 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168))))

(assert (=> d!123825 (= (contains!6035 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)) lt!456168) lt!456283)))

(declare-fun b!1033753 () Bool)

(declare-fun lt!456286 () Unit!33810)

(assert (=> b!1033753 (= e!584386 lt!456286)))

(assert (=> b!1033753 (= lt!456286 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168))))

(assert (=> b!1033753 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168))))

(declare-fun b!1033754 () Bool)

(declare-fun Unit!33815 () Unit!33810)

(assert (=> b!1033754 (= e!584386 Unit!33815)))

(declare-fun b!1033755 () Bool)

(assert (=> b!1033755 (= e!584385 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168)))))

(assert (= (and d!123825 c!104362) b!1033753))

(assert (= (and d!123825 (not c!104362)) b!1033754))

(assert (= (and d!123825 (not res!690738)) b!1033755))

(declare-fun m!953721 () Bool)

(assert (=> d!123825 m!953721))

(declare-fun m!953723 () Bool)

(assert (=> b!1033753 m!953723))

(declare-fun m!953725 () Bool)

(assert (=> b!1033753 m!953725))

(assert (=> b!1033753 m!953725))

(declare-fun m!953727 () Bool)

(assert (=> b!1033753 m!953727))

(assert (=> b!1033755 m!953725))

(assert (=> b!1033755 m!953725))

(assert (=> b!1033755 m!953727))

(assert (=> b!1033619 d!123825))

(declare-fun d!123827 () Bool)

(assert (=> d!123827 (= (apply!941 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) lt!456156) (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) lt!456156)))))

(declare-fun bs!30221 () Bool)

(assert (= bs!30221 d!123827))

(declare-fun m!953729 () Bool)

(assert (=> bs!30221 m!953729))

(assert (=> bs!30221 m!953729))

(declare-fun m!953731 () Bool)

(assert (=> bs!30221 m!953731))

(assert (=> b!1033619 d!123827))

(declare-fun d!123829 () Bool)

(assert (=> d!123829 (= (apply!941 lt!456164 lt!456174) (get!16445 (getValueByKey!591 (toList!6951 lt!456164) lt!456174)))))

(declare-fun bs!30222 () Bool)

(assert (= bs!30222 d!123829))

(declare-fun m!953733 () Bool)

(assert (=> bs!30222 m!953733))

(assert (=> bs!30222 m!953733))

(declare-fun m!953735 () Bool)

(assert (=> bs!30222 m!953735))

(assert (=> b!1033619 d!123829))

(declare-fun d!123831 () Bool)

(declare-fun e!584387 () Bool)

(assert (=> d!123831 e!584387))

(declare-fun res!690740 () Bool)

(assert (=> d!123831 (=> (not res!690740) (not e!584387))))

(declare-fun lt!456288 () ListLongMap!13871)

(assert (=> d!123831 (= res!690740 (contains!6035 lt!456288 (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))

(declare-fun lt!456287 () List!22022)

(assert (=> d!123831 (= lt!456288 (ListLongMap!13872 lt!456287))))

(declare-fun lt!456290 () Unit!33810)

(declare-fun lt!456289 () Unit!33810)

(assert (=> d!123831 (= lt!456290 lt!456289)))

(assert (=> d!123831 (= (getValueByKey!591 lt!456287 (_1!7927 (tuple2!15835 lt!456173 lt!456100))) (Some!641 (_2!7927 (tuple2!15835 lt!456173 lt!456100))))))

(assert (=> d!123831 (= lt!456289 (lemmaContainsTupThenGetReturnValue!280 lt!456287 (_1!7927 (tuple2!15835 lt!456173 lt!456100)) (_2!7927 (tuple2!15835 lt!456173 lt!456100))))))

(assert (=> d!123831 (= lt!456287 (insertStrictlySorted!372 (toList!6951 lt!456176) (_1!7927 (tuple2!15835 lt!456173 lt!456100)) (_2!7927 (tuple2!15835 lt!456173 lt!456100))))))

(assert (=> d!123831 (= (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100)) lt!456288)))

(declare-fun b!1033756 () Bool)

(declare-fun res!690739 () Bool)

(assert (=> b!1033756 (=> (not res!690739) (not e!584387))))

(assert (=> b!1033756 (= res!690739 (= (getValueByKey!591 (toList!6951 lt!456288) (_1!7927 (tuple2!15835 lt!456173 lt!456100))) (Some!641 (_2!7927 (tuple2!15835 lt!456173 lt!456100)))))))

(declare-fun b!1033757 () Bool)

(assert (=> b!1033757 (= e!584387 (contains!6036 (toList!6951 lt!456288) (tuple2!15835 lt!456173 lt!456100)))))

(assert (= (and d!123831 res!690740) b!1033756))

(assert (= (and b!1033756 res!690739) b!1033757))

(declare-fun m!953737 () Bool)

(assert (=> d!123831 m!953737))

(declare-fun m!953739 () Bool)

(assert (=> d!123831 m!953739))

(declare-fun m!953741 () Bool)

(assert (=> d!123831 m!953741))

(declare-fun m!953743 () Bool)

(assert (=> d!123831 m!953743))

(declare-fun m!953745 () Bool)

(assert (=> b!1033756 m!953745))

(declare-fun m!953747 () Bool)

(assert (=> b!1033757 m!953747))

(assert (=> b!1033619 d!123831))

(declare-fun d!123833 () Bool)

(assert (=> d!123833 (= (apply!941 lt!456176 lt!456169) (get!16445 (getValueByKey!591 (toList!6951 lt!456176) lt!456169)))))

(declare-fun bs!30223 () Bool)

(assert (= bs!30223 d!123833))

(declare-fun m!953749 () Bool)

(assert (=> bs!30223 m!953749))

(assert (=> bs!30223 m!953749))

(declare-fun m!953751 () Bool)

(assert (=> bs!30223 m!953751))

(assert (=> b!1033619 d!123833))

(declare-fun d!123835 () Bool)

(assert (=> d!123835 (= (apply!941 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100)) lt!456169) (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100))) lt!456169)))))

(declare-fun bs!30224 () Bool)

(assert (= bs!30224 d!123835))

(declare-fun m!953753 () Bool)

(assert (=> bs!30224 m!953753))

(assert (=> bs!30224 m!953753))

(declare-fun m!953755 () Bool)

(assert (=> bs!30224 m!953755))

(assert (=> b!1033619 d!123835))

(declare-fun d!123837 () Bool)

(declare-fun e!584388 () Bool)

(assert (=> d!123837 e!584388))

(declare-fun res!690742 () Bool)

(assert (=> d!123837 (=> (not res!690742) (not e!584388))))

(declare-fun lt!456292 () ListLongMap!13871)

(assert (=> d!123837 (= res!690742 (contains!6035 lt!456292 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456291 () List!22022)

(assert (=> d!123837 (= lt!456292 (ListLongMap!13872 lt!456291))))

(declare-fun lt!456294 () Unit!33810)

(declare-fun lt!456293 () Unit!33810)

(assert (=> d!123837 (= lt!456294 lt!456293)))

(assert (=> d!123837 (= (getValueByKey!591 lt!456291 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(assert (=> d!123837 (= lt!456293 (lemmaContainsTupThenGetReturnValue!280 lt!456291 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(assert (=> d!123837 (= lt!456291 (insertStrictlySorted!372 (toList!6951 lt!456175) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(assert (=> d!123837 (= (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) lt!456292)))

(declare-fun b!1033758 () Bool)

(declare-fun res!690741 () Bool)

(assert (=> b!1033758 (=> (not res!690741) (not e!584388))))

(assert (=> b!1033758 (= res!690741 (= (getValueByKey!591 (toList!6951 lt!456292) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))

(declare-fun b!1033759 () Bool)

(assert (=> b!1033759 (= e!584388 (contains!6036 (toList!6951 lt!456292) (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))

(assert (= (and d!123837 res!690742) b!1033758))

(assert (= (and b!1033758 res!690741) b!1033759))

(declare-fun m!953757 () Bool)

(assert (=> d!123837 m!953757))

(declare-fun m!953759 () Bool)

(assert (=> d!123837 m!953759))

(declare-fun m!953761 () Bool)

(assert (=> d!123837 m!953761))

(declare-fun m!953763 () Bool)

(assert (=> d!123837 m!953763))

(declare-fun m!953765 () Bool)

(assert (=> b!1033758 m!953765))

(declare-fun m!953767 () Bool)

(assert (=> b!1033759 m!953767))

(assert (=> b!1033619 d!123837))

(declare-fun d!123839 () Bool)

(declare-fun e!584389 () Bool)

(assert (=> d!123839 e!584389))

(declare-fun res!690744 () Bool)

(assert (=> d!123839 (=> (not res!690744) (not e!584389))))

(declare-fun lt!456296 () ListLongMap!13871)

(assert (=> d!123839 (= res!690744 (contains!6035 lt!456296 (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))

(declare-fun lt!456295 () List!22022)

(assert (=> d!123839 (= lt!456296 (ListLongMap!13872 lt!456295))))

(declare-fun lt!456298 () Unit!33810)

(declare-fun lt!456297 () Unit!33810)

(assert (=> d!123839 (= lt!456298 lt!456297)))

(assert (=> d!123839 (= (getValueByKey!591 lt!456295 (_1!7927 (tuple2!15835 lt!456165 lt!456100))) (Some!641 (_2!7927 (tuple2!15835 lt!456165 lt!456100))))))

(assert (=> d!123839 (= lt!456297 (lemmaContainsTupThenGetReturnValue!280 lt!456295 (_1!7927 (tuple2!15835 lt!456165 lt!456100)) (_2!7927 (tuple2!15835 lt!456165 lt!456100))))))

(assert (=> d!123839 (= lt!456295 (insertStrictlySorted!372 (toList!6951 lt!456157) (_1!7927 (tuple2!15835 lt!456165 lt!456100)) (_2!7927 (tuple2!15835 lt!456165 lt!456100))))))

(assert (=> d!123839 (= (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)) lt!456296)))

(declare-fun b!1033760 () Bool)

(declare-fun res!690743 () Bool)

(assert (=> b!1033760 (=> (not res!690743) (not e!584389))))

(assert (=> b!1033760 (= res!690743 (= (getValueByKey!591 (toList!6951 lt!456296) (_1!7927 (tuple2!15835 lt!456165 lt!456100))) (Some!641 (_2!7927 (tuple2!15835 lt!456165 lt!456100)))))))

(declare-fun b!1033761 () Bool)

(assert (=> b!1033761 (= e!584389 (contains!6036 (toList!6951 lt!456296) (tuple2!15835 lt!456165 lt!456100)))))

(assert (= (and d!123839 res!690744) b!1033760))

(assert (= (and b!1033760 res!690743) b!1033761))

(declare-fun m!953769 () Bool)

(assert (=> d!123839 m!953769))

(declare-fun m!953771 () Bool)

(assert (=> d!123839 m!953771))

(declare-fun m!953773 () Bool)

(assert (=> d!123839 m!953773))

(declare-fun m!953775 () Bool)

(assert (=> d!123839 m!953775))

(declare-fun m!953777 () Bool)

(assert (=> b!1033760 m!953777))

(declare-fun m!953779 () Bool)

(assert (=> b!1033761 m!953779))

(assert (=> b!1033619 d!123839))

(declare-fun d!123841 () Bool)

(assert (=> d!123841 (= (apply!941 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100)) lt!456169) (apply!941 lt!456176 lt!456169))))

(declare-fun lt!456299 () Unit!33810)

(assert (=> d!123841 (= lt!456299 (choose!1703 lt!456176 lt!456173 lt!456100 lt!456169))))

(declare-fun e!584390 () Bool)

(assert (=> d!123841 e!584390))

(declare-fun res!690745 () Bool)

(assert (=> d!123841 (=> (not res!690745) (not e!584390))))

(assert (=> d!123841 (= res!690745 (contains!6035 lt!456176 lt!456169))))

(assert (=> d!123841 (= (addApplyDifferent!481 lt!456176 lt!456173 lt!456100 lt!456169) lt!456299)))

(declare-fun b!1033762 () Bool)

(assert (=> b!1033762 (= e!584390 (not (= lt!456169 lt!456173)))))

(assert (= (and d!123841 res!690745) b!1033762))

(declare-fun m!953781 () Bool)

(assert (=> d!123841 m!953781))

(assert (=> d!123841 m!953457))

(assert (=> d!123841 m!953459))

(declare-fun m!953783 () Bool)

(assert (=> d!123841 m!953783))

(assert (=> d!123841 m!953457))

(assert (=> d!123841 m!953453))

(assert (=> b!1033619 d!123841))

(declare-fun d!123843 () Bool)

(assert (=> d!123843 (= (apply!941 lt!456175 lt!456156) (get!16445 (getValueByKey!591 (toList!6951 lt!456175) lt!456156)))))

(declare-fun bs!30225 () Bool)

(assert (= bs!30225 d!123843))

(declare-fun m!953785 () Bool)

(assert (=> bs!30225 m!953785))

(assert (=> bs!30225 m!953785))

(declare-fun m!953787 () Bool)

(assert (=> bs!30225 m!953787))

(assert (=> b!1033619 d!123843))

(declare-fun d!123845 () Bool)

(assert (=> d!123845 (contains!6035 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)) lt!456168)))

(declare-fun lt!456300 () Unit!33810)

(assert (=> d!123845 (= lt!456300 (choose!1704 lt!456157 lt!456165 lt!456100 lt!456168))))

(assert (=> d!123845 (contains!6035 lt!456157 lt!456168)))

(assert (=> d!123845 (= (addStillContains!629 lt!456157 lt!456165 lt!456100 lt!456168) lt!456300)))

(declare-fun bs!30226 () Bool)

(assert (= bs!30226 d!123845))

(assert (=> bs!30226 m!953471))

(assert (=> bs!30226 m!953471))

(assert (=> bs!30226 m!953473))

(declare-fun m!953789 () Bool)

(assert (=> bs!30226 m!953789))

(declare-fun m!953791 () Bool)

(assert (=> bs!30226 m!953791))

(assert (=> b!1033619 d!123845))

(declare-fun d!123847 () Bool)

(assert (=> d!123847 (= (apply!941 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) lt!456174) (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) lt!456174)))))

(declare-fun bs!30227 () Bool)

(assert (= bs!30227 d!123847))

(declare-fun m!953793 () Bool)

(assert (=> bs!30227 m!953793))

(assert (=> bs!30227 m!953793))

(declare-fun m!953795 () Bool)

(assert (=> bs!30227 m!953795))

(assert (=> b!1033619 d!123847))

(declare-fun d!123849 () Bool)

(declare-fun e!584391 () Bool)

(assert (=> d!123849 e!584391))

(declare-fun res!690747 () Bool)

(assert (=> d!123849 (=> (not res!690747) (not e!584391))))

(declare-fun lt!456302 () ListLongMap!13871)

(assert (=> d!123849 (= res!690747 (contains!6035 lt!456302 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456301 () List!22022)

(assert (=> d!123849 (= lt!456302 (ListLongMap!13872 lt!456301))))

(declare-fun lt!456304 () Unit!33810)

(declare-fun lt!456303 () Unit!33810)

(assert (=> d!123849 (= lt!456304 lt!456303)))

(assert (=> d!123849 (= (getValueByKey!591 lt!456301 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(assert (=> d!123849 (= lt!456303 (lemmaContainsTupThenGetReturnValue!280 lt!456301 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(assert (=> d!123849 (= lt!456301 (insertStrictlySorted!372 (toList!6951 lt!456164) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(assert (=> d!123849 (= (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) lt!456302)))

(declare-fun b!1033763 () Bool)

(declare-fun res!690746 () Bool)

(assert (=> b!1033763 (=> (not res!690746) (not e!584391))))

(assert (=> b!1033763 (= res!690746 (= (getValueByKey!591 (toList!6951 lt!456302) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))

(declare-fun b!1033764 () Bool)

(assert (=> b!1033764 (= e!584391 (contains!6036 (toList!6951 lt!456302) (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))

(assert (= (and d!123849 res!690747) b!1033763))

(assert (= (and b!1033763 res!690746) b!1033764))

(declare-fun m!953797 () Bool)

(assert (=> d!123849 m!953797))

(declare-fun m!953799 () Bool)

(assert (=> d!123849 m!953799))

(declare-fun m!953801 () Bool)

(assert (=> d!123849 m!953801))

(declare-fun m!953803 () Bool)

(assert (=> d!123849 m!953803))

(declare-fun m!953805 () Bool)

(assert (=> b!1033763 m!953805))

(declare-fun m!953807 () Bool)

(assert (=> b!1033764 m!953807))

(assert (=> b!1033619 d!123849))

(declare-fun d!123851 () Bool)

(assert (=> d!123851 (= (apply!941 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) lt!456174) (apply!941 lt!456164 lt!456174))))

(declare-fun lt!456305 () Unit!33810)

(assert (=> d!123851 (= lt!456305 (choose!1703 lt!456164 lt!456166 (minValue!6063 thiss!1427) lt!456174))))

(declare-fun e!584392 () Bool)

(assert (=> d!123851 e!584392))

(declare-fun res!690748 () Bool)

(assert (=> d!123851 (=> (not res!690748) (not e!584392))))

(assert (=> d!123851 (= res!690748 (contains!6035 lt!456164 lt!456174))))

(assert (=> d!123851 (= (addApplyDifferent!481 lt!456164 lt!456166 (minValue!6063 thiss!1427) lt!456174) lt!456305)))

(declare-fun b!1033765 () Bool)

(assert (=> b!1033765 (= e!584392 (not (= lt!456174 lt!456166)))))

(assert (= (and d!123851 res!690748) b!1033765))

(declare-fun m!953809 () Bool)

(assert (=> d!123851 m!953809))

(assert (=> d!123851 m!953461))

(assert (=> d!123851 m!953477))

(declare-fun m!953811 () Bool)

(assert (=> d!123851 m!953811))

(assert (=> d!123851 m!953461))

(assert (=> d!123851 m!953469))

(assert (=> b!1033619 d!123851))

(declare-fun d!123853 () Bool)

(assert (=> d!123853 (= (apply!941 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) lt!456156) (apply!941 lt!456175 lt!456156))))

(declare-fun lt!456306 () Unit!33810)

(assert (=> d!123853 (= lt!456306 (choose!1703 lt!456175 lt!456172 (minValue!6063 thiss!1427) lt!456156))))

(declare-fun e!584393 () Bool)

(assert (=> d!123853 e!584393))

(declare-fun res!690749 () Bool)

(assert (=> d!123853 (=> (not res!690749) (not e!584393))))

(assert (=> d!123853 (= res!690749 (contains!6035 lt!456175 lt!456156))))

(assert (=> d!123853 (= (addApplyDifferent!481 lt!456175 lt!456172 (minValue!6063 thiss!1427) lt!456156) lt!456306)))

(declare-fun b!1033766 () Bool)

(assert (=> b!1033766 (= e!584393 (not (= lt!456156 lt!456172)))))

(assert (= (and d!123853 res!690749) b!1033766))

(declare-fun m!953813 () Bool)

(assert (=> d!123853 m!953813))

(assert (=> d!123853 m!953463))

(assert (=> d!123853 m!953475))

(declare-fun m!953815 () Bool)

(assert (=> d!123853 m!953815))

(assert (=> d!123853 m!953463))

(assert (=> d!123853 m!953455))

(assert (=> b!1033619 d!123853))

(declare-fun d!123855 () Bool)

(declare-fun e!584394 () Bool)

(assert (=> d!123855 e!584394))

(declare-fun res!690751 () Bool)

(assert (=> d!123855 (=> (not res!690751) (not e!584394))))

(declare-fun lt!456308 () ListLongMap!13871)

(assert (=> d!123855 (= res!690751 (contains!6035 lt!456308 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun lt!456307 () List!22022)

(assert (=> d!123855 (= lt!456308 (ListLongMap!13872 lt!456307))))

(declare-fun lt!456310 () Unit!33810)

(declare-fun lt!456309 () Unit!33810)

(assert (=> d!123855 (= lt!456310 lt!456309)))

(assert (=> d!123855 (= (getValueByKey!591 lt!456307 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) (Some!641 (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!123855 (= lt!456309 (lemmaContainsTupThenGetReturnValue!280 lt!456307 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!123855 (= lt!456307 (insertStrictlySorted!372 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663))) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!123855 (= (+!3064 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663)) (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456308)))

(declare-fun b!1033767 () Bool)

(declare-fun res!690750 () Bool)

(assert (=> b!1033767 (=> (not res!690750) (not e!584394))))

(assert (=> b!1033767 (= res!690750 (= (getValueByKey!591 (toList!6951 lt!456308) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) (Some!641 (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1033768 () Bool)

(assert (=> b!1033768 (= e!584394 (contains!6036 (toList!6951 lt!456308) (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (= (and d!123855 res!690751) b!1033767))

(assert (= (and b!1033767 res!690750) b!1033768))

(declare-fun m!953817 () Bool)

(assert (=> d!123855 m!953817))

(declare-fun m!953819 () Bool)

(assert (=> d!123855 m!953819))

(declare-fun m!953821 () Bool)

(assert (=> d!123855 m!953821))

(declare-fun m!953823 () Bool)

(assert (=> d!123855 m!953823))

(declare-fun m!953825 () Bool)

(assert (=> b!1033767 m!953825))

(declare-fun m!953827 () Bool)

(assert (=> b!1033768 m!953827))

(assert (=> bm!43659 d!123855))

(declare-fun d!123857 () Bool)

(declare-fun e!584395 () Bool)

(assert (=> d!123857 e!584395))

(declare-fun res!690752 () Bool)

(assert (=> d!123857 (=> res!690752 e!584395)))

(declare-fun lt!456311 () Bool)

(assert (=> d!123857 (= res!690752 (not lt!456311))))

(declare-fun lt!456312 () Bool)

(assert (=> d!123857 (= lt!456311 lt!456312)))

(declare-fun lt!456313 () Unit!33810)

(declare-fun e!584396 () Unit!33810)

(assert (=> d!123857 (= lt!456313 e!584396)))

(declare-fun c!104363 () Bool)

(assert (=> d!123857 (= c!104363 lt!456312)))

(assert (=> d!123857 (= lt!456312 (containsKey!564 (toList!6951 lt!456206) key!909))))

(assert (=> d!123857 (= (contains!6035 lt!456206 key!909) lt!456311)))

(declare-fun b!1033769 () Bool)

(declare-fun lt!456314 () Unit!33810)

(assert (=> b!1033769 (= e!584396 lt!456314)))

(assert (=> b!1033769 (= lt!456314 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456206) key!909))))

(assert (=> b!1033769 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456206) key!909))))

(declare-fun b!1033770 () Bool)

(declare-fun Unit!33816 () Unit!33810)

(assert (=> b!1033770 (= e!584396 Unit!33816)))

(declare-fun b!1033771 () Bool)

(assert (=> b!1033771 (= e!584395 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456206) key!909)))))

(assert (= (and d!123857 c!104363) b!1033769))

(assert (= (and d!123857 (not c!104363)) b!1033770))

(assert (= (and d!123857 (not res!690752)) b!1033771))

(declare-fun m!953829 () Bool)

(assert (=> d!123857 m!953829))

(declare-fun m!953831 () Bool)

(assert (=> b!1033769 m!953831))

(declare-fun m!953833 () Bool)

(assert (=> b!1033769 m!953833))

(assert (=> b!1033769 m!953833))

(declare-fun m!953835 () Bool)

(assert (=> b!1033769 m!953835))

(assert (=> b!1033771 m!953833))

(assert (=> b!1033771 m!953833))

(assert (=> b!1033771 m!953835))

(assert (=> d!123771 d!123857))

(declare-fun b!1033782 () Bool)

(declare-fun e!584403 () List!22022)

(assert (=> b!1033782 (= e!584403 (t!31227 (toList!6951 (map!14707 thiss!1427))))))

(declare-fun b!1033783 () Bool)

(declare-fun e!584404 () List!22022)

(assert (=> b!1033783 (= e!584404 Nil!22019)))

(declare-fun b!1033784 () Bool)

(assert (=> b!1033784 (= e!584403 e!584404)))

(declare-fun c!104368 () Bool)

(assert (=> b!1033784 (= c!104368 (and ((_ is Cons!22018) (toList!6951 (map!14707 thiss!1427))) (not (= (_1!7927 (h!23220 (toList!6951 (map!14707 thiss!1427)))) key!909))))))

(declare-fun b!1033785 () Bool)

(declare-fun e!584405 () Bool)

(declare-fun lt!456317 () List!22022)

(assert (=> b!1033785 (= e!584405 (not (containsKey!564 lt!456317 key!909)))))

(declare-fun d!123859 () Bool)

(assert (=> d!123859 e!584405))

(declare-fun res!690755 () Bool)

(assert (=> d!123859 (=> (not res!690755) (not e!584405))))

(declare-fun isStrictlySorted!714 (List!22022) Bool)

(assert (=> d!123859 (= res!690755 (isStrictlySorted!714 lt!456317))))

(assert (=> d!123859 (= lt!456317 e!584403)))

(declare-fun c!104369 () Bool)

(assert (=> d!123859 (= c!104369 (and ((_ is Cons!22018) (toList!6951 (map!14707 thiss!1427))) (= (_1!7927 (h!23220 (toList!6951 (map!14707 thiss!1427)))) key!909)))))

(assert (=> d!123859 (isStrictlySorted!714 (toList!6951 (map!14707 thiss!1427)))))

(assert (=> d!123859 (= (removeStrictlySorted!57 (toList!6951 (map!14707 thiss!1427)) key!909) lt!456317)))

(declare-fun b!1033786 () Bool)

(declare-fun $colon$colon!605 (List!22022 tuple2!15834) List!22022)

(assert (=> b!1033786 (= e!584404 ($colon$colon!605 (removeStrictlySorted!57 (t!31227 (toList!6951 (map!14707 thiss!1427))) key!909) (h!23220 (toList!6951 (map!14707 thiss!1427)))))))

(assert (= (and d!123859 c!104369) b!1033782))

(assert (= (and d!123859 (not c!104369)) b!1033784))

(assert (= (and b!1033784 c!104368) b!1033786))

(assert (= (and b!1033784 (not c!104368)) b!1033783))

(assert (= (and d!123859 res!690755) b!1033785))

(declare-fun m!953837 () Bool)

(assert (=> b!1033785 m!953837))

(declare-fun m!953839 () Bool)

(assert (=> d!123859 m!953839))

(declare-fun m!953841 () Bool)

(assert (=> d!123859 m!953841))

(declare-fun m!953843 () Bool)

(assert (=> b!1033786 m!953843))

(assert (=> b!1033786 m!953843))

(declare-fun m!953845 () Bool)

(assert (=> b!1033786 m!953845))

(assert (=> d!123771 d!123859))

(declare-fun d!123861 () Bool)

(assert (=> d!123861 (= (apply!941 lt!456188 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16445 (getValueByKey!591 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30228 () Bool)

(assert (= bs!30228 d!123861))

(declare-fun m!953847 () Bool)

(assert (=> bs!30228 m!953847))

(assert (=> bs!30228 m!953847))

(declare-fun m!953849 () Bool)

(assert (=> bs!30228 m!953849))

(assert (=> b!1033661 d!123861))

(declare-fun b!1033798 () Bool)

(declare-fun e!584417 () Bool)

(declare-fun e!584415 () Bool)

(assert (=> b!1033798 (= e!584417 e!584415)))

(declare-fun c!104372 () Bool)

(assert (=> b!1033798 (= c!104372 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun b!1033799 () Bool)

(declare-fun e!584416 () Bool)

(declare-fun contains!6037 (List!22023 (_ BitVec 64)) Bool)

(assert (=> b!1033799 (= e!584416 (contains!6037 Nil!22020 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun b!1033800 () Bool)

(declare-fun call!43680 () Bool)

(assert (=> b!1033800 (= e!584415 call!43680)))

(declare-fun b!1033801 () Bool)

(assert (=> b!1033801 (= e!584415 call!43680)))

(declare-fun bm!43677 () Bool)

(assert (=> bm!43677 (= call!43680 (arrayNoDuplicates!0 (_keys!11404 lt!456102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104372 (Cons!22019 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) Nil!22020) Nil!22020)))))

(declare-fun d!123863 () Bool)

(declare-fun res!690763 () Bool)

(declare-fun e!584414 () Bool)

(assert (=> d!123863 (=> res!690763 e!584414)))

(assert (=> d!123863 (= res!690763 (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!123863 (= (arrayNoDuplicates!0 (_keys!11404 lt!456102) #b00000000000000000000000000000000 Nil!22020) e!584414)))

(declare-fun b!1033797 () Bool)

(assert (=> b!1033797 (= e!584414 e!584417)))

(declare-fun res!690762 () Bool)

(assert (=> b!1033797 (=> (not res!690762) (not e!584417))))

(assert (=> b!1033797 (= res!690762 (not e!584416))))

(declare-fun res!690764 () Bool)

(assert (=> b!1033797 (=> (not res!690764) (not e!584416))))

(assert (=> b!1033797 (= res!690764 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(assert (= (and d!123863 (not res!690763)) b!1033797))

(assert (= (and b!1033797 res!690764) b!1033799))

(assert (= (and b!1033797 res!690762) b!1033798))

(assert (= (and b!1033798 c!104372) b!1033800))

(assert (= (and b!1033798 (not c!104372)) b!1033801))

(assert (= (or b!1033800 b!1033801) bm!43677))

(declare-fun m!953851 () Bool)

(assert (=> b!1033798 m!953851))

(assert (=> b!1033798 m!953851))

(declare-fun m!953853 () Bool)

(assert (=> b!1033798 m!953853))

(assert (=> b!1033799 m!953851))

(assert (=> b!1033799 m!953851))

(declare-fun m!953855 () Bool)

(assert (=> b!1033799 m!953855))

(assert (=> bm!43677 m!953851))

(declare-fun m!953857 () Bool)

(assert (=> bm!43677 m!953857))

(assert (=> b!1033797 m!953851))

(assert (=> b!1033797 m!953851))

(assert (=> b!1033797 m!953853))

(assert (=> b!1033642 d!123863))

(declare-fun d!123865 () Bool)

(declare-fun e!584418 () Bool)

(assert (=> d!123865 e!584418))

(declare-fun res!690765 () Bool)

(assert (=> d!123865 (=> res!690765 e!584418)))

(declare-fun lt!456318 () Bool)

(assert (=> d!123865 (= res!690765 (not lt!456318))))

(declare-fun lt!456319 () Bool)

(assert (=> d!123865 (= lt!456318 lt!456319)))

(declare-fun lt!456320 () Unit!33810)

(declare-fun e!584419 () Unit!33810)

(assert (=> d!123865 (= lt!456320 e!584419)))

(declare-fun c!104373 () Bool)

(assert (=> d!123865 (= c!104373 lt!456319)))

(assert (=> d!123865 (= lt!456319 (containsKey!564 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123865 (= (contains!6035 lt!456188 #b1000000000000000000000000000000000000000000000000000000000000000) lt!456318)))

(declare-fun b!1033802 () Bool)

(declare-fun lt!456321 () Unit!33810)

(assert (=> b!1033802 (= e!584419 lt!456321)))

(assert (=> b!1033802 (= lt!456321 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1033802 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033803 () Bool)

(declare-fun Unit!33817 () Unit!33810)

(assert (=> b!1033803 (= e!584419 Unit!33817)))

(declare-fun b!1033804 () Bool)

(assert (=> b!1033804 (= e!584418 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123865 c!104373) b!1033802))

(assert (= (and d!123865 (not c!104373)) b!1033803))

(assert (= (and d!123865 (not res!690765)) b!1033804))

(declare-fun m!953859 () Bool)

(assert (=> d!123865 m!953859))

(declare-fun m!953861 () Bool)

(assert (=> b!1033802 m!953861))

(assert (=> b!1033802 m!953713))

(assert (=> b!1033802 m!953713))

(declare-fun m!953863 () Bool)

(assert (=> b!1033802 m!953863))

(assert (=> b!1033804 m!953713))

(assert (=> b!1033804 m!953713))

(assert (=> b!1033804 m!953863))

(assert (=> bm!43664 d!123865))

(assert (=> d!123761 d!123759))

(assert (=> d!123761 d!123821))

(declare-fun d!123867 () Bool)

(assert (=> d!123867 (= (-!527 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))

(assert (=> d!123867 true))

(declare-fun _$11!31 () Unit!33810)

(assert (=> d!123867 (= (choose!1702 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) (zeroValue!6063 thiss!1427) lt!456100 (minValue!6063 thiss!1427) (defaultEntry!6227 thiss!1427)) _$11!31)))

(declare-fun bs!30229 () Bool)

(assert (= bs!30229 d!123867))

(assert (=> bs!30229 m!953387))

(assert (=> bs!30229 m!953387))

(assert (=> bs!30229 m!953389))

(assert (=> bs!30229 m!953379))

(assert (=> d!123761 d!123867))

(assert (=> d!123761 d!123765))

(assert (=> d!123761 d!123767))

(assert (=> b!1033618 d!123819))

(declare-fun d!123869 () Bool)

(declare-fun e!584420 () Bool)

(assert (=> d!123869 e!584420))

(declare-fun res!690766 () Bool)

(assert (=> d!123869 (=> res!690766 e!584420)))

(declare-fun lt!456322 () Bool)

(assert (=> d!123869 (= res!690766 (not lt!456322))))

(declare-fun lt!456323 () Bool)

(assert (=> d!123869 (= lt!456322 lt!456323)))

(declare-fun lt!456324 () Unit!33810)

(declare-fun e!584421 () Unit!33810)

(assert (=> d!123869 (= lt!456324 e!584421)))

(declare-fun c!104374 () Bool)

(assert (=> d!123869 (= c!104374 lt!456323)))

(assert (=> d!123869 (= lt!456323 (containsKey!564 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123869 (= (contains!6035 lt!456188 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) lt!456322)))

(declare-fun b!1033805 () Bool)

(declare-fun lt!456325 () Unit!33810)

(assert (=> b!1033805 (= e!584421 lt!456325)))

(assert (=> b!1033805 (= lt!456325 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033805 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033806 () Bool)

(declare-fun Unit!33818 () Unit!33810)

(assert (=> b!1033806 (= e!584421 Unit!33818)))

(declare-fun b!1033807 () Bool)

(assert (=> b!1033807 (= e!584420 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!123869 c!104374) b!1033805))

(assert (= (and d!123869 (not c!104374)) b!1033806))

(assert (= (and d!123869 (not res!690766)) b!1033807))

(assert (=> d!123869 m!953435))

(declare-fun m!953865 () Bool)

(assert (=> d!123869 m!953865))

(assert (=> b!1033805 m!953435))

(declare-fun m!953867 () Bool)

(assert (=> b!1033805 m!953867))

(assert (=> b!1033805 m!953435))

(declare-fun m!953869 () Bool)

(assert (=> b!1033805 m!953869))

(assert (=> b!1033805 m!953869))

(declare-fun m!953871 () Bool)

(assert (=> b!1033805 m!953871))

(assert (=> b!1033807 m!953435))

(assert (=> b!1033807 m!953869))

(assert (=> b!1033807 m!953869))

(assert (=> b!1033807 m!953871))

(assert (=> b!1033644 d!123869))

(declare-fun d!123871 () Bool)

(declare-fun e!584422 () Bool)

(assert (=> d!123871 e!584422))

(declare-fun res!690768 () Bool)

(assert (=> d!123871 (=> (not res!690768) (not e!584422))))

(declare-fun lt!456327 () ListLongMap!13871)

(assert (=> d!123871 (= res!690768 (contains!6035 lt!456327 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456326 () List!22022)

(assert (=> d!123871 (= lt!456327 (ListLongMap!13872 lt!456326))))

(declare-fun lt!456329 () Unit!33810)

(declare-fun lt!456328 () Unit!33810)

(assert (=> d!123871 (= lt!456329 lt!456328)))

(assert (=> d!123871 (= (getValueByKey!591 lt!456326 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> d!123871 (= lt!456328 (lemmaContainsTupThenGetReturnValue!280 lt!456326 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> d!123871 (= lt!456326 (insertStrictlySorted!372 (toList!6951 call!43671) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> d!123871 (= (+!3064 call!43671 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) lt!456327)))

(declare-fun b!1033808 () Bool)

(declare-fun res!690767 () Bool)

(assert (=> b!1033808 (=> (not res!690767) (not e!584422))))

(assert (=> b!1033808 (= res!690767 (= (getValueByKey!591 (toList!6951 lt!456327) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1033809 () Bool)

(assert (=> b!1033809 (= e!584422 (contains!6036 (toList!6951 lt!456327) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(assert (= (and d!123871 res!690768) b!1033808))

(assert (= (and b!1033808 res!690767) b!1033809))

(declare-fun m!953873 () Bool)

(assert (=> d!123871 m!953873))

(declare-fun m!953875 () Bool)

(assert (=> d!123871 m!953875))

(declare-fun m!953877 () Bool)

(assert (=> d!123871 m!953877))

(declare-fun m!953879 () Bool)

(assert (=> d!123871 m!953879))

(declare-fun m!953881 () Bool)

(assert (=> b!1033808 m!953881))

(declare-fun m!953883 () Bool)

(assert (=> b!1033809 m!953883))

(assert (=> b!1033658 d!123871))

(declare-fun b!1033820 () Bool)

(declare-fun res!690777 () Bool)

(declare-fun e!584425 () Bool)

(assert (=> b!1033820 (=> (not res!690777) (not e!584425))))

(declare-fun size!31868 (LongMapFixedSize!5706) (_ BitVec 32))

(assert (=> b!1033820 (= res!690777 (= (size!31868 lt!456102) (bvadd (_size!2908 lt!456102) (bvsdiv (bvadd (extraKeys!5959 lt!456102) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1033821 () Bool)

(assert (=> b!1033821 (= e!584425 (and (bvsge (extraKeys!5959 lt!456102) #b00000000000000000000000000000000) (bvsle (extraKeys!5959 lt!456102) #b00000000000000000000000000000011) (bvsge (_vacant!2908 lt!456102) #b00000000000000000000000000000000)))))

(declare-fun b!1033818 () Bool)

(declare-fun res!690779 () Bool)

(assert (=> b!1033818 (=> (not res!690779) (not e!584425))))

(assert (=> b!1033818 (= res!690779 (and (= (size!31865 (_values!6250 lt!456102)) (bvadd (mask!30079 lt!456102) #b00000000000000000000000000000001)) (= (size!31864 (_keys!11404 lt!456102)) (size!31865 (_values!6250 lt!456102))) (bvsge (_size!2908 lt!456102) #b00000000000000000000000000000000) (bvsle (_size!2908 lt!456102) (bvadd (mask!30079 lt!456102) #b00000000000000000000000000000001))))))

(declare-fun b!1033819 () Bool)

(declare-fun res!690780 () Bool)

(assert (=> b!1033819 (=> (not res!690780) (not e!584425))))

(assert (=> b!1033819 (= res!690780 (bvsge (size!31868 lt!456102) (_size!2908 lt!456102)))))

(declare-fun d!123873 () Bool)

(declare-fun res!690778 () Bool)

(assert (=> d!123873 (=> (not res!690778) (not e!584425))))

(assert (=> d!123873 (= res!690778 (validMask!0 (mask!30079 lt!456102)))))

(assert (=> d!123873 (= (simpleValid!404 lt!456102) e!584425)))

(assert (= (and d!123873 res!690778) b!1033818))

(assert (= (and b!1033818 res!690779) b!1033819))

(assert (= (and b!1033819 res!690780) b!1033820))

(assert (= (and b!1033820 res!690777) b!1033821))

(declare-fun m!953885 () Bool)

(assert (=> b!1033820 m!953885))

(assert (=> b!1033819 m!953885))

(declare-fun m!953887 () Bool)

(assert (=> d!123873 m!953887))

(assert (=> d!123763 d!123873))

(declare-fun b!1033823 () Bool)

(declare-fun e!584429 () Bool)

(declare-fun e!584427 () Bool)

(assert (=> b!1033823 (= e!584429 e!584427)))

(declare-fun c!104375 () Bool)

(assert (=> b!1033823 (= c!104375 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033824 () Bool)

(declare-fun e!584428 () Bool)

(assert (=> b!1033824 (= e!584428 (contains!6037 Nil!22020 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033825 () Bool)

(declare-fun call!43681 () Bool)

(assert (=> b!1033825 (= e!584427 call!43681)))

(declare-fun b!1033826 () Bool)

(assert (=> b!1033826 (= e!584427 call!43681)))

(declare-fun bm!43678 () Bool)

(assert (=> bm!43678 (= call!43681 (arrayNoDuplicates!0 (_keys!11404 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104375 (Cons!22019 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) Nil!22020) Nil!22020)))))

(declare-fun d!123875 () Bool)

(declare-fun res!690782 () Bool)

(declare-fun e!584426 () Bool)

(assert (=> d!123875 (=> res!690782 e!584426)))

(assert (=> d!123875 (= res!690782 (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!123875 (= (arrayNoDuplicates!0 (_keys!11404 thiss!1427) #b00000000000000000000000000000000 Nil!22020) e!584426)))

(declare-fun b!1033822 () Bool)

(assert (=> b!1033822 (= e!584426 e!584429)))

(declare-fun res!690781 () Bool)

(assert (=> b!1033822 (=> (not res!690781) (not e!584429))))

(assert (=> b!1033822 (= res!690781 (not e!584428))))

(declare-fun res!690783 () Bool)

(assert (=> b!1033822 (=> (not res!690783) (not e!584428))))

(assert (=> b!1033822 (= res!690783 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123875 (not res!690782)) b!1033822))

(assert (= (and b!1033822 res!690783) b!1033824))

(assert (= (and b!1033822 res!690781) b!1033823))

(assert (= (and b!1033823 c!104375) b!1033825))

(assert (= (and b!1033823 (not c!104375)) b!1033826))

(assert (= (or b!1033825 b!1033826) bm!43678))

(assert (=> b!1033823 m!953435))

(assert (=> b!1033823 m!953435))

(assert (=> b!1033823 m!953437))

(assert (=> b!1033824 m!953435))

(assert (=> b!1033824 m!953435))

(declare-fun m!953889 () Bool)

(assert (=> b!1033824 m!953889))

(assert (=> bm!43678 m!953435))

(declare-fun m!953891 () Bool)

(assert (=> bm!43678 m!953891))

(assert (=> b!1033822 m!953435))

(assert (=> b!1033822 m!953435))

(assert (=> b!1033822 m!953437))

(assert (=> b!1033666 d!123875))

(assert (=> b!1033643 d!123819))

(declare-fun b!1033835 () Bool)

(declare-fun e!584437 () Bool)

(declare-fun e!584436 () Bool)

(assert (=> b!1033835 (= e!584437 e!584436)))

(declare-fun lt!456338 () (_ BitVec 64))

(assert (=> b!1033835 (= lt!456338 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000))))

(declare-fun lt!456337 () Unit!33810)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65102 (_ BitVec 64) (_ BitVec 32)) Unit!33810)

(assert (=> b!1033835 (= lt!456337 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11404 lt!456102) lt!456338 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1033835 (arrayContainsKey!0 (_keys!11404 lt!456102) lt!456338 #b00000000000000000000000000000000)))

(declare-fun lt!456336 () Unit!33810)

(assert (=> b!1033835 (= lt!456336 lt!456337)))

(declare-fun res!690789 () Bool)

(declare-datatypes ((SeekEntryResult!9733 0))(
  ( (MissingZero!9733 (index!41302 (_ BitVec 32))) (Found!9733 (index!41303 (_ BitVec 32))) (Intermediate!9733 (undefined!10545 Bool) (index!41304 (_ BitVec 32)) (x!92215 (_ BitVec 32))) (Undefined!9733) (MissingVacant!9733 (index!41305 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65102 (_ BitVec 32)) SeekEntryResult!9733)

(assert (=> b!1033835 (= res!690789 (= (seekEntryOrOpen!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) (_keys!11404 lt!456102) (mask!30079 lt!456102)) (Found!9733 #b00000000000000000000000000000000)))))

(assert (=> b!1033835 (=> (not res!690789) (not e!584436))))

(declare-fun b!1033836 () Bool)

(declare-fun call!43684 () Bool)

(assert (=> b!1033836 (= e!584437 call!43684)))

(declare-fun bm!43681 () Bool)

(assert (=> bm!43681 (= call!43684 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11404 lt!456102) (mask!30079 lt!456102)))))

(declare-fun b!1033837 () Bool)

(declare-fun e!584438 () Bool)

(assert (=> b!1033837 (= e!584438 e!584437)))

(declare-fun c!104378 () Bool)

(assert (=> b!1033837 (= c!104378 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun d!123877 () Bool)

(declare-fun res!690788 () Bool)

(assert (=> d!123877 (=> res!690788 e!584438)))

(assert (=> d!123877 (= res!690788 (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!123877 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11404 lt!456102) (mask!30079 lt!456102)) e!584438)))

(declare-fun b!1033838 () Bool)

(assert (=> b!1033838 (= e!584436 call!43684)))

(assert (= (and d!123877 (not res!690788)) b!1033837))

(assert (= (and b!1033837 c!104378) b!1033835))

(assert (= (and b!1033837 (not c!104378)) b!1033836))

(assert (= (and b!1033835 res!690789) b!1033838))

(assert (= (or b!1033838 b!1033836) bm!43681))

(assert (=> b!1033835 m!953851))

(declare-fun m!953893 () Bool)

(assert (=> b!1033835 m!953893))

(declare-fun m!953895 () Bool)

(assert (=> b!1033835 m!953895))

(assert (=> b!1033835 m!953851))

(declare-fun m!953897 () Bool)

(assert (=> b!1033835 m!953897))

(declare-fun m!953899 () Bool)

(assert (=> bm!43681 m!953899))

(assert (=> b!1033837 m!953851))

(assert (=> b!1033837 m!953851))

(assert (=> b!1033837 m!953853))

(assert (=> b!1033641 d!123877))

(declare-fun d!123879 () Bool)

(declare-fun e!584439 () Bool)

(assert (=> d!123879 e!584439))

(declare-fun res!690790 () Bool)

(assert (=> d!123879 (=> res!690790 e!584439)))

(declare-fun lt!456339 () Bool)

(assert (=> d!123879 (= res!690790 (not lt!456339))))

(declare-fun lt!456340 () Bool)

(assert (=> d!123879 (= lt!456339 lt!456340)))

(declare-fun lt!456341 () Unit!33810)

(declare-fun e!584440 () Unit!33810)

(assert (=> d!123879 (= lt!456341 e!584440)))

(declare-fun c!104379 () Bool)

(assert (=> d!123879 (= c!104379 lt!456340)))

(assert (=> d!123879 (= lt!456340 (containsKey!564 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123879 (= (contains!6035 lt!456160 #b1000000000000000000000000000000000000000000000000000000000000000) lt!456339)))

(declare-fun b!1033839 () Bool)

(declare-fun lt!456342 () Unit!33810)

(assert (=> b!1033839 (= e!584440 lt!456342)))

(assert (=> b!1033839 (= lt!456342 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1033839 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033840 () Bool)

(declare-fun Unit!33819 () Unit!33810)

(assert (=> b!1033840 (= e!584440 Unit!33819)))

(declare-fun b!1033841 () Bool)

(assert (=> b!1033841 (= e!584439 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123879 c!104379) b!1033839))

(assert (= (and d!123879 (not c!104379)) b!1033840))

(assert (= (and d!123879 (not res!690790)) b!1033841))

(declare-fun m!953901 () Bool)

(assert (=> d!123879 m!953901))

(declare-fun m!953903 () Bool)

(assert (=> b!1033839 m!953903))

(assert (=> b!1033839 m!953717))

(assert (=> b!1033839 m!953717))

(declare-fun m!953905 () Bool)

(assert (=> b!1033839 m!953905))

(assert (=> b!1033841 m!953717))

(assert (=> b!1033841 m!953717))

(assert (=> b!1033841 m!953905))

(assert (=> bm!43657 d!123879))

(declare-fun d!123881 () Bool)

(assert (=> d!123881 (= (apply!941 lt!456188 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (get!16445 (getValueByKey!591 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30230 () Bool)

(assert (= bs!30230 d!123881))

(assert (=> bs!30230 m!953435))

(assert (=> bs!30230 m!953869))

(assert (=> bs!30230 m!953869))

(declare-fun m!953907 () Bool)

(assert (=> bs!30230 m!953907))

(assert (=> b!1033659 d!123881))

(declare-fun d!123883 () Bool)

(declare-fun c!104382 () Bool)

(assert (=> d!123883 (= c!104382 ((_ is ValueCellFull!11556) (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!584443 () V!37565)

(assert (=> d!123883 (= (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) e!584443)))

(declare-fun b!1033846 () Bool)

(declare-fun get!16446 (ValueCell!11556 V!37565) V!37565)

(assert (=> b!1033846 (= e!584443 (get!16446 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033847 () Bool)

(declare-fun get!16447 (ValueCell!11556 V!37565) V!37565)

(assert (=> b!1033847 (= e!584443 (get!16447 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123883 c!104382) b!1033846))

(assert (= (and d!123883 (not c!104382)) b!1033847))

(assert (=> b!1033846 m!953445))

(assert (=> b!1033846 m!953385))

(declare-fun m!953909 () Bool)

(assert (=> b!1033846 m!953909))

(assert (=> b!1033847 m!953445))

(assert (=> b!1033847 m!953385))

(declare-fun m!953911 () Bool)

(assert (=> b!1033847 m!953911))

(assert (=> b!1033659 d!123883))

(declare-fun d!123885 () Bool)

(assert (=> d!123885 (= (apply!941 lt!456160 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16445 (getValueByKey!591 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30231 () Bool)

(assert (= bs!30231 d!123885))

(declare-fun m!953913 () Bool)

(assert (=> bs!30231 m!953913))

(assert (=> bs!30231 m!953913))

(declare-fun m!953915 () Bool)

(assert (=> bs!30231 m!953915))

(assert (=> b!1033631 d!123885))

(declare-fun bm!43684 () Bool)

(declare-fun call!43687 () (_ BitVec 32))

(assert (=> bm!43684 (= call!43687 (arrayCountValidKeys!0 (_keys!11404 lt!456102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 lt!456102))))))

(declare-fun b!1033857 () Bool)

(declare-fun e!584448 () (_ BitVec 32))

(assert (=> b!1033857 (= e!584448 call!43687)))

(declare-fun b!1033858 () Bool)

(assert (=> b!1033858 (= e!584448 (bvadd #b00000000000000000000000000000001 call!43687))))

(declare-fun b!1033859 () Bool)

(declare-fun e!584449 () (_ BitVec 32))

(assert (=> b!1033859 (= e!584449 e!584448)))

(declare-fun c!104387 () Bool)

(assert (=> b!1033859 (= c!104387 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun b!1033856 () Bool)

(assert (=> b!1033856 (= e!584449 #b00000000000000000000000000000000)))

(declare-fun d!123887 () Bool)

(declare-fun lt!456345 () (_ BitVec 32))

(assert (=> d!123887 (and (bvsge lt!456345 #b00000000000000000000000000000000) (bvsle lt!456345 (bvsub (size!31864 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(assert (=> d!123887 (= lt!456345 e!584449)))

(declare-fun c!104388 () Bool)

(assert (=> d!123887 (= c!104388 (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!123887 (and (bvsle #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31864 (_keys!11404 lt!456102)) (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!123887 (= (arrayCountValidKeys!0 (_keys!11404 lt!456102) #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))) lt!456345)))

(assert (= (and d!123887 c!104388) b!1033856))

(assert (= (and d!123887 (not c!104388)) b!1033859))

(assert (= (and b!1033859 c!104387) b!1033858))

(assert (= (and b!1033859 (not c!104387)) b!1033857))

(assert (= (or b!1033858 b!1033857) bm!43684))

(declare-fun m!953917 () Bool)

(assert (=> bm!43684 m!953917))

(assert (=> b!1033859 m!953851))

(assert (=> b!1033859 m!953851))

(assert (=> b!1033859 m!953853))

(assert (=> b!1033640 d!123887))

(declare-fun bm!43685 () Bool)

(declare-fun call!43688 () (_ BitVec 32))

(assert (=> bm!43685 (= call!43688 (arrayCountValidKeys!0 (_keys!11404 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1033861 () Bool)

(declare-fun e!584450 () (_ BitVec 32))

(assert (=> b!1033861 (= e!584450 call!43688)))

(declare-fun b!1033862 () Bool)

(assert (=> b!1033862 (= e!584450 (bvadd #b00000000000000000000000000000001 call!43688))))

(declare-fun b!1033863 () Bool)

(declare-fun e!584451 () (_ BitVec 32))

(assert (=> b!1033863 (= e!584451 e!584450)))

(declare-fun c!104389 () Bool)

(assert (=> b!1033863 (= c!104389 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033860 () Bool)

(assert (=> b!1033860 (= e!584451 #b00000000000000000000000000000000)))

(declare-fun d!123889 () Bool)

(declare-fun lt!456346 () (_ BitVec 32))

(assert (=> d!123889 (and (bvsge lt!456346 #b00000000000000000000000000000000) (bvsle lt!456346 (bvsub (size!31864 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123889 (= lt!456346 e!584451)))

(declare-fun c!104390 () Bool)

(assert (=> d!123889 (= c!104390 (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!123889 (and (bvsle #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31864 (_keys!11404 thiss!1427)) (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!123889 (= (arrayCountValidKeys!0 (_keys!11404 thiss!1427) #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))) lt!456346)))

(assert (= (and d!123889 c!104390) b!1033860))

(assert (= (and d!123889 (not c!104390)) b!1033863))

(assert (= (and b!1033863 c!104389) b!1033862))

(assert (= (and b!1033863 (not c!104389)) b!1033861))

(assert (= (or b!1033862 b!1033861) bm!43685))

(declare-fun m!953919 () Bool)

(assert (=> bm!43685 m!953919))

(assert (=> b!1033863 m!953435))

(assert (=> b!1033863 m!953435))

(assert (=> b!1033863 m!953437))

(assert (=> b!1033664 d!123889))

(declare-fun d!123891 () Bool)

(assert (=> d!123891 (= (apply!941 lt!456160 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (get!16445 (getValueByKey!591 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30232 () Bool)

(assert (= bs!30232 d!123891))

(assert (=> bs!30232 m!953435))

(declare-fun m!953921 () Bool)

(assert (=> bs!30232 m!953921))

(assert (=> bs!30232 m!953921))

(declare-fun m!953923 () Bool)

(assert (=> bs!30232 m!953923))

(assert (=> b!1033629 d!123891))

(assert (=> b!1033629 d!123883))

(assert (=> b!1033613 d!123819))

(declare-fun b!1033864 () Bool)

(declare-fun e!584453 () Bool)

(declare-fun e!584452 () Bool)

(assert (=> b!1033864 (= e!584453 e!584452)))

(declare-fun lt!456349 () (_ BitVec 64))

(assert (=> b!1033864 (= lt!456349 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!456348 () Unit!33810)

(assert (=> b!1033864 (= lt!456348 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11404 thiss!1427) lt!456349 #b00000000000000000000000000000000))))

(assert (=> b!1033864 (arrayContainsKey!0 (_keys!11404 thiss!1427) lt!456349 #b00000000000000000000000000000000)))

(declare-fun lt!456347 () Unit!33810)

(assert (=> b!1033864 (= lt!456347 lt!456348)))

(declare-fun res!690792 () Bool)

(assert (=> b!1033864 (= res!690792 (= (seekEntryOrOpen!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (_keys!11404 thiss!1427) (mask!30079 thiss!1427)) (Found!9733 #b00000000000000000000000000000000)))))

(assert (=> b!1033864 (=> (not res!690792) (not e!584452))))

(declare-fun b!1033865 () Bool)

(declare-fun call!43689 () Bool)

(assert (=> b!1033865 (= e!584453 call!43689)))

(declare-fun bm!43686 () Bool)

(assert (=> bm!43686 (= call!43689 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11404 thiss!1427) (mask!30079 thiss!1427)))))

(declare-fun b!1033866 () Bool)

(declare-fun e!584454 () Bool)

(assert (=> b!1033866 (= e!584454 e!584453)))

(declare-fun c!104391 () Bool)

(assert (=> b!1033866 (= c!104391 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123893 () Bool)

(declare-fun res!690791 () Bool)

(assert (=> d!123893 (=> res!690791 e!584454)))

(assert (=> d!123893 (= res!690791 (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!123893 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11404 thiss!1427) (mask!30079 thiss!1427)) e!584454)))

(declare-fun b!1033867 () Bool)

(assert (=> b!1033867 (= e!584452 call!43689)))

(assert (= (and d!123893 (not res!690791)) b!1033866))

(assert (= (and b!1033866 c!104391) b!1033864))

(assert (= (and b!1033866 (not c!104391)) b!1033865))

(assert (= (and b!1033864 res!690792) b!1033867))

(assert (= (or b!1033867 b!1033865) bm!43686))

(assert (=> b!1033864 m!953435))

(declare-fun m!953925 () Bool)

(assert (=> b!1033864 m!953925))

(declare-fun m!953927 () Bool)

(assert (=> b!1033864 m!953927))

(assert (=> b!1033864 m!953435))

(declare-fun m!953929 () Bool)

(assert (=> b!1033864 m!953929))

(declare-fun m!953931 () Bool)

(assert (=> bm!43686 m!953931))

(assert (=> b!1033866 m!953435))

(assert (=> b!1033866 m!953435))

(assert (=> b!1033866 m!953437))

(assert (=> b!1033665 d!123893))

(declare-fun d!123895 () Bool)

(declare-fun e!584455 () Bool)

(assert (=> d!123895 e!584455))

(declare-fun res!690794 () Bool)

(assert (=> d!123895 (=> (not res!690794) (not e!584455))))

(declare-fun lt!456351 () ListLongMap!13871)

(assert (=> d!123895 (= res!690794 (contains!6035 lt!456351 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456350 () List!22022)

(assert (=> d!123895 (= lt!456351 (ListLongMap!13872 lt!456350))))

(declare-fun lt!456353 () Unit!33810)

(declare-fun lt!456352 () Unit!33810)

(assert (=> d!123895 (= lt!456353 lt!456352)))

(assert (=> d!123895 (= (getValueByKey!591 lt!456350 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> d!123895 (= lt!456352 (lemmaContainsTupThenGetReturnValue!280 lt!456350 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> d!123895 (= lt!456350 (insertStrictlySorted!372 (toList!6951 call!43664) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> d!123895 (= (+!3064 call!43664 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) lt!456351)))

(declare-fun b!1033868 () Bool)

(declare-fun res!690793 () Bool)

(assert (=> b!1033868 (=> (not res!690793) (not e!584455))))

(assert (=> b!1033868 (= res!690793 (= (getValueByKey!591 (toList!6951 lt!456351) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1033869 () Bool)

(assert (=> b!1033869 (= e!584455 (contains!6036 (toList!6951 lt!456351) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(assert (= (and d!123895 res!690794) b!1033868))

(assert (= (and b!1033868 res!690793) b!1033869))

(declare-fun m!953933 () Bool)

(assert (=> d!123895 m!953933))

(declare-fun m!953935 () Bool)

(assert (=> d!123895 m!953935))

(declare-fun m!953937 () Bool)

(assert (=> d!123895 m!953937))

(declare-fun m!953939 () Bool)

(assert (=> d!123895 m!953939))

(declare-fun m!953941 () Bool)

(assert (=> b!1033868 m!953941))

(declare-fun m!953943 () Bool)

(assert (=> b!1033869 m!953943))

(assert (=> b!1033628 d!123895))

(declare-fun d!123897 () Bool)

(declare-fun e!584456 () Bool)

(assert (=> d!123897 e!584456))

(declare-fun res!690795 () Bool)

(assert (=> d!123897 (=> res!690795 e!584456)))

(declare-fun lt!456354 () Bool)

(assert (=> d!123897 (= res!690795 (not lt!456354))))

(declare-fun lt!456355 () Bool)

(assert (=> d!123897 (= lt!456354 lt!456355)))

(declare-fun lt!456356 () Unit!33810)

(declare-fun e!584457 () Unit!33810)

(assert (=> d!123897 (= lt!456356 e!584457)))

(declare-fun c!104392 () Bool)

(assert (=> d!123897 (= c!104392 lt!456355)))

(assert (=> d!123897 (= lt!456355 (containsKey!564 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123897 (= (contains!6035 lt!456160 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) lt!456354)))

(declare-fun b!1033870 () Bool)

(declare-fun lt!456357 () Unit!33810)

(assert (=> b!1033870 (= e!584457 lt!456357)))

(assert (=> b!1033870 (= lt!456357 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033870 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033871 () Bool)

(declare-fun Unit!33820 () Unit!33810)

(assert (=> b!1033871 (= e!584457 Unit!33820)))

(declare-fun b!1033872 () Bool)

(assert (=> b!1033872 (= e!584456 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!123897 c!104392) b!1033870))

(assert (= (and d!123897 (not c!104392)) b!1033871))

(assert (= (and d!123897 (not res!690795)) b!1033872))

(assert (=> d!123897 m!953435))

(declare-fun m!953945 () Bool)

(assert (=> d!123897 m!953945))

(assert (=> b!1033870 m!953435))

(declare-fun m!953947 () Bool)

(assert (=> b!1033870 m!953947))

(assert (=> b!1033870 m!953435))

(assert (=> b!1033870 m!953921))

(assert (=> b!1033870 m!953921))

(declare-fun m!953949 () Bool)

(assert (=> b!1033870 m!953949))

(assert (=> b!1033872 m!953435))

(assert (=> b!1033872 m!953921))

(assert (=> b!1033872 m!953921))

(assert (=> b!1033872 m!953949))

(assert (=> b!1033614 d!123897))

(declare-fun b!1033873 () Bool)

(declare-fun e!584462 () Bool)

(assert (=> b!1033873 (= e!584462 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun b!1033874 () Bool)

(declare-fun e!584468 () Bool)

(declare-fun e!584465 () Bool)

(assert (=> b!1033874 (= e!584468 e!584465)))

(declare-fun res!690797 () Bool)

(assert (=> b!1033874 (=> (not res!690797) (not e!584465))))

(declare-fun lt!456362 () ListLongMap!13871)

(assert (=> b!1033874 (= res!690797 (contains!6035 lt!456362 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(assert (=> b!1033874 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(declare-fun b!1033875 () Bool)

(declare-fun e!584470 () Unit!33810)

(declare-fun Unit!33821 () Unit!33810)

(assert (=> b!1033875 (= e!584470 Unit!33821)))

(declare-fun bm!43687 () Bool)

(declare-fun call!43690 () Bool)

(assert (=> bm!43687 (= call!43690 (contains!6035 lt!456362 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033876 () Bool)

(declare-fun res!690801 () Bool)

(declare-fun e!584461 () Bool)

(assert (=> b!1033876 (=> (not res!690801) (not e!584461))))

(assert (=> b!1033876 (= res!690801 e!584468)))

(declare-fun res!690799 () Bool)

(assert (=> b!1033876 (=> res!690799 e!584468)))

(declare-fun e!584467 () Bool)

(assert (=> b!1033876 (= res!690799 (not e!584467))))

(declare-fun res!690798 () Bool)

(assert (=> b!1033876 (=> (not res!690798) (not e!584467))))

(assert (=> b!1033876 (= res!690798 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(declare-fun b!1033877 () Bool)

(declare-fun e!584463 () Bool)

(declare-fun call!43692 () Bool)

(assert (=> b!1033877 (= e!584463 (not call!43692))))

(declare-fun b!1033878 () Bool)

(assert (=> b!1033878 (= e!584467 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun b!1033879 () Bool)

(declare-fun lt!456373 () Unit!33810)

(assert (=> b!1033879 (= e!584470 lt!456373)))

(declare-fun lt!456359 () ListLongMap!13871)

(assert (=> b!1033879 (= lt!456359 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) #b00000000000000000000000000000000 (defaultEntry!6227 lt!456102)))))

(declare-fun lt!456367 () (_ BitVec 64))

(assert (=> b!1033879 (= lt!456367 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456370 () (_ BitVec 64))

(assert (=> b!1033879 (= lt!456370 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000))))

(declare-fun lt!456363 () Unit!33810)

(assert (=> b!1033879 (= lt!456363 (addStillContains!629 lt!456359 lt!456367 (zeroValue!6063 lt!456102) lt!456370))))

(assert (=> b!1033879 (contains!6035 (+!3064 lt!456359 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102))) lt!456370)))

(declare-fun lt!456365 () Unit!33810)

(assert (=> b!1033879 (= lt!456365 lt!456363)))

(declare-fun lt!456366 () ListLongMap!13871)

(assert (=> b!1033879 (= lt!456366 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) #b00000000000000000000000000000000 (defaultEntry!6227 lt!456102)))))

(declare-fun lt!456368 () (_ BitVec 64))

(assert (=> b!1033879 (= lt!456368 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456376 () (_ BitVec 64))

(assert (=> b!1033879 (= lt!456376 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000))))

(declare-fun lt!456360 () Unit!33810)

(assert (=> b!1033879 (= lt!456360 (addApplyDifferent!481 lt!456366 lt!456368 (minValue!6063 lt!456102) lt!456376))))

(assert (=> b!1033879 (= (apply!941 (+!3064 lt!456366 (tuple2!15835 lt!456368 (minValue!6063 lt!456102))) lt!456376) (apply!941 lt!456366 lt!456376))))

(declare-fun lt!456372 () Unit!33810)

(assert (=> b!1033879 (= lt!456372 lt!456360)))

(declare-fun lt!456378 () ListLongMap!13871)

(assert (=> b!1033879 (= lt!456378 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) #b00000000000000000000000000000000 (defaultEntry!6227 lt!456102)))))

(declare-fun lt!456375 () (_ BitVec 64))

(assert (=> b!1033879 (= lt!456375 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456371 () (_ BitVec 64))

(assert (=> b!1033879 (= lt!456371 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000))))

(declare-fun lt!456379 () Unit!33810)

(assert (=> b!1033879 (= lt!456379 (addApplyDifferent!481 lt!456378 lt!456375 (zeroValue!6063 lt!456102) lt!456371))))

(assert (=> b!1033879 (= (apply!941 (+!3064 lt!456378 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102))) lt!456371) (apply!941 lt!456378 lt!456371))))

(declare-fun lt!456361 () Unit!33810)

(assert (=> b!1033879 (= lt!456361 lt!456379)))

(declare-fun lt!456377 () ListLongMap!13871)

(assert (=> b!1033879 (= lt!456377 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) #b00000000000000000000000000000000 (defaultEntry!6227 lt!456102)))))

(declare-fun lt!456374 () (_ BitVec 64))

(assert (=> b!1033879 (= lt!456374 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!456358 () (_ BitVec 64))

(assert (=> b!1033879 (= lt!456358 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000))))

(assert (=> b!1033879 (= lt!456373 (addApplyDifferent!481 lt!456377 lt!456374 (minValue!6063 lt!456102) lt!456358))))

(assert (=> b!1033879 (= (apply!941 (+!3064 lt!456377 (tuple2!15835 lt!456374 (minValue!6063 lt!456102))) lt!456358) (apply!941 lt!456377 lt!456358))))

(declare-fun call!43695 () ListLongMap!13871)

(declare-fun c!104395 () Bool)

(declare-fun bm!43689 () Bool)

(declare-fun call!43696 () ListLongMap!13871)

(declare-fun c!104397 () Bool)

(declare-fun call!43694 () ListLongMap!13871)

(declare-fun call!43693 () ListLongMap!13871)

(assert (=> bm!43689 (= call!43694 (+!3064 (ite c!104395 call!43695 (ite c!104397 call!43696 call!43693)) (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))))))

(declare-fun b!1033880 () Bool)

(declare-fun e!584458 () Bool)

(assert (=> b!1033880 (= e!584458 (= (apply!941 lt!456362 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6063 lt!456102)))))

(declare-fun bm!43690 () Bool)

(assert (=> bm!43690 (= call!43693 call!43696)))

(declare-fun bm!43691 () Bool)

(assert (=> bm!43691 (= call!43695 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) #b00000000000000000000000000000000 (defaultEntry!6227 lt!456102)))))

(declare-fun b!1033881 () Bool)

(declare-fun e!584459 () ListLongMap!13871)

(assert (=> b!1033881 (= e!584459 call!43693)))

(declare-fun b!1033882 () Bool)

(declare-fun e!584464 () Bool)

(assert (=> b!1033882 (= e!584461 e!584464)))

(declare-fun c!104394 () Bool)

(assert (=> b!1033882 (= c!104394 (not (= (bvand (extraKeys!5959 lt!456102) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!43692 () Bool)

(assert (=> bm!43692 (= call!43696 call!43695)))

(declare-fun b!1033883 () Bool)

(declare-fun res!690803 () Bool)

(assert (=> b!1033883 (=> (not res!690803) (not e!584461))))

(assert (=> b!1033883 (= res!690803 e!584463)))

(declare-fun c!104398 () Bool)

(assert (=> b!1033883 (= c!104398 (not (= (bvand (extraKeys!5959 lt!456102) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!43693 () Bool)

(assert (=> bm!43693 (= call!43692 (contains!6035 lt!456362 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033884 () Bool)

(assert (=> b!1033884 (= e!584464 e!584458)))

(declare-fun res!690796 () Bool)

(assert (=> b!1033884 (= res!690796 call!43690)))

(assert (=> b!1033884 (=> (not res!690796) (not e!584458))))

(declare-fun b!1033885 () Bool)

(declare-fun e!584466 () ListLongMap!13871)

(declare-fun call!43691 () ListLongMap!13871)

(assert (=> b!1033885 (= e!584466 call!43691)))

(declare-fun b!1033886 () Bool)

(assert (=> b!1033886 (= e!584464 (not call!43690))))

(declare-fun b!1033887 () Bool)

(declare-fun e!584469 () ListLongMap!13871)

(assert (=> b!1033887 (= e!584469 e!584466)))

(assert (=> b!1033887 (= c!104397 (and (not (= (bvand (extraKeys!5959 lt!456102) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5959 lt!456102) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!123899 () Bool)

(assert (=> d!123899 e!584461))

(declare-fun res!690800 () Bool)

(assert (=> d!123899 (=> (not res!690800) (not e!584461))))

(assert (=> d!123899 (= res!690800 (or (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))))

(declare-fun lt!456369 () ListLongMap!13871)

(assert (=> d!123899 (= lt!456362 lt!456369)))

(declare-fun lt!456364 () Unit!33810)

(assert (=> d!123899 (= lt!456364 e!584470)))

(declare-fun c!104393 () Bool)

(assert (=> d!123899 (= c!104393 e!584462)))

(declare-fun res!690804 () Bool)

(assert (=> d!123899 (=> (not res!690804) (not e!584462))))

(assert (=> d!123899 (= res!690804 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!123899 (= lt!456369 e!584469)))

(assert (=> d!123899 (= c!104395 (and (not (= (bvand (extraKeys!5959 lt!456102) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5959 lt!456102) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123899 (validMask!0 (mask!30079 lt!456102))))

(assert (=> d!123899 (= (getCurrentListMap!3957 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) #b00000000000000000000000000000000 (defaultEntry!6227 lt!456102)) lt!456362)))

(declare-fun bm!43688 () Bool)

(assert (=> bm!43688 (= call!43691 call!43694)))

(declare-fun b!1033888 () Bool)

(assert (=> b!1033888 (= e!584469 (+!3064 call!43694 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))))))

(declare-fun b!1033889 () Bool)

(assert (=> b!1033889 (= e!584465 (= (apply!941 lt!456362 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)) (get!16444 (select (arr!31342 (_values!6250 lt!456102)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 lt!456102) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1033889 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31865 (_values!6250 lt!456102))))))

(assert (=> b!1033889 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(declare-fun b!1033890 () Bool)

(declare-fun e!584460 () Bool)

(assert (=> b!1033890 (= e!584463 e!584460)))

(declare-fun res!690802 () Bool)

(assert (=> b!1033890 (= res!690802 call!43692)))

(assert (=> b!1033890 (=> (not res!690802) (not e!584460))))

(declare-fun b!1033891 () Bool)

(assert (=> b!1033891 (= e!584460 (= (apply!941 lt!456362 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6063 lt!456102)))))

(declare-fun b!1033892 () Bool)

(assert (=> b!1033892 (= e!584459 call!43691)))

(declare-fun b!1033893 () Bool)

(declare-fun c!104396 () Bool)

(assert (=> b!1033893 (= c!104396 (and (not (= (bvand (extraKeys!5959 lt!456102) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5959 lt!456102) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1033893 (= e!584466 e!584459)))

(assert (= (and d!123899 c!104395) b!1033888))

(assert (= (and d!123899 (not c!104395)) b!1033887))

(assert (= (and b!1033887 c!104397) b!1033885))

(assert (= (and b!1033887 (not c!104397)) b!1033893))

(assert (= (and b!1033893 c!104396) b!1033892))

(assert (= (and b!1033893 (not c!104396)) b!1033881))

(assert (= (or b!1033892 b!1033881) bm!43690))

(assert (= (or b!1033885 bm!43690) bm!43692))

(assert (= (or b!1033885 b!1033892) bm!43688))

(assert (= (or b!1033888 bm!43692) bm!43691))

(assert (= (or b!1033888 bm!43688) bm!43689))

(assert (= (and d!123899 res!690804) b!1033873))

(assert (= (and d!123899 c!104393) b!1033879))

(assert (= (and d!123899 (not c!104393)) b!1033875))

(assert (= (and d!123899 res!690800) b!1033876))

(assert (= (and b!1033876 res!690798) b!1033878))

(assert (= (and b!1033876 (not res!690799)) b!1033874))

(assert (= (and b!1033874 res!690797) b!1033889))

(assert (= (and b!1033876 res!690801) b!1033883))

(assert (= (and b!1033883 c!104398) b!1033890))

(assert (= (and b!1033883 (not c!104398)) b!1033877))

(assert (= (and b!1033890 res!690802) b!1033891))

(assert (= (or b!1033890 b!1033877) bm!43693))

(assert (= (and b!1033883 res!690803) b!1033882))

(assert (= (and b!1033882 c!104394) b!1033884))

(assert (= (and b!1033882 (not c!104394)) b!1033886))

(assert (= (and b!1033884 res!690796) b!1033880))

(assert (= (or b!1033884 b!1033886) bm!43687))

(declare-fun b_lambda!16099 () Bool)

(assert (=> (not b_lambda!16099) (not b!1033889)))

(declare-fun t!31232 () Bool)

(declare-fun tb!7033 () Bool)

(assert (=> (and b!1033541 (= (defaultEntry!6227 thiss!1427) (defaultEntry!6227 lt!456102)) t!31232) tb!7033))

(declare-fun result!14405 () Bool)

(assert (=> tb!7033 (= result!14405 tp_is_empty!24519)))

(assert (=> b!1033889 t!31232))

(declare-fun b_and!33307 () Bool)

(assert (= b_and!33305 (and (=> t!31232 result!14405) b_and!33307)))

(declare-fun m!953951 () Bool)

(assert (=> bm!43689 m!953951))

(declare-fun m!953953 () Bool)

(assert (=> b!1033888 m!953953))

(declare-fun m!953955 () Bool)

(assert (=> b!1033891 m!953955))

(assert (=> b!1033878 m!953851))

(assert (=> b!1033878 m!953851))

(assert (=> b!1033878 m!953853))

(declare-fun m!953957 () Bool)

(assert (=> bm!43691 m!953957))

(assert (=> b!1033873 m!953851))

(assert (=> b!1033873 m!953851))

(assert (=> b!1033873 m!953853))

(declare-fun m!953959 () Bool)

(assert (=> bm!43693 m!953959))

(assert (=> b!1033874 m!953851))

(assert (=> b!1033874 m!953851))

(declare-fun m!953961 () Bool)

(assert (=> b!1033874 m!953961))

(declare-fun m!953963 () Bool)

(assert (=> b!1033889 m!953963))

(declare-fun m!953965 () Bool)

(assert (=> b!1033889 m!953965))

(assert (=> b!1033889 m!953963))

(assert (=> b!1033889 m!953965))

(declare-fun m!953967 () Bool)

(assert (=> b!1033889 m!953967))

(assert (=> b!1033889 m!953851))

(assert (=> b!1033889 m!953851))

(declare-fun m!953969 () Bool)

(assert (=> b!1033889 m!953969))

(assert (=> b!1033879 m!953957))

(declare-fun m!953971 () Bool)

(assert (=> b!1033879 m!953971))

(declare-fun m!953973 () Bool)

(assert (=> b!1033879 m!953973))

(declare-fun m!953975 () Bool)

(assert (=> b!1033879 m!953975))

(declare-fun m!953977 () Bool)

(assert (=> b!1033879 m!953977))

(assert (=> b!1033879 m!953977))

(declare-fun m!953979 () Bool)

(assert (=> b!1033879 m!953979))

(declare-fun m!953981 () Bool)

(assert (=> b!1033879 m!953981))

(declare-fun m!953983 () Bool)

(assert (=> b!1033879 m!953983))

(declare-fun m!953985 () Bool)

(assert (=> b!1033879 m!953985))

(declare-fun m!953987 () Bool)

(assert (=> b!1033879 m!953987))

(declare-fun m!953989 () Bool)

(assert (=> b!1033879 m!953989))

(declare-fun m!953991 () Bool)

(assert (=> b!1033879 m!953991))

(declare-fun m!953993 () Bool)

(assert (=> b!1033879 m!953993))

(assert (=> b!1033879 m!953991))

(assert (=> b!1033879 m!953983))

(declare-fun m!953995 () Bool)

(assert (=> b!1033879 m!953995))

(assert (=> b!1033879 m!953851))

(assert (=> b!1033879 m!953981))

(declare-fun m!953997 () Bool)

(assert (=> b!1033879 m!953997))

(declare-fun m!953999 () Bool)

(assert (=> b!1033879 m!953999))

(declare-fun m!954001 () Bool)

(assert (=> bm!43687 m!954001))

(assert (=> d!123899 m!953887))

(declare-fun m!954003 () Bool)

(assert (=> b!1033880 m!954003))

(assert (=> d!123769 d!123899))

(declare-fun d!123901 () Bool)

(declare-fun e!584471 () Bool)

(assert (=> d!123901 e!584471))

(declare-fun res!690805 () Bool)

(assert (=> d!123901 (=> res!690805 e!584471)))

(declare-fun lt!456380 () Bool)

(assert (=> d!123901 (= res!690805 (not lt!456380))))

(declare-fun lt!456381 () Bool)

(assert (=> d!123901 (= lt!456380 lt!456381)))

(declare-fun lt!456382 () Unit!33810)

(declare-fun e!584472 () Unit!33810)

(assert (=> d!123901 (= lt!456382 e!584472)))

(declare-fun c!104399 () Bool)

(assert (=> d!123901 (= c!104399 lt!456381)))

(assert (=> d!123901 (= lt!456381 (containsKey!564 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123901 (= (contains!6035 lt!456188 #b0000000000000000000000000000000000000000000000000000000000000000) lt!456380)))

(declare-fun b!1033894 () Bool)

(declare-fun lt!456383 () Unit!33810)

(assert (=> b!1033894 (= e!584472 lt!456383)))

(assert (=> b!1033894 (= lt!456383 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1033894 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033895 () Bool)

(declare-fun Unit!33822 () Unit!33810)

(assert (=> b!1033895 (= e!584472 Unit!33822)))

(declare-fun b!1033896 () Bool)

(assert (=> b!1033896 (= e!584471 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123901 c!104399) b!1033894))

(assert (= (and d!123901 (not c!104399)) b!1033895))

(assert (= (and d!123901 (not res!690805)) b!1033896))

(declare-fun m!954005 () Bool)

(assert (=> d!123901 m!954005))

(declare-fun m!954007 () Bool)

(assert (=> b!1033894 m!954007))

(assert (=> b!1033894 m!953847))

(assert (=> b!1033894 m!953847))

(declare-fun m!954009 () Bool)

(assert (=> b!1033894 m!954009))

(assert (=> b!1033896 m!953847))

(assert (=> b!1033896 m!953847))

(assert (=> b!1033896 m!954009))

(assert (=> bm!43670 d!123901))

(assert (=> d!123759 d!123821))

(declare-fun d!123903 () Bool)

(declare-fun e!584473 () Bool)

(assert (=> d!123903 e!584473))

(declare-fun res!690806 () Bool)

(assert (=> d!123903 (=> res!690806 e!584473)))

(declare-fun lt!456384 () Bool)

(assert (=> d!123903 (= res!690806 (not lt!456384))))

(declare-fun lt!456385 () Bool)

(assert (=> d!123903 (= lt!456384 lt!456385)))

(declare-fun lt!456386 () Unit!33810)

(declare-fun e!584474 () Unit!33810)

(assert (=> d!123903 (= lt!456386 e!584474)))

(declare-fun c!104400 () Bool)

(assert (=> d!123903 (= c!104400 lt!456385)))

(assert (=> d!123903 (= lt!456385 (containsKey!564 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123903 (= (contains!6035 lt!456183 #b0000000000000000000000000000000000000000000000000000000000000000) lt!456384)))

(declare-fun b!1033897 () Bool)

(declare-fun lt!456387 () Unit!33810)

(assert (=> b!1033897 (= e!584474 lt!456387)))

(assert (=> b!1033897 (= lt!456387 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1033897 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033898 () Bool)

(declare-fun Unit!33823 () Unit!33810)

(assert (=> b!1033898 (= e!584474 Unit!33823)))

(declare-fun b!1033899 () Bool)

(assert (=> b!1033899 (= e!584473 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123903 c!104400) b!1033897))

(assert (= (and d!123903 (not c!104400)) b!1033898))

(assert (= (and d!123903 (not res!690806)) b!1033899))

(declare-fun m!954011 () Bool)

(assert (=> d!123903 m!954011))

(declare-fun m!954013 () Bool)

(assert (=> b!1033897 m!954013))

(declare-fun m!954015 () Bool)

(assert (=> b!1033897 m!954015))

(assert (=> b!1033897 m!954015))

(declare-fun m!954017 () Bool)

(assert (=> b!1033897 m!954017))

(assert (=> b!1033899 m!954015))

(assert (=> b!1033899 m!954015))

(assert (=> b!1033899 m!954017))

(assert (=> d!123765 d!123903))

(declare-fun b!1033900 () Bool)

(declare-fun e!584475 () List!22022)

(assert (=> b!1033900 (= e!584475 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))))

(declare-fun b!1033901 () Bool)

(declare-fun e!584476 () List!22022)

(assert (=> b!1033901 (= e!584476 Nil!22019)))

(declare-fun b!1033902 () Bool)

(assert (=> b!1033902 (= e!584475 e!584476)))

(declare-fun c!104401 () Bool)

(assert (=> b!1033902 (= c!104401 (and ((_ is Cons!22018) (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))) (not (= (_1!7927 (h!23220 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1033903 () Bool)

(declare-fun e!584477 () Bool)

(declare-fun lt!456388 () List!22022)

(assert (=> b!1033903 (= e!584477 (not (containsKey!564 lt!456388 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!123905 () Bool)

(assert (=> d!123905 e!584477))

(declare-fun res!690807 () Bool)

(assert (=> d!123905 (=> (not res!690807) (not e!584477))))

(assert (=> d!123905 (= res!690807 (isStrictlySorted!714 lt!456388))))

(assert (=> d!123905 (= lt!456388 e!584475)))

(declare-fun c!104402 () Bool)

(assert (=> d!123905 (= c!104402 (and ((_ is Cons!22018) (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))) (= (_1!7927 (h!23220 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123905 (isStrictlySorted!714 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))))

(assert (=> d!123905 (= (removeStrictlySorted!57 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))) #b0000000000000000000000000000000000000000000000000000000000000000) lt!456388)))

(declare-fun b!1033904 () Bool)

(assert (=> b!1033904 (= e!584476 ($colon$colon!605 (removeStrictlySorted!57 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))) #b0000000000000000000000000000000000000000000000000000000000000000) (h!23220 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))))))

(assert (= (and d!123905 c!104402) b!1033900))

(assert (= (and d!123905 (not c!104402)) b!1033902))

(assert (= (and b!1033902 c!104401) b!1033904))

(assert (= (and b!1033902 (not c!104401)) b!1033901))

(assert (= (and d!123905 res!690807) b!1033903))

(declare-fun m!954019 () Bool)

(assert (=> b!1033903 m!954019))

(declare-fun m!954021 () Bool)

(assert (=> d!123905 m!954021))

(declare-fun m!954023 () Bool)

(assert (=> d!123905 m!954023))

(declare-fun m!954025 () Bool)

(assert (=> b!1033904 m!954025))

(assert (=> b!1033904 m!954025))

(declare-fun m!954027 () Bool)

(assert (=> b!1033904 m!954027))

(assert (=> d!123765 d!123905))

(declare-fun d!123907 () Bool)

(declare-fun e!584478 () Bool)

(assert (=> d!123907 e!584478))

(declare-fun res!690808 () Bool)

(assert (=> d!123907 (=> res!690808 e!584478)))

(declare-fun lt!456389 () Bool)

(assert (=> d!123907 (= res!690808 (not lt!456389))))

(declare-fun lt!456390 () Bool)

(assert (=> d!123907 (= lt!456389 lt!456390)))

(declare-fun lt!456391 () Unit!33810)

(declare-fun e!584479 () Unit!33810)

(assert (=> d!123907 (= lt!456391 e!584479)))

(declare-fun c!104403 () Bool)

(assert (=> d!123907 (= c!104403 lt!456390)))

(assert (=> d!123907 (= lt!456390 (containsKey!564 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123907 (= (contains!6035 lt!456160 #b0000000000000000000000000000000000000000000000000000000000000000) lt!456389)))

(declare-fun b!1033905 () Bool)

(declare-fun lt!456392 () Unit!33810)

(assert (=> b!1033905 (= e!584479 lt!456392)))

(assert (=> b!1033905 (= lt!456392 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1033905 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033906 () Bool)

(declare-fun Unit!33824 () Unit!33810)

(assert (=> b!1033906 (= e!584479 Unit!33824)))

(declare-fun b!1033907 () Bool)

(assert (=> b!1033907 (= e!584478 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123907 c!104403) b!1033905))

(assert (= (and d!123907 (not c!104403)) b!1033906))

(assert (= (and d!123907 (not res!690808)) b!1033907))

(declare-fun m!954029 () Bool)

(assert (=> d!123907 m!954029))

(declare-fun m!954031 () Bool)

(assert (=> b!1033905 m!954031))

(assert (=> b!1033905 m!953913))

(assert (=> b!1033905 m!953913))

(declare-fun m!954033 () Bool)

(assert (=> b!1033905 m!954033))

(assert (=> b!1033907 m!953913))

(assert (=> b!1033907 m!953913))

(assert (=> b!1033907 m!954033))

(assert (=> bm!43663 d!123907))

(declare-fun b!1033910 () Bool)

(declare-fun res!690809 () Bool)

(declare-fun e!584480 () Bool)

(assert (=> b!1033910 (=> (not res!690809) (not e!584480))))

(assert (=> b!1033910 (= res!690809 (= (size!31868 thiss!1427) (bvadd (_size!2908 thiss!1427) (bvsdiv (bvadd (extraKeys!5959 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1033911 () Bool)

(assert (=> b!1033911 (= e!584480 (and (bvsge (extraKeys!5959 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5959 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2908 thiss!1427) #b00000000000000000000000000000000)))))

(declare-fun b!1033908 () Bool)

(declare-fun res!690811 () Bool)

(assert (=> b!1033908 (=> (not res!690811) (not e!584480))))

(assert (=> b!1033908 (= res!690811 (and (= (size!31865 (_values!6250 thiss!1427)) (bvadd (mask!30079 thiss!1427) #b00000000000000000000000000000001)) (= (size!31864 (_keys!11404 thiss!1427)) (size!31865 (_values!6250 thiss!1427))) (bvsge (_size!2908 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2908 thiss!1427) (bvadd (mask!30079 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun b!1033909 () Bool)

(declare-fun res!690812 () Bool)

(assert (=> b!1033909 (=> (not res!690812) (not e!584480))))

(assert (=> b!1033909 (= res!690812 (bvsge (size!31868 thiss!1427) (_size!2908 thiss!1427)))))

(declare-fun d!123909 () Bool)

(declare-fun res!690810 () Bool)

(assert (=> d!123909 (=> (not res!690810) (not e!584480))))

(assert (=> d!123909 (= res!690810 (validMask!0 (mask!30079 thiss!1427)))))

(assert (=> d!123909 (= (simpleValid!404 thiss!1427) e!584480)))

(assert (= (and d!123909 res!690810) b!1033908))

(assert (= (and b!1033908 res!690811) b!1033909))

(assert (= (and b!1033909 res!690812) b!1033910))

(assert (= (and b!1033910 res!690809) b!1033911))

(declare-fun m!954035 () Bool)

(assert (=> b!1033910 m!954035))

(assert (=> b!1033909 m!954035))

(assert (=> d!123909 m!953483))

(assert (=> d!123775 d!123909))

(declare-fun condMapEmpty!38268 () Bool)

(declare-fun mapDefault!38268 () ValueCell!11556)

(assert (=> mapNonEmpty!38267 (= condMapEmpty!38268 (= mapRest!38267 ((as const (Array (_ BitVec 32) ValueCell!11556)) mapDefault!38268)))))

(declare-fun e!584481 () Bool)

(declare-fun mapRes!38268 () Bool)

(assert (=> mapNonEmpty!38267 (= tp!73507 (and e!584481 mapRes!38268))))

(declare-fun mapIsEmpty!38268 () Bool)

(assert (=> mapIsEmpty!38268 mapRes!38268))

(declare-fun mapNonEmpty!38268 () Bool)

(declare-fun tp!73508 () Bool)

(declare-fun e!584482 () Bool)

(assert (=> mapNonEmpty!38268 (= mapRes!38268 (and tp!73508 e!584482))))

(declare-fun mapRest!38268 () (Array (_ BitVec 32) ValueCell!11556))

(declare-fun mapValue!38268 () ValueCell!11556)

(declare-fun mapKey!38268 () (_ BitVec 32))

(assert (=> mapNonEmpty!38268 (= mapRest!38267 (store mapRest!38268 mapKey!38268 mapValue!38268))))

(declare-fun b!1033912 () Bool)

(assert (=> b!1033912 (= e!584482 tp_is_empty!24519)))

(declare-fun b!1033913 () Bool)

(assert (=> b!1033913 (= e!584481 tp_is_empty!24519)))

(assert (= (and mapNonEmpty!38267 condMapEmpty!38268) mapIsEmpty!38268))

(assert (= (and mapNonEmpty!38267 (not condMapEmpty!38268)) mapNonEmpty!38268))

(assert (= (and mapNonEmpty!38268 ((_ is ValueCellFull!11556) mapValue!38268)) b!1033912))

(assert (= (and mapNonEmpty!38267 ((_ is ValueCellFull!11556) mapDefault!38268)) b!1033913))

(declare-fun m!954037 () Bool)

(assert (=> mapNonEmpty!38268 m!954037))

(declare-fun b_lambda!16101 () Bool)

(assert (= b_lambda!16093 (or (and b!1033541 b_free!20799) b_lambda!16101)))

(declare-fun b_lambda!16103 () Bool)

(assert (= b_lambda!16097 (or (and b!1033541 b_free!20799) b_lambda!16103)))

(declare-fun b_lambda!16105 () Bool)

(assert (= b_lambda!16095 (or (and b!1033541 b_free!20799) b_lambda!16105)))

(declare-fun b_lambda!16107 () Bool)

(assert (= b_lambda!16091 (or (and b!1033541 b_free!20799) b_lambda!16107)))

(check-sat (not b!1033872) (not b!1033869) (not bm!43673) (not b!1033786) (not b!1033763) (not d!123781) (not b!1033760) (not d!123841) (not d!123857) (not d!123789) (not b!1033894) (not b!1033728) (not b!1033903) (not bm!43678) (not b!1033704) (not d!123899) (not b!1033846) (not b!1033711) (not b!1033891) (not b!1033752) (not b!1033737) (not b!1033899) (not b!1033809) (not b!1033820) (not d!123891) (not d!123807) (not b!1033708) (not b_lambda!16081) (not d!123901) (not d!123829) (not b!1033769) (not b!1033878) (not d!123799) (not b!1033822) (not b!1033870) (not b!1033757) (not b!1033755) (not b!1033907) (not b!1033739) (not d!123859) (not bm!43685) (not b!1033847) (not b!1033807) (not d!123827) tp_is_empty!24519 (not b!1033736) (not d!123835) (not b!1033841) (not b!1033859) (not d!123867) (not b!1033873) (not b!1033805) (not b!1033735) (not d!123861) (not d!123905) (not b!1033761) (not b!1033874) (not d!123849) (not bm!43684) (not b!1033896) (not b!1033910) (not b!1033879) (not b!1033837) (not b!1033700) (not b_next!20799) (not bm!43677) (not b!1033703) (not b_lambda!16105) (not d!123897) (not d!123783) (not b!1033759) (not b!1033824) (not b!1033880) (not b_lambda!16099) (not b!1033804) (not d!123787) (not b!1033799) (not d!123881) (not b!1033823) (not d!123817) (not b!1033771) (not bm!43687) (not b!1033835) (not d!123823) (not b!1033712) (not b_lambda!16087) (not b!1033707) (not bm!43681) (not b!1033866) (not b!1033738) (not b!1033720) (not d!123815) (not b!1033743) (not b_lambda!16101) (not d!123825) (not b_lambda!16107) (not d!123873) (not b!1033716) (not b!1033802) (not b_lambda!16103) (not b!1033889) (not b!1033767) (not d!123795) (not d!123903) (not mapNonEmpty!38268) (not b!1033717) (not b!1033750) (not b!1033705) (not b!1033904) (not b!1033808) (not bm!43693) (not b!1033798) (not d!123801) (not b!1033740) (not bm!43674) (not b!1033701) (not d!123813) (not d!123907) (not b!1033864) (not b!1033905) (not b_lambda!16089) (not d!123895) (not b!1033863) (not d!123843) b_and!33307 (not d!123855) (not d!123811) (not bm!43691) (not d!123845) (not b!1033785) (not b!1033888) (not d!123839) (not b!1033868) (not b!1033797) (not d!123909) (not b!1033839) (not d!123871) (not bm!43689) (not d!123831) (not d!123785) (not d!123803) (not d!123837) (not d!123847) (not b!1033699) (not b!1033756) (not b!1033768) (not bm!43686) (not b!1033742) (not b!1033715) (not d!123885) (not d!123791) (not b!1033727) (not d!123865) (not d!123805) (not b!1033764) (not d!123853) (not d!123809) (not d!123797) (not b!1033909) (not b!1033819) (not d!123851) (not b!1033758) (not d!123833) (not b!1033713) (not d!123869) (not d!123879) (not d!123793) (not b!1033719) (not b!1033897) (not b!1033753))
(check-sat b_and!33307 (not b_next!20799))
(get-model)

(declare-fun d!123911 () Bool)

(assert (=> d!123911 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456175) lt!456156)) (v!14890 (getValueByKey!591 (toList!6951 lt!456175) lt!456156)))))

(assert (=> d!123843 d!123911))

(declare-fun b!1033925 () Bool)

(declare-fun e!584488 () Option!642)

(assert (=> b!1033925 (= e!584488 None!640)))

(declare-fun b!1033923 () Bool)

(declare-fun e!584487 () Option!642)

(assert (=> b!1033923 (= e!584487 e!584488)))

(declare-fun c!104409 () Bool)

(assert (=> b!1033923 (= c!104409 (and ((_ is Cons!22018) (toList!6951 lt!456175)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456175))) lt!456156))))))

(declare-fun b!1033922 () Bool)

(assert (=> b!1033922 (= e!584487 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456175)))))))

(declare-fun b!1033924 () Bool)

(assert (=> b!1033924 (= e!584488 (getValueByKey!591 (t!31227 (toList!6951 lt!456175)) lt!456156))))

(declare-fun d!123913 () Bool)

(declare-fun c!104408 () Bool)

(assert (=> d!123913 (= c!104408 (and ((_ is Cons!22018) (toList!6951 lt!456175)) (= (_1!7927 (h!23220 (toList!6951 lt!456175))) lt!456156)))))

(assert (=> d!123913 (= (getValueByKey!591 (toList!6951 lt!456175) lt!456156) e!584487)))

(assert (= (and d!123913 c!104408) b!1033922))

(assert (= (and d!123913 (not c!104408)) b!1033923))

(assert (= (and b!1033923 c!104409) b!1033924))

(assert (= (and b!1033923 (not c!104409)) b!1033925))

(declare-fun m!954039 () Bool)

(assert (=> b!1033924 m!954039))

(assert (=> d!123843 d!123913))

(declare-fun bm!43694 () Bool)

(declare-fun call!43697 () (_ BitVec 32))

(assert (=> bm!43694 (= call!43697 (arrayCountValidKeys!0 (_keys!11404 lt!456102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31864 (_keys!11404 lt!456102))))))

(declare-fun b!1033927 () Bool)

(declare-fun e!584489 () (_ BitVec 32))

(assert (=> b!1033927 (= e!584489 call!43697)))

(declare-fun b!1033928 () Bool)

(assert (=> b!1033928 (= e!584489 (bvadd #b00000000000000000000000000000001 call!43697))))

(declare-fun b!1033929 () Bool)

(declare-fun e!584490 () (_ BitVec 32))

(assert (=> b!1033929 (= e!584490 e!584489)))

(declare-fun c!104410 () Bool)

(assert (=> b!1033929 (= c!104410 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1033926 () Bool)

(assert (=> b!1033926 (= e!584490 #b00000000000000000000000000000000)))

(declare-fun d!123915 () Bool)

(declare-fun lt!456393 () (_ BitVec 32))

(assert (=> d!123915 (and (bvsge lt!456393 #b00000000000000000000000000000000) (bvsle lt!456393 (bvsub (size!31864 (_keys!11404 lt!456102)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!123915 (= lt!456393 e!584490)))

(declare-fun c!104411 () Bool)

(assert (=> d!123915 (= c!104411 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!123915 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 lt!456102))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31864 (_keys!11404 lt!456102)) (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!123915 (= (arrayCountValidKeys!0 (_keys!11404 lt!456102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 lt!456102))) lt!456393)))

(assert (= (and d!123915 c!104411) b!1033926))

(assert (= (and d!123915 (not c!104411)) b!1033929))

(assert (= (and b!1033929 c!104410) b!1033928))

(assert (= (and b!1033929 (not c!104410)) b!1033927))

(assert (= (or b!1033928 b!1033927) bm!43694))

(declare-fun m!954041 () Bool)

(assert (=> bm!43694 m!954041))

(declare-fun m!954043 () Bool)

(assert (=> b!1033929 m!954043))

(assert (=> b!1033929 m!954043))

(declare-fun m!954045 () Bool)

(assert (=> b!1033929 m!954045))

(assert (=> bm!43684 d!123915))

(declare-fun b!1033933 () Bool)

(declare-fun e!584492 () Option!642)

(assert (=> b!1033933 (= e!584492 None!640)))

(declare-fun b!1033931 () Bool)

(declare-fun e!584491 () Option!642)

(assert (=> b!1033931 (= e!584491 e!584492)))

(declare-fun c!104413 () Bool)

(assert (=> b!1033931 (= c!104413 (and ((_ is Cons!22018) (toList!6951 lt!456268)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456268))) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))))

(declare-fun b!1033930 () Bool)

(assert (=> b!1033930 (= e!584491 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456268)))))))

(declare-fun b!1033932 () Bool)

(assert (=> b!1033932 (= e!584492 (getValueByKey!591 (t!31227 (toList!6951 lt!456268)) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(declare-fun d!123917 () Bool)

(declare-fun c!104412 () Bool)

(assert (=> d!123917 (= c!104412 (and ((_ is Cons!22018) (toList!6951 lt!456268)) (= (_1!7927 (h!23220 (toList!6951 lt!456268))) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(assert (=> d!123917 (= (getValueByKey!591 (toList!6951 lt!456268) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) e!584491)))

(assert (= (and d!123917 c!104412) b!1033930))

(assert (= (and d!123917 (not c!104412)) b!1033931))

(assert (= (and b!1033931 c!104413) b!1033932))

(assert (= (and b!1033931 (not c!104413)) b!1033933))

(declare-fun m!954047 () Bool)

(assert (=> b!1033932 m!954047))

(assert (=> b!1033742 d!123917))

(declare-fun b!1033937 () Bool)

(declare-fun e!584494 () Option!642)

(assert (=> b!1033937 (= e!584494 None!640)))

(declare-fun b!1033935 () Bool)

(declare-fun e!584493 () Option!642)

(assert (=> b!1033935 (= e!584493 e!584494)))

(declare-fun c!104415 () Bool)

(assert (=> b!1033935 (= c!104415 (and ((_ is Cons!22018) (toList!6951 lt!456351)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456351))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1033934 () Bool)

(assert (=> b!1033934 (= e!584493 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456351)))))))

(declare-fun b!1033936 () Bool)

(assert (=> b!1033936 (= e!584494 (getValueByKey!591 (t!31227 (toList!6951 lt!456351)) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun d!123919 () Bool)

(declare-fun c!104414 () Bool)

(assert (=> d!123919 (= c!104414 (and ((_ is Cons!22018) (toList!6951 lt!456351)) (= (_1!7927 (h!23220 (toList!6951 lt!456351))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!123919 (= (getValueByKey!591 (toList!6951 lt!456351) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) e!584493)))

(assert (= (and d!123919 c!104414) b!1033934))

(assert (= (and d!123919 (not c!104414)) b!1033935))

(assert (= (and b!1033935 c!104415) b!1033936))

(assert (= (and b!1033935 (not c!104415)) b!1033937))

(declare-fun m!954049 () Bool)

(assert (=> b!1033936 m!954049))

(assert (=> b!1033868 d!123919))

(declare-fun lt!456396 () Bool)

(declare-fun d!123921 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!516 (List!22022) (InoxSet tuple2!15834))

(assert (=> d!123921 (= lt!456396 (select (content!516 (toList!6951 lt!456288)) (tuple2!15835 lt!456173 lt!456100)))))

(declare-fun e!584500 () Bool)

(assert (=> d!123921 (= lt!456396 e!584500)))

(declare-fun res!690817 () Bool)

(assert (=> d!123921 (=> (not res!690817) (not e!584500))))

(assert (=> d!123921 (= res!690817 ((_ is Cons!22018) (toList!6951 lt!456288)))))

(assert (=> d!123921 (= (contains!6036 (toList!6951 lt!456288) (tuple2!15835 lt!456173 lt!456100)) lt!456396)))

(declare-fun b!1033942 () Bool)

(declare-fun e!584499 () Bool)

(assert (=> b!1033942 (= e!584500 e!584499)))

(declare-fun res!690818 () Bool)

(assert (=> b!1033942 (=> res!690818 e!584499)))

(assert (=> b!1033942 (= res!690818 (= (h!23220 (toList!6951 lt!456288)) (tuple2!15835 lt!456173 lt!456100)))))

(declare-fun b!1033943 () Bool)

(assert (=> b!1033943 (= e!584499 (contains!6036 (t!31227 (toList!6951 lt!456288)) (tuple2!15835 lt!456173 lt!456100)))))

(assert (= (and d!123921 res!690817) b!1033942))

(assert (= (and b!1033942 (not res!690818)) b!1033943))

(declare-fun m!954051 () Bool)

(assert (=> d!123921 m!954051))

(declare-fun m!954053 () Bool)

(assert (=> d!123921 m!954053))

(declare-fun m!954055 () Bool)

(assert (=> b!1033943 m!954055))

(assert (=> b!1033757 d!123921))

(declare-fun d!123923 () Bool)

(assert (=> d!123923 (= (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100))) lt!456169)) (v!14890 (getValueByKey!591 (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100))) lt!456169)))))

(assert (=> d!123835 d!123923))

(declare-fun b!1033947 () Bool)

(declare-fun e!584502 () Option!642)

(assert (=> b!1033947 (= e!584502 None!640)))

(declare-fun b!1033945 () Bool)

(declare-fun e!584501 () Option!642)

(assert (=> b!1033945 (= e!584501 e!584502)))

(declare-fun c!104417 () Bool)

(assert (=> b!1033945 (= c!104417 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100)))) (not (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100))))) lt!456169))))))

(declare-fun b!1033944 () Bool)

(assert (=> b!1033944 (= e!584501 (Some!641 (_2!7927 (h!23220 (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100)))))))))

(declare-fun b!1033946 () Bool)

(assert (=> b!1033946 (= e!584502 (getValueByKey!591 (t!31227 (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100)))) lt!456169))))

(declare-fun d!123925 () Bool)

(declare-fun c!104416 () Bool)

(assert (=> d!123925 (= c!104416 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100)))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100))))) lt!456169)))))

(assert (=> d!123925 (= (getValueByKey!591 (toList!6951 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100))) lt!456169) e!584501)))

(assert (= (and d!123925 c!104416) b!1033944))

(assert (= (and d!123925 (not c!104416)) b!1033945))

(assert (= (and b!1033945 c!104417) b!1033946))

(assert (= (and b!1033945 (not c!104417)) b!1033947))

(declare-fun m!954057 () Bool)

(assert (=> b!1033946 m!954057))

(assert (=> d!123835 d!123925))

(declare-fun d!123927 () Bool)

(declare-fun e!584503 () Bool)

(assert (=> d!123927 e!584503))

(declare-fun res!690819 () Bool)

(assert (=> d!123927 (=> res!690819 e!584503)))

(declare-fun lt!456397 () Bool)

(assert (=> d!123927 (= res!690819 (not lt!456397))))

(declare-fun lt!456398 () Bool)

(assert (=> d!123927 (= lt!456397 lt!456398)))

(declare-fun lt!456399 () Unit!33810)

(declare-fun e!584504 () Unit!33810)

(assert (=> d!123927 (= lt!456399 e!584504)))

(declare-fun c!104418 () Bool)

(assert (=> d!123927 (= c!104418 lt!456398)))

(assert (=> d!123927 (= lt!456398 (containsKey!564 (toList!6951 lt!456362) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123927 (= (contains!6035 lt!456362 #b0000000000000000000000000000000000000000000000000000000000000000) lt!456397)))

(declare-fun b!1033948 () Bool)

(declare-fun lt!456400 () Unit!33810)

(assert (=> b!1033948 (= e!584504 lt!456400)))

(assert (=> b!1033948 (= lt!456400 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456362) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1033948 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456362) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1033949 () Bool)

(declare-fun Unit!33825 () Unit!33810)

(assert (=> b!1033949 (= e!584504 Unit!33825)))

(declare-fun b!1033950 () Bool)

(assert (=> b!1033950 (= e!584503 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456362) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!123927 c!104418) b!1033948))

(assert (= (and d!123927 (not c!104418)) b!1033949))

(assert (= (and d!123927 (not res!690819)) b!1033950))

(declare-fun m!954059 () Bool)

(assert (=> d!123927 m!954059))

(declare-fun m!954061 () Bool)

(assert (=> b!1033948 m!954061))

(declare-fun m!954063 () Bool)

(assert (=> b!1033948 m!954063))

(assert (=> b!1033948 m!954063))

(declare-fun m!954065 () Bool)

(assert (=> b!1033948 m!954065))

(assert (=> b!1033950 m!954063))

(assert (=> b!1033950 m!954063))

(assert (=> b!1033950 m!954065))

(assert (=> bm!43693 d!123927))

(declare-fun d!123929 () Bool)

(assert (=> d!123929 (= (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)) (and (not (= (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1033798 d!123929))

(declare-fun b!1033954 () Bool)

(declare-fun e!584506 () Option!642)

(assert (=> b!1033954 (= e!584506 None!640)))

(declare-fun b!1033952 () Bool)

(declare-fun e!584505 () Option!642)

(assert (=> b!1033952 (= e!584505 e!584506)))

(declare-fun c!104420 () Bool)

(assert (=> b!1033952 (= c!104420 (and ((_ is Cons!22018) (toList!6951 lt!456296)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456296))) (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))))

(declare-fun b!1033951 () Bool)

(assert (=> b!1033951 (= e!584505 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456296)))))))

(declare-fun b!1033953 () Bool)

(assert (=> b!1033953 (= e!584506 (getValueByKey!591 (t!31227 (toList!6951 lt!456296)) (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))

(declare-fun c!104419 () Bool)

(declare-fun d!123931 () Bool)

(assert (=> d!123931 (= c!104419 (and ((_ is Cons!22018) (toList!6951 lt!456296)) (= (_1!7927 (h!23220 (toList!6951 lt!456296))) (_1!7927 (tuple2!15835 lt!456165 lt!456100)))))))

(assert (=> d!123931 (= (getValueByKey!591 (toList!6951 lt!456296) (_1!7927 (tuple2!15835 lt!456165 lt!456100))) e!584505)))

(assert (= (and d!123931 c!104419) b!1033951))

(assert (= (and d!123931 (not c!104419)) b!1033952))

(assert (= (and b!1033952 c!104420) b!1033953))

(assert (= (and b!1033952 (not c!104420)) b!1033954))

(declare-fun m!954067 () Bool)

(assert (=> b!1033953 m!954067))

(assert (=> b!1033760 d!123931))

(declare-fun d!123933 () Bool)

(declare-fun lt!456401 () Bool)

(assert (=> d!123933 (= lt!456401 (select (content!516 (toList!6951 lt!456244)) (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun e!584508 () Bool)

(assert (=> d!123933 (= lt!456401 e!584508)))

(declare-fun res!690820 () Bool)

(assert (=> d!123933 (=> (not res!690820) (not e!584508))))

(assert (=> d!123933 (= res!690820 ((_ is Cons!22018) (toList!6951 lt!456244)))))

(assert (=> d!123933 (= (contains!6036 (toList!6951 lt!456244) (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456401)))

(declare-fun b!1033955 () Bool)

(declare-fun e!584507 () Bool)

(assert (=> b!1033955 (= e!584508 e!584507)))

(declare-fun res!690821 () Bool)

(assert (=> b!1033955 (=> res!690821 e!584507)))

(assert (=> b!1033955 (= res!690821 (= (h!23220 (toList!6951 lt!456244)) (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1033956 () Bool)

(assert (=> b!1033956 (= e!584507 (contains!6036 (t!31227 (toList!6951 lt!456244)) (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (= (and d!123933 res!690820) b!1033955))

(assert (= (and b!1033955 (not res!690821)) b!1033956))

(declare-fun m!954069 () Bool)

(assert (=> d!123933 m!954069))

(declare-fun m!954071 () Bool)

(assert (=> d!123933 m!954071))

(declare-fun m!954073 () Bool)

(assert (=> b!1033956 m!954073))

(assert (=> b!1033728 d!123933))

(declare-fun d!123935 () Bool)

(assert (=> d!123935 (= (size!31868 lt!456102) (bvadd (_size!2908 lt!456102) (bvsdiv (bvadd (extraKeys!5959 lt!456102) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!1033819 d!123935))

(declare-fun d!123937 () Bool)

(declare-fun lt!456402 () Bool)

(assert (=> d!123937 (= lt!456402 (select (content!516 (toList!6951 lt!456263)) (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))

(declare-fun e!584510 () Bool)

(assert (=> d!123937 (= lt!456402 e!584510)))

(declare-fun res!690822 () Bool)

(assert (=> d!123937 (=> (not res!690822) (not e!584510))))

(assert (=> d!123937 (= res!690822 ((_ is Cons!22018) (toList!6951 lt!456263)))))

(assert (=> d!123937 (= (contains!6036 (toList!6951 lt!456263) (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) lt!456402)))

(declare-fun b!1033957 () Bool)

(declare-fun e!584509 () Bool)

(assert (=> b!1033957 (= e!584510 e!584509)))

(declare-fun res!690823 () Bool)

(assert (=> b!1033957 (=> res!690823 e!584509)))

(assert (=> b!1033957 (= res!690823 (= (h!23220 (toList!6951 lt!456263)) (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))

(declare-fun b!1033958 () Bool)

(assert (=> b!1033958 (= e!584509 (contains!6036 (t!31227 (toList!6951 lt!456263)) (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))

(assert (= (and d!123937 res!690822) b!1033957))

(assert (= (and b!1033957 (not res!690823)) b!1033958))

(declare-fun m!954075 () Bool)

(assert (=> d!123937 m!954075))

(declare-fun m!954077 () Bool)

(assert (=> d!123937 m!954077))

(declare-fun m!954079 () Bool)

(assert (=> b!1033958 m!954079))

(assert (=> b!1033740 d!123937))

(declare-fun d!123939 () Bool)

(assert (=> d!123939 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun lt!456405 () Unit!33810)

(declare-fun choose!1705 (List!22022 (_ BitVec 64)) Unit!33810)

(assert (=> d!123939 (= lt!456405 (choose!1705 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!584513 () Bool)

(assert (=> d!123939 e!584513))

(declare-fun res!690826 () Bool)

(assert (=> d!123939 (=> (not res!690826) (not e!584513))))

(assert (=> d!123939 (= res!690826 (isStrictlySorted!714 (toList!6951 lt!456188)))))

(assert (=> d!123939 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) lt!456405)))

(declare-fun b!1033961 () Bool)

(assert (=> b!1033961 (= e!584513 (containsKey!564 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!123939 res!690826) b!1033961))

(assert (=> d!123939 m!953435))

(assert (=> d!123939 m!953869))

(assert (=> d!123939 m!953869))

(assert (=> d!123939 m!953871))

(assert (=> d!123939 m!953435))

(declare-fun m!954081 () Bool)

(assert (=> d!123939 m!954081))

(declare-fun m!954083 () Bool)

(assert (=> d!123939 m!954083))

(assert (=> b!1033961 m!953435))

(assert (=> b!1033961 m!953865))

(assert (=> b!1033805 d!123939))

(declare-fun d!123941 () Bool)

(declare-fun isEmpty!930 (Option!642) Bool)

(assert (=> d!123941 (= (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))) (not (isEmpty!930 (getValueByKey!591 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))))

(declare-fun bs!30233 () Bool)

(assert (= bs!30233 d!123941))

(assert (=> bs!30233 m!953869))

(declare-fun m!954085 () Bool)

(assert (=> bs!30233 m!954085))

(assert (=> b!1033805 d!123941))

(declare-fun b!1033965 () Bool)

(declare-fun e!584515 () Option!642)

(assert (=> b!1033965 (= e!584515 None!640)))

(declare-fun b!1033963 () Bool)

(declare-fun e!584514 () Option!642)

(assert (=> b!1033963 (= e!584514 e!584515)))

(declare-fun c!104422 () Bool)

(assert (=> b!1033963 (= c!104422 (and ((_ is Cons!22018) (toList!6951 lt!456188)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456188))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))))

(declare-fun b!1033962 () Bool)

(assert (=> b!1033962 (= e!584514 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456188)))))))

(declare-fun b!1033964 () Bool)

(assert (=> b!1033964 (= e!584515 (getValueByKey!591 (t!31227 (toList!6951 lt!456188)) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!123943 () Bool)

(declare-fun c!104421 () Bool)

(assert (=> d!123943 (= c!104421 (and ((_ is Cons!22018) (toList!6951 lt!456188)) (= (_1!7927 (h!23220 (toList!6951 lt!456188))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!123943 (= (getValueByKey!591 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) e!584514)))

(assert (= (and d!123943 c!104421) b!1033962))

(assert (= (and d!123943 (not c!104421)) b!1033963))

(assert (= (and b!1033963 c!104422) b!1033964))

(assert (= (and b!1033963 (not c!104422)) b!1033965))

(assert (=> b!1033964 m!953435))

(declare-fun m!954087 () Bool)

(assert (=> b!1033964 m!954087))

(assert (=> b!1033805 d!123943))

(declare-fun d!123945 () Bool)

(assert (=> d!123945 (= (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) lt!456197)) (v!14890 (getValueByKey!591 (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) lt!456197)))))

(assert (=> d!123809 d!123945))

(declare-fun b!1033969 () Bool)

(declare-fun e!584517 () Option!642)

(assert (=> b!1033969 (= e!584517 None!640)))

(declare-fun b!1033967 () Bool)

(declare-fun e!584516 () Option!642)

(assert (=> b!1033967 (= e!584516 e!584517)))

(declare-fun c!104424 () Bool)

(assert (=> b!1033967 (= c!104424 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))) (not (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))) lt!456197))))))

(declare-fun b!1033966 () Bool)

(assert (=> b!1033966 (= e!584516 (Some!641 (_2!7927 (h!23220 (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))))

(declare-fun b!1033968 () Bool)

(assert (=> b!1033968 (= e!584517 (getValueByKey!591 (t!31227 (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))) lt!456197))))

(declare-fun d!123947 () Bool)

(declare-fun c!104423 () Bool)

(assert (=> d!123947 (= c!104423 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))) lt!456197)))))

(assert (=> d!123947 (= (getValueByKey!591 (toList!6951 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) lt!456197) e!584516)))

(assert (= (and d!123947 c!104423) b!1033966))

(assert (= (and d!123947 (not c!104423)) b!1033967))

(assert (= (and b!1033967 c!104424) b!1033968))

(assert (= (and b!1033967 (not c!104424)) b!1033969))

(declare-fun m!954089 () Bool)

(assert (=> b!1033968 m!954089))

(assert (=> d!123809 d!123947))

(declare-fun d!123949 () Bool)

(declare-fun e!584518 () Bool)

(assert (=> d!123949 e!584518))

(declare-fun res!690827 () Bool)

(assert (=> d!123949 (=> res!690827 e!584518)))

(declare-fun lt!456406 () Bool)

(assert (=> d!123949 (= res!690827 (not lt!456406))))

(declare-fun lt!456407 () Bool)

(assert (=> d!123949 (= lt!456406 lt!456407)))

(declare-fun lt!456408 () Unit!33810)

(declare-fun e!584519 () Unit!33810)

(assert (=> d!123949 (= lt!456408 e!584519)))

(declare-fun c!104425 () Bool)

(assert (=> d!123949 (= c!104425 lt!456407)))

(assert (=> d!123949 (= lt!456407 (containsKey!564 (toList!6951 lt!456231) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!123949 (= (contains!6035 lt!456231 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) lt!456406)))

(declare-fun b!1033970 () Bool)

(declare-fun lt!456409 () Unit!33810)

(assert (=> b!1033970 (= e!584519 lt!456409)))

(assert (=> b!1033970 (= lt!456409 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456231) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033970 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456231) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1033971 () Bool)

(declare-fun Unit!33826 () Unit!33810)

(assert (=> b!1033971 (= e!584519 Unit!33826)))

(declare-fun b!1033972 () Bool)

(assert (=> b!1033972 (= e!584518 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456231) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!123949 c!104425) b!1033970))

(assert (= (and d!123949 (not c!104425)) b!1033971))

(assert (= (and d!123949 (not res!690827)) b!1033972))

(assert (=> d!123949 m!953435))

(declare-fun m!954091 () Bool)

(assert (=> d!123949 m!954091))

(assert (=> b!1033970 m!953435))

(declare-fun m!954093 () Bool)

(assert (=> b!1033970 m!954093))

(assert (=> b!1033970 m!953435))

(declare-fun m!954095 () Bool)

(assert (=> b!1033970 m!954095))

(assert (=> b!1033970 m!954095))

(declare-fun m!954097 () Bool)

(assert (=> b!1033970 m!954097))

(assert (=> b!1033972 m!953435))

(assert (=> b!1033972 m!954095))

(assert (=> b!1033972 m!954095))

(assert (=> b!1033972 m!954097))

(assert (=> b!1033720 d!123949))

(declare-fun d!123951 () Bool)

(declare-fun lt!456410 () Bool)

(assert (=> d!123951 (= lt!456410 (select (content!516 (toList!6951 lt!456327)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(declare-fun e!584521 () Bool)

(assert (=> d!123951 (= lt!456410 e!584521)))

(declare-fun res!690828 () Bool)

(assert (=> d!123951 (=> (not res!690828) (not e!584521))))

(assert (=> d!123951 (= res!690828 ((_ is Cons!22018) (toList!6951 lt!456327)))))

(assert (=> d!123951 (= (contains!6036 (toList!6951 lt!456327) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) lt!456410)))

(declare-fun b!1033973 () Bool)

(declare-fun e!584520 () Bool)

(assert (=> b!1033973 (= e!584521 e!584520)))

(declare-fun res!690829 () Bool)

(assert (=> b!1033973 (=> res!690829 e!584520)))

(assert (=> b!1033973 (= res!690829 (= (h!23220 (toList!6951 lt!456327)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(declare-fun b!1033974 () Bool)

(assert (=> b!1033974 (= e!584520 (contains!6036 (t!31227 (toList!6951 lt!456327)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(assert (= (and d!123951 res!690828) b!1033973))

(assert (= (and b!1033973 (not res!690829)) b!1033974))

(declare-fun m!954099 () Bool)

(assert (=> d!123951 m!954099))

(declare-fun m!954101 () Bool)

(assert (=> d!123951 m!954101))

(declare-fun m!954103 () Bool)

(assert (=> b!1033974 m!954103))

(assert (=> b!1033809 d!123951))

(declare-fun d!123953 () Bool)

(declare-fun res!690834 () Bool)

(declare-fun e!584526 () Bool)

(assert (=> d!123953 (=> res!690834 e!584526)))

(assert (=> d!123953 (= res!690834 (and ((_ is Cons!22018) (toList!6951 lt!456188)) (= (_1!7927 (h!23220 (toList!6951 lt!456188))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123953 (= (containsKey!564 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000) e!584526)))

(declare-fun b!1033979 () Bool)

(declare-fun e!584527 () Bool)

(assert (=> b!1033979 (= e!584526 e!584527)))

(declare-fun res!690835 () Bool)

(assert (=> b!1033979 (=> (not res!690835) (not e!584527))))

(assert (=> b!1033979 (= res!690835 (and (or (not ((_ is Cons!22018) (toList!6951 lt!456188))) (bvsle (_1!7927 (h!23220 (toList!6951 lt!456188))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22018) (toList!6951 lt!456188)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456188))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033980 () Bool)

(assert (=> b!1033980 (= e!584527 (containsKey!564 (t!31227 (toList!6951 lt!456188)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!123953 (not res!690834)) b!1033979))

(assert (= (and b!1033979 res!690835) b!1033980))

(declare-fun m!954105 () Bool)

(assert (=> b!1033980 m!954105))

(assert (=> d!123901 d!123953))

(declare-fun d!123955 () Bool)

(declare-fun e!584528 () Bool)

(assert (=> d!123955 e!584528))

(declare-fun res!690836 () Bool)

(assert (=> d!123955 (=> res!690836 e!584528)))

(declare-fun lt!456411 () Bool)

(assert (=> d!123955 (= res!690836 (not lt!456411))))

(declare-fun lt!456412 () Bool)

(assert (=> d!123955 (= lt!456411 lt!456412)))

(declare-fun lt!456413 () Unit!33810)

(declare-fun e!584529 () Unit!33810)

(assert (=> d!123955 (= lt!456413 e!584529)))

(declare-fun c!104426 () Bool)

(assert (=> d!123955 (= c!104426 lt!456412)))

(assert (=> d!123955 (= lt!456412 (containsKey!564 (toList!6951 lt!456268) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(assert (=> d!123955 (= (contains!6035 lt!456268 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456411)))

(declare-fun b!1033981 () Bool)

(declare-fun lt!456414 () Unit!33810)

(assert (=> b!1033981 (= e!584529 lt!456414)))

(assert (=> b!1033981 (= lt!456414 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456268) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(assert (=> b!1033981 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456268) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(declare-fun b!1033982 () Bool)

(declare-fun Unit!33827 () Unit!33810)

(assert (=> b!1033982 (= e!584529 Unit!33827)))

(declare-fun b!1033983 () Bool)

(assert (=> b!1033983 (= e!584528 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456268) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(assert (= (and d!123955 c!104426) b!1033981))

(assert (= (and d!123955 (not c!104426)) b!1033982))

(assert (= (and d!123955 (not res!690836)) b!1033983))

(declare-fun m!954107 () Bool)

(assert (=> d!123955 m!954107))

(declare-fun m!954109 () Bool)

(assert (=> b!1033981 m!954109))

(assert (=> b!1033981 m!953701))

(assert (=> b!1033981 m!953701))

(declare-fun m!954111 () Bool)

(assert (=> b!1033981 m!954111))

(assert (=> b!1033983 m!953701))

(assert (=> b!1033983 m!953701))

(assert (=> b!1033983 m!954111))

(assert (=> d!123813 d!123955))

(declare-fun b!1033987 () Bool)

(declare-fun e!584531 () Option!642)

(assert (=> b!1033987 (= e!584531 None!640)))

(declare-fun b!1033985 () Bool)

(declare-fun e!584530 () Option!642)

(assert (=> b!1033985 (= e!584530 e!584531)))

(declare-fun c!104428 () Bool)

(assert (=> b!1033985 (= c!104428 (and ((_ is Cons!22018) lt!456267) (not (= (_1!7927 (h!23220 lt!456267)) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))))

(declare-fun b!1033984 () Bool)

(assert (=> b!1033984 (= e!584530 (Some!641 (_2!7927 (h!23220 lt!456267))))))

(declare-fun b!1033986 () Bool)

(assert (=> b!1033986 (= e!584531 (getValueByKey!591 (t!31227 lt!456267) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(declare-fun c!104427 () Bool)

(declare-fun d!123957 () Bool)

(assert (=> d!123957 (= c!104427 (and ((_ is Cons!22018) lt!456267) (= (_1!7927 (h!23220 lt!456267)) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(assert (=> d!123957 (= (getValueByKey!591 lt!456267 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) e!584530)))

(assert (= (and d!123957 c!104427) b!1033984))

(assert (= (and d!123957 (not c!104427)) b!1033985))

(assert (= (and b!1033985 c!104428) b!1033986))

(assert (= (and b!1033985 (not c!104428)) b!1033987))

(declare-fun m!954113 () Bool)

(assert (=> b!1033986 m!954113))

(assert (=> d!123813 d!123957))

(declare-fun d!123959 () Bool)

(assert (=> d!123959 (= (getValueByKey!591 lt!456267 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(declare-fun lt!456417 () Unit!33810)

(declare-fun choose!1706 (List!22022 (_ BitVec 64) V!37565) Unit!33810)

(assert (=> d!123959 (= lt!456417 (choose!1706 lt!456267 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(declare-fun e!584534 () Bool)

(assert (=> d!123959 e!584534))

(declare-fun res!690841 () Bool)

(assert (=> d!123959 (=> (not res!690841) (not e!584534))))

(assert (=> d!123959 (= res!690841 (isStrictlySorted!714 lt!456267))))

(assert (=> d!123959 (= (lemmaContainsTupThenGetReturnValue!280 lt!456267 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456417)))

(declare-fun b!1033992 () Bool)

(declare-fun res!690842 () Bool)

(assert (=> b!1033992 (=> (not res!690842) (not e!584534))))

(assert (=> b!1033992 (= res!690842 (containsKey!564 lt!456267 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(declare-fun b!1033993 () Bool)

(assert (=> b!1033993 (= e!584534 (contains!6036 lt!456267 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(assert (= (and d!123959 res!690841) b!1033992))

(assert (= (and b!1033992 res!690842) b!1033993))

(assert (=> d!123959 m!953695))

(declare-fun m!954115 () Bool)

(assert (=> d!123959 m!954115))

(declare-fun m!954117 () Bool)

(assert (=> d!123959 m!954117))

(declare-fun m!954119 () Bool)

(assert (=> b!1033992 m!954119))

(declare-fun m!954121 () Bool)

(assert (=> b!1033993 m!954121))

(assert (=> d!123813 d!123959))

(declare-fun bm!43701 () Bool)

(declare-fun call!43705 () List!22022)

(declare-fun call!43704 () List!22022)

(assert (=> bm!43701 (= call!43705 call!43704)))

(declare-fun b!1034014 () Bool)

(declare-fun e!584547 () List!22022)

(declare-fun call!43706 () List!22022)

(assert (=> b!1034014 (= e!584547 call!43706)))

(declare-fun b!1034015 () Bool)

(declare-fun e!584546 () List!22022)

(declare-fun e!584549 () List!22022)

(assert (=> b!1034015 (= e!584546 e!584549)))

(declare-fun c!104439 () Bool)

(assert (=> b!1034015 (= c!104439 (and ((_ is Cons!22018) (toList!6951 lt!456185)) (= (_1!7927 (h!23220 (toList!6951 lt!456185))) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(declare-fun b!1034016 () Bool)

(declare-fun res!690847 () Bool)

(declare-fun e!584545 () Bool)

(assert (=> b!1034016 (=> (not res!690847) (not e!584545))))

(declare-fun lt!456420 () List!22022)

(assert (=> b!1034016 (= res!690847 (containsKey!564 lt!456420 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(declare-fun b!1034017 () Bool)

(assert (=> b!1034017 (= e!584546 call!43704)))

(declare-fun b!1034018 () Bool)

(declare-fun c!104437 () Bool)

(declare-fun e!584548 () List!22022)

(assert (=> b!1034018 (= e!584548 (ite c!104439 (t!31227 (toList!6951 lt!456185)) (ite c!104437 (Cons!22018 (h!23220 (toList!6951 lt!456185)) (t!31227 (toList!6951 lt!456185))) Nil!22019)))))

(declare-fun bm!43702 () Bool)

(declare-fun c!104440 () Bool)

(assert (=> bm!43702 (= call!43704 ($colon$colon!605 e!584548 (ite c!104440 (h!23220 (toList!6951 lt!456185)) (tuple2!15835 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))))

(declare-fun c!104438 () Bool)

(assert (=> bm!43702 (= c!104438 c!104440)))

(declare-fun d!123961 () Bool)

(assert (=> d!123961 e!584545))

(declare-fun res!690848 () Bool)

(assert (=> d!123961 (=> (not res!690848) (not e!584545))))

(assert (=> d!123961 (= res!690848 (isStrictlySorted!714 lt!456420))))

(assert (=> d!123961 (= lt!456420 e!584546)))

(assert (=> d!123961 (= c!104440 (and ((_ is Cons!22018) (toList!6951 lt!456185)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456185))) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(assert (=> d!123961 (isStrictlySorted!714 (toList!6951 lt!456185))))

(assert (=> d!123961 (= (insertStrictlySorted!372 (toList!6951 lt!456185) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456420)))

(declare-fun bm!43703 () Bool)

(assert (=> bm!43703 (= call!43706 call!43705)))

(declare-fun b!1034019 () Bool)

(assert (=> b!1034019 (= c!104437 (and ((_ is Cons!22018) (toList!6951 lt!456185)) (bvsgt (_1!7927 (h!23220 (toList!6951 lt!456185))) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(assert (=> b!1034019 (= e!584549 e!584547)))

(declare-fun b!1034020 () Bool)

(assert (=> b!1034020 (= e!584547 call!43706)))

(declare-fun b!1034021 () Bool)

(assert (=> b!1034021 (= e!584545 (contains!6036 lt!456420 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(declare-fun b!1034022 () Bool)

(assert (=> b!1034022 (= e!584548 (insertStrictlySorted!372 (t!31227 (toList!6951 lt!456185)) (_1!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))))

(declare-fun b!1034023 () Bool)

(assert (=> b!1034023 (= e!584549 call!43705)))

(assert (= (and d!123961 c!104440) b!1034017))

(assert (= (and d!123961 (not c!104440)) b!1034015))

(assert (= (and b!1034015 c!104439) b!1034023))

(assert (= (and b!1034015 (not c!104439)) b!1034019))

(assert (= (and b!1034019 c!104437) b!1034014))

(assert (= (and b!1034019 (not c!104437)) b!1034020))

(assert (= (or b!1034014 b!1034020) bm!43703))

(assert (= (or b!1034023 bm!43703) bm!43701))

(assert (= (or b!1034017 bm!43701) bm!43702))

(assert (= (and bm!43702 c!104438) b!1034022))

(assert (= (and bm!43702 (not c!104438)) b!1034018))

(assert (= (and d!123961 res!690848) b!1034016))

(assert (= (and b!1034016 res!690847) b!1034021))

(declare-fun m!954123 () Bool)

(assert (=> b!1034016 m!954123))

(declare-fun m!954125 () Bool)

(assert (=> d!123961 m!954125))

(declare-fun m!954127 () Bool)

(assert (=> d!123961 m!954127))

(declare-fun m!954129 () Bool)

(assert (=> b!1034022 m!954129))

(declare-fun m!954131 () Bool)

(assert (=> bm!43702 m!954131))

(declare-fun m!954133 () Bool)

(assert (=> b!1034021 m!954133))

(assert (=> d!123813 d!123961))

(declare-fun b!1034024 () Bool)

(declare-fun res!690851 () Bool)

(declare-fun e!584556 () Bool)

(assert (=> b!1034024 (=> (not res!690851) (not e!584556))))

(declare-fun lt!456424 () ListLongMap!13871)

(assert (=> b!1034024 (= res!690851 (not (contains!6035 lt!456424 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1034025 () Bool)

(declare-fun e!584550 () Bool)

(assert (=> b!1034025 (= e!584550 (isEmpty!929 lt!456424))))

(declare-fun b!1034026 () Bool)

(declare-fun e!584553 () ListLongMap!13871)

(declare-fun e!584551 () ListLongMap!13871)

(assert (=> b!1034026 (= e!584553 e!584551)))

(declare-fun c!104441 () Bool)

(assert (=> b!1034026 (= c!104441 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1034027 () Bool)

(declare-fun e!584554 () Bool)

(assert (=> b!1034027 (= e!584554 e!584550)))

(declare-fun c!104442 () Bool)

(assert (=> b!1034027 (= c!104442 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1034028 () Bool)

(declare-fun e!584555 () Bool)

(assert (=> b!1034028 (= e!584555 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1034028 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1034029 () Bool)

(assert (=> b!1034029 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> b!1034029 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31865 (_values!6250 thiss!1427))))))

(declare-fun e!584552 () Bool)

(assert (=> b!1034029 (= e!584552 (= (apply!941 lt!456424 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034030 () Bool)

(assert (=> b!1034030 (= e!584550 (= lt!456424 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427))))))

(declare-fun d!123963 () Bool)

(assert (=> d!123963 e!584556))

(declare-fun res!690852 () Bool)

(assert (=> d!123963 (=> (not res!690852) (not e!584556))))

(assert (=> d!123963 (= res!690852 (not (contains!6035 lt!456424 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123963 (= lt!456424 e!584553)))

(declare-fun c!104443 () Bool)

(assert (=> d!123963 (= c!104443 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!123963 (validMask!0 (mask!30079 thiss!1427))))

(assert (=> d!123963 (= (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427)) lt!456424)))

(declare-fun b!1034031 () Bool)

(declare-fun call!43707 () ListLongMap!13871)

(assert (=> b!1034031 (= e!584551 call!43707)))

(declare-fun bm!43704 () Bool)

(assert (=> bm!43704 (= call!43707 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (bvand (extraKeys!5959 thiss!1427) #b00000000000000000000000000000010) lt!456100 (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427)))))

(declare-fun b!1034032 () Bool)

(declare-fun lt!456427 () Unit!33810)

(declare-fun lt!456423 () Unit!33810)

(assert (=> b!1034032 (= lt!456427 lt!456423)))

(declare-fun lt!456426 () V!37565)

(declare-fun lt!456422 () (_ BitVec 64))

(declare-fun lt!456421 () (_ BitVec 64))

(declare-fun lt!456425 () ListLongMap!13871)

(assert (=> b!1034032 (not (contains!6035 (+!3064 lt!456425 (tuple2!15835 lt!456422 lt!456426)) lt!456421))))

(assert (=> b!1034032 (= lt!456423 (addStillNotContains!244 lt!456425 lt!456422 lt!456426 lt!456421))))

(assert (=> b!1034032 (= lt!456421 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1034032 (= lt!456426 (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1034032 (= lt!456422 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1034032 (= lt!456425 call!43707)))

(assert (=> b!1034032 (= e!584551 (+!3064 call!43707 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1034033 () Bool)

(assert (=> b!1034033 (= e!584554 e!584552)))

(assert (=> b!1034033 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun res!690850 () Bool)

(assert (=> b!1034033 (= res!690850 (contains!6035 lt!456424 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1034033 (=> (not res!690850) (not e!584552))))

(declare-fun b!1034034 () Bool)

(assert (=> b!1034034 (= e!584553 (ListLongMap!13872 Nil!22019))))

(declare-fun b!1034035 () Bool)

(assert (=> b!1034035 (= e!584556 e!584554)))

(declare-fun c!104444 () Bool)

(assert (=> b!1034035 (= c!104444 e!584555)))

(declare-fun res!690849 () Bool)

(assert (=> b!1034035 (=> (not res!690849) (not e!584555))))

(assert (=> b!1034035 (= res!690849 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(assert (= (and d!123963 c!104443) b!1034034))

(assert (= (and d!123963 (not c!104443)) b!1034026))

(assert (= (and b!1034026 c!104441) b!1034032))

(assert (= (and b!1034026 (not c!104441)) b!1034031))

(assert (= (or b!1034032 b!1034031) bm!43704))

(assert (= (and d!123963 res!690852) b!1034024))

(assert (= (and b!1034024 res!690851) b!1034035))

(assert (= (and b!1034035 res!690849) b!1034028))

(assert (= (and b!1034035 c!104444) b!1034033))

(assert (= (and b!1034035 (not c!104444)) b!1034027))

(assert (= (and b!1034033 res!690850) b!1034029))

(assert (= (and b!1034027 c!104442) b!1034030))

(assert (= (and b!1034027 (not c!104442)) b!1034025))

(declare-fun b_lambda!16109 () Bool)

(assert (=> (not b_lambda!16109) (not b!1034029)))

(assert (=> b!1034029 t!31226))

(declare-fun b_and!33309 () Bool)

(assert (= b_and!33307 (and (=> t!31226 result!14395) b_and!33309)))

(declare-fun b_lambda!16111 () Bool)

(assert (=> (not b_lambda!16111) (not b!1034032)))

(assert (=> b!1034032 t!31226))

(declare-fun b_and!33311 () Bool)

(assert (= b_and!33309 (and (=> t!31226 result!14395) b_and!33311)))

(declare-fun m!954135 () Bool)

(assert (=> b!1034026 m!954135))

(assert (=> b!1034026 m!954135))

(declare-fun m!954137 () Bool)

(assert (=> b!1034026 m!954137))

(assert (=> b!1034028 m!954135))

(assert (=> b!1034028 m!954135))

(assert (=> b!1034028 m!954137))

(declare-fun m!954139 () Bool)

(assert (=> bm!43704 m!954139))

(assert (=> b!1034033 m!954135))

(assert (=> b!1034033 m!954135))

(declare-fun m!954141 () Bool)

(assert (=> b!1034033 m!954141))

(declare-fun m!954143 () Bool)

(assert (=> b!1034024 m!954143))

(declare-fun m!954145 () Bool)

(assert (=> b!1034032 m!954145))

(assert (=> b!1034032 m!953385))

(declare-fun m!954147 () Bool)

(assert (=> b!1034032 m!954147))

(declare-fun m!954149 () Bool)

(assert (=> b!1034032 m!954149))

(declare-fun m!954151 () Bool)

(assert (=> b!1034032 m!954151))

(declare-fun m!954153 () Bool)

(assert (=> b!1034032 m!954153))

(assert (=> b!1034032 m!954147))

(assert (=> b!1034032 m!954135))

(assert (=> b!1034032 m!954151))

(assert (=> b!1034032 m!953385))

(declare-fun m!954155 () Bool)

(assert (=> b!1034032 m!954155))

(assert (=> b!1034029 m!953385))

(assert (=> b!1034029 m!954151))

(assert (=> b!1034029 m!954135))

(assert (=> b!1034029 m!954135))

(declare-fun m!954157 () Bool)

(assert (=> b!1034029 m!954157))

(assert (=> b!1034029 m!954151))

(assert (=> b!1034029 m!953385))

(assert (=> b!1034029 m!954155))

(declare-fun m!954159 () Bool)

(assert (=> b!1034025 m!954159))

(assert (=> b!1034030 m!954139))

(declare-fun m!954161 () Bool)

(assert (=> d!123963 m!954161))

(assert (=> d!123963 m!953483))

(assert (=> b!1033717 d!123963))

(declare-fun d!123965 () Bool)

(declare-fun e!584557 () Bool)

(assert (=> d!123965 e!584557))

(declare-fun res!690853 () Bool)

(assert (=> d!123965 (=> res!690853 e!584557)))

(declare-fun lt!456428 () Bool)

(assert (=> d!123965 (= res!690853 (not lt!456428))))

(declare-fun lt!456429 () Bool)

(assert (=> d!123965 (= lt!456428 lt!456429)))

(declare-fun lt!456430 () Unit!33810)

(declare-fun e!584558 () Unit!33810)

(assert (=> d!123965 (= lt!456430 e!584558)))

(declare-fun c!104445 () Bool)

(assert (=> d!123965 (= c!104445 lt!456429)))

(assert (=> d!123965 (= lt!456429 (containsKey!564 (toList!6951 lt!456351) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> d!123965 (= (contains!6035 lt!456351 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456428)))

(declare-fun b!1034036 () Bool)

(declare-fun lt!456431 () Unit!33810)

(assert (=> b!1034036 (= e!584558 lt!456431)))

(assert (=> b!1034036 (= lt!456431 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456351) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> b!1034036 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456351) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034037 () Bool)

(declare-fun Unit!33828 () Unit!33810)

(assert (=> b!1034037 (= e!584558 Unit!33828)))

(declare-fun b!1034038 () Bool)

(assert (=> b!1034038 (= e!584557 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456351) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (= (and d!123965 c!104445) b!1034036))

(assert (= (and d!123965 (not c!104445)) b!1034037))

(assert (= (and d!123965 (not res!690853)) b!1034038))

(declare-fun m!954163 () Bool)

(assert (=> d!123965 m!954163))

(declare-fun m!954165 () Bool)

(assert (=> b!1034036 m!954165))

(assert (=> b!1034036 m!953941))

(assert (=> b!1034036 m!953941))

(declare-fun m!954167 () Bool)

(assert (=> b!1034036 m!954167))

(assert (=> b!1034038 m!953941))

(assert (=> b!1034038 m!953941))

(assert (=> b!1034038 m!954167))

(assert (=> d!123895 d!123965))

(declare-fun b!1034042 () Bool)

(declare-fun e!584560 () Option!642)

(assert (=> b!1034042 (= e!584560 None!640)))

(declare-fun b!1034040 () Bool)

(declare-fun e!584559 () Option!642)

(assert (=> b!1034040 (= e!584559 e!584560)))

(declare-fun c!104447 () Bool)

(assert (=> b!1034040 (= c!104447 (and ((_ is Cons!22018) lt!456350) (not (= (_1!7927 (h!23220 lt!456350)) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034039 () Bool)

(assert (=> b!1034039 (= e!584559 (Some!641 (_2!7927 (h!23220 lt!456350))))))

(declare-fun b!1034041 () Bool)

(assert (=> b!1034041 (= e!584560 (getValueByKey!591 (t!31227 lt!456350) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun d!123967 () Bool)

(declare-fun c!104446 () Bool)

(assert (=> d!123967 (= c!104446 (and ((_ is Cons!22018) lt!456350) (= (_1!7927 (h!23220 lt!456350)) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!123967 (= (getValueByKey!591 lt!456350 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) e!584559)))

(assert (= (and d!123967 c!104446) b!1034039))

(assert (= (and d!123967 (not c!104446)) b!1034040))

(assert (= (and b!1034040 c!104447) b!1034041))

(assert (= (and b!1034040 (not c!104447)) b!1034042))

(declare-fun m!954169 () Bool)

(assert (=> b!1034041 m!954169))

(assert (=> d!123895 d!123967))

(declare-fun d!123969 () Bool)

(assert (=> d!123969 (= (getValueByKey!591 lt!456350 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456432 () Unit!33810)

(assert (=> d!123969 (= lt!456432 (choose!1706 lt!456350 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun e!584561 () Bool)

(assert (=> d!123969 e!584561))

(declare-fun res!690854 () Bool)

(assert (=> d!123969 (=> (not res!690854) (not e!584561))))

(assert (=> d!123969 (= res!690854 (isStrictlySorted!714 lt!456350))))

(assert (=> d!123969 (= (lemmaContainsTupThenGetReturnValue!280 lt!456350 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456432)))

(declare-fun b!1034043 () Bool)

(declare-fun res!690855 () Bool)

(assert (=> b!1034043 (=> (not res!690855) (not e!584561))))

(assert (=> b!1034043 (= res!690855 (containsKey!564 lt!456350 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034044 () Bool)

(assert (=> b!1034044 (= e!584561 (contains!6036 lt!456350 (tuple2!15835 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (= (and d!123969 res!690854) b!1034043))

(assert (= (and b!1034043 res!690855) b!1034044))

(assert (=> d!123969 m!953935))

(declare-fun m!954171 () Bool)

(assert (=> d!123969 m!954171))

(declare-fun m!954173 () Bool)

(assert (=> d!123969 m!954173))

(declare-fun m!954175 () Bool)

(assert (=> b!1034043 m!954175))

(declare-fun m!954177 () Bool)

(assert (=> b!1034044 m!954177))

(assert (=> d!123895 d!123969))

(declare-fun bm!43705 () Bool)

(declare-fun call!43709 () List!22022)

(declare-fun call!43708 () List!22022)

(assert (=> bm!43705 (= call!43709 call!43708)))

(declare-fun b!1034045 () Bool)

(declare-fun e!584564 () List!22022)

(declare-fun call!43710 () List!22022)

(assert (=> b!1034045 (= e!584564 call!43710)))

(declare-fun b!1034046 () Bool)

(declare-fun e!584563 () List!22022)

(declare-fun e!584566 () List!22022)

(assert (=> b!1034046 (= e!584563 e!584566)))

(declare-fun c!104450 () Bool)

(assert (=> b!1034046 (= c!104450 (and ((_ is Cons!22018) (toList!6951 call!43664)) (= (_1!7927 (h!23220 (toList!6951 call!43664))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034047 () Bool)

(declare-fun res!690856 () Bool)

(declare-fun e!584562 () Bool)

(assert (=> b!1034047 (=> (not res!690856) (not e!584562))))

(declare-fun lt!456433 () List!22022)

(assert (=> b!1034047 (= res!690856 (containsKey!564 lt!456433 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034048 () Bool)

(assert (=> b!1034048 (= e!584563 call!43708)))

(declare-fun e!584565 () List!22022)

(declare-fun b!1034049 () Bool)

(declare-fun c!104448 () Bool)

(assert (=> b!1034049 (= e!584565 (ite c!104450 (t!31227 (toList!6951 call!43664)) (ite c!104448 (Cons!22018 (h!23220 (toList!6951 call!43664)) (t!31227 (toList!6951 call!43664))) Nil!22019)))))

(declare-fun bm!43706 () Bool)

(declare-fun c!104451 () Bool)

(assert (=> bm!43706 (= call!43708 ($colon$colon!605 e!584565 (ite c!104451 (h!23220 (toList!6951 call!43664)) (tuple2!15835 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun c!104449 () Bool)

(assert (=> bm!43706 (= c!104449 c!104451)))

(declare-fun d!123971 () Bool)

(assert (=> d!123971 e!584562))

(declare-fun res!690857 () Bool)

(assert (=> d!123971 (=> (not res!690857) (not e!584562))))

(assert (=> d!123971 (= res!690857 (isStrictlySorted!714 lt!456433))))

(assert (=> d!123971 (= lt!456433 e!584563)))

(assert (=> d!123971 (= c!104451 (and ((_ is Cons!22018) (toList!6951 call!43664)) (bvslt (_1!7927 (h!23220 (toList!6951 call!43664))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!123971 (isStrictlySorted!714 (toList!6951 call!43664))))

(assert (=> d!123971 (= (insertStrictlySorted!372 (toList!6951 call!43664) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456433)))

(declare-fun bm!43707 () Bool)

(assert (=> bm!43707 (= call!43710 call!43709)))

(declare-fun b!1034050 () Bool)

(assert (=> b!1034050 (= c!104448 (and ((_ is Cons!22018) (toList!6951 call!43664)) (bvsgt (_1!7927 (h!23220 (toList!6951 call!43664))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> b!1034050 (= e!584566 e!584564)))

(declare-fun b!1034051 () Bool)

(assert (=> b!1034051 (= e!584564 call!43710)))

(declare-fun b!1034052 () Bool)

(assert (=> b!1034052 (= e!584562 (contains!6036 lt!456433 (tuple2!15835 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034053 () Bool)

(assert (=> b!1034053 (= e!584565 (insertStrictlySorted!372 (t!31227 (toList!6951 call!43664)) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034054 () Bool)

(assert (=> b!1034054 (= e!584566 call!43709)))

(assert (= (and d!123971 c!104451) b!1034048))

(assert (= (and d!123971 (not c!104451)) b!1034046))

(assert (= (and b!1034046 c!104450) b!1034054))

(assert (= (and b!1034046 (not c!104450)) b!1034050))

(assert (= (and b!1034050 c!104448) b!1034045))

(assert (= (and b!1034050 (not c!104448)) b!1034051))

(assert (= (or b!1034045 b!1034051) bm!43707))

(assert (= (or b!1034054 bm!43707) bm!43705))

(assert (= (or b!1034048 bm!43705) bm!43706))

(assert (= (and bm!43706 c!104449) b!1034053))

(assert (= (and bm!43706 (not c!104449)) b!1034049))

(assert (= (and d!123971 res!690857) b!1034047))

(assert (= (and b!1034047 res!690856) b!1034052))

(declare-fun m!954179 () Bool)

(assert (=> b!1034047 m!954179))

(declare-fun m!954181 () Bool)

(assert (=> d!123971 m!954181))

(declare-fun m!954183 () Bool)

(assert (=> d!123971 m!954183))

(declare-fun m!954185 () Bool)

(assert (=> b!1034053 m!954185))

(declare-fun m!954187 () Bool)

(assert (=> bm!43706 m!954187))

(declare-fun m!954189 () Bool)

(assert (=> b!1034052 m!954189))

(assert (=> d!123895 d!123971))

(declare-fun d!123973 () Bool)

(declare-fun e!584567 () Bool)

(assert (=> d!123973 e!584567))

(declare-fun res!690858 () Bool)

(assert (=> d!123973 (=> res!690858 e!584567)))

(declare-fun lt!456434 () Bool)

(assert (=> d!123973 (= res!690858 (not lt!456434))))

(declare-fun lt!456435 () Bool)

(assert (=> d!123973 (= lt!456434 lt!456435)))

(declare-fun lt!456436 () Unit!33810)

(declare-fun e!584568 () Unit!33810)

(assert (=> d!123973 (= lt!456436 e!584568)))

(declare-fun c!104452 () Bool)

(assert (=> d!123973 (= c!104452 lt!456435)))

(assert (=> d!123973 (= lt!456435 (containsKey!564 (toList!6951 lt!456175) lt!456156))))

(assert (=> d!123973 (= (contains!6035 lt!456175 lt!456156) lt!456434)))

(declare-fun b!1034055 () Bool)

(declare-fun lt!456437 () Unit!33810)

(assert (=> b!1034055 (= e!584568 lt!456437)))

(assert (=> b!1034055 (= lt!456437 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456175) lt!456156))))

(assert (=> b!1034055 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456175) lt!456156))))

(declare-fun b!1034056 () Bool)

(declare-fun Unit!33829 () Unit!33810)

(assert (=> b!1034056 (= e!584568 Unit!33829)))

(declare-fun b!1034057 () Bool)

(assert (=> b!1034057 (= e!584567 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456175) lt!456156)))))

(assert (= (and d!123973 c!104452) b!1034055))

(assert (= (and d!123973 (not c!104452)) b!1034056))

(assert (= (and d!123973 (not res!690858)) b!1034057))

(declare-fun m!954191 () Bool)

(assert (=> d!123973 m!954191))

(declare-fun m!954193 () Bool)

(assert (=> b!1034055 m!954193))

(assert (=> b!1034055 m!953785))

(assert (=> b!1034055 m!953785))

(declare-fun m!954195 () Bool)

(assert (=> b!1034055 m!954195))

(assert (=> b!1034057 m!953785))

(assert (=> b!1034057 m!953785))

(assert (=> b!1034057 m!954195))

(assert (=> d!123853 d!123973))

(declare-fun d!123975 () Bool)

(assert (=> d!123975 (= (apply!941 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) lt!456156) (apply!941 lt!456175 lt!456156))))

(assert (=> d!123975 true))

(declare-fun _$34!1161 () Unit!33810)

(assert (=> d!123975 (= (choose!1703 lt!456175 lt!456172 (minValue!6063 thiss!1427) lt!456156) _$34!1161)))

(declare-fun bs!30234 () Bool)

(assert (= bs!30234 d!123975))

(assert (=> bs!30234 m!953463))

(assert (=> bs!30234 m!953463))

(assert (=> bs!30234 m!953475))

(assert (=> bs!30234 m!953455))

(assert (=> d!123853 d!123975))

(assert (=> d!123853 d!123827))

(assert (=> d!123853 d!123843))

(assert (=> d!123853 d!123837))

(declare-fun d!123977 () Bool)

(declare-fun e!584569 () Bool)

(assert (=> d!123977 e!584569))

(declare-fun res!690860 () Bool)

(assert (=> d!123977 (=> (not res!690860) (not e!584569))))

(declare-fun lt!456439 () ListLongMap!13871)

(assert (=> d!123977 (= res!690860 (contains!6035 lt!456439 (_1!7927 (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))))))))

(declare-fun lt!456438 () List!22022)

(assert (=> d!123977 (= lt!456439 (ListLongMap!13872 lt!456438))))

(declare-fun lt!456441 () Unit!33810)

(declare-fun lt!456440 () Unit!33810)

(assert (=> d!123977 (= lt!456441 lt!456440)))

(assert (=> d!123977 (= (getValueByKey!591 lt!456438 (_1!7927 (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))))) (Some!641 (_2!7927 (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))))))))

(assert (=> d!123977 (= lt!456440 (lemmaContainsTupThenGetReturnValue!280 lt!456438 (_1!7927 (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))) (_2!7927 (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))))))))

(assert (=> d!123977 (= lt!456438 (insertStrictlySorted!372 (toList!6951 (ite c!104395 call!43695 (ite c!104397 call!43696 call!43693))) (_1!7927 (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))) (_2!7927 (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))))))))

(assert (=> d!123977 (= (+!3064 (ite c!104395 call!43695 (ite c!104397 call!43696 call!43693)) (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))) lt!456439)))

(declare-fun b!1034059 () Bool)

(declare-fun res!690859 () Bool)

(assert (=> b!1034059 (=> (not res!690859) (not e!584569))))

(assert (=> b!1034059 (= res!690859 (= (getValueByKey!591 (toList!6951 lt!456439) (_1!7927 (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))))) (Some!641 (_2!7927 (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))))))))

(declare-fun b!1034060 () Bool)

(assert (=> b!1034060 (= e!584569 (contains!6036 (toList!6951 lt!456439) (ite (or c!104395 c!104397) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 lt!456102)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))))))

(assert (= (and d!123977 res!690860) b!1034059))

(assert (= (and b!1034059 res!690859) b!1034060))

(declare-fun m!954197 () Bool)

(assert (=> d!123977 m!954197))

(declare-fun m!954199 () Bool)

(assert (=> d!123977 m!954199))

(declare-fun m!954201 () Bool)

(assert (=> d!123977 m!954201))

(declare-fun m!954203 () Bool)

(assert (=> d!123977 m!954203))

(declare-fun m!954205 () Bool)

(assert (=> b!1034059 m!954205))

(declare-fun m!954207 () Bool)

(assert (=> b!1034060 m!954207))

(assert (=> bm!43689 d!123977))

(declare-fun d!123979 () Bool)

(declare-fun e!584570 () Bool)

(assert (=> d!123979 e!584570))

(declare-fun res!690861 () Bool)

(assert (=> d!123979 (=> res!690861 e!584570)))

(declare-fun lt!456442 () Bool)

(assert (=> d!123979 (= res!690861 (not lt!456442))))

(declare-fun lt!456443 () Bool)

(assert (=> d!123979 (= lt!456442 lt!456443)))

(declare-fun lt!456444 () Unit!33810)

(declare-fun e!584571 () Unit!33810)

(assert (=> d!123979 (= lt!456444 e!584571)))

(declare-fun c!104453 () Bool)

(assert (=> d!123979 (= c!104453 lt!456443)))

(assert (=> d!123979 (= lt!456443 (containsKey!564 (toList!6951 (+!3064 lt!456225 (tuple2!15835 lt!456222 lt!456226))) lt!456221))))

(assert (=> d!123979 (= (contains!6035 (+!3064 lt!456225 (tuple2!15835 lt!456222 lt!456226)) lt!456221) lt!456442)))

(declare-fun b!1034061 () Bool)

(declare-fun lt!456445 () Unit!33810)

(assert (=> b!1034061 (= e!584571 lt!456445)))

(assert (=> b!1034061 (= lt!456445 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 (+!3064 lt!456225 (tuple2!15835 lt!456222 lt!456226))) lt!456221))))

(assert (=> b!1034061 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456225 (tuple2!15835 lt!456222 lt!456226))) lt!456221))))

(declare-fun b!1034062 () Bool)

(declare-fun Unit!33830 () Unit!33810)

(assert (=> b!1034062 (= e!584571 Unit!33830)))

(declare-fun b!1034063 () Bool)

(assert (=> b!1034063 (= e!584570 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456225 (tuple2!15835 lt!456222 lt!456226))) lt!456221)))))

(assert (= (and d!123979 c!104453) b!1034061))

(assert (= (and d!123979 (not c!104453)) b!1034062))

(assert (= (and d!123979 (not res!690861)) b!1034063))

(declare-fun m!954209 () Bool)

(assert (=> d!123979 m!954209))

(declare-fun m!954211 () Bool)

(assert (=> b!1034061 m!954211))

(declare-fun m!954213 () Bool)

(assert (=> b!1034061 m!954213))

(assert (=> b!1034061 m!954213))

(declare-fun m!954215 () Bool)

(assert (=> b!1034061 m!954215))

(assert (=> b!1034063 m!954213))

(assert (=> b!1034063 m!954213))

(assert (=> b!1034063 m!954215))

(assert (=> b!1033707 d!123979))

(assert (=> b!1033707 d!123883))

(declare-fun d!123981 () Bool)

(declare-fun e!584572 () Bool)

(assert (=> d!123981 e!584572))

(declare-fun res!690863 () Bool)

(assert (=> d!123981 (=> (not res!690863) (not e!584572))))

(declare-fun lt!456447 () ListLongMap!13871)

(assert (=> d!123981 (= res!690863 (contains!6035 lt!456447 (_1!7927 (tuple2!15835 lt!456222 lt!456226))))))

(declare-fun lt!456446 () List!22022)

(assert (=> d!123981 (= lt!456447 (ListLongMap!13872 lt!456446))))

(declare-fun lt!456449 () Unit!33810)

(declare-fun lt!456448 () Unit!33810)

(assert (=> d!123981 (= lt!456449 lt!456448)))

(assert (=> d!123981 (= (getValueByKey!591 lt!456446 (_1!7927 (tuple2!15835 lt!456222 lt!456226))) (Some!641 (_2!7927 (tuple2!15835 lt!456222 lt!456226))))))

(assert (=> d!123981 (= lt!456448 (lemmaContainsTupThenGetReturnValue!280 lt!456446 (_1!7927 (tuple2!15835 lt!456222 lt!456226)) (_2!7927 (tuple2!15835 lt!456222 lt!456226))))))

(assert (=> d!123981 (= lt!456446 (insertStrictlySorted!372 (toList!6951 lt!456225) (_1!7927 (tuple2!15835 lt!456222 lt!456226)) (_2!7927 (tuple2!15835 lt!456222 lt!456226))))))

(assert (=> d!123981 (= (+!3064 lt!456225 (tuple2!15835 lt!456222 lt!456226)) lt!456447)))

(declare-fun b!1034064 () Bool)

(declare-fun res!690862 () Bool)

(assert (=> b!1034064 (=> (not res!690862) (not e!584572))))

(assert (=> b!1034064 (= res!690862 (= (getValueByKey!591 (toList!6951 lt!456447) (_1!7927 (tuple2!15835 lt!456222 lt!456226))) (Some!641 (_2!7927 (tuple2!15835 lt!456222 lt!456226)))))))

(declare-fun b!1034065 () Bool)

(assert (=> b!1034065 (= e!584572 (contains!6036 (toList!6951 lt!456447) (tuple2!15835 lt!456222 lt!456226)))))

(assert (= (and d!123981 res!690863) b!1034064))

(assert (= (and b!1034064 res!690862) b!1034065))

(declare-fun m!954217 () Bool)

(assert (=> d!123981 m!954217))

(declare-fun m!954219 () Bool)

(assert (=> d!123981 m!954219))

(declare-fun m!954221 () Bool)

(assert (=> d!123981 m!954221))

(declare-fun m!954223 () Bool)

(assert (=> d!123981 m!954223))

(declare-fun m!954225 () Bool)

(assert (=> b!1034064 m!954225))

(declare-fun m!954227 () Bool)

(assert (=> b!1034065 m!954227))

(assert (=> b!1033707 d!123981))

(declare-fun d!123983 () Bool)

(assert (=> d!123983 (not (contains!6035 (+!3064 lt!456225 (tuple2!15835 lt!456222 lt!456226)) lt!456221))))

(declare-fun lt!456452 () Unit!33810)

(declare-fun choose!1707 (ListLongMap!13871 (_ BitVec 64) V!37565 (_ BitVec 64)) Unit!33810)

(assert (=> d!123983 (= lt!456452 (choose!1707 lt!456225 lt!456222 lt!456226 lt!456221))))

(declare-fun e!584575 () Bool)

(assert (=> d!123983 e!584575))

(declare-fun res!690866 () Bool)

(assert (=> d!123983 (=> (not res!690866) (not e!584575))))

(assert (=> d!123983 (= res!690866 (not (contains!6035 lt!456225 lt!456221)))))

(assert (=> d!123983 (= (addStillNotContains!244 lt!456225 lt!456222 lt!456226 lt!456221) lt!456452)))

(declare-fun b!1034069 () Bool)

(assert (=> b!1034069 (= e!584575 (not (= lt!456222 lt!456221)))))

(assert (= (and d!123983 res!690866) b!1034069))

(assert (=> d!123983 m!953573))

(assert (=> d!123983 m!953573))

(assert (=> d!123983 m!953575))

(declare-fun m!954229 () Bool)

(assert (=> d!123983 m!954229))

(declare-fun m!954231 () Bool)

(assert (=> d!123983 m!954231))

(assert (=> b!1033707 d!123983))

(declare-fun d!123985 () Bool)

(declare-fun e!584576 () Bool)

(assert (=> d!123985 e!584576))

(declare-fun res!690868 () Bool)

(assert (=> d!123985 (=> (not res!690868) (not e!584576))))

(declare-fun lt!456454 () ListLongMap!13871)

(assert (=> d!123985 (= res!690868 (contains!6035 lt!456454 (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!456453 () List!22022)

(assert (=> d!123985 (= lt!456454 (ListLongMap!13872 lt!456453))))

(declare-fun lt!456456 () Unit!33810)

(declare-fun lt!456455 () Unit!33810)

(assert (=> d!123985 (= lt!456456 lt!456455)))

(assert (=> d!123985 (= (getValueByKey!591 lt!456453 (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!641 (_2!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!123985 (= lt!456455 (lemmaContainsTupThenGetReturnValue!280 lt!456453 (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!123985 (= lt!456453 (insertStrictlySorted!372 (toList!6951 call!43676) (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!123985 (= (+!3064 call!43676 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!456454)))

(declare-fun b!1034070 () Bool)

(declare-fun res!690867 () Bool)

(assert (=> b!1034070 (=> (not res!690867) (not e!584576))))

(assert (=> b!1034070 (= res!690867 (= (getValueByKey!591 (toList!6951 lt!456454) (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!641 (_2!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1034071 () Bool)

(assert (=> b!1034071 (= e!584576 (contains!6036 (toList!6951 lt!456454) (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!123985 res!690868) b!1034070))

(assert (= (and b!1034070 res!690867) b!1034071))

(declare-fun m!954233 () Bool)

(assert (=> d!123985 m!954233))

(declare-fun m!954235 () Bool)

(assert (=> d!123985 m!954235))

(declare-fun m!954237 () Bool)

(assert (=> d!123985 m!954237))

(declare-fun m!954239 () Bool)

(assert (=> d!123985 m!954239))

(declare-fun m!954241 () Bool)

(assert (=> b!1034070 m!954241))

(declare-fun m!954243 () Bool)

(assert (=> b!1034071 m!954243))

(assert (=> b!1033707 d!123985))

(declare-fun d!123987 () Bool)

(declare-fun e!584577 () Bool)

(assert (=> d!123987 e!584577))

(declare-fun res!690869 () Bool)

(assert (=> d!123987 (=> res!690869 e!584577)))

(declare-fun lt!456457 () Bool)

(assert (=> d!123987 (= res!690869 (not lt!456457))))

(declare-fun lt!456458 () Bool)

(assert (=> d!123987 (= lt!456457 lt!456458)))

(declare-fun lt!456459 () Unit!33810)

(declare-fun e!584578 () Unit!33810)

(assert (=> d!123987 (= lt!456459 e!584578)))

(declare-fun c!104454 () Bool)

(assert (=> d!123987 (= c!104454 lt!456458)))

(assert (=> d!123987 (= lt!456458 (containsKey!564 (toList!6951 lt!456296) (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))

(assert (=> d!123987 (= (contains!6035 lt!456296 (_1!7927 (tuple2!15835 lt!456165 lt!456100))) lt!456457)))

(declare-fun b!1034072 () Bool)

(declare-fun lt!456460 () Unit!33810)

(assert (=> b!1034072 (= e!584578 lt!456460)))

(assert (=> b!1034072 (= lt!456460 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456296) (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))

(assert (=> b!1034072 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456296) (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))

(declare-fun b!1034073 () Bool)

(declare-fun Unit!33831 () Unit!33810)

(assert (=> b!1034073 (= e!584578 Unit!33831)))

(declare-fun b!1034074 () Bool)

(assert (=> b!1034074 (= e!584577 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456296) (_1!7927 (tuple2!15835 lt!456165 lt!456100)))))))

(assert (= (and d!123987 c!104454) b!1034072))

(assert (= (and d!123987 (not c!104454)) b!1034073))

(assert (= (and d!123987 (not res!690869)) b!1034074))

(declare-fun m!954245 () Bool)

(assert (=> d!123987 m!954245))

(declare-fun m!954247 () Bool)

(assert (=> b!1034072 m!954247))

(assert (=> b!1034072 m!953777))

(assert (=> b!1034072 m!953777))

(declare-fun m!954249 () Bool)

(assert (=> b!1034072 m!954249))

(assert (=> b!1034074 m!953777))

(assert (=> b!1034074 m!953777))

(assert (=> b!1034074 m!954249))

(assert (=> d!123839 d!123987))

(declare-fun b!1034078 () Bool)

(declare-fun e!584580 () Option!642)

(assert (=> b!1034078 (= e!584580 None!640)))

(declare-fun b!1034076 () Bool)

(declare-fun e!584579 () Option!642)

(assert (=> b!1034076 (= e!584579 e!584580)))

(declare-fun c!104456 () Bool)

(assert (=> b!1034076 (= c!104456 (and ((_ is Cons!22018) lt!456295) (not (= (_1!7927 (h!23220 lt!456295)) (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))))

(declare-fun b!1034075 () Bool)

(assert (=> b!1034075 (= e!584579 (Some!641 (_2!7927 (h!23220 lt!456295))))))

(declare-fun b!1034077 () Bool)

(assert (=> b!1034077 (= e!584580 (getValueByKey!591 (t!31227 lt!456295) (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))

(declare-fun d!123989 () Bool)

(declare-fun c!104455 () Bool)

(assert (=> d!123989 (= c!104455 (and ((_ is Cons!22018) lt!456295) (= (_1!7927 (h!23220 lt!456295)) (_1!7927 (tuple2!15835 lt!456165 lt!456100)))))))

(assert (=> d!123989 (= (getValueByKey!591 lt!456295 (_1!7927 (tuple2!15835 lt!456165 lt!456100))) e!584579)))

(assert (= (and d!123989 c!104455) b!1034075))

(assert (= (and d!123989 (not c!104455)) b!1034076))

(assert (= (and b!1034076 c!104456) b!1034077))

(assert (= (and b!1034076 (not c!104456)) b!1034078))

(declare-fun m!954251 () Bool)

(assert (=> b!1034077 m!954251))

(assert (=> d!123839 d!123989))

(declare-fun d!123991 () Bool)

(assert (=> d!123991 (= (getValueByKey!591 lt!456295 (_1!7927 (tuple2!15835 lt!456165 lt!456100))) (Some!641 (_2!7927 (tuple2!15835 lt!456165 lt!456100))))))

(declare-fun lt!456461 () Unit!33810)

(assert (=> d!123991 (= lt!456461 (choose!1706 lt!456295 (_1!7927 (tuple2!15835 lt!456165 lt!456100)) (_2!7927 (tuple2!15835 lt!456165 lt!456100))))))

(declare-fun e!584581 () Bool)

(assert (=> d!123991 e!584581))

(declare-fun res!690870 () Bool)

(assert (=> d!123991 (=> (not res!690870) (not e!584581))))

(assert (=> d!123991 (= res!690870 (isStrictlySorted!714 lt!456295))))

(assert (=> d!123991 (= (lemmaContainsTupThenGetReturnValue!280 lt!456295 (_1!7927 (tuple2!15835 lt!456165 lt!456100)) (_2!7927 (tuple2!15835 lt!456165 lt!456100))) lt!456461)))

(declare-fun b!1034079 () Bool)

(declare-fun res!690871 () Bool)

(assert (=> b!1034079 (=> (not res!690871) (not e!584581))))

(assert (=> b!1034079 (= res!690871 (containsKey!564 lt!456295 (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))

(declare-fun b!1034080 () Bool)

(assert (=> b!1034080 (= e!584581 (contains!6036 lt!456295 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456165 lt!456100)) (_2!7927 (tuple2!15835 lt!456165 lt!456100)))))))

(assert (= (and d!123991 res!690870) b!1034079))

(assert (= (and b!1034079 res!690871) b!1034080))

(assert (=> d!123991 m!953771))

(declare-fun m!954253 () Bool)

(assert (=> d!123991 m!954253))

(declare-fun m!954255 () Bool)

(assert (=> d!123991 m!954255))

(declare-fun m!954257 () Bool)

(assert (=> b!1034079 m!954257))

(declare-fun m!954259 () Bool)

(assert (=> b!1034080 m!954259))

(assert (=> d!123839 d!123991))

(declare-fun bm!43708 () Bool)

(declare-fun call!43712 () List!22022)

(declare-fun call!43711 () List!22022)

(assert (=> bm!43708 (= call!43712 call!43711)))

(declare-fun b!1034081 () Bool)

(declare-fun e!584584 () List!22022)

(declare-fun call!43713 () List!22022)

(assert (=> b!1034081 (= e!584584 call!43713)))

(declare-fun b!1034082 () Bool)

(declare-fun e!584583 () List!22022)

(declare-fun e!584586 () List!22022)

(assert (=> b!1034082 (= e!584583 e!584586)))

(declare-fun c!104459 () Bool)

(assert (=> b!1034082 (= c!104459 (and ((_ is Cons!22018) (toList!6951 lt!456157)) (= (_1!7927 (h!23220 (toList!6951 lt!456157))) (_1!7927 (tuple2!15835 lt!456165 lt!456100)))))))

(declare-fun b!1034083 () Bool)

(declare-fun res!690872 () Bool)

(declare-fun e!584582 () Bool)

(assert (=> b!1034083 (=> (not res!690872) (not e!584582))))

(declare-fun lt!456462 () List!22022)

(assert (=> b!1034083 (= res!690872 (containsKey!564 lt!456462 (_1!7927 (tuple2!15835 lt!456165 lt!456100))))))

(declare-fun b!1034084 () Bool)

(assert (=> b!1034084 (= e!584583 call!43711)))

(declare-fun c!104457 () Bool)

(declare-fun e!584585 () List!22022)

(declare-fun b!1034085 () Bool)

(assert (=> b!1034085 (= e!584585 (ite c!104459 (t!31227 (toList!6951 lt!456157)) (ite c!104457 (Cons!22018 (h!23220 (toList!6951 lt!456157)) (t!31227 (toList!6951 lt!456157))) Nil!22019)))))

(declare-fun bm!43709 () Bool)

(declare-fun c!104460 () Bool)

(assert (=> bm!43709 (= call!43711 ($colon$colon!605 e!584585 (ite c!104460 (h!23220 (toList!6951 lt!456157)) (tuple2!15835 (_1!7927 (tuple2!15835 lt!456165 lt!456100)) (_2!7927 (tuple2!15835 lt!456165 lt!456100))))))))

(declare-fun c!104458 () Bool)

(assert (=> bm!43709 (= c!104458 c!104460)))

(declare-fun d!123993 () Bool)

(assert (=> d!123993 e!584582))

(declare-fun res!690873 () Bool)

(assert (=> d!123993 (=> (not res!690873) (not e!584582))))

(assert (=> d!123993 (= res!690873 (isStrictlySorted!714 lt!456462))))

(assert (=> d!123993 (= lt!456462 e!584583)))

(assert (=> d!123993 (= c!104460 (and ((_ is Cons!22018) (toList!6951 lt!456157)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456157))) (_1!7927 (tuple2!15835 lt!456165 lt!456100)))))))

(assert (=> d!123993 (isStrictlySorted!714 (toList!6951 lt!456157))))

(assert (=> d!123993 (= (insertStrictlySorted!372 (toList!6951 lt!456157) (_1!7927 (tuple2!15835 lt!456165 lt!456100)) (_2!7927 (tuple2!15835 lt!456165 lt!456100))) lt!456462)))

(declare-fun bm!43710 () Bool)

(assert (=> bm!43710 (= call!43713 call!43712)))

(declare-fun b!1034086 () Bool)

(assert (=> b!1034086 (= c!104457 (and ((_ is Cons!22018) (toList!6951 lt!456157)) (bvsgt (_1!7927 (h!23220 (toList!6951 lt!456157))) (_1!7927 (tuple2!15835 lt!456165 lt!456100)))))))

(assert (=> b!1034086 (= e!584586 e!584584)))

(declare-fun b!1034087 () Bool)

(assert (=> b!1034087 (= e!584584 call!43713)))

(declare-fun b!1034088 () Bool)

(assert (=> b!1034088 (= e!584582 (contains!6036 lt!456462 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456165 lt!456100)) (_2!7927 (tuple2!15835 lt!456165 lt!456100)))))))

(declare-fun b!1034089 () Bool)

(assert (=> b!1034089 (= e!584585 (insertStrictlySorted!372 (t!31227 (toList!6951 lt!456157)) (_1!7927 (tuple2!15835 lt!456165 lt!456100)) (_2!7927 (tuple2!15835 lt!456165 lt!456100))))))

(declare-fun b!1034090 () Bool)

(assert (=> b!1034090 (= e!584586 call!43712)))

(assert (= (and d!123993 c!104460) b!1034084))

(assert (= (and d!123993 (not c!104460)) b!1034082))

(assert (= (and b!1034082 c!104459) b!1034090))

(assert (= (and b!1034082 (not c!104459)) b!1034086))

(assert (= (and b!1034086 c!104457) b!1034081))

(assert (= (and b!1034086 (not c!104457)) b!1034087))

(assert (= (or b!1034081 b!1034087) bm!43710))

(assert (= (or b!1034090 bm!43710) bm!43708))

(assert (= (or b!1034084 bm!43708) bm!43709))

(assert (= (and bm!43709 c!104458) b!1034089))

(assert (= (and bm!43709 (not c!104458)) b!1034085))

(assert (= (and d!123993 res!690873) b!1034083))

(assert (= (and b!1034083 res!690872) b!1034088))

(declare-fun m!954261 () Bool)

(assert (=> b!1034083 m!954261))

(declare-fun m!954263 () Bool)

(assert (=> d!123993 m!954263))

(declare-fun m!954265 () Bool)

(assert (=> d!123993 m!954265))

(declare-fun m!954267 () Bool)

(assert (=> b!1034089 m!954267))

(declare-fun m!954269 () Bool)

(assert (=> bm!43709 m!954269))

(declare-fun m!954271 () Bool)

(assert (=> b!1034088 m!954271))

(assert (=> d!123839 d!123993))

(declare-fun d!123995 () Bool)

(assert (=> d!123995 (= (apply!941 lt!456224 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (get!16445 (getValueByKey!591 (toList!6951 lt!456224) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30235 () Bool)

(assert (= bs!30235 d!123995))

(assert (=> bs!30235 m!953435))

(declare-fun m!954273 () Bool)

(assert (=> bs!30235 m!954273))

(assert (=> bs!30235 m!954273))

(declare-fun m!954275 () Bool)

(assert (=> bs!30235 m!954275))

(assert (=> b!1033704 d!123995))

(assert (=> b!1033704 d!123883))

(declare-fun d!123997 () Bool)

(assert (=> d!123997 (= (validMask!0 (mask!30079 lt!456102)) (and (or (= (mask!30079 lt!456102) #b00000000000000000000000000000111) (= (mask!30079 lt!456102) #b00000000000000000000000000001111) (= (mask!30079 lt!456102) #b00000000000000000000000000011111) (= (mask!30079 lt!456102) #b00000000000000000000000000111111) (= (mask!30079 lt!456102) #b00000000000000000000000001111111) (= (mask!30079 lt!456102) #b00000000000000000000000011111111) (= (mask!30079 lt!456102) #b00000000000000000000000111111111) (= (mask!30079 lt!456102) #b00000000000000000000001111111111) (= (mask!30079 lt!456102) #b00000000000000000000011111111111) (= (mask!30079 lt!456102) #b00000000000000000000111111111111) (= (mask!30079 lt!456102) #b00000000000000000001111111111111) (= (mask!30079 lt!456102) #b00000000000000000011111111111111) (= (mask!30079 lt!456102) #b00000000000000000111111111111111) (= (mask!30079 lt!456102) #b00000000000000001111111111111111) (= (mask!30079 lt!456102) #b00000000000000011111111111111111) (= (mask!30079 lt!456102) #b00000000000000111111111111111111) (= (mask!30079 lt!456102) #b00000000000001111111111111111111) (= (mask!30079 lt!456102) #b00000000000011111111111111111111) (= (mask!30079 lt!456102) #b00000000000111111111111111111111) (= (mask!30079 lt!456102) #b00000000001111111111111111111111) (= (mask!30079 lt!456102) #b00000000011111111111111111111111) (= (mask!30079 lt!456102) #b00000000111111111111111111111111) (= (mask!30079 lt!456102) #b00000001111111111111111111111111) (= (mask!30079 lt!456102) #b00000011111111111111111111111111) (= (mask!30079 lt!456102) #b00000111111111111111111111111111) (= (mask!30079 lt!456102) #b00001111111111111111111111111111) (= (mask!30079 lt!456102) #b00011111111111111111111111111111) (= (mask!30079 lt!456102) #b00111111111111111111111111111111)) (bvsle (mask!30079 lt!456102) #b00111111111111111111111111111111)))))

(assert (=> d!123899 d!123997))

(declare-fun d!123999 () Bool)

(assert (=> d!123999 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456206) key!909))))

(declare-fun lt!456463 () Unit!33810)

(assert (=> d!123999 (= lt!456463 (choose!1705 (toList!6951 lt!456206) key!909))))

(declare-fun e!584587 () Bool)

(assert (=> d!123999 e!584587))

(declare-fun res!690874 () Bool)

(assert (=> d!123999 (=> (not res!690874) (not e!584587))))

(assert (=> d!123999 (= res!690874 (isStrictlySorted!714 (toList!6951 lt!456206)))))

(assert (=> d!123999 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456206) key!909) lt!456463)))

(declare-fun b!1034091 () Bool)

(assert (=> b!1034091 (= e!584587 (containsKey!564 (toList!6951 lt!456206) key!909))))

(assert (= (and d!123999 res!690874) b!1034091))

(assert (=> d!123999 m!953833))

(assert (=> d!123999 m!953833))

(assert (=> d!123999 m!953835))

(declare-fun m!954277 () Bool)

(assert (=> d!123999 m!954277))

(declare-fun m!954279 () Bool)

(assert (=> d!123999 m!954279))

(assert (=> b!1034091 m!953829))

(assert (=> b!1033769 d!123999))

(declare-fun d!124001 () Bool)

(assert (=> d!124001 (= (isDefined!436 (getValueByKey!591 (toList!6951 lt!456206) key!909)) (not (isEmpty!930 (getValueByKey!591 (toList!6951 lt!456206) key!909))))))

(declare-fun bs!30236 () Bool)

(assert (= bs!30236 d!124001))

(assert (=> bs!30236 m!953833))

(declare-fun m!954281 () Bool)

(assert (=> bs!30236 m!954281))

(assert (=> b!1033769 d!124001))

(declare-fun b!1034095 () Bool)

(declare-fun e!584589 () Option!642)

(assert (=> b!1034095 (= e!584589 None!640)))

(declare-fun b!1034093 () Bool)

(declare-fun e!584588 () Option!642)

(assert (=> b!1034093 (= e!584588 e!584589)))

(declare-fun c!104462 () Bool)

(assert (=> b!1034093 (= c!104462 (and ((_ is Cons!22018) (toList!6951 lt!456206)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456206))) key!909))))))

(declare-fun b!1034092 () Bool)

(assert (=> b!1034092 (= e!584588 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456206)))))))

(declare-fun b!1034094 () Bool)

(assert (=> b!1034094 (= e!584589 (getValueByKey!591 (t!31227 (toList!6951 lt!456206)) key!909))))

(declare-fun d!124003 () Bool)

(declare-fun c!104461 () Bool)

(assert (=> d!124003 (= c!104461 (and ((_ is Cons!22018) (toList!6951 lt!456206)) (= (_1!7927 (h!23220 (toList!6951 lt!456206))) key!909)))))

(assert (=> d!124003 (= (getValueByKey!591 (toList!6951 lt!456206) key!909) e!584588)))

(assert (= (and d!124003 c!104461) b!1034092))

(assert (= (and d!124003 (not c!104461)) b!1034093))

(assert (= (and b!1034093 c!104462) b!1034094))

(assert (= (and b!1034093 (not c!104462)) b!1034095))

(declare-fun m!954283 () Bool)

(assert (=> b!1034094 m!954283))

(assert (=> b!1033769 d!124003))

(declare-fun d!124005 () Bool)

(assert (=> d!124005 (= (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168)) (not (isEmpty!930 (getValueByKey!591 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168))))))

(declare-fun bs!30237 () Bool)

(assert (= bs!30237 d!124005))

(assert (=> bs!30237 m!953725))

(declare-fun m!954285 () Bool)

(assert (=> bs!30237 m!954285))

(assert (=> b!1033755 d!124005))

(declare-fun b!1034099 () Bool)

(declare-fun e!584591 () Option!642)

(assert (=> b!1034099 (= e!584591 None!640)))

(declare-fun b!1034097 () Bool)

(declare-fun e!584590 () Option!642)

(assert (=> b!1034097 (= e!584590 e!584591)))

(declare-fun c!104464 () Bool)

(assert (=> b!1034097 (= c!104464 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)))) (not (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))))) lt!456168))))))

(declare-fun b!1034096 () Bool)

(assert (=> b!1034096 (= e!584590 (Some!641 (_2!7927 (h!23220 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)))))))))

(declare-fun b!1034098 () Bool)

(assert (=> b!1034098 (= e!584591 (getValueByKey!591 (t!31227 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)))) lt!456168))))

(declare-fun d!124007 () Bool)

(declare-fun c!104463 () Bool)

(assert (=> d!124007 (= c!104463 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))))) lt!456168)))))

(assert (=> d!124007 (= (getValueByKey!591 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168) e!584590)))

(assert (= (and d!124007 c!104463) b!1034096))

(assert (= (and d!124007 (not c!104463)) b!1034097))

(assert (= (and b!1034097 c!104464) b!1034098))

(assert (= (and b!1034097 (not c!104464)) b!1034099))

(declare-fun m!954287 () Bool)

(assert (=> b!1034098 m!954287))

(assert (=> b!1033755 d!124007))

(declare-fun d!124009 () Bool)

(assert (=> d!124009 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456204) lt!456197)) (v!14890 (getValueByKey!591 (toList!6951 lt!456204) lt!456197)))))

(assert (=> d!123789 d!124009))

(declare-fun b!1034103 () Bool)

(declare-fun e!584593 () Option!642)

(assert (=> b!1034103 (= e!584593 None!640)))

(declare-fun b!1034101 () Bool)

(declare-fun e!584592 () Option!642)

(assert (=> b!1034101 (= e!584592 e!584593)))

(declare-fun c!104466 () Bool)

(assert (=> b!1034101 (= c!104466 (and ((_ is Cons!22018) (toList!6951 lt!456204)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456204))) lt!456197))))))

(declare-fun b!1034100 () Bool)

(assert (=> b!1034100 (= e!584592 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456204)))))))

(declare-fun b!1034102 () Bool)

(assert (=> b!1034102 (= e!584593 (getValueByKey!591 (t!31227 (toList!6951 lt!456204)) lt!456197))))

(declare-fun d!124011 () Bool)

(declare-fun c!104465 () Bool)

(assert (=> d!124011 (= c!104465 (and ((_ is Cons!22018) (toList!6951 lt!456204)) (= (_1!7927 (h!23220 (toList!6951 lt!456204))) lt!456197)))))

(assert (=> d!124011 (= (getValueByKey!591 (toList!6951 lt!456204) lt!456197) e!584592)))

(assert (= (and d!124011 c!104465) b!1034100))

(assert (= (and d!124011 (not c!104465)) b!1034101))

(assert (= (and b!1034101 c!104466) b!1034102))

(assert (= (and b!1034101 (not c!104466)) b!1034103))

(declare-fun m!954289 () Bool)

(assert (=> b!1034102 m!954289))

(assert (=> d!123789 d!124011))

(declare-fun b!1034107 () Bool)

(declare-fun e!584595 () Option!642)

(assert (=> b!1034107 (= e!584595 None!640)))

(declare-fun b!1034105 () Bool)

(declare-fun e!584594 () Option!642)

(assert (=> b!1034105 (= e!584594 e!584595)))

(declare-fun c!104468 () Bool)

(assert (=> b!1034105 (= c!104468 (and ((_ is Cons!22018) (toList!6951 lt!456302)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456302))) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034104 () Bool)

(assert (=> b!1034104 (= e!584594 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456302)))))))

(declare-fun b!1034106 () Bool)

(assert (=> b!1034106 (= e!584595 (getValueByKey!591 (t!31227 (toList!6951 lt!456302)) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(declare-fun d!124013 () Bool)

(declare-fun c!104467 () Bool)

(assert (=> d!124013 (= c!104467 (and ((_ is Cons!22018) (toList!6951 lt!456302)) (= (_1!7927 (h!23220 (toList!6951 lt!456302))) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))

(assert (=> d!124013 (= (getValueByKey!591 (toList!6951 lt!456302) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) e!584594)))

(assert (= (and d!124013 c!104467) b!1034104))

(assert (= (and d!124013 (not c!104467)) b!1034105))

(assert (= (and b!1034105 c!104468) b!1034106))

(assert (= (and b!1034105 (not c!104468)) b!1034107))

(declare-fun m!954291 () Bool)

(assert (=> b!1034106 m!954291))

(assert (=> b!1033763 d!124013))

(assert (=> b!1033713 d!123819))

(declare-fun d!124015 () Bool)

(assert (=> d!124015 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456164) lt!456174)) (v!14890 (getValueByKey!591 (toList!6951 lt!456164) lt!456174)))))

(assert (=> d!123829 d!124015))

(declare-fun b!1034111 () Bool)

(declare-fun e!584597 () Option!642)

(assert (=> b!1034111 (= e!584597 None!640)))

(declare-fun b!1034109 () Bool)

(declare-fun e!584596 () Option!642)

(assert (=> b!1034109 (= e!584596 e!584597)))

(declare-fun c!104470 () Bool)

(assert (=> b!1034109 (= c!104470 (and ((_ is Cons!22018) (toList!6951 lt!456164)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456164))) lt!456174))))))

(declare-fun b!1034108 () Bool)

(assert (=> b!1034108 (= e!584596 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456164)))))))

(declare-fun b!1034110 () Bool)

(assert (=> b!1034110 (= e!584597 (getValueByKey!591 (t!31227 (toList!6951 lt!456164)) lt!456174))))

(declare-fun d!124017 () Bool)

(declare-fun c!104469 () Bool)

(assert (=> d!124017 (= c!104469 (and ((_ is Cons!22018) (toList!6951 lt!456164)) (= (_1!7927 (h!23220 (toList!6951 lt!456164))) lt!456174)))))

(assert (=> d!124017 (= (getValueByKey!591 (toList!6951 lt!456164) lt!456174) e!584596)))

(assert (= (and d!124017 c!104469) b!1034108))

(assert (= (and d!124017 (not c!104469)) b!1034109))

(assert (= (and b!1034109 c!104470) b!1034110))

(assert (= (and b!1034109 (not c!104470)) b!1034111))

(declare-fun m!954293 () Bool)

(assert (=> b!1034110 m!954293))

(assert (=> d!123829 d!124017))

(declare-fun d!124019 () Bool)

(declare-fun e!584598 () Bool)

(assert (=> d!124019 e!584598))

(declare-fun res!690876 () Bool)

(assert (=> d!124019 (=> (not res!690876) (not e!584598))))

(declare-fun lt!456465 () ListLongMap!13871)

(assert (=> d!124019 (= res!690876 (contains!6035 lt!456465 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))))))

(declare-fun lt!456464 () List!22022)

(assert (=> d!124019 (= lt!456465 (ListLongMap!13872 lt!456464))))

(declare-fun lt!456467 () Unit!33810)

(declare-fun lt!456466 () Unit!33810)

(assert (=> d!124019 (= lt!456467 lt!456466)))

(assert (=> d!124019 (= (getValueByKey!591 lt!456464 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))))))

(assert (=> d!124019 (= lt!456466 (lemmaContainsTupThenGetReturnValue!280 lt!456464 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))))))

(assert (=> d!124019 (= lt!456464 (insertStrictlySorted!372 (toList!6951 call!43694) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))))))

(assert (=> d!124019 (= (+!3064 call!43694 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))) lt!456465)))

(declare-fun b!1034112 () Bool)

(declare-fun res!690875 () Bool)

(assert (=> b!1034112 (=> (not res!690875) (not e!584598))))

(assert (=> b!1034112 (= res!690875 (= (getValueByKey!591 (toList!6951 lt!456465) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))))))))

(declare-fun b!1034113 () Bool)

(assert (=> b!1034113 (= e!584598 (contains!6036 (toList!6951 lt!456465) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 lt!456102))))))

(assert (= (and d!124019 res!690876) b!1034112))

(assert (= (and b!1034112 res!690875) b!1034113))

(declare-fun m!954295 () Bool)

(assert (=> d!124019 m!954295))

(declare-fun m!954297 () Bool)

(assert (=> d!124019 m!954297))

(declare-fun m!954299 () Bool)

(assert (=> d!124019 m!954299))

(declare-fun m!954301 () Bool)

(assert (=> d!124019 m!954301))

(declare-fun m!954303 () Bool)

(assert (=> b!1034112 m!954303))

(declare-fun m!954305 () Bool)

(assert (=> b!1034113 m!954305))

(assert (=> b!1033888 d!124019))

(declare-fun d!124021 () Bool)

(declare-fun e!584599 () Bool)

(assert (=> d!124021 e!584599))

(declare-fun res!690877 () Bool)

(assert (=> d!124021 (=> res!690877 e!584599)))

(declare-fun lt!456468 () Bool)

(assert (=> d!124021 (= res!690877 (not lt!456468))))

(declare-fun lt!456469 () Bool)

(assert (=> d!124021 (= lt!456468 lt!456469)))

(declare-fun lt!456470 () Unit!33810)

(declare-fun e!584600 () Unit!33810)

(assert (=> d!124021 (= lt!456470 e!584600)))

(declare-fun c!104471 () Bool)

(assert (=> d!124021 (= c!104471 lt!456469)))

(assert (=> d!124021 (= lt!456469 (containsKey!564 (toList!6951 lt!456362) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(assert (=> d!124021 (= (contains!6035 lt!456362 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)) lt!456468)))

(declare-fun b!1034114 () Bool)

(declare-fun lt!456471 () Unit!33810)

(assert (=> b!1034114 (= e!584600 lt!456471)))

(assert (=> b!1034114 (= lt!456471 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456362) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(assert (=> b!1034114 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456362) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun b!1034115 () Bool)

(declare-fun Unit!33832 () Unit!33810)

(assert (=> b!1034115 (= e!584600 Unit!33832)))

(declare-fun b!1034116 () Bool)

(assert (=> b!1034116 (= e!584599 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456362) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000))))))

(assert (= (and d!124021 c!104471) b!1034114))

(assert (= (and d!124021 (not c!104471)) b!1034115))

(assert (= (and d!124021 (not res!690877)) b!1034116))

(assert (=> d!124021 m!953851))

(declare-fun m!954307 () Bool)

(assert (=> d!124021 m!954307))

(assert (=> b!1034114 m!953851))

(declare-fun m!954309 () Bool)

(assert (=> b!1034114 m!954309))

(assert (=> b!1034114 m!953851))

(declare-fun m!954311 () Bool)

(assert (=> b!1034114 m!954311))

(assert (=> b!1034114 m!954311))

(declare-fun m!954313 () Bool)

(assert (=> b!1034114 m!954313))

(assert (=> b!1034116 m!953851))

(assert (=> b!1034116 m!954311))

(assert (=> b!1034116 m!954311))

(assert (=> b!1034116 m!954313))

(assert (=> b!1033874 d!124021))

(declare-fun b!1034120 () Bool)

(declare-fun e!584602 () Option!642)

(assert (=> b!1034120 (= e!584602 None!640)))

(declare-fun b!1034118 () Bool)

(declare-fun e!584601 () Option!642)

(assert (=> b!1034118 (= e!584601 e!584602)))

(declare-fun c!104473 () Bool)

(assert (=> b!1034118 (= c!104473 (and ((_ is Cons!22018) (toList!6951 lt!456255)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456255))) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034117 () Bool)

(assert (=> b!1034117 (= e!584601 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456255)))))))

(declare-fun b!1034119 () Bool)

(assert (=> b!1034119 (= e!584602 (getValueByKey!591 (t!31227 (toList!6951 lt!456255)) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(declare-fun d!124023 () Bool)

(declare-fun c!104472 () Bool)

(assert (=> d!124023 (= c!104472 (and ((_ is Cons!22018) (toList!6951 lt!456255)) (= (_1!7927 (h!23220 (toList!6951 lt!456255))) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))

(assert (=> d!124023 (= (getValueByKey!591 (toList!6951 lt!456255) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) e!584601)))

(assert (= (and d!124023 c!104472) b!1034117))

(assert (= (and d!124023 (not c!104472)) b!1034118))

(assert (= (and b!1034118 c!104473) b!1034119))

(assert (= (and b!1034118 (not c!104473)) b!1034120))

(declare-fun m!954315 () Bool)

(assert (=> b!1034119 m!954315))

(assert (=> b!1033735 d!124023))

(declare-fun d!124025 () Bool)

(declare-fun isEmpty!931 (List!22022) Bool)

(assert (=> d!124025 (= (isEmpty!929 lt!456224) (isEmpty!931 (toList!6951 lt!456224)))))

(declare-fun bs!30238 () Bool)

(assert (= bs!30238 d!124025))

(declare-fun m!954317 () Bool)

(assert (=> bs!30238 m!954317))

(assert (=> b!1033700 d!124025))

(assert (=> d!123795 d!123797))

(assert (=> d!123795 d!123803))

(assert (=> d!123795 d!123807))

(declare-fun d!124027 () Bool)

(assert (=> d!124027 (= (apply!941 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) lt!456184) (apply!941 lt!456203 lt!456184))))

(assert (=> d!124027 true))

(declare-fun _$34!1162 () Unit!33810)

(assert (=> d!124027 (= (choose!1703 lt!456203 lt!456200 (minValue!6063 thiss!1427) lt!456184) _$34!1162)))

(declare-fun bs!30239 () Bool)

(assert (= bs!30239 d!124027))

(assert (=> bs!30239 m!953527))

(assert (=> bs!30239 m!953527))

(assert (=> bs!30239 m!953539))

(assert (=> bs!30239 m!953519))

(assert (=> d!123795 d!124027))

(declare-fun d!124029 () Bool)

(declare-fun e!584603 () Bool)

(assert (=> d!124029 e!584603))

(declare-fun res!690878 () Bool)

(assert (=> d!124029 (=> res!690878 e!584603)))

(declare-fun lt!456472 () Bool)

(assert (=> d!124029 (= res!690878 (not lt!456472))))

(declare-fun lt!456473 () Bool)

(assert (=> d!124029 (= lt!456472 lt!456473)))

(declare-fun lt!456474 () Unit!33810)

(declare-fun e!584604 () Unit!33810)

(assert (=> d!124029 (= lt!456474 e!584604)))

(declare-fun c!104474 () Bool)

(assert (=> d!124029 (= c!104474 lt!456473)))

(assert (=> d!124029 (= lt!456473 (containsKey!564 (toList!6951 lt!456203) lt!456184))))

(assert (=> d!124029 (= (contains!6035 lt!456203 lt!456184) lt!456472)))

(declare-fun b!1034121 () Bool)

(declare-fun lt!456475 () Unit!33810)

(assert (=> b!1034121 (= e!584604 lt!456475)))

(assert (=> b!1034121 (= lt!456475 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456203) lt!456184))))

(assert (=> b!1034121 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456203) lt!456184))))

(declare-fun b!1034122 () Bool)

(declare-fun Unit!33833 () Unit!33810)

(assert (=> b!1034122 (= e!584604 Unit!33833)))

(declare-fun b!1034123 () Bool)

(assert (=> b!1034123 (= e!584603 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456203) lt!456184)))))

(assert (= (and d!124029 c!104474) b!1034121))

(assert (= (and d!124029 (not c!104474)) b!1034122))

(assert (= (and d!124029 (not res!690878)) b!1034123))

(declare-fun m!954319 () Bool)

(assert (=> d!124029 m!954319))

(declare-fun m!954321 () Bool)

(assert (=> b!1034121 m!954321))

(assert (=> b!1034121 m!953637))

(assert (=> b!1034121 m!953637))

(declare-fun m!954323 () Bool)

(assert (=> b!1034121 m!954323))

(assert (=> b!1034123 m!953637))

(assert (=> b!1034123 m!953637))

(assert (=> b!1034123 m!954323))

(assert (=> d!123795 d!124029))

(declare-fun d!124031 () Bool)

(assert (=> d!124031 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14890 (getValueByKey!591 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123885 d!124031))

(declare-fun b!1034127 () Bool)

(declare-fun e!584606 () Option!642)

(assert (=> b!1034127 (= e!584606 None!640)))

(declare-fun b!1034125 () Bool)

(declare-fun e!584605 () Option!642)

(assert (=> b!1034125 (= e!584605 e!584606)))

(declare-fun c!104476 () Bool)

(assert (=> b!1034125 (= c!104476 (and ((_ is Cons!22018) (toList!6951 lt!456160)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456160))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034124 () Bool)

(assert (=> b!1034124 (= e!584605 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456160)))))))

(declare-fun b!1034126 () Bool)

(assert (=> b!1034126 (= e!584606 (getValueByKey!591 (t!31227 (toList!6951 lt!456160)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!124033 () Bool)

(declare-fun c!104475 () Bool)

(assert (=> d!124033 (= c!104475 (and ((_ is Cons!22018) (toList!6951 lt!456160)) (= (_1!7927 (h!23220 (toList!6951 lt!456160))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124033 (= (getValueByKey!591 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000) e!584605)))

(assert (= (and d!124033 c!104475) b!1034124))

(assert (= (and d!124033 (not c!104475)) b!1034125))

(assert (= (and b!1034125 c!104476) b!1034126))

(assert (= (and b!1034125 (not c!104476)) b!1034127))

(declare-fun m!954325 () Bool)

(assert (=> b!1034126 m!954325))

(assert (=> d!123885 d!124033))

(declare-fun d!124035 () Bool)

(declare-fun lt!456478 () Bool)

(declare-fun content!517 (List!22023) (InoxSet (_ BitVec 64)))

(assert (=> d!124035 (= lt!456478 (select (content!517 Nil!22020) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun e!584612 () Bool)

(assert (=> d!124035 (= lt!456478 e!584612)))

(declare-fun res!690884 () Bool)

(assert (=> d!124035 (=> (not res!690884) (not e!584612))))

(assert (=> d!124035 (= res!690884 ((_ is Cons!22019) Nil!22020))))

(assert (=> d!124035 (= (contains!6037 Nil!22020 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)) lt!456478)))

(declare-fun b!1034132 () Bool)

(declare-fun e!584611 () Bool)

(assert (=> b!1034132 (= e!584612 e!584611)))

(declare-fun res!690883 () Bool)

(assert (=> b!1034132 (=> res!690883 e!584611)))

(assert (=> b!1034132 (= res!690883 (= (h!23221 Nil!22020) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun b!1034133 () Bool)

(assert (=> b!1034133 (= e!584611 (contains!6037 (t!31230 Nil!22020) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(assert (= (and d!124035 res!690884) b!1034132))

(assert (= (and b!1034132 (not res!690883)) b!1034133))

(declare-fun m!954327 () Bool)

(assert (=> d!124035 m!954327))

(assert (=> d!124035 m!953851))

(declare-fun m!954329 () Bool)

(assert (=> d!124035 m!954329))

(assert (=> b!1034133 m!953851))

(declare-fun m!954331 () Bool)

(assert (=> b!1034133 m!954331))

(assert (=> b!1033799 d!124035))

(declare-fun d!124037 () Bool)

(assert (=> d!124037 (= (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))) (not (isEmpty!930 (getValueByKey!591 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))))

(declare-fun bs!30240 () Bool)

(assert (= bs!30240 d!124037))

(assert (=> bs!30240 m!953921))

(declare-fun m!954333 () Bool)

(assert (=> bs!30240 m!954333))

(assert (=> b!1033872 d!124037))

(declare-fun b!1034137 () Bool)

(declare-fun e!584614 () Option!642)

(assert (=> b!1034137 (= e!584614 None!640)))

(declare-fun b!1034135 () Bool)

(declare-fun e!584613 () Option!642)

(assert (=> b!1034135 (= e!584613 e!584614)))

(declare-fun c!104478 () Bool)

(assert (=> b!1034135 (= c!104478 (and ((_ is Cons!22018) (toList!6951 lt!456160)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456160))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))))

(declare-fun b!1034134 () Bool)

(assert (=> b!1034134 (= e!584613 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456160)))))))

(declare-fun b!1034136 () Bool)

(assert (=> b!1034136 (= e!584614 (getValueByKey!591 (t!31227 (toList!6951 lt!456160)) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!124039 () Bool)

(declare-fun c!104477 () Bool)

(assert (=> d!124039 (= c!104477 (and ((_ is Cons!22018) (toList!6951 lt!456160)) (= (_1!7927 (h!23220 (toList!6951 lt!456160))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!124039 (= (getValueByKey!591 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) e!584613)))

(assert (= (and d!124039 c!104477) b!1034134))

(assert (= (and d!124039 (not c!104477)) b!1034135))

(assert (= (and b!1034135 c!104478) b!1034136))

(assert (= (and b!1034135 (not c!104478)) b!1034137))

(assert (=> b!1034136 m!953435))

(declare-fun m!954335 () Bool)

(assert (=> b!1034136 m!954335))

(assert (=> b!1033872 d!124039))

(declare-fun d!124041 () Bool)

(declare-fun lt!456479 () Bool)

(assert (=> d!124041 (= lt!456479 (select (content!516 (toList!6951 lt!456351)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(declare-fun e!584616 () Bool)

(assert (=> d!124041 (= lt!456479 e!584616)))

(declare-fun res!690885 () Bool)

(assert (=> d!124041 (=> (not res!690885) (not e!584616))))

(assert (=> d!124041 (= res!690885 ((_ is Cons!22018) (toList!6951 lt!456351)))))

(assert (=> d!124041 (= (contains!6036 (toList!6951 lt!456351) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) lt!456479)))

(declare-fun b!1034138 () Bool)

(declare-fun e!584615 () Bool)

(assert (=> b!1034138 (= e!584616 e!584615)))

(declare-fun res!690886 () Bool)

(assert (=> b!1034138 (=> res!690886 e!584615)))

(assert (=> b!1034138 (= res!690886 (= (h!23220 (toList!6951 lt!456351)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(declare-fun b!1034139 () Bool)

(assert (=> b!1034139 (= e!584615 (contains!6036 (t!31227 (toList!6951 lt!456351)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))

(assert (= (and d!124041 res!690885) b!1034138))

(assert (= (and b!1034138 (not res!690886)) b!1034139))

(declare-fun m!954337 () Bool)

(assert (=> d!124041 m!954337))

(declare-fun m!954339 () Bool)

(assert (=> d!124041 m!954339))

(declare-fun m!954341 () Bool)

(assert (=> b!1034139 m!954341))

(assert (=> b!1033869 d!124041))

(declare-fun d!124043 () Bool)

(assert (=> d!124043 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!456480 () Unit!33810)

(assert (=> d!124043 (= lt!456480 (choose!1705 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!584617 () Bool)

(assert (=> d!124043 e!584617))

(declare-fun res!690887 () Bool)

(assert (=> d!124043 (=> (not res!690887) (not e!584617))))

(assert (=> d!124043 (= res!690887 (isStrictlySorted!714 (toList!6951 lt!456188)))))

(assert (=> d!124043 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000) lt!456480)))

(declare-fun b!1034140 () Bool)

(assert (=> b!1034140 (= e!584617 (containsKey!564 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124043 res!690887) b!1034140))

(assert (=> d!124043 m!953847))

(assert (=> d!124043 m!953847))

(assert (=> d!124043 m!954009))

(declare-fun m!954343 () Bool)

(assert (=> d!124043 m!954343))

(assert (=> d!124043 m!954083))

(assert (=> b!1034140 m!954005))

(assert (=> b!1033894 d!124043))

(declare-fun d!124045 () Bool)

(assert (=> d!124045 (= (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!930 (getValueByKey!591 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30241 () Bool)

(assert (= bs!30241 d!124045))

(assert (=> bs!30241 m!953847))

(declare-fun m!954345 () Bool)

(assert (=> bs!30241 m!954345))

(assert (=> b!1033894 d!124045))

(declare-fun b!1034144 () Bool)

(declare-fun e!584619 () Option!642)

(assert (=> b!1034144 (= e!584619 None!640)))

(declare-fun b!1034142 () Bool)

(declare-fun e!584618 () Option!642)

(assert (=> b!1034142 (= e!584618 e!584619)))

(declare-fun c!104480 () Bool)

(assert (=> b!1034142 (= c!104480 (and ((_ is Cons!22018) (toList!6951 lt!456188)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456188))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034141 () Bool)

(assert (=> b!1034141 (= e!584618 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456188)))))))

(declare-fun b!1034143 () Bool)

(assert (=> b!1034143 (= e!584619 (getValueByKey!591 (t!31227 (toList!6951 lt!456188)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!124047 () Bool)

(declare-fun c!104479 () Bool)

(assert (=> d!124047 (= c!104479 (and ((_ is Cons!22018) (toList!6951 lt!456188)) (= (_1!7927 (h!23220 (toList!6951 lt!456188))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124047 (= (getValueByKey!591 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000) e!584618)))

(assert (= (and d!124047 c!104479) b!1034141))

(assert (= (and d!124047 (not c!104479)) b!1034142))

(assert (= (and b!1034142 c!104480) b!1034143))

(assert (= (and b!1034142 (not c!104480)) b!1034144))

(declare-fun m!954347 () Bool)

(assert (=> b!1034143 m!954347))

(assert (=> b!1033894 d!124047))

(declare-fun d!124049 () Bool)

(declare-fun e!584620 () Bool)

(assert (=> d!124049 e!584620))

(declare-fun res!690888 () Bool)

(assert (=> d!124049 (=> res!690888 e!584620)))

(declare-fun lt!456481 () Bool)

(assert (=> d!124049 (= res!690888 (not lt!456481))))

(declare-fun lt!456482 () Bool)

(assert (=> d!124049 (= lt!456481 lt!456482)))

(declare-fun lt!456483 () Unit!33810)

(declare-fun e!584621 () Unit!33810)

(assert (=> d!124049 (= lt!456483 e!584621)))

(declare-fun c!104481 () Bool)

(assert (=> d!124049 (= c!104481 lt!456482)))

(assert (=> d!124049 (= lt!456482 (containsKey!564 (toList!6951 lt!456302) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(assert (=> d!124049 (= (contains!6035 lt!456302 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) lt!456481)))

(declare-fun b!1034145 () Bool)

(declare-fun lt!456484 () Unit!33810)

(assert (=> b!1034145 (= e!584621 lt!456484)))

(assert (=> b!1034145 (= lt!456484 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456302) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(assert (=> b!1034145 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456302) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034146 () Bool)

(declare-fun Unit!33834 () Unit!33810)

(assert (=> b!1034146 (= e!584621 Unit!33834)))

(declare-fun b!1034147 () Bool)

(assert (=> b!1034147 (= e!584620 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456302) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124049 c!104481) b!1034145))

(assert (= (and d!124049 (not c!104481)) b!1034146))

(assert (= (and d!124049 (not res!690888)) b!1034147))

(declare-fun m!954349 () Bool)

(assert (=> d!124049 m!954349))

(declare-fun m!954351 () Bool)

(assert (=> b!1034145 m!954351))

(assert (=> b!1034145 m!953805))

(assert (=> b!1034145 m!953805))

(declare-fun m!954353 () Bool)

(assert (=> b!1034145 m!954353))

(assert (=> b!1034147 m!953805))

(assert (=> b!1034147 m!953805))

(assert (=> b!1034147 m!954353))

(assert (=> d!123849 d!124049))

(declare-fun b!1034151 () Bool)

(declare-fun e!584623 () Option!642)

(assert (=> b!1034151 (= e!584623 None!640)))

(declare-fun b!1034149 () Bool)

(declare-fun e!584622 () Option!642)

(assert (=> b!1034149 (= e!584622 e!584623)))

(declare-fun c!104483 () Bool)

(assert (=> b!1034149 (= c!104483 (and ((_ is Cons!22018) lt!456301) (not (= (_1!7927 (h!23220 lt!456301)) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034148 () Bool)

(assert (=> b!1034148 (= e!584622 (Some!641 (_2!7927 (h!23220 lt!456301))))))

(declare-fun b!1034150 () Bool)

(assert (=> b!1034150 (= e!584623 (getValueByKey!591 (t!31227 lt!456301) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(declare-fun c!104482 () Bool)

(declare-fun d!124051 () Bool)

(assert (=> d!124051 (= c!104482 (and ((_ is Cons!22018) lt!456301) (= (_1!7927 (h!23220 lt!456301)) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))

(assert (=> d!124051 (= (getValueByKey!591 lt!456301 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) e!584622)))

(assert (= (and d!124051 c!104482) b!1034148))

(assert (= (and d!124051 (not c!104482)) b!1034149))

(assert (= (and b!1034149 c!104483) b!1034150))

(assert (= (and b!1034149 (not c!104483)) b!1034151))

(declare-fun m!954355 () Bool)

(assert (=> b!1034150 m!954355))

(assert (=> d!123849 d!124051))

(declare-fun d!124053 () Bool)

(assert (=> d!124053 (= (getValueByKey!591 lt!456301 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456485 () Unit!33810)

(assert (=> d!124053 (= lt!456485 (choose!1706 lt!456301 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(declare-fun e!584624 () Bool)

(assert (=> d!124053 e!584624))

(declare-fun res!690889 () Bool)

(assert (=> d!124053 (=> (not res!690889) (not e!584624))))

(assert (=> d!124053 (= res!690889 (isStrictlySorted!714 lt!456301))))

(assert (=> d!124053 (= (lemmaContainsTupThenGetReturnValue!280 lt!456301 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) lt!456485)))

(declare-fun b!1034152 () Bool)

(declare-fun res!690890 () Bool)

(assert (=> b!1034152 (=> (not res!690890) (not e!584624))))

(assert (=> b!1034152 (= res!690890 (containsKey!564 lt!456301 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034153 () Bool)

(assert (=> b!1034153 (= e!584624 (contains!6036 lt!456301 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124053 res!690889) b!1034152))

(assert (= (and b!1034152 res!690890) b!1034153))

(assert (=> d!124053 m!953799))

(declare-fun m!954357 () Bool)

(assert (=> d!124053 m!954357))

(declare-fun m!954359 () Bool)

(assert (=> d!124053 m!954359))

(declare-fun m!954361 () Bool)

(assert (=> b!1034152 m!954361))

(declare-fun m!954363 () Bool)

(assert (=> b!1034153 m!954363))

(assert (=> d!123849 d!124053))

(declare-fun bm!43711 () Bool)

(declare-fun call!43715 () List!22022)

(declare-fun call!43714 () List!22022)

(assert (=> bm!43711 (= call!43715 call!43714)))

(declare-fun b!1034154 () Bool)

(declare-fun e!584627 () List!22022)

(declare-fun call!43716 () List!22022)

(assert (=> b!1034154 (= e!584627 call!43716)))

(declare-fun b!1034155 () Bool)

(declare-fun e!584626 () List!22022)

(declare-fun e!584629 () List!22022)

(assert (=> b!1034155 (= e!584626 e!584629)))

(declare-fun c!104486 () Bool)

(assert (=> b!1034155 (= c!104486 (and ((_ is Cons!22018) (toList!6951 lt!456164)) (= (_1!7927 (h!23220 (toList!6951 lt!456164))) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034156 () Bool)

(declare-fun res!690891 () Bool)

(declare-fun e!584625 () Bool)

(assert (=> b!1034156 (=> (not res!690891) (not e!584625))))

(declare-fun lt!456486 () List!22022)

(assert (=> b!1034156 (= res!690891 (containsKey!564 lt!456486 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034157 () Bool)

(assert (=> b!1034157 (= e!584626 call!43714)))

(declare-fun e!584628 () List!22022)

(declare-fun b!1034158 () Bool)

(declare-fun c!104484 () Bool)

(assert (=> b!1034158 (= e!584628 (ite c!104486 (t!31227 (toList!6951 lt!456164)) (ite c!104484 (Cons!22018 (h!23220 (toList!6951 lt!456164)) (t!31227 (toList!6951 lt!456164))) Nil!22019)))))

(declare-fun c!104487 () Bool)

(declare-fun bm!43712 () Bool)

(assert (=> bm!43712 (= call!43714 ($colon$colon!605 e!584628 (ite c!104487 (h!23220 (toList!6951 lt!456164)) (tuple2!15835 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))))

(declare-fun c!104485 () Bool)

(assert (=> bm!43712 (= c!104485 c!104487)))

(declare-fun d!124055 () Bool)

(assert (=> d!124055 e!584625))

(declare-fun res!690892 () Bool)

(assert (=> d!124055 (=> (not res!690892) (not e!584625))))

(assert (=> d!124055 (= res!690892 (isStrictlySorted!714 lt!456486))))

(assert (=> d!124055 (= lt!456486 e!584626)))

(assert (=> d!124055 (= c!104487 (and ((_ is Cons!22018) (toList!6951 lt!456164)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456164))) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))

(assert (=> d!124055 (isStrictlySorted!714 (toList!6951 lt!456164))))

(assert (=> d!124055 (= (insertStrictlySorted!372 (toList!6951 lt!456164) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) lt!456486)))

(declare-fun bm!43713 () Bool)

(assert (=> bm!43713 (= call!43716 call!43715)))

(declare-fun b!1034159 () Bool)

(assert (=> b!1034159 (= c!104484 (and ((_ is Cons!22018) (toList!6951 lt!456164)) (bvsgt (_1!7927 (h!23220 (toList!6951 lt!456164))) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))

(assert (=> b!1034159 (= e!584629 e!584627)))

(declare-fun b!1034160 () Bool)

(assert (=> b!1034160 (= e!584627 call!43716)))

(declare-fun b!1034161 () Bool)

(assert (=> b!1034161 (= e!584625 (contains!6036 lt!456486 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034162 () Bool)

(assert (=> b!1034162 (= e!584628 (insertStrictlySorted!372 (t!31227 (toList!6951 lt!456164)) (_1!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034163 () Bool)

(assert (=> b!1034163 (= e!584629 call!43715)))

(assert (= (and d!124055 c!104487) b!1034157))

(assert (= (and d!124055 (not c!104487)) b!1034155))

(assert (= (and b!1034155 c!104486) b!1034163))

(assert (= (and b!1034155 (not c!104486)) b!1034159))

(assert (= (and b!1034159 c!104484) b!1034154))

(assert (= (and b!1034159 (not c!104484)) b!1034160))

(assert (= (or b!1034154 b!1034160) bm!43713))

(assert (= (or b!1034163 bm!43713) bm!43711))

(assert (= (or b!1034157 bm!43711) bm!43712))

(assert (= (and bm!43712 c!104485) b!1034162))

(assert (= (and bm!43712 (not c!104485)) b!1034158))

(assert (= (and d!124055 res!690892) b!1034156))

(assert (= (and b!1034156 res!690891) b!1034161))

(declare-fun m!954365 () Bool)

(assert (=> b!1034156 m!954365))

(declare-fun m!954367 () Bool)

(assert (=> d!124055 m!954367))

(declare-fun m!954369 () Bool)

(assert (=> d!124055 m!954369))

(declare-fun m!954371 () Bool)

(assert (=> b!1034162 m!954371))

(declare-fun m!954373 () Bool)

(assert (=> bm!43712 m!954373))

(declare-fun m!954375 () Bool)

(assert (=> b!1034161 m!954375))

(assert (=> d!123849 d!124055))

(declare-fun d!124057 () Bool)

(declare-fun res!690893 () Bool)

(declare-fun e!584630 () Bool)

(assert (=> d!124057 (=> res!690893 e!584630)))

(assert (=> d!124057 (= res!690893 (and ((_ is Cons!22018) lt!456388) (= (_1!7927 (h!23220 lt!456388)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124057 (= (containsKey!564 lt!456388 #b0000000000000000000000000000000000000000000000000000000000000000) e!584630)))

(declare-fun b!1034164 () Bool)

(declare-fun e!584631 () Bool)

(assert (=> b!1034164 (= e!584630 e!584631)))

(declare-fun res!690894 () Bool)

(assert (=> b!1034164 (=> (not res!690894) (not e!584631))))

(assert (=> b!1034164 (= res!690894 (and (or (not ((_ is Cons!22018) lt!456388)) (bvsle (_1!7927 (h!23220 lt!456388)) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22018) lt!456388) (bvslt (_1!7927 (h!23220 lt!456388)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1034165 () Bool)

(assert (=> b!1034165 (= e!584631 (containsKey!564 (t!31227 lt!456388) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124057 (not res!690893)) b!1034164))

(assert (= (and b!1034164 res!690894) b!1034165))

(declare-fun m!954377 () Bool)

(assert (=> b!1034165 m!954377))

(assert (=> b!1033903 d!124057))

(declare-fun b!1034166 () Bool)

(declare-fun e!584633 () Bool)

(declare-fun e!584632 () Bool)

(assert (=> b!1034166 (= e!584633 e!584632)))

(declare-fun lt!456489 () (_ BitVec 64))

(assert (=> b!1034166 (= lt!456489 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!456488 () Unit!33810)

(assert (=> b!1034166 (= lt!456488 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11404 thiss!1427) lt!456489 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1034166 (arrayContainsKey!0 (_keys!11404 thiss!1427) lt!456489 #b00000000000000000000000000000000)))

(declare-fun lt!456487 () Unit!33810)

(assert (=> b!1034166 (= lt!456487 lt!456488)))

(declare-fun res!690896 () Bool)

(assert (=> b!1034166 (= res!690896 (= (seekEntryOrOpen!0 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!11404 thiss!1427) (mask!30079 thiss!1427)) (Found!9733 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1034166 (=> (not res!690896) (not e!584632))))

(declare-fun b!1034167 () Bool)

(declare-fun call!43717 () Bool)

(assert (=> b!1034167 (= e!584633 call!43717)))

(declare-fun bm!43714 () Bool)

(assert (=> bm!43714 (= call!43717 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!11404 thiss!1427) (mask!30079 thiss!1427)))))

(declare-fun b!1034168 () Bool)

(declare-fun e!584634 () Bool)

(assert (=> b!1034168 (= e!584634 e!584633)))

(declare-fun c!104488 () Bool)

(assert (=> b!1034168 (= c!104488 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!124059 () Bool)

(declare-fun res!690895 () Bool)

(assert (=> d!124059 (=> res!690895 e!584634)))

(assert (=> d!124059 (= res!690895 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!124059 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11404 thiss!1427) (mask!30079 thiss!1427)) e!584634)))

(declare-fun b!1034169 () Bool)

(assert (=> b!1034169 (= e!584632 call!43717)))

(assert (= (and d!124059 (not res!690895)) b!1034168))

(assert (= (and b!1034168 c!104488) b!1034166))

(assert (= (and b!1034168 (not c!104488)) b!1034167))

(assert (= (and b!1034166 res!690896) b!1034169))

(assert (= (or b!1034169 b!1034167) bm!43714))

(assert (=> b!1034166 m!954135))

(declare-fun m!954379 () Bool)

(assert (=> b!1034166 m!954379))

(declare-fun m!954381 () Bool)

(assert (=> b!1034166 m!954381))

(assert (=> b!1034166 m!954135))

(declare-fun m!954383 () Bool)

(assert (=> b!1034166 m!954383))

(declare-fun m!954385 () Bool)

(assert (=> bm!43714 m!954385))

(assert (=> b!1034168 m!954135))

(assert (=> b!1034168 m!954135))

(assert (=> b!1034168 m!954137))

(assert (=> bm!43686 d!124059))

(declare-fun lt!456490 () Bool)

(declare-fun d!124061 () Bool)

(assert (=> d!124061 (= lt!456490 (select (content!516 (toList!6951 lt!456268)) (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))

(declare-fun e!584636 () Bool)

(assert (=> d!124061 (= lt!456490 e!584636)))

(declare-fun res!690897 () Bool)

(assert (=> d!124061 (=> (not res!690897) (not e!584636))))

(assert (=> d!124061 (= res!690897 ((_ is Cons!22018) (toList!6951 lt!456268)))))

(assert (=> d!124061 (= (contains!6036 (toList!6951 lt!456268) (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) lt!456490)))

(declare-fun b!1034170 () Bool)

(declare-fun e!584635 () Bool)

(assert (=> b!1034170 (= e!584636 e!584635)))

(declare-fun res!690898 () Bool)

(assert (=> b!1034170 (=> res!690898 e!584635)))

(assert (=> b!1034170 (= res!690898 (= (h!23220 (toList!6951 lt!456268)) (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))

(declare-fun b!1034171 () Bool)

(assert (=> b!1034171 (= e!584635 (contains!6036 (t!31227 (toList!6951 lt!456268)) (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))

(assert (= (and d!124061 res!690897) b!1034170))

(assert (= (and b!1034170 (not res!690898)) b!1034171))

(declare-fun m!954387 () Bool)

(assert (=> d!124061 m!954387))

(declare-fun m!954389 () Bool)

(assert (=> d!124061 m!954389))

(declare-fun m!954391 () Bool)

(assert (=> b!1034171 m!954391))

(assert (=> b!1033743 d!124061))

(declare-fun d!124063 () Bool)

(assert (=> d!124063 (= (isDefined!436 (getValueByKey!591 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!930 (getValueByKey!591 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30242 () Bool)

(assert (= bs!30242 d!124063))

(assert (=> bs!30242 m!954015))

(declare-fun m!954393 () Bool)

(assert (=> bs!30242 m!954393))

(assert (=> b!1033899 d!124063))

(declare-fun b!1034175 () Bool)

(declare-fun e!584638 () Option!642)

(assert (=> b!1034175 (= e!584638 None!640)))

(declare-fun b!1034173 () Bool)

(declare-fun e!584637 () Option!642)

(assert (=> b!1034173 (= e!584637 e!584638)))

(declare-fun c!104490 () Bool)

(assert (=> b!1034173 (= c!104490 (and ((_ is Cons!22018) (toList!6951 lt!456183)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456183))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034172 () Bool)

(assert (=> b!1034172 (= e!584637 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456183)))))))

(declare-fun b!1034174 () Bool)

(assert (=> b!1034174 (= e!584638 (getValueByKey!591 (t!31227 (toList!6951 lt!456183)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!124065 () Bool)

(declare-fun c!104489 () Bool)

(assert (=> d!124065 (= c!104489 (and ((_ is Cons!22018) (toList!6951 lt!456183)) (= (_1!7927 (h!23220 (toList!6951 lt!456183))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124065 (= (getValueByKey!591 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000) e!584637)))

(assert (= (and d!124065 c!104489) b!1034172))

(assert (= (and d!124065 (not c!104489)) b!1034173))

(assert (= (and b!1034173 c!104490) b!1034174))

(assert (= (and b!1034173 (not c!104490)) b!1034175))

(declare-fun m!954395 () Bool)

(assert (=> b!1034174 m!954395))

(assert (=> b!1033899 d!124065))

(declare-fun lt!456491 () Bool)

(declare-fun d!124067 () Bool)

(assert (=> d!124067 (= lt!456491 (select (content!516 (toList!6951 lt!456296)) (tuple2!15835 lt!456165 lt!456100)))))

(declare-fun e!584640 () Bool)

(assert (=> d!124067 (= lt!456491 e!584640)))

(declare-fun res!690899 () Bool)

(assert (=> d!124067 (=> (not res!690899) (not e!584640))))

(assert (=> d!124067 (= res!690899 ((_ is Cons!22018) (toList!6951 lt!456296)))))

(assert (=> d!124067 (= (contains!6036 (toList!6951 lt!456296) (tuple2!15835 lt!456165 lt!456100)) lt!456491)))

(declare-fun b!1034176 () Bool)

(declare-fun e!584639 () Bool)

(assert (=> b!1034176 (= e!584640 e!584639)))

(declare-fun res!690900 () Bool)

(assert (=> b!1034176 (=> res!690900 e!584639)))

(assert (=> b!1034176 (= res!690900 (= (h!23220 (toList!6951 lt!456296)) (tuple2!15835 lt!456165 lt!456100)))))

(declare-fun b!1034177 () Bool)

(assert (=> b!1034177 (= e!584639 (contains!6036 (t!31227 (toList!6951 lt!456296)) (tuple2!15835 lt!456165 lt!456100)))))

(assert (= (and d!124067 res!690899) b!1034176))

(assert (= (and b!1034176 (not res!690900)) b!1034177))

(declare-fun m!954397 () Bool)

(assert (=> d!124067 m!954397))

(declare-fun m!954399 () Bool)

(assert (=> d!124067 m!954399))

(declare-fun m!954401 () Bool)

(assert (=> b!1034177 m!954401))

(assert (=> b!1033761 d!124067))

(declare-fun d!124069 () Bool)

(declare-fun res!690901 () Bool)

(declare-fun e!584641 () Bool)

(assert (=> d!124069 (=> res!690901 e!584641)))

(assert (=> d!124069 (= res!690901 (and ((_ is Cons!22018) (toList!6951 lt!456160)) (= (_1!7927 (h!23220 (toList!6951 lt!456160))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124069 (= (containsKey!564 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000) e!584641)))

(declare-fun b!1034178 () Bool)

(declare-fun e!584642 () Bool)

(assert (=> b!1034178 (= e!584641 e!584642)))

(declare-fun res!690902 () Bool)

(assert (=> b!1034178 (=> (not res!690902) (not e!584642))))

(assert (=> b!1034178 (= res!690902 (and (or (not ((_ is Cons!22018) (toList!6951 lt!456160))) (bvsle (_1!7927 (h!23220 (toList!6951 lt!456160))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22018) (toList!6951 lt!456160)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456160))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1034179 () Bool)

(assert (=> b!1034179 (= e!584642 (containsKey!564 (t!31227 (toList!6951 lt!456160)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124069 (not res!690901)) b!1034178))

(assert (= (and b!1034178 res!690902) b!1034179))

(declare-fun m!954403 () Bool)

(assert (=> b!1034179 m!954403))

(assert (=> d!123879 d!124069))

(declare-fun d!124071 () Bool)

(declare-fun res!690903 () Bool)

(declare-fun e!584643 () Bool)

(assert (=> d!124071 (=> res!690903 e!584643)))

(assert (=> d!124071 (= res!690903 (and ((_ is Cons!22018) lt!456317) (= (_1!7927 (h!23220 lt!456317)) key!909)))))

(assert (=> d!124071 (= (containsKey!564 lt!456317 key!909) e!584643)))

(declare-fun b!1034180 () Bool)

(declare-fun e!584644 () Bool)

(assert (=> b!1034180 (= e!584643 e!584644)))

(declare-fun res!690904 () Bool)

(assert (=> b!1034180 (=> (not res!690904) (not e!584644))))

(assert (=> b!1034180 (= res!690904 (and (or (not ((_ is Cons!22018) lt!456317)) (bvsle (_1!7927 (h!23220 lt!456317)) key!909)) ((_ is Cons!22018) lt!456317) (bvslt (_1!7927 (h!23220 lt!456317)) key!909)))))

(declare-fun b!1034181 () Bool)

(assert (=> b!1034181 (= e!584644 (containsKey!564 (t!31227 lt!456317) key!909))))

(assert (= (and d!124071 (not res!690903)) b!1034180))

(assert (= (and b!1034180 res!690904) b!1034181))

(declare-fun m!954405 () Bool)

(assert (=> b!1034181 m!954405))

(assert (=> b!1033785 d!124071))

(declare-fun d!124073 () Bool)

(declare-fun e!584645 () Bool)

(assert (=> d!124073 e!584645))

(declare-fun res!690905 () Bool)

(assert (=> d!124073 (=> res!690905 e!584645)))

(declare-fun lt!456492 () Bool)

(assert (=> d!124073 (= res!690905 (not lt!456492))))

(declare-fun lt!456493 () Bool)

(assert (=> d!124073 (= lt!456492 lt!456493)))

(declare-fun lt!456494 () Unit!33810)

(declare-fun e!584646 () Unit!33810)

(assert (=> d!124073 (= lt!456494 e!584646)))

(declare-fun c!104491 () Bool)

(assert (=> d!124073 (= c!104491 lt!456493)))

(assert (=> d!124073 (= lt!456493 (containsKey!564 (toList!6951 lt!456255) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(assert (=> d!124073 (= (contains!6035 lt!456255 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) lt!456492)))

(declare-fun b!1034182 () Bool)

(declare-fun lt!456495 () Unit!33810)

(assert (=> b!1034182 (= e!584646 lt!456495)))

(assert (=> b!1034182 (= lt!456495 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456255) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(assert (=> b!1034182 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456255) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034183 () Bool)

(declare-fun Unit!33835 () Unit!33810)

(assert (=> b!1034183 (= e!584646 Unit!33835)))

(declare-fun b!1034184 () Bool)

(assert (=> b!1034184 (= e!584645 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456255) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124073 c!104491) b!1034182))

(assert (= (and d!124073 (not c!104491)) b!1034183))

(assert (= (and d!124073 (not res!690905)) b!1034184))

(declare-fun m!954407 () Bool)

(assert (=> d!124073 m!954407))

(declare-fun m!954409 () Bool)

(assert (=> b!1034182 m!954409))

(assert (=> b!1034182 m!953649))

(assert (=> b!1034182 m!953649))

(declare-fun m!954411 () Bool)

(assert (=> b!1034182 m!954411))

(assert (=> b!1034184 m!953649))

(assert (=> b!1034184 m!953649))

(assert (=> b!1034184 m!954411))

(assert (=> d!123799 d!124073))

(declare-fun b!1034188 () Bool)

(declare-fun e!584648 () Option!642)

(assert (=> b!1034188 (= e!584648 None!640)))

(declare-fun b!1034186 () Bool)

(declare-fun e!584647 () Option!642)

(assert (=> b!1034186 (= e!584647 e!584648)))

(declare-fun c!104493 () Bool)

(assert (=> b!1034186 (= c!104493 (and ((_ is Cons!22018) lt!456254) (not (= (_1!7927 (h!23220 lt!456254)) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034185 () Bool)

(assert (=> b!1034185 (= e!584647 (Some!641 (_2!7927 (h!23220 lt!456254))))))

(declare-fun b!1034187 () Bool)

(assert (=> b!1034187 (= e!584648 (getValueByKey!591 (t!31227 lt!456254) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(declare-fun d!124075 () Bool)

(declare-fun c!104492 () Bool)

(assert (=> d!124075 (= c!104492 (and ((_ is Cons!22018) lt!456254) (= (_1!7927 (h!23220 lt!456254)) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))

(assert (=> d!124075 (= (getValueByKey!591 lt!456254 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) e!584647)))

(assert (= (and d!124075 c!104492) b!1034185))

(assert (= (and d!124075 (not c!104492)) b!1034186))

(assert (= (and b!1034186 c!104493) b!1034187))

(assert (= (and b!1034186 (not c!104493)) b!1034188))

(declare-fun m!954413 () Bool)

(assert (=> b!1034187 m!954413))

(assert (=> d!123799 d!124075))

(declare-fun d!124077 () Bool)

(assert (=> d!124077 (= (getValueByKey!591 lt!456254 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456496 () Unit!33810)

(assert (=> d!124077 (= lt!456496 (choose!1706 lt!456254 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(declare-fun e!584649 () Bool)

(assert (=> d!124077 e!584649))

(declare-fun res!690906 () Bool)

(assert (=> d!124077 (=> (not res!690906) (not e!584649))))

(assert (=> d!124077 (= res!690906 (isStrictlySorted!714 lt!456254))))

(assert (=> d!124077 (= (lemmaContainsTupThenGetReturnValue!280 lt!456254 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) lt!456496)))

(declare-fun b!1034189 () Bool)

(declare-fun res!690907 () Bool)

(assert (=> b!1034189 (=> (not res!690907) (not e!584649))))

(assert (=> b!1034189 (= res!690907 (containsKey!564 lt!456254 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034190 () Bool)

(assert (=> b!1034190 (= e!584649 (contains!6036 lt!456254 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124077 res!690906) b!1034189))

(assert (= (and b!1034189 res!690907) b!1034190))

(assert (=> d!124077 m!953643))

(declare-fun m!954415 () Bool)

(assert (=> d!124077 m!954415))

(declare-fun m!954417 () Bool)

(assert (=> d!124077 m!954417))

(declare-fun m!954419 () Bool)

(assert (=> b!1034189 m!954419))

(declare-fun m!954421 () Bool)

(assert (=> b!1034190 m!954421))

(assert (=> d!123799 d!124077))

(declare-fun bm!43715 () Bool)

(declare-fun call!43719 () List!22022)

(declare-fun call!43718 () List!22022)

(assert (=> bm!43715 (= call!43719 call!43718)))

(declare-fun b!1034191 () Bool)

(declare-fun e!584652 () List!22022)

(declare-fun call!43720 () List!22022)

(assert (=> b!1034191 (= e!584652 call!43720)))

(declare-fun b!1034192 () Bool)

(declare-fun e!584651 () List!22022)

(declare-fun e!584654 () List!22022)

(assert (=> b!1034192 (= e!584651 e!584654)))

(declare-fun c!104496 () Bool)

(assert (=> b!1034192 (= c!104496 (and ((_ is Cons!22018) (toList!6951 lt!456192)) (= (_1!7927 (h!23220 (toList!6951 lt!456192))) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034193 () Bool)

(declare-fun res!690908 () Bool)

(declare-fun e!584650 () Bool)

(assert (=> b!1034193 (=> (not res!690908) (not e!584650))))

(declare-fun lt!456497 () List!22022)

(assert (=> b!1034193 (= res!690908 (containsKey!564 lt!456497 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034194 () Bool)

(assert (=> b!1034194 (= e!584651 call!43718)))

(declare-fun e!584653 () List!22022)

(declare-fun c!104494 () Bool)

(declare-fun b!1034195 () Bool)

(assert (=> b!1034195 (= e!584653 (ite c!104496 (t!31227 (toList!6951 lt!456192)) (ite c!104494 (Cons!22018 (h!23220 (toList!6951 lt!456192)) (t!31227 (toList!6951 lt!456192))) Nil!22019)))))

(declare-fun bm!43716 () Bool)

(declare-fun c!104497 () Bool)

(assert (=> bm!43716 (= call!43718 ($colon$colon!605 e!584653 (ite c!104497 (h!23220 (toList!6951 lt!456192)) (tuple2!15835 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))))

(declare-fun c!104495 () Bool)

(assert (=> bm!43716 (= c!104495 c!104497)))

(declare-fun d!124079 () Bool)

(assert (=> d!124079 e!584650))

(declare-fun res!690909 () Bool)

(assert (=> d!124079 (=> (not res!690909) (not e!584650))))

(assert (=> d!124079 (= res!690909 (isStrictlySorted!714 lt!456497))))

(assert (=> d!124079 (= lt!456497 e!584651)))

(assert (=> d!124079 (= c!104497 (and ((_ is Cons!22018) (toList!6951 lt!456192)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456192))) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))

(assert (=> d!124079 (isStrictlySorted!714 (toList!6951 lt!456192))))

(assert (=> d!124079 (= (insertStrictlySorted!372 (toList!6951 lt!456192) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) lt!456497)))

(declare-fun bm!43717 () Bool)

(assert (=> bm!43717 (= call!43720 call!43719)))

(declare-fun b!1034196 () Bool)

(assert (=> b!1034196 (= c!104494 (and ((_ is Cons!22018) (toList!6951 lt!456192)) (bvsgt (_1!7927 (h!23220 (toList!6951 lt!456192))) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))

(assert (=> b!1034196 (= e!584654 e!584652)))

(declare-fun b!1034197 () Bool)

(assert (=> b!1034197 (= e!584652 call!43720)))

(declare-fun b!1034198 () Bool)

(assert (=> b!1034198 (= e!584650 (contains!6036 lt!456497 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034199 () Bool)

(assert (=> b!1034199 (= e!584653 (insertStrictlySorted!372 (t!31227 (toList!6951 lt!456192)) (_1!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034200 () Bool)

(assert (=> b!1034200 (= e!584654 call!43719)))

(assert (= (and d!124079 c!104497) b!1034194))

(assert (= (and d!124079 (not c!104497)) b!1034192))

(assert (= (and b!1034192 c!104496) b!1034200))

(assert (= (and b!1034192 (not c!104496)) b!1034196))

(assert (= (and b!1034196 c!104494) b!1034191))

(assert (= (and b!1034196 (not c!104494)) b!1034197))

(assert (= (or b!1034191 b!1034197) bm!43717))

(assert (= (or b!1034200 bm!43717) bm!43715))

(assert (= (or b!1034194 bm!43715) bm!43716))

(assert (= (and bm!43716 c!104495) b!1034199))

(assert (= (and bm!43716 (not c!104495)) b!1034195))

(assert (= (and d!124079 res!690909) b!1034193))

(assert (= (and b!1034193 res!690908) b!1034198))

(declare-fun m!954423 () Bool)

(assert (=> b!1034193 m!954423))

(declare-fun m!954425 () Bool)

(assert (=> d!124079 m!954425))

(declare-fun m!954427 () Bool)

(assert (=> d!124079 m!954427))

(declare-fun m!954429 () Bool)

(assert (=> b!1034199 m!954429))

(declare-fun m!954431 () Bool)

(assert (=> bm!43716 m!954431))

(declare-fun m!954433 () Bool)

(assert (=> b!1034198 m!954433))

(assert (=> d!123799 d!124079))

(declare-fun d!124081 () Bool)

(assert (=> d!124081 (= (apply!941 lt!456362 #b1000000000000000000000000000000000000000000000000000000000000000) (get!16445 (getValueByKey!591 (toList!6951 lt!456362) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30243 () Bool)

(assert (= bs!30243 d!124081))

(declare-fun m!954435 () Bool)

(assert (=> bs!30243 m!954435))

(assert (=> bs!30243 m!954435))

(declare-fun m!954437 () Bool)

(assert (=> bs!30243 m!954437))

(assert (=> b!1033880 d!124081))

(declare-fun d!124083 () Bool)

(assert (=> d!124083 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456176) lt!456169)) (v!14890 (getValueByKey!591 (toList!6951 lt!456176) lt!456169)))))

(assert (=> d!123833 d!124083))

(declare-fun b!1034204 () Bool)

(declare-fun e!584656 () Option!642)

(assert (=> b!1034204 (= e!584656 None!640)))

(declare-fun b!1034202 () Bool)

(declare-fun e!584655 () Option!642)

(assert (=> b!1034202 (= e!584655 e!584656)))

(declare-fun c!104499 () Bool)

(assert (=> b!1034202 (= c!104499 (and ((_ is Cons!22018) (toList!6951 lt!456176)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456176))) lt!456169))))))

(declare-fun b!1034201 () Bool)

(assert (=> b!1034201 (= e!584655 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456176)))))))

(declare-fun b!1034203 () Bool)

(assert (=> b!1034203 (= e!584656 (getValueByKey!591 (t!31227 (toList!6951 lt!456176)) lt!456169))))

(declare-fun d!124085 () Bool)

(declare-fun c!104498 () Bool)

(assert (=> d!124085 (= c!104498 (and ((_ is Cons!22018) (toList!6951 lt!456176)) (= (_1!7927 (h!23220 (toList!6951 lt!456176))) lt!456169)))))

(assert (=> d!124085 (= (getValueByKey!591 (toList!6951 lt!456176) lt!456169) e!584655)))

(assert (= (and d!124085 c!104498) b!1034201))

(assert (= (and d!124085 (not c!104498)) b!1034202))

(assert (= (and b!1034202 c!104499) b!1034203))

(assert (= (and b!1034202 (not c!104499)) b!1034204))

(declare-fun m!954439 () Bool)

(assert (=> b!1034203 m!954439))

(assert (=> d!123833 d!124085))

(assert (=> b!1033820 d!123935))

(declare-fun d!124087 () Bool)

(declare-fun res!690910 () Bool)

(declare-fun e!584657 () Bool)

(assert (=> d!124087 (=> res!690910 e!584657)))

(assert (=> d!124087 (= res!690910 (and ((_ is Cons!22018) (toList!6951 lt!456160)) (= (_1!7927 (h!23220 (toList!6951 lt!456160))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124087 (= (containsKey!564 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000) e!584657)))

(declare-fun b!1034205 () Bool)

(declare-fun e!584658 () Bool)

(assert (=> b!1034205 (= e!584657 e!584658)))

(declare-fun res!690911 () Bool)

(assert (=> b!1034205 (=> (not res!690911) (not e!584658))))

(assert (=> b!1034205 (= res!690911 (and (or (not ((_ is Cons!22018) (toList!6951 lt!456160))) (bvsle (_1!7927 (h!23220 (toList!6951 lt!456160))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22018) (toList!6951 lt!456160)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456160))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1034206 () Bool)

(assert (=> b!1034206 (= e!584658 (containsKey!564 (t!31227 (toList!6951 lt!456160)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124087 (not res!690910)) b!1034205))

(assert (= (and b!1034205 res!690911) b!1034206))

(declare-fun m!954441 () Bool)

(assert (=> b!1034206 m!954441))

(assert (=> d!123907 d!124087))

(assert (=> b!1033822 d!123819))

(declare-fun b!1034210 () Bool)

(declare-fun e!584660 () Option!642)

(assert (=> b!1034210 (= e!584660 None!640)))

(declare-fun b!1034208 () Bool)

(declare-fun e!584659 () Option!642)

(assert (=> b!1034208 (= e!584659 e!584660)))

(declare-fun c!104501 () Bool)

(assert (=> b!1034208 (= c!104501 (and ((_ is Cons!22018) (toList!6951 lt!456259)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456259))) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034207 () Bool)

(assert (=> b!1034207 (= e!584659 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456259)))))))

(declare-fun b!1034209 () Bool)

(assert (=> b!1034209 (= e!584660 (getValueByKey!591 (t!31227 (toList!6951 lt!456259)) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(declare-fun c!104500 () Bool)

(declare-fun d!124089 () Bool)

(assert (=> d!124089 (= c!104500 (and ((_ is Cons!22018) (toList!6951 lt!456259)) (= (_1!7927 (h!23220 (toList!6951 lt!456259))) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))

(assert (=> d!124089 (= (getValueByKey!591 (toList!6951 lt!456259) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) e!584659)))

(assert (= (and d!124089 c!104500) b!1034207))

(assert (= (and d!124089 (not c!104500)) b!1034208))

(assert (= (and b!1034208 c!104501) b!1034209))

(assert (= (and b!1034208 (not c!104501)) b!1034210))

(declare-fun m!954443 () Bool)

(assert (=> b!1034209 m!954443))

(assert (=> b!1033737 d!124089))

(declare-fun d!124091 () Bool)

(declare-fun e!584661 () Bool)

(assert (=> d!124091 e!584661))

(declare-fun res!690912 () Bool)

(assert (=> d!124091 (=> res!690912 e!584661)))

(declare-fun lt!456498 () Bool)

(assert (=> d!124091 (= res!690912 (not lt!456498))))

(declare-fun lt!456499 () Bool)

(assert (=> d!124091 (= lt!456498 lt!456499)))

(declare-fun lt!456500 () Unit!33810)

(declare-fun e!584662 () Unit!33810)

(assert (=> d!124091 (= lt!456500 e!584662)))

(declare-fun c!104502 () Bool)

(assert (=> d!124091 (= c!104502 lt!456499)))

(assert (=> d!124091 (= lt!456499 (containsKey!564 (toList!6951 lt!456224) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!124091 (= (contains!6035 lt!456224 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) lt!456498)))

(declare-fun b!1034211 () Bool)

(declare-fun lt!456501 () Unit!33810)

(assert (=> b!1034211 (= e!584662 lt!456501)))

(assert (=> b!1034211 (= lt!456501 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456224) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1034211 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456224) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034212 () Bool)

(declare-fun Unit!33836 () Unit!33810)

(assert (=> b!1034212 (= e!584662 Unit!33836)))

(declare-fun b!1034213 () Bool)

(assert (=> b!1034213 (= e!584661 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456224) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (= (and d!124091 c!104502) b!1034211))

(assert (= (and d!124091 (not c!104502)) b!1034212))

(assert (= (and d!124091 (not res!690912)) b!1034213))

(assert (=> d!124091 m!953435))

(declare-fun m!954445 () Bool)

(assert (=> d!124091 m!954445))

(assert (=> b!1034211 m!953435))

(declare-fun m!954447 () Bool)

(assert (=> b!1034211 m!954447))

(assert (=> b!1034211 m!953435))

(assert (=> b!1034211 m!954273))

(assert (=> b!1034211 m!954273))

(declare-fun m!954449 () Bool)

(assert (=> b!1034211 m!954449))

(assert (=> b!1034213 m!953435))

(assert (=> b!1034213 m!954273))

(assert (=> b!1034213 m!954273))

(assert (=> b!1034213 m!954449))

(assert (=> b!1033708 d!124091))

(declare-fun d!124093 () Bool)

(declare-fun res!690913 () Bool)

(declare-fun e!584663 () Bool)

(assert (=> d!124093 (=> res!690913 e!584663)))

(assert (=> d!124093 (= res!690913 (and ((_ is Cons!22018) (toList!6951 lt!456188)) (= (_1!7927 (h!23220 (toList!6951 lt!456188))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124093 (= (containsKey!564 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000) e!584663)))

(declare-fun b!1034214 () Bool)

(declare-fun e!584664 () Bool)

(assert (=> b!1034214 (= e!584663 e!584664)))

(declare-fun res!690914 () Bool)

(assert (=> b!1034214 (=> (not res!690914) (not e!584664))))

(assert (=> b!1034214 (= res!690914 (and (or (not ((_ is Cons!22018) (toList!6951 lt!456188))) (bvsle (_1!7927 (h!23220 (toList!6951 lt!456188))) #b1000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22018) (toList!6951 lt!456188)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456188))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1034215 () Bool)

(assert (=> b!1034215 (= e!584664 (containsKey!564 (t!31227 (toList!6951 lt!456188)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124093 (not res!690913)) b!1034214))

(assert (= (and b!1034214 res!690914) b!1034215))

(declare-fun m!954451 () Bool)

(assert (=> b!1034215 m!954451))

(assert (=> d!123865 d!124093))

(declare-fun b!1034216 () Bool)

(declare-fun res!690917 () Bool)

(declare-fun e!584671 () Bool)

(assert (=> b!1034216 (=> (not res!690917) (not e!584671))))

(declare-fun lt!456505 () ListLongMap!13871)

(assert (=> b!1034216 (= res!690917 (not (contains!6035 lt!456505 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1034217 () Bool)

(declare-fun e!584665 () Bool)

(assert (=> b!1034217 (= e!584665 (isEmpty!929 lt!456505))))

(declare-fun b!1034218 () Bool)

(declare-fun e!584668 () ListLongMap!13871)

(declare-fun e!584666 () ListLongMap!13871)

(assert (=> b!1034218 (= e!584668 e!584666)))

(declare-fun c!104503 () Bool)

(assert (=> b!1034218 (= c!104503 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1034219 () Bool)

(declare-fun e!584669 () Bool)

(assert (=> b!1034219 (= e!584669 e!584665)))

(declare-fun c!104504 () Bool)

(assert (=> b!1034219 (= c!104504 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1034220 () Bool)

(declare-fun e!584670 () Bool)

(assert (=> b!1034220 (= e!584670 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1034220 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1034221 () Bool)

(assert (=> b!1034221 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> b!1034221 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31865 (_values!6250 thiss!1427))))))

(declare-fun e!584667 () Bool)

(assert (=> b!1034221 (= e!584667 (= (apply!941 lt!456505 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034222 () Bool)

(assert (=> b!1034222 (= e!584665 (= lt!456505 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427))))))

(declare-fun d!124095 () Bool)

(assert (=> d!124095 e!584671))

(declare-fun res!690918 () Bool)

(assert (=> d!124095 (=> (not res!690918) (not e!584671))))

(assert (=> d!124095 (= res!690918 (not (contains!6035 lt!456505 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124095 (= lt!456505 e!584668)))

(declare-fun c!104505 () Bool)

(assert (=> d!124095 (= c!104505 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!124095 (validMask!0 (mask!30079 thiss!1427))))

(assert (=> d!124095 (= (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427)) lt!456505)))

(declare-fun b!1034223 () Bool)

(declare-fun call!43721 () ListLongMap!13871)

(assert (=> b!1034223 (= e!584666 call!43721)))

(declare-fun bm!43718 () Bool)

(assert (=> bm!43718 (= call!43721 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (defaultEntry!6227 thiss!1427)))))

(declare-fun b!1034224 () Bool)

(declare-fun lt!456508 () Unit!33810)

(declare-fun lt!456504 () Unit!33810)

(assert (=> b!1034224 (= lt!456508 lt!456504)))

(declare-fun lt!456502 () (_ BitVec 64))

(declare-fun lt!456507 () V!37565)

(declare-fun lt!456506 () ListLongMap!13871)

(declare-fun lt!456503 () (_ BitVec 64))

(assert (=> b!1034224 (not (contains!6035 (+!3064 lt!456506 (tuple2!15835 lt!456503 lt!456507)) lt!456502))))

(assert (=> b!1034224 (= lt!456504 (addStillNotContains!244 lt!456506 lt!456503 lt!456507 lt!456502))))

(assert (=> b!1034224 (= lt!456502 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1034224 (= lt!456507 (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1034224 (= lt!456503 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1034224 (= lt!456506 call!43721)))

(assert (=> b!1034224 (= e!584666 (+!3064 call!43721 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1034225 () Bool)

(assert (=> b!1034225 (= e!584669 e!584667)))

(assert (=> b!1034225 (and (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun res!690916 () Bool)

(assert (=> b!1034225 (= res!690916 (contains!6035 lt!456505 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1034225 (=> (not res!690916) (not e!584667))))

(declare-fun b!1034226 () Bool)

(assert (=> b!1034226 (= e!584668 (ListLongMap!13872 Nil!22019))))

(declare-fun b!1034227 () Bool)

(assert (=> b!1034227 (= e!584671 e!584669)))

(declare-fun c!104506 () Bool)

(assert (=> b!1034227 (= c!104506 e!584670)))

(declare-fun res!690915 () Bool)

(assert (=> b!1034227 (=> (not res!690915) (not e!584670))))

(assert (=> b!1034227 (= res!690915 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(assert (= (and d!124095 c!104505) b!1034226))

(assert (= (and d!124095 (not c!104505)) b!1034218))

(assert (= (and b!1034218 c!104503) b!1034224))

(assert (= (and b!1034218 (not c!104503)) b!1034223))

(assert (= (or b!1034224 b!1034223) bm!43718))

(assert (= (and d!124095 res!690918) b!1034216))

(assert (= (and b!1034216 res!690917) b!1034227))

(assert (= (and b!1034227 res!690915) b!1034220))

(assert (= (and b!1034227 c!104506) b!1034225))

(assert (= (and b!1034227 (not c!104506)) b!1034219))

(assert (= (and b!1034225 res!690916) b!1034221))

(assert (= (and b!1034219 c!104504) b!1034222))

(assert (= (and b!1034219 (not c!104504)) b!1034217))

(declare-fun b_lambda!16113 () Bool)

(assert (=> (not b_lambda!16113) (not b!1034221)))

(assert (=> b!1034221 t!31226))

(declare-fun b_and!33313 () Bool)

(assert (= b_and!33311 (and (=> t!31226 result!14395) b_and!33313)))

(declare-fun b_lambda!16115 () Bool)

(assert (=> (not b_lambda!16115) (not b!1034224)))

(assert (=> b!1034224 t!31226))

(declare-fun b_and!33315 () Bool)

(assert (= b_and!33313 (and (=> t!31226 result!14395) b_and!33315)))

(assert (=> b!1034218 m!954135))

(assert (=> b!1034218 m!954135))

(assert (=> b!1034218 m!954137))

(assert (=> b!1034220 m!954135))

(assert (=> b!1034220 m!954135))

(assert (=> b!1034220 m!954137))

(declare-fun m!954453 () Bool)

(assert (=> bm!43718 m!954453))

(assert (=> b!1034225 m!954135))

(assert (=> b!1034225 m!954135))

(declare-fun m!954455 () Bool)

(assert (=> b!1034225 m!954455))

(declare-fun m!954457 () Bool)

(assert (=> b!1034216 m!954457))

(declare-fun m!954459 () Bool)

(assert (=> b!1034224 m!954459))

(assert (=> b!1034224 m!953385))

(declare-fun m!954461 () Bool)

(assert (=> b!1034224 m!954461))

(declare-fun m!954463 () Bool)

(assert (=> b!1034224 m!954463))

(assert (=> b!1034224 m!954151))

(declare-fun m!954465 () Bool)

(assert (=> b!1034224 m!954465))

(assert (=> b!1034224 m!954461))

(assert (=> b!1034224 m!954135))

(assert (=> b!1034224 m!954151))

(assert (=> b!1034224 m!953385))

(assert (=> b!1034224 m!954155))

(assert (=> b!1034221 m!953385))

(assert (=> b!1034221 m!954151))

(assert (=> b!1034221 m!954135))

(assert (=> b!1034221 m!954135))

(declare-fun m!954467 () Bool)

(assert (=> b!1034221 m!954467))

(assert (=> b!1034221 m!954151))

(assert (=> b!1034221 m!953385))

(assert (=> b!1034221 m!954155))

(declare-fun m!954469 () Bool)

(assert (=> b!1034217 m!954469))

(assert (=> b!1034222 m!954453))

(declare-fun m!954471 () Bool)

(assert (=> d!124095 m!954471))

(assert (=> d!124095 m!953483))

(assert (=> b!1033705 d!124095))

(declare-fun d!124097 () Bool)

(assert (=> d!124097 (= (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) lt!456184)) (v!14890 (getValueByKey!591 (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) lt!456184)))))

(assert (=> d!123807 d!124097))

(declare-fun b!1034231 () Bool)

(declare-fun e!584673 () Option!642)

(assert (=> b!1034231 (= e!584673 None!640)))

(declare-fun b!1034229 () Bool)

(declare-fun e!584672 () Option!642)

(assert (=> b!1034229 (= e!584672 e!584673)))

(declare-fun c!104508 () Bool)

(assert (=> b!1034229 (= c!104508 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))) (not (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))) lt!456184))))))

(declare-fun b!1034228 () Bool)

(assert (=> b!1034228 (= e!584672 (Some!641 (_2!7927 (h!23220 (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))))

(declare-fun b!1034230 () Bool)

(assert (=> b!1034230 (= e!584673 (getValueByKey!591 (t!31227 (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))) lt!456184))))

(declare-fun d!124099 () Bool)

(declare-fun c!104507 () Bool)

(assert (=> d!124099 (= c!104507 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))) lt!456184)))))

(assert (=> d!124099 (= (getValueByKey!591 (toList!6951 (+!3064 lt!456203 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) lt!456184) e!584672)))

(assert (= (and d!124099 c!104507) b!1034228))

(assert (= (and d!124099 (not c!104507)) b!1034229))

(assert (= (and b!1034229 c!104508) b!1034230))

(assert (= (and b!1034229 (not c!104508)) b!1034231))

(declare-fun m!954473 () Bool)

(assert (=> b!1034230 m!954473))

(assert (=> d!123807 d!124099))

(declare-fun d!124101 () Bool)

(declare-fun lt!456509 () Bool)

(assert (=> d!124101 (= lt!456509 (select (content!516 (toList!6951 lt!456302)) (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))

(declare-fun e!584675 () Bool)

(assert (=> d!124101 (= lt!456509 e!584675)))

(declare-fun res!690919 () Bool)

(assert (=> d!124101 (=> (not res!690919) (not e!584675))))

(assert (=> d!124101 (= res!690919 ((_ is Cons!22018) (toList!6951 lt!456302)))))

(assert (=> d!124101 (= (contains!6036 (toList!6951 lt!456302) (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) lt!456509)))

(declare-fun b!1034232 () Bool)

(declare-fun e!584674 () Bool)

(assert (=> b!1034232 (= e!584675 e!584674)))

(declare-fun res!690920 () Bool)

(assert (=> b!1034232 (=> res!690920 e!584674)))

(assert (=> b!1034232 (= res!690920 (= (h!23220 (toList!6951 lt!456302)) (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))

(declare-fun b!1034233 () Bool)

(assert (=> b!1034233 (= e!584674 (contains!6036 (t!31227 (toList!6951 lt!456302)) (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))

(assert (= (and d!124101 res!690919) b!1034232))

(assert (= (and b!1034232 (not res!690920)) b!1034233))

(declare-fun m!954475 () Bool)

(assert (=> d!124101 m!954475))

(declare-fun m!954477 () Bool)

(assert (=> d!124101 m!954477))

(declare-fun m!954479 () Bool)

(assert (=> b!1034233 m!954479))

(assert (=> b!1033764 d!124101))

(assert (=> b!1033878 d!123929))

(declare-fun d!124103 () Bool)

(assert (=> d!124103 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14890 (getValueByKey!591 (toList!6951 lt!456188) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123861 d!124103))

(assert (=> d!123861 d!124047))

(declare-fun b!1034234 () Bool)

(declare-fun e!584677 () Bool)

(declare-fun e!584676 () Bool)

(assert (=> b!1034234 (= e!584677 e!584676)))

(declare-fun lt!456512 () (_ BitVec 64))

(assert (=> b!1034234 (= lt!456512 (select (arr!31341 (_keys!11404 lt!456102)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!456511 () Unit!33810)

(assert (=> b!1034234 (= lt!456511 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11404 lt!456102) lt!456512 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1034234 (arrayContainsKey!0 (_keys!11404 lt!456102) lt!456512 #b00000000000000000000000000000000)))

(declare-fun lt!456510 () Unit!33810)

(assert (=> b!1034234 (= lt!456510 lt!456511)))

(declare-fun res!690922 () Bool)

(assert (=> b!1034234 (= res!690922 (= (seekEntryOrOpen!0 (select (arr!31341 (_keys!11404 lt!456102)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!11404 lt!456102) (mask!30079 lt!456102)) (Found!9733 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1034234 (=> (not res!690922) (not e!584676))))

(declare-fun b!1034235 () Bool)

(declare-fun call!43722 () Bool)

(assert (=> b!1034235 (= e!584677 call!43722)))

(declare-fun bm!43719 () Bool)

(assert (=> bm!43719 (= call!43722 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!11404 lt!456102) (mask!30079 lt!456102)))))

(declare-fun b!1034236 () Bool)

(declare-fun e!584678 () Bool)

(assert (=> b!1034236 (= e!584678 e!584677)))

(declare-fun c!104509 () Bool)

(assert (=> b!1034236 (= c!104509 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!124105 () Bool)

(declare-fun res!690921 () Bool)

(assert (=> d!124105 (=> res!690921 e!584678)))

(assert (=> d!124105 (= res!690921 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!124105 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11404 lt!456102) (mask!30079 lt!456102)) e!584678)))

(declare-fun b!1034237 () Bool)

(assert (=> b!1034237 (= e!584676 call!43722)))

(assert (= (and d!124105 (not res!690921)) b!1034236))

(assert (= (and b!1034236 c!104509) b!1034234))

(assert (= (and b!1034236 (not c!104509)) b!1034235))

(assert (= (and b!1034234 res!690922) b!1034237))

(assert (= (or b!1034237 b!1034235) bm!43719))

(assert (=> b!1034234 m!954043))

(declare-fun m!954481 () Bool)

(assert (=> b!1034234 m!954481))

(declare-fun m!954483 () Bool)

(assert (=> b!1034234 m!954483))

(assert (=> b!1034234 m!954043))

(declare-fun m!954485 () Bool)

(assert (=> b!1034234 m!954485))

(declare-fun m!954487 () Bool)

(assert (=> bm!43719 m!954487))

(assert (=> b!1034236 m!954043))

(assert (=> b!1034236 m!954043))

(assert (=> b!1034236 m!954045))

(assert (=> bm!43681 d!124105))

(assert (=> d!123793 d!123815))

(assert (=> d!123793 d!123813))

(declare-fun d!124107 () Bool)

(assert (=> d!124107 (contains!6035 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))) lt!456196)))

(assert (=> d!124107 true))

(declare-fun _$35!437 () Unit!33810)

(assert (=> d!124107 (= (choose!1704 lt!456185 lt!456193 (zeroValue!6063 thiss!1427) lt!456196) _$35!437)))

(declare-fun bs!30244 () Bool)

(assert (= bs!30244 d!124107))

(assert (=> bs!30244 m!953535))

(assert (=> bs!30244 m!953535))

(assert (=> bs!30244 m!953537))

(assert (=> d!123793 d!124107))

(declare-fun d!124109 () Bool)

(declare-fun e!584679 () Bool)

(assert (=> d!124109 e!584679))

(declare-fun res!690923 () Bool)

(assert (=> d!124109 (=> res!690923 e!584679)))

(declare-fun lt!456513 () Bool)

(assert (=> d!124109 (= res!690923 (not lt!456513))))

(declare-fun lt!456514 () Bool)

(assert (=> d!124109 (= lt!456513 lt!456514)))

(declare-fun lt!456515 () Unit!33810)

(declare-fun e!584680 () Unit!33810)

(assert (=> d!124109 (= lt!456515 e!584680)))

(declare-fun c!104510 () Bool)

(assert (=> d!124109 (= c!104510 lt!456514)))

(assert (=> d!124109 (= lt!456514 (containsKey!564 (toList!6951 lt!456185) lt!456196))))

(assert (=> d!124109 (= (contains!6035 lt!456185 lt!456196) lt!456513)))

(declare-fun b!1034239 () Bool)

(declare-fun lt!456516 () Unit!33810)

(assert (=> b!1034239 (= e!584680 lt!456516)))

(assert (=> b!1034239 (= lt!456516 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456185) lt!456196))))

(assert (=> b!1034239 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456185) lt!456196))))

(declare-fun b!1034240 () Bool)

(declare-fun Unit!33837 () Unit!33810)

(assert (=> b!1034240 (= e!584680 Unit!33837)))

(declare-fun b!1034241 () Bool)

(assert (=> b!1034241 (= e!584679 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456185) lt!456196)))))

(assert (= (and d!124109 c!104510) b!1034239))

(assert (= (and d!124109 (not c!104510)) b!1034240))

(assert (= (and d!124109 (not res!690923)) b!1034241))

(declare-fun m!954489 () Bool)

(assert (=> d!124109 m!954489))

(declare-fun m!954491 () Bool)

(assert (=> b!1034239 m!954491))

(declare-fun m!954493 () Bool)

(assert (=> b!1034239 m!954493))

(assert (=> b!1034239 m!954493))

(declare-fun m!954495 () Bool)

(assert (=> b!1034239 m!954495))

(assert (=> b!1034241 m!954493))

(assert (=> b!1034241 m!954493))

(assert (=> b!1034241 m!954495))

(assert (=> d!123793 d!124109))

(declare-fun d!124111 () Bool)

(declare-fun lt!456517 () Bool)

(assert (=> d!124111 (= lt!456517 (select (content!516 (toList!6951 lt!456255)) (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))

(declare-fun e!584682 () Bool)

(assert (=> d!124111 (= lt!456517 e!584682)))

(declare-fun res!690924 () Bool)

(assert (=> d!124111 (=> (not res!690924) (not e!584682))))

(assert (=> d!124111 (= res!690924 ((_ is Cons!22018) (toList!6951 lt!456255)))))

(assert (=> d!124111 (= (contains!6036 (toList!6951 lt!456255) (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) lt!456517)))

(declare-fun b!1034242 () Bool)

(declare-fun e!584681 () Bool)

(assert (=> b!1034242 (= e!584682 e!584681)))

(declare-fun res!690925 () Bool)

(assert (=> b!1034242 (=> res!690925 e!584681)))

(assert (=> b!1034242 (= res!690925 (= (h!23220 (toList!6951 lt!456255)) (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))

(declare-fun b!1034243 () Bool)

(assert (=> b!1034243 (= e!584681 (contains!6036 (t!31227 (toList!6951 lt!456255)) (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))

(assert (= (and d!124111 res!690924) b!1034242))

(assert (= (and b!1034242 (not res!690925)) b!1034243))

(declare-fun m!954497 () Bool)

(assert (=> d!124111 m!954497))

(declare-fun m!954499 () Bool)

(assert (=> d!124111 m!954499))

(declare-fun m!954501 () Bool)

(assert (=> b!1034243 m!954501))

(assert (=> b!1033736 d!124111))

(declare-fun d!124113 () Bool)

(assert (=> d!124113 (= (apply!941 lt!456362 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)) (get!16445 (getValueByKey!591 (toList!6951 lt!456362) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000))))))

(declare-fun bs!30245 () Bool)

(assert (= bs!30245 d!124113))

(assert (=> bs!30245 m!953851))

(assert (=> bs!30245 m!954311))

(assert (=> bs!30245 m!954311))

(declare-fun m!954503 () Bool)

(assert (=> bs!30245 m!954503))

(assert (=> b!1033889 d!124113))

(declare-fun d!124115 () Bool)

(declare-fun c!104511 () Bool)

(assert (=> d!124115 (= c!104511 ((_ is ValueCellFull!11556) (select (arr!31342 (_values!6250 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun e!584683 () V!37565)

(assert (=> d!124115 (= (get!16444 (select (arr!31342 (_values!6250 lt!456102)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 lt!456102) #b0000000000000000000000000000000000000000000000000000000000000000)) e!584683)))

(declare-fun b!1034244 () Bool)

(assert (=> b!1034244 (= e!584683 (get!16446 (select (arr!31342 (_values!6250 lt!456102)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 lt!456102) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1034245 () Bool)

(assert (=> b!1034245 (= e!584683 (get!16447 (select (arr!31342 (_values!6250 lt!456102)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 lt!456102) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124115 c!104511) b!1034244))

(assert (= (and d!124115 (not c!104511)) b!1034245))

(assert (=> b!1034244 m!953963))

(assert (=> b!1034244 m!953965))

(declare-fun m!954505 () Bool)

(assert (=> b!1034244 m!954505))

(assert (=> b!1034245 m!953963))

(assert (=> b!1034245 m!953965))

(declare-fun m!954507 () Bool)

(assert (=> b!1034245 m!954507))

(assert (=> b!1033889 d!124115))

(declare-fun d!124117 () Bool)

(assert (=> d!124117 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!456518 () Unit!33810)

(assert (=> d!124117 (= lt!456518 (choose!1705 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!584684 () Bool)

(assert (=> d!124117 e!584684))

(declare-fun res!690926 () Bool)

(assert (=> d!124117 (=> (not res!690926) (not e!584684))))

(assert (=> d!124117 (= res!690926 (isStrictlySorted!714 (toList!6951 lt!456160)))))

(assert (=> d!124117 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000) lt!456518)))

(declare-fun b!1034246 () Bool)

(assert (=> b!1034246 (= e!584684 (containsKey!564 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124117 res!690926) b!1034246))

(assert (=> d!124117 m!953717))

(assert (=> d!124117 m!953717))

(assert (=> d!124117 m!953905))

(declare-fun m!954509 () Bool)

(assert (=> d!124117 m!954509))

(declare-fun m!954511 () Bool)

(assert (=> d!124117 m!954511))

(assert (=> b!1034246 m!953901))

(assert (=> b!1033839 d!124117))

(declare-fun d!124119 () Bool)

(assert (=> d!124119 (= (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!930 (getValueByKey!591 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30246 () Bool)

(assert (= bs!30246 d!124119))

(assert (=> bs!30246 m!953717))

(declare-fun m!954513 () Bool)

(assert (=> bs!30246 m!954513))

(assert (=> b!1033839 d!124119))

(declare-fun b!1034250 () Bool)

(declare-fun e!584686 () Option!642)

(assert (=> b!1034250 (= e!584686 None!640)))

(declare-fun b!1034248 () Bool)

(declare-fun e!584685 () Option!642)

(assert (=> b!1034248 (= e!584685 e!584686)))

(declare-fun c!104513 () Bool)

(assert (=> b!1034248 (= c!104513 (and ((_ is Cons!22018) (toList!6951 lt!456160)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456160))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034247 () Bool)

(assert (=> b!1034247 (= e!584685 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456160)))))))

(declare-fun b!1034249 () Bool)

(assert (=> b!1034249 (= e!584686 (getValueByKey!591 (t!31227 (toList!6951 lt!456160)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!124121 () Bool)

(declare-fun c!104512 () Bool)

(assert (=> d!124121 (= c!104512 (and ((_ is Cons!22018) (toList!6951 lt!456160)) (= (_1!7927 (h!23220 (toList!6951 lt!456160))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124121 (= (getValueByKey!591 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000) e!584685)))

(assert (= (and d!124121 c!104512) b!1034247))

(assert (= (and d!124121 (not c!104512)) b!1034248))

(assert (= (and b!1034248 c!104513) b!1034249))

(assert (= (and b!1034248 (not c!104513)) b!1034250))

(declare-fun m!954515 () Bool)

(assert (=> b!1034249 m!954515))

(assert (=> b!1033839 d!124121))

(declare-fun b!1034254 () Bool)

(declare-fun e!584688 () Option!642)

(assert (=> b!1034254 (= e!584688 None!640)))

(declare-fun b!1034252 () Bool)

(declare-fun e!584687 () Option!642)

(assert (=> b!1034252 (= e!584687 e!584688)))

(declare-fun c!104515 () Bool)

(assert (=> b!1034252 (= c!104515 (and ((_ is Cons!22018) (toList!6951 lt!456308)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456308))) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))))

(declare-fun b!1034251 () Bool)

(assert (=> b!1034251 (= e!584687 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456308)))))))

(declare-fun b!1034253 () Bool)

(assert (=> b!1034253 (= e!584688 (getValueByKey!591 (t!31227 (toList!6951 lt!456308)) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun c!104514 () Bool)

(declare-fun d!124123 () Bool)

(assert (=> d!124123 (= c!104514 (and ((_ is Cons!22018) (toList!6951 lt!456308)) (= (_1!7927 (h!23220 (toList!6951 lt!456308))) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (=> d!124123 (= (getValueByKey!591 (toList!6951 lt!456308) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) e!584687)))

(assert (= (and d!124123 c!104514) b!1034251))

(assert (= (and d!124123 (not c!104514)) b!1034252))

(assert (= (and b!1034252 c!104515) b!1034253))

(assert (= (and b!1034252 (not c!104515)) b!1034254))

(declare-fun m!954517 () Bool)

(assert (=> b!1034253 m!954517))

(assert (=> b!1033767 d!124123))

(assert (=> d!123873 d!123997))

(declare-fun d!124125 () Bool)

(assert (=> d!124125 (= (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196)) (not (isEmpty!930 (getValueByKey!591 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196))))))

(declare-fun bs!30247 () Bool)

(assert (= bs!30247 d!124125))

(assert (=> bs!30247 m!953709))

(declare-fun m!954519 () Bool)

(assert (=> bs!30247 m!954519))

(assert (=> b!1033752 d!124125))

(declare-fun b!1034258 () Bool)

(declare-fun e!584690 () Option!642)

(assert (=> b!1034258 (= e!584690 None!640)))

(declare-fun b!1034256 () Bool)

(declare-fun e!584689 () Option!642)

(assert (=> b!1034256 (= e!584689 e!584690)))

(declare-fun c!104517 () Bool)

(assert (=> b!1034256 (= c!104517 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))) (not (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))) lt!456196))))))

(declare-fun b!1034255 () Bool)

(assert (=> b!1034255 (= e!584689 (Some!641 (_2!7927 (h!23220 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))))

(declare-fun b!1034257 () Bool)

(assert (=> b!1034257 (= e!584690 (getValueByKey!591 (t!31227 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))) lt!456196))))

(declare-fun d!124127 () Bool)

(declare-fun c!104516 () Bool)

(assert (=> d!124127 (= c!104516 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))) lt!456196)))))

(assert (=> d!124127 (= (getValueByKey!591 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196) e!584689)))

(assert (= (and d!124127 c!104516) b!1034255))

(assert (= (and d!124127 (not c!104516)) b!1034256))

(assert (= (and b!1034256 c!104517) b!1034257))

(assert (= (and b!1034256 (not c!104517)) b!1034258))

(declare-fun m!954521 () Bool)

(assert (=> b!1034257 m!954521))

(assert (=> b!1033752 d!124127))

(assert (=> d!123787 d!123791))

(declare-fun d!124129 () Bool)

(declare-fun e!584691 () Bool)

(assert (=> d!124129 e!584691))

(declare-fun res!690927 () Bool)

(assert (=> d!124129 (=> res!690927 e!584691)))

(declare-fun lt!456519 () Bool)

(assert (=> d!124129 (= res!690927 (not lt!456519))))

(declare-fun lt!456520 () Bool)

(assert (=> d!124129 (= lt!456519 lt!456520)))

(declare-fun lt!456521 () Unit!33810)

(declare-fun e!584692 () Unit!33810)

(assert (=> d!124129 (= lt!456521 e!584692)))

(declare-fun c!104518 () Bool)

(assert (=> d!124129 (= c!104518 lt!456520)))

(assert (=> d!124129 (= lt!456520 (containsKey!564 (toList!6951 lt!456192) lt!456202))))

(assert (=> d!124129 (= (contains!6035 lt!456192 lt!456202) lt!456519)))

(declare-fun b!1034259 () Bool)

(declare-fun lt!456522 () Unit!33810)

(assert (=> b!1034259 (= e!584692 lt!456522)))

(assert (=> b!1034259 (= lt!456522 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456192) lt!456202))))

(assert (=> b!1034259 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456192) lt!456202))))

(declare-fun b!1034260 () Bool)

(declare-fun Unit!33838 () Unit!33810)

(assert (=> b!1034260 (= e!584692 Unit!33838)))

(declare-fun b!1034261 () Bool)

(assert (=> b!1034261 (= e!584691 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456192) lt!456202)))))

(assert (= (and d!124129 c!104518) b!1034259))

(assert (= (and d!124129 (not c!104518)) b!1034260))

(assert (= (and d!124129 (not res!690927)) b!1034261))

(declare-fun m!954523 () Bool)

(assert (=> d!124129 m!954523))

(declare-fun m!954525 () Bool)

(assert (=> b!1034259 m!954525))

(assert (=> b!1034259 m!953625))

(assert (=> b!1034259 m!953625))

(declare-fun m!954527 () Bool)

(assert (=> b!1034259 m!954527))

(assert (=> b!1034261 m!953625))

(assert (=> b!1034261 m!953625))

(assert (=> b!1034261 m!954527))

(assert (=> d!123787 d!124129))

(assert (=> d!123787 d!123799))

(declare-fun d!124131 () Bool)

(assert (=> d!124131 (= (apply!941 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))) lt!456202) (apply!941 lt!456192 lt!456202))))

(assert (=> d!124131 true))

(declare-fun _$34!1163 () Unit!33810)

(assert (=> d!124131 (= (choose!1703 lt!456192 lt!456194 (minValue!6063 thiss!1427) lt!456202) _$34!1163)))

(declare-fun bs!30248 () Bool)

(assert (= bs!30248 d!124131))

(assert (=> bs!30248 m!953525))

(assert (=> bs!30248 m!953525))

(assert (=> bs!30248 m!953541))

(assert (=> bs!30248 m!953533))

(assert (=> d!123787 d!124131))

(assert (=> d!123787 d!123801))

(declare-fun d!124133 () Bool)

(declare-fun e!584693 () Bool)

(assert (=> d!124133 e!584693))

(declare-fun res!690928 () Bool)

(assert (=> d!124133 (=> res!690928 e!584693)))

(declare-fun lt!456523 () Bool)

(assert (=> d!124133 (= res!690928 (not lt!456523))))

(declare-fun lt!456524 () Bool)

(assert (=> d!124133 (= lt!456523 lt!456524)))

(declare-fun lt!456525 () Unit!33810)

(declare-fun e!584694 () Unit!33810)

(assert (=> d!124133 (= lt!456525 e!584694)))

(declare-fun c!104519 () Bool)

(assert (=> d!124133 (= c!104519 lt!456524)))

(assert (=> d!124133 (= lt!456524 (containsKey!564 (toList!6951 lt!456224) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124133 (= (contains!6035 lt!456224 #b0000000000000000000000000000000000000000000000000000000000000000) lt!456523)))

(declare-fun b!1034262 () Bool)

(declare-fun lt!456526 () Unit!33810)

(assert (=> b!1034262 (= e!584694 lt!456526)))

(assert (=> b!1034262 (= lt!456526 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456224) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1034262 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456224) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1034263 () Bool)

(declare-fun Unit!33839 () Unit!33810)

(assert (=> b!1034263 (= e!584694 Unit!33839)))

(declare-fun b!1034264 () Bool)

(assert (=> b!1034264 (= e!584693 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456224) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124133 c!104519) b!1034262))

(assert (= (and d!124133 (not c!104519)) b!1034263))

(assert (= (and d!124133 (not res!690928)) b!1034264))

(declare-fun m!954529 () Bool)

(assert (=> d!124133 m!954529))

(declare-fun m!954531 () Bool)

(assert (=> b!1034262 m!954531))

(declare-fun m!954533 () Bool)

(assert (=> b!1034262 m!954533))

(assert (=> b!1034262 m!954533))

(declare-fun m!954535 () Bool)

(assert (=> b!1034262 m!954535))

(assert (=> b!1034264 m!954533))

(assert (=> b!1034264 m!954533))

(assert (=> b!1034264 m!954535))

(assert (=> d!123781 d!124133))

(assert (=> d!123781 d!123821))

(declare-fun d!124135 () Bool)

(declare-fun e!584695 () Bool)

(assert (=> d!124135 e!584695))

(declare-fun res!690929 () Bool)

(assert (=> d!124135 (=> res!690929 e!584695)))

(declare-fun lt!456527 () Bool)

(assert (=> d!124135 (= res!690929 (not lt!456527))))

(declare-fun lt!456528 () Bool)

(assert (=> d!124135 (= lt!456527 lt!456528)))

(declare-fun lt!456529 () Unit!33810)

(declare-fun e!584696 () Unit!33810)

(assert (=> d!124135 (= lt!456529 e!584696)))

(declare-fun c!104520 () Bool)

(assert (=> d!124135 (= c!104520 lt!456528)))

(assert (=> d!124135 (= lt!456528 (containsKey!564 (toList!6951 lt!456259) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(assert (=> d!124135 (= (contains!6035 lt!456259 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) lt!456527)))

(declare-fun b!1034265 () Bool)

(declare-fun lt!456530 () Unit!33810)

(assert (=> b!1034265 (= e!584696 lt!456530)))

(assert (=> b!1034265 (= lt!456530 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456259) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(assert (=> b!1034265 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456259) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034266 () Bool)

(declare-fun Unit!33840 () Unit!33810)

(assert (=> b!1034266 (= e!584696 Unit!33840)))

(declare-fun b!1034267 () Bool)

(assert (=> b!1034267 (= e!584695 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456259) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124135 c!104520) b!1034265))

(assert (= (and d!124135 (not c!104520)) b!1034266))

(assert (= (and d!124135 (not res!690929)) b!1034267))

(declare-fun m!954537 () Bool)

(assert (=> d!124135 m!954537))

(declare-fun m!954539 () Bool)

(assert (=> b!1034265 m!954539))

(assert (=> b!1034265 m!953665))

(assert (=> b!1034265 m!953665))

(declare-fun m!954541 () Bool)

(assert (=> b!1034265 m!954541))

(assert (=> b!1034267 m!953665))

(assert (=> b!1034267 m!953665))

(assert (=> b!1034267 m!954541))

(assert (=> d!123803 d!124135))

(declare-fun b!1034271 () Bool)

(declare-fun e!584698 () Option!642)

(assert (=> b!1034271 (= e!584698 None!640)))

(declare-fun b!1034269 () Bool)

(declare-fun e!584697 () Option!642)

(assert (=> b!1034269 (= e!584697 e!584698)))

(declare-fun c!104522 () Bool)

(assert (=> b!1034269 (= c!104522 (and ((_ is Cons!22018) lt!456258) (not (= (_1!7927 (h!23220 lt!456258)) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034268 () Bool)

(assert (=> b!1034268 (= e!584697 (Some!641 (_2!7927 (h!23220 lt!456258))))))

(declare-fun b!1034270 () Bool)

(assert (=> b!1034270 (= e!584698 (getValueByKey!591 (t!31227 lt!456258) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(declare-fun c!104521 () Bool)

(declare-fun d!124137 () Bool)

(assert (=> d!124137 (= c!104521 (and ((_ is Cons!22018) lt!456258) (= (_1!7927 (h!23220 lt!456258)) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))

(assert (=> d!124137 (= (getValueByKey!591 lt!456258 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) e!584697)))

(assert (= (and d!124137 c!104521) b!1034268))

(assert (= (and d!124137 (not c!104521)) b!1034269))

(assert (= (and b!1034269 c!104522) b!1034270))

(assert (= (and b!1034269 (not c!104522)) b!1034271))

(declare-fun m!954543 () Bool)

(assert (=> b!1034270 m!954543))

(assert (=> d!123803 d!124137))

(declare-fun d!124139 () Bool)

(assert (=> d!124139 (= (getValueByKey!591 lt!456258 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456531 () Unit!33810)

(assert (=> d!124139 (= lt!456531 (choose!1706 lt!456258 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(declare-fun e!584699 () Bool)

(assert (=> d!124139 e!584699))

(declare-fun res!690930 () Bool)

(assert (=> d!124139 (=> (not res!690930) (not e!584699))))

(assert (=> d!124139 (= res!690930 (isStrictlySorted!714 lt!456258))))

(assert (=> d!124139 (= (lemmaContainsTupThenGetReturnValue!280 lt!456258 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) lt!456531)))

(declare-fun b!1034272 () Bool)

(declare-fun res!690931 () Bool)

(assert (=> b!1034272 (=> (not res!690931) (not e!584699))))

(assert (=> b!1034272 (= res!690931 (containsKey!564 lt!456258 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034273 () Bool)

(assert (=> b!1034273 (= e!584699 (contains!6036 lt!456258 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124139 res!690930) b!1034272))

(assert (= (and b!1034272 res!690931) b!1034273))

(assert (=> d!124139 m!953659))

(declare-fun m!954545 () Bool)

(assert (=> d!124139 m!954545))

(declare-fun m!954547 () Bool)

(assert (=> d!124139 m!954547))

(declare-fun m!954549 () Bool)

(assert (=> b!1034272 m!954549))

(declare-fun m!954551 () Bool)

(assert (=> b!1034273 m!954551))

(assert (=> d!123803 d!124139))

(declare-fun bm!43720 () Bool)

(declare-fun call!43724 () List!22022)

(declare-fun call!43723 () List!22022)

(assert (=> bm!43720 (= call!43724 call!43723)))

(declare-fun b!1034274 () Bool)

(declare-fun e!584702 () List!22022)

(declare-fun call!43725 () List!22022)

(assert (=> b!1034274 (= e!584702 call!43725)))

(declare-fun b!1034275 () Bool)

(declare-fun e!584701 () List!22022)

(declare-fun e!584704 () List!22022)

(assert (=> b!1034275 (= e!584701 e!584704)))

(declare-fun c!104525 () Bool)

(assert (=> b!1034275 (= c!104525 (and ((_ is Cons!22018) (toList!6951 lt!456203)) (= (_1!7927 (h!23220 (toList!6951 lt!456203))) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034276 () Bool)

(declare-fun res!690932 () Bool)

(declare-fun e!584700 () Bool)

(assert (=> b!1034276 (=> (not res!690932) (not e!584700))))

(declare-fun lt!456532 () List!22022)

(assert (=> b!1034276 (= res!690932 (containsKey!564 lt!456532 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034277 () Bool)

(assert (=> b!1034277 (= e!584701 call!43723)))

(declare-fun b!1034278 () Bool)

(declare-fun c!104523 () Bool)

(declare-fun e!584703 () List!22022)

(assert (=> b!1034278 (= e!584703 (ite c!104525 (t!31227 (toList!6951 lt!456203)) (ite c!104523 (Cons!22018 (h!23220 (toList!6951 lt!456203)) (t!31227 (toList!6951 lt!456203))) Nil!22019)))))

(declare-fun c!104526 () Bool)

(declare-fun bm!43721 () Bool)

(assert (=> bm!43721 (= call!43723 ($colon$colon!605 e!584703 (ite c!104526 (h!23220 (toList!6951 lt!456203)) (tuple2!15835 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))))

(declare-fun c!104524 () Bool)

(assert (=> bm!43721 (= c!104524 c!104526)))

(declare-fun d!124141 () Bool)

(assert (=> d!124141 e!584700))

(declare-fun res!690933 () Bool)

(assert (=> d!124141 (=> (not res!690933) (not e!584700))))

(assert (=> d!124141 (= res!690933 (isStrictlySorted!714 lt!456532))))

(assert (=> d!124141 (= lt!456532 e!584701)))

(assert (=> d!124141 (= c!104526 (and ((_ is Cons!22018) (toList!6951 lt!456203)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456203))) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))

(assert (=> d!124141 (isStrictlySorted!714 (toList!6951 lt!456203))))

(assert (=> d!124141 (= (insertStrictlySorted!372 (toList!6951 lt!456203) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))) lt!456532)))

(declare-fun bm!43722 () Bool)

(assert (=> bm!43722 (= call!43725 call!43724)))

(declare-fun b!1034279 () Bool)

(assert (=> b!1034279 (= c!104523 (and ((_ is Cons!22018) (toList!6951 lt!456203)) (bvsgt (_1!7927 (h!23220 (toList!6951 lt!456203))) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))

(assert (=> b!1034279 (= e!584704 e!584702)))

(declare-fun b!1034280 () Bool)

(assert (=> b!1034280 (= e!584702 call!43725)))

(declare-fun b!1034281 () Bool)

(assert (=> b!1034281 (= e!584700 (contains!6036 lt!456532 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034282 () Bool)

(assert (=> b!1034282 (= e!584703 (insertStrictlySorted!372 (t!31227 (toList!6951 lt!456203)) (_1!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456200 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034283 () Bool)

(assert (=> b!1034283 (= e!584704 call!43724)))

(assert (= (and d!124141 c!104526) b!1034277))

(assert (= (and d!124141 (not c!104526)) b!1034275))

(assert (= (and b!1034275 c!104525) b!1034283))

(assert (= (and b!1034275 (not c!104525)) b!1034279))

(assert (= (and b!1034279 c!104523) b!1034274))

(assert (= (and b!1034279 (not c!104523)) b!1034280))

(assert (= (or b!1034274 b!1034280) bm!43722))

(assert (= (or b!1034283 bm!43722) bm!43720))

(assert (= (or b!1034277 bm!43720) bm!43721))

(assert (= (and bm!43721 c!104524) b!1034282))

(assert (= (and bm!43721 (not c!104524)) b!1034278))

(assert (= (and d!124141 res!690933) b!1034276))

(assert (= (and b!1034276 res!690932) b!1034281))

(declare-fun m!954553 () Bool)

(assert (=> b!1034276 m!954553))

(declare-fun m!954555 () Bool)

(assert (=> d!124141 m!954555))

(declare-fun m!954557 () Bool)

(assert (=> d!124141 m!954557))

(declare-fun m!954559 () Bool)

(assert (=> b!1034282 m!954559))

(declare-fun m!954561 () Bool)

(assert (=> bm!43721 m!954561))

(declare-fun m!954563 () Bool)

(assert (=> b!1034281 m!954563))

(assert (=> d!123803 d!124141))

(assert (=> b!1033701 d!123819))

(declare-fun d!124143 () Bool)

(assert (=> d!124143 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!456533 () Unit!33810)

(assert (=> d!124143 (= lt!456533 (choose!1705 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!584705 () Bool)

(assert (=> d!124143 e!584705))

(declare-fun res!690934 () Bool)

(assert (=> d!124143 (=> (not res!690934) (not e!584705))))

(assert (=> d!124143 (= res!690934 (isStrictlySorted!714 (toList!6951 lt!456188)))))

(assert (=> d!124143 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000) lt!456533)))

(declare-fun b!1034284 () Bool)

(assert (=> b!1034284 (= e!584705 (containsKey!564 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124143 res!690934) b!1034284))

(assert (=> d!124143 m!953713))

(assert (=> d!124143 m!953713))

(assert (=> d!124143 m!953863))

(declare-fun m!954565 () Bool)

(assert (=> d!124143 m!954565))

(assert (=> d!124143 m!954083))

(assert (=> b!1034284 m!953859))

(assert (=> b!1033802 d!124143))

(declare-fun d!124145 () Bool)

(assert (=> d!124145 (= (isDefined!436 (getValueByKey!591 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!930 (getValueByKey!591 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30249 () Bool)

(assert (= bs!30249 d!124145))

(assert (=> bs!30249 m!953713))

(declare-fun m!954567 () Bool)

(assert (=> bs!30249 m!954567))

(assert (=> b!1033802 d!124145))

(declare-fun b!1034288 () Bool)

(declare-fun e!584707 () Option!642)

(assert (=> b!1034288 (= e!584707 None!640)))

(declare-fun b!1034286 () Bool)

(declare-fun e!584706 () Option!642)

(assert (=> b!1034286 (= e!584706 e!584707)))

(declare-fun c!104528 () Bool)

(assert (=> b!1034286 (= c!104528 (and ((_ is Cons!22018) (toList!6951 lt!456188)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456188))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034285 () Bool)

(assert (=> b!1034285 (= e!584706 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456188)))))))

(declare-fun b!1034287 () Bool)

(assert (=> b!1034287 (= e!584707 (getValueByKey!591 (t!31227 (toList!6951 lt!456188)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!124147 () Bool)

(declare-fun c!104527 () Bool)

(assert (=> d!124147 (= c!104527 (and ((_ is Cons!22018) (toList!6951 lt!456188)) (= (_1!7927 (h!23220 (toList!6951 lt!456188))) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124147 (= (getValueByKey!591 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000) e!584706)))

(assert (= (and d!124147 c!104527) b!1034285))

(assert (= (and d!124147 (not c!104527)) b!1034286))

(assert (= (and b!1034286 c!104528) b!1034287))

(assert (= (and b!1034286 (not c!104528)) b!1034288))

(declare-fun m!954569 () Bool)

(assert (=> b!1034287 m!954569))

(assert (=> b!1033802 d!124147))

(declare-fun d!124149 () Bool)

(assert (=> d!124149 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))) (v!14890 (getValueByKey!591 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!123891 d!124149))

(assert (=> d!123891 d!124039))

(declare-fun d!124151 () Bool)

(declare-fun res!690935 () Bool)

(declare-fun e!584708 () Bool)

(assert (=> d!124151 (=> res!690935 e!584708)))

(assert (=> d!124151 (= res!690935 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))))) lt!456168)))))

(assert (=> d!124151 (= (containsKey!564 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168) e!584708)))

(declare-fun b!1034289 () Bool)

(declare-fun e!584709 () Bool)

(assert (=> b!1034289 (= e!584708 e!584709)))

(declare-fun res!690936 () Bool)

(assert (=> b!1034289 (=> (not res!690936) (not e!584709))))

(assert (=> b!1034289 (= res!690936 (and (or (not ((_ is Cons!22018) (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))))) (bvsle (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))))) lt!456168)) ((_ is Cons!22018) (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)))) (bvslt (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))))) lt!456168)))))

(declare-fun b!1034290 () Bool)

(assert (=> b!1034290 (= e!584709 (containsKey!564 (t!31227 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)))) lt!456168))))

(assert (= (and d!124151 (not res!690935)) b!1034289))

(assert (= (and b!1034289 res!690936) b!1034290))

(declare-fun m!954571 () Bool)

(assert (=> b!1034290 m!954571))

(assert (=> d!123825 d!124151))

(declare-fun d!124153 () Bool)

(assert (=> d!124153 (= ($colon$colon!605 (removeStrictlySorted!57 (t!31227 (toList!6951 (map!14707 thiss!1427))) key!909) (h!23220 (toList!6951 (map!14707 thiss!1427)))) (Cons!22018 (h!23220 (toList!6951 (map!14707 thiss!1427))) (removeStrictlySorted!57 (t!31227 (toList!6951 (map!14707 thiss!1427))) key!909)))))

(assert (=> b!1033786 d!124153))

(declare-fun b!1034291 () Bool)

(declare-fun e!584710 () List!22022)

(assert (=> b!1034291 (= e!584710 (t!31227 (t!31227 (toList!6951 (map!14707 thiss!1427)))))))

(declare-fun b!1034292 () Bool)

(declare-fun e!584711 () List!22022)

(assert (=> b!1034292 (= e!584711 Nil!22019)))

(declare-fun b!1034293 () Bool)

(assert (=> b!1034293 (= e!584710 e!584711)))

(declare-fun c!104529 () Bool)

(assert (=> b!1034293 (= c!104529 (and ((_ is Cons!22018) (t!31227 (toList!6951 (map!14707 thiss!1427)))) (not (= (_1!7927 (h!23220 (t!31227 (toList!6951 (map!14707 thiss!1427))))) key!909))))))

(declare-fun b!1034294 () Bool)

(declare-fun e!584712 () Bool)

(declare-fun lt!456534 () List!22022)

(assert (=> b!1034294 (= e!584712 (not (containsKey!564 lt!456534 key!909)))))

(declare-fun d!124155 () Bool)

(assert (=> d!124155 e!584712))

(declare-fun res!690937 () Bool)

(assert (=> d!124155 (=> (not res!690937) (not e!584712))))

(assert (=> d!124155 (= res!690937 (isStrictlySorted!714 lt!456534))))

(assert (=> d!124155 (= lt!456534 e!584710)))

(declare-fun c!104530 () Bool)

(assert (=> d!124155 (= c!104530 (and ((_ is Cons!22018) (t!31227 (toList!6951 (map!14707 thiss!1427)))) (= (_1!7927 (h!23220 (t!31227 (toList!6951 (map!14707 thiss!1427))))) key!909)))))

(assert (=> d!124155 (isStrictlySorted!714 (t!31227 (toList!6951 (map!14707 thiss!1427))))))

(assert (=> d!124155 (= (removeStrictlySorted!57 (t!31227 (toList!6951 (map!14707 thiss!1427))) key!909) lt!456534)))

(declare-fun b!1034295 () Bool)

(assert (=> b!1034295 (= e!584711 ($colon$colon!605 (removeStrictlySorted!57 (t!31227 (t!31227 (toList!6951 (map!14707 thiss!1427)))) key!909) (h!23220 (t!31227 (toList!6951 (map!14707 thiss!1427))))))))

(assert (= (and d!124155 c!104530) b!1034291))

(assert (= (and d!124155 (not c!104530)) b!1034293))

(assert (= (and b!1034293 c!104529) b!1034295))

(assert (= (and b!1034293 (not c!104529)) b!1034292))

(assert (= (and d!124155 res!690937) b!1034294))

(declare-fun m!954573 () Bool)

(assert (=> b!1034294 m!954573))

(declare-fun m!954575 () Bool)

(assert (=> d!124155 m!954575))

(declare-fun m!954577 () Bool)

(assert (=> d!124155 m!954577))

(declare-fun m!954579 () Bool)

(assert (=> b!1034295 m!954579))

(assert (=> b!1034295 m!954579))

(declare-fun m!954581 () Bool)

(assert (=> b!1034295 m!954581))

(assert (=> b!1033786 d!124155))

(declare-fun d!124157 () Bool)

(assert (=> d!124157 (= (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) lt!456156)) (v!14890 (getValueByKey!591 (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) lt!456156)))))

(assert (=> d!123827 d!124157))

(declare-fun b!1034299 () Bool)

(declare-fun e!584714 () Option!642)

(assert (=> b!1034299 (= e!584714 None!640)))

(declare-fun b!1034297 () Bool)

(declare-fun e!584713 () Option!642)

(assert (=> b!1034297 (= e!584713 e!584714)))

(declare-fun c!104532 () Bool)

(assert (=> b!1034297 (= c!104532 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))) (not (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))) lt!456156))))))

(declare-fun b!1034296 () Bool)

(assert (=> b!1034296 (= e!584713 (Some!641 (_2!7927 (h!23220 (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))))

(declare-fun b!1034298 () Bool)

(assert (=> b!1034298 (= e!584714 (getValueByKey!591 (t!31227 (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))) lt!456156))))

(declare-fun c!104531 () Bool)

(declare-fun d!124159 () Bool)

(assert (=> d!124159 (= c!104531 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))) lt!456156)))))

(assert (=> d!124159 (= (getValueByKey!591 (toList!6951 (+!3064 lt!456175 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) lt!456156) e!584713)))

(assert (= (and d!124159 c!104531) b!1034296))

(assert (= (and d!124159 (not c!104531)) b!1034297))

(assert (= (and b!1034297 c!104532) b!1034298))

(assert (= (and b!1034297 (not c!104532)) b!1034299))

(declare-fun m!954583 () Bool)

(assert (=> b!1034298 m!954583))

(assert (=> d!123827 d!124159))

(declare-fun d!124161 () Bool)

(assert (=> d!124161 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!456535 () Unit!33810)

(assert (=> d!124161 (= lt!456535 (choose!1705 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!584715 () Bool)

(assert (=> d!124161 e!584715))

(declare-fun res!690938 () Bool)

(assert (=> d!124161 (=> (not res!690938) (not e!584715))))

(assert (=> d!124161 (= res!690938 (isStrictlySorted!714 (toList!6951 lt!456160)))))

(assert (=> d!124161 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000) lt!456535)))

(declare-fun b!1034300 () Bool)

(assert (=> b!1034300 (= e!584715 (containsKey!564 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124161 res!690938) b!1034300))

(assert (=> d!124161 m!953913))

(assert (=> d!124161 m!953913))

(assert (=> d!124161 m!954033))

(declare-fun m!954585 () Bool)

(assert (=> d!124161 m!954585))

(assert (=> d!124161 m!954511))

(assert (=> b!1034300 m!954029))

(assert (=> b!1033905 d!124161))

(declare-fun d!124163 () Bool)

(assert (=> d!124163 (= (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (isEmpty!930 (getValueByKey!591 (toList!6951 lt!456160) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bs!30250 () Bool)

(assert (= bs!30250 d!124163))

(assert (=> bs!30250 m!953913))

(declare-fun m!954587 () Bool)

(assert (=> bs!30250 m!954587))

(assert (=> b!1033905 d!124163))

(assert (=> b!1033905 d!124033))

(declare-fun d!124165 () Bool)

(declare-fun e!584716 () Bool)

(assert (=> d!124165 e!584716))

(declare-fun res!690939 () Bool)

(assert (=> d!124165 (=> res!690939 e!584716)))

(declare-fun lt!456536 () Bool)

(assert (=> d!124165 (= res!690939 (not lt!456536))))

(declare-fun lt!456537 () Bool)

(assert (=> d!124165 (= lt!456536 lt!456537)))

(declare-fun lt!456538 () Unit!33810)

(declare-fun e!584717 () Unit!33810)

(assert (=> d!124165 (= lt!456538 e!584717)))

(declare-fun c!104533 () Bool)

(assert (=> d!124165 (= c!104533 lt!456537)))

(assert (=> d!124165 (= lt!456537 (containsKey!564 (toList!6951 lt!456308) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!124165 (= (contains!6035 lt!456308 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) lt!456536)))

(declare-fun b!1034301 () Bool)

(declare-fun lt!456539 () Unit!33810)

(assert (=> b!1034301 (= e!584717 lt!456539)))

(assert (=> b!1034301 (= lt!456539 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456308) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> b!1034301 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456308) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034302 () Bool)

(declare-fun Unit!33841 () Unit!33810)

(assert (=> b!1034302 (= e!584717 Unit!33841)))

(declare-fun b!1034303 () Bool)

(assert (=> b!1034303 (= e!584716 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456308) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (= (and d!124165 c!104533) b!1034301))

(assert (= (and d!124165 (not c!104533)) b!1034302))

(assert (= (and d!124165 (not res!690939)) b!1034303))

(declare-fun m!954589 () Bool)

(assert (=> d!124165 m!954589))

(declare-fun m!954591 () Bool)

(assert (=> b!1034301 m!954591))

(assert (=> b!1034301 m!953825))

(assert (=> b!1034301 m!953825))

(declare-fun m!954593 () Bool)

(assert (=> b!1034301 m!954593))

(assert (=> b!1034303 m!953825))

(assert (=> b!1034303 m!953825))

(assert (=> b!1034303 m!954593))

(assert (=> d!123855 d!124165))

(declare-fun b!1034307 () Bool)

(declare-fun e!584719 () Option!642)

(assert (=> b!1034307 (= e!584719 None!640)))

(declare-fun b!1034305 () Bool)

(declare-fun e!584718 () Option!642)

(assert (=> b!1034305 (= e!584718 e!584719)))

(declare-fun c!104535 () Bool)

(assert (=> b!1034305 (= c!104535 (and ((_ is Cons!22018) lt!456307) (not (= (_1!7927 (h!23220 lt!456307)) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))))

(declare-fun b!1034304 () Bool)

(assert (=> b!1034304 (= e!584718 (Some!641 (_2!7927 (h!23220 lt!456307))))))

(declare-fun b!1034306 () Bool)

(assert (=> b!1034306 (= e!584719 (getValueByKey!591 (t!31227 lt!456307) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun d!124167 () Bool)

(declare-fun c!104534 () Bool)

(assert (=> d!124167 (= c!104534 (and ((_ is Cons!22018) lt!456307) (= (_1!7927 (h!23220 lt!456307)) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (=> d!124167 (= (getValueByKey!591 lt!456307 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) e!584718)))

(assert (= (and d!124167 c!104534) b!1034304))

(assert (= (and d!124167 (not c!104534)) b!1034305))

(assert (= (and b!1034305 c!104535) b!1034306))

(assert (= (and b!1034305 (not c!104535)) b!1034307))

(declare-fun m!954595 () Bool)

(assert (=> b!1034306 m!954595))

(assert (=> d!123855 d!124167))

(declare-fun d!124169 () Bool)

(assert (=> d!124169 (= (getValueByKey!591 lt!456307 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) (Some!641 (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun lt!456540 () Unit!33810)

(assert (=> d!124169 (= lt!456540 (choose!1706 lt!456307 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun e!584720 () Bool)

(assert (=> d!124169 e!584720))

(declare-fun res!690940 () Bool)

(assert (=> d!124169 (=> (not res!690940) (not e!584720))))

(assert (=> d!124169 (= res!690940 (isStrictlySorted!714 lt!456307))))

(assert (=> d!124169 (= (lemmaContainsTupThenGetReturnValue!280 lt!456307 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) lt!456540)))

(declare-fun b!1034308 () Bool)

(declare-fun res!690941 () Bool)

(assert (=> b!1034308 (=> (not res!690941) (not e!584720))))

(assert (=> b!1034308 (= res!690941 (containsKey!564 lt!456307 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034309 () Bool)

(assert (=> b!1034309 (= e!584720 (contains!6036 lt!456307 (tuple2!15835 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (= (and d!124169 res!690940) b!1034308))

(assert (= (and b!1034308 res!690941) b!1034309))

(assert (=> d!124169 m!953819))

(declare-fun m!954597 () Bool)

(assert (=> d!124169 m!954597))

(declare-fun m!954599 () Bool)

(assert (=> d!124169 m!954599))

(declare-fun m!954601 () Bool)

(assert (=> b!1034308 m!954601))

(declare-fun m!954603 () Bool)

(assert (=> b!1034309 m!954603))

(assert (=> d!123855 d!124169))

(declare-fun bm!43723 () Bool)

(declare-fun call!43727 () List!22022)

(declare-fun call!43726 () List!22022)

(assert (=> bm!43723 (= call!43727 call!43726)))

(declare-fun b!1034310 () Bool)

(declare-fun e!584723 () List!22022)

(declare-fun call!43728 () List!22022)

(assert (=> b!1034310 (= e!584723 call!43728)))

(declare-fun b!1034311 () Bool)

(declare-fun e!584722 () List!22022)

(declare-fun e!584725 () List!22022)

(assert (=> b!1034311 (= e!584722 e!584725)))

(declare-fun c!104538 () Bool)

(assert (=> b!1034311 (= c!104538 (and ((_ is Cons!22018) (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663)))) (= (_1!7927 (h!23220 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663))))) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034312 () Bool)

(declare-fun res!690942 () Bool)

(declare-fun e!584721 () Bool)

(assert (=> b!1034312 (=> (not res!690942) (not e!584721))))

(declare-fun lt!456541 () List!22022)

(assert (=> b!1034312 (= res!690942 (containsKey!564 lt!456541 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034313 () Bool)

(assert (=> b!1034313 (= e!584722 call!43726)))

(declare-fun c!104536 () Bool)

(declare-fun b!1034314 () Bool)

(declare-fun e!584724 () List!22022)

(assert (=> b!1034314 (= e!584724 (ite c!104538 (t!31227 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663)))) (ite c!104536 (Cons!22018 (h!23220 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663)))) (t!31227 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663))))) Nil!22019)))))

(declare-fun c!104539 () Bool)

(declare-fun bm!43724 () Bool)

(assert (=> bm!43724 (= call!43726 ($colon$colon!605 e!584724 (ite c!104539 (h!23220 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663)))) (tuple2!15835 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))))

(declare-fun c!104537 () Bool)

(assert (=> bm!43724 (= c!104537 c!104539)))

(declare-fun d!124171 () Bool)

(assert (=> d!124171 e!584721))

(declare-fun res!690943 () Bool)

(assert (=> d!124171 (=> (not res!690943) (not e!584721))))

(assert (=> d!124171 (= res!690943 (isStrictlySorted!714 lt!456541))))

(assert (=> d!124171 (= lt!456541 e!584722)))

(assert (=> d!124171 (= c!104539 (and ((_ is Cons!22018) (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663)))) (bvslt (_1!7927 (h!23220 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663))))) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (=> d!124171 (isStrictlySorted!714 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663))))))

(assert (=> d!124171 (= (insertStrictlySorted!372 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663))) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) lt!456541)))

(declare-fun bm!43725 () Bool)

(assert (=> bm!43725 (= call!43728 call!43727)))

(declare-fun b!1034315 () Bool)

(assert (=> b!1034315 (= c!104536 (and ((_ is Cons!22018) (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663)))) (bvsgt (_1!7927 (h!23220 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663))))) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (=> b!1034315 (= e!584725 e!584723)))

(declare-fun b!1034316 () Bool)

(assert (=> b!1034316 (= e!584723 call!43728)))

(declare-fun b!1034317 () Bool)

(assert (=> b!1034317 (= e!584721 (contains!6036 lt!456541 (tuple2!15835 (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034318 () Bool)

(assert (=> b!1034318 (= e!584724 (insertStrictlySorted!372 (t!31227 (toList!6951 (ite c!104333 call!43665 (ite c!104335 call!43666 call!43663)))) (_1!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034319 () Bool)

(assert (=> b!1034319 (= e!584725 call!43727)))

(assert (= (and d!124171 c!104539) b!1034313))

(assert (= (and d!124171 (not c!104539)) b!1034311))

(assert (= (and b!1034311 c!104538) b!1034319))

(assert (= (and b!1034311 (not c!104538)) b!1034315))

(assert (= (and b!1034315 c!104536) b!1034310))

(assert (= (and b!1034315 (not c!104536)) b!1034316))

(assert (= (or b!1034310 b!1034316) bm!43725))

(assert (= (or b!1034319 bm!43725) bm!43723))

(assert (= (or b!1034313 bm!43723) bm!43724))

(assert (= (and bm!43724 c!104537) b!1034318))

(assert (= (and bm!43724 (not c!104537)) b!1034314))

(assert (= (and d!124171 res!690943) b!1034312))

(assert (= (and b!1034312 res!690942) b!1034317))

(declare-fun m!954605 () Bool)

(assert (=> b!1034312 m!954605))

(declare-fun m!954607 () Bool)

(assert (=> d!124171 m!954607))

(declare-fun m!954609 () Bool)

(assert (=> d!124171 m!954609))

(declare-fun m!954611 () Bool)

(assert (=> b!1034318 m!954611))

(declare-fun m!954613 () Bool)

(assert (=> bm!43724 m!954613))

(declare-fun m!954615 () Bool)

(assert (=> b!1034317 m!954615))

(assert (=> d!123855 d!124171))

(declare-fun d!124173 () Bool)

(assert (=> d!124173 (= ($colon$colon!605 (removeStrictlySorted!57 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))) #b0000000000000000000000000000000000000000000000000000000000000000) (h!23220 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))) (Cons!22018 (h!23220 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))) (removeStrictlySorted!57 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1033904 d!124173))

(declare-fun b!1034320 () Bool)

(declare-fun e!584726 () List!22022)

(assert (=> b!1034320 (= e!584726 (t!31227 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))))))

(declare-fun b!1034321 () Bool)

(declare-fun e!584727 () List!22022)

(assert (=> b!1034321 (= e!584727 Nil!22019)))

(declare-fun b!1034322 () Bool)

(assert (=> b!1034322 (= e!584726 e!584727)))

(declare-fun c!104540 () Bool)

(assert (=> b!1034322 (= c!104540 (and ((_ is Cons!22018) (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))) (not (= (_1!7927 (h!23220 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034323 () Bool)

(declare-fun e!584728 () Bool)

(declare-fun lt!456542 () List!22022)

(assert (=> b!1034323 (= e!584728 (not (containsKey!564 lt!456542 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!124175 () Bool)

(assert (=> d!124175 e!584728))

(declare-fun res!690944 () Bool)

(assert (=> d!124175 (=> (not res!690944) (not e!584728))))

(assert (=> d!124175 (= res!690944 (isStrictlySorted!714 lt!456542))))

(assert (=> d!124175 (= lt!456542 e!584726)))

(declare-fun c!104541 () Bool)

(assert (=> d!124175 (= c!104541 (and ((_ is Cons!22018) (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))) (= (_1!7927 (h!23220 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124175 (isStrictlySorted!714 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))))

(assert (=> d!124175 (= (removeStrictlySorted!57 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))) #b0000000000000000000000000000000000000000000000000000000000000000) lt!456542)))

(declare-fun b!1034324 () Bool)

(assert (=> b!1034324 (= e!584727 ($colon$colon!605 (removeStrictlySorted!57 (t!31227 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))) #b0000000000000000000000000000000000000000000000000000000000000000) (h!23220 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))))))

(assert (= (and d!124175 c!104541) b!1034320))

(assert (= (and d!124175 (not c!104541)) b!1034322))

(assert (= (and b!1034322 c!104540) b!1034324))

(assert (= (and b!1034322 (not c!104540)) b!1034321))

(assert (= (and d!124175 res!690944) b!1034323))

(declare-fun m!954617 () Bool)

(assert (=> b!1034323 m!954617))

(declare-fun m!954619 () Bool)

(assert (=> d!124175 m!954619))

(declare-fun m!954621 () Bool)

(assert (=> d!124175 m!954621))

(declare-fun m!954623 () Bool)

(assert (=> b!1034324 m!954623))

(assert (=> b!1034324 m!954623))

(declare-fun m!954625 () Bool)

(assert (=> b!1034324 m!954625))

(assert (=> b!1033904 d!124175))

(assert (=> b!1033866 d!123819))

(declare-fun b!1034326 () Bool)

(declare-fun e!584732 () Bool)

(declare-fun e!584730 () Bool)

(assert (=> b!1034326 (= e!584732 e!584730)))

(declare-fun c!104542 () Bool)

(assert (=> b!1034326 (= c!104542 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1034327 () Bool)

(declare-fun e!584731 () Bool)

(assert (=> b!1034327 (= e!584731 (contains!6037 (ite c!104375 (Cons!22019 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) Nil!22020) Nil!22020) (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1034328 () Bool)

(declare-fun call!43729 () Bool)

(assert (=> b!1034328 (= e!584730 call!43729)))

(declare-fun b!1034329 () Bool)

(assert (=> b!1034329 (= e!584730 call!43729)))

(declare-fun bm!43726 () Bool)

(assert (=> bm!43726 (= call!43729 (arrayNoDuplicates!0 (_keys!11404 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!104542 (Cons!22019 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!104375 (Cons!22019 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) Nil!22020) Nil!22020)) (ite c!104375 (Cons!22019 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) Nil!22020) Nil!22020))))))

(declare-fun d!124177 () Bool)

(declare-fun res!690946 () Bool)

(declare-fun e!584729 () Bool)

(assert (=> d!124177 (=> res!690946 e!584729)))

(assert (=> d!124177 (= res!690946 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!124177 (= (arrayNoDuplicates!0 (_keys!11404 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104375 (Cons!22019 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) Nil!22020) Nil!22020)) e!584729)))

(declare-fun b!1034325 () Bool)

(assert (=> b!1034325 (= e!584729 e!584732)))

(declare-fun res!690945 () Bool)

(assert (=> b!1034325 (=> (not res!690945) (not e!584732))))

(assert (=> b!1034325 (= res!690945 (not e!584731))))

(declare-fun res!690947 () Bool)

(assert (=> b!1034325 (=> (not res!690947) (not e!584731))))

(assert (=> b!1034325 (= res!690947 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!124177 (not res!690946)) b!1034325))

(assert (= (and b!1034325 res!690947) b!1034327))

(assert (= (and b!1034325 res!690945) b!1034326))

(assert (= (and b!1034326 c!104542) b!1034328))

(assert (= (and b!1034326 (not c!104542)) b!1034329))

(assert (= (or b!1034328 b!1034329) bm!43726))

(assert (=> b!1034326 m!954135))

(assert (=> b!1034326 m!954135))

(assert (=> b!1034326 m!954137))

(assert (=> b!1034327 m!954135))

(assert (=> b!1034327 m!954135))

(declare-fun m!954627 () Bool)

(assert (=> b!1034327 m!954627))

(assert (=> bm!43726 m!954135))

(declare-fun m!954629 () Bool)

(assert (=> bm!43726 m!954629))

(assert (=> b!1034325 m!954135))

(assert (=> b!1034325 m!954135))

(assert (=> b!1034325 m!954137))

(assert (=> bm!43678 d!124177))

(declare-fun d!124179 () Bool)

(assert (=> d!124179 (= (size!31868 thiss!1427) (bvadd (_size!2908 thiss!1427) (bvsdiv (bvadd (extraKeys!5959 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!1033909 d!124179))

(assert (=> b!1033863 d!123819))

(assert (=> b!1033807 d!123941))

(assert (=> b!1033807 d!123943))

(declare-fun b!1034333 () Bool)

(declare-fun e!584734 () Option!642)

(assert (=> b!1034333 (= e!584734 None!640)))

(declare-fun b!1034331 () Bool)

(declare-fun e!584733 () Option!642)

(assert (=> b!1034331 (= e!584733 e!584734)))

(declare-fun c!104544 () Bool)

(assert (=> b!1034331 (= c!104544 (and ((_ is Cons!22018) (toList!6951 lt!456292)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456292))) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034330 () Bool)

(assert (=> b!1034330 (= e!584733 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456292)))))))

(declare-fun b!1034332 () Bool)

(assert (=> b!1034332 (= e!584734 (getValueByKey!591 (t!31227 (toList!6951 lt!456292)) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(declare-fun d!124181 () Bool)

(declare-fun c!104543 () Bool)

(assert (=> d!124181 (= c!104543 (and ((_ is Cons!22018) (toList!6951 lt!456292)) (= (_1!7927 (h!23220 (toList!6951 lt!456292))) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))

(assert (=> d!124181 (= (getValueByKey!591 (toList!6951 lt!456292) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) e!584733)))

(assert (= (and d!124181 c!104543) b!1034330))

(assert (= (and d!124181 (not c!104543)) b!1034331))

(assert (= (and b!1034331 c!104544) b!1034332))

(assert (= (and b!1034331 (not c!104544)) b!1034333))

(declare-fun m!954631 () Bool)

(assert (=> b!1034332 m!954631))

(assert (=> b!1033758 d!124181))

(declare-fun d!124183 () Bool)

(declare-fun lt!456543 () Bool)

(assert (=> d!124183 (= lt!456543 (select (content!516 (toList!6951 lt!456259)) (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))

(declare-fun e!584736 () Bool)

(assert (=> d!124183 (= lt!456543 e!584736)))

(declare-fun res!690948 () Bool)

(assert (=> d!124183 (=> (not res!690948) (not e!584736))))

(assert (=> d!124183 (= res!690948 ((_ is Cons!22018) (toList!6951 lt!456259)))))

(assert (=> d!124183 (= (contains!6036 (toList!6951 lt!456259) (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))) lt!456543)))

(declare-fun b!1034334 () Bool)

(declare-fun e!584735 () Bool)

(assert (=> b!1034334 (= e!584736 e!584735)))

(declare-fun res!690949 () Bool)

(assert (=> b!1034334 (=> res!690949 e!584735)))

(assert (=> b!1034334 (= res!690949 (= (h!23220 (toList!6951 lt!456259)) (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))

(declare-fun b!1034335 () Bool)

(assert (=> b!1034335 (= e!584735 (contains!6036 (t!31227 (toList!6951 lt!456259)) (tuple2!15835 lt!456200 (minValue!6063 thiss!1427))))))

(assert (= (and d!124183 res!690948) b!1034334))

(assert (= (and b!1034334 (not res!690949)) b!1034335))

(declare-fun m!954633 () Bool)

(assert (=> d!124183 m!954633))

(declare-fun m!954635 () Bool)

(assert (=> d!124183 m!954635))

(declare-fun m!954637 () Bool)

(assert (=> b!1034335 m!954637))

(assert (=> b!1033738 d!124183))

(declare-fun d!124185 () Bool)

(assert (=> d!124185 (= (get!16446 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) (v!14888 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1033846 d!124185))

(declare-fun bm!43727 () Bool)

(declare-fun call!43730 () (_ BitVec 32))

(assert (=> bm!43727 (= call!43730 (arrayCountValidKeys!0 (_keys!11404 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1034337 () Bool)

(declare-fun e!584737 () (_ BitVec 32))

(assert (=> b!1034337 (= e!584737 call!43730)))

(declare-fun b!1034338 () Bool)

(assert (=> b!1034338 (= e!584737 (bvadd #b00000000000000000000000000000001 call!43730))))

(declare-fun b!1034339 () Bool)

(declare-fun e!584738 () (_ BitVec 32))

(assert (=> b!1034339 (= e!584738 e!584737)))

(declare-fun c!104545 () Bool)

(assert (=> b!1034339 (= c!104545 (validKeyInArray!0 (select (arr!31341 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1034336 () Bool)

(assert (=> b!1034336 (= e!584738 #b00000000000000000000000000000000)))

(declare-fun d!124187 () Bool)

(declare-fun lt!456544 () (_ BitVec 32))

(assert (=> d!124187 (and (bvsge lt!456544 #b00000000000000000000000000000000) (bvsle lt!456544 (bvsub (size!31864 (_keys!11404 thiss!1427)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!124187 (= lt!456544 e!584738)))

(declare-fun c!104546 () Bool)

(assert (=> d!124187 (= c!104546 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!124187 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!31864 (_keys!11404 thiss!1427)) (size!31864 (_keys!11404 thiss!1427))))))

(assert (=> d!124187 (= (arrayCountValidKeys!0 (_keys!11404 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))) lt!456544)))

(assert (= (and d!124187 c!104546) b!1034336))

(assert (= (and d!124187 (not c!104546)) b!1034339))

(assert (= (and b!1034339 c!104545) b!1034338))

(assert (= (and b!1034339 (not c!104545)) b!1034337))

(assert (= (or b!1034338 b!1034337) bm!43727))

(declare-fun m!954639 () Bool)

(assert (=> bm!43727 m!954639))

(assert (=> b!1034339 m!954135))

(assert (=> b!1034339 m!954135))

(assert (=> b!1034339 m!954137))

(assert (=> bm!43685 d!124187))

(declare-fun d!124189 () Bool)

(assert (=> d!124189 (= (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) lt!456174)) (v!14890 (getValueByKey!591 (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) lt!456174)))))

(assert (=> d!123847 d!124189))

(declare-fun b!1034343 () Bool)

(declare-fun e!584740 () Option!642)

(assert (=> b!1034343 (= e!584740 None!640)))

(declare-fun b!1034341 () Bool)

(declare-fun e!584739 () Option!642)

(assert (=> b!1034341 (= e!584739 e!584740)))

(declare-fun c!104548 () Bool)

(assert (=> b!1034341 (= c!104548 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))) (not (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))) lt!456174))))))

(declare-fun b!1034340 () Bool)

(assert (=> b!1034340 (= e!584739 (Some!641 (_2!7927 (h!23220 (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))))))))

(declare-fun b!1034342 () Bool)

(assert (=> b!1034342 (= e!584740 (getValueByKey!591 (t!31227 (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))) lt!456174))))

(declare-fun c!104547 () Bool)

(declare-fun d!124191 () Bool)

(assert (=> d!124191 (= c!104547 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))))) lt!456174)))))

(assert (=> d!124191 (= (getValueByKey!591 (toList!6951 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427)))) lt!456174) e!584739)))

(assert (= (and d!124191 c!104547) b!1034340))

(assert (= (and d!124191 (not c!104547)) b!1034341))

(assert (= (and b!1034341 c!104548) b!1034342))

(assert (= (and b!1034341 (not c!104548)) b!1034343))

(declare-fun m!954641 () Bool)

(assert (=> b!1034342 m!954641))

(assert (=> d!123847 d!124191))

(declare-fun d!124193 () Bool)

(assert (=> d!124193 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456203) lt!456184)) (v!14890 (getValueByKey!591 (toList!6951 lt!456203) lt!456184)))))

(assert (=> d!123797 d!124193))

(declare-fun b!1034347 () Bool)

(declare-fun e!584742 () Option!642)

(assert (=> b!1034347 (= e!584742 None!640)))

(declare-fun b!1034345 () Bool)

(declare-fun e!584741 () Option!642)

(assert (=> b!1034345 (= e!584741 e!584742)))

(declare-fun c!104550 () Bool)

(assert (=> b!1034345 (= c!104550 (and ((_ is Cons!22018) (toList!6951 lt!456203)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456203))) lt!456184))))))

(declare-fun b!1034344 () Bool)

(assert (=> b!1034344 (= e!584741 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456203)))))))

(declare-fun b!1034346 () Bool)

(assert (=> b!1034346 (= e!584742 (getValueByKey!591 (t!31227 (toList!6951 lt!456203)) lt!456184))))

(declare-fun d!124195 () Bool)

(declare-fun c!104549 () Bool)

(assert (=> d!124195 (= c!104549 (and ((_ is Cons!22018) (toList!6951 lt!456203)) (= (_1!7927 (h!23220 (toList!6951 lt!456203))) lt!456184)))))

(assert (=> d!124195 (= (getValueByKey!591 (toList!6951 lt!456203) lt!456184) e!584741)))

(assert (= (and d!124195 c!104549) b!1034344))

(assert (= (and d!124195 (not c!104549)) b!1034345))

(assert (= (and b!1034345 c!104550) b!1034346))

(assert (= (and b!1034345 (not c!104550)) b!1034347))

(declare-fun m!954643 () Bool)

(assert (=> b!1034346 m!954643))

(assert (=> d!123797 d!124195))

(assert (=> bm!43674 d!123963))

(declare-fun d!124197 () Bool)

(declare-fun res!690950 () Bool)

(declare-fun e!584743 () Bool)

(assert (=> d!124197 (=> res!690950 e!584743)))

(assert (=> d!124197 (= res!690950 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))) lt!456196)))))

(assert (=> d!124197 (= (containsKey!564 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196) e!584743)))

(declare-fun b!1034348 () Bool)

(declare-fun e!584744 () Bool)

(assert (=> b!1034348 (= e!584743 e!584744)))

(declare-fun res!690951 () Bool)

(assert (=> b!1034348 (=> (not res!690951) (not e!584744))))

(assert (=> b!1034348 (= res!690951 (and (or (not ((_ is Cons!22018) (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))) (bvsle (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))) lt!456196)) ((_ is Cons!22018) (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))) (bvslt (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))))) lt!456196)))))

(declare-fun b!1034349 () Bool)

(assert (=> b!1034349 (= e!584744 (containsKey!564 (t!31227 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))) lt!456196))))

(assert (= (and d!124197 (not res!690950)) b!1034348))

(assert (= (and b!1034348 res!690951) b!1034349))

(declare-fun m!954645 () Bool)

(assert (=> b!1034349 m!954645))

(assert (=> d!123815 d!124197))

(assert (=> b!1033823 d!123819))

(assert (=> b!1033771 d!124001))

(assert (=> b!1033771 d!124003))

(declare-fun d!124199 () Bool)

(declare-fun res!690952 () Bool)

(declare-fun e!584745 () Bool)

(assert (=> d!124199 (=> res!690952 e!584745)))

(assert (=> d!124199 (= res!690952 (and ((_ is Cons!22018) (toList!6951 lt!456160)) (= (_1!7927 (h!23220 (toList!6951 lt!456160))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!124199 (= (containsKey!564 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) e!584745)))

(declare-fun b!1034350 () Bool)

(declare-fun e!584746 () Bool)

(assert (=> b!1034350 (= e!584745 e!584746)))

(declare-fun res!690953 () Bool)

(assert (=> b!1034350 (=> (not res!690953) (not e!584746))))

(assert (=> b!1034350 (= res!690953 (and (or (not ((_ is Cons!22018) (toList!6951 lt!456160))) (bvsle (_1!7927 (h!23220 (toList!6951 lt!456160))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))) ((_ is Cons!22018) (toList!6951 lt!456160)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456160))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun b!1034351 () Bool)

(assert (=> b!1034351 (= e!584746 (containsKey!564 (t!31227 (toList!6951 lt!456160)) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124199 (not res!690952)) b!1034350))

(assert (= (and b!1034350 res!690953) b!1034351))

(assert (=> b!1034351 m!953435))

(declare-fun m!954647 () Bool)

(assert (=> b!1034351 m!954647))

(assert (=> d!123897 d!124199))

(assert (=> b!1033715 d!123819))

(declare-fun d!124201 () Bool)

(declare-fun res!690958 () Bool)

(declare-fun e!584751 () Bool)

(assert (=> d!124201 (=> res!690958 e!584751)))

(assert (=> d!124201 (= res!690958 (or ((_ is Nil!22019) lt!456388) ((_ is Nil!22019) (t!31227 lt!456388))))))

(assert (=> d!124201 (= (isStrictlySorted!714 lt!456388) e!584751)))

(declare-fun b!1034356 () Bool)

(declare-fun e!584752 () Bool)

(assert (=> b!1034356 (= e!584751 e!584752)))

(declare-fun res!690959 () Bool)

(assert (=> b!1034356 (=> (not res!690959) (not e!584752))))

(assert (=> b!1034356 (= res!690959 (bvslt (_1!7927 (h!23220 lt!456388)) (_1!7927 (h!23220 (t!31227 lt!456388)))))))

(declare-fun b!1034357 () Bool)

(assert (=> b!1034357 (= e!584752 (isStrictlySorted!714 (t!31227 lt!456388)))))

(assert (= (and d!124201 (not res!690958)) b!1034356))

(assert (= (and b!1034356 res!690959) b!1034357))

(declare-fun m!954649 () Bool)

(assert (=> b!1034357 m!954649))

(assert (=> d!123905 d!124201))

(declare-fun d!124203 () Bool)

(declare-fun res!690960 () Bool)

(declare-fun e!584753 () Bool)

(assert (=> d!124203 (=> res!690960 e!584753)))

(assert (=> d!124203 (= res!690960 (or ((_ is Nil!22019) (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))) ((_ is Nil!22019) (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))))))))

(assert (=> d!124203 (= (isStrictlySorted!714 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427)))) e!584753)))

(declare-fun b!1034358 () Bool)

(declare-fun e!584754 () Bool)

(assert (=> b!1034358 (= e!584753 e!584754)))

(declare-fun res!690961 () Bool)

(assert (=> b!1034358 (=> (not res!690961) (not e!584754))))

(assert (=> b!1034358 (= res!690961 (bvslt (_1!7927 (h!23220 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))) (_1!7927 (h!23220 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))))))))

(declare-fun b!1034359 () Bool)

(assert (=> b!1034359 (= e!584754 (isStrictlySorted!714 (t!31227 (toList!6951 (getCurrentListMap!3957 (_keys!11404 thiss!1427) (_values!6250 thiss!1427) (mask!30079 thiss!1427) (extraKeys!5959 thiss!1427) (zeroValue!6063 thiss!1427) (minValue!6063 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6227 thiss!1427))))))))

(assert (= (and d!124203 (not res!690960)) b!1034358))

(assert (= (and b!1034358 res!690961) b!1034359))

(assert (=> b!1034359 m!954621))

(assert (=> d!123905 d!124203))

(declare-fun lt!456545 () Bool)

(declare-fun d!124205 () Bool)

(assert (=> d!124205 (= lt!456545 (select (content!516 (toList!6951 lt!456308)) (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun e!584756 () Bool)

(assert (=> d!124205 (= lt!456545 e!584756)))

(declare-fun res!690962 () Bool)

(assert (=> d!124205 (=> (not res!690962) (not e!584756))))

(assert (=> d!124205 (= res!690962 ((_ is Cons!22018) (toList!6951 lt!456308)))))

(assert (=> d!124205 (= (contains!6036 (toList!6951 lt!456308) (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456545)))

(declare-fun b!1034360 () Bool)

(declare-fun e!584755 () Bool)

(assert (=> b!1034360 (= e!584756 e!584755)))

(declare-fun res!690963 () Bool)

(assert (=> b!1034360 (=> res!690963 e!584755)))

(assert (=> b!1034360 (= res!690963 (= (h!23220 (toList!6951 lt!456308)) (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034361 () Bool)

(assert (=> b!1034361 (= e!584755 (contains!6036 (t!31227 (toList!6951 lt!456308)) (ite (or c!104333 c!104335) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 lt!456100) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (= (and d!124205 res!690962) b!1034360))

(assert (= (and b!1034360 (not res!690963)) b!1034361))

(declare-fun m!954651 () Bool)

(assert (=> d!124205 m!954651))

(declare-fun m!954653 () Bool)

(assert (=> d!124205 m!954653))

(declare-fun m!954655 () Bool)

(assert (=> b!1034361 m!954655))

(assert (=> b!1033768 d!124205))

(assert (=> d!123841 d!123831))

(assert (=> d!123841 d!123833))

(assert (=> d!123841 d!123835))

(declare-fun d!124207 () Bool)

(declare-fun e!584757 () Bool)

(assert (=> d!124207 e!584757))

(declare-fun res!690964 () Bool)

(assert (=> d!124207 (=> res!690964 e!584757)))

(declare-fun lt!456546 () Bool)

(assert (=> d!124207 (= res!690964 (not lt!456546))))

(declare-fun lt!456547 () Bool)

(assert (=> d!124207 (= lt!456546 lt!456547)))

(declare-fun lt!456548 () Unit!33810)

(declare-fun e!584758 () Unit!33810)

(assert (=> d!124207 (= lt!456548 e!584758)))

(declare-fun c!104551 () Bool)

(assert (=> d!124207 (= c!104551 lt!456547)))

(assert (=> d!124207 (= lt!456547 (containsKey!564 (toList!6951 lt!456176) lt!456169))))

(assert (=> d!124207 (= (contains!6035 lt!456176 lt!456169) lt!456546)))

(declare-fun b!1034362 () Bool)

(declare-fun lt!456549 () Unit!33810)

(assert (=> b!1034362 (= e!584758 lt!456549)))

(assert (=> b!1034362 (= lt!456549 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456176) lt!456169))))

(assert (=> b!1034362 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456176) lt!456169))))

(declare-fun b!1034363 () Bool)

(declare-fun Unit!33842 () Unit!33810)

(assert (=> b!1034363 (= e!584758 Unit!33842)))

(declare-fun b!1034364 () Bool)

(assert (=> b!1034364 (= e!584757 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456176) lt!456169)))))

(assert (= (and d!124207 c!104551) b!1034362))

(assert (= (and d!124207 (not c!104551)) b!1034363))

(assert (= (and d!124207 (not res!690964)) b!1034364))

(declare-fun m!954657 () Bool)

(assert (=> d!124207 m!954657))

(declare-fun m!954659 () Bool)

(assert (=> b!1034362 m!954659))

(assert (=> b!1034362 m!953749))

(assert (=> b!1034362 m!953749))

(declare-fun m!954661 () Bool)

(assert (=> b!1034362 m!954661))

(assert (=> b!1034364 m!953749))

(assert (=> b!1034364 m!953749))

(assert (=> b!1034364 m!954661))

(assert (=> d!123841 d!124207))

(declare-fun d!124209 () Bool)

(assert (=> d!124209 (= (apply!941 (+!3064 lt!456176 (tuple2!15835 lt!456173 lt!456100)) lt!456169) (apply!941 lt!456176 lt!456169))))

(assert (=> d!124209 true))

(declare-fun _$34!1164 () Unit!33810)

(assert (=> d!124209 (= (choose!1703 lt!456176 lt!456173 lt!456100 lt!456169) _$34!1164)))

(declare-fun bs!30251 () Bool)

(assert (= bs!30251 d!124209))

(assert (=> bs!30251 m!953457))

(assert (=> bs!30251 m!953457))

(assert (=> bs!30251 m!953459))

(assert (=> bs!30251 m!953453))

(assert (=> d!123841 d!124209))

(declare-fun d!124211 () Bool)

(declare-fun res!690965 () Bool)

(declare-fun e!584759 () Bool)

(assert (=> d!124211 (=> res!690965 e!584759)))

(assert (=> d!124211 (= res!690965 (and ((_ is Cons!22018) (toList!6951 lt!456183)) (= (_1!7927 (h!23220 (toList!6951 lt!456183))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124211 (= (containsKey!564 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000) e!584759)))

(declare-fun b!1034365 () Bool)

(declare-fun e!584760 () Bool)

(assert (=> b!1034365 (= e!584759 e!584760)))

(declare-fun res!690966 () Bool)

(assert (=> b!1034365 (=> (not res!690966) (not e!584760))))

(assert (=> b!1034365 (= res!690966 (and (or (not ((_ is Cons!22018) (toList!6951 lt!456183))) (bvsle (_1!7927 (h!23220 (toList!6951 lt!456183))) #b0000000000000000000000000000000000000000000000000000000000000000)) ((_ is Cons!22018) (toList!6951 lt!456183)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456183))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1034366 () Bool)

(assert (=> b!1034366 (= e!584760 (containsKey!564 (t!31227 (toList!6951 lt!456183)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124211 (not res!690965)) b!1034365))

(assert (= (and b!1034365 res!690966) b!1034366))

(declare-fun m!954663 () Bool)

(assert (=> b!1034366 m!954663))

(assert (=> d!123903 d!124211))

(declare-fun d!124213 () Bool)

(declare-fun e!584761 () Bool)

(assert (=> d!124213 e!584761))

(declare-fun res!690967 () Bool)

(assert (=> d!124213 (=> res!690967 e!584761)))

(declare-fun lt!456550 () Bool)

(assert (=> d!124213 (= res!690967 (not lt!456550))))

(declare-fun lt!456551 () Bool)

(assert (=> d!124213 (= lt!456550 lt!456551)))

(declare-fun lt!456552 () Unit!33810)

(declare-fun e!584762 () Unit!33810)

(assert (=> d!124213 (= lt!456552 e!584762)))

(declare-fun c!104552 () Bool)

(assert (=> d!124213 (= c!104552 lt!456551)))

(assert (=> d!124213 (= lt!456551 (containsKey!564 (toList!6951 lt!456292) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(assert (=> d!124213 (= (contains!6035 lt!456292 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) lt!456550)))

(declare-fun b!1034367 () Bool)

(declare-fun lt!456553 () Unit!33810)

(assert (=> b!1034367 (= e!584762 lt!456553)))

(assert (=> b!1034367 (= lt!456553 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456292) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(assert (=> b!1034367 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456292) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034368 () Bool)

(declare-fun Unit!33843 () Unit!33810)

(assert (=> b!1034368 (= e!584762 Unit!33843)))

(declare-fun b!1034369 () Bool)

(assert (=> b!1034369 (= e!584761 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456292) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124213 c!104552) b!1034367))

(assert (= (and d!124213 (not c!104552)) b!1034368))

(assert (= (and d!124213 (not res!690967)) b!1034369))

(declare-fun m!954665 () Bool)

(assert (=> d!124213 m!954665))

(declare-fun m!954667 () Bool)

(assert (=> b!1034367 m!954667))

(assert (=> b!1034367 m!953765))

(assert (=> b!1034367 m!953765))

(declare-fun m!954669 () Bool)

(assert (=> b!1034367 m!954669))

(assert (=> b!1034369 m!953765))

(assert (=> b!1034369 m!953765))

(assert (=> b!1034369 m!954669))

(assert (=> d!123837 d!124213))

(declare-fun b!1034373 () Bool)

(declare-fun e!584764 () Option!642)

(assert (=> b!1034373 (= e!584764 None!640)))

(declare-fun b!1034371 () Bool)

(declare-fun e!584763 () Option!642)

(assert (=> b!1034371 (= e!584763 e!584764)))

(declare-fun c!104554 () Bool)

(assert (=> b!1034371 (= c!104554 (and ((_ is Cons!22018) lt!456291) (not (= (_1!7927 (h!23220 lt!456291)) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034370 () Bool)

(assert (=> b!1034370 (= e!584763 (Some!641 (_2!7927 (h!23220 lt!456291))))))

(declare-fun b!1034372 () Bool)

(assert (=> b!1034372 (= e!584764 (getValueByKey!591 (t!31227 lt!456291) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(declare-fun d!124215 () Bool)

(declare-fun c!104553 () Bool)

(assert (=> d!124215 (= c!104553 (and ((_ is Cons!22018) lt!456291) (= (_1!7927 (h!23220 lt!456291)) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))

(assert (=> d!124215 (= (getValueByKey!591 lt!456291 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) e!584763)))

(assert (= (and d!124215 c!104553) b!1034370))

(assert (= (and d!124215 (not c!104553)) b!1034371))

(assert (= (and b!1034371 c!104554) b!1034372))

(assert (= (and b!1034371 (not c!104554)) b!1034373))

(declare-fun m!954671 () Bool)

(assert (=> b!1034372 m!954671))

(assert (=> d!123837 d!124215))

(declare-fun d!124217 () Bool)

(assert (=> d!124217 (= (getValueByKey!591 lt!456291 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456554 () Unit!33810)

(assert (=> d!124217 (= lt!456554 (choose!1706 lt!456291 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(declare-fun e!584765 () Bool)

(assert (=> d!124217 e!584765))

(declare-fun res!690968 () Bool)

(assert (=> d!124217 (=> (not res!690968) (not e!584765))))

(assert (=> d!124217 (= res!690968 (isStrictlySorted!714 lt!456291))))

(assert (=> d!124217 (= (lemmaContainsTupThenGetReturnValue!280 lt!456291 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) lt!456554)))

(declare-fun b!1034374 () Bool)

(declare-fun res!690969 () Bool)

(assert (=> b!1034374 (=> (not res!690969) (not e!584765))))

(assert (=> b!1034374 (= res!690969 (containsKey!564 lt!456291 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034375 () Bool)

(assert (=> b!1034375 (= e!584765 (contains!6036 lt!456291 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124217 res!690968) b!1034374))

(assert (= (and b!1034374 res!690969) b!1034375))

(assert (=> d!124217 m!953759))

(declare-fun m!954673 () Bool)

(assert (=> d!124217 m!954673))

(declare-fun m!954675 () Bool)

(assert (=> d!124217 m!954675))

(declare-fun m!954677 () Bool)

(assert (=> b!1034374 m!954677))

(declare-fun m!954679 () Bool)

(assert (=> b!1034375 m!954679))

(assert (=> d!123837 d!124217))

(declare-fun bm!43728 () Bool)

(declare-fun call!43732 () List!22022)

(declare-fun call!43731 () List!22022)

(assert (=> bm!43728 (= call!43732 call!43731)))

(declare-fun b!1034376 () Bool)

(declare-fun e!584768 () List!22022)

(declare-fun call!43733 () List!22022)

(assert (=> b!1034376 (= e!584768 call!43733)))

(declare-fun b!1034377 () Bool)

(declare-fun e!584767 () List!22022)

(declare-fun e!584770 () List!22022)

(assert (=> b!1034377 (= e!584767 e!584770)))

(declare-fun c!104557 () Bool)

(assert (=> b!1034377 (= c!104557 (and ((_ is Cons!22018) (toList!6951 lt!456175)) (= (_1!7927 (h!23220 (toList!6951 lt!456175))) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034378 () Bool)

(declare-fun res!690970 () Bool)

(declare-fun e!584766 () Bool)

(assert (=> b!1034378 (=> (not res!690970) (not e!584766))))

(declare-fun lt!456555 () List!22022)

(assert (=> b!1034378 (= res!690970 (containsKey!564 lt!456555 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034379 () Bool)

(assert (=> b!1034379 (= e!584767 call!43731)))

(declare-fun b!1034380 () Bool)

(declare-fun c!104555 () Bool)

(declare-fun e!584769 () List!22022)

(assert (=> b!1034380 (= e!584769 (ite c!104557 (t!31227 (toList!6951 lt!456175)) (ite c!104555 (Cons!22018 (h!23220 (toList!6951 lt!456175)) (t!31227 (toList!6951 lt!456175))) Nil!22019)))))

(declare-fun c!104558 () Bool)

(declare-fun bm!43729 () Bool)

(assert (=> bm!43729 (= call!43731 ($colon$colon!605 e!584769 (ite c!104558 (h!23220 (toList!6951 lt!456175)) (tuple2!15835 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))))

(declare-fun c!104556 () Bool)

(assert (=> bm!43729 (= c!104556 c!104558)))

(declare-fun d!124219 () Bool)

(assert (=> d!124219 e!584766))

(declare-fun res!690971 () Bool)

(assert (=> d!124219 (=> (not res!690971) (not e!584766))))

(assert (=> d!124219 (= res!690971 (isStrictlySorted!714 lt!456555))))

(assert (=> d!124219 (= lt!456555 e!584767)))

(assert (=> d!124219 (= c!104558 (and ((_ is Cons!22018) (toList!6951 lt!456175)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456175))) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))

(assert (=> d!124219 (isStrictlySorted!714 (toList!6951 lt!456175))))

(assert (=> d!124219 (= (insertStrictlySorted!372 (toList!6951 lt!456175) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))) lt!456555)))

(declare-fun bm!43730 () Bool)

(assert (=> bm!43730 (= call!43733 call!43732)))

(declare-fun b!1034381 () Bool)

(assert (=> b!1034381 (= c!104555 (and ((_ is Cons!22018) (toList!6951 lt!456175)) (bvsgt (_1!7927 (h!23220 (toList!6951 lt!456175))) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))

(assert (=> b!1034381 (= e!584770 e!584768)))

(declare-fun b!1034382 () Bool)

(assert (=> b!1034382 (= e!584768 call!43733)))

(declare-fun b!1034383 () Bool)

(assert (=> b!1034383 (= e!584766 (contains!6036 lt!456555 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034384 () Bool)

(assert (=> b!1034384 (= e!584769 (insertStrictlySorted!372 (t!31227 (toList!6951 lt!456175)) (_1!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456172 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034385 () Bool)

(assert (=> b!1034385 (= e!584770 call!43732)))

(assert (= (and d!124219 c!104558) b!1034379))

(assert (= (and d!124219 (not c!104558)) b!1034377))

(assert (= (and b!1034377 c!104557) b!1034385))

(assert (= (and b!1034377 (not c!104557)) b!1034381))

(assert (= (and b!1034381 c!104555) b!1034376))

(assert (= (and b!1034381 (not c!104555)) b!1034382))

(assert (= (or b!1034376 b!1034382) bm!43730))

(assert (= (or b!1034385 bm!43730) bm!43728))

(assert (= (or b!1034379 bm!43728) bm!43729))

(assert (= (and bm!43729 c!104556) b!1034384))

(assert (= (and bm!43729 (not c!104556)) b!1034380))

(assert (= (and d!124219 res!690971) b!1034378))

(assert (= (and b!1034378 res!690970) b!1034383))

(declare-fun m!954681 () Bool)

(assert (=> b!1034378 m!954681))

(declare-fun m!954683 () Bool)

(assert (=> d!124219 m!954683))

(declare-fun m!954685 () Bool)

(assert (=> d!124219 m!954685))

(declare-fun m!954687 () Bool)

(assert (=> b!1034384 m!954687))

(declare-fun m!954689 () Bool)

(assert (=> bm!43729 m!954689))

(declare-fun m!954691 () Bool)

(assert (=> b!1034383 m!954691))

(assert (=> d!123837 d!124219))

(assert (=> d!123845 d!123825))

(assert (=> d!123845 d!123839))

(declare-fun d!124221 () Bool)

(assert (=> d!124221 (contains!6035 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)) lt!456168)))

(assert (=> d!124221 true))

(declare-fun _$35!438 () Unit!33810)

(assert (=> d!124221 (= (choose!1704 lt!456157 lt!456165 lt!456100 lt!456168) _$35!438)))

(declare-fun bs!30252 () Bool)

(assert (= bs!30252 d!124221))

(assert (=> bs!30252 m!953471))

(assert (=> bs!30252 m!953471))

(assert (=> bs!30252 m!953473))

(assert (=> d!123845 d!124221))

(declare-fun d!124223 () Bool)

(declare-fun e!584771 () Bool)

(assert (=> d!124223 e!584771))

(declare-fun res!690972 () Bool)

(assert (=> d!124223 (=> res!690972 e!584771)))

(declare-fun lt!456556 () Bool)

(assert (=> d!124223 (= res!690972 (not lt!456556))))

(declare-fun lt!456557 () Bool)

(assert (=> d!124223 (= lt!456556 lt!456557)))

(declare-fun lt!456558 () Unit!33810)

(declare-fun e!584772 () Unit!33810)

(assert (=> d!124223 (= lt!456558 e!584772)))

(declare-fun c!104559 () Bool)

(assert (=> d!124223 (= c!104559 lt!456557)))

(assert (=> d!124223 (= lt!456557 (containsKey!564 (toList!6951 lt!456157) lt!456168))))

(assert (=> d!124223 (= (contains!6035 lt!456157 lt!456168) lt!456556)))

(declare-fun b!1034386 () Bool)

(declare-fun lt!456559 () Unit!33810)

(assert (=> b!1034386 (= e!584772 lt!456559)))

(assert (=> b!1034386 (= lt!456559 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456157) lt!456168))))

(assert (=> b!1034386 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456157) lt!456168))))

(declare-fun b!1034387 () Bool)

(declare-fun Unit!33844 () Unit!33810)

(assert (=> b!1034387 (= e!584772 Unit!33844)))

(declare-fun b!1034388 () Bool)

(assert (=> b!1034388 (= e!584771 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456157) lt!456168)))))

(assert (= (and d!124223 c!104559) b!1034386))

(assert (= (and d!124223 (not c!104559)) b!1034387))

(assert (= (and d!124223 (not res!690972)) b!1034388))

(declare-fun m!954693 () Bool)

(assert (=> d!124223 m!954693))

(declare-fun m!954695 () Bool)

(assert (=> b!1034386 m!954695))

(declare-fun m!954697 () Bool)

(assert (=> b!1034386 m!954697))

(assert (=> b!1034386 m!954697))

(declare-fun m!954699 () Bool)

(assert (=> b!1034386 m!954699))

(assert (=> b!1034388 m!954697))

(assert (=> b!1034388 m!954697))

(assert (=> b!1034388 m!954699))

(assert (=> d!123845 d!124223))

(declare-fun d!124225 () Bool)

(assert (=> d!124225 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168))))

(declare-fun lt!456560 () Unit!33810)

(assert (=> d!124225 (= lt!456560 (choose!1705 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168))))

(declare-fun e!584773 () Bool)

(assert (=> d!124225 e!584773))

(declare-fun res!690973 () Bool)

(assert (=> d!124225 (=> (not res!690973) (not e!584773))))

(assert (=> d!124225 (= res!690973 (isStrictlySorted!714 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100)))))))

(assert (=> d!124225 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168) lt!456560)))

(declare-fun b!1034389 () Bool)

(assert (=> b!1034389 (= e!584773 (containsKey!564 (toList!6951 (+!3064 lt!456157 (tuple2!15835 lt!456165 lt!456100))) lt!456168))))

(assert (= (and d!124225 res!690973) b!1034389))

(assert (=> d!124225 m!953725))

(assert (=> d!124225 m!953725))

(assert (=> d!124225 m!953727))

(declare-fun m!954701 () Bool)

(assert (=> d!124225 m!954701))

(declare-fun m!954703 () Bool)

(assert (=> d!124225 m!954703))

(assert (=> b!1034389 m!953721))

(assert (=> b!1033753 d!124225))

(assert (=> b!1033753 d!124005))

(assert (=> b!1033753 d!124007))

(declare-fun d!124227 () Bool)

(declare-fun e!584774 () Bool)

(assert (=> d!124227 e!584774))

(declare-fun res!690974 () Bool)

(assert (=> d!124227 (=> res!690974 e!584774)))

(declare-fun lt!456561 () Bool)

(assert (=> d!124227 (= res!690974 (not lt!456561))))

(declare-fun lt!456562 () Bool)

(assert (=> d!124227 (= lt!456561 lt!456562)))

(declare-fun lt!456563 () Unit!33810)

(declare-fun e!584775 () Unit!33810)

(assert (=> d!124227 (= lt!456563 e!584775)))

(declare-fun c!104560 () Bool)

(assert (=> d!124227 (= c!104560 lt!456562)))

(assert (=> d!124227 (= lt!456562 (containsKey!564 (toList!6951 lt!456362) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124227 (= (contains!6035 lt!456362 #b1000000000000000000000000000000000000000000000000000000000000000) lt!456561)))

(declare-fun b!1034390 () Bool)

(declare-fun lt!456564 () Unit!33810)

(assert (=> b!1034390 (= e!584775 lt!456564)))

(assert (=> b!1034390 (= lt!456564 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456362) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1034390 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456362) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1034391 () Bool)

(declare-fun Unit!33845 () Unit!33810)

(assert (=> b!1034391 (= e!584775 Unit!33845)))

(declare-fun b!1034392 () Bool)

(assert (=> b!1034392 (= e!584774 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456362) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124227 c!104560) b!1034390))

(assert (= (and d!124227 (not c!104560)) b!1034391))

(assert (= (and d!124227 (not res!690974)) b!1034392))

(declare-fun m!954705 () Bool)

(assert (=> d!124227 m!954705))

(declare-fun m!954707 () Bool)

(assert (=> b!1034390 m!954707))

(assert (=> b!1034390 m!954435))

(assert (=> b!1034390 m!954435))

(declare-fun m!954709 () Bool)

(assert (=> b!1034390 m!954709))

(assert (=> b!1034392 m!954435))

(assert (=> b!1034392 m!954435))

(assert (=> b!1034392 m!954709))

(assert (=> bm!43687 d!124227))

(assert (=> b!1033837 d!123929))

(declare-fun d!124229 () Bool)

(declare-fun e!584776 () Bool)

(assert (=> d!124229 e!584776))

(declare-fun res!690975 () Bool)

(assert (=> d!124229 (=> res!690975 e!584776)))

(declare-fun lt!456565 () Bool)

(assert (=> d!124229 (= res!690975 (not lt!456565))))

(declare-fun lt!456566 () Bool)

(assert (=> d!124229 (= lt!456565 lt!456566)))

(declare-fun lt!456567 () Unit!33810)

(declare-fun e!584777 () Unit!33810)

(assert (=> d!124229 (= lt!456567 e!584777)))

(declare-fun c!104561 () Bool)

(assert (=> d!124229 (= c!104561 lt!456566)))

(assert (=> d!124229 (= lt!456566 (containsKey!564 (toList!6951 lt!456231) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124229 (= (contains!6035 lt!456231 #b1000000000000000000000000000000000000000000000000000000000000000) lt!456565)))

(declare-fun b!1034393 () Bool)

(declare-fun lt!456568 () Unit!33810)

(assert (=> b!1034393 (= e!584777 lt!456568)))

(assert (=> b!1034393 (= lt!456568 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456231) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1034393 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456231) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1034394 () Bool)

(declare-fun Unit!33846 () Unit!33810)

(assert (=> b!1034394 (= e!584777 Unit!33846)))

(declare-fun b!1034395 () Bool)

(assert (=> b!1034395 (= e!584776 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456231) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124229 c!104561) b!1034393))

(assert (= (and d!124229 (not c!104561)) b!1034394))

(assert (= (and d!124229 (not res!690975)) b!1034395))

(declare-fun m!954711 () Bool)

(assert (=> d!124229 m!954711))

(declare-fun m!954713 () Bool)

(assert (=> b!1034393 m!954713))

(declare-fun m!954715 () Bool)

(assert (=> b!1034393 m!954715))

(assert (=> b!1034393 m!954715))

(declare-fun m!954717 () Bool)

(assert (=> b!1034393 m!954717))

(assert (=> b!1034395 m!954715))

(assert (=> b!1034395 m!954715))

(assert (=> b!1034395 m!954717))

(assert (=> b!1033711 d!124229))

(declare-fun d!124231 () Bool)

(declare-fun e!584778 () Bool)

(assert (=> d!124231 e!584778))

(declare-fun res!690976 () Bool)

(assert (=> d!124231 (=> res!690976 e!584778)))

(declare-fun lt!456569 () Bool)

(assert (=> d!124231 (= res!690976 (not lt!456569))))

(declare-fun lt!456570 () Bool)

(assert (=> d!124231 (= lt!456569 lt!456570)))

(declare-fun lt!456571 () Unit!33810)

(declare-fun e!584779 () Unit!33810)

(assert (=> d!124231 (= lt!456571 e!584779)))

(declare-fun c!104562 () Bool)

(assert (=> d!124231 (= c!104562 lt!456570)))

(assert (=> d!124231 (= lt!456570 (containsKey!564 (toList!6951 lt!456244) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!124231 (= (contains!6035 lt!456244 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) lt!456569)))

(declare-fun b!1034396 () Bool)

(declare-fun lt!456572 () Unit!33810)

(assert (=> b!1034396 (= e!584779 lt!456572)))

(assert (=> b!1034396 (= lt!456572 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456244) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> b!1034396 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456244) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034397 () Bool)

(declare-fun Unit!33847 () Unit!33810)

(assert (=> b!1034397 (= e!584779 Unit!33847)))

(declare-fun b!1034398 () Bool)

(assert (=> b!1034398 (= e!584778 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456244) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (= (and d!124231 c!104562) b!1034396))

(assert (= (and d!124231 (not c!104562)) b!1034397))

(assert (= (and d!124231 (not res!690976)) b!1034398))

(declare-fun m!954719 () Bool)

(assert (=> d!124231 m!954719))

(declare-fun m!954721 () Bool)

(assert (=> b!1034396 m!954721))

(assert (=> b!1034396 m!953613))

(assert (=> b!1034396 m!953613))

(declare-fun m!954723 () Bool)

(assert (=> b!1034396 m!954723))

(assert (=> b!1034398 m!953613))

(assert (=> b!1034398 m!953613))

(assert (=> b!1034398 m!954723))

(assert (=> d!123785 d!124231))

(declare-fun b!1034402 () Bool)

(declare-fun e!584781 () Option!642)

(assert (=> b!1034402 (= e!584781 None!640)))

(declare-fun b!1034400 () Bool)

(declare-fun e!584780 () Option!642)

(assert (=> b!1034400 (= e!584780 e!584781)))

(declare-fun c!104564 () Bool)

(assert (=> b!1034400 (= c!104564 (and ((_ is Cons!22018) lt!456243) (not (= (_1!7927 (h!23220 lt!456243)) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))))

(declare-fun b!1034399 () Bool)

(assert (=> b!1034399 (= e!584780 (Some!641 (_2!7927 (h!23220 lt!456243))))))

(declare-fun b!1034401 () Bool)

(assert (=> b!1034401 (= e!584781 (getValueByKey!591 (t!31227 lt!456243) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun d!124233 () Bool)

(declare-fun c!104563 () Bool)

(assert (=> d!124233 (= c!104563 (and ((_ is Cons!22018) lt!456243) (= (_1!7927 (h!23220 lt!456243)) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (=> d!124233 (= (getValueByKey!591 lt!456243 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) e!584780)))

(assert (= (and d!124233 c!104563) b!1034399))

(assert (= (and d!124233 (not c!104563)) b!1034400))

(assert (= (and b!1034400 c!104564) b!1034401))

(assert (= (and b!1034400 (not c!104564)) b!1034402))

(declare-fun m!954725 () Bool)

(assert (=> b!1034401 m!954725))

(assert (=> d!123785 d!124233))

(declare-fun d!124235 () Bool)

(assert (=> d!124235 (= (getValueByKey!591 lt!456243 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) (Some!641 (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun lt!456573 () Unit!33810)

(assert (=> d!124235 (= lt!456573 (choose!1706 lt!456243 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun e!584782 () Bool)

(assert (=> d!124235 e!584782))

(declare-fun res!690977 () Bool)

(assert (=> d!124235 (=> (not res!690977) (not e!584782))))

(assert (=> d!124235 (= res!690977 (isStrictlySorted!714 lt!456243))))

(assert (=> d!124235 (= (lemmaContainsTupThenGetReturnValue!280 lt!456243 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) lt!456573)))

(declare-fun b!1034403 () Bool)

(declare-fun res!690978 () Bool)

(assert (=> b!1034403 (=> (not res!690978) (not e!584782))))

(assert (=> b!1034403 (= res!690978 (containsKey!564 lt!456243 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034404 () Bool)

(assert (=> b!1034404 (= e!584782 (contains!6036 lt!456243 (tuple2!15835 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (= (and d!124235 res!690977) b!1034403))

(assert (= (and b!1034403 res!690978) b!1034404))

(assert (=> d!124235 m!953607))

(declare-fun m!954727 () Bool)

(assert (=> d!124235 m!954727))

(declare-fun m!954729 () Bool)

(assert (=> d!124235 m!954729))

(declare-fun m!954731 () Bool)

(assert (=> b!1034403 m!954731))

(declare-fun m!954733 () Bool)

(assert (=> b!1034404 m!954733))

(assert (=> d!123785 d!124235))

(declare-fun bm!43731 () Bool)

(declare-fun call!43735 () List!22022)

(declare-fun call!43734 () List!22022)

(assert (=> bm!43731 (= call!43735 call!43734)))

(declare-fun b!1034405 () Bool)

(declare-fun e!584785 () List!22022)

(declare-fun call!43736 () List!22022)

(assert (=> b!1034405 (= e!584785 call!43736)))

(declare-fun b!1034406 () Bool)

(declare-fun e!584784 () List!22022)

(declare-fun e!584787 () List!22022)

(assert (=> b!1034406 (= e!584784 e!584787)))

(declare-fun c!104567 () Bool)

(assert (=> b!1034406 (= c!104567 (and ((_ is Cons!22018) (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670)))) (= (_1!7927 (h!23220 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670))))) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034407 () Bool)

(declare-fun res!690979 () Bool)

(declare-fun e!584783 () Bool)

(assert (=> b!1034407 (=> (not res!690979) (not e!584783))))

(declare-fun lt!456574 () List!22022)

(assert (=> b!1034407 (= res!690979 (containsKey!564 lt!456574 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034408 () Bool)

(assert (=> b!1034408 (= e!584784 call!43734)))

(declare-fun c!104565 () Bool)

(declare-fun b!1034409 () Bool)

(declare-fun e!584786 () List!22022)

(assert (=> b!1034409 (= e!584786 (ite c!104567 (t!31227 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670)))) (ite c!104565 (Cons!22018 (h!23220 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670)))) (t!31227 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670))))) Nil!22019)))))

(declare-fun bm!43732 () Bool)

(declare-fun c!104568 () Bool)

(assert (=> bm!43732 (= call!43734 ($colon$colon!605 e!584786 (ite c!104568 (h!23220 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670)))) (tuple2!15835 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))))

(declare-fun c!104566 () Bool)

(assert (=> bm!43732 (= c!104566 c!104568)))

(declare-fun d!124237 () Bool)

(assert (=> d!124237 e!584783))

(declare-fun res!690980 () Bool)

(assert (=> d!124237 (=> (not res!690980) (not e!584783))))

(assert (=> d!124237 (= res!690980 (isStrictlySorted!714 lt!456574))))

(assert (=> d!124237 (= lt!456574 e!584784)))

(assert (=> d!124237 (= c!104568 (and ((_ is Cons!22018) (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670)))) (bvslt (_1!7927 (h!23220 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670))))) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (=> d!124237 (isStrictlySorted!714 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670))))))

(assert (=> d!124237 (= (insertStrictlySorted!372 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670))) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) lt!456574)))

(declare-fun bm!43733 () Bool)

(assert (=> bm!43733 (= call!43736 call!43735)))

(declare-fun b!1034410 () Bool)

(assert (=> b!1034410 (= c!104565 (and ((_ is Cons!22018) (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670)))) (bvsgt (_1!7927 (h!23220 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670))))) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (=> b!1034410 (= e!584787 e!584785)))

(declare-fun b!1034411 () Bool)

(assert (=> b!1034411 (= e!584785 call!43736)))

(declare-fun b!1034412 () Bool)

(assert (=> b!1034412 (= e!584783 (contains!6036 lt!456574 (tuple2!15835 (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034413 () Bool)

(assert (=> b!1034413 (= e!584786 (insertStrictlySorted!372 (t!31227 (toList!6951 (ite c!104339 call!43672 (ite c!104341 call!43673 call!43670)))) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (_2!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034414 () Bool)

(assert (=> b!1034414 (= e!584787 call!43735)))

(assert (= (and d!124237 c!104568) b!1034408))

(assert (= (and d!124237 (not c!104568)) b!1034406))

(assert (= (and b!1034406 c!104567) b!1034414))

(assert (= (and b!1034406 (not c!104567)) b!1034410))

(assert (= (and b!1034410 c!104565) b!1034405))

(assert (= (and b!1034410 (not c!104565)) b!1034411))

(assert (= (or b!1034405 b!1034411) bm!43733))

(assert (= (or b!1034414 bm!43733) bm!43731))

(assert (= (or b!1034408 bm!43731) bm!43732))

(assert (= (and bm!43732 c!104566) b!1034413))

(assert (= (and bm!43732 (not c!104566)) b!1034409))

(assert (= (and d!124237 res!690980) b!1034407))

(assert (= (and b!1034407 res!690979) b!1034412))

(declare-fun m!954735 () Bool)

(assert (=> b!1034407 m!954735))

(declare-fun m!954737 () Bool)

(assert (=> d!124237 m!954737))

(declare-fun m!954739 () Bool)

(assert (=> d!124237 m!954739))

(declare-fun m!954741 () Bool)

(assert (=> b!1034413 m!954741))

(declare-fun m!954743 () Bool)

(assert (=> bm!43732 m!954743))

(declare-fun m!954745 () Bool)

(assert (=> b!1034412 m!954745))

(assert (=> d!123785 d!124237))

(assert (=> d!123811 d!123789))

(declare-fun d!124239 () Bool)

(assert (=> d!124239 (= (apply!941 (+!3064 lt!456204 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) lt!456197) (apply!941 lt!456204 lt!456197))))

(assert (=> d!124239 true))

(declare-fun _$34!1165 () Unit!33810)

(assert (=> d!124239 (= (choose!1703 lt!456204 lt!456201 (zeroValue!6063 thiss!1427) lt!456197) _$34!1165)))

(declare-fun bs!30253 () Bool)

(assert (= bs!30253 d!124239))

(assert (=> bs!30253 m!953521))

(assert (=> bs!30253 m!953521))

(assert (=> bs!30253 m!953523))

(assert (=> bs!30253 m!953517))

(assert (=> d!123811 d!124239))

(assert (=> d!123811 d!123809))

(assert (=> d!123811 d!123805))

(declare-fun d!124241 () Bool)

(declare-fun e!584788 () Bool)

(assert (=> d!124241 e!584788))

(declare-fun res!690981 () Bool)

(assert (=> d!124241 (=> res!690981 e!584788)))

(declare-fun lt!456575 () Bool)

(assert (=> d!124241 (= res!690981 (not lt!456575))))

(declare-fun lt!456576 () Bool)

(assert (=> d!124241 (= lt!456575 lt!456576)))

(declare-fun lt!456577 () Unit!33810)

(declare-fun e!584789 () Unit!33810)

(assert (=> d!124241 (= lt!456577 e!584789)))

(declare-fun c!104569 () Bool)

(assert (=> d!124241 (= c!104569 lt!456576)))

(assert (=> d!124241 (= lt!456576 (containsKey!564 (toList!6951 lt!456204) lt!456197))))

(assert (=> d!124241 (= (contains!6035 lt!456204 lt!456197) lt!456575)))

(declare-fun b!1034415 () Bool)

(declare-fun lt!456578 () Unit!33810)

(assert (=> b!1034415 (= e!584789 lt!456578)))

(assert (=> b!1034415 (= lt!456578 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456204) lt!456197))))

(assert (=> b!1034415 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456204) lt!456197))))

(declare-fun b!1034416 () Bool)

(declare-fun Unit!33848 () Unit!33810)

(assert (=> b!1034416 (= e!584789 Unit!33848)))

(declare-fun b!1034417 () Bool)

(assert (=> b!1034417 (= e!584788 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456204) lt!456197)))))

(assert (= (and d!124241 c!104569) b!1034415))

(assert (= (and d!124241 (not c!104569)) b!1034416))

(assert (= (and d!124241 (not res!690981)) b!1034417))

(declare-fun m!954747 () Bool)

(assert (=> d!124241 m!954747))

(declare-fun m!954749 () Bool)

(assert (=> b!1034415 m!954749))

(assert (=> b!1034415 m!953621))

(assert (=> b!1034415 m!953621))

(declare-fun m!954751 () Bool)

(assert (=> b!1034415 m!954751))

(assert (=> b!1034417 m!953621))

(assert (=> b!1034417 m!953621))

(assert (=> b!1034417 m!954751))

(assert (=> d!123811 d!124241))

(declare-fun d!124243 () Bool)

(assert (=> d!124243 (= (apply!941 (+!3064 lt!456164 (tuple2!15835 lt!456166 (minValue!6063 thiss!1427))) lt!456174) (apply!941 lt!456164 lt!456174))))

(assert (=> d!124243 true))

(declare-fun _$34!1166 () Unit!33810)

(assert (=> d!124243 (= (choose!1703 lt!456164 lt!456166 (minValue!6063 thiss!1427) lt!456174) _$34!1166)))

(declare-fun bs!30254 () Bool)

(assert (= bs!30254 d!124243))

(assert (=> bs!30254 m!953461))

(assert (=> bs!30254 m!953461))

(assert (=> bs!30254 m!953477))

(assert (=> bs!30254 m!953469))

(assert (=> d!123851 d!124243))

(declare-fun d!124245 () Bool)

(declare-fun e!584790 () Bool)

(assert (=> d!124245 e!584790))

(declare-fun res!690982 () Bool)

(assert (=> d!124245 (=> res!690982 e!584790)))

(declare-fun lt!456579 () Bool)

(assert (=> d!124245 (= res!690982 (not lt!456579))))

(declare-fun lt!456580 () Bool)

(assert (=> d!124245 (= lt!456579 lt!456580)))

(declare-fun lt!456581 () Unit!33810)

(declare-fun e!584791 () Unit!33810)

(assert (=> d!124245 (= lt!456581 e!584791)))

(declare-fun c!104570 () Bool)

(assert (=> d!124245 (= c!104570 lt!456580)))

(assert (=> d!124245 (= lt!456580 (containsKey!564 (toList!6951 lt!456164) lt!456174))))

(assert (=> d!124245 (= (contains!6035 lt!456164 lt!456174) lt!456579)))

(declare-fun b!1034418 () Bool)

(declare-fun lt!456582 () Unit!33810)

(assert (=> b!1034418 (= e!584791 lt!456582)))

(assert (=> b!1034418 (= lt!456582 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456164) lt!456174))))

(assert (=> b!1034418 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456164) lt!456174))))

(declare-fun b!1034419 () Bool)

(declare-fun Unit!33849 () Unit!33810)

(assert (=> b!1034419 (= e!584791 Unit!33849)))

(declare-fun b!1034420 () Bool)

(assert (=> b!1034420 (= e!584790 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456164) lt!456174)))))

(assert (= (and d!124245 c!104570) b!1034418))

(assert (= (and d!124245 (not c!104570)) b!1034419))

(assert (= (and d!124245 (not res!690982)) b!1034420))

(declare-fun m!954753 () Bool)

(assert (=> d!124245 m!954753))

(declare-fun m!954755 () Bool)

(assert (=> b!1034418 m!954755))

(assert (=> b!1034418 m!953733))

(assert (=> b!1034418 m!953733))

(declare-fun m!954757 () Bool)

(assert (=> b!1034418 m!954757))

(assert (=> b!1034420 m!953733))

(assert (=> b!1034420 m!953733))

(assert (=> b!1034420 m!954757))

(assert (=> d!123851 d!124245))

(assert (=> d!123851 d!123847))

(assert (=> d!123851 d!123829))

(assert (=> d!123851 d!123849))

(declare-fun d!124247 () Bool)

(assert (=> d!124247 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun lt!456583 () Unit!33810)

(assert (=> d!124247 (= lt!456583 (choose!1705 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!584792 () Bool)

(assert (=> d!124247 e!584792))

(declare-fun res!690983 () Bool)

(assert (=> d!124247 (=> (not res!690983) (not e!584792))))

(assert (=> d!124247 (= res!690983 (isStrictlySorted!714 (toList!6951 lt!456160)))))

(assert (=> d!124247 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) lt!456583)))

(declare-fun b!1034421 () Bool)

(assert (=> b!1034421 (= e!584792 (containsKey!564 (toList!6951 lt!456160) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124247 res!690983) b!1034421))

(assert (=> d!124247 m!953435))

(assert (=> d!124247 m!953921))

(assert (=> d!124247 m!953921))

(assert (=> d!124247 m!953949))

(assert (=> d!124247 m!953435))

(declare-fun m!954759 () Bool)

(assert (=> d!124247 m!954759))

(assert (=> d!124247 m!954511))

(assert (=> b!1034421 m!953435))

(assert (=> b!1034421 m!953945))

(assert (=> b!1033870 d!124247))

(assert (=> b!1033870 d!124037))

(assert (=> b!1033870 d!124039))

(assert (=> b!1033896 d!124045))

(assert (=> b!1033896 d!124047))

(assert (=> b!1033797 d!123929))

(declare-fun d!124249 () Bool)

(assert (=> d!124249 (= (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) lt!456202)) (v!14890 (getValueByKey!591 (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) lt!456202)))))

(assert (=> d!123801 d!124249))

(declare-fun b!1034425 () Bool)

(declare-fun e!584794 () Option!642)

(assert (=> b!1034425 (= e!584794 None!640)))

(declare-fun b!1034423 () Bool)

(declare-fun e!584793 () Option!642)

(assert (=> b!1034423 (= e!584793 e!584794)))

(declare-fun c!104572 () Bool)

(assert (=> b!1034423 (= c!104572 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))) (not (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))) lt!456202))))))

(declare-fun b!1034422 () Bool)

(assert (=> b!1034422 (= e!584793 (Some!641 (_2!7927 (h!23220 (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))))))))

(declare-fun b!1034424 () Bool)

(assert (=> b!1034424 (= e!584794 (getValueByKey!591 (t!31227 (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))) lt!456202))))

(declare-fun d!124251 () Bool)

(declare-fun c!104571 () Bool)

(assert (=> d!124251 (= c!104571 (and ((_ is Cons!22018) (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427))))) (= (_1!7927 (h!23220 (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))))) lt!456202)))))

(assert (=> d!124251 (= (getValueByKey!591 (toList!6951 (+!3064 lt!456192 (tuple2!15835 lt!456194 (minValue!6063 thiss!1427)))) lt!456202) e!584793)))

(assert (= (and d!124251 c!104571) b!1034422))

(assert (= (and d!124251 (not c!104571)) b!1034423))

(assert (= (and b!1034423 c!104572) b!1034424))

(assert (= (and b!1034423 (not c!104572)) b!1034425))

(declare-fun m!954761 () Bool)

(assert (=> b!1034424 m!954761))

(assert (=> d!123801 d!124251))

(declare-fun d!124253 () Bool)

(assert (=> d!124253 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456192) lt!456202)) (v!14890 (getValueByKey!591 (toList!6951 lt!456192) lt!456202)))))

(assert (=> d!123791 d!124253))

(declare-fun b!1034429 () Bool)

(declare-fun e!584796 () Option!642)

(assert (=> b!1034429 (= e!584796 None!640)))

(declare-fun b!1034427 () Bool)

(declare-fun e!584795 () Option!642)

(assert (=> b!1034427 (= e!584795 e!584796)))

(declare-fun c!104574 () Bool)

(assert (=> b!1034427 (= c!104574 (and ((_ is Cons!22018) (toList!6951 lt!456192)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456192))) lt!456202))))))

(declare-fun b!1034426 () Bool)

(assert (=> b!1034426 (= e!584795 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456192)))))))

(declare-fun b!1034428 () Bool)

(assert (=> b!1034428 (= e!584796 (getValueByKey!591 (t!31227 (toList!6951 lt!456192)) lt!456202))))

(declare-fun d!124255 () Bool)

(declare-fun c!104573 () Bool)

(assert (=> d!124255 (= c!104573 (and ((_ is Cons!22018) (toList!6951 lt!456192)) (= (_1!7927 (h!23220 (toList!6951 lt!456192))) lt!456202)))))

(assert (=> d!124255 (= (getValueByKey!591 (toList!6951 lt!456192) lt!456202) e!584795)))

(assert (= (and d!124255 c!104573) b!1034426))

(assert (= (and d!124255 (not c!104573)) b!1034427))

(assert (= (and b!1034427 c!104574) b!1034428))

(assert (= (and b!1034427 (not c!104574)) b!1034429))

(declare-fun m!954763 () Bool)

(assert (=> b!1034428 m!954763))

(assert (=> d!123791 d!124255))

(declare-fun b!1034433 () Bool)

(declare-fun e!584798 () Option!642)

(assert (=> b!1034433 (= e!584798 None!640)))

(declare-fun b!1034431 () Bool)

(declare-fun e!584797 () Option!642)

(assert (=> b!1034431 (= e!584797 e!584798)))

(declare-fun c!104576 () Bool)

(assert (=> b!1034431 (= c!104576 (and ((_ is Cons!22018) (toList!6951 lt!456288)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456288))) (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))))

(declare-fun b!1034430 () Bool)

(assert (=> b!1034430 (= e!584797 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456288)))))))

(declare-fun b!1034432 () Bool)

(assert (=> b!1034432 (= e!584798 (getValueByKey!591 (t!31227 (toList!6951 lt!456288)) (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))

(declare-fun d!124257 () Bool)

(declare-fun c!104575 () Bool)

(assert (=> d!124257 (= c!104575 (and ((_ is Cons!22018) (toList!6951 lt!456288)) (= (_1!7927 (h!23220 (toList!6951 lt!456288))) (_1!7927 (tuple2!15835 lt!456173 lt!456100)))))))

(assert (=> d!124257 (= (getValueByKey!591 (toList!6951 lt!456288) (_1!7927 (tuple2!15835 lt!456173 lt!456100))) e!584797)))

(assert (= (and d!124257 c!104575) b!1034430))

(assert (= (and d!124257 (not c!104575)) b!1034431))

(assert (= (and b!1034431 c!104576) b!1034432))

(assert (= (and b!1034431 (not c!104576)) b!1034433))

(declare-fun m!954765 () Bool)

(assert (=> b!1034432 m!954765))

(assert (=> b!1033756 d!124257))

(declare-fun d!124259 () Bool)

(assert (=> d!124259 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!14890 (getValueByKey!591 (toList!6951 lt!456188) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123817 d!124259))

(assert (=> d!123817 d!124147))

(declare-fun b!1034434 () Bool)

(declare-fun res!690986 () Bool)

(declare-fun e!584805 () Bool)

(assert (=> b!1034434 (=> (not res!690986) (not e!584805))))

(declare-fun lt!456587 () ListLongMap!13871)

(assert (=> b!1034434 (= res!690986 (not (contains!6035 lt!456587 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1034435 () Bool)

(declare-fun e!584799 () Bool)

(assert (=> b!1034435 (= e!584799 (isEmpty!929 lt!456587))))

(declare-fun b!1034436 () Bool)

(declare-fun e!584802 () ListLongMap!13871)

(declare-fun e!584800 () ListLongMap!13871)

(assert (=> b!1034436 (= e!584802 e!584800)))

(declare-fun c!104577 () Bool)

(assert (=> b!1034436 (= c!104577 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun b!1034437 () Bool)

(declare-fun e!584803 () Bool)

(assert (=> b!1034437 (= e!584803 e!584799)))

(declare-fun c!104578 () Bool)

(assert (=> b!1034437 (= c!104578 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(declare-fun b!1034438 () Bool)

(declare-fun e!584804 () Bool)

(assert (=> b!1034438 (= e!584804 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(assert (=> b!1034438 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1034439 () Bool)

(assert (=> b!1034439 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(assert (=> b!1034439 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31865 (_values!6250 lt!456102))))))

(declare-fun e!584801 () Bool)

(assert (=> b!1034439 (= e!584801 (= (apply!941 lt!456587 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)) (get!16444 (select (arr!31342 (_values!6250 lt!456102)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 lt!456102) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1034440 () Bool)

(assert (=> b!1034440 (= e!584799 (= lt!456587 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6227 lt!456102))))))

(declare-fun d!124261 () Bool)

(assert (=> d!124261 e!584805))

(declare-fun res!690987 () Bool)

(assert (=> d!124261 (=> (not res!690987) (not e!584805))))

(assert (=> d!124261 (= res!690987 (not (contains!6035 lt!456587 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!124261 (= lt!456587 e!584802)))

(declare-fun c!104579 () Bool)

(assert (=> d!124261 (= c!104579 (bvsge #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!124261 (validMask!0 (mask!30079 lt!456102))))

(assert (=> d!124261 (= (getCurrentListMapNoExtraKeys!3534 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) #b00000000000000000000000000000000 (defaultEntry!6227 lt!456102)) lt!456587)))

(declare-fun b!1034441 () Bool)

(declare-fun call!43737 () ListLongMap!13871)

(assert (=> b!1034441 (= e!584800 call!43737)))

(declare-fun bm!43734 () Bool)

(assert (=> bm!43734 (= call!43737 (getCurrentListMapNoExtraKeys!3534 (_keys!11404 lt!456102) (_values!6250 lt!456102) (mask!30079 lt!456102) (extraKeys!5959 lt!456102) (zeroValue!6063 lt!456102) (minValue!6063 lt!456102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!6227 lt!456102)))))

(declare-fun b!1034442 () Bool)

(declare-fun lt!456590 () Unit!33810)

(declare-fun lt!456586 () Unit!33810)

(assert (=> b!1034442 (= lt!456590 lt!456586)))

(declare-fun lt!456584 () (_ BitVec 64))

(declare-fun lt!456589 () V!37565)

(declare-fun lt!456588 () ListLongMap!13871)

(declare-fun lt!456585 () (_ BitVec 64))

(assert (=> b!1034442 (not (contains!6035 (+!3064 lt!456588 (tuple2!15835 lt!456585 lt!456589)) lt!456584))))

(assert (=> b!1034442 (= lt!456586 (addStillNotContains!244 lt!456588 lt!456585 lt!456589 lt!456584))))

(assert (=> b!1034442 (= lt!456584 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1034442 (= lt!456589 (get!16444 (select (arr!31342 (_values!6250 lt!456102)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 lt!456102) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1034442 (= lt!456585 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000))))

(assert (=> b!1034442 (= lt!456588 call!43737)))

(assert (=> b!1034442 (= e!584800 (+!3064 call!43737 (tuple2!15835 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 lt!456102)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 lt!456102) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1034443 () Bool)

(assert (=> b!1034443 (= e!584803 e!584801)))

(assert (=> b!1034443 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(declare-fun res!690985 () Bool)

(assert (=> b!1034443 (= res!690985 (contains!6035 lt!456587 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(assert (=> b!1034443 (=> (not res!690985) (not e!584801))))

(declare-fun b!1034444 () Bool)

(assert (=> b!1034444 (= e!584802 (ListLongMap!13872 Nil!22019))))

(declare-fun b!1034445 () Bool)

(assert (=> b!1034445 (= e!584805 e!584803)))

(declare-fun c!104580 () Bool)

(assert (=> b!1034445 (= c!104580 e!584804)))

(declare-fun res!690984 () Bool)

(assert (=> b!1034445 (=> (not res!690984) (not e!584804))))

(assert (=> b!1034445 (= res!690984 (bvslt #b00000000000000000000000000000000 (size!31864 (_keys!11404 lt!456102))))))

(assert (= (and d!124261 c!104579) b!1034444))

(assert (= (and d!124261 (not c!104579)) b!1034436))

(assert (= (and b!1034436 c!104577) b!1034442))

(assert (= (and b!1034436 (not c!104577)) b!1034441))

(assert (= (or b!1034442 b!1034441) bm!43734))

(assert (= (and d!124261 res!690987) b!1034434))

(assert (= (and b!1034434 res!690986) b!1034445))

(assert (= (and b!1034445 res!690984) b!1034438))

(assert (= (and b!1034445 c!104580) b!1034443))

(assert (= (and b!1034445 (not c!104580)) b!1034437))

(assert (= (and b!1034443 res!690985) b!1034439))

(assert (= (and b!1034437 c!104578) b!1034440))

(assert (= (and b!1034437 (not c!104578)) b!1034435))

(declare-fun b_lambda!16117 () Bool)

(assert (=> (not b_lambda!16117) (not b!1034439)))

(assert (=> b!1034439 t!31232))

(declare-fun b_and!33317 () Bool)

(assert (= b_and!33315 (and (=> t!31232 result!14405) b_and!33317)))

(declare-fun b_lambda!16119 () Bool)

(assert (=> (not b_lambda!16119) (not b!1034442)))

(assert (=> b!1034442 t!31232))

(declare-fun b_and!33319 () Bool)

(assert (= b_and!33317 (and (=> t!31232 result!14405) b_and!33319)))

(assert (=> b!1034436 m!953851))

(assert (=> b!1034436 m!953851))

(assert (=> b!1034436 m!953853))

(assert (=> b!1034438 m!953851))

(assert (=> b!1034438 m!953851))

(assert (=> b!1034438 m!953853))

(declare-fun m!954767 () Bool)

(assert (=> bm!43734 m!954767))

(assert (=> b!1034443 m!953851))

(assert (=> b!1034443 m!953851))

(declare-fun m!954769 () Bool)

(assert (=> b!1034443 m!954769))

(declare-fun m!954771 () Bool)

(assert (=> b!1034434 m!954771))

(declare-fun m!954773 () Bool)

(assert (=> b!1034442 m!954773))

(assert (=> b!1034442 m!953965))

(declare-fun m!954775 () Bool)

(assert (=> b!1034442 m!954775))

(declare-fun m!954777 () Bool)

(assert (=> b!1034442 m!954777))

(assert (=> b!1034442 m!953963))

(declare-fun m!954779 () Bool)

(assert (=> b!1034442 m!954779))

(assert (=> b!1034442 m!954775))

(assert (=> b!1034442 m!953851))

(assert (=> b!1034442 m!953963))

(assert (=> b!1034442 m!953965))

(assert (=> b!1034442 m!953967))

(assert (=> b!1034439 m!953965))

(assert (=> b!1034439 m!953963))

(assert (=> b!1034439 m!953851))

(assert (=> b!1034439 m!953851))

(declare-fun m!954781 () Bool)

(assert (=> b!1034439 m!954781))

(assert (=> b!1034439 m!953963))

(assert (=> b!1034439 m!953965))

(assert (=> b!1034439 m!953967))

(declare-fun m!954783 () Bool)

(assert (=> b!1034435 m!954783))

(assert (=> b!1034440 m!954767))

(declare-fun m!954785 () Bool)

(assert (=> d!124261 m!954785))

(assert (=> d!124261 m!953887))

(assert (=> bm!43691 d!124261))

(declare-fun d!124263 () Bool)

(assert (=> d!124263 (arrayContainsKey!0 (_keys!11404 thiss!1427) lt!456349 #b00000000000000000000000000000000)))

(declare-fun lt!456593 () Unit!33810)

(declare-fun choose!13 (array!65102 (_ BitVec 64) (_ BitVec 32)) Unit!33810)

(assert (=> d!124263 (= lt!456593 (choose!13 (_keys!11404 thiss!1427) lt!456349 #b00000000000000000000000000000000))))

(assert (=> d!124263 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!124263 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11404 thiss!1427) lt!456349 #b00000000000000000000000000000000) lt!456593)))

(declare-fun bs!30255 () Bool)

(assert (= bs!30255 d!124263))

(assert (=> bs!30255 m!953927))

(declare-fun m!954787 () Bool)

(assert (=> bs!30255 m!954787))

(assert (=> b!1033864 d!124263))

(declare-fun d!124265 () Bool)

(declare-fun res!690992 () Bool)

(declare-fun e!584810 () Bool)

(assert (=> d!124265 (=> res!690992 e!584810)))

(assert (=> d!124265 (= res!690992 (= (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) lt!456349))))

(assert (=> d!124265 (= (arrayContainsKey!0 (_keys!11404 thiss!1427) lt!456349 #b00000000000000000000000000000000) e!584810)))

(declare-fun b!1034450 () Bool)

(declare-fun e!584811 () Bool)

(assert (=> b!1034450 (= e!584810 e!584811)))

(declare-fun res!690993 () Bool)

(assert (=> b!1034450 (=> (not res!690993) (not e!584811))))

(assert (=> b!1034450 (= res!690993 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 thiss!1427))))))

(declare-fun b!1034451 () Bool)

(assert (=> b!1034451 (= e!584811 (arrayContainsKey!0 (_keys!11404 thiss!1427) lt!456349 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!124265 (not res!690992)) b!1034450))

(assert (= (and b!1034450 res!690993) b!1034451))

(assert (=> d!124265 m!953435))

(declare-fun m!954789 () Bool)

(assert (=> b!1034451 m!954789))

(assert (=> b!1033864 d!124265))

(declare-fun b!1034464 () Bool)

(declare-fun e!584820 () SeekEntryResult!9733)

(assert (=> b!1034464 (= e!584820 Undefined!9733)))

(declare-fun d!124267 () Bool)

(declare-fun lt!456601 () SeekEntryResult!9733)

(assert (=> d!124267 (and (or ((_ is Undefined!9733) lt!456601) (not ((_ is Found!9733) lt!456601)) (and (bvsge (index!41303 lt!456601) #b00000000000000000000000000000000) (bvslt (index!41303 lt!456601) (size!31864 (_keys!11404 thiss!1427))))) (or ((_ is Undefined!9733) lt!456601) ((_ is Found!9733) lt!456601) (not ((_ is MissingZero!9733) lt!456601)) (and (bvsge (index!41302 lt!456601) #b00000000000000000000000000000000) (bvslt (index!41302 lt!456601) (size!31864 (_keys!11404 thiss!1427))))) (or ((_ is Undefined!9733) lt!456601) ((_ is Found!9733) lt!456601) ((_ is MissingZero!9733) lt!456601) (not ((_ is MissingVacant!9733) lt!456601)) (and (bvsge (index!41305 lt!456601) #b00000000000000000000000000000000) (bvslt (index!41305 lt!456601) (size!31864 (_keys!11404 thiss!1427))))) (or ((_ is Undefined!9733) lt!456601) (ite ((_ is Found!9733) lt!456601) (= (select (arr!31341 (_keys!11404 thiss!1427)) (index!41303 lt!456601)) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9733) lt!456601) (= (select (arr!31341 (_keys!11404 thiss!1427)) (index!41302 lt!456601)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9733) lt!456601) (= (select (arr!31341 (_keys!11404 thiss!1427)) (index!41305 lt!456601)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!124267 (= lt!456601 e!584820)))

(declare-fun c!104588 () Bool)

(declare-fun lt!456600 () SeekEntryResult!9733)

(assert (=> d!124267 (= c!104588 (and ((_ is Intermediate!9733) lt!456600) (undefined!10545 lt!456600)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65102 (_ BitVec 32)) SeekEntryResult!9733)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!124267 (= lt!456600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (mask!30079 thiss!1427)) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (_keys!11404 thiss!1427) (mask!30079 thiss!1427)))))

(assert (=> d!124267 (validMask!0 (mask!30079 thiss!1427))))

(assert (=> d!124267 (= (seekEntryOrOpen!0 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (_keys!11404 thiss!1427) (mask!30079 thiss!1427)) lt!456601)))

(declare-fun b!1034465 () Bool)

(declare-fun e!584818 () SeekEntryResult!9733)

(assert (=> b!1034465 (= e!584820 e!584818)))

(declare-fun lt!456602 () (_ BitVec 64))

(assert (=> b!1034465 (= lt!456602 (select (arr!31341 (_keys!11404 thiss!1427)) (index!41304 lt!456600)))))

(declare-fun c!104587 () Bool)

(assert (=> b!1034465 (= c!104587 (= lt!456602 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034466 () Bool)

(declare-fun c!104589 () Bool)

(assert (=> b!1034466 (= c!104589 (= lt!456602 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!584819 () SeekEntryResult!9733)

(assert (=> b!1034466 (= e!584818 e!584819)))

(declare-fun b!1034467 () Bool)

(assert (=> b!1034467 (= e!584819 (MissingZero!9733 (index!41304 lt!456600)))))

(declare-fun b!1034468 () Bool)

(assert (=> b!1034468 (= e!584818 (Found!9733 (index!41304 lt!456600)))))

(declare-fun b!1034469 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65102 (_ BitVec 32)) SeekEntryResult!9733)

(assert (=> b!1034469 (= e!584819 (seekKeyOrZeroReturnVacant!0 (x!92215 lt!456600) (index!41304 lt!456600) (index!41304 lt!456600) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (_keys!11404 thiss!1427) (mask!30079 thiss!1427)))))

(assert (= (and d!124267 c!104588) b!1034464))

(assert (= (and d!124267 (not c!104588)) b!1034465))

(assert (= (and b!1034465 c!104587) b!1034468))

(assert (= (and b!1034465 (not c!104587)) b!1034466))

(assert (= (and b!1034466 c!104589) b!1034467))

(assert (= (and b!1034466 (not c!104589)) b!1034469))

(declare-fun m!954791 () Bool)

(assert (=> d!124267 m!954791))

(assert (=> d!124267 m!953435))

(declare-fun m!954793 () Bool)

(assert (=> d!124267 m!954793))

(declare-fun m!954795 () Bool)

(assert (=> d!124267 m!954795))

(assert (=> d!124267 m!953483))

(assert (=> d!124267 m!953435))

(assert (=> d!124267 m!954791))

(declare-fun m!954797 () Bool)

(assert (=> d!124267 m!954797))

(declare-fun m!954799 () Bool)

(assert (=> d!124267 m!954799))

(declare-fun m!954801 () Bool)

(assert (=> b!1034465 m!954801))

(assert (=> b!1034469 m!953435))

(declare-fun m!954803 () Bool)

(assert (=> b!1034469 m!954803))

(assert (=> b!1033864 d!124267))

(declare-fun d!124269 () Bool)

(assert (=> d!124269 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!456603 () Unit!33810)

(assert (=> d!124269 (= lt!456603 (choose!1705 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!584821 () Bool)

(assert (=> d!124269 e!584821))

(declare-fun res!690994 () Bool)

(assert (=> d!124269 (=> (not res!690994) (not e!584821))))

(assert (=> d!124269 (= res!690994 (isStrictlySorted!714 (toList!6951 lt!456183)))))

(assert (=> d!124269 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000) lt!456603)))

(declare-fun b!1034470 () Bool)

(assert (=> b!1034470 (= e!584821 (containsKey!564 (toList!6951 lt!456183) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!124269 res!690994) b!1034470))

(assert (=> d!124269 m!954015))

(assert (=> d!124269 m!954015))

(assert (=> d!124269 m!954017))

(declare-fun m!954805 () Bool)

(assert (=> d!124269 m!954805))

(declare-fun m!954807 () Bool)

(assert (=> d!124269 m!954807))

(assert (=> b!1034470 m!954011))

(assert (=> b!1033897 d!124269))

(assert (=> b!1033897 d!124063))

(assert (=> b!1033897 d!124065))

(assert (=> b!1033910 d!124179))

(declare-fun b!1034474 () Bool)

(declare-fun e!584823 () Option!642)

(assert (=> b!1034474 (= e!584823 None!640)))

(declare-fun b!1034472 () Bool)

(declare-fun e!584822 () Option!642)

(assert (=> b!1034472 (= e!584822 e!584823)))

(declare-fun c!104591 () Bool)

(assert (=> b!1034472 (= c!104591 (and ((_ is Cons!22018) (toList!6951 lt!456327)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456327))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034471 () Bool)

(assert (=> b!1034471 (= e!584822 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456327)))))))

(declare-fun b!1034473 () Bool)

(assert (=> b!1034473 (= e!584823 (getValueByKey!591 (t!31227 (toList!6951 lt!456327)) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun d!124271 () Bool)

(declare-fun c!104590 () Bool)

(assert (=> d!124271 (= c!104590 (and ((_ is Cons!22018) (toList!6951 lt!456327)) (= (_1!7927 (h!23220 (toList!6951 lt!456327))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!124271 (= (getValueByKey!591 (toList!6951 lt!456327) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) e!584822)))

(assert (= (and d!124271 c!104590) b!1034471))

(assert (= (and d!124271 (not c!104590)) b!1034472))

(assert (= (and b!1034472 c!104591) b!1034473))

(assert (= (and b!1034472 (not c!104591)) b!1034474))

(declare-fun m!954809 () Bool)

(assert (=> b!1034473 m!954809))

(assert (=> b!1033808 d!124271))

(declare-fun d!124273 () Bool)

(declare-fun e!584824 () Bool)

(assert (=> d!124273 e!584824))

(declare-fun res!690995 () Bool)

(assert (=> d!124273 (=> res!690995 e!584824)))

(declare-fun lt!456604 () Bool)

(assert (=> d!124273 (= res!690995 (not lt!456604))))

(declare-fun lt!456605 () Bool)

(assert (=> d!124273 (= lt!456604 lt!456605)))

(declare-fun lt!456606 () Unit!33810)

(declare-fun e!584825 () Unit!33810)

(assert (=> d!124273 (= lt!456606 e!584825)))

(declare-fun c!104592 () Bool)

(assert (=> d!124273 (= c!104592 lt!456605)))

(assert (=> d!124273 (= lt!456605 (containsKey!564 (toList!6951 (+!3064 lt!456232 (tuple2!15835 lt!456229 lt!456233))) lt!456228))))

(assert (=> d!124273 (= (contains!6035 (+!3064 lt!456232 (tuple2!15835 lt!456229 lt!456233)) lt!456228) lt!456604)))

(declare-fun b!1034475 () Bool)

(declare-fun lt!456607 () Unit!33810)

(assert (=> b!1034475 (= e!584825 lt!456607)))

(assert (=> b!1034475 (= lt!456607 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 (+!3064 lt!456232 (tuple2!15835 lt!456229 lt!456233))) lt!456228))))

(assert (=> b!1034475 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456232 (tuple2!15835 lt!456229 lt!456233))) lt!456228))))

(declare-fun b!1034476 () Bool)

(declare-fun Unit!33850 () Unit!33810)

(assert (=> b!1034476 (= e!584825 Unit!33850)))

(declare-fun b!1034477 () Bool)

(assert (=> b!1034477 (= e!584824 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456232 (tuple2!15835 lt!456229 lt!456233))) lt!456228)))))

(assert (= (and d!124273 c!104592) b!1034475))

(assert (= (and d!124273 (not c!104592)) b!1034476))

(assert (= (and d!124273 (not res!690995)) b!1034477))

(declare-fun m!954811 () Bool)

(assert (=> d!124273 m!954811))

(declare-fun m!954813 () Bool)

(assert (=> b!1034475 m!954813))

(declare-fun m!954815 () Bool)

(assert (=> b!1034475 m!954815))

(assert (=> b!1034475 m!954815))

(declare-fun m!954817 () Bool)

(assert (=> b!1034475 m!954817))

(assert (=> b!1034477 m!954815))

(assert (=> b!1034477 m!954815))

(assert (=> b!1034477 m!954817))

(assert (=> b!1033719 d!124273))

(declare-fun d!124275 () Bool)

(assert (=> d!124275 (not (contains!6035 (+!3064 lt!456232 (tuple2!15835 lt!456229 lt!456233)) lt!456228))))

(declare-fun lt!456608 () Unit!33810)

(assert (=> d!124275 (= lt!456608 (choose!1707 lt!456232 lt!456229 lt!456233 lt!456228))))

(declare-fun e!584826 () Bool)

(assert (=> d!124275 e!584826))

(declare-fun res!690996 () Bool)

(assert (=> d!124275 (=> (not res!690996) (not e!584826))))

(assert (=> d!124275 (= res!690996 (not (contains!6035 lt!456232 lt!456228)))))

(assert (=> d!124275 (= (addStillNotContains!244 lt!456232 lt!456229 lt!456233 lt!456228) lt!456608)))

(declare-fun b!1034478 () Bool)

(assert (=> b!1034478 (= e!584826 (not (= lt!456229 lt!456228)))))

(assert (= (and d!124275 res!690996) b!1034478))

(assert (=> d!124275 m!953593))

(assert (=> d!124275 m!953593))

(assert (=> d!124275 m!953595))

(declare-fun m!954819 () Bool)

(assert (=> d!124275 m!954819))

(declare-fun m!954821 () Bool)

(assert (=> d!124275 m!954821))

(assert (=> b!1033719 d!124275))

(declare-fun d!124277 () Bool)

(declare-fun e!584827 () Bool)

(assert (=> d!124277 e!584827))

(declare-fun res!690998 () Bool)

(assert (=> d!124277 (=> (not res!690998) (not e!584827))))

(declare-fun lt!456610 () ListLongMap!13871)

(assert (=> d!124277 (= res!690998 (contains!6035 lt!456610 (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!456609 () List!22022)

(assert (=> d!124277 (= lt!456610 (ListLongMap!13872 lt!456609))))

(declare-fun lt!456612 () Unit!33810)

(declare-fun lt!456611 () Unit!33810)

(assert (=> d!124277 (= lt!456612 lt!456611)))

(assert (=> d!124277 (= (getValueByKey!591 lt!456609 (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!641 (_2!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!124277 (= lt!456611 (lemmaContainsTupThenGetReturnValue!280 lt!456609 (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!124277 (= lt!456609 (insertStrictlySorted!372 (toList!6951 call!43677) (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!124277 (= (+!3064 call!43677 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!456610)))

(declare-fun b!1034479 () Bool)

(declare-fun res!690997 () Bool)

(assert (=> b!1034479 (=> (not res!690997) (not e!584827))))

(assert (=> b!1034479 (= res!690997 (= (getValueByKey!591 (toList!6951 lt!456610) (_1!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!641 (_2!7927 (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1034480 () Bool)

(assert (=> b!1034480 (= e!584827 (contains!6036 (toList!6951 lt!456610) (tuple2!15835 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000) (get!16444 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!124277 res!690998) b!1034479))

(assert (= (and b!1034479 res!690997) b!1034480))

(declare-fun m!954823 () Bool)

(assert (=> d!124277 m!954823))

(declare-fun m!954825 () Bool)

(assert (=> d!124277 m!954825))

(declare-fun m!954827 () Bool)

(assert (=> d!124277 m!954827))

(declare-fun m!954829 () Bool)

(assert (=> d!124277 m!954829))

(declare-fun m!954831 () Bool)

(assert (=> b!1034479 m!954831))

(declare-fun m!954833 () Bool)

(assert (=> b!1034480 m!954833))

(assert (=> b!1033719 d!124277))

(assert (=> b!1033719 d!123883))

(declare-fun d!124279 () Bool)

(declare-fun e!584828 () Bool)

(assert (=> d!124279 e!584828))

(declare-fun res!691000 () Bool)

(assert (=> d!124279 (=> (not res!691000) (not e!584828))))

(declare-fun lt!456614 () ListLongMap!13871)

(assert (=> d!124279 (= res!691000 (contains!6035 lt!456614 (_1!7927 (tuple2!15835 lt!456229 lt!456233))))))

(declare-fun lt!456613 () List!22022)

(assert (=> d!124279 (= lt!456614 (ListLongMap!13872 lt!456613))))

(declare-fun lt!456616 () Unit!33810)

(declare-fun lt!456615 () Unit!33810)

(assert (=> d!124279 (= lt!456616 lt!456615)))

(assert (=> d!124279 (= (getValueByKey!591 lt!456613 (_1!7927 (tuple2!15835 lt!456229 lt!456233))) (Some!641 (_2!7927 (tuple2!15835 lt!456229 lt!456233))))))

(assert (=> d!124279 (= lt!456615 (lemmaContainsTupThenGetReturnValue!280 lt!456613 (_1!7927 (tuple2!15835 lt!456229 lt!456233)) (_2!7927 (tuple2!15835 lt!456229 lt!456233))))))

(assert (=> d!124279 (= lt!456613 (insertStrictlySorted!372 (toList!6951 lt!456232) (_1!7927 (tuple2!15835 lt!456229 lt!456233)) (_2!7927 (tuple2!15835 lt!456229 lt!456233))))))

(assert (=> d!124279 (= (+!3064 lt!456232 (tuple2!15835 lt!456229 lt!456233)) lt!456614)))

(declare-fun b!1034481 () Bool)

(declare-fun res!690999 () Bool)

(assert (=> b!1034481 (=> (not res!690999) (not e!584828))))

(assert (=> b!1034481 (= res!690999 (= (getValueByKey!591 (toList!6951 lt!456614) (_1!7927 (tuple2!15835 lt!456229 lt!456233))) (Some!641 (_2!7927 (tuple2!15835 lt!456229 lt!456233)))))))

(declare-fun b!1034482 () Bool)

(assert (=> b!1034482 (= e!584828 (contains!6036 (toList!6951 lt!456614) (tuple2!15835 lt!456229 lt!456233)))))

(assert (= (and d!124279 res!691000) b!1034481))

(assert (= (and b!1034481 res!690999) b!1034482))

(declare-fun m!954835 () Bool)

(assert (=> d!124279 m!954835))

(declare-fun m!954837 () Bool)

(assert (=> d!124279 m!954837))

(declare-fun m!954839 () Bool)

(assert (=> d!124279 m!954839))

(declare-fun m!954841 () Bool)

(assert (=> d!124279 m!954841))

(declare-fun m!954843 () Bool)

(assert (=> b!1034481 m!954843))

(declare-fun m!954845 () Bool)

(assert (=> b!1034482 m!954845))

(assert (=> b!1033719 d!124279))

(declare-fun d!124281 () Bool)

(assert (=> d!124281 (= (get!16447 (select (arr!31342 (_values!6250 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!2001 (defaultEntry!6227 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1033847 d!124281))

(declare-fun lt!456617 () Bool)

(declare-fun d!124283 () Bool)

(assert (=> d!124283 (= lt!456617 (select (content!516 (toList!6951 lt!456292)) (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))

(declare-fun e!584830 () Bool)

(assert (=> d!124283 (= lt!456617 e!584830)))

(declare-fun res!691001 () Bool)

(assert (=> d!124283 (=> (not res!691001) (not e!584830))))

(assert (=> d!124283 (= res!691001 ((_ is Cons!22018) (toList!6951 lt!456292)))))

(assert (=> d!124283 (= (contains!6036 (toList!6951 lt!456292) (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))) lt!456617)))

(declare-fun b!1034483 () Bool)

(declare-fun e!584829 () Bool)

(assert (=> b!1034483 (= e!584830 e!584829)))

(declare-fun res!691002 () Bool)

(assert (=> b!1034483 (=> res!691002 e!584829)))

(assert (=> b!1034483 (= res!691002 (= (h!23220 (toList!6951 lt!456292)) (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))

(declare-fun b!1034484 () Bool)

(assert (=> b!1034484 (= e!584829 (contains!6036 (t!31227 (toList!6951 lt!456292)) (tuple2!15835 lt!456172 (minValue!6063 thiss!1427))))))

(assert (= (and d!124283 res!691001) b!1034483))

(assert (= (and b!1034483 (not res!691002)) b!1034484))

(declare-fun m!954847 () Bool)

(assert (=> d!124283 m!954847))

(declare-fun m!954849 () Bool)

(assert (=> d!124283 m!954849))

(declare-fun m!954851 () Bool)

(assert (=> b!1034484 m!954851))

(assert (=> b!1033759 d!124283))

(declare-fun d!124285 () Bool)

(assert (=> d!124285 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))) (v!14890 (getValueByKey!591 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!123881 d!124285))

(assert (=> d!123881 d!123943))

(declare-fun b!1034488 () Bool)

(declare-fun e!584832 () Option!642)

(assert (=> b!1034488 (= e!584832 None!640)))

(declare-fun b!1034486 () Bool)

(declare-fun e!584831 () Option!642)

(assert (=> b!1034486 (= e!584831 e!584832)))

(declare-fun c!104594 () Bool)

(assert (=> b!1034486 (= c!104594 (and ((_ is Cons!22018) (toList!6951 lt!456263)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456263))) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))))

(declare-fun b!1034485 () Bool)

(assert (=> b!1034485 (= e!584831 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456263)))))))

(declare-fun b!1034487 () Bool)

(assert (=> b!1034487 (= e!584832 (getValueByKey!591 (t!31227 (toList!6951 lt!456263)) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(declare-fun d!124287 () Bool)

(declare-fun c!104593 () Bool)

(assert (=> d!124287 (= c!104593 (and ((_ is Cons!22018) (toList!6951 lt!456263)) (= (_1!7927 (h!23220 (toList!6951 lt!456263))) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))

(assert (=> d!124287 (= (getValueByKey!591 (toList!6951 lt!456263) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) e!584831)))

(assert (= (and d!124287 c!104593) b!1034485))

(assert (= (and d!124287 (not c!104593)) b!1034486))

(assert (= (and b!1034486 c!104594) b!1034487))

(assert (= (and b!1034486 (not c!104594)) b!1034488))

(declare-fun m!954853 () Bool)

(assert (=> b!1034487 m!954853))

(assert (=> b!1033739 d!124287))

(assert (=> bm!43673 d!124095))

(assert (=> d!123867 d!123765))

(assert (=> d!123867 d!123767))

(assert (=> d!123867 d!123759))

(declare-fun b!1034492 () Bool)

(declare-fun e!584834 () Option!642)

(assert (=> b!1034492 (= e!584834 None!640)))

(declare-fun b!1034490 () Bool)

(declare-fun e!584833 () Option!642)

(assert (=> b!1034490 (= e!584833 e!584834)))

(declare-fun c!104596 () Bool)

(assert (=> b!1034490 (= c!104596 (and ((_ is Cons!22018) (toList!6951 lt!456244)) (not (= (_1!7927 (h!23220 (toList!6951 lt!456244))) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))))

(declare-fun b!1034489 () Bool)

(assert (=> b!1034489 (= e!584833 (Some!641 (_2!7927 (h!23220 (toList!6951 lt!456244)))))))

(declare-fun b!1034491 () Bool)

(assert (=> b!1034491 (= e!584834 (getValueByKey!591 (t!31227 (toList!6951 lt!456244)) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun c!104595 () Bool)

(declare-fun d!124289 () Bool)

(assert (=> d!124289 (= c!104595 (and ((_ is Cons!22018) (toList!6951 lt!456244)) (= (_1!7927 (h!23220 (toList!6951 lt!456244))) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(assert (=> d!124289 (= (getValueByKey!591 (toList!6951 lt!456244) (_1!7927 (ite (or c!104339 c!104341) (tuple2!15835 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6063 thiss!1427)) (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))) e!584833)))

(assert (= (and d!124289 c!104595) b!1034489))

(assert (= (and d!124289 (not c!104595)) b!1034490))

(assert (= (and b!1034490 c!104596) b!1034491))

(assert (= (and b!1034490 (not c!104596)) b!1034492))

(declare-fun m!954855 () Bool)

(assert (=> b!1034491 m!954855))

(assert (=> b!1033727 d!124289))

(declare-fun d!124291 () Bool)

(assert (=> d!124291 (= (get!16445 (getValueByKey!591 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000)) (v!14890 (getValueByKey!591 (toList!6951 lt!456160) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!123823 d!124291))

(assert (=> d!123823 d!124121))

(declare-fun d!124293 () Bool)

(declare-fun lt!456618 () Bool)

(assert (=> d!124293 (= lt!456618 (select (content!517 Nil!22020) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!584836 () Bool)

(assert (=> d!124293 (= lt!456618 e!584836)))

(declare-fun res!691004 () Bool)

(assert (=> d!124293 (=> (not res!691004) (not e!584836))))

(assert (=> d!124293 (= res!691004 ((_ is Cons!22019) Nil!22020))))

(assert (=> d!124293 (= (contains!6037 Nil!22020 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) lt!456618)))

(declare-fun b!1034493 () Bool)

(declare-fun e!584835 () Bool)

(assert (=> b!1034493 (= e!584836 e!584835)))

(declare-fun res!691003 () Bool)

(assert (=> b!1034493 (=> res!691003 e!584835)))

(assert (=> b!1034493 (= res!691003 (= (h!23221 Nil!22020) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1034494 () Bool)

(assert (=> b!1034494 (= e!584835 (contains!6037 (t!31230 Nil!22020) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124293 res!691004) b!1034493))

(assert (= (and b!1034493 (not res!691003)) b!1034494))

(assert (=> d!124293 m!954327))

(assert (=> d!124293 m!953435))

(declare-fun m!954857 () Bool)

(assert (=> d!124293 m!954857))

(assert (=> b!1034494 m!953435))

(declare-fun m!954859 () Bool)

(assert (=> b!1034494 m!954859))

(assert (=> b!1033824 d!124293))

(declare-fun d!124295 () Bool)

(assert (=> d!124295 (= (apply!941 (+!3064 lt!456366 (tuple2!15835 lt!456368 (minValue!6063 lt!456102))) lt!456376) (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456366 (tuple2!15835 lt!456368 (minValue!6063 lt!456102)))) lt!456376)))))

(declare-fun bs!30256 () Bool)

(assert (= bs!30256 d!124295))

(declare-fun m!954861 () Bool)

(assert (=> bs!30256 m!954861))

(assert (=> bs!30256 m!954861))

(declare-fun m!954863 () Bool)

(assert (=> bs!30256 m!954863))

(assert (=> b!1033879 d!124295))

(declare-fun d!124297 () Bool)

(assert (=> d!124297 (= (apply!941 lt!456378 lt!456371) (get!16445 (getValueByKey!591 (toList!6951 lt!456378) lt!456371)))))

(declare-fun bs!30257 () Bool)

(assert (= bs!30257 d!124297))

(declare-fun m!954865 () Bool)

(assert (=> bs!30257 m!954865))

(assert (=> bs!30257 m!954865))

(declare-fun m!954867 () Bool)

(assert (=> bs!30257 m!954867))

(assert (=> b!1033879 d!124297))

(declare-fun d!124299 () Bool)

(assert (=> d!124299 (= (apply!941 (+!3064 lt!456377 (tuple2!15835 lt!456374 (minValue!6063 lt!456102))) lt!456358) (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456377 (tuple2!15835 lt!456374 (minValue!6063 lt!456102)))) lt!456358)))))

(declare-fun bs!30258 () Bool)

(assert (= bs!30258 d!124299))

(declare-fun m!954869 () Bool)

(assert (=> bs!30258 m!954869))

(assert (=> bs!30258 m!954869))

(declare-fun m!954871 () Bool)

(assert (=> bs!30258 m!954871))

(assert (=> b!1033879 d!124299))

(declare-fun d!124301 () Bool)

(assert (=> d!124301 (= (apply!941 lt!456377 lt!456358) (get!16445 (getValueByKey!591 (toList!6951 lt!456377) lt!456358)))))

(declare-fun bs!30259 () Bool)

(assert (= bs!30259 d!124301))

(declare-fun m!954873 () Bool)

(assert (=> bs!30259 m!954873))

(assert (=> bs!30259 m!954873))

(declare-fun m!954875 () Bool)

(assert (=> bs!30259 m!954875))

(assert (=> b!1033879 d!124301))

(declare-fun d!124303 () Bool)

(assert (=> d!124303 (= (apply!941 (+!3064 lt!456366 (tuple2!15835 lt!456368 (minValue!6063 lt!456102))) lt!456376) (apply!941 lt!456366 lt!456376))))

(declare-fun lt!456619 () Unit!33810)

(assert (=> d!124303 (= lt!456619 (choose!1703 lt!456366 lt!456368 (minValue!6063 lt!456102) lt!456376))))

(declare-fun e!584837 () Bool)

(assert (=> d!124303 e!584837))

(declare-fun res!691005 () Bool)

(assert (=> d!124303 (=> (not res!691005) (not e!584837))))

(assert (=> d!124303 (= res!691005 (contains!6035 lt!456366 lt!456376))))

(assert (=> d!124303 (= (addApplyDifferent!481 lt!456366 lt!456368 (minValue!6063 lt!456102) lt!456376) lt!456619)))

(declare-fun b!1034495 () Bool)

(assert (=> b!1034495 (= e!584837 (not (= lt!456376 lt!456368)))))

(assert (= (and d!124303 res!691005) b!1034495))

(declare-fun m!954877 () Bool)

(assert (=> d!124303 m!954877))

(assert (=> d!124303 m!953981))

(assert (=> d!124303 m!953997))

(declare-fun m!954879 () Bool)

(assert (=> d!124303 m!954879))

(assert (=> d!124303 m!953981))

(assert (=> d!124303 m!953989))

(assert (=> b!1033879 d!124303))

(declare-fun d!124305 () Bool)

(declare-fun e!584838 () Bool)

(assert (=> d!124305 e!584838))

(declare-fun res!691007 () Bool)

(assert (=> d!124305 (=> (not res!691007) (not e!584838))))

(declare-fun lt!456621 () ListLongMap!13871)

(assert (=> d!124305 (= res!691007 (contains!6035 lt!456621 (_1!7927 (tuple2!15835 lt!456368 (minValue!6063 lt!456102)))))))

(declare-fun lt!456620 () List!22022)

(assert (=> d!124305 (= lt!456621 (ListLongMap!13872 lt!456620))))

(declare-fun lt!456623 () Unit!33810)

(declare-fun lt!456622 () Unit!33810)

(assert (=> d!124305 (= lt!456623 lt!456622)))

(assert (=> d!124305 (= (getValueByKey!591 lt!456620 (_1!7927 (tuple2!15835 lt!456368 (minValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 lt!456368 (minValue!6063 lt!456102)))))))

(assert (=> d!124305 (= lt!456622 (lemmaContainsTupThenGetReturnValue!280 lt!456620 (_1!7927 (tuple2!15835 lt!456368 (minValue!6063 lt!456102))) (_2!7927 (tuple2!15835 lt!456368 (minValue!6063 lt!456102)))))))

(assert (=> d!124305 (= lt!456620 (insertStrictlySorted!372 (toList!6951 lt!456366) (_1!7927 (tuple2!15835 lt!456368 (minValue!6063 lt!456102))) (_2!7927 (tuple2!15835 lt!456368 (minValue!6063 lt!456102)))))))

(assert (=> d!124305 (= (+!3064 lt!456366 (tuple2!15835 lt!456368 (minValue!6063 lt!456102))) lt!456621)))

(declare-fun b!1034496 () Bool)

(declare-fun res!691006 () Bool)

(assert (=> b!1034496 (=> (not res!691006) (not e!584838))))

(assert (=> b!1034496 (= res!691006 (= (getValueByKey!591 (toList!6951 lt!456621) (_1!7927 (tuple2!15835 lt!456368 (minValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 lt!456368 (minValue!6063 lt!456102))))))))

(declare-fun b!1034497 () Bool)

(assert (=> b!1034497 (= e!584838 (contains!6036 (toList!6951 lt!456621) (tuple2!15835 lt!456368 (minValue!6063 lt!456102))))))

(assert (= (and d!124305 res!691007) b!1034496))

(assert (= (and b!1034496 res!691006) b!1034497))

(declare-fun m!954881 () Bool)

(assert (=> d!124305 m!954881))

(declare-fun m!954883 () Bool)

(assert (=> d!124305 m!954883))

(declare-fun m!954885 () Bool)

(assert (=> d!124305 m!954885))

(declare-fun m!954887 () Bool)

(assert (=> d!124305 m!954887))

(declare-fun m!954889 () Bool)

(assert (=> b!1034496 m!954889))

(declare-fun m!954891 () Bool)

(assert (=> b!1034497 m!954891))

(assert (=> b!1033879 d!124305))

(declare-fun d!124307 () Bool)

(assert (=> d!124307 (contains!6035 (+!3064 lt!456359 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102))) lt!456370)))

(declare-fun lt!456624 () Unit!33810)

(assert (=> d!124307 (= lt!456624 (choose!1704 lt!456359 lt!456367 (zeroValue!6063 lt!456102) lt!456370))))

(assert (=> d!124307 (contains!6035 lt!456359 lt!456370)))

(assert (=> d!124307 (= (addStillContains!629 lt!456359 lt!456367 (zeroValue!6063 lt!456102) lt!456370) lt!456624)))

(declare-fun bs!30260 () Bool)

(assert (= bs!30260 d!124307))

(assert (=> bs!30260 m!953991))

(assert (=> bs!30260 m!953991))

(assert (=> bs!30260 m!953993))

(declare-fun m!954893 () Bool)

(assert (=> bs!30260 m!954893))

(declare-fun m!954895 () Bool)

(assert (=> bs!30260 m!954895))

(assert (=> b!1033879 d!124307))

(declare-fun d!124309 () Bool)

(assert (=> d!124309 (= (apply!941 (+!3064 lt!456378 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102))) lt!456371) (get!16445 (getValueByKey!591 (toList!6951 (+!3064 lt!456378 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102)))) lt!456371)))))

(declare-fun bs!30261 () Bool)

(assert (= bs!30261 d!124309))

(declare-fun m!954897 () Bool)

(assert (=> bs!30261 m!954897))

(assert (=> bs!30261 m!954897))

(declare-fun m!954899 () Bool)

(assert (=> bs!30261 m!954899))

(assert (=> b!1033879 d!124309))

(declare-fun d!124311 () Bool)

(assert (=> d!124311 (= (apply!941 lt!456366 lt!456376) (get!16445 (getValueByKey!591 (toList!6951 lt!456366) lt!456376)))))

(declare-fun bs!30262 () Bool)

(assert (= bs!30262 d!124311))

(declare-fun m!954901 () Bool)

(assert (=> bs!30262 m!954901))

(assert (=> bs!30262 m!954901))

(declare-fun m!954903 () Bool)

(assert (=> bs!30262 m!954903))

(assert (=> b!1033879 d!124311))

(declare-fun d!124313 () Bool)

(declare-fun e!584839 () Bool)

(assert (=> d!124313 e!584839))

(declare-fun res!691009 () Bool)

(assert (=> d!124313 (=> (not res!691009) (not e!584839))))

(declare-fun lt!456626 () ListLongMap!13871)

(assert (=> d!124313 (= res!691009 (contains!6035 lt!456626 (_1!7927 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))))))

(declare-fun lt!456625 () List!22022)

(assert (=> d!124313 (= lt!456626 (ListLongMap!13872 lt!456625))))

(declare-fun lt!456628 () Unit!33810)

(declare-fun lt!456627 () Unit!33810)

(assert (=> d!124313 (= lt!456628 lt!456627)))

(assert (=> d!124313 (= (getValueByKey!591 lt!456625 (_1!7927 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))))))

(assert (=> d!124313 (= lt!456627 (lemmaContainsTupThenGetReturnValue!280 lt!456625 (_1!7927 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102))) (_2!7927 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))))))

(assert (=> d!124313 (= lt!456625 (insertStrictlySorted!372 (toList!6951 lt!456359) (_1!7927 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102))) (_2!7927 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))))))

(assert (=> d!124313 (= (+!3064 lt!456359 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102))) lt!456626)))

(declare-fun b!1034498 () Bool)

(declare-fun res!691008 () Bool)

(assert (=> b!1034498 (=> (not res!691008) (not e!584839))))

(assert (=> b!1034498 (= res!691008 (= (getValueByKey!591 (toList!6951 lt!456626) (_1!7927 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102))))))))

(declare-fun b!1034499 () Bool)

(assert (=> b!1034499 (= e!584839 (contains!6036 (toList!6951 lt!456626) (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102))))))

(assert (= (and d!124313 res!691009) b!1034498))

(assert (= (and b!1034498 res!691008) b!1034499))

(declare-fun m!954905 () Bool)

(assert (=> d!124313 m!954905))

(declare-fun m!954907 () Bool)

(assert (=> d!124313 m!954907))

(declare-fun m!954909 () Bool)

(assert (=> d!124313 m!954909))

(declare-fun m!954911 () Bool)

(assert (=> d!124313 m!954911))

(declare-fun m!954913 () Bool)

(assert (=> b!1034498 m!954913))

(declare-fun m!954915 () Bool)

(assert (=> b!1034499 m!954915))

(assert (=> b!1033879 d!124313))

(assert (=> b!1033879 d!124261))

(declare-fun d!124315 () Bool)

(declare-fun e!584840 () Bool)

(assert (=> d!124315 e!584840))

(declare-fun res!691010 () Bool)

(assert (=> d!124315 (=> res!691010 e!584840)))

(declare-fun lt!456629 () Bool)

(assert (=> d!124315 (= res!691010 (not lt!456629))))

(declare-fun lt!456630 () Bool)

(assert (=> d!124315 (= lt!456629 lt!456630)))

(declare-fun lt!456631 () Unit!33810)

(declare-fun e!584841 () Unit!33810)

(assert (=> d!124315 (= lt!456631 e!584841)))

(declare-fun c!104597 () Bool)

(assert (=> d!124315 (= c!104597 lt!456630)))

(assert (=> d!124315 (= lt!456630 (containsKey!564 (toList!6951 (+!3064 lt!456359 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))) lt!456370))))

(assert (=> d!124315 (= (contains!6035 (+!3064 lt!456359 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102))) lt!456370) lt!456629)))

(declare-fun b!1034500 () Bool)

(declare-fun lt!456632 () Unit!33810)

(assert (=> b!1034500 (= e!584841 lt!456632)))

(assert (=> b!1034500 (= lt!456632 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 (+!3064 lt!456359 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))) lt!456370))))

(assert (=> b!1034500 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456359 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))) lt!456370))))

(declare-fun b!1034501 () Bool)

(declare-fun Unit!33851 () Unit!33810)

(assert (=> b!1034501 (= e!584841 Unit!33851)))

(declare-fun b!1034502 () Bool)

(assert (=> b!1034502 (= e!584840 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456359 (tuple2!15835 lt!456367 (zeroValue!6063 lt!456102)))) lt!456370)))))

(assert (= (and d!124315 c!104597) b!1034500))

(assert (= (and d!124315 (not c!104597)) b!1034501))

(assert (= (and d!124315 (not res!691010)) b!1034502))

(declare-fun m!954917 () Bool)

(assert (=> d!124315 m!954917))

(declare-fun m!954919 () Bool)

(assert (=> b!1034500 m!954919))

(declare-fun m!954921 () Bool)

(assert (=> b!1034500 m!954921))

(assert (=> b!1034500 m!954921))

(declare-fun m!954923 () Bool)

(assert (=> b!1034500 m!954923))

(assert (=> b!1034502 m!954921))

(assert (=> b!1034502 m!954921))

(assert (=> b!1034502 m!954923))

(assert (=> b!1033879 d!124315))

(declare-fun d!124317 () Bool)

(assert (=> d!124317 (= (apply!941 (+!3064 lt!456378 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102))) lt!456371) (apply!941 lt!456378 lt!456371))))

(declare-fun lt!456633 () Unit!33810)

(assert (=> d!124317 (= lt!456633 (choose!1703 lt!456378 lt!456375 (zeroValue!6063 lt!456102) lt!456371))))

(declare-fun e!584842 () Bool)

(assert (=> d!124317 e!584842))

(declare-fun res!691011 () Bool)

(assert (=> d!124317 (=> (not res!691011) (not e!584842))))

(assert (=> d!124317 (= res!691011 (contains!6035 lt!456378 lt!456371))))

(assert (=> d!124317 (= (addApplyDifferent!481 lt!456378 lt!456375 (zeroValue!6063 lt!456102) lt!456371) lt!456633)))

(declare-fun b!1034503 () Bool)

(assert (=> b!1034503 (= e!584842 (not (= lt!456371 lt!456375)))))

(assert (= (and d!124317 res!691011) b!1034503))

(declare-fun m!954925 () Bool)

(assert (=> d!124317 m!954925))

(assert (=> d!124317 m!953977))

(assert (=> d!124317 m!953979))

(declare-fun m!954927 () Bool)

(assert (=> d!124317 m!954927))

(assert (=> d!124317 m!953977))

(assert (=> d!124317 m!953973))

(assert (=> b!1033879 d!124317))

(declare-fun d!124319 () Bool)

(declare-fun e!584843 () Bool)

(assert (=> d!124319 e!584843))

(declare-fun res!691013 () Bool)

(assert (=> d!124319 (=> (not res!691013) (not e!584843))))

(declare-fun lt!456635 () ListLongMap!13871)

(assert (=> d!124319 (= res!691013 (contains!6035 lt!456635 (_1!7927 (tuple2!15835 lt!456374 (minValue!6063 lt!456102)))))))

(declare-fun lt!456634 () List!22022)

(assert (=> d!124319 (= lt!456635 (ListLongMap!13872 lt!456634))))

(declare-fun lt!456637 () Unit!33810)

(declare-fun lt!456636 () Unit!33810)

(assert (=> d!124319 (= lt!456637 lt!456636)))

(assert (=> d!124319 (= (getValueByKey!591 lt!456634 (_1!7927 (tuple2!15835 lt!456374 (minValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 lt!456374 (minValue!6063 lt!456102)))))))

(assert (=> d!124319 (= lt!456636 (lemmaContainsTupThenGetReturnValue!280 lt!456634 (_1!7927 (tuple2!15835 lt!456374 (minValue!6063 lt!456102))) (_2!7927 (tuple2!15835 lt!456374 (minValue!6063 lt!456102)))))))

(assert (=> d!124319 (= lt!456634 (insertStrictlySorted!372 (toList!6951 lt!456377) (_1!7927 (tuple2!15835 lt!456374 (minValue!6063 lt!456102))) (_2!7927 (tuple2!15835 lt!456374 (minValue!6063 lt!456102)))))))

(assert (=> d!124319 (= (+!3064 lt!456377 (tuple2!15835 lt!456374 (minValue!6063 lt!456102))) lt!456635)))

(declare-fun b!1034504 () Bool)

(declare-fun res!691012 () Bool)

(assert (=> b!1034504 (=> (not res!691012) (not e!584843))))

(assert (=> b!1034504 (= res!691012 (= (getValueByKey!591 (toList!6951 lt!456635) (_1!7927 (tuple2!15835 lt!456374 (minValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 lt!456374 (minValue!6063 lt!456102))))))))

(declare-fun b!1034505 () Bool)

(assert (=> b!1034505 (= e!584843 (contains!6036 (toList!6951 lt!456635) (tuple2!15835 lt!456374 (minValue!6063 lt!456102))))))

(assert (= (and d!124319 res!691013) b!1034504))

(assert (= (and b!1034504 res!691012) b!1034505))

(declare-fun m!954929 () Bool)

(assert (=> d!124319 m!954929))

(declare-fun m!954931 () Bool)

(assert (=> d!124319 m!954931))

(declare-fun m!954933 () Bool)

(assert (=> d!124319 m!954933))

(declare-fun m!954935 () Bool)

(assert (=> d!124319 m!954935))

(declare-fun m!954937 () Bool)

(assert (=> b!1034504 m!954937))

(declare-fun m!954939 () Bool)

(assert (=> b!1034505 m!954939))

(assert (=> b!1033879 d!124319))

(declare-fun d!124321 () Bool)

(declare-fun e!584844 () Bool)

(assert (=> d!124321 e!584844))

(declare-fun res!691015 () Bool)

(assert (=> d!124321 (=> (not res!691015) (not e!584844))))

(declare-fun lt!456639 () ListLongMap!13871)

(assert (=> d!124321 (= res!691015 (contains!6035 lt!456639 (_1!7927 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102)))))))

(declare-fun lt!456638 () List!22022)

(assert (=> d!124321 (= lt!456639 (ListLongMap!13872 lt!456638))))

(declare-fun lt!456641 () Unit!33810)

(declare-fun lt!456640 () Unit!33810)

(assert (=> d!124321 (= lt!456641 lt!456640)))

(assert (=> d!124321 (= (getValueByKey!591 lt!456638 (_1!7927 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102)))))))

(assert (=> d!124321 (= lt!456640 (lemmaContainsTupThenGetReturnValue!280 lt!456638 (_1!7927 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102))) (_2!7927 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102)))))))

(assert (=> d!124321 (= lt!456638 (insertStrictlySorted!372 (toList!6951 lt!456378) (_1!7927 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102))) (_2!7927 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102)))))))

(assert (=> d!124321 (= (+!3064 lt!456378 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102))) lt!456639)))

(declare-fun b!1034506 () Bool)

(declare-fun res!691014 () Bool)

(assert (=> b!1034506 (=> (not res!691014) (not e!584844))))

(assert (=> b!1034506 (= res!691014 (= (getValueByKey!591 (toList!6951 lt!456639) (_1!7927 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102)))) (Some!641 (_2!7927 (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102))))))))

(declare-fun b!1034507 () Bool)

(assert (=> b!1034507 (= e!584844 (contains!6036 (toList!6951 lt!456639) (tuple2!15835 lt!456375 (zeroValue!6063 lt!456102))))))

(assert (= (and d!124321 res!691015) b!1034506))

(assert (= (and b!1034506 res!691014) b!1034507))

(declare-fun m!954941 () Bool)

(assert (=> d!124321 m!954941))

(declare-fun m!954943 () Bool)

(assert (=> d!124321 m!954943))

(declare-fun m!954945 () Bool)

(assert (=> d!124321 m!954945))

(declare-fun m!954947 () Bool)

(assert (=> d!124321 m!954947))

(declare-fun m!954949 () Bool)

(assert (=> b!1034506 m!954949))

(declare-fun m!954951 () Bool)

(assert (=> b!1034507 m!954951))

(assert (=> b!1033879 d!124321))

(declare-fun d!124323 () Bool)

(assert (=> d!124323 (= (apply!941 (+!3064 lt!456377 (tuple2!15835 lt!456374 (minValue!6063 lt!456102))) lt!456358) (apply!941 lt!456377 lt!456358))))

(declare-fun lt!456642 () Unit!33810)

(assert (=> d!124323 (= lt!456642 (choose!1703 lt!456377 lt!456374 (minValue!6063 lt!456102) lt!456358))))

(declare-fun e!584845 () Bool)

(assert (=> d!124323 e!584845))

(declare-fun res!691016 () Bool)

(assert (=> d!124323 (=> (not res!691016) (not e!584845))))

(assert (=> d!124323 (= res!691016 (contains!6035 lt!456377 lt!456358))))

(assert (=> d!124323 (= (addApplyDifferent!481 lt!456377 lt!456374 (minValue!6063 lt!456102) lt!456358) lt!456642)))

(declare-fun b!1034508 () Bool)

(assert (=> b!1034508 (= e!584845 (not (= lt!456358 lt!456374)))))

(assert (= (and d!124323 res!691016) b!1034508))

(declare-fun m!954953 () Bool)

(assert (=> d!124323 m!954953))

(assert (=> d!124323 m!953983))

(assert (=> d!124323 m!953995))

(declare-fun m!954955 () Bool)

(assert (=> d!124323 m!954955))

(assert (=> d!124323 m!953983))

(assert (=> d!124323 m!953975))

(assert (=> b!1033879 d!124323))

(declare-fun d!124325 () Bool)

(declare-fun e!584846 () Bool)

(assert (=> d!124325 e!584846))

(declare-fun res!691017 () Bool)

(assert (=> d!124325 (=> res!691017 e!584846)))

(declare-fun lt!456643 () Bool)

(assert (=> d!124325 (= res!691017 (not lt!456643))))

(declare-fun lt!456644 () Bool)

(assert (=> d!124325 (= lt!456643 lt!456644)))

(declare-fun lt!456645 () Unit!33810)

(declare-fun e!584847 () Unit!33810)

(assert (=> d!124325 (= lt!456645 e!584847)))

(declare-fun c!104598 () Bool)

(assert (=> d!124325 (= c!104598 lt!456644)))

(assert (=> d!124325 (= lt!456644 (containsKey!564 (toList!6951 lt!456288) (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))

(assert (=> d!124325 (= (contains!6035 lt!456288 (_1!7927 (tuple2!15835 lt!456173 lt!456100))) lt!456643)))

(declare-fun b!1034509 () Bool)

(declare-fun lt!456646 () Unit!33810)

(assert (=> b!1034509 (= e!584847 lt!456646)))

(assert (=> b!1034509 (= lt!456646 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456288) (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))

(assert (=> b!1034509 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456288) (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))

(declare-fun b!1034510 () Bool)

(declare-fun Unit!33852 () Unit!33810)

(assert (=> b!1034510 (= e!584847 Unit!33852)))

(declare-fun b!1034511 () Bool)

(assert (=> b!1034511 (= e!584846 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456288) (_1!7927 (tuple2!15835 lt!456173 lt!456100)))))))

(assert (= (and d!124325 c!104598) b!1034509))

(assert (= (and d!124325 (not c!104598)) b!1034510))

(assert (= (and d!124325 (not res!691017)) b!1034511))

(declare-fun m!954957 () Bool)

(assert (=> d!124325 m!954957))

(declare-fun m!954959 () Bool)

(assert (=> b!1034509 m!954959))

(assert (=> b!1034509 m!953745))

(assert (=> b!1034509 m!953745))

(declare-fun m!954961 () Bool)

(assert (=> b!1034509 m!954961))

(assert (=> b!1034511 m!953745))

(assert (=> b!1034511 m!953745))

(assert (=> b!1034511 m!954961))

(assert (=> d!123831 d!124325))

(declare-fun b!1034515 () Bool)

(declare-fun e!584849 () Option!642)

(assert (=> b!1034515 (= e!584849 None!640)))

(declare-fun b!1034513 () Bool)

(declare-fun e!584848 () Option!642)

(assert (=> b!1034513 (= e!584848 e!584849)))

(declare-fun c!104600 () Bool)

(assert (=> b!1034513 (= c!104600 (and ((_ is Cons!22018) lt!456287) (not (= (_1!7927 (h!23220 lt!456287)) (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))))

(declare-fun b!1034512 () Bool)

(assert (=> b!1034512 (= e!584848 (Some!641 (_2!7927 (h!23220 lt!456287))))))

(declare-fun b!1034514 () Bool)

(assert (=> b!1034514 (= e!584849 (getValueByKey!591 (t!31227 lt!456287) (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))

(declare-fun d!124327 () Bool)

(declare-fun c!104599 () Bool)

(assert (=> d!124327 (= c!104599 (and ((_ is Cons!22018) lt!456287) (= (_1!7927 (h!23220 lt!456287)) (_1!7927 (tuple2!15835 lt!456173 lt!456100)))))))

(assert (=> d!124327 (= (getValueByKey!591 lt!456287 (_1!7927 (tuple2!15835 lt!456173 lt!456100))) e!584848)))

(assert (= (and d!124327 c!104599) b!1034512))

(assert (= (and d!124327 (not c!104599)) b!1034513))

(assert (= (and b!1034513 c!104600) b!1034514))

(assert (= (and b!1034513 (not c!104600)) b!1034515))

(declare-fun m!954963 () Bool)

(assert (=> b!1034514 m!954963))

(assert (=> d!123831 d!124327))

(declare-fun d!124329 () Bool)

(assert (=> d!124329 (= (getValueByKey!591 lt!456287 (_1!7927 (tuple2!15835 lt!456173 lt!456100))) (Some!641 (_2!7927 (tuple2!15835 lt!456173 lt!456100))))))

(declare-fun lt!456647 () Unit!33810)

(assert (=> d!124329 (= lt!456647 (choose!1706 lt!456287 (_1!7927 (tuple2!15835 lt!456173 lt!456100)) (_2!7927 (tuple2!15835 lt!456173 lt!456100))))))

(declare-fun e!584850 () Bool)

(assert (=> d!124329 e!584850))

(declare-fun res!691018 () Bool)

(assert (=> d!124329 (=> (not res!691018) (not e!584850))))

(assert (=> d!124329 (= res!691018 (isStrictlySorted!714 lt!456287))))

(assert (=> d!124329 (= (lemmaContainsTupThenGetReturnValue!280 lt!456287 (_1!7927 (tuple2!15835 lt!456173 lt!456100)) (_2!7927 (tuple2!15835 lt!456173 lt!456100))) lt!456647)))

(declare-fun b!1034516 () Bool)

(declare-fun res!691019 () Bool)

(assert (=> b!1034516 (=> (not res!691019) (not e!584850))))

(assert (=> b!1034516 (= res!691019 (containsKey!564 lt!456287 (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))

(declare-fun b!1034517 () Bool)

(assert (=> b!1034517 (= e!584850 (contains!6036 lt!456287 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456173 lt!456100)) (_2!7927 (tuple2!15835 lt!456173 lt!456100)))))))

(assert (= (and d!124329 res!691018) b!1034516))

(assert (= (and b!1034516 res!691019) b!1034517))

(assert (=> d!124329 m!953739))

(declare-fun m!954965 () Bool)

(assert (=> d!124329 m!954965))

(declare-fun m!954967 () Bool)

(assert (=> d!124329 m!954967))

(declare-fun m!954969 () Bool)

(assert (=> b!1034516 m!954969))

(declare-fun m!954971 () Bool)

(assert (=> b!1034517 m!954971))

(assert (=> d!123831 d!124329))

(declare-fun bm!43735 () Bool)

(declare-fun call!43739 () List!22022)

(declare-fun call!43738 () List!22022)

(assert (=> bm!43735 (= call!43739 call!43738)))

(declare-fun b!1034518 () Bool)

(declare-fun e!584853 () List!22022)

(declare-fun call!43740 () List!22022)

(assert (=> b!1034518 (= e!584853 call!43740)))

(declare-fun b!1034519 () Bool)

(declare-fun e!584852 () List!22022)

(declare-fun e!584855 () List!22022)

(assert (=> b!1034519 (= e!584852 e!584855)))

(declare-fun c!104603 () Bool)

(assert (=> b!1034519 (= c!104603 (and ((_ is Cons!22018) (toList!6951 lt!456176)) (= (_1!7927 (h!23220 (toList!6951 lt!456176))) (_1!7927 (tuple2!15835 lt!456173 lt!456100)))))))

(declare-fun b!1034520 () Bool)

(declare-fun res!691020 () Bool)

(declare-fun e!584851 () Bool)

(assert (=> b!1034520 (=> (not res!691020) (not e!584851))))

(declare-fun lt!456648 () List!22022)

(assert (=> b!1034520 (= res!691020 (containsKey!564 lt!456648 (_1!7927 (tuple2!15835 lt!456173 lt!456100))))))

(declare-fun b!1034521 () Bool)

(assert (=> b!1034521 (= e!584852 call!43738)))

(declare-fun e!584854 () List!22022)

(declare-fun c!104601 () Bool)

(declare-fun b!1034522 () Bool)

(assert (=> b!1034522 (= e!584854 (ite c!104603 (t!31227 (toList!6951 lt!456176)) (ite c!104601 (Cons!22018 (h!23220 (toList!6951 lt!456176)) (t!31227 (toList!6951 lt!456176))) Nil!22019)))))

(declare-fun bm!43736 () Bool)

(declare-fun c!104604 () Bool)

(assert (=> bm!43736 (= call!43738 ($colon$colon!605 e!584854 (ite c!104604 (h!23220 (toList!6951 lt!456176)) (tuple2!15835 (_1!7927 (tuple2!15835 lt!456173 lt!456100)) (_2!7927 (tuple2!15835 lt!456173 lt!456100))))))))

(declare-fun c!104602 () Bool)

(assert (=> bm!43736 (= c!104602 c!104604)))

(declare-fun d!124331 () Bool)

(assert (=> d!124331 e!584851))

(declare-fun res!691021 () Bool)

(assert (=> d!124331 (=> (not res!691021) (not e!584851))))

(assert (=> d!124331 (= res!691021 (isStrictlySorted!714 lt!456648))))

(assert (=> d!124331 (= lt!456648 e!584852)))

(assert (=> d!124331 (= c!104604 (and ((_ is Cons!22018) (toList!6951 lt!456176)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456176))) (_1!7927 (tuple2!15835 lt!456173 lt!456100)))))))

(assert (=> d!124331 (isStrictlySorted!714 (toList!6951 lt!456176))))

(assert (=> d!124331 (= (insertStrictlySorted!372 (toList!6951 lt!456176) (_1!7927 (tuple2!15835 lt!456173 lt!456100)) (_2!7927 (tuple2!15835 lt!456173 lt!456100))) lt!456648)))

(declare-fun bm!43737 () Bool)

(assert (=> bm!43737 (= call!43740 call!43739)))

(declare-fun b!1034523 () Bool)

(assert (=> b!1034523 (= c!104601 (and ((_ is Cons!22018) (toList!6951 lt!456176)) (bvsgt (_1!7927 (h!23220 (toList!6951 lt!456176))) (_1!7927 (tuple2!15835 lt!456173 lt!456100)))))))

(assert (=> b!1034523 (= e!584855 e!584853)))

(declare-fun b!1034524 () Bool)

(assert (=> b!1034524 (= e!584853 call!43740)))

(declare-fun b!1034525 () Bool)

(assert (=> b!1034525 (= e!584851 (contains!6036 lt!456648 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456173 lt!456100)) (_2!7927 (tuple2!15835 lt!456173 lt!456100)))))))

(declare-fun b!1034526 () Bool)

(assert (=> b!1034526 (= e!584854 (insertStrictlySorted!372 (t!31227 (toList!6951 lt!456176)) (_1!7927 (tuple2!15835 lt!456173 lt!456100)) (_2!7927 (tuple2!15835 lt!456173 lt!456100))))))

(declare-fun b!1034527 () Bool)

(assert (=> b!1034527 (= e!584855 call!43739)))

(assert (= (and d!124331 c!104604) b!1034521))

(assert (= (and d!124331 (not c!104604)) b!1034519))

(assert (= (and b!1034519 c!104603) b!1034527))

(assert (= (and b!1034519 (not c!104603)) b!1034523))

(assert (= (and b!1034523 c!104601) b!1034518))

(assert (= (and b!1034523 (not c!104601)) b!1034524))

(assert (= (or b!1034518 b!1034524) bm!43737))

(assert (= (or b!1034527 bm!43737) bm!43735))

(assert (= (or b!1034521 bm!43735) bm!43736))

(assert (= (and bm!43736 c!104602) b!1034526))

(assert (= (and bm!43736 (not c!104602)) b!1034522))

(assert (= (and d!124331 res!691021) b!1034520))

(assert (= (and b!1034520 res!691020) b!1034525))

(declare-fun m!954973 () Bool)

(assert (=> b!1034520 m!954973))

(declare-fun m!954975 () Bool)

(assert (=> d!124331 m!954975))

(declare-fun m!954977 () Bool)

(assert (=> d!124331 m!954977))

(declare-fun m!954979 () Bool)

(assert (=> b!1034526 m!954979))

(declare-fun m!954981 () Bool)

(assert (=> bm!43736 m!954981))

(declare-fun m!954983 () Bool)

(assert (=> b!1034525 m!954983))

(assert (=> d!123831 d!124331))

(declare-fun d!124333 () Bool)

(assert (=> d!124333 (= (apply!941 lt!456231 (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) (get!16445 (getValueByKey!591 (toList!6951 lt!456231) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun bs!30263 () Bool)

(assert (= bs!30263 d!124333))

(assert (=> bs!30263 m!953435))

(assert (=> bs!30263 m!954095))

(assert (=> bs!30263 m!954095))

(declare-fun m!954985 () Bool)

(assert (=> bs!30263 m!954985))

(assert (=> b!1033716 d!124333))

(assert (=> b!1033716 d!123883))

(assert (=> d!123909 d!123821))

(declare-fun d!124335 () Bool)

(declare-fun e!584856 () Bool)

(assert (=> d!124335 e!584856))

(declare-fun res!691022 () Bool)

(assert (=> d!124335 (=> res!691022 e!584856)))

(declare-fun lt!456649 () Bool)

(assert (=> d!124335 (= res!691022 (not lt!456649))))

(declare-fun lt!456650 () Bool)

(assert (=> d!124335 (= lt!456649 lt!456650)))

(declare-fun lt!456651 () Unit!33810)

(declare-fun e!584857 () Unit!33810)

(assert (=> d!124335 (= lt!456651 e!584857)))

(declare-fun c!104605 () Bool)

(assert (=> d!124335 (= c!104605 lt!456650)))

(assert (=> d!124335 (= lt!456650 (containsKey!564 (toList!6951 lt!456327) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> d!124335 (= (contains!6035 lt!456327 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456649)))

(declare-fun b!1034528 () Bool)

(declare-fun lt!456652 () Unit!33810)

(assert (=> b!1034528 (= e!584857 lt!456652)))

(assert (=> b!1034528 (= lt!456652 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456327) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(assert (=> b!1034528 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456327) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034529 () Bool)

(declare-fun Unit!33853 () Unit!33810)

(assert (=> b!1034529 (= e!584857 Unit!33853)))

(declare-fun b!1034530 () Bool)

(assert (=> b!1034530 (= e!584856 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456327) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124335 c!104605) b!1034528))

(assert (= (and d!124335 (not c!104605)) b!1034529))

(assert (= (and d!124335 (not res!691022)) b!1034530))

(declare-fun m!954987 () Bool)

(assert (=> d!124335 m!954987))

(declare-fun m!954989 () Bool)

(assert (=> b!1034528 m!954989))

(assert (=> b!1034528 m!953881))

(assert (=> b!1034528 m!953881))

(declare-fun m!954991 () Bool)

(assert (=> b!1034528 m!954991))

(assert (=> b!1034530 m!953881))

(assert (=> b!1034530 m!953881))

(assert (=> b!1034530 m!954991))

(assert (=> d!123871 d!124335))

(declare-fun b!1034534 () Bool)

(declare-fun e!584859 () Option!642)

(assert (=> b!1034534 (= e!584859 None!640)))

(declare-fun b!1034532 () Bool)

(declare-fun e!584858 () Option!642)

(assert (=> b!1034532 (= e!584858 e!584859)))

(declare-fun c!104607 () Bool)

(assert (=> b!1034532 (= c!104607 (and ((_ is Cons!22018) lt!456326) (not (= (_1!7927 (h!23220 lt!456326)) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun b!1034531 () Bool)

(assert (=> b!1034531 (= e!584858 (Some!641 (_2!7927 (h!23220 lt!456326))))))

(declare-fun b!1034533 () Bool)

(assert (=> b!1034533 (= e!584859 (getValueByKey!591 (t!31227 lt!456326) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun d!124337 () Bool)

(declare-fun c!104606 () Bool)

(assert (=> d!124337 (= c!104606 (and ((_ is Cons!22018) lt!456326) (= (_1!7927 (h!23220 lt!456326)) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!124337 (= (getValueByKey!591 lt!456326 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) e!584858)))

(assert (= (and d!124337 c!104606) b!1034531))

(assert (= (and d!124337 (not c!104606)) b!1034532))

(assert (= (and b!1034532 c!104607) b!1034533))

(assert (= (and b!1034532 (not c!104607)) b!1034534))

(declare-fun m!954993 () Bool)

(assert (=> b!1034533 m!954993))

(assert (=> d!123871 d!124337))

(declare-fun d!124339 () Bool)

(assert (=> d!124339 (= (getValueByKey!591 lt!456326 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun lt!456653 () Unit!33810)

(assert (=> d!124339 (= lt!456653 (choose!1706 lt!456326 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun e!584860 () Bool)

(assert (=> d!124339 e!584860))

(declare-fun res!691023 () Bool)

(assert (=> d!124339 (=> (not res!691023) (not e!584860))))

(assert (=> d!124339 (= res!691023 (isStrictlySorted!714 lt!456326))))

(assert (=> d!124339 (= (lemmaContainsTupThenGetReturnValue!280 lt!456326 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456653)))

(declare-fun b!1034535 () Bool)

(declare-fun res!691024 () Bool)

(assert (=> b!1034535 (=> (not res!691024) (not e!584860))))

(assert (=> b!1034535 (= res!691024 (containsKey!564 lt!456326 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034536 () Bool)

(assert (=> b!1034536 (= e!584860 (contains!6036 lt!456326 (tuple2!15835 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (= (and d!124339 res!691023) b!1034535))

(assert (= (and b!1034535 res!691024) b!1034536))

(assert (=> d!124339 m!953875))

(declare-fun m!954995 () Bool)

(assert (=> d!124339 m!954995))

(declare-fun m!954997 () Bool)

(assert (=> d!124339 m!954997))

(declare-fun m!954999 () Bool)

(assert (=> b!1034535 m!954999))

(declare-fun m!955001 () Bool)

(assert (=> b!1034536 m!955001))

(assert (=> d!123871 d!124339))

(declare-fun bm!43738 () Bool)

(declare-fun call!43742 () List!22022)

(declare-fun call!43741 () List!22022)

(assert (=> bm!43738 (= call!43742 call!43741)))

(declare-fun b!1034537 () Bool)

(declare-fun e!584863 () List!22022)

(declare-fun call!43743 () List!22022)

(assert (=> b!1034537 (= e!584863 call!43743)))

(declare-fun b!1034538 () Bool)

(declare-fun e!584862 () List!22022)

(declare-fun e!584865 () List!22022)

(assert (=> b!1034538 (= e!584862 e!584865)))

(declare-fun c!104610 () Bool)

(assert (=> b!1034538 (= c!104610 (and ((_ is Cons!22018) (toList!6951 call!43671)) (= (_1!7927 (h!23220 (toList!6951 call!43671))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034539 () Bool)

(declare-fun res!691025 () Bool)

(declare-fun e!584861 () Bool)

(assert (=> b!1034539 (=> (not res!691025) (not e!584861))))

(declare-fun lt!456654 () List!22022)

(assert (=> b!1034539 (= res!691025 (containsKey!564 lt!456654 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034540 () Bool)

(assert (=> b!1034540 (= e!584862 call!43741)))

(declare-fun b!1034541 () Bool)

(declare-fun c!104608 () Bool)

(declare-fun e!584864 () List!22022)

(assert (=> b!1034541 (= e!584864 (ite c!104610 (t!31227 (toList!6951 call!43671)) (ite c!104608 (Cons!22018 (h!23220 (toList!6951 call!43671)) (t!31227 (toList!6951 call!43671))) Nil!22019)))))

(declare-fun c!104611 () Bool)

(declare-fun bm!43739 () Bool)

(assert (=> bm!43739 (= call!43741 ($colon$colon!605 e!584864 (ite c!104611 (h!23220 (toList!6951 call!43671)) (tuple2!15835 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))))

(declare-fun c!104609 () Bool)

(assert (=> bm!43739 (= c!104609 c!104611)))

(declare-fun d!124341 () Bool)

(assert (=> d!124341 e!584861))

(declare-fun res!691026 () Bool)

(assert (=> d!124341 (=> (not res!691026) (not e!584861))))

(assert (=> d!124341 (= res!691026 (isStrictlySorted!714 lt!456654))))

(assert (=> d!124341 (= lt!456654 e!584862)))

(assert (=> d!124341 (= c!104611 (and ((_ is Cons!22018) (toList!6951 call!43671)) (bvslt (_1!7927 (h!23220 (toList!6951 call!43671))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> d!124341 (isStrictlySorted!714 (toList!6951 call!43671))))

(assert (=> d!124341 (= (insertStrictlySorted!372 (toList!6951 call!43671) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))) lt!456654)))

(declare-fun bm!43740 () Bool)

(assert (=> bm!43740 (= call!43743 call!43742)))

(declare-fun b!1034542 () Bool)

(assert (=> b!1034542 (= c!104608 (and ((_ is Cons!22018) (toList!6951 call!43671)) (bvsgt (_1!7927 (h!23220 (toList!6951 call!43671))) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(assert (=> b!1034542 (= e!584865 e!584863)))

(declare-fun b!1034543 () Bool)

(assert (=> b!1034543 (= e!584863 call!43743)))

(declare-fun b!1034544 () Bool)

(assert (=> b!1034544 (= e!584861 (contains!6036 lt!456654 (tuple2!15835 (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))))))))

(declare-fun b!1034545 () Bool)

(assert (=> b!1034545 (= e!584864 (insertStrictlySorted!372 (t!31227 (toList!6951 call!43671)) (_1!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6063 thiss!1427)))))))

(declare-fun b!1034546 () Bool)

(assert (=> b!1034546 (= e!584865 call!43742)))

(assert (= (and d!124341 c!104611) b!1034540))

(assert (= (and d!124341 (not c!104611)) b!1034538))

(assert (= (and b!1034538 c!104610) b!1034546))

(assert (= (and b!1034538 (not c!104610)) b!1034542))

(assert (= (and b!1034542 c!104608) b!1034537))

(assert (= (and b!1034542 (not c!104608)) b!1034543))

(assert (= (or b!1034537 b!1034543) bm!43740))

(assert (= (or b!1034546 bm!43740) bm!43738))

(assert (= (or b!1034540 bm!43738) bm!43739))

(assert (= (and bm!43739 c!104609) b!1034545))

(assert (= (and bm!43739 (not c!104609)) b!1034541))

(assert (= (and d!124341 res!691026) b!1034539))

(assert (= (and b!1034539 res!691025) b!1034544))

(declare-fun m!955003 () Bool)

(assert (=> b!1034539 m!955003))

(declare-fun m!955005 () Bool)

(assert (=> d!124341 m!955005))

(declare-fun m!955007 () Bool)

(assert (=> d!124341 m!955007))

(declare-fun m!955009 () Bool)

(assert (=> b!1034545 m!955009))

(declare-fun m!955011 () Bool)

(assert (=> bm!43739 m!955011))

(declare-fun m!955013 () Bool)

(assert (=> b!1034544 m!955013))

(assert (=> d!123871 d!124341))

(declare-fun d!124343 () Bool)

(assert (=> d!124343 (= (isEmpty!929 lt!456231) (isEmpty!931 (toList!6951 lt!456231)))))

(declare-fun bs!30264 () Bool)

(assert (= bs!30264 d!124343))

(declare-fun m!955015 () Bool)

(assert (=> bs!30264 m!955015))

(assert (=> b!1033712 d!124343))

(declare-fun d!124345 () Bool)

(declare-fun res!691027 () Bool)

(declare-fun e!584866 () Bool)

(assert (=> d!124345 (=> res!691027 e!584866)))

(assert (=> d!124345 (= res!691027 (and ((_ is Cons!22018) (toList!6951 lt!456188)) (= (_1!7927 (h!23220 (toList!6951 lt!456188))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(assert (=> d!124345 (= (containsKey!564 (toList!6951 lt!456188) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)) e!584866)))

(declare-fun b!1034547 () Bool)

(declare-fun e!584867 () Bool)

(assert (=> b!1034547 (= e!584866 e!584867)))

(declare-fun res!691028 () Bool)

(assert (=> b!1034547 (=> (not res!691028) (not e!584867))))

(assert (=> b!1034547 (= res!691028 (and (or (not ((_ is Cons!22018) (toList!6951 lt!456188))) (bvsle (_1!7927 (h!23220 (toList!6951 lt!456188))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))) ((_ is Cons!22018) (toList!6951 lt!456188)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456188))) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000))))))

(declare-fun b!1034548 () Bool)

(assert (=> b!1034548 (= e!584867 (containsKey!564 (t!31227 (toList!6951 lt!456188)) (select (arr!31341 (_keys!11404 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (= (and d!124345 (not res!691027)) b!1034547))

(assert (= (and b!1034547 res!691028) b!1034548))

(assert (=> b!1034548 m!953435))

(declare-fun m!955017 () Bool)

(assert (=> b!1034548 m!955017))

(assert (=> d!123869 d!124345))

(declare-fun d!124347 () Bool)

(assert (=> d!124347 (= (apply!941 lt!456362 #b0000000000000000000000000000000000000000000000000000000000000000) (get!16445 (getValueByKey!591 (toList!6951 lt!456362) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!30265 () Bool)

(assert (= bs!30265 d!124347))

(assert (=> bs!30265 m!954063))

(assert (=> bs!30265 m!954063))

(declare-fun m!955019 () Bool)

(assert (=> bs!30265 m!955019))

(assert (=> b!1033891 d!124347))

(assert (=> b!1033841 d!124119))

(assert (=> b!1033841 d!124121))

(assert (=> b!1033703 d!123819))

(declare-fun d!124349 () Bool)

(declare-fun e!584868 () Bool)

(assert (=> d!124349 e!584868))

(declare-fun res!691029 () Bool)

(assert (=> d!124349 (=> res!691029 e!584868)))

(declare-fun lt!456655 () Bool)

(assert (=> d!124349 (= res!691029 (not lt!456655))))

(declare-fun lt!456656 () Bool)

(assert (=> d!124349 (= lt!456655 lt!456656)))

(declare-fun lt!456657 () Unit!33810)

(declare-fun e!584869 () Unit!33810)

(assert (=> d!124349 (= lt!456657 e!584869)))

(declare-fun c!104612 () Bool)

(assert (=> d!124349 (= c!104612 lt!456656)))

(assert (=> d!124349 (= lt!456656 (containsKey!564 (toList!6951 lt!456263) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(assert (=> d!124349 (= (contains!6035 lt!456263 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) lt!456655)))

(declare-fun b!1034549 () Bool)

(declare-fun lt!456658 () Unit!33810)

(assert (=> b!1034549 (= e!584869 lt!456658)))

(assert (=> b!1034549 (= lt!456658 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456263) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(assert (=> b!1034549 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456263) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(declare-fun b!1034550 () Bool)

(declare-fun Unit!33854 () Unit!33810)

(assert (=> b!1034550 (= e!584869 Unit!33854)))

(declare-fun b!1034551 () Bool)

(assert (=> b!1034551 (= e!584868 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456263) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))

(assert (= (and d!124349 c!104612) b!1034549))

(assert (= (and d!124349 (not c!104612)) b!1034550))

(assert (= (and d!124349 (not res!691029)) b!1034551))

(declare-fun m!955021 () Bool)

(assert (=> d!124349 m!955021))

(declare-fun m!955023 () Bool)

(assert (=> b!1034549 m!955023))

(assert (=> b!1034549 m!953677))

(assert (=> b!1034549 m!953677))

(declare-fun m!955025 () Bool)

(assert (=> b!1034549 m!955025))

(assert (=> b!1034551 m!953677))

(assert (=> b!1034551 m!953677))

(assert (=> b!1034551 m!955025))

(assert (=> d!123805 d!124349))

(declare-fun b!1034555 () Bool)

(declare-fun e!584871 () Option!642)

(assert (=> b!1034555 (= e!584871 None!640)))

(declare-fun b!1034553 () Bool)

(declare-fun e!584870 () Option!642)

(assert (=> b!1034553 (= e!584870 e!584871)))

(declare-fun c!104614 () Bool)

(assert (=> b!1034553 (= c!104614 (and ((_ is Cons!22018) lt!456262) (not (= (_1!7927 (h!23220 lt!456262)) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))))

(declare-fun b!1034552 () Bool)

(assert (=> b!1034552 (= e!584870 (Some!641 (_2!7927 (h!23220 lt!456262))))))

(declare-fun b!1034554 () Bool)

(assert (=> b!1034554 (= e!584871 (getValueByKey!591 (t!31227 lt!456262) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(declare-fun c!104613 () Bool)

(declare-fun d!124351 () Bool)

(assert (=> d!124351 (= c!104613 (and ((_ is Cons!22018) lt!456262) (= (_1!7927 (h!23220 lt!456262)) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))

(assert (=> d!124351 (= (getValueByKey!591 lt!456262 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) e!584870)))

(assert (= (and d!124351 c!104613) b!1034552))

(assert (= (and d!124351 (not c!104613)) b!1034553))

(assert (= (and b!1034553 c!104614) b!1034554))

(assert (= (and b!1034553 (not c!104614)) b!1034555))

(declare-fun m!955027 () Bool)

(assert (=> b!1034554 m!955027))

(assert (=> d!123805 d!124351))

(declare-fun d!124353 () Bool)

(assert (=> d!124353 (= (getValueByKey!591 lt!456262 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) (Some!641 (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(declare-fun lt!456659 () Unit!33810)

(assert (=> d!124353 (= lt!456659 (choose!1706 lt!456262 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(declare-fun e!584872 () Bool)

(assert (=> d!124353 e!584872))

(declare-fun res!691030 () Bool)

(assert (=> d!124353 (=> (not res!691030) (not e!584872))))

(assert (=> d!124353 (= res!691030 (isStrictlySorted!714 lt!456262))))

(assert (=> d!124353 (= (lemmaContainsTupThenGetReturnValue!280 lt!456262 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) lt!456659)))

(declare-fun b!1034556 () Bool)

(declare-fun res!691031 () Bool)

(assert (=> b!1034556 (=> (not res!691031) (not e!584872))))

(assert (=> b!1034556 (= res!691031 (containsKey!564 lt!456262 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(declare-fun b!1034557 () Bool)

(assert (=> b!1034557 (= e!584872 (contains!6036 lt!456262 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))

(assert (= (and d!124353 res!691030) b!1034556))

(assert (= (and b!1034556 res!691031) b!1034557))

(assert (=> d!124353 m!953671))

(declare-fun m!955029 () Bool)

(assert (=> d!124353 m!955029))

(declare-fun m!955031 () Bool)

(assert (=> d!124353 m!955031))

(declare-fun m!955033 () Bool)

(assert (=> b!1034556 m!955033))

(declare-fun m!955035 () Bool)

(assert (=> b!1034557 m!955035))

(assert (=> d!123805 d!124353))

(declare-fun bm!43741 () Bool)

(declare-fun call!43745 () List!22022)

(declare-fun call!43744 () List!22022)

(assert (=> bm!43741 (= call!43745 call!43744)))

(declare-fun b!1034558 () Bool)

(declare-fun e!584875 () List!22022)

(declare-fun call!43746 () List!22022)

(assert (=> b!1034558 (= e!584875 call!43746)))

(declare-fun b!1034559 () Bool)

(declare-fun e!584874 () List!22022)

(declare-fun e!584877 () List!22022)

(assert (=> b!1034559 (= e!584874 e!584877)))

(declare-fun c!104617 () Bool)

(assert (=> b!1034559 (= c!104617 (and ((_ is Cons!22018) (toList!6951 lt!456204)) (= (_1!7927 (h!23220 (toList!6951 lt!456204))) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))

(declare-fun b!1034560 () Bool)

(declare-fun res!691032 () Bool)

(declare-fun e!584873 () Bool)

(assert (=> b!1034560 (=> (not res!691032) (not e!584873))))

(declare-fun lt!456660 () List!22022)

(assert (=> b!1034560 (= res!691032 (containsKey!564 lt!456660 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(declare-fun b!1034561 () Bool)

(assert (=> b!1034561 (= e!584874 call!43744)))

(declare-fun c!104615 () Bool)

(declare-fun b!1034562 () Bool)

(declare-fun e!584876 () List!22022)

(assert (=> b!1034562 (= e!584876 (ite c!104617 (t!31227 (toList!6951 lt!456204)) (ite c!104615 (Cons!22018 (h!23220 (toList!6951 lt!456204)) (t!31227 (toList!6951 lt!456204))) Nil!22019)))))

(declare-fun bm!43742 () Bool)

(declare-fun c!104618 () Bool)

(assert (=> bm!43742 (= call!43744 ($colon$colon!605 e!584876 (ite c!104618 (h!23220 (toList!6951 lt!456204)) (tuple2!15835 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))))

(declare-fun c!104616 () Bool)

(assert (=> bm!43742 (= c!104616 c!104618)))

(declare-fun d!124355 () Bool)

(assert (=> d!124355 e!584873))

(declare-fun res!691033 () Bool)

(assert (=> d!124355 (=> (not res!691033) (not e!584873))))

(assert (=> d!124355 (= res!691033 (isStrictlySorted!714 lt!456660))))

(assert (=> d!124355 (= lt!456660 e!584874)))

(assert (=> d!124355 (= c!104618 (and ((_ is Cons!22018) (toList!6951 lt!456204)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456204))) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))

(assert (=> d!124355 (isStrictlySorted!714 (toList!6951 lt!456204))))

(assert (=> d!124355 (= (insertStrictlySorted!372 (toList!6951 lt!456204) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))) lt!456660)))

(declare-fun bm!43743 () Bool)

(assert (=> bm!43743 (= call!43746 call!43745)))

(declare-fun b!1034563 () Bool)

(assert (=> b!1034563 (= c!104615 (and ((_ is Cons!22018) (toList!6951 lt!456204)) (bvsgt (_1!7927 (h!23220 (toList!6951 lt!456204))) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))

(assert (=> b!1034563 (= e!584877 e!584875)))

(declare-fun b!1034564 () Bool)

(assert (=> b!1034564 (= e!584875 call!43746)))

(declare-fun b!1034565 () Bool)

(assert (=> b!1034565 (= e!584873 (contains!6036 lt!456660 (tuple2!15835 (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))))))))

(declare-fun b!1034566 () Bool)

(assert (=> b!1034566 (= e!584876 (insertStrictlySorted!372 (t!31227 (toList!6951 lt!456204)) (_1!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427))) (_2!7927 (tuple2!15835 lt!456201 (zeroValue!6063 thiss!1427)))))))

(declare-fun b!1034567 () Bool)

(assert (=> b!1034567 (= e!584877 call!43745)))

(assert (= (and d!124355 c!104618) b!1034561))

(assert (= (and d!124355 (not c!104618)) b!1034559))

(assert (= (and b!1034559 c!104617) b!1034567))

(assert (= (and b!1034559 (not c!104617)) b!1034563))

(assert (= (and b!1034563 c!104615) b!1034558))

(assert (= (and b!1034563 (not c!104615)) b!1034564))

(assert (= (or b!1034558 b!1034564) bm!43743))

(assert (= (or b!1034567 bm!43743) bm!43741))

(assert (= (or b!1034561 bm!43741) bm!43742))

(assert (= (and bm!43742 c!104616) b!1034566))

(assert (= (and bm!43742 (not c!104616)) b!1034562))

(assert (= (and d!124355 res!691033) b!1034560))

(assert (= (and b!1034560 res!691032) b!1034565))

(declare-fun m!955037 () Bool)

(assert (=> b!1034560 m!955037))

(declare-fun m!955039 () Bool)

(assert (=> d!124355 m!955039))

(declare-fun m!955041 () Bool)

(assert (=> d!124355 m!955041))

(declare-fun m!955043 () Bool)

(assert (=> b!1034566 m!955043))

(declare-fun m!955045 () Bool)

(assert (=> bm!43742 m!955045))

(declare-fun m!955047 () Bool)

(assert (=> b!1034565 m!955047))

(assert (=> d!123805 d!124355))

(declare-fun d!124357 () Bool)

(declare-fun e!584878 () Bool)

(assert (=> d!124357 e!584878))

(declare-fun res!691034 () Bool)

(assert (=> d!124357 (=> res!691034 e!584878)))

(declare-fun lt!456661 () Bool)

(assert (=> d!124357 (= res!691034 (not lt!456661))))

(declare-fun lt!456662 () Bool)

(assert (=> d!124357 (= lt!456661 lt!456662)))

(declare-fun lt!456663 () Unit!33810)

(declare-fun e!584879 () Unit!33810)

(assert (=> d!124357 (= lt!456663 e!584879)))

(declare-fun c!104619 () Bool)

(assert (=> d!124357 (= c!104619 lt!456662)))

(assert (=> d!124357 (= lt!456662 (containsKey!564 (toList!6951 lt!456224) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124357 (= (contains!6035 lt!456224 #b1000000000000000000000000000000000000000000000000000000000000000) lt!456661)))

(declare-fun b!1034568 () Bool)

(declare-fun lt!456664 () Unit!33810)

(assert (=> b!1034568 (= e!584879 lt!456664)))

(assert (=> b!1034568 (= lt!456664 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456224) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1034568 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456224) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1034569 () Bool)

(declare-fun Unit!33855 () Unit!33810)

(assert (=> b!1034569 (= e!584879 Unit!33855)))

(declare-fun b!1034570 () Bool)

(assert (=> b!1034570 (= e!584878 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456224) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124357 c!104619) b!1034568))

(assert (= (and d!124357 (not c!104619)) b!1034569))

(assert (= (and d!124357 (not res!691034)) b!1034570))

(declare-fun m!955049 () Bool)

(assert (=> d!124357 m!955049))

(declare-fun m!955051 () Bool)

(assert (=> b!1034568 m!955051))

(declare-fun m!955053 () Bool)

(assert (=> b!1034568 m!955053))

(assert (=> b!1034568 m!955053))

(declare-fun m!955055 () Bool)

(assert (=> b!1034568 m!955055))

(assert (=> b!1034570 m!955053))

(assert (=> b!1034570 m!955053))

(assert (=> b!1034570 m!955055))

(assert (=> b!1033699 d!124357))

(assert (=> b!1033804 d!124145))

(assert (=> b!1033804 d!124147))

(declare-fun b!1034572 () Bool)

(declare-fun e!584883 () Bool)

(declare-fun e!584881 () Bool)

(assert (=> b!1034572 (= e!584883 e!584881)))

(declare-fun c!104620 () Bool)

(assert (=> b!1034572 (= c!104620 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1034573 () Bool)

(declare-fun e!584882 () Bool)

(assert (=> b!1034573 (= e!584882 (contains!6037 (ite c!104372 (Cons!22019 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) Nil!22020) Nil!22020) (select (arr!31341 (_keys!11404 lt!456102)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1034574 () Bool)

(declare-fun call!43747 () Bool)

(assert (=> b!1034574 (= e!584881 call!43747)))

(declare-fun b!1034575 () Bool)

(assert (=> b!1034575 (= e!584881 call!43747)))

(declare-fun bm!43744 () Bool)

(assert (=> bm!43744 (= call!43747 (arrayNoDuplicates!0 (_keys!11404 lt!456102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!104620 (Cons!22019 (select (arr!31341 (_keys!11404 lt!456102)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!104372 (Cons!22019 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) Nil!22020) Nil!22020)) (ite c!104372 (Cons!22019 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) Nil!22020) Nil!22020))))))

(declare-fun d!124359 () Bool)

(declare-fun res!691036 () Bool)

(declare-fun e!584880 () Bool)

(assert (=> d!124359 (=> res!691036 e!584880)))

(assert (=> d!124359 (= res!691036 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 lt!456102))))))

(assert (=> d!124359 (= (arrayNoDuplicates!0 (_keys!11404 lt!456102) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!104372 (Cons!22019 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) Nil!22020) Nil!22020)) e!584880)))

(declare-fun b!1034571 () Bool)

(assert (=> b!1034571 (= e!584880 e!584883)))

(declare-fun res!691035 () Bool)

(assert (=> b!1034571 (=> (not res!691035) (not e!584883))))

(assert (=> b!1034571 (= res!691035 (not e!584882))))

(declare-fun res!691037 () Bool)

(assert (=> b!1034571 (=> (not res!691037) (not e!584882))))

(assert (=> b!1034571 (= res!691037 (validKeyInArray!0 (select (arr!31341 (_keys!11404 lt!456102)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!124359 (not res!691036)) b!1034571))

(assert (= (and b!1034571 res!691037) b!1034573))

(assert (= (and b!1034571 res!691035) b!1034572))

(assert (= (and b!1034572 c!104620) b!1034574))

(assert (= (and b!1034572 (not c!104620)) b!1034575))

(assert (= (or b!1034574 b!1034575) bm!43744))

(assert (=> b!1034572 m!954043))

(assert (=> b!1034572 m!954043))

(assert (=> b!1034572 m!954045))

(assert (=> b!1034573 m!954043))

(assert (=> b!1034573 m!954043))

(declare-fun m!955057 () Bool)

(assert (=> b!1034573 m!955057))

(assert (=> bm!43744 m!954043))

(declare-fun m!955059 () Bool)

(assert (=> bm!43744 m!955059))

(assert (=> b!1034571 m!954043))

(assert (=> b!1034571 m!954043))

(assert (=> b!1034571 m!954045))

(assert (=> bm!43677 d!124359))

(declare-fun d!124361 () Bool)

(assert (=> d!124361 (isDefined!436 (getValueByKey!591 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196))))

(declare-fun lt!456665 () Unit!33810)

(assert (=> d!124361 (= lt!456665 (choose!1705 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196))))

(declare-fun e!584884 () Bool)

(assert (=> d!124361 e!584884))

(declare-fun res!691038 () Bool)

(assert (=> d!124361 (=> (not res!691038) (not e!584884))))

(assert (=> d!124361 (= res!691038 (isStrictlySorted!714 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427))))))))

(assert (=> d!124361 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196) lt!456665)))

(declare-fun b!1034576 () Bool)

(assert (=> b!1034576 (= e!584884 (containsKey!564 (toList!6951 (+!3064 lt!456185 (tuple2!15835 lt!456193 (zeroValue!6063 thiss!1427)))) lt!456196))))

(assert (= (and d!124361 res!691038) b!1034576))

(assert (=> d!124361 m!953709))

(assert (=> d!124361 m!953709))

(assert (=> d!124361 m!953711))

(declare-fun m!955061 () Bool)

(assert (=> d!124361 m!955061))

(declare-fun m!955063 () Bool)

(assert (=> d!124361 m!955063))

(assert (=> b!1034576 m!953705))

(assert (=> b!1033750 d!124361))

(assert (=> b!1033750 d!124125))

(assert (=> b!1033750 d!124127))

(assert (=> b!1033873 d!123929))

(declare-fun d!124363 () Bool)

(assert (=> d!124363 (arrayContainsKey!0 (_keys!11404 lt!456102) lt!456338 #b00000000000000000000000000000000)))

(declare-fun lt!456666 () Unit!33810)

(assert (=> d!124363 (= lt!456666 (choose!13 (_keys!11404 lt!456102) lt!456338 #b00000000000000000000000000000000))))

(assert (=> d!124363 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!124363 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11404 lt!456102) lt!456338 #b00000000000000000000000000000000) lt!456666)))

(declare-fun bs!30266 () Bool)

(assert (= bs!30266 d!124363))

(assert (=> bs!30266 m!953895))

(declare-fun m!955065 () Bool)

(assert (=> bs!30266 m!955065))

(assert (=> b!1033835 d!124363))

(declare-fun d!124365 () Bool)

(declare-fun res!691039 () Bool)

(declare-fun e!584885 () Bool)

(assert (=> d!124365 (=> res!691039 e!584885)))

(assert (=> d!124365 (= res!691039 (= (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) lt!456338))))

(assert (=> d!124365 (= (arrayContainsKey!0 (_keys!11404 lt!456102) lt!456338 #b00000000000000000000000000000000) e!584885)))

(declare-fun b!1034577 () Bool)

(declare-fun e!584886 () Bool)

(assert (=> b!1034577 (= e!584885 e!584886)))

(declare-fun res!691040 () Bool)

(assert (=> b!1034577 (=> (not res!691040) (not e!584886))))

(assert (=> b!1034577 (= res!691040 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31864 (_keys!11404 lt!456102))))))

(declare-fun b!1034578 () Bool)

(assert (=> b!1034578 (= e!584886 (arrayContainsKey!0 (_keys!11404 lt!456102) lt!456338 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!124365 (not res!691039)) b!1034577))

(assert (= (and b!1034577 res!691040) b!1034578))

(assert (=> d!124365 m!953851))

(declare-fun m!955067 () Bool)

(assert (=> b!1034578 m!955067))

(assert (=> b!1033835 d!124365))

(declare-fun b!1034579 () Bool)

(declare-fun e!584889 () SeekEntryResult!9733)

(assert (=> b!1034579 (= e!584889 Undefined!9733)))

(declare-fun d!124367 () Bool)

(declare-fun lt!456668 () SeekEntryResult!9733)

(assert (=> d!124367 (and (or ((_ is Undefined!9733) lt!456668) (not ((_ is Found!9733) lt!456668)) (and (bvsge (index!41303 lt!456668) #b00000000000000000000000000000000) (bvslt (index!41303 lt!456668) (size!31864 (_keys!11404 lt!456102))))) (or ((_ is Undefined!9733) lt!456668) ((_ is Found!9733) lt!456668) (not ((_ is MissingZero!9733) lt!456668)) (and (bvsge (index!41302 lt!456668) #b00000000000000000000000000000000) (bvslt (index!41302 lt!456668) (size!31864 (_keys!11404 lt!456102))))) (or ((_ is Undefined!9733) lt!456668) ((_ is Found!9733) lt!456668) ((_ is MissingZero!9733) lt!456668) (not ((_ is MissingVacant!9733) lt!456668)) (and (bvsge (index!41305 lt!456668) #b00000000000000000000000000000000) (bvslt (index!41305 lt!456668) (size!31864 (_keys!11404 lt!456102))))) (or ((_ is Undefined!9733) lt!456668) (ite ((_ is Found!9733) lt!456668) (= (select (arr!31341 (_keys!11404 lt!456102)) (index!41303 lt!456668)) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9733) lt!456668) (= (select (arr!31341 (_keys!11404 lt!456102)) (index!41302 lt!456668)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9733) lt!456668) (= (select (arr!31341 (_keys!11404 lt!456102)) (index!41305 lt!456668)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!124367 (= lt!456668 e!584889)))

(declare-fun c!104622 () Bool)

(declare-fun lt!456667 () SeekEntryResult!9733)

(assert (=> d!124367 (= c!104622 (and ((_ is Intermediate!9733) lt!456667) (undefined!10545 lt!456667)))))

(assert (=> d!124367 (= lt!456667 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) (mask!30079 lt!456102)) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) (_keys!11404 lt!456102) (mask!30079 lt!456102)))))

(assert (=> d!124367 (validMask!0 (mask!30079 lt!456102))))

(assert (=> d!124367 (= (seekEntryOrOpen!0 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) (_keys!11404 lt!456102) (mask!30079 lt!456102)) lt!456668)))

(declare-fun b!1034580 () Bool)

(declare-fun e!584887 () SeekEntryResult!9733)

(assert (=> b!1034580 (= e!584889 e!584887)))

(declare-fun lt!456669 () (_ BitVec 64))

(assert (=> b!1034580 (= lt!456669 (select (arr!31341 (_keys!11404 lt!456102)) (index!41304 lt!456667)))))

(declare-fun c!104621 () Bool)

(assert (=> b!1034580 (= c!104621 (= lt!456669 (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000)))))

(declare-fun b!1034581 () Bool)

(declare-fun c!104623 () Bool)

(assert (=> b!1034581 (= c!104623 (= lt!456669 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!584888 () SeekEntryResult!9733)

(assert (=> b!1034581 (= e!584887 e!584888)))

(declare-fun b!1034582 () Bool)

(assert (=> b!1034582 (= e!584888 (MissingZero!9733 (index!41304 lt!456667)))))

(declare-fun b!1034583 () Bool)

(assert (=> b!1034583 (= e!584887 (Found!9733 (index!41304 lt!456667)))))

(declare-fun b!1034584 () Bool)

(assert (=> b!1034584 (= e!584888 (seekKeyOrZeroReturnVacant!0 (x!92215 lt!456667) (index!41304 lt!456667) (index!41304 lt!456667) (select (arr!31341 (_keys!11404 lt!456102)) #b00000000000000000000000000000000) (_keys!11404 lt!456102) (mask!30079 lt!456102)))))

(assert (= (and d!124367 c!104622) b!1034579))

(assert (= (and d!124367 (not c!104622)) b!1034580))

(assert (= (and b!1034580 c!104621) b!1034583))

(assert (= (and b!1034580 (not c!104621)) b!1034581))

(assert (= (and b!1034581 c!104623) b!1034582))

(assert (= (and b!1034581 (not c!104623)) b!1034584))

(declare-fun m!955069 () Bool)

(assert (=> d!124367 m!955069))

(assert (=> d!124367 m!953851))

(declare-fun m!955071 () Bool)

(assert (=> d!124367 m!955071))

(declare-fun m!955073 () Bool)

(assert (=> d!124367 m!955073))

(assert (=> d!124367 m!953887))

(assert (=> d!124367 m!953851))

(assert (=> d!124367 m!955069))

(declare-fun m!955075 () Bool)

(assert (=> d!124367 m!955075))

(declare-fun m!955077 () Bool)

(assert (=> d!124367 m!955077))

(declare-fun m!955079 () Bool)

(assert (=> b!1034580 m!955079))

(assert (=> b!1034584 m!953851))

(declare-fun m!955081 () Bool)

(assert (=> b!1034584 m!955081))

(assert (=> b!1033835 d!124367))

(declare-fun d!124369 () Bool)

(declare-fun res!691041 () Bool)

(declare-fun e!584890 () Bool)

(assert (=> d!124369 (=> res!691041 e!584890)))

(assert (=> d!124369 (= res!691041 (or ((_ is Nil!22019) lt!456317) ((_ is Nil!22019) (t!31227 lt!456317))))))

(assert (=> d!124369 (= (isStrictlySorted!714 lt!456317) e!584890)))

(declare-fun b!1034585 () Bool)

(declare-fun e!584891 () Bool)

(assert (=> b!1034585 (= e!584890 e!584891)))

(declare-fun res!691042 () Bool)

(assert (=> b!1034585 (=> (not res!691042) (not e!584891))))

(assert (=> b!1034585 (= res!691042 (bvslt (_1!7927 (h!23220 lt!456317)) (_1!7927 (h!23220 (t!31227 lt!456317)))))))

(declare-fun b!1034586 () Bool)

(assert (=> b!1034586 (= e!584891 (isStrictlySorted!714 (t!31227 lt!456317)))))

(assert (= (and d!124369 (not res!691041)) b!1034585))

(assert (= (and b!1034585 res!691042) b!1034586))

(declare-fun m!955083 () Bool)

(assert (=> b!1034586 m!955083))

(assert (=> d!123859 d!124369))

(declare-fun d!124371 () Bool)

(declare-fun res!691043 () Bool)

(declare-fun e!584892 () Bool)

(assert (=> d!124371 (=> res!691043 e!584892)))

(assert (=> d!124371 (= res!691043 (or ((_ is Nil!22019) (toList!6951 (map!14707 thiss!1427))) ((_ is Nil!22019) (t!31227 (toList!6951 (map!14707 thiss!1427))))))))

(assert (=> d!124371 (= (isStrictlySorted!714 (toList!6951 (map!14707 thiss!1427))) e!584892)))

(declare-fun b!1034587 () Bool)

(declare-fun e!584893 () Bool)

(assert (=> b!1034587 (= e!584892 e!584893)))

(declare-fun res!691044 () Bool)

(assert (=> b!1034587 (=> (not res!691044) (not e!584893))))

(assert (=> b!1034587 (= res!691044 (bvslt (_1!7927 (h!23220 (toList!6951 (map!14707 thiss!1427)))) (_1!7927 (h!23220 (t!31227 (toList!6951 (map!14707 thiss!1427)))))))))

(declare-fun b!1034588 () Bool)

(assert (=> b!1034588 (= e!584893 (isStrictlySorted!714 (t!31227 (toList!6951 (map!14707 thiss!1427)))))))

(assert (= (and d!124371 (not res!691043)) b!1034587))

(assert (= (and b!1034587 res!691044) b!1034588))

(assert (=> b!1034588 m!954577))

(assert (=> d!123859 d!124371))

(declare-fun d!124373 () Bool)

(declare-fun res!691045 () Bool)

(declare-fun e!584894 () Bool)

(assert (=> d!124373 (=> res!691045 e!584894)))

(assert (=> d!124373 (= res!691045 (and ((_ is Cons!22018) (toList!6951 lt!456206)) (= (_1!7927 (h!23220 (toList!6951 lt!456206))) key!909)))))

(assert (=> d!124373 (= (containsKey!564 (toList!6951 lt!456206) key!909) e!584894)))

(declare-fun b!1034589 () Bool)

(declare-fun e!584895 () Bool)

(assert (=> b!1034589 (= e!584894 e!584895)))

(declare-fun res!691046 () Bool)

(assert (=> b!1034589 (=> (not res!691046) (not e!584895))))

(assert (=> b!1034589 (= res!691046 (and (or (not ((_ is Cons!22018) (toList!6951 lt!456206))) (bvsle (_1!7927 (h!23220 (toList!6951 lt!456206))) key!909)) ((_ is Cons!22018) (toList!6951 lt!456206)) (bvslt (_1!7927 (h!23220 (toList!6951 lt!456206))) key!909)))))

(declare-fun b!1034590 () Bool)

(assert (=> b!1034590 (= e!584895 (containsKey!564 (t!31227 (toList!6951 lt!456206)) key!909))))

(assert (= (and d!124373 (not res!691045)) b!1034589))

(assert (= (and b!1034589 res!691046) b!1034590))

(declare-fun m!955085 () Bool)

(assert (=> b!1034590 m!955085))

(assert (=> d!123857 d!124373))

(declare-fun d!124375 () Bool)

(declare-fun e!584896 () Bool)

(assert (=> d!124375 e!584896))

(declare-fun res!691047 () Bool)

(assert (=> d!124375 (=> res!691047 e!584896)))

(declare-fun lt!456670 () Bool)

(assert (=> d!124375 (= res!691047 (not lt!456670))))

(declare-fun lt!456671 () Bool)

(assert (=> d!124375 (= lt!456670 lt!456671)))

(declare-fun lt!456672 () Unit!33810)

(declare-fun e!584897 () Unit!33810)

(assert (=> d!124375 (= lt!456672 e!584897)))

(declare-fun c!104624 () Bool)

(assert (=> d!124375 (= c!104624 lt!456671)))

(assert (=> d!124375 (= lt!456671 (containsKey!564 (toList!6951 lt!456231) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!124375 (= (contains!6035 lt!456231 #b0000000000000000000000000000000000000000000000000000000000000000) lt!456670)))

(declare-fun b!1034591 () Bool)

(declare-fun lt!456673 () Unit!33810)

(assert (=> b!1034591 (= e!584897 lt!456673)))

(assert (=> b!1034591 (= lt!456673 (lemmaContainsKeyImpliesGetValueByKeyDefined!396 (toList!6951 lt!456231) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1034591 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456231) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1034592 () Bool)

(declare-fun Unit!33856 () Unit!33810)

(assert (=> b!1034592 (= e!584897 Unit!33856)))

(declare-fun b!1034593 () Bool)

(assert (=> b!1034593 (= e!584896 (isDefined!436 (getValueByKey!591 (toList!6951 lt!456231) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!124375 c!104624) b!1034591))

(assert (= (and d!124375 (not c!104624)) b!1034592))

(assert (= (and d!124375 (not res!691047)) b!1034593))

(declare-fun m!955087 () Bool)

(assert (=> d!124375 m!955087))

(declare-fun m!955089 () Bool)

(assert (=> b!1034591 m!955089))

(declare-fun m!955091 () Bool)

(assert (=> b!1034591 m!955091))

(assert (=> b!1034591 m!955091))

(declare-fun m!955093 () Bool)

(assert (=> b!1034591 m!955093))

(assert (=> b!1034593 m!955091))

(assert (=> b!1034593 m!955091))

(assert (=> b!1034593 m!955093))

(assert (=> d!123783 d!124375))

(assert (=> d!123783 d!123821))

(assert (=> b!1033859 d!123929))

(assert (=> b!1033907 d!124163))

(assert (=> b!1033907 d!124033))

(declare-fun condMapEmpty!38269 () Bool)

(declare-fun mapDefault!38269 () ValueCell!11556)

(assert (=> mapNonEmpty!38268 (= condMapEmpty!38269 (= mapRest!38268 ((as const (Array (_ BitVec 32) ValueCell!11556)) mapDefault!38269)))))

(declare-fun e!584898 () Bool)

(declare-fun mapRes!38269 () Bool)

(assert (=> mapNonEmpty!38268 (= tp!73508 (and e!584898 mapRes!38269))))

(declare-fun mapIsEmpty!38269 () Bool)

(assert (=> mapIsEmpty!38269 mapRes!38269))

(declare-fun mapNonEmpty!38269 () Bool)

(declare-fun tp!73509 () Bool)

(declare-fun e!584899 () Bool)

(assert (=> mapNonEmpty!38269 (= mapRes!38269 (and tp!73509 e!584899))))

(declare-fun mapRest!38269 () (Array (_ BitVec 32) ValueCell!11556))

(declare-fun mapKey!38269 () (_ BitVec 32))

(declare-fun mapValue!38269 () ValueCell!11556)

(assert (=> mapNonEmpty!38269 (= mapRest!38268 (store mapRest!38269 mapKey!38269 mapValue!38269))))

(declare-fun b!1034594 () Bool)

(assert (=> b!1034594 (= e!584899 tp_is_empty!24519)))

(declare-fun b!1034595 () Bool)

(assert (=> b!1034595 (= e!584898 tp_is_empty!24519)))

(assert (= (and mapNonEmpty!38268 condMapEmpty!38269) mapIsEmpty!38269))

(assert (= (and mapNonEmpty!38268 (not condMapEmpty!38269)) mapNonEmpty!38269))

(assert (= (and mapNonEmpty!38269 ((_ is ValueCellFull!11556) mapValue!38269)) b!1034594))

(assert (= (and mapNonEmpty!38268 ((_ is ValueCellFull!11556) mapDefault!38269)) b!1034595))

(declare-fun m!955095 () Bool)

(assert (=> mapNonEmpty!38269 m!955095))

(declare-fun b_lambda!16121 () Bool)

(assert (= b_lambda!16115 (or (and b!1033541 b_free!20799) b_lambda!16121)))

(declare-fun b_lambda!16123 () Bool)

(assert (= b_lambda!16113 (or (and b!1033541 b_free!20799) b_lambda!16123)))

(declare-fun b_lambda!16125 () Bool)

(assert (= b_lambda!16109 (or (and b!1033541 b_free!20799) b_lambda!16125)))

(declare-fun b_lambda!16127 () Bool)

(assert (= b_lambda!16111 (or (and b!1033541 b_free!20799) b_lambda!16127)))

(declare-fun b_lambda!16129 () Bool)

(assert (= b_lambda!16099 (or (and b!1033541 b_free!20799 (= (defaultEntry!6227 thiss!1427) (defaultEntry!6227 lt!456102))) b_lambda!16129)))

(check-sat (not b!1034083) (not b!1034404) (not d!124293) (not d!124077) (not b!1034262) (not b!1033964) (not b!1034440) (not b!1034428) (not b!1034295) (not b!1034369) (not d!124361) (not d!124129) (not d!124001) (not d!124067) (not d!124041) (not b!1034222) (not b!1034469) (not d!124307) (not b!1034383) (not b!1034593) (not b!1034206) (not d!123927) (not b!1034390) (not b!1034022) (not d!123965) (not b!1034181) (not b!1033948) (not b!1034401) (not b!1034143) (not b!1034432) (not d!124217) (not d!123955) (not b!1034375) (not b!1034588) (not b!1034193) (not b!1034551) (not b!1034438) (not d!124303) (not b!1034038) (not b!1034162) (not b!1034198) (not b!1034326) (not b!1034203) (not b!1034077) (not b!1034395) (not d!124231) (not d!124261) (not b!1034342) (not b!1033950) (not d!124119) (not b!1034324) (not b!1034060) (not b!1034110) (not b!1034591) (not b!1034303) (not b!1034417) (not b!1034306) (not b_lambda!16127) (not b!1034572) (not d!124367) (not b!1034028) (not bm!43716) (not b!1034332) (not b!1034102) (not b!1033924) (not b!1034300) (not b!1034415) (not d!124275) (not b!1033980) (not d!123985) (not bm!43729) (not d!123979) (not b!1034477) (not b!1034047) (not b_lambda!16081) (not b!1034259) (not b!1034317) (not b!1034230) (not d!124329) (not d!124349) (not b!1034424) (not d!124353) (not d!124021) (not bm!43742) (not b!1034325) (not d!124131) (not b!1034436) (not d!124207) (not b!1034528) (not d!124061) (not b!1034072) (not b!1034264) (not b!1034089) (not b!1034156) (not b!1034384) (not d!124247) (not d!124263) (not b!1034420) (not b!1034284) (not b!1033936) (not d!124139) (not d!124037) (not b!1034504) (not bm!43714) (not bm!43709) (not b!1034281) (not d!123921) (not b!1034024) b_and!33319 (not b!1034220) (not d!124245) (not b!1034094) (not d!124169) (not bm!43704) (not d!124241) (not d!124269) (not b!1034494) (not d!124273) (not b!1034245) (not b!1034033) (not d!124073) (not b!1033943) (not b!1034509) (not b!1034177) (not b!1034479) (not d!123991) (not b!1034165) (not b_lambda!16119) tp_is_empty!24519 (not d!124209) (not d!124145) (not b!1034374) (not b_lambda!16117) (not b!1034133) (not b!1034070) (not b!1034168) (not d!124117) (not b!1034064) (not d!124311) (not b!1034116) (not b!1034189) (not d!124315) (not bm!43736) (not b!1034568) (not d!124135) (not d!123959) (not b!1034517) (not b!1034074) (not b!1033953) (not b!1034362) (not b!1034041) (not b!1034211) (not b!1033961) (not d!124053) (not b!1034106) (not b!1034557) (not d!123941) (not d!124101) (not b!1034216) (not b!1034063) (not d!123999) (not d!124313) (not b!1033958) (not b!1034366) (not b!1034021) (not b!1034346) (not b!1034586) (not d!123963) (not b!1034119) (not d!123993) (not b!1034225) (not b!1034439) (not b!1034215) (not b!1034153) (not d!124161) (not b_lambda!16105) (not b!1034530) (not b!1034147) (not b!1034533) (not b_next!20799) (not b!1034487) (not b!1034549) (not b!1034244) (not b!1034249) (not d!124325) (not b!1034482) (not b!1034578) (not b!1034044) (not b!1034166) (not d!124035) (not b!1034267) (not b!1034393) (not b!1034556) (not b!1034161) (not b!1034318) (not b_lambda!16125) (not b!1034239) (not d!124171) (not d!124301) (not d!124339) (not b!1034544) (not d!123933) (not b!1034403) (not b!1034507) (not b!1034150) (not b!1034029) (not d!124219) (not d!123995) (not b!1034475) (not d!124223) (not b!1034261) (not b!1034113) (not b!1034516) (not d!124229) (not b!1034032) (not d!124005) (not d!124243) (not d!124375) (not b!1034536) (not d!124141) (not b!1033992) (not b!1034080) (not d!124063) (not b!1034505) (not d!124299) (not b!1034233) (not b!1033972) (not b!1034491) (not b!1034351) (not b!1034126) (not b_lambda!16087) (not d!124125) (not b!1034571) (not d!124133) (not b!1034308) (not b!1034535) (not b!1034224) (not bm!43712) (not b!1034061) (not b!1034187) (not b!1034091) (not b!1034112) (not b!1034335) (not d!124239) (not b!1034055) (not d!124155) (not d!124095) (not b!1034272) (not d!124341) (not b!1034190) (not bm!43734) (not b!1034481) (not b!1034554) (not bm!43726) (not b_lambda!16101) (not d!124045) (not b_lambda!16107) (not b!1034421) (not b_lambda!16123) (not d!124175) (not d!124079) (not b!1034294) (not d!124283) (not d!124111) (not d!123977) (not b!1034199) (not b!1034121) (not d!124309) (not b_lambda!16103) (not b!1033932) (not b!1034570) (not d!124295) (not b!1034364) (not d!123971) (not d!124355) (not b!1033983) (not b!1034171) (not b!1034136) (not b!1034088) (not d!124049) (not b!1034566) (not d!123973) (not d!124081) (not d!123939) (not bm!43702) (not d!123937) (not b!1034140) (not b!1034057) (not b!1034309) (not b!1034030) (not b!1034270) (not bm!43732) (not b!1034506) (not b!1034412) (not b!1034361) (not b!1034301) (not b!1033970) (not b!1034590) (not b!1034174) (not bm!43706) (not b!1034053) (not b!1034359) (not d!123949) (not d!124107) (not d!124165) (not d!124279) (not b!1034442) (not b!1033929) (not bm!43724) (not b!1034217) (not d!124143) (not b!1034451) (not b!1034434) (not d!123975) (not b!1034221) (not d!124055) (not b!1034236) (not b!1034327) (not b!1034257) (not b!1034514) (not d!124297) (not b!1034065) (not b_lambda!16089) (not b!1034388) (not b!1034145) (not b!1034234) (not b!1033974) (not b!1034036) (not d!123961) (not b!1034052) (not b!1034071) (not b_lambda!16121) (not d!124221) (not b!1034213) (not b!1033968) (not b!1034418) (not b!1034273) (not b!1034480) (not b!1034059) (not d!124335) (not b!1034016) (not b!1034386) (not b_lambda!16129) (not b!1034525) (not b!1034241) (not b!1034253) (not d!124091) (not mapNonEmpty!38269) (not b!1034152) (not b!1033986) (not bm!43694) (not d!124331) (not b!1034548) (not b!1033946) (not b!1034398) (not b!1034079) (not b!1034500) (not b!1034026) (not b!1034098) (not d!124163) (not d!123981) (not d!124267) (not b!1034573) (not d!124323) (not d!124319) (not b!1034139) (not b!1034209) (not d!124205) (not b!1034276) (not b!1034396) (not d!124227) (not b!1034357) (not d!124305) (not b!1034526) (not b!1034218) (not d!124363) (not b!1034184) (not b!1034497) (not d!124029) (not b!1034298) (not d!124343) (not b!1034243) (not b!1034025) (not d!123969) (not d!124183) (not b!1034539) (not d!124025) (not b!1034312) (not b!1034043) (not b!1034576) (not d!124043) (not d!124237) (not b!1034443) (not b!1034114) (not b!1034502) (not b!1033981) (not d!124317) (not b!1034435) (not d!124333) (not b!1034560) (not d!124225) (not b!1034496) (not bm!43727) (not b!1034473) (not b!1034389) (not d!123983) (not b!1034470) (not b!1034287) (not b!1034413) (not b!1034407) (not bm!43744) (not b!1034484) (not b!1034282) (not b!1034520) (not d!124347) (not b!1034179) (not d!124109) (not b!1033956) (not bm!43721) (not b!1034246) (not d!124113) (not b!1034584) (not d!124357) (not b!1034499) (not b!1034498) (not bm!43739) (not b!1033993) (not b!1034265) (not b!1034349) (not b!1034565) (not b!1034372) (not b!1034378) (not bm!43718) (not b!1034123) (not b!1034182) (not d!123951) (not b!1034392) (not d!124277) (not b!1034339) (not b!1034323) (not b!1034290) (not d!124235) (not b!1034511) (not bm!43719) (not d!124213) (not d!124027) (not d!123987) (not b!1034545) (not d!124019) (not d!124321) (not b!1034367))
(check-sat b_and!33319 (not b_next!20799))
