; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13242 () Bool)

(assert start!13242)

(declare-fun b!116815 () Bool)

(declare-fun b_free!2765 () Bool)

(declare-fun b_next!2765 () Bool)

(assert (=> b!116815 (= b_free!2765 (not b_next!2765))))

(declare-fun tp!10670 () Bool)

(declare-fun b_and!7293 () Bool)

(assert (=> b!116815 (= tp!10670 b_and!7293)))

(declare-fun b!116818 () Bool)

(declare-fun b_free!2767 () Bool)

(declare-fun b_next!2767 () Bool)

(assert (=> b!116818 (= b_free!2767 (not b_next!2767))))

(declare-fun tp!10668 () Bool)

(declare-fun b_and!7295 () Bool)

(assert (=> b!116818 (= tp!10668 b_and!7295)))

(declare-fun b!116813 () Bool)

(declare-fun e!76320 () Bool)

(declare-fun tp_is_empty!2799 () Bool)

(assert (=> b!116813 (= e!76320 tp_is_empty!2799)))

(declare-fun b!116814 () Bool)

(declare-fun e!76326 () Bool)

(declare-fun e!76327 () Bool)

(assert (=> b!116814 (= e!76326 e!76327)))

(declare-fun mapNonEmpty!4339 () Bool)

(declare-fun mapRes!4339 () Bool)

(declare-fun tp!10667 () Bool)

(declare-fun e!76321 () Bool)

(assert (=> mapNonEmpty!4339 (= mapRes!4339 (and tp!10667 e!76321))))

(declare-fun mapKey!4339 () (_ BitVec 32))

