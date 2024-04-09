; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77326 () Bool)

(assert start!77326)

(declare-fun b!901564 () Bool)

(declare-fun b_free!16083 () Bool)

(declare-fun b_next!16083 () Bool)

(assert (=> b!901564 (= b_free!16083 (not b_next!16083))))

(declare-fun tp!56352 () Bool)

(declare-fun b_and!26445 () Bool)

(assert (=> b!901564 (= tp!56352 b_and!26445)))

(declare-fun bm!40173 () Bool)

(declare-datatypes ((V!29513 0))(
  ( (V!29514 (val!9256 Int)) )
))
(declare-fun call!40177 () V!29513)

(declare-datatypes ((tuple2!12096 0))(
  ( (tuple2!12097 (_1!6058 (_ BitVec 64)) (_2!6058 V!29513)) )
))
(declare-datatypes ((List!17954 0))(
  ( (Nil!17951) (Cons!17950 (h!19096 tuple2!12096) (t!25335 List!17954)) )
))
(declare-datatypes ((ListLongMap!10807 0))(
  ( (ListLongMap!10808 (toList!5419 List!17954)) )
))
(declare-fun lt!407530 () ListLongMap!10807)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun apply!422 (ListLongMap!10807 (_ BitVec 64)) V!29513)

(assert (=> bm!40173 (= call!40177 (apply!422 lt!407530 key!785))))