(declare-datatypes ((V!3379 0))(
  ( (V!3380 (val!1444 Int)) )
))
(declare-datatypes ((array!4604 0))(
  ( (array!4605 (arr!2182 (Array (_ BitVec 32) (_ BitVec 64))) (size!2443 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1056 0))(
  ( (ValueCellFull!1056 (v!3053 V!3379)) (EmptyCell!1056) )
))
(declare-datatypes ((array!4606 0))(
  ( (array!4607 (arr!2183 (Array (_ BitVec 32) ValueCell!1056)) (size!2444 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1020 0))(
  ( (LongMapFixedSize!1021 (defaultEntry!2722 Int) (mask!6942 (_ BitVec 32)) (extraKeys!2511 (_ BitVec 32)) (zeroValue!2589 V!3379) (minValue!2589 V!3379) (_size!559 (_ BitVec 32)) (_keys!4445 array!4604) (_values!2705 array!4606) (_vacant!559 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1020)

(declare-fun mapRest!4339 () (Array (_ BitVec 32) ValueCell!1056))

(declare-fun mapValue!4340 () ValueCell!1056)

(assert (=> mapNonEmpty!4339 (= (arr!2183 (_values!2705 newMap!16)) (store mapRest!4339 mapKey!4339 mapValue!4340))))

(declare-fun mapNonEmpty!4340 () Bool)

(declare-fun mapRes!4340 () Bool)

(declare-fun tp!10669 () Bool)

(declare-fun e!76323 () Bool)

(assert (=> mapNonEmpty!4340 (= mapRes!4340 (and tp!10669 e!76323))))

(declare-datatypes ((Cell!812 0))(
  ( (Cell!813 (v!3054 LongMapFixedSize!1020)) )
))
(declare-datatypes ((LongMap!812 0))(
  ( (LongMap!813 (underlying!417 Cell!812)) )
))
(declare-fun thiss!992 () LongMap!812)

(declare-fun mapKey!4340 () (_ BitVec 32))

(declare-fun mapRest!4340 () (Array (_ BitVec 32) ValueCell!1056))

(declare-fun mapValue!4339 () ValueCell!1056)

(assert (=> mapNonEmpty!4340 (= (arr!2183 (_values!2705 (v!3054 (underlying!417 thiss!992)))) (store mapRest!4340 mapKey!4340 mapValue!4339))))

(declare-fun res!57182 () Bool)

(declare-fun e!76329 () Bool)

(assert (=> start!13242 (=> (not res!57182) (not e!76329))))

(declare-fun valid!477 (LongMap!812) Bool)

(assert (=> start!13242 (= res!57182 (valid!477 thiss!992))))

(assert (=> start!13242 e!76329))

(assert (=> start!13242 e!76326))

(assert (=> start!13242 true))

(declare-fun e!76325 () Bool)

(assert (=> start!13242 e!76325))

(declare-fun e!76319 () Bool)

(declare-fun e!76330 () Bool)

(declare-fun array_inv!1327 (array!4604) Bool)

(declare-fun array_inv!1328 (array!4606) Bool)

(assert (=> b!116815 (= e!76319 (and tp!10670 tp_is_empty!2799 (array_inv!1327 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (array_inv!1328 (_values!2705 (v!3054 (underlying!417 thiss!992)))) e!76330))))

(declare-fun b!116816 () Bool)

(declare-fun e!76318 () Bool)

(assert (=> b!116816 (= e!76318 tp_is_empty!2799)))

(declare-fun b!116817 () Bool)

(declare-fun res!57186 () Bool)

(assert (=> b!116817 (=> (not res!57186) (not e!76329))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2530 0))(
  ( (tuple2!2531 (_1!1275 (_ BitVec 64)) (_2!1275 V!3379)) )
))
(declare-datatypes ((List!1701 0))(
  ( (Nil!1698) (Cons!1697 (h!2297 tuple2!2530) (t!5979 List!1701)) )
))
(declare-datatypes ((ListLongMap!1659 0))(
  ( (ListLongMap!1660 (toList!845 List!1701)) )
))
(declare-fun getCurrentListMap!518 (array!4604 array!4606 (_ BitVec 32) (_ BitVec 32) V!3379 V!3379 (_ BitVec 32) Int) ListLongMap!1659)

(declare-fun map!1357 (LongMapFixedSize!1020) ListLongMap!1659)

(assert (=> b!116817 (= res!57186 (= (getCurrentListMap!518 (_keys!4445 (v!3054 (underlying!417 thiss!992))) (_values!2705 (v!3054 (underlying!417 thiss!992))) (mask!6942 (v!3054 (underlying!417 thiss!992))) (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) (zeroValue!2589 (v!3054 (underlying!417 thiss!992))) (minValue!2589 (v!3054 (underlying!417 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992)))) (map!1357 newMap!16)))))

(declare-fun e!76328 () Bool)

(assert (=> b!116818 (= e!76325 (and tp!10668 tp_is_empty!2799 (array_inv!1327 (_keys!4445 newMap!16)) (array_inv!1328 (_values!2705 newMap!16)) e!76328))))

(declare-fun mapIsEmpty!4339 () Bool)

(assert (=> mapIsEmpty!4339 mapRes!4340))

(declare-fun b!116819 () Bool)

(declare-fun valid!478 (LongMapFixedSize!1020) Bool)

(assert (=> b!116819 (= e!76329 (not (valid!478 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun b!116820 () Bool)

(declare-fun res!57183 () Bool)

(assert (=> b!116820 (=> (not res!57183) (not e!76329))))

(assert (=> b!116820 (= res!57183 (and (or (= (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun b!116821 () Bool)

(assert (=> b!116821 (= e!76327 e!76319)))

(declare-fun b!116822 () Bool)

(assert (=> b!116822 (= e!76330 (and e!76318 mapRes!4340))))

(declare-fun condMapEmpty!4340 () Bool)

(declare-fun mapDefault!4339 () ValueCell!1056)

(assert (=> b!116822 (= condMapEmpty!4340 (= (arr!2183 (_values!2705 (v!3054 (underlying!417 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1056)) mapDefault!4339)))))

(declare-fun b!116823 () Bool)

(assert (=> b!116823 (= e!76328 (and e!76320 mapRes!4339))))

(declare-fun condMapEmpty!4339 () Bool)

(declare-fun mapDefault!4340 () ValueCell!1056)

(assert (=> b!116823 (= condMapEmpty!4339 (= (arr!2183 (_values!2705 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1056)) mapDefault!4340)))))

(declare-fun b!116824 () Bool)

(assert (=> b!116824 (= e!76323 tp_is_empty!2799)))

(declare-fun b!116825 () Bool)

(declare-fun res!57181 () Bool)

(assert (=> b!116825 (=> (not res!57181) (not e!76329))))

(assert (=> b!116825 (= res!57181 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6942 newMap!16)) (_size!559 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun b!116826 () Bool)

(assert (=> b!116826 (= e!76321 tp_is_empty!2799)))

(declare-fun mapIsEmpty!4340 () Bool)

(assert (=> mapIsEmpty!4340 mapRes!4339))

(declare-fun b!116827 () Bool)

(declare-fun res!57185 () Bool)

(assert (=> b!116827 (=> (not res!57185) (not e!76329))))

(assert (=> b!116827 (= res!57185 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2443 (_keys!4445 (v!3054 (underlying!417 thiss!992)))))))))

(declare-fun b!116828 () Bool)

(declare-fun res!57184 () Bool)

(assert (=> b!116828 (=> (not res!57184) (not e!76329))))

(assert (=> b!116828 (= res!57184 (valid!478 newMap!16))))

(assert (= (and start!13242 res!57182) b!116827))

(assert (= (and b!116827 res!57185) b!116828))

(assert (= (and b!116828 res!57184) b!116825))

(assert (= (and b!116825 res!57181) b!116817))

(assert (= (and b!116817 res!57186) b!116820))

(assert (= (and b!116820 res!57183) b!116819))

(assert (= (and b!116822 condMapEmpty!4340) mapIsEmpty!4339))

(assert (= (and b!116822 (not condMapEmpty!4340)) mapNonEmpty!4340))

(get-info :version)

(assert (= (and mapNonEmpty!4340 ((_ is ValueCellFull!1056) mapValue!4339)) b!116824))

(assert (= (and b!116822 ((_ is ValueCellFull!1056) mapDefault!4339)) b!116816))

(assert (= b!116815 b!116822))

(assert (= b!116821 b!116815))

(assert (= b!116814 b!116821))

(assert (= start!13242 b!116814))

(assert (= (and b!116823 condMapEmpty!4339) mapIsEmpty!4340))

(assert (= (and b!116823 (not condMapEmpty!4339)) mapNonEmpty!4339))

(assert (= (and mapNonEmpty!4339 ((_ is ValueCellFull!1056) mapValue!4340)) b!116826))

(assert (= (and b!116823 ((_ is ValueCellFull!1056) mapDefault!4340)) b!116813))

(assert (= b!116818 b!116823))

(assert (= start!13242 b!116818))

(declare-fun m!132931 () Bool)

(assert (=> b!116817 m!132931))

(declare-fun m!132933 () Bool)

(assert (=> b!116817 m!132933))

(declare-fun m!132935 () Bool)

(assert (=> b!116818 m!132935))

(declare-fun m!132937 () Bool)

(assert (=> b!116818 m!132937))

(declare-fun m!132939 () Bool)

(assert (=> mapNonEmpty!4340 m!132939))

(declare-fun m!132941 () Bool)

(assert (=> mapNonEmpty!4339 m!132941))

(declare-fun m!132943 () Bool)

(assert (=> b!116828 m!132943))

(declare-fun m!132945 () Bool)

(assert (=> b!116820 m!132945))

(declare-fun m!132947 () Bool)

(assert (=> b!116819 m!132947))

(declare-fun m!132949 () Bool)

(assert (=> b!116815 m!132949))

(declare-fun m!132951 () Bool)

(assert (=> b!116815 m!132951))

(declare-fun m!132953 () Bool)

(assert (=> start!13242 m!132953))

(check-sat tp_is_empty!2799 (not b!116817) (not b!116819) (not b!116828) b_and!7295 (not start!13242) (not mapNonEmpty!4339) (not b!116815) (not mapNonEmpty!4340) b_and!7293 (not b!116818) (not b_next!2767) (not b_next!2765))
(check-sat b_and!7293 b_and!7295 (not b_next!2765) (not b_next!2767))
(get-model)

(declare-fun d!32663 () Bool)

(assert (=> d!32663 (= (valid!477 thiss!992) (valid!478 (v!3054 (underlying!417 thiss!992))))))

(declare-fun bs!4744 () Bool)

(assert (= bs!4744 d!32663))

(assert (=> bs!4744 m!132947))

(assert (=> start!13242 d!32663))

(declare-fun b!116919 () Bool)

(declare-fun c!20695 () Bool)

(assert (=> b!116919 (= c!20695 (and (not (= (bvand (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!76402 () ListLongMap!1659)

(declare-fun e!76398 () ListLongMap!1659)

(assert (=> b!116919 (= e!76402 e!76398)))

(declare-fun bm!12513 () Bool)

(declare-fun call!12516 () ListLongMap!1659)

(declare-fun call!12519 () ListLongMap!1659)

(assert (=> bm!12513 (= call!12516 call!12519)))

(declare-fun b!116920 () Bool)

(declare-fun res!57227 () Bool)

(declare-fun e!76396 () Bool)

(assert (=> b!116920 (=> (not res!57227) (not e!76396))))

(declare-fun e!76400 () Bool)

(assert (=> b!116920 (= res!57227 e!76400)))

(declare-fun c!20690 () Bool)

(assert (=> b!116920 (= c!20690 (not (= (bvand (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!116921 () Bool)

(declare-fun e!76404 () Bool)

(assert (=> b!116921 (= e!76400 e!76404)))

(declare-fun res!57231 () Bool)

(declare-fun call!12517 () Bool)

(assert (=> b!116921 (= res!57231 call!12517)))

(assert (=> b!116921 (=> (not res!57231) (not e!76404))))

(declare-fun bm!12514 () Bool)

(declare-fun call!12518 () ListLongMap!1659)

(declare-fun call!12521 () ListLongMap!1659)

(assert (=> bm!12514 (= call!12518 call!12521)))

(declare-fun bm!12515 () Bool)

(declare-fun call!12520 () ListLongMap!1659)

(assert (=> bm!12515 (= call!12521 call!12520)))

(declare-fun b!116922 () Bool)

(assert (=> b!116922 (= e!76402 call!12516)))

(declare-fun b!116923 () Bool)

(assert (=> b!116923 (= e!76398 call!12516)))

(declare-fun b!116924 () Bool)

(declare-fun e!76407 () Bool)

(declare-fun call!12522 () Bool)

(assert (=> b!116924 (= e!76407 (not call!12522))))

(declare-fun b!116926 () Bool)

(declare-fun res!57229 () Bool)

(assert (=> b!116926 (=> (not res!57229) (not e!76396))))

(declare-fun e!76408 () Bool)

(assert (=> b!116926 (= res!57229 e!76408)))

(declare-fun res!57225 () Bool)

(assert (=> b!116926 (=> res!57225 e!76408)))

(declare-fun e!76406 () Bool)

(assert (=> b!116926 (= res!57225 (not e!76406))))

(declare-fun res!57223 () Bool)

(assert (=> b!116926 (=> (not res!57223) (not e!76406))))

(assert (=> b!116926 (= res!57223 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2443 (_keys!4445 (v!3054 (underlying!417 thiss!992))))))))

(declare-fun b!116927 () Bool)

(declare-fun e!76401 () ListLongMap!1659)

(assert (=> b!116927 (= e!76401 e!76402)))

(declare-fun c!20691 () Bool)

(assert (=> b!116927 (= c!20691 (and (not (= (bvand (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!116928 () Bool)

(declare-fun lt!60648 () ListLongMap!1659)

(declare-fun e!76403 () Bool)

(declare-fun apply!106 (ListLongMap!1659 (_ BitVec 64)) V!3379)

(declare-fun get!1420 (ValueCell!1056 V!3379) V!3379)

(declare-fun dynLambda!409 (Int (_ BitVec 64)) V!3379)

(assert (=> b!116928 (= e!76403 (= (apply!106 lt!60648 (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1420 (select (arr!2183 (_values!2705 (v!3054 (underlying!417 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!409 (defaultEntry!2722 (v!3054 (underlying!417 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!116928 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2444 (_values!2705 (v!3054 (underlying!417 thiss!992))))))))

(assert (=> b!116928 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2443 (_keys!4445 (v!3054 (underlying!417 thiss!992))))))))

(declare-fun bm!12516 () Bool)

(declare-fun contains!863 (ListLongMap!1659 (_ BitVec 64)) Bool)

(assert (=> bm!12516 (= call!12522 (contains!863 lt!60648 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!116929 () Bool)

(declare-fun e!76397 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!116929 (= e!76397 (validKeyInArray!0 (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!12517 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!127 (array!4604 array!4606 (_ BitVec 32) (_ BitVec 32) V!3379 V!3379 (_ BitVec 32) Int) ListLongMap!1659)

(assert (=> bm!12517 (= call!12520 (getCurrentListMapNoExtraKeys!127 (_keys!4445 (v!3054 (underlying!417 thiss!992))) (_values!2705 (v!3054 (underlying!417 thiss!992))) (mask!6942 (v!3054 (underlying!417 thiss!992))) (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) (zeroValue!2589 (v!3054 (underlying!417 thiss!992))) (minValue!2589 (v!3054 (underlying!417 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun b!116930 () Bool)

(assert (=> b!116930 (= e!76406 (validKeyInArray!0 (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!116931 () Bool)

(assert (=> b!116931 (= e!76396 e!76407)))

(declare-fun c!20692 () Bool)

(assert (=> b!116931 (= c!20692 (not (= (bvand (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!116932 () Bool)

(assert (=> b!116932 (= e!76400 (not call!12517))))

(declare-fun b!116933 () Bool)

(declare-fun e!76399 () Bool)

(assert (=> b!116933 (= e!76407 e!76399)))

(declare-fun res!57228 () Bool)

(assert (=> b!116933 (= res!57228 call!12522)))

(assert (=> b!116933 (=> (not res!57228) (not e!76399))))

(declare-fun bm!12518 () Bool)

(assert (=> bm!12518 (= call!12517 (contains!863 lt!60648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!116934 () Bool)

(assert (=> b!116934 (= e!76398 call!12518)))

(declare-fun b!116935 () Bool)

(assert (=> b!116935 (= e!76399 (= (apply!106 lt!60648 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2589 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun b!116936 () Bool)

(assert (=> b!116936 (= e!76404 (= (apply!106 lt!60648 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2589 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun b!116937 () Bool)

(declare-datatypes ((Unit!3631 0))(
  ( (Unit!3632) )
))
(declare-fun e!76405 () Unit!3631)

(declare-fun lt!60631 () Unit!3631)

(assert (=> b!116937 (= e!76405 lt!60631)))

(declare-fun lt!60634 () ListLongMap!1659)

(assert (=> b!116937 (= lt!60634 (getCurrentListMapNoExtraKeys!127 (_keys!4445 (v!3054 (underlying!417 thiss!992))) (_values!2705 (v!3054 (underlying!417 thiss!992))) (mask!6942 (v!3054 (underlying!417 thiss!992))) (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) (zeroValue!2589 (v!3054 (underlying!417 thiss!992))) (minValue!2589 (v!3054 (underlying!417 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun lt!60640 () (_ BitVec 64))

(assert (=> b!116937 (= lt!60640 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60635 () (_ BitVec 64))

(assert (=> b!116937 (= lt!60635 (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!60646 () Unit!3631)

(declare-fun addStillContains!82 (ListLongMap!1659 (_ BitVec 64) V!3379 (_ BitVec 64)) Unit!3631)

(assert (=> b!116937 (= lt!60646 (addStillContains!82 lt!60634 lt!60640 (zeroValue!2589 (v!3054 (underlying!417 thiss!992))) lt!60635))))

(declare-fun +!160 (ListLongMap!1659 tuple2!2530) ListLongMap!1659)

(assert (=> b!116937 (contains!863 (+!160 lt!60634 (tuple2!2531 lt!60640 (zeroValue!2589 (v!3054 (underlying!417 thiss!992))))) lt!60635)))

(declare-fun lt!60627 () Unit!3631)

(assert (=> b!116937 (= lt!60627 lt!60646)))

(declare-fun lt!60644 () ListLongMap!1659)

(assert (=> b!116937 (= lt!60644 (getCurrentListMapNoExtraKeys!127 (_keys!4445 (v!3054 (underlying!417 thiss!992))) (_values!2705 (v!3054 (underlying!417 thiss!992))) (mask!6942 (v!3054 (underlying!417 thiss!992))) (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) (zeroValue!2589 (v!3054 (underlying!417 thiss!992))) (minValue!2589 (v!3054 (underlying!417 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun lt!60647 () (_ BitVec 64))

(assert (=> b!116937 (= lt!60647 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60633 () (_ BitVec 64))

(assert (=> b!116937 (= lt!60633 (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!60638 () Unit!3631)

(declare-fun addApplyDifferent!82 (ListLongMap!1659 (_ BitVec 64) V!3379 (_ BitVec 64)) Unit!3631)

(assert (=> b!116937 (= lt!60638 (addApplyDifferent!82 lt!60644 lt!60647 (minValue!2589 (v!3054 (underlying!417 thiss!992))) lt!60633))))

(assert (=> b!116937 (= (apply!106 (+!160 lt!60644 (tuple2!2531 lt!60647 (minValue!2589 (v!3054 (underlying!417 thiss!992))))) lt!60633) (apply!106 lt!60644 lt!60633))))

(declare-fun lt!60632 () Unit!3631)

(assert (=> b!116937 (= lt!60632 lt!60638)))

(declare-fun lt!60628 () ListLongMap!1659)

(assert (=> b!116937 (= lt!60628 (getCurrentListMapNoExtraKeys!127 (_keys!4445 (v!3054 (underlying!417 thiss!992))) (_values!2705 (v!3054 (underlying!417 thiss!992))) (mask!6942 (v!3054 (underlying!417 thiss!992))) (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) (zeroValue!2589 (v!3054 (underlying!417 thiss!992))) (minValue!2589 (v!3054 (underlying!417 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun lt!60629 () (_ BitVec 64))

(assert (=> b!116937 (= lt!60629 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60639 () (_ BitVec 64))

(assert (=> b!116937 (= lt!60639 (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!60636 () Unit!3631)

(assert (=> b!116937 (= lt!60636 (addApplyDifferent!82 lt!60628 lt!60629 (zeroValue!2589 (v!3054 (underlying!417 thiss!992))) lt!60639))))

(assert (=> b!116937 (= (apply!106 (+!160 lt!60628 (tuple2!2531 lt!60629 (zeroValue!2589 (v!3054 (underlying!417 thiss!992))))) lt!60639) (apply!106 lt!60628 lt!60639))))

(declare-fun lt!60641 () Unit!3631)

(assert (=> b!116937 (= lt!60641 lt!60636)))

(declare-fun lt!60642 () ListLongMap!1659)

(assert (=> b!116937 (= lt!60642 (getCurrentListMapNoExtraKeys!127 (_keys!4445 (v!3054 (underlying!417 thiss!992))) (_values!2705 (v!3054 (underlying!417 thiss!992))) (mask!6942 (v!3054 (underlying!417 thiss!992))) (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) (zeroValue!2589 (v!3054 (underlying!417 thiss!992))) (minValue!2589 (v!3054 (underlying!417 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun lt!60637 () (_ BitVec 64))

(assert (=> b!116937 (= lt!60637 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!60630 () (_ BitVec 64))

(assert (=> b!116937 (= lt!60630 (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!116937 (= lt!60631 (addApplyDifferent!82 lt!60642 lt!60637 (minValue!2589 (v!3054 (underlying!417 thiss!992))) lt!60630))))

(assert (=> b!116937 (= (apply!106 (+!160 lt!60642 (tuple2!2531 lt!60637 (minValue!2589 (v!3054 (underlying!417 thiss!992))))) lt!60630) (apply!106 lt!60642 lt!60630))))

(declare-fun b!116938 () Bool)

(assert (=> b!116938 (= e!76401 (+!160 call!12519 (tuple2!2531 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2589 (v!3054 (underlying!417 thiss!992))))))))

(declare-fun d!32665 () Bool)

(assert (=> d!32665 e!76396))

(declare-fun res!57226 () Bool)

(assert (=> d!32665 (=> (not res!57226) (not e!76396))))

(assert (=> d!32665 (= res!57226 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2443 (_keys!4445 (v!3054 (underlying!417 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2443 (_keys!4445 (v!3054 (underlying!417 thiss!992))))))))))

(declare-fun lt!60645 () ListLongMap!1659)

(assert (=> d!32665 (= lt!60648 lt!60645)))

(declare-fun lt!60643 () Unit!3631)

(assert (=> d!32665 (= lt!60643 e!76405)))

(declare-fun c!20693 () Bool)

(assert (=> d!32665 (= c!20693 e!76397)))

(declare-fun res!57230 () Bool)

(assert (=> d!32665 (=> (not res!57230) (not e!76397))))

(assert (=> d!32665 (= res!57230 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2443 (_keys!4445 (v!3054 (underlying!417 thiss!992))))))))

(assert (=> d!32665 (= lt!60645 e!76401)))

(declare-fun c!20694 () Bool)

(assert (=> d!32665 (= c!20694 (and (not (= (bvand (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!32665 (validMask!0 (mask!6942 (v!3054 (underlying!417 thiss!992))))))

(assert (=> d!32665 (= (getCurrentListMap!518 (_keys!4445 (v!3054 (underlying!417 thiss!992))) (_values!2705 (v!3054 (underlying!417 thiss!992))) (mask!6942 (v!3054 (underlying!417 thiss!992))) (extraKeys!2511 (v!3054 (underlying!417 thiss!992))) (zeroValue!2589 (v!3054 (underlying!417 thiss!992))) (minValue!2589 (v!3054 (underlying!417 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992)))) lt!60648)))

(declare-fun b!116925 () Bool)

(declare-fun Unit!3633 () Unit!3631)

(assert (=> b!116925 (= e!76405 Unit!3633)))

(declare-fun bm!12519 () Bool)

(assert (=> bm!12519 (= call!12519 (+!160 (ite c!20694 call!12520 (ite c!20691 call!12521 call!12518)) (ite (or c!20694 c!20691) (tuple2!2531 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2589 (v!3054 (underlying!417 thiss!992)))) (tuple2!2531 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2589 (v!3054 (underlying!417 thiss!992)))))))))

(declare-fun b!116939 () Bool)

(assert (=> b!116939 (= e!76408 e!76403)))

(declare-fun res!57224 () Bool)

(assert (=> b!116939 (=> (not res!57224) (not e!76403))))

(assert (=> b!116939 (= res!57224 (contains!863 lt!60648 (select (arr!2182 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!116939 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2443 (_keys!4445 (v!3054 (underlying!417 thiss!992))))))))

(assert (= (and d!32665 c!20694) b!116938))

(assert (= (and d!32665 (not c!20694)) b!116927))

(assert (= (and b!116927 c!20691) b!116922))

(assert (= (and b!116927 (not c!20691)) b!116919))

(assert (= (and b!116919 c!20695) b!116923))

(assert (= (and b!116919 (not c!20695)) b!116934))

(assert (= (or b!116923 b!116934) bm!12514))

(assert (= (or b!116922 bm!12514) bm!12515))

(assert (= (or b!116922 b!116923) bm!12513))

(assert (= (or b!116938 bm!12515) bm!12517))

(assert (= (or b!116938 bm!12513) bm!12519))

(assert (= (and d!32665 res!57230) b!116929))

(assert (= (and d!32665 c!20693) b!116937))

(assert (= (and d!32665 (not c!20693)) b!116925))

(assert (= (and d!32665 res!57226) b!116926))

(assert (= (and b!116926 res!57223) b!116930))

(assert (= (and b!116926 (not res!57225)) b!116939))

(assert (= (and b!116939 res!57224) b!116928))

(assert (= (and b!116926 res!57229) b!116920))

(assert (= (and b!116920 c!20690) b!116921))

(assert (= (and b!116920 (not c!20690)) b!116932))

(assert (= (and b!116921 res!57231) b!116936))

(assert (= (or b!116921 b!116932) bm!12518))

(assert (= (and b!116920 res!57227) b!116931))

(assert (= (and b!116931 c!20692) b!116933))

(assert (= (and b!116931 (not c!20692)) b!116924))

(assert (= (and b!116933 res!57228) b!116935))

(assert (= (or b!116933 b!116924) bm!12516))

(declare-fun b_lambda!5209 () Bool)

(assert (=> (not b_lambda!5209) (not b!116928)))

(declare-fun t!5981 () Bool)

(declare-fun tb!2245 () Bool)

(assert (=> (and b!116815 (= (defaultEntry!2722 (v!3054 (underlying!417 thiss!992))) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992)))) t!5981) tb!2245))

(declare-fun result!3735 () Bool)

(assert (=> tb!2245 (= result!3735 tp_is_empty!2799)))

(assert (=> b!116928 t!5981))

(declare-fun b_and!7301 () Bool)

(assert (= b_and!7293 (and (=> t!5981 result!3735) b_and!7301)))

(declare-fun t!5983 () Bool)

(declare-fun tb!2247 () Bool)

(assert (=> (and b!116818 (= (defaultEntry!2722 newMap!16) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992)))) t!5983) tb!2247))

(declare-fun result!3739 () Bool)

(assert (= result!3739 result!3735))

(assert (=> b!116928 t!5983))

(declare-fun b_and!7303 () Bool)

(assert (= b_and!7295 (and (=> t!5983 result!3739) b_and!7303)))

(declare-fun m!132979 () Bool)

(assert (=> b!116930 m!132979))

(assert (=> b!116930 m!132979))

(declare-fun m!132981 () Bool)

(assert (=> b!116930 m!132981))

(declare-fun m!132983 () Bool)

(assert (=> bm!12518 m!132983))

(assert (=> b!116928 m!132979))

(assert (=> b!116928 m!132979))

(declare-fun m!132985 () Bool)

(assert (=> b!116928 m!132985))

(declare-fun m!132987 () Bool)

(assert (=> b!116928 m!132987))

(declare-fun m!132989 () Bool)

(assert (=> b!116928 m!132989))

(assert (=> b!116928 m!132987))

(declare-fun m!132991 () Bool)

(assert (=> b!116928 m!132991))

(assert (=> b!116928 m!132989))

(declare-fun m!132993 () Bool)

(assert (=> b!116937 m!132993))

(declare-fun m!132995 () Bool)

(assert (=> b!116937 m!132995))

(declare-fun m!132997 () Bool)

(assert (=> b!116937 m!132997))

(declare-fun m!132999 () Bool)

(assert (=> b!116937 m!132999))

(declare-fun m!133001 () Bool)

(assert (=> b!116937 m!133001))

(declare-fun m!133003 () Bool)

(assert (=> b!116937 m!133003))

(declare-fun m!133005 () Bool)

(assert (=> b!116937 m!133005))

(declare-fun m!133007 () Bool)

(assert (=> b!116937 m!133007))

(declare-fun m!133009 () Bool)

(assert (=> b!116937 m!133009))

(declare-fun m!133011 () Bool)

(assert (=> b!116937 m!133011))

(declare-fun m!133013 () Bool)

(assert (=> b!116937 m!133013))

(declare-fun m!133015 () Bool)

(assert (=> b!116937 m!133015))

(assert (=> b!116937 m!132979))

(declare-fun m!133017 () Bool)

(assert (=> b!116937 m!133017))

(declare-fun m!133019 () Bool)

(assert (=> b!116937 m!133019))

(assert (=> b!116937 m!132999))

(assert (=> b!116937 m!133011))

(declare-fun m!133021 () Bool)

(assert (=> b!116937 m!133021))

(assert (=> b!116937 m!133003))

(assert (=> b!116937 m!132995))

(declare-fun m!133023 () Bool)

(assert (=> b!116937 m!133023))

(assert (=> b!116939 m!132979))

(assert (=> b!116939 m!132979))

(declare-fun m!133025 () Bool)

(assert (=> b!116939 m!133025))

(assert (=> b!116929 m!132979))

(assert (=> b!116929 m!132979))

(assert (=> b!116929 m!132981))

(declare-fun m!133027 () Bool)

(assert (=> bm!12519 m!133027))

(declare-fun m!133029 () Bool)

(assert (=> b!116938 m!133029))

(declare-fun m!133031 () Bool)

(assert (=> b!116936 m!133031))

(declare-fun m!133033 () Bool)

(assert (=> b!116935 m!133033))

(assert (=> bm!12517 m!133009))

(declare-fun m!133035 () Bool)

(assert (=> bm!12516 m!133035))

(declare-fun m!133037 () Bool)

(assert (=> d!32665 m!133037))

(assert (=> b!116817 d!32665))

(declare-fun d!32667 () Bool)

(assert (=> d!32667 (= (map!1357 newMap!16) (getCurrentListMap!518 (_keys!4445 newMap!16) (_values!2705 newMap!16) (mask!6942 newMap!16) (extraKeys!2511 newMap!16) (zeroValue!2589 newMap!16) (minValue!2589 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2722 newMap!16)))))

(declare-fun bs!4745 () Bool)

(assert (= bs!4745 d!32667))

(declare-fun m!133039 () Bool)

(assert (=> bs!4745 m!133039))

(assert (=> b!116817 d!32667))

(declare-fun d!32669 () Bool)

(declare-fun res!57238 () Bool)

(declare-fun e!76411 () Bool)

(assert (=> d!32669 (=> (not res!57238) (not e!76411))))

(declare-fun simpleValid!81 (LongMapFixedSize!1020) Bool)

(assert (=> d!32669 (= res!57238 (simpleValid!81 (v!3054 (underlying!417 thiss!992))))))

(assert (=> d!32669 (= (valid!478 (v!3054 (underlying!417 thiss!992))) e!76411)))

(declare-fun b!116948 () Bool)

(declare-fun res!57239 () Bool)

(assert (=> b!116948 (=> (not res!57239) (not e!76411))))

(declare-fun arrayCountValidKeys!0 (array!4604 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!116948 (= res!57239 (= (arrayCountValidKeys!0 (_keys!4445 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000000 (size!2443 (_keys!4445 (v!3054 (underlying!417 thiss!992))))) (_size!559 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun b!116949 () Bool)

(declare-fun res!57240 () Bool)

(assert (=> b!116949 (=> (not res!57240) (not e!76411))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4604 (_ BitVec 32)) Bool)

(assert (=> b!116949 (= res!57240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4445 (v!3054 (underlying!417 thiss!992))) (mask!6942 (v!3054 (underlying!417 thiss!992)))))))

(declare-fun b!116950 () Bool)

(declare-datatypes ((List!1702 0))(
  ( (Nil!1699) (Cons!1698 (h!2298 (_ BitVec 64)) (t!5984 List!1702)) )
))
(declare-fun arrayNoDuplicates!0 (array!4604 (_ BitVec 32) List!1702) Bool)

(assert (=> b!116950 (= e!76411 (arrayNoDuplicates!0 (_keys!4445 (v!3054 (underlying!417 thiss!992))) #b00000000000000000000000000000000 Nil!1699))))

(assert (= (and d!32669 res!57238) b!116948))

(assert (= (and b!116948 res!57239) b!116949))

(assert (= (and b!116949 res!57240) b!116950))

(declare-fun m!133041 () Bool)

(assert (=> d!32669 m!133041))

(declare-fun m!133043 () Bool)

(assert (=> b!116948 m!133043))

(declare-fun m!133045 () Bool)

(assert (=> b!116949 m!133045))

(declare-fun m!133047 () Bool)

(assert (=> b!116950 m!133047))

(assert (=> b!116819 d!32669))

(declare-fun d!32671 () Bool)

(assert (=> d!32671 (= (array_inv!1327 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) (bvsge (size!2443 (_keys!4445 (v!3054 (underlying!417 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!116815 d!32671))

(declare-fun d!32673 () Bool)

(assert (=> d!32673 (= (array_inv!1328 (_values!2705 (v!3054 (underlying!417 thiss!992)))) (bvsge (size!2444 (_values!2705 (v!3054 (underlying!417 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!116815 d!32673))

(declare-fun d!32675 () Bool)

(declare-fun res!57241 () Bool)

(declare-fun e!76412 () Bool)

(assert (=> d!32675 (=> (not res!57241) (not e!76412))))

(assert (=> d!32675 (= res!57241 (simpleValid!81 newMap!16))))

(assert (=> d!32675 (= (valid!478 newMap!16) e!76412)))

(declare-fun b!116951 () Bool)

(declare-fun res!57242 () Bool)

(assert (=> b!116951 (=> (not res!57242) (not e!76412))))

(assert (=> b!116951 (= res!57242 (= (arrayCountValidKeys!0 (_keys!4445 newMap!16) #b00000000000000000000000000000000 (size!2443 (_keys!4445 newMap!16))) (_size!559 newMap!16)))))

(declare-fun b!116952 () Bool)

(declare-fun res!57243 () Bool)

(assert (=> b!116952 (=> (not res!57243) (not e!76412))))

(assert (=> b!116952 (= res!57243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4445 newMap!16) (mask!6942 newMap!16)))))

(declare-fun b!116953 () Bool)

(assert (=> b!116953 (= e!76412 (arrayNoDuplicates!0 (_keys!4445 newMap!16) #b00000000000000000000000000000000 Nil!1699))))

(assert (= (and d!32675 res!57241) b!116951))

(assert (= (and b!116951 res!57242) b!116952))

(assert (= (and b!116952 res!57243) b!116953))

(declare-fun m!133049 () Bool)

(assert (=> d!32675 m!133049))

(declare-fun m!133051 () Bool)

(assert (=> b!116951 m!133051))

(declare-fun m!133053 () Bool)

(assert (=> b!116952 m!133053))

(declare-fun m!133055 () Bool)

(assert (=> b!116953 m!133055))

(assert (=> b!116828 d!32675))

(declare-fun d!32677 () Bool)

(assert (=> d!32677 (= (array_inv!1327 (_keys!4445 newMap!16)) (bvsge (size!2443 (_keys!4445 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!116818 d!32677))

(declare-fun d!32679 () Bool)

(assert (=> d!32679 (= (array_inv!1328 (_values!2705 newMap!16)) (bvsge (size!2444 (_values!2705 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!116818 d!32679))

(declare-fun b!116960 () Bool)

(declare-fun e!76418 () Bool)

(assert (=> b!116960 (= e!76418 tp_is_empty!2799)))

(declare-fun mapIsEmpty!4349 () Bool)

(declare-fun mapRes!4349 () Bool)

(assert (=> mapIsEmpty!4349 mapRes!4349))

(declare-fun mapNonEmpty!4349 () Bool)

(declare-fun tp!10685 () Bool)

(assert (=> mapNonEmpty!4349 (= mapRes!4349 (and tp!10685 e!76418))))

(declare-fun mapKey!4349 () (_ BitVec 32))

(declare-fun mapValue!4349 () ValueCell!1056)

(declare-fun mapRest!4349 () (Array (_ BitVec 32) ValueCell!1056))

(assert (=> mapNonEmpty!4349 (= mapRest!4340 (store mapRest!4349 mapKey!4349 mapValue!4349))))

(declare-fun b!116961 () Bool)

(declare-fun e!76417 () Bool)

(assert (=> b!116961 (= e!76417 tp_is_empty!2799)))

(declare-fun condMapEmpty!4349 () Bool)

(declare-fun mapDefault!4349 () ValueCell!1056)

(assert (=> mapNonEmpty!4340 (= condMapEmpty!4349 (= mapRest!4340 ((as const (Array (_ BitVec 32) ValueCell!1056)) mapDefault!4349)))))

(assert (=> mapNonEmpty!4340 (= tp!10669 (and e!76417 mapRes!4349))))

(assert (= (and mapNonEmpty!4340 condMapEmpty!4349) mapIsEmpty!4349))

(assert (= (and mapNonEmpty!4340 (not condMapEmpty!4349)) mapNonEmpty!4349))

(assert (= (and mapNonEmpty!4349 ((_ is ValueCellFull!1056) mapValue!4349)) b!116960))

(assert (= (and mapNonEmpty!4340 ((_ is ValueCellFull!1056) mapDefault!4349)) b!116961))

(declare-fun m!133057 () Bool)

(assert (=> mapNonEmpty!4349 m!133057))

(declare-fun b!116962 () Bool)

(declare-fun e!76420 () Bool)

(assert (=> b!116962 (= e!76420 tp_is_empty!2799)))

(declare-fun mapIsEmpty!4350 () Bool)

(declare-fun mapRes!4350 () Bool)

(assert (=> mapIsEmpty!4350 mapRes!4350))

(declare-fun mapNonEmpty!4350 () Bool)

(declare-fun tp!10686 () Bool)

(assert (=> mapNonEmpty!4350 (= mapRes!4350 (and tp!10686 e!76420))))

(declare-fun mapRest!4350 () (Array (_ BitVec 32) ValueCell!1056))

(declare-fun mapKey!4350 () (_ BitVec 32))

(declare-fun mapValue!4350 () ValueCell!1056)

(assert (=> mapNonEmpty!4350 (= mapRest!4339 (store mapRest!4350 mapKey!4350 mapValue!4350))))

(declare-fun b!116963 () Bool)

(declare-fun e!76419 () Bool)

(assert (=> b!116963 (= e!76419 tp_is_empty!2799)))

(declare-fun condMapEmpty!4350 () Bool)

(declare-fun mapDefault!4350 () ValueCell!1056)

(assert (=> mapNonEmpty!4339 (= condMapEmpty!4350 (= mapRest!4339 ((as const (Array (_ BitVec 32) ValueCell!1056)) mapDefault!4350)))))

(assert (=> mapNonEmpty!4339 (= tp!10667 (and e!76419 mapRes!4350))))

(assert (= (and mapNonEmpty!4339 condMapEmpty!4350) mapIsEmpty!4350))

(assert (= (and mapNonEmpty!4339 (not condMapEmpty!4350)) mapNonEmpty!4350))

(assert (= (and mapNonEmpty!4350 ((_ is ValueCellFull!1056) mapValue!4350)) b!116962))

(assert (= (and mapNonEmpty!4339 ((_ is ValueCellFull!1056) mapDefault!4350)) b!116963))

(declare-fun m!133059 () Bool)

(assert (=> mapNonEmpty!4350 m!133059))

(declare-fun b_lambda!5211 () Bool)

(assert (= b_lambda!5209 (or (and b!116815 b_free!2765) (and b!116818 b_free!2767 (= (defaultEntry!2722 newMap!16) (defaultEntry!2722 (v!3054 (underlying!417 thiss!992))))) b_lambda!5211)))

(check-sat (not bm!12516) (not b!116937) (not mapNonEmpty!4349) (not b!116938) (not bm!12517) (not d!32665) (not b!116936) (not b!116952) (not d!32663) tp_is_empty!2799 b_and!7303 (not b_lambda!5211) (not b!116935) (not b!116930) (not d!32669) (not b!116929) (not mapNonEmpty!4350) (not b!116949) (not b!116939) (not d!32675) (not b!116950) (not bm!12519) (not d!32667) (not b!116951) (not bm!12518) b_and!7301 (not b_next!2767) (not b_next!2765) (not b!116948) (not b!116953) (not b!116928))
(check-sat b_and!7301 b_and!7303 (not b_next!2765) (not b_next!2767))