(declare-datatypes ((array!52866 0))(
  ( (array!52867 (arr!25396 (Array (_ BitVec 32) (_ BitVec 64))) (size!25856 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8724 0))(
  ( (ValueCellFull!8724 (v!11755 V!29513)) (EmptyCell!8724) )
))
(declare-datatypes ((array!52868 0))(
  ( (array!52869 (arr!25397 (Array (_ BitVec 32) ValueCell!8724)) (size!25857 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4464 0))(
  ( (LongMapFixedSize!4465 (defaultEntry!5475 Int) (mask!26283 (_ BitVec 32)) (extraKeys!5205 (_ BitVec 32)) (zeroValue!5309 V!29513) (minValue!5309 V!29513) (_size!2287 (_ BitVec 32)) (_keys!10286 array!52866) (_values!5496 array!52868) (_vacant!2287 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4464)

(declare-fun b!901561 () Bool)

(declare-fun lt!407528 () V!29513)

(declare-fun e!504817 () Bool)

(declare-datatypes ((Option!473 0))(
  ( (Some!472 (v!11756 V!29513)) (None!471) )
))
(declare-fun get!13377 (Option!473) V!29513)

(declare-fun getValueByKey!467 (List!17954 (_ BitVec 64)) Option!473)

(declare-fun map!12299 (LongMapFixedSize!4464) ListLongMap!10807)

(assert (=> b!901561 (= e!504817 (= lt!407528 (get!13377 (getValueByKey!467 (toList!5419 (map!12299 thiss!1181)) key!785))))))

(declare-fun res!608748 () Bool)

(declare-fun e!504808 () Bool)

(assert (=> start!77326 (=> (not res!608748) (not e!504808))))

(declare-fun valid!1697 (LongMapFixedSize!4464) Bool)

(assert (=> start!77326 (= res!608748 (valid!1697 thiss!1181))))

(assert (=> start!77326 e!504808))

(declare-fun e!504814 () Bool)

(assert (=> start!77326 e!504814))

(assert (=> start!77326 true))

(declare-fun b!901562 () Bool)

(declare-fun e!504819 () Bool)

(assert (=> b!901562 (= e!504819 (= call!40177 (zeroValue!5309 thiss!1181)))))

(declare-fun b!901563 () Bool)

(declare-fun e!504810 () Bool)

(declare-fun e!504811 () Bool)

(assert (=> b!901563 (= e!504810 e!504811)))

(declare-fun c!95447 () Bool)

(assert (=> b!901563 (= c!95447 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun tp_is_empty!18411 () Bool)

(declare-fun e!504813 () Bool)

(declare-fun array_inv!19894 (array!52866) Bool)

(declare-fun array_inv!19895 (array!52868) Bool)

(assert (=> b!901564 (= e!504814 (and tp!56352 tp_is_empty!18411 (array_inv!19894 (_keys!10286 thiss!1181)) (array_inv!19895 (_values!5496 thiss!1181)) e!504813))))

(declare-fun b!901565 () Bool)

(declare-fun e!504812 () Bool)

(declare-datatypes ((SeekEntryResult!8940 0))(
  ( (MissingZero!8940 (index!38130 (_ BitVec 32))) (Found!8940 (index!38131 (_ BitVec 32))) (Intermediate!8940 (undefined!9752 Bool) (index!38132 (_ BitVec 32)) (x!76810 (_ BitVec 32))) (Undefined!8940) (MissingVacant!8940 (index!38133 (_ BitVec 32))) )
))
(declare-fun lt!407525 () SeekEntryResult!8940)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!901565 (= e!504812 (inRange!0 (index!38131 lt!407525) (mask!26283 thiss!1181)))))

(declare-fun b!901566 () Bool)

(declare-fun e!504809 () Bool)

(declare-fun mapRes!29305 () Bool)

(assert (=> b!901566 (= e!504813 (and e!504809 mapRes!29305))))

(declare-fun condMapEmpty!29305 () Bool)

(declare-fun mapDefault!29305 () ValueCell!8724)

(assert (=> b!901566 (= condMapEmpty!29305 (= (arr!25397 (_values!5496 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8724)) mapDefault!29305)))))

(declare-fun b!901567 () Bool)

(declare-fun res!608746 () Bool)

(declare-fun e!504807 () Bool)

(assert (=> b!901567 (=> (not res!608746) (not e!504807))))

(assert (=> b!901567 (= res!608746 (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!901567 (= e!504811 e!504807)))

(declare-fun b!901568 () Bool)

(declare-fun e!504818 () Bool)

(assert (=> b!901568 (= e!504818 tp_is_empty!18411)))

(declare-fun b!901569 () Bool)

(declare-fun dynLambda!1317 (Int (_ BitVec 64)) V!29513)

(assert (=> b!901569 (= e!504817 (= lt!407528 (dynLambda!1317 (defaultEntry!5475 thiss!1181) key!785)))))

(declare-fun b!901570 () Bool)

(declare-fun e!504816 () Bool)

(assert (=> b!901570 (= e!504816 e!504817)))

(declare-fun c!95448 () Bool)

(declare-fun contains!4427 (LongMapFixedSize!4464 (_ BitVec 64)) Bool)

(assert (=> b!901570 (= c!95448 (contains!4427 thiss!1181 key!785))))

(declare-fun get!13378 (ValueCell!8724 V!29513) V!29513)

(assert (=> b!901570 (= lt!407528 (get!13378 (select (arr!25397 (_values!5496 thiss!1181)) (index!38131 lt!407525)) (dynLambda!1317 (defaultEntry!5475 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!901570 e!504810))

(declare-fun c!95449 () Bool)

(assert (=> b!901570 (= c!95449 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!30589 0))(
  ( (Unit!30590) )
))
(declare-fun lt!407527 () Unit!30589)

(declare-fun lemmaKeyInListMapThenSameValueInArray!10 (array!52866 array!52868 (_ BitVec 32) (_ BitVec 32) V!29513 V!29513 (_ BitVec 64) (_ BitVec 32) Int) Unit!30589)

(assert (=> b!901570 (= lt!407527 (lemmaKeyInListMapThenSameValueInArray!10 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) key!785 (index!38131 lt!407525) (defaultEntry!5475 thiss!1181)))))

(declare-fun contains!4428 (ListLongMap!10807 (_ BitVec 64)) Bool)

(assert (=> b!901570 (contains!4428 lt!407530 (select (arr!25396 (_keys!10286 thiss!1181)) (index!38131 lt!407525)))))

(declare-fun getCurrentListMap!2658 (array!52866 array!52868 (_ BitVec 32) (_ BitVec 32) V!29513 V!29513 (_ BitVec 32) Int) ListLongMap!10807)

(assert (=> b!901570 (= lt!407530 (getCurrentListMap!2658 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)))))

(declare-fun lt!407526 () Unit!30589)

(declare-fun lemmaValidKeyInArrayIsInListMap!251 (array!52866 array!52868 (_ BitVec 32) (_ BitVec 32) V!29513 V!29513 (_ BitVec 32) Int) Unit!30589)

(assert (=> b!901570 (= lt!407526 (lemmaValidKeyInArrayIsInListMap!251 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) (index!38131 lt!407525) (defaultEntry!5475 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52866 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!901570 (arrayContainsKey!0 (_keys!10286 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!407529 () Unit!30589)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52866 (_ BitVec 64) (_ BitVec 32)) Unit!30589)

(assert (=> b!901570 (= lt!407529 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10286 thiss!1181) key!785 (index!38131 lt!407525)))))

(declare-fun mapIsEmpty!29305 () Bool)

(assert (=> mapIsEmpty!29305 mapRes!29305))

(declare-fun b!901571 () Bool)

(declare-fun res!608749 () Bool)

(assert (=> b!901571 (=> (not res!608749) (not e!504808))))

(assert (=> b!901571 (= res!608749 (not (= key!785 (bvneg key!785))))))

(declare-fun b!901572 () Bool)

(assert (=> b!901572 (= e!504809 tp_is_empty!18411)))

(declare-fun b!901573 () Bool)

(declare-fun call!40176 () V!29513)

(assert (=> b!901573 (= e!504811 (= call!40176 (get!13378 (select (arr!25397 (_values!5496 thiss!1181)) (index!38131 lt!407525)) (dynLambda!1317 (defaultEntry!5475 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!901574 () Bool)

(assert (=> b!901574 (= e!504807 (= call!40176 (minValue!5309 thiss!1181)))))

(declare-fun b!901575 () Bool)

(assert (=> b!901575 (= e!504808 (not e!504816))))

(declare-fun res!608747 () Bool)

(assert (=> b!901575 (=> res!608747 e!504816)))

(get-info :version)

(assert (=> b!901575 (= res!608747 (not ((_ is Found!8940) lt!407525)))))

(assert (=> b!901575 e!504812))

(declare-fun res!608745 () Bool)

(assert (=> b!901575 (=> res!608745 e!504812)))

(assert (=> b!901575 (= res!608745 (not ((_ is Found!8940) lt!407525)))))

(declare-fun lt!407524 () Unit!30589)

(declare-fun lemmaSeekEntryGivesInRangeIndex!117 (array!52866 array!52868 (_ BitVec 32) (_ BitVec 32) V!29513 V!29513 (_ BitVec 64)) Unit!30589)

(assert (=> b!901575 (= lt!407524 (lemmaSeekEntryGivesInRangeIndex!117 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52866 (_ BitVec 32)) SeekEntryResult!8940)

(assert (=> b!901575 (= lt!407525 (seekEntry!0 key!785 (_keys!10286 thiss!1181) (mask!26283 thiss!1181)))))

(declare-fun b!901576 () Bool)

(assert (=> b!901576 (= e!504810 e!504819)))

(declare-fun res!608744 () Bool)

(assert (=> b!901576 (= res!608744 (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!901576 (=> (not res!608744) (not e!504819))))

(declare-fun mapNonEmpty!29305 () Bool)

(declare-fun tp!56353 () Bool)

(assert (=> mapNonEmpty!29305 (= mapRes!29305 (and tp!56353 e!504818))))

(declare-fun mapKey!29305 () (_ BitVec 32))

(declare-fun mapValue!29305 () ValueCell!8724)

(declare-fun mapRest!29305 () (Array (_ BitVec 32) ValueCell!8724))

(assert (=> mapNonEmpty!29305 (= (arr!25397 (_values!5496 thiss!1181)) (store mapRest!29305 mapKey!29305 mapValue!29305))))

(declare-fun bm!40174 () Bool)

(assert (=> bm!40174 (= call!40176 call!40177)))

(assert (= (and start!77326 res!608748) b!901571))

(assert (= (and b!901571 res!608749) b!901575))

(assert (= (and b!901575 (not res!608745)) b!901565))

(assert (= (and b!901575 (not res!608747)) b!901570))

(assert (= (and b!901570 c!95449) b!901576))

(assert (= (and b!901570 (not c!95449)) b!901563))

(assert (= (and b!901576 res!608744) b!901562))

(assert (= (and b!901563 c!95447) b!901567))

(assert (= (and b!901563 (not c!95447)) b!901573))

(assert (= (and b!901567 res!608746) b!901574))

(assert (= (or b!901574 b!901573) bm!40174))

(assert (= (or b!901562 bm!40174) bm!40173))

(assert (= (and b!901570 c!95448) b!901561))

(assert (= (and b!901570 (not c!95448)) b!901569))

(assert (= (and b!901566 condMapEmpty!29305) mapIsEmpty!29305))

(assert (= (and b!901566 (not condMapEmpty!29305)) mapNonEmpty!29305))

(assert (= (and mapNonEmpty!29305 ((_ is ValueCellFull!8724) mapValue!29305)) b!901568))

(assert (= (and b!901566 ((_ is ValueCellFull!8724) mapDefault!29305)) b!901572))

(assert (= b!901564 b!901566))

(assert (= start!77326 b!901564))

(declare-fun b_lambda!13083 () Bool)

(assert (=> (not b_lambda!13083) (not b!901569)))

(declare-fun t!25332 () Bool)

(declare-fun tb!5229 () Bool)

(assert (=> (and b!901564 (= (defaultEntry!5475 thiss!1181) (defaultEntry!5475 thiss!1181)) t!25332) tb!5229))

(declare-fun result!10233 () Bool)

(assert (=> tb!5229 (= result!10233 tp_is_empty!18411)))

(assert (=> b!901569 t!25332))

(declare-fun b_and!26447 () Bool)

(assert (= b_and!26445 (and (=> t!25332 result!10233) b_and!26447)))

(declare-fun b_lambda!13085 () Bool)

(assert (=> (not b_lambda!13085) (not b!901570)))

(declare-fun t!25334 () Bool)

(declare-fun tb!5231 () Bool)

(assert (=> (and b!901564 (= (defaultEntry!5475 thiss!1181) (defaultEntry!5475 thiss!1181)) t!25334) tb!5231))

(declare-fun result!10237 () Bool)

(assert (=> tb!5231 (= result!10237 tp_is_empty!18411)))

(assert (=> b!901570 t!25334))

(declare-fun b_and!26449 () Bool)

(assert (= b_and!26447 (and (=> t!25334 result!10237) b_and!26449)))

(declare-fun b_lambda!13087 () Bool)

(assert (=> (not b_lambda!13087) (not b!901573)))

(assert (=> b!901573 t!25334))

(declare-fun b_and!26451 () Bool)

(assert (= b_and!26449 (and (=> t!25334 result!10237) b_and!26451)))

(declare-fun m!837871 () Bool)

(assert (=> b!901570 m!837871))

(declare-fun m!837873 () Bool)

(assert (=> b!901570 m!837873))

(declare-fun m!837875 () Bool)

(assert (=> b!901570 m!837875))

(declare-fun m!837877 () Bool)

(assert (=> b!901570 m!837877))

(declare-fun m!837879 () Bool)

(assert (=> b!901570 m!837879))

(declare-fun m!837881 () Bool)

(assert (=> b!901570 m!837881))

(declare-fun m!837883 () Bool)

(assert (=> b!901570 m!837883))

(assert (=> b!901570 m!837871))

(declare-fun m!837885 () Bool)

(assert (=> b!901570 m!837885))

(declare-fun m!837887 () Bool)

(assert (=> b!901570 m!837887))

(declare-fun m!837889 () Bool)

(assert (=> b!901570 m!837889))

(assert (=> b!901570 m!837883))

(assert (=> b!901570 m!837877))

(declare-fun m!837891 () Bool)

(assert (=> b!901570 m!837891))

(declare-fun m!837893 () Bool)

(assert (=> b!901569 m!837893))

(declare-fun m!837895 () Bool)

(assert (=> bm!40173 m!837895))

(declare-fun m!837897 () Bool)

(assert (=> b!901565 m!837897))

(declare-fun m!837899 () Bool)

(assert (=> b!901564 m!837899))

(declare-fun m!837901 () Bool)

(assert (=> b!901564 m!837901))

(declare-fun m!837903 () Bool)

(assert (=> b!901561 m!837903))

(declare-fun m!837905 () Bool)

(assert (=> b!901561 m!837905))

(assert (=> b!901561 m!837905))

(declare-fun m!837907 () Bool)

(assert (=> b!901561 m!837907))

(declare-fun m!837909 () Bool)

(assert (=> mapNonEmpty!29305 m!837909))

(declare-fun m!837911 () Bool)

(assert (=> b!901575 m!837911))

(declare-fun m!837913 () Bool)

(assert (=> b!901575 m!837913))

(assert (=> b!901573 m!837883))

(assert (=> b!901573 m!837871))

(assert (=> b!901573 m!837883))

(assert (=> b!901573 m!837871))

(assert (=> b!901573 m!837885))

(declare-fun m!837915 () Bool)

(assert (=> start!77326 m!837915))

(check-sat (not b_next!16083) tp_is_empty!18411 (not bm!40173) (not b!901573) (not b!901570) b_and!26451 (not mapNonEmpty!29305) (not b_lambda!13085) (not b!901561) (not b!901575) (not b_lambda!13083) (not b!901565) (not b_lambda!13087) (not start!77326) (not b!901564))
(check-sat b_and!26451 (not b_next!16083))
(get-model)

(declare-fun b_lambda!13095 () Bool)

(assert (= b_lambda!13087 (or (and b!901564 b_free!16083) b_lambda!13095)))

(declare-fun b_lambda!13097 () Bool)

(assert (= b_lambda!13085 (or (and b!901564 b_free!16083) b_lambda!13097)))

(declare-fun b_lambda!13099 () Bool)

(assert (= b_lambda!13083 (or (and b!901564 b_free!16083) b_lambda!13099)))

(check-sat tp_is_empty!18411 (not b_lambda!13095) (not bm!40173) (not b!901561) (not b!901575) (not b!901573) (not b!901570) b_and!26451 (not b!901565) (not mapNonEmpty!29305) (not b_next!16083) (not b_lambda!13097) (not b_lambda!13099) (not start!77326) (not b!901564))
(check-sat b_and!26451 (not b_next!16083))
(get-model)

(declare-fun d!111781 () Bool)

(assert (=> d!111781 (= (get!13377 (getValueByKey!467 (toList!5419 (map!12299 thiss!1181)) key!785)) (v!11756 (getValueByKey!467 (toList!5419 (map!12299 thiss!1181)) key!785)))))

(assert (=> b!901561 d!111781))

(declare-fun b!901637 () Bool)

(declare-fun e!504863 () Option!473)

(assert (=> b!901637 (= e!504863 (Some!472 (_2!6058 (h!19096 (toList!5419 (map!12299 thiss!1181))))))))

(declare-fun b!901639 () Bool)

(declare-fun e!504864 () Option!473)

(assert (=> b!901639 (= e!504864 (getValueByKey!467 (t!25335 (toList!5419 (map!12299 thiss!1181))) key!785))))

(declare-fun d!111783 () Bool)

(declare-fun c!95463 () Bool)

(assert (=> d!111783 (= c!95463 (and ((_ is Cons!17950) (toList!5419 (map!12299 thiss!1181))) (= (_1!6058 (h!19096 (toList!5419 (map!12299 thiss!1181)))) key!785)))))

(assert (=> d!111783 (= (getValueByKey!467 (toList!5419 (map!12299 thiss!1181)) key!785) e!504863)))

(declare-fun b!901638 () Bool)

(assert (=> b!901638 (= e!504863 e!504864)))

(declare-fun c!95464 () Bool)

(assert (=> b!901638 (= c!95464 (and ((_ is Cons!17950) (toList!5419 (map!12299 thiss!1181))) (not (= (_1!6058 (h!19096 (toList!5419 (map!12299 thiss!1181)))) key!785))))))

(declare-fun b!901640 () Bool)

(assert (=> b!901640 (= e!504864 None!471)))

(assert (= (and d!111783 c!95463) b!901637))

(assert (= (and d!111783 (not c!95463)) b!901638))

(assert (= (and b!901638 c!95464) b!901639))

(assert (= (and b!901638 (not c!95464)) b!901640))

(declare-fun m!837963 () Bool)

(assert (=> b!901639 m!837963))

(assert (=> b!901561 d!111783))

(declare-fun d!111785 () Bool)

(assert (=> d!111785 (= (map!12299 thiss!1181) (getCurrentListMap!2658 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)))))

(declare-fun bs!25302 () Bool)

(assert (= bs!25302 d!111785))

(assert (=> bs!25302 m!837891))

(assert (=> b!901561 d!111785))

(declare-fun d!111787 () Bool)

(declare-fun e!504867 () Bool)

(assert (=> d!111787 e!504867))

(declare-fun res!608770 () Bool)

(assert (=> d!111787 (=> res!608770 e!504867)))

(declare-fun lt!407557 () SeekEntryResult!8940)

(assert (=> d!111787 (= res!608770 (not ((_ is Found!8940) lt!407557)))))

(assert (=> d!111787 (= lt!407557 (seekEntry!0 key!785 (_keys!10286 thiss!1181) (mask!26283 thiss!1181)))))

(declare-fun lt!407556 () Unit!30589)

(declare-fun choose!1531 (array!52866 array!52868 (_ BitVec 32) (_ BitVec 32) V!29513 V!29513 (_ BitVec 64)) Unit!30589)

(assert (=> d!111787 (= lt!407556 (choose!1531 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) key!785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!111787 (validMask!0 (mask!26283 thiss!1181))))

(assert (=> d!111787 (= (lemmaSeekEntryGivesInRangeIndex!117 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) key!785) lt!407556)))

(declare-fun b!901643 () Bool)

(assert (=> b!901643 (= e!504867 (inRange!0 (index!38131 lt!407557) (mask!26283 thiss!1181)))))

(assert (= (and d!111787 (not res!608770)) b!901643))

(assert (=> d!111787 m!837913))

(declare-fun m!837965 () Bool)

(assert (=> d!111787 m!837965))

(declare-fun m!837967 () Bool)

(assert (=> d!111787 m!837967))

(declare-fun m!837969 () Bool)

(assert (=> b!901643 m!837969))

(assert (=> b!901575 d!111787))

(declare-fun b!901656 () Bool)

(declare-fun c!95473 () Bool)

(declare-fun lt!407567 () (_ BitVec 64))

(assert (=> b!901656 (= c!95473 (= lt!407567 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!504875 () SeekEntryResult!8940)

(declare-fun e!504876 () SeekEntryResult!8940)

(assert (=> b!901656 (= e!504875 e!504876)))

(declare-fun b!901657 () Bool)

(declare-fun lt!407566 () SeekEntryResult!8940)

(assert (=> b!901657 (= e!504875 (Found!8940 (index!38132 lt!407566)))))

(declare-fun b!901658 () Bool)

(declare-fun e!504874 () SeekEntryResult!8940)

(assert (=> b!901658 (= e!504874 Undefined!8940)))

(declare-fun b!901659 () Bool)

(assert (=> b!901659 (= e!504874 e!504875)))

(assert (=> b!901659 (= lt!407567 (select (arr!25396 (_keys!10286 thiss!1181)) (index!38132 lt!407566)))))

(declare-fun c!95471 () Bool)

(assert (=> b!901659 (= c!95471 (= lt!407567 key!785))))

(declare-fun b!901661 () Bool)

(declare-fun lt!407569 () SeekEntryResult!8940)

(assert (=> b!901661 (= e!504876 (ite ((_ is MissingVacant!8940) lt!407569) (MissingZero!8940 (index!38133 lt!407569)) lt!407569))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52866 (_ BitVec 32)) SeekEntryResult!8940)

(assert (=> b!901661 (= lt!407569 (seekKeyOrZeroReturnVacant!0 (x!76810 lt!407566) (index!38132 lt!407566) (index!38132 lt!407566) key!785 (_keys!10286 thiss!1181) (mask!26283 thiss!1181)))))

(declare-fun d!111789 () Bool)

(declare-fun lt!407568 () SeekEntryResult!8940)

(assert (=> d!111789 (and (or ((_ is MissingVacant!8940) lt!407568) (not ((_ is Found!8940) lt!407568)) (and (bvsge (index!38131 lt!407568) #b00000000000000000000000000000000) (bvslt (index!38131 lt!407568) (size!25856 (_keys!10286 thiss!1181))))) (not ((_ is MissingVacant!8940) lt!407568)) (or (not ((_ is Found!8940) lt!407568)) (= (select (arr!25396 (_keys!10286 thiss!1181)) (index!38131 lt!407568)) key!785)))))

(assert (=> d!111789 (= lt!407568 e!504874)))

(declare-fun c!95472 () Bool)

(assert (=> d!111789 (= c!95472 (and ((_ is Intermediate!8940) lt!407566) (undefined!9752 lt!407566)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52866 (_ BitVec 32)) SeekEntryResult!8940)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111789 (= lt!407566 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26283 thiss!1181)) key!785 (_keys!10286 thiss!1181) (mask!26283 thiss!1181)))))

(assert (=> d!111789 (validMask!0 (mask!26283 thiss!1181))))

(assert (=> d!111789 (= (seekEntry!0 key!785 (_keys!10286 thiss!1181) (mask!26283 thiss!1181)) lt!407568)))

(declare-fun b!901660 () Bool)

(assert (=> b!901660 (= e!504876 (MissingZero!8940 (index!38132 lt!407566)))))

(assert (= (and d!111789 c!95472) b!901658))

(assert (= (and d!111789 (not c!95472)) b!901659))

(assert (= (and b!901659 c!95471) b!901657))

(assert (= (and b!901659 (not c!95471)) b!901656))

(assert (= (and b!901656 c!95473) b!901660))

(assert (= (and b!901656 (not c!95473)) b!901661))

(declare-fun m!837971 () Bool)

(assert (=> b!901659 m!837971))

(declare-fun m!837973 () Bool)

(assert (=> b!901661 m!837973))

(declare-fun m!837975 () Bool)

(assert (=> d!111789 m!837975))

(declare-fun m!837977 () Bool)

(assert (=> d!111789 m!837977))

(assert (=> d!111789 m!837977))

(declare-fun m!837979 () Bool)

(assert (=> d!111789 m!837979))

(assert (=> d!111789 m!837967))

(assert (=> b!901575 d!111789))

(declare-fun d!111791 () Bool)

(assert (=> d!111791 (= (apply!422 lt!407530 key!785) (get!13377 (getValueByKey!467 (toList!5419 lt!407530) key!785)))))

(declare-fun bs!25303 () Bool)

(assert (= bs!25303 d!111791))

(declare-fun m!837981 () Bool)

(assert (=> bs!25303 m!837981))

(assert (=> bs!25303 m!837981))

(declare-fun m!837983 () Bool)

(assert (=> bs!25303 m!837983))

(assert (=> bm!40173 d!111791))

(declare-fun d!111793 () Bool)

(declare-fun res!608777 () Bool)

(declare-fun e!504879 () Bool)

(assert (=> d!111793 (=> (not res!608777) (not e!504879))))

(declare-fun simpleValid!333 (LongMapFixedSize!4464) Bool)

(assert (=> d!111793 (= res!608777 (simpleValid!333 thiss!1181))))

(assert (=> d!111793 (= (valid!1697 thiss!1181) e!504879)))

(declare-fun b!901668 () Bool)

(declare-fun res!608778 () Bool)

(assert (=> b!901668 (=> (not res!608778) (not e!504879))))

(declare-fun arrayCountValidKeys!0 (array!52866 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!901668 (= res!608778 (= (arrayCountValidKeys!0 (_keys!10286 thiss!1181) #b00000000000000000000000000000000 (size!25856 (_keys!10286 thiss!1181))) (_size!2287 thiss!1181)))))

(declare-fun b!901669 () Bool)

(declare-fun res!608779 () Bool)

(assert (=> b!901669 (=> (not res!608779) (not e!504879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52866 (_ BitVec 32)) Bool)

(assert (=> b!901669 (= res!608779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10286 thiss!1181) (mask!26283 thiss!1181)))))

(declare-fun b!901670 () Bool)

(declare-datatypes ((List!17956 0))(
  ( (Nil!17953) (Cons!17952 (h!19098 (_ BitVec 64)) (t!25341 List!17956)) )
))
(declare-fun arrayNoDuplicates!0 (array!52866 (_ BitVec 32) List!17956) Bool)

(assert (=> b!901670 (= e!504879 (arrayNoDuplicates!0 (_keys!10286 thiss!1181) #b00000000000000000000000000000000 Nil!17953))))

(assert (= (and d!111793 res!608777) b!901668))

(assert (= (and b!901668 res!608778) b!901669))

(assert (= (and b!901669 res!608779) b!901670))

(declare-fun m!837985 () Bool)

(assert (=> d!111793 m!837985))

(declare-fun m!837987 () Bool)

(assert (=> b!901668 m!837987))

(declare-fun m!837989 () Bool)

(assert (=> b!901669 m!837989))

(declare-fun m!837991 () Bool)

(assert (=> b!901670 m!837991))

(assert (=> start!77326 d!111793))

(declare-fun d!111795 () Bool)

(declare-fun e!504885 () Bool)

(assert (=> d!111795 e!504885))

(declare-fun res!608782 () Bool)

(assert (=> d!111795 (=> res!608782 e!504885)))

(declare-fun lt!407579 () Bool)

(assert (=> d!111795 (= res!608782 (not lt!407579))))

(declare-fun lt!407580 () Bool)

(assert (=> d!111795 (= lt!407579 lt!407580)))

(declare-fun lt!407578 () Unit!30589)

(declare-fun e!504884 () Unit!30589)

(assert (=> d!111795 (= lt!407578 e!504884)))

(declare-fun c!95476 () Bool)

(assert (=> d!111795 (= c!95476 lt!407580)))

(declare-fun containsKey!436 (List!17954 (_ BitVec 64)) Bool)

(assert (=> d!111795 (= lt!407580 (containsKey!436 (toList!5419 lt!407530) (select (arr!25396 (_keys!10286 thiss!1181)) (index!38131 lt!407525))))))

(assert (=> d!111795 (= (contains!4428 lt!407530 (select (arr!25396 (_keys!10286 thiss!1181)) (index!38131 lt!407525))) lt!407579)))

(declare-fun b!901677 () Bool)

(declare-fun lt!407581 () Unit!30589)

(assert (=> b!901677 (= e!504884 lt!407581)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!331 (List!17954 (_ BitVec 64)) Unit!30589)

(assert (=> b!901677 (= lt!407581 (lemmaContainsKeyImpliesGetValueByKeyDefined!331 (toList!5419 lt!407530) (select (arr!25396 (_keys!10286 thiss!1181)) (index!38131 lt!407525))))))

(declare-fun isDefined!341 (Option!473) Bool)

(assert (=> b!901677 (isDefined!341 (getValueByKey!467 (toList!5419 lt!407530) (select (arr!25396 (_keys!10286 thiss!1181)) (index!38131 lt!407525))))))

(declare-fun b!901678 () Bool)

(declare-fun Unit!30593 () Unit!30589)

(assert (=> b!901678 (= e!504884 Unit!30593)))

(declare-fun b!901679 () Bool)

(assert (=> b!901679 (= e!504885 (isDefined!341 (getValueByKey!467 (toList!5419 lt!407530) (select (arr!25396 (_keys!10286 thiss!1181)) (index!38131 lt!407525)))))))

(assert (= (and d!111795 c!95476) b!901677))

(assert (= (and d!111795 (not c!95476)) b!901678))

(assert (= (and d!111795 (not res!608782)) b!901679))

(assert (=> d!111795 m!837877))

(declare-fun m!837993 () Bool)

(assert (=> d!111795 m!837993))

(assert (=> b!901677 m!837877))

(declare-fun m!837995 () Bool)

(assert (=> b!901677 m!837995))

(assert (=> b!901677 m!837877))

(declare-fun m!837997 () Bool)

(assert (=> b!901677 m!837997))

(assert (=> b!901677 m!837997))

(declare-fun m!837999 () Bool)

(assert (=> b!901677 m!837999))

(assert (=> b!901679 m!837877))

(assert (=> b!901679 m!837997))

(assert (=> b!901679 m!837997))

(assert (=> b!901679 m!837999))

(assert (=> b!901570 d!111795))

(declare-fun d!111797 () Bool)

(declare-fun e!504888 () Bool)

(assert (=> d!111797 e!504888))

(declare-fun res!608785 () Bool)

(assert (=> d!111797 (=> (not res!608785) (not e!504888))))

(assert (=> d!111797 (= res!608785 (and (bvsge (index!38131 lt!407525) #b00000000000000000000000000000000) (bvslt (index!38131 lt!407525) (size!25856 (_keys!10286 thiss!1181)))))))

(declare-fun lt!407584 () Unit!30589)

(declare-fun choose!1532 (array!52866 array!52868 (_ BitVec 32) (_ BitVec 32) V!29513 V!29513 (_ BitVec 32) Int) Unit!30589)

(assert (=> d!111797 (= lt!407584 (choose!1532 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) (index!38131 lt!407525) (defaultEntry!5475 thiss!1181)))))

(assert (=> d!111797 (validMask!0 (mask!26283 thiss!1181))))

(assert (=> d!111797 (= (lemmaValidKeyInArrayIsInListMap!251 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) (index!38131 lt!407525) (defaultEntry!5475 thiss!1181)) lt!407584)))

(declare-fun b!901682 () Bool)

(assert (=> b!901682 (= e!504888 (contains!4428 (getCurrentListMap!2658 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)) (select (arr!25396 (_keys!10286 thiss!1181)) (index!38131 lt!407525))))))

(assert (= (and d!111797 res!608785) b!901682))

(declare-fun m!838001 () Bool)

(assert (=> d!111797 m!838001))

(assert (=> d!111797 m!837967))

(assert (=> b!901682 m!837891))

(assert (=> b!901682 m!837877))

(assert (=> b!901682 m!837891))

(assert (=> b!901682 m!837877))

(declare-fun m!838003 () Bool)

(assert (=> b!901682 m!838003))

(assert (=> b!901570 d!111797))

(declare-fun d!111799 () Bool)

(assert (=> d!111799 (arrayContainsKey!0 (_keys!10286 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!407587 () Unit!30589)

(declare-fun choose!13 (array!52866 (_ BitVec 64) (_ BitVec 32)) Unit!30589)

(assert (=> d!111799 (= lt!407587 (choose!13 (_keys!10286 thiss!1181) key!785 (index!38131 lt!407525)))))

(assert (=> d!111799 (bvsge (index!38131 lt!407525) #b00000000000000000000000000000000)))

(assert (=> d!111799 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10286 thiss!1181) key!785 (index!38131 lt!407525)) lt!407587)))

(declare-fun bs!25304 () Bool)

(assert (= bs!25304 d!111799))

(assert (=> bs!25304 m!837889))

(declare-fun m!838005 () Bool)

(assert (=> bs!25304 m!838005))

(assert (=> b!901570 d!111799))

(declare-fun bm!40189 () Bool)

(declare-fun call!40195 () ListLongMap!10807)

(assert (=> bm!40189 (= call!40195 (getCurrentListMap!2658 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)))))

(declare-fun d!111801 () Bool)

(declare-fun e!504900 () Bool)

(assert (=> d!111801 e!504900))

(declare-fun c!95481 () Bool)

(assert (=> d!111801 (= c!95481 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!407590 () Unit!30589)

(declare-fun choose!1533 (array!52866 array!52868 (_ BitVec 32) (_ BitVec 32) V!29513 V!29513 (_ BitVec 64) (_ BitVec 32) Int) Unit!30589)

(assert (=> d!111801 (= lt!407590 (choose!1533 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) key!785 (index!38131 lt!407525) (defaultEntry!5475 thiss!1181)))))

(assert (=> d!111801 (validMask!0 (mask!26283 thiss!1181))))

(assert (=> d!111801 (= (lemmaKeyInListMapThenSameValueInArray!10 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) key!785 (index!38131 lt!407525) (defaultEntry!5475 thiss!1181)) lt!407590)))

(declare-fun e!504901 () Bool)

(declare-fun b!901697 () Bool)

(declare-fun call!40194 () V!29513)

(assert (=> b!901697 (= e!504901 (= call!40194 (get!13378 (select (arr!25397 (_values!5496 thiss!1181)) (index!38131 lt!407525)) (dynLambda!1317 (defaultEntry!5475 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!901697 (and (bvsge (index!38131 lt!407525) #b00000000000000000000000000000000) (bvslt (index!38131 lt!407525) (size!25857 (_values!5496 thiss!1181))))))

(declare-fun bm!40190 () Bool)

(declare-fun call!40192 () ListLongMap!10807)

(assert (=> bm!40190 (= call!40192 call!40195)))

(declare-fun b!901698 () Bool)

(declare-fun res!608794 () Bool)

(declare-fun e!504903 () Bool)

(assert (=> b!901698 (=> (not res!608794) (not e!504903))))

(assert (=> b!901698 (= res!608794 (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!504902 () Bool)

(assert (=> b!901698 (= e!504902 e!504903)))

(declare-fun b!901699 () Bool)

(declare-fun e!504899 () Bool)

(declare-fun call!40193 () V!29513)

(assert (=> b!901699 (= e!504899 (= call!40193 (zeroValue!5309 thiss!1181)))))

(declare-fun bm!40191 () Bool)

(assert (=> bm!40191 (= call!40193 (apply!422 (ite c!95481 call!40195 call!40192) key!785))))

(declare-fun bm!40192 () Bool)

(assert (=> bm!40192 (= call!40194 call!40193)))

(declare-fun b!901700 () Bool)

(assert (=> b!901700 (= e!504903 (= call!40194 (minValue!5309 thiss!1181)))))

(declare-fun b!901701 () Bool)

(assert (=> b!901701 (= e!504900 e!504899)))

(declare-fun res!608792 () Bool)

(assert (=> b!901701 (= res!608792 (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!901701 (=> (not res!608792) (not e!504899))))

(declare-fun b!901702 () Bool)

(declare-fun res!608793 () Bool)

(assert (=> b!901702 (=> (not res!608793) (not e!504901))))

(assert (=> b!901702 (= res!608793 (arrayContainsKey!0 (_keys!10286 thiss!1181) key!785 #b00000000000000000000000000000000))))

(assert (=> b!901702 (= e!504902 e!504901)))

(declare-fun b!901703 () Bool)

(assert (=> b!901703 (= e!504900 e!504902)))

(declare-fun c!95482 () Bool)

(assert (=> b!901703 (= c!95482 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!111801 c!95481) b!901701))

(assert (= (and d!111801 (not c!95481)) b!901703))

(assert (= (and b!901701 res!608792) b!901699))

(assert (= (and b!901703 c!95482) b!901698))

(assert (= (and b!901703 (not c!95482)) b!901702))

(assert (= (and b!901698 res!608794) b!901700))

(assert (= (and b!901702 res!608793) b!901697))

(assert (= (or b!901700 b!901697) bm!40190))

(assert (= (or b!901700 b!901697) bm!40192))

(assert (= (or b!901699 bm!40190) bm!40189))

(assert (= (or b!901699 bm!40192) bm!40191))

(declare-fun b_lambda!13101 () Bool)

(assert (=> (not b_lambda!13101) (not b!901697)))

(assert (=> b!901697 t!25334))

(declare-fun b_and!26461 () Bool)

(assert (= b_and!26451 (and (=> t!25334 result!10237) b_and!26461)))

(assert (=> b!901702 m!837889))

(assert (=> b!901697 m!837883))

(assert (=> b!901697 m!837871))

(assert (=> b!901697 m!837883))

(assert (=> b!901697 m!837871))

(assert (=> b!901697 m!837885))

(declare-fun m!838007 () Bool)

(assert (=> bm!40191 m!838007))

(assert (=> bm!40189 m!837891))

(declare-fun m!838009 () Bool)

(assert (=> d!111801 m!838009))

(assert (=> d!111801 m!837967))

(assert (=> b!901570 d!111801))

(declare-fun d!111803 () Bool)

(declare-fun res!608799 () Bool)

(declare-fun e!504908 () Bool)

(assert (=> d!111803 (=> res!608799 e!504908)))

(assert (=> d!111803 (= res!608799 (= (select (arr!25396 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111803 (= (arrayContainsKey!0 (_keys!10286 thiss!1181) key!785 #b00000000000000000000000000000000) e!504908)))

(declare-fun b!901708 () Bool)

(declare-fun e!504909 () Bool)

(assert (=> b!901708 (= e!504908 e!504909)))

(declare-fun res!608800 () Bool)

(assert (=> b!901708 (=> (not res!608800) (not e!504909))))

(assert (=> b!901708 (= res!608800 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25856 (_keys!10286 thiss!1181))))))

(declare-fun b!901709 () Bool)

(assert (=> b!901709 (= e!504909 (arrayContainsKey!0 (_keys!10286 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111803 (not res!608799)) b!901708))

(assert (= (and b!901708 res!608800) b!901709))

(declare-fun m!838011 () Bool)

(assert (=> d!111803 m!838011))

(declare-fun m!838013 () Bool)

(assert (=> b!901709 m!838013))

(assert (=> b!901570 d!111803))

(declare-fun b!901752 () Bool)

(declare-fun e!504946 () Bool)

(declare-fun lt!407655 () ListLongMap!10807)

(assert (=> b!901752 (= e!504946 (= (apply!422 lt!407655 (select (arr!25396 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000)) (get!13378 (select (arr!25397 (_values!5496 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1317 (defaultEntry!5475 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!901752 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25857 (_values!5496 thiss!1181))))))

(assert (=> b!901752 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25856 (_keys!10286 thiss!1181))))))

(declare-fun b!901753 () Bool)

(declare-fun e!504939 () Bool)

(assert (=> b!901753 (= e!504939 e!504946)))

(declare-fun res!608827 () Bool)

(assert (=> b!901753 (=> (not res!608827) (not e!504946))))

(assert (=> b!901753 (= res!608827 (contains!4428 lt!407655 (select (arr!25396 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!901753 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25856 (_keys!10286 thiss!1181))))))

(declare-fun b!901754 () Bool)

(declare-fun e!504941 () ListLongMap!10807)

(declare-fun call!40212 () ListLongMap!10807)

(assert (=> b!901754 (= e!504941 call!40212)))

(declare-fun b!901755 () Bool)

(declare-fun e!504945 () Bool)

(declare-fun e!504937 () Bool)

(assert (=> b!901755 (= e!504945 e!504937)))

(declare-fun res!608822 () Bool)

(declare-fun call!40216 () Bool)

(assert (=> b!901755 (= res!608822 call!40216)))

(assert (=> b!901755 (=> (not res!608822) (not e!504937))))

(declare-fun b!901756 () Bool)

(declare-fun e!504943 () Bool)

(assert (=> b!901756 (= e!504943 (= (apply!422 lt!407655 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5309 thiss!1181)))))

(declare-fun b!901757 () Bool)

(declare-fun e!504942 () Unit!30589)

(declare-fun lt!407637 () Unit!30589)

(assert (=> b!901757 (= e!504942 lt!407637)))

(declare-fun lt!407644 () ListLongMap!10807)

(declare-fun getCurrentListMapNoExtraKeys!3304 (array!52866 array!52868 (_ BitVec 32) (_ BitVec 32) V!29513 V!29513 (_ BitVec 32) Int) ListLongMap!10807)

(assert (=> b!901757 (= lt!407644 (getCurrentListMapNoExtraKeys!3304 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)))))

(declare-fun lt!407653 () (_ BitVec 64))

(assert (=> b!901757 (= lt!407653 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407656 () (_ BitVec 64))

(assert (=> b!901757 (= lt!407656 (select (arr!25396 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407651 () Unit!30589)

(declare-fun addStillContains!342 (ListLongMap!10807 (_ BitVec 64) V!29513 (_ BitVec 64)) Unit!30589)

(assert (=> b!901757 (= lt!407651 (addStillContains!342 lt!407644 lt!407653 (zeroValue!5309 thiss!1181) lt!407656))))

(declare-fun +!2556 (ListLongMap!10807 tuple2!12096) ListLongMap!10807)

(assert (=> b!901757 (contains!4428 (+!2556 lt!407644 (tuple2!12097 lt!407653 (zeroValue!5309 thiss!1181))) lt!407656)))

(declare-fun lt!407654 () Unit!30589)

(assert (=> b!901757 (= lt!407654 lt!407651)))

(declare-fun lt!407643 () ListLongMap!10807)

(assert (=> b!901757 (= lt!407643 (getCurrentListMapNoExtraKeys!3304 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)))))

(declare-fun lt!407636 () (_ BitVec 64))

(assert (=> b!901757 (= lt!407636 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407646 () (_ BitVec 64))

(assert (=> b!901757 (= lt!407646 (select (arr!25396 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407641 () Unit!30589)

(declare-fun addApplyDifferent!342 (ListLongMap!10807 (_ BitVec 64) V!29513 (_ BitVec 64)) Unit!30589)

(assert (=> b!901757 (= lt!407641 (addApplyDifferent!342 lt!407643 lt!407636 (minValue!5309 thiss!1181) lt!407646))))

(assert (=> b!901757 (= (apply!422 (+!2556 lt!407643 (tuple2!12097 lt!407636 (minValue!5309 thiss!1181))) lt!407646) (apply!422 lt!407643 lt!407646))))

(declare-fun lt!407645 () Unit!30589)

(assert (=> b!901757 (= lt!407645 lt!407641)))

(declare-fun lt!407648 () ListLongMap!10807)

(assert (=> b!901757 (= lt!407648 (getCurrentListMapNoExtraKeys!3304 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)))))

(declare-fun lt!407635 () (_ BitVec 64))

(assert (=> b!901757 (= lt!407635 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407649 () (_ BitVec 64))

(assert (=> b!901757 (= lt!407649 (select (arr!25396 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!407650 () Unit!30589)

(assert (=> b!901757 (= lt!407650 (addApplyDifferent!342 lt!407648 lt!407635 (zeroValue!5309 thiss!1181) lt!407649))))

(assert (=> b!901757 (= (apply!422 (+!2556 lt!407648 (tuple2!12097 lt!407635 (zeroValue!5309 thiss!1181))) lt!407649) (apply!422 lt!407648 lt!407649))))

(declare-fun lt!407642 () Unit!30589)

(assert (=> b!901757 (= lt!407642 lt!407650)))

(declare-fun lt!407652 () ListLongMap!10807)

(assert (=> b!901757 (= lt!407652 (getCurrentListMapNoExtraKeys!3304 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)))))

(declare-fun lt!407639 () (_ BitVec 64))

(assert (=> b!901757 (= lt!407639 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!407638 () (_ BitVec 64))

(assert (=> b!901757 (= lt!407638 (select (arr!25396 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!901757 (= lt!407637 (addApplyDifferent!342 lt!407652 lt!407639 (minValue!5309 thiss!1181) lt!407638))))

(assert (=> b!901757 (= (apply!422 (+!2556 lt!407652 (tuple2!12097 lt!407639 (minValue!5309 thiss!1181))) lt!407638) (apply!422 lt!407652 lt!407638))))

(declare-fun b!901758 () Bool)

(declare-fun call!40210 () ListLongMap!10807)

(assert (=> b!901758 (= e!504941 call!40210)))

(declare-fun b!901759 () Bool)

(declare-fun e!504947 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!901759 (= e!504947 (validKeyInArray!0 (select (arr!25396 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!901760 () Bool)

(declare-fun e!504936 () ListLongMap!10807)

(declare-fun e!504940 () ListLongMap!10807)

(assert (=> b!901760 (= e!504936 e!504940)))

(declare-fun c!95499 () Bool)

(assert (=> b!901760 (= c!95499 (and (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40207 () Bool)

(declare-fun call!40211 () ListLongMap!10807)

(assert (=> bm!40207 (= call!40212 call!40211)))

(declare-fun b!901761 () Bool)

(declare-fun e!504944 () Bool)

(declare-fun call!40215 () Bool)

(assert (=> b!901761 (= e!504944 (not call!40215))))

(declare-fun bm!40208 () Bool)

(declare-fun call!40214 () ListLongMap!10807)

(assert (=> bm!40208 (= call!40211 call!40214)))

(declare-fun b!901762 () Bool)

(assert (=> b!901762 (= e!504945 (not call!40216))))

(declare-fun b!901763 () Bool)

(declare-fun e!504948 () Bool)

(assert (=> b!901763 (= e!504948 (validKeyInArray!0 (select (arr!25396 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!901764 () Bool)

(assert (=> b!901764 (= e!504944 e!504943)))

(declare-fun res!608824 () Bool)

(assert (=> b!901764 (= res!608824 call!40215)))

(assert (=> b!901764 (=> (not res!608824) (not e!504943))))

(declare-fun b!901765 () Bool)

(declare-fun c!95496 () Bool)

(assert (=> b!901765 (= c!95496 (and (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!901765 (= e!504940 e!504941)))

(declare-fun b!901766 () Bool)

(assert (=> b!901766 (= e!504940 call!40210)))

(declare-fun d!111805 () Bool)

(declare-fun e!504938 () Bool)

(assert (=> d!111805 e!504938))

(declare-fun res!608825 () Bool)

(assert (=> d!111805 (=> (not res!608825) (not e!504938))))

(assert (=> d!111805 (= res!608825 (or (bvsge #b00000000000000000000000000000000 (size!25856 (_keys!10286 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25856 (_keys!10286 thiss!1181))))))))

(declare-fun lt!407647 () ListLongMap!10807)

(assert (=> d!111805 (= lt!407655 lt!407647)))

(declare-fun lt!407640 () Unit!30589)

(assert (=> d!111805 (= lt!407640 e!504942)))

(declare-fun c!95497 () Bool)

(assert (=> d!111805 (= c!95497 e!504948)))

(declare-fun res!608820 () Bool)

(assert (=> d!111805 (=> (not res!608820) (not e!504948))))

(assert (=> d!111805 (= res!608820 (bvslt #b00000000000000000000000000000000 (size!25856 (_keys!10286 thiss!1181))))))

(assert (=> d!111805 (= lt!407647 e!504936)))

(declare-fun c!95500 () Bool)

(assert (=> d!111805 (= c!95500 (and (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111805 (validMask!0 (mask!26283 thiss!1181))))

(assert (=> d!111805 (= (getCurrentListMap!2658 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)) lt!407655)))

(declare-fun b!901767 () Bool)

(assert (=> b!901767 (= e!504937 (= (apply!422 lt!407655 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5309 thiss!1181)))))

(declare-fun b!901768 () Bool)

(declare-fun res!608819 () Bool)

(assert (=> b!901768 (=> (not res!608819) (not e!504938))))

(assert (=> b!901768 (= res!608819 e!504944)))

(declare-fun c!95498 () Bool)

(assert (=> b!901768 (= c!95498 (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40209 () Bool)

(assert (=> bm!40209 (= call!40216 (contains!4428 lt!407655 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901769 () Bool)

(declare-fun call!40213 () ListLongMap!10807)

(assert (=> b!901769 (= e!504936 (+!2556 call!40213 (tuple2!12097 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5309 thiss!1181))))))

(declare-fun bm!40210 () Bool)

(assert (=> bm!40210 (= call!40210 call!40213)))

(declare-fun b!901770 () Bool)

(declare-fun Unit!30594 () Unit!30589)

(assert (=> b!901770 (= e!504942 Unit!30594)))

(declare-fun b!901771 () Bool)

(declare-fun res!608823 () Bool)

(assert (=> b!901771 (=> (not res!608823) (not e!504938))))

(assert (=> b!901771 (= res!608823 e!504939)))

(declare-fun res!608826 () Bool)

(assert (=> b!901771 (=> res!608826 e!504939)))

(assert (=> b!901771 (= res!608826 (not e!504947))))

(declare-fun res!608821 () Bool)

(assert (=> b!901771 (=> (not res!608821) (not e!504947))))

(assert (=> b!901771 (= res!608821 (bvslt #b00000000000000000000000000000000 (size!25856 (_keys!10286 thiss!1181))))))

(declare-fun bm!40211 () Bool)

(assert (=> bm!40211 (= call!40214 (getCurrentListMapNoExtraKeys!3304 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)))))

(declare-fun bm!40212 () Bool)

(assert (=> bm!40212 (= call!40213 (+!2556 (ite c!95500 call!40214 (ite c!95499 call!40211 call!40212)) (ite (or c!95500 c!95499) (tuple2!12097 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5309 thiss!1181)) (tuple2!12097 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5309 thiss!1181)))))))

(declare-fun b!901772 () Bool)

(assert (=> b!901772 (= e!504938 e!504945)))

(declare-fun c!95495 () Bool)

(assert (=> b!901772 (= c!95495 (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40213 () Bool)

(assert (=> bm!40213 (= call!40215 (contains!4428 lt!407655 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!111805 c!95500) b!901769))

(assert (= (and d!111805 (not c!95500)) b!901760))

(assert (= (and b!901760 c!95499) b!901766))

(assert (= (and b!901760 (not c!95499)) b!901765))

(assert (= (and b!901765 c!95496) b!901758))

(assert (= (and b!901765 (not c!95496)) b!901754))

(assert (= (or b!901758 b!901754) bm!40207))

(assert (= (or b!901766 bm!40207) bm!40208))

(assert (= (or b!901766 b!901758) bm!40210))

(assert (= (or b!901769 bm!40208) bm!40211))

(assert (= (or b!901769 bm!40210) bm!40212))

(assert (= (and d!111805 res!608820) b!901763))

(assert (= (and d!111805 c!95497) b!901757))

(assert (= (and d!111805 (not c!95497)) b!901770))

(assert (= (and d!111805 res!608825) b!901771))

(assert (= (and b!901771 res!608821) b!901759))

(assert (= (and b!901771 (not res!608826)) b!901753))

(assert (= (and b!901753 res!608827) b!901752))

(assert (= (and b!901771 res!608823) b!901768))

(assert (= (and b!901768 c!95498) b!901764))

(assert (= (and b!901768 (not c!95498)) b!901761))

(assert (= (and b!901764 res!608824) b!901756))

(assert (= (or b!901764 b!901761) bm!40213))

(assert (= (and b!901768 res!608819) b!901772))

(assert (= (and b!901772 c!95495) b!901755))

(assert (= (and b!901772 (not c!95495)) b!901762))

(assert (= (and b!901755 res!608822) b!901767))

(assert (= (or b!901755 b!901762) bm!40209))

(declare-fun b_lambda!13103 () Bool)

(assert (=> (not b_lambda!13103) (not b!901752)))

(assert (=> b!901752 t!25334))

(declare-fun b_and!26463 () Bool)

(assert (= b_and!26461 (and (=> t!25334 result!10237) b_and!26463)))

(assert (=> b!901757 m!838011))

(declare-fun m!838015 () Bool)

(assert (=> b!901757 m!838015))

(declare-fun m!838017 () Bool)

(assert (=> b!901757 m!838017))

(declare-fun m!838019 () Bool)

(assert (=> b!901757 m!838019))

(declare-fun m!838021 () Bool)

(assert (=> b!901757 m!838021))

(assert (=> b!901757 m!838019))

(declare-fun m!838023 () Bool)

(assert (=> b!901757 m!838023))

(declare-fun m!838025 () Bool)

(assert (=> b!901757 m!838025))

(declare-fun m!838027 () Bool)

(assert (=> b!901757 m!838027))

(declare-fun m!838029 () Bool)

(assert (=> b!901757 m!838029))

(declare-fun m!838031 () Bool)

(assert (=> b!901757 m!838031))

(declare-fun m!838033 () Bool)

(assert (=> b!901757 m!838033))

(declare-fun m!838035 () Bool)

(assert (=> b!901757 m!838035))

(declare-fun m!838037 () Bool)

(assert (=> b!901757 m!838037))

(declare-fun m!838039 () Bool)

(assert (=> b!901757 m!838039))

(assert (=> b!901757 m!838033))

(assert (=> b!901757 m!838039))

(declare-fun m!838041 () Bool)

(assert (=> b!901757 m!838041))

(declare-fun m!838043 () Bool)

(assert (=> b!901757 m!838043))

(assert (=> b!901757 m!838029))

(declare-fun m!838045 () Bool)

(assert (=> b!901757 m!838045))

(declare-fun m!838047 () Bool)

(assert (=> bm!40212 m!838047))

(assert (=> b!901763 m!838011))

(assert (=> b!901763 m!838011))

(declare-fun m!838049 () Bool)

(assert (=> b!901763 m!838049))

(declare-fun m!838051 () Bool)

(assert (=> bm!40209 m!838051))

(declare-fun m!838053 () Bool)

(assert (=> bm!40213 m!838053))

(declare-fun m!838055 () Bool)

(assert (=> b!901756 m!838055))

(declare-fun m!838057 () Bool)

(assert (=> b!901767 m!838057))

(assert (=> d!111805 m!837967))

(declare-fun m!838059 () Bool)

(assert (=> b!901769 m!838059))

(assert (=> b!901753 m!838011))

(assert (=> b!901753 m!838011))

(declare-fun m!838061 () Bool)

(assert (=> b!901753 m!838061))

(assert (=> b!901759 m!838011))

(assert (=> b!901759 m!838011))

(assert (=> b!901759 m!838049))

(assert (=> b!901752 m!838011))

(declare-fun m!838063 () Bool)

(assert (=> b!901752 m!838063))

(assert (=> b!901752 m!837871))

(assert (=> b!901752 m!838063))

(assert (=> b!901752 m!837871))

(declare-fun m!838065 () Bool)

(assert (=> b!901752 m!838065))

(assert (=> b!901752 m!838011))

(declare-fun m!838067 () Bool)

(assert (=> b!901752 m!838067))

(assert (=> bm!40211 m!838037))

(assert (=> b!901570 d!111805))

(declare-fun d!111807 () Bool)

(declare-fun lt!407687 () Bool)

(assert (=> d!111807 (= lt!407687 (contains!4428 (map!12299 thiss!1181) key!785))))

(declare-fun e!504963 () Bool)

(assert (=> d!111807 (= lt!407687 e!504963)))

(declare-fun c!95513 () Bool)

(assert (=> d!111807 (= c!95513 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111807 (valid!1697 thiss!1181)))

(assert (=> d!111807 (= (contains!4427 thiss!1181 key!785) lt!407687)))

(declare-fun b!901793 () Bool)

(declare-fun e!504962 () Bool)

(assert (=> b!901793 (= e!504962 false)))

(declare-fun c!95514 () Bool)

(declare-fun call!40223 () Bool)

(assert (=> b!901793 (= c!95514 call!40223)))

(declare-fun lt!407689 () Unit!30589)

(declare-fun e!504959 () Unit!30589)

(assert (=> b!901793 (= lt!407689 e!504959)))

(declare-fun b!901794 () Bool)

(declare-fun e!504960 () Bool)

(assert (=> b!901794 (= e!504963 e!504960)))

(declare-fun c!95511 () Bool)

(assert (=> b!901794 (= c!95511 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901795 () Bool)

(assert (=> b!901795 false))

(declare-fun lt!407701 () Unit!30589)

(declare-fun lt!407698 () Unit!30589)

(assert (=> b!901795 (= lt!407701 lt!407698)))

(declare-fun lt!407699 () SeekEntryResult!8940)

(declare-fun lt!407690 () (_ BitVec 32))

(assert (=> b!901795 (and ((_ is Found!8940) lt!407699) (= (index!38131 lt!407699) lt!407690))))

(assert (=> b!901795 (= lt!407699 (seekEntry!0 key!785 (_keys!10286 thiss!1181) (mask!26283 thiss!1181)))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!52866 (_ BitVec 32)) Unit!30589)

(assert (=> b!901795 (= lt!407698 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!785 lt!407690 (_keys!10286 thiss!1181) (mask!26283 thiss!1181)))))

(declare-fun lt!407694 () Unit!30589)

(declare-fun lt!407691 () Unit!30589)

(assert (=> b!901795 (= lt!407694 lt!407691)))

(assert (=> b!901795 (arrayForallSeekEntryOrOpenFound!0 lt!407690 (_keys!10286 thiss!1181) (mask!26283 thiss!1181))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!52866 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30589)

(assert (=> b!901795 (= lt!407691 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10286 thiss!1181) (mask!26283 thiss!1181) #b00000000000000000000000000000000 lt!407690))))

(declare-fun arrayScanForKey!0 (array!52866 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!901795 (= lt!407690 (arrayScanForKey!0 (_keys!10286 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun lt!407700 () Unit!30589)

(declare-fun lt!407696 () Unit!30589)

(assert (=> b!901795 (= lt!407700 lt!407696)))

(declare-fun e!504961 () Bool)

(assert (=> b!901795 e!504961))

(declare-fun c!95512 () Bool)

(assert (=> b!901795 (= c!95512 (and (not (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!167 (array!52866 array!52868 (_ BitVec 32) (_ BitVec 32) V!29513 V!29513 (_ BitVec 64) Int) Unit!30589)

(assert (=> b!901795 (= lt!407696 (lemmaKeyInListMapIsInArray!167 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) key!785 (defaultEntry!5475 thiss!1181)))))

(declare-fun Unit!30595 () Unit!30589)

(assert (=> b!901795 (= e!504959 Unit!30595)))

(declare-fun b!901796 () Bool)

(assert (=> b!901796 (= e!504961 (ite (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!40220 () Bool)

(declare-fun call!40224 () ListLongMap!10807)

(assert (=> bm!40220 (= call!40224 (getCurrentListMap!2658 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5475 thiss!1181)))))

(declare-fun b!901797 () Bool)

(assert (=> b!901797 (= e!504963 (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!40221 () Bool)

(declare-fun call!40225 () Bool)

(assert (=> bm!40221 (= call!40225 (arrayContainsKey!0 (_keys!10286 thiss!1181) key!785 #b00000000000000000000000000000000))))

(declare-fun c!95515 () Bool)

(declare-fun lt!407695 () SeekEntryResult!8940)

(declare-fun bm!40222 () Bool)

(assert (=> bm!40222 (= call!40223 (contains!4428 call!40224 (ite c!95515 (select (arr!25396 (_keys!10286 thiss!1181)) (index!38131 lt!407695)) key!785)))))

(declare-fun b!901798 () Bool)

(assert (=> b!901798 (= e!504961 call!40225)))

(declare-fun b!901799 () Bool)

(assert (=> b!901799 (= c!95515 ((_ is Found!8940) lt!407695))))

(assert (=> b!901799 (= lt!407695 (seekEntry!0 key!785 (_keys!10286 thiss!1181) (mask!26283 thiss!1181)))))

(assert (=> b!901799 (= e!504960 e!504962)))

(declare-fun b!901800 () Bool)

(declare-fun Unit!30596 () Unit!30589)

(assert (=> b!901800 (= e!504959 Unit!30596)))

(declare-fun b!901801 () Bool)

(assert (=> b!901801 (= e!504960 (not (= (bvand (extraKeys!5205 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!901802 () Bool)

(assert (=> b!901802 (= e!504962 true)))

(declare-fun lt!407697 () Unit!30589)

(assert (=> b!901802 (= lt!407697 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10286 thiss!1181) key!785 (index!38131 lt!407695)))))

(assert (=> b!901802 call!40225))

(declare-fun lt!407688 () Unit!30589)

(assert (=> b!901802 (= lt!407688 lt!407697)))

(declare-fun lt!407692 () Unit!30589)

(assert (=> b!901802 (= lt!407692 (lemmaValidKeyInArrayIsInListMap!251 (_keys!10286 thiss!1181) (_values!5496 thiss!1181) (mask!26283 thiss!1181) (extraKeys!5205 thiss!1181) (zeroValue!5309 thiss!1181) (minValue!5309 thiss!1181) (index!38131 lt!407695) (defaultEntry!5475 thiss!1181)))))

(assert (=> b!901802 call!40223))

(declare-fun lt!407693 () Unit!30589)

(assert (=> b!901802 (= lt!407693 lt!407692)))

(assert (= (and d!111807 c!95513) b!901797))

(assert (= (and d!111807 (not c!95513)) b!901794))

(assert (= (and b!901794 c!95511) b!901801))

(assert (= (and b!901794 (not c!95511)) b!901799))

(assert (= (and b!901799 c!95515) b!901802))

(assert (= (and b!901799 (not c!95515)) b!901793))

(assert (= (and b!901793 c!95514) b!901795))

(assert (= (and b!901793 (not c!95514)) b!901800))

(assert (= (and b!901795 c!95512) b!901798))

(assert (= (and b!901795 (not c!95512)) b!901796))

(assert (= (or b!901802 b!901798) bm!40221))

(assert (= (or b!901802 b!901793) bm!40220))

(assert (= (or b!901802 b!901793) bm!40222))

(declare-fun m!838069 () Bool)

(assert (=> b!901802 m!838069))

(declare-fun m!838071 () Bool)

(assert (=> b!901802 m!838071))

(assert (=> bm!40220 m!837891))

(assert (=> bm!40221 m!837889))

(assert (=> b!901799 m!837913))

(assert (=> d!111807 m!837903))

(assert (=> d!111807 m!837903))

(declare-fun m!838073 () Bool)

(assert (=> d!111807 m!838073))

(assert (=> d!111807 m!837915))

(declare-fun m!838075 () Bool)

(assert (=> b!901795 m!838075))

(assert (=> b!901795 m!837913))

(declare-fun m!838077 () Bool)

(assert (=> b!901795 m!838077))

(declare-fun m!838079 () Bool)

(assert (=> b!901795 m!838079))

(declare-fun m!838081 () Bool)

(assert (=> b!901795 m!838081))

(declare-fun m!838083 () Bool)

(assert (=> b!901795 m!838083))

(declare-fun m!838085 () Bool)

(assert (=> bm!40222 m!838085))

(declare-fun m!838087 () Bool)

(assert (=> bm!40222 m!838087))

(assert (=> b!901570 d!111807))

(declare-fun d!111809 () Bool)

(declare-fun c!95518 () Bool)

(assert (=> d!111809 (= c!95518 ((_ is ValueCellFull!8724) (select (arr!25397 (_values!5496 thiss!1181)) (index!38131 lt!407525))))))

(declare-fun e!504966 () V!29513)

(assert (=> d!111809 (= (get!13378 (select (arr!25397 (_values!5496 thiss!1181)) (index!38131 lt!407525)) (dynLambda!1317 (defaultEntry!5475 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)) e!504966)))

(declare-fun b!901807 () Bool)

(declare-fun get!13381 (ValueCell!8724 V!29513) V!29513)

(assert (=> b!901807 (= e!504966 (get!13381 (select (arr!25397 (_values!5496 thiss!1181)) (index!38131 lt!407525)) (dynLambda!1317 (defaultEntry!5475 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!901808 () Bool)

(declare-fun get!13382 (ValueCell!8724 V!29513) V!29513)

(assert (=> b!901808 (= e!504966 (get!13382 (select (arr!25397 (_values!5496 thiss!1181)) (index!38131 lt!407525)) (dynLambda!1317 (defaultEntry!5475 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111809 c!95518) b!901807))

(assert (= (and d!111809 (not c!95518)) b!901808))

(assert (=> b!901807 m!837883))

(assert (=> b!901807 m!837871))

(declare-fun m!838089 () Bool)

(assert (=> b!901807 m!838089))

(assert (=> b!901808 m!837883))

(assert (=> b!901808 m!837871))

(declare-fun m!838091 () Bool)

(assert (=> b!901808 m!838091))

(assert (=> b!901570 d!111809))

(declare-fun d!111811 () Bool)

(assert (=> d!111811 (= (inRange!0 (index!38131 lt!407525) (mask!26283 thiss!1181)) (and (bvsge (index!38131 lt!407525) #b00000000000000000000000000000000) (bvslt (index!38131 lt!407525) (bvadd (mask!26283 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!901565 d!111811))

(declare-fun d!111813 () Bool)

(assert (=> d!111813 (= (array_inv!19894 (_keys!10286 thiss!1181)) (bvsge (size!25856 (_keys!10286 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!901564 d!111813))

(declare-fun d!111815 () Bool)

(assert (=> d!111815 (= (array_inv!19895 (_values!5496 thiss!1181)) (bvsge (size!25857 (_values!5496 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!901564 d!111815))

(assert (=> b!901573 d!111809))

(declare-fun condMapEmpty!29311 () Bool)

(declare-fun mapDefault!29311 () ValueCell!8724)

(assert (=> mapNonEmpty!29305 (= condMapEmpty!29311 (= mapRest!29305 ((as const (Array (_ BitVec 32) ValueCell!8724)) mapDefault!29311)))))

(declare-fun e!504972 () Bool)

(declare-fun mapRes!29311 () Bool)

(assert (=> mapNonEmpty!29305 (= tp!56353 (and e!504972 mapRes!29311))))

(declare-fun b!901816 () Bool)

(assert (=> b!901816 (= e!504972 tp_is_empty!18411)))

(declare-fun mapIsEmpty!29311 () Bool)

(assert (=> mapIsEmpty!29311 mapRes!29311))

(declare-fun b!901815 () Bool)

(declare-fun e!504971 () Bool)

(assert (=> b!901815 (= e!504971 tp_is_empty!18411)))

(declare-fun mapNonEmpty!29311 () Bool)

(declare-fun tp!56362 () Bool)

(assert (=> mapNonEmpty!29311 (= mapRes!29311 (and tp!56362 e!504971))))

(declare-fun mapKey!29311 () (_ BitVec 32))

(declare-fun mapRest!29311 () (Array (_ BitVec 32) ValueCell!8724))

(declare-fun mapValue!29311 () ValueCell!8724)

(assert (=> mapNonEmpty!29311 (= mapRest!29305 (store mapRest!29311 mapKey!29311 mapValue!29311))))

(assert (= (and mapNonEmpty!29305 condMapEmpty!29311) mapIsEmpty!29311))

(assert (= (and mapNonEmpty!29305 (not condMapEmpty!29311)) mapNonEmpty!29311))

(assert (= (and mapNonEmpty!29311 ((_ is ValueCellFull!8724) mapValue!29311)) b!901815))

(assert (= (and mapNonEmpty!29305 ((_ is ValueCellFull!8724) mapDefault!29311)) b!901816))

(declare-fun m!838093 () Bool)

(assert (=> mapNonEmpty!29311 m!838093))

(declare-fun b_lambda!13105 () Bool)

(assert (= b_lambda!13103 (or (and b!901564 b_free!16083) b_lambda!13105)))

(declare-fun b_lambda!13107 () Bool)

(assert (= b_lambda!13101 (or (and b!901564 b_free!16083) b_lambda!13107)))

(check-sat (not bm!40211) tp_is_empty!18411 (not bm!40189) (not b!901679) (not d!111797) (not mapNonEmpty!29311) (not b!901767) (not b!901697) (not b!901702) (not b!901769) (not b_lambda!13107) b_and!26463 (not b_next!16083) (not b!901802) (not b_lambda!13097) (not bm!40213) (not b!901795) (not bm!40212) (not d!111785) (not d!111793) (not b!901661) (not b_lambda!13095) (not bm!40209) (not b!901639) (not b!901756) (not b!901753) (not b!901677) (not d!111807) (not b!901757) (not d!111791) (not d!111787) (not b!901668) (not b!901799) (not b!901807) (not b!901752) (not b_lambda!13105) (not b!901643) (not d!111789) (not d!111805) (not b!901670) (not b!901669) (not d!111799) (not bm!40191) (not b!901808) (not b!901682) (not d!111795) (not d!111801) (not b!901759) (not b!901709) (not b_lambda!13099) (not bm!40222) (not bm!40220) (not bm!40221) (not b!901763))
(check-sat b_and!26463 (not b_next!16083))
