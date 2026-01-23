; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414182 () Bool)

(assert start!414182)

(declare-fun b!4309988 () Bool)

(declare-fun b_free!128595 () Bool)

(declare-fun b_next!129299 () Bool)

(assert (=> b!4309988 (= b_free!128595 (not b_next!129299))))

(declare-fun tp!1324440 () Bool)

(declare-fun b_and!340021 () Bool)

(assert (=> b!4309988 (= tp!1324440 b_and!340021)))

(declare-fun b!4309986 () Bool)

(declare-fun b_free!128597 () Bool)

(declare-fun b_next!129301 () Bool)

(assert (=> b!4309986 (= b_free!128597 (not b_next!129301))))

(declare-fun tp!1324437 () Bool)

(declare-fun b_and!340023 () Bool)

(assert (=> b!4309986 (= tp!1324437 b_and!340023)))

(declare-fun b!4310002 () Bool)

(declare-fun e!2680411 () Bool)

(declare-fun e!2680414 () Bool)

(assert (=> b!4310002 (= e!2680411 e!2680414)))

(declare-fun b!4310003 () Bool)

(declare-fun e!2680413 () Bool)

(assert (=> b!4310003 (= e!2680413 true)))

(declare-fun b!4309980 () Bool)

(declare-fun e!2680415 () Bool)

(assert (=> b!4309980 e!2680415))

(declare-fun b!4310004 () Bool)

(assert (=> b!4310004 (= e!2680414 e!2680413)))

(declare-fun b!4310005 () Bool)

(declare-fun e!2680412 () Bool)

(declare-datatypes ((V!9596 0))(
  ( (V!9597 (val!15773 Int)) )
))
(declare-datatypes ((K!9394 0))(
  ( (K!9395 (val!15774 Int)) )
))
(declare-datatypes ((tuple2!46624 0))(
  ( (tuple2!46625 (_1!26592 K!9394) (_2!26592 V!9596)) )
))
(declare-datatypes ((List!48315 0))(
  ( (Nil!48191) (Cons!48191 (h!53626 tuple2!46624) (t!355120 List!48315)) )
))
(declare-datatypes ((array!16796 0))(
  ( (array!16797 (arr!7503 (Array (_ BitVec 32) (_ BitVec 64))) (size!35542 (_ BitVec 32))) )
))
(declare-datatypes ((array!16798 0))(
  ( (array!16799 (arr!7504 (Array (_ BitVec 32) List!48315)) (size!35543 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9318 0))(
  ( (LongMapFixedSize!9319 (defaultEntry!5044 Int) (mask!13217 (_ BitVec 32)) (extraKeys!4908 (_ BitVec 32)) (zeroValue!4918 List!48315) (minValue!4918 List!48315) (_size!9361 (_ BitVec 32)) (_keys!4959 array!16796) (_values!4940 array!16798) (_vacant!4720 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18445 0))(
  ( (Cell!18446 (v!42326 LongMapFixedSize!9318)) )
))
(declare-datatypes ((MutLongMap!4659 0))(
  ( (LongMap!4659 (underlying!9547 Cell!18445)) (MutLongMapExt!4658 (__x!30002 Int)) )
))
(declare-fun lt!1530617 () MutLongMap!4659)

(get-info :version)

(assert (=> b!4310005 (= e!2680412 (and e!2680411 ((_ is LongMap!4659) lt!1530617)))))

(declare-datatypes ((Hashable!4575 0))(
  ( (HashableExt!4574 (__x!30003 Int)) )
))
(declare-datatypes ((Cell!18447 0))(
  ( (Cell!18448 (v!42327 MutLongMap!4659)) )
))
(declare-datatypes ((MutableMap!4565 0))(
  ( (MutableMapExt!4564 (__x!30004 Int)) (HashMap!4565 (underlying!9548 Cell!18447) (hashF!6695 Hashable!4575) (_size!9362 (_ BitVec 32)) (defaultValue!4736 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4565)

(assert (=> b!4310005 (= lt!1530617 (v!42327 (underlying!9548 thiss!42308)))))

(declare-fun b!4310006 () Bool)

(assert (=> b!4310006 (= e!2680415 e!2680412)))

(assert (= b!4310004 b!4310003))

(assert (= b!4310002 b!4310004))

(assert (= (and b!4310005 ((_ is LongMap!4659) (v!42327 (underlying!9548 thiss!42308)))) b!4310002))

(assert (= b!4310006 b!4310005))

(assert (= (and b!4309980 ((_ is HashMap!4565) thiss!42308)) b!4310006))

(declare-fun lambda!132904 () Int)

(declare-fun order!25111 () Int)

(declare-fun order!25109 () Int)

(declare-fun dynLambda!20433 (Int Int) Int)

(declare-fun dynLambda!20434 (Int Int) Int)

(assert (=> b!4310003 (< (dynLambda!20433 order!25109 (defaultEntry!5044 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) (dynLambda!20434 order!25111 lambda!132904))))

(declare-fun order!25113 () Int)

(declare-fun dynLambda!20435 (Int Int) Int)

(assert (=> b!4310006 (< (dynLambda!20435 order!25113 (defaultValue!4736 thiss!42308)) (dynLambda!20434 order!25111 lambda!132904))))

(declare-fun res!1766429 () Bool)

(declare-fun e!2680394 () Bool)

(assert (=> start!414182 (=> (not res!1766429) (not e!2680394))))

(assert (=> start!414182 (= res!1766429 ((_ is HashMap!4565) thiss!42308))))

(assert (=> start!414182 e!2680394))

(declare-fun e!2680399 () Bool)

(assert (=> start!414182 e!2680399))

(declare-fun tp_is_empty!23741 () Bool)

(assert (=> start!414182 tp_is_empty!23741))

(declare-fun tp_is_empty!23743 () Bool)

(assert (=> start!414182 tp_is_empty!23743))

(declare-fun b!4309979 () Bool)

(declare-fun e!2680395 () Bool)

(declare-fun e!2680393 () Bool)

(assert (=> b!4309979 (= e!2680395 e!2680393)))

(declare-fun res!1766426 () Bool)

(assert (=> b!4309979 (=> (not res!1766426) (not e!2680393))))

(declare-fun lt!1530610 () List!48315)

(declare-fun v!9179 () V!9596)

(declare-fun lt!1530611 () (_ BitVec 64))

(declare-fun key!2048 () K!9394)

(declare-datatypes ((tuple2!46626 0))(
  ( (tuple2!46627 (_1!26593 Bool) (_2!26593 MutLongMap!4659)) )
))
(declare-fun update!433 (MutLongMap!4659 (_ BitVec 64) List!48315) tuple2!46626)

(declare-fun removePairForKey!210 (List!48315 K!9394) List!48315)

(assert (=> b!4309979 (= res!1766426 (_1!26593 (update!433 (v!42327 (underlying!9548 thiss!42308)) lt!1530611 (Cons!48191 (tuple2!46625 key!2048 v!9179) (removePairForKey!210 lt!1530610 key!2048)))))))

(declare-fun apply!11011 (MutLongMap!4659 (_ BitVec 64)) List!48315)

(assert (=> b!4309979 (= lt!1530610 (apply!11011 (v!42327 (underlying!9548 thiss!42308)) lt!1530611))))

(declare-fun hash!1003 (Hashable!4575 K!9394) (_ BitVec 64))

(assert (=> b!4309979 (= lt!1530611 (hash!1003 (hashF!6695 thiss!42308) key!2048))))

(declare-fun res!1766428 () Bool)

(assert (=> b!4309980 (=> (not res!1766428) (not e!2680393))))

(declare-datatypes ((tuple2!46628 0))(
  ( (tuple2!46629 (_1!26594 (_ BitVec 64)) (_2!26594 List!48315)) )
))
(declare-datatypes ((List!48316 0))(
  ( (Nil!48192) (Cons!48192 (h!53627 tuple2!46628) (t!355121 List!48316)) )
))
(declare-datatypes ((ListLongMap!1011 0))(
  ( (ListLongMap!1012 (toList!2399 List!48316)) )
))
(declare-fun lt!1530613 () ListLongMap!1011)

(declare-fun forall!8729 (List!48316 Int) Bool)

(assert (=> b!4309980 (= res!1766428 (forall!8729 (toList!2399 lt!1530613) lambda!132904))))

(declare-fun b!4309981 () Bool)

(declare-fun e!2680397 () Bool)

(declare-fun e!2680398 () Bool)

(assert (=> b!4309981 (= e!2680397 e!2680398)))

(declare-fun b!4309982 () Bool)

(declare-fun contains!10165 (List!48316 tuple2!46628) Bool)

(assert (=> b!4309982 (= e!2680393 (not (contains!10165 (toList!2399 lt!1530613) (tuple2!46629 lt!1530611 lt!1530610))))))

(declare-fun b!4309983 () Bool)

(declare-fun e!2680392 () Bool)

(assert (=> b!4309983 (= e!2680392 e!2680397)))

(declare-fun b!4309984 () Bool)

(assert (=> b!4309984 (= e!2680394 e!2680395)))

(declare-fun res!1766427 () Bool)

(assert (=> b!4309984 (=> (not res!1766427) (not e!2680395))))

(declare-fun contains!10166 (MutableMap!4565 K!9394) Bool)

(assert (=> b!4309984 (= res!1766427 (contains!10166 thiss!42308 key!2048))))

(declare-fun map!10180 (MutLongMap!4659) ListLongMap!1011)

(assert (=> b!4309984 (= lt!1530613 (map!10180 (v!42327 (underlying!9548 thiss!42308))))))

(declare-datatypes ((ListMap!1681 0))(
  ( (ListMap!1682 (toList!2400 List!48315)) )
))
(declare-fun lt!1530612 () ListMap!1681)

(declare-fun map!10181 (MutableMap!4565) ListMap!1681)

(assert (=> b!4309984 (= lt!1530612 (map!10181 thiss!42308))))

(declare-fun b!4309985 () Bool)

(declare-fun res!1766425 () Bool)

(assert (=> b!4309985 (=> (not res!1766425) (not e!2680394))))

(declare-fun valid!3648 (MutableMap!4565) Bool)

(assert (=> b!4309985 (= res!1766425 (valid!3648 thiss!42308))))

(declare-fun e!2680400 () Bool)

(assert (=> b!4309986 (= e!2680399 (and e!2680400 tp!1324437))))

(declare-fun b!4309987 () Bool)

(declare-fun e!2680391 () Bool)

(declare-fun tp!1324441 () Bool)

(declare-fun mapRes!20807 () Bool)

(assert (=> b!4309987 (= e!2680391 (and tp!1324441 mapRes!20807))))

(declare-fun condMapEmpty!20807 () Bool)

(declare-fun mapDefault!20807 () List!48315)

(assert (=> b!4309987 (= condMapEmpty!20807 (= (arr!7504 (_values!4940 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48315)) mapDefault!20807)))))

(declare-fun mapIsEmpty!20807 () Bool)

(assert (=> mapIsEmpty!20807 mapRes!20807))

(declare-fun tp!1324439 () Bool)

(declare-fun tp!1324438 () Bool)

(declare-fun array_inv!5383 (array!16796) Bool)

(declare-fun array_inv!5384 (array!16798) Bool)

(assert (=> b!4309988 (= e!2680398 (and tp!1324440 tp!1324439 tp!1324438 (array_inv!5383 (_keys!4959 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) (array_inv!5384 (_values!4940 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) e!2680391))))

(declare-fun mapNonEmpty!20807 () Bool)

(declare-fun tp!1324442 () Bool)

(declare-fun tp!1324443 () Bool)

(assert (=> mapNonEmpty!20807 (= mapRes!20807 (and tp!1324442 tp!1324443))))

(declare-fun mapKey!20807 () (_ BitVec 32))

(declare-fun mapRest!20807 () (Array (_ BitVec 32) List!48315))

(declare-fun mapValue!20807 () List!48315)

(assert (=> mapNonEmpty!20807 (= (arr!7504 (_values!4940 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) (store mapRest!20807 mapKey!20807 mapValue!20807))))

(declare-fun b!4309989 () Bool)

(declare-fun lt!1530614 () MutLongMap!4659)

(assert (=> b!4309989 (= e!2680400 (and e!2680392 ((_ is LongMap!4659) lt!1530614)))))

(assert (=> b!4309989 (= lt!1530614 (v!42327 (underlying!9548 thiss!42308)))))

(assert (= (and start!414182 res!1766429) b!4309985))

(assert (= (and b!4309985 res!1766425) b!4309984))

(assert (= (and b!4309984 res!1766427) b!4309979))

(assert (= (and b!4309979 res!1766426) b!4309980))

(assert (= (and b!4309980 res!1766428) b!4309982))

(assert (= (and b!4309987 condMapEmpty!20807) mapIsEmpty!20807))

(assert (= (and b!4309987 (not condMapEmpty!20807)) mapNonEmpty!20807))

(assert (= b!4309988 b!4309987))

(assert (= b!4309981 b!4309988))

(assert (= b!4309983 b!4309981))

(assert (= (and b!4309989 ((_ is LongMap!4659) (v!42327 (underlying!9548 thiss!42308)))) b!4309983))

(assert (= b!4309986 b!4309989))

(assert (= (and start!414182 ((_ is HashMap!4565) thiss!42308)) b!4309986))

(declare-fun m!4902945 () Bool)

(assert (=> b!4309985 m!4902945))

(declare-fun m!4902947 () Bool)

(assert (=> b!4309979 m!4902947))

(declare-fun m!4902949 () Bool)

(assert (=> b!4309979 m!4902949))

(declare-fun m!4902951 () Bool)

(assert (=> b!4309979 m!4902951))

(declare-fun m!4902953 () Bool)

(assert (=> b!4309979 m!4902953))

(declare-fun m!4902955 () Bool)

(assert (=> b!4309988 m!4902955))

(declare-fun m!4902957 () Bool)

(assert (=> b!4309988 m!4902957))

(declare-fun m!4902959 () Bool)

(assert (=> b!4309984 m!4902959))

(declare-fun m!4902961 () Bool)

(assert (=> b!4309984 m!4902961))

(declare-fun m!4902963 () Bool)

(assert (=> b!4309984 m!4902963))

(declare-fun m!4902965 () Bool)

(assert (=> b!4309980 m!4902965))

(declare-fun m!4902967 () Bool)

(assert (=> mapNonEmpty!20807 m!4902967))

(declare-fun m!4902969 () Bool)

(assert (=> b!4309982 m!4902969))

(check-sat b_and!340023 (not b_next!129299) (not b!4309982) (not b!4309987) tp_is_empty!23743 (not b!4309988) (not b!4309979) b_and!340021 (not mapNonEmpty!20807) (not b_next!129301) (not b!4309980) tp_is_empty!23741 (not b!4309984) (not b!4309985))
(check-sat b_and!340021 b_and!340023 (not b_next!129301) (not b_next!129299))
(get-model)

(declare-fun d!1267998 () Bool)

(assert (=> d!1267998 (= (array_inv!5383 (_keys!4959 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) (bvsge (size!35542 (_keys!4959 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4309988 d!1267998))

(declare-fun d!1268000 () Bool)

(assert (=> d!1268000 (= (array_inv!5384 (_values!4940 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) (bvsge (size!35543 (_values!4940 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4309988 d!1268000))

(declare-fun b!4310025 () Bool)

(declare-fun e!2680428 () tuple2!46626)

(assert (=> b!4310025 (= e!2680428 (tuple2!46627 true (v!42327 (underlying!9548 thiss!42308))))))

(declare-fun b!4310026 () Bool)

(declare-fun e!2680430 () Bool)

(declare-fun call!297904 () ListLongMap!1011)

(declare-fun call!297903 () ListLongMap!1011)

(assert (=> b!4310026 (= e!2680430 (= call!297904 call!297903))))

(declare-fun b!4310027 () Bool)

(declare-fun e!2680429 () Bool)

(declare-fun +!267 (ListLongMap!1011 tuple2!46628) ListLongMap!1011)

(assert (=> b!4310027 (= e!2680429 (= call!297904 (+!267 call!297903 (tuple2!46629 lt!1530611 (Cons!48191 (tuple2!46625 key!2048 v!9179) (removePairForKey!210 lt!1530610 key!2048))))))))

(declare-fun bm!297898 () Bool)

(declare-fun lt!1530626 () tuple2!46626)

(assert (=> bm!297898 (= call!297904 (map!10180 (_2!26593 lt!1530626)))))

(declare-fun b!4310028 () Bool)

(declare-fun lt!1530627 () tuple2!46626)

(assert (=> b!4310028 (= e!2680428 (tuple2!46627 (_1!26593 lt!1530627) (_2!26593 lt!1530627)))))

(declare-fun repack!54 (MutLongMap!4659) tuple2!46626)

(assert (=> b!4310028 (= lt!1530627 (repack!54 (v!42327 (underlying!9548 thiss!42308))))))

(declare-fun d!1268002 () Bool)

(declare-fun e!2680426 () Bool)

(assert (=> d!1268002 e!2680426))

(declare-fun res!1766436 () Bool)

(assert (=> d!1268002 (=> (not res!1766436) (not e!2680426))))

(assert (=> d!1268002 (= res!1766436 ((_ is LongMap!4659) (_2!26593 lt!1530626)))))

(declare-fun e!2680427 () tuple2!46626)

(assert (=> d!1268002 (= lt!1530626 e!2680427)))

(declare-fun c!732796 () Bool)

(declare-fun lt!1530629 () tuple2!46626)

(assert (=> d!1268002 (= c!732796 (_1!26593 lt!1530629))))

(assert (=> d!1268002 (= lt!1530629 e!2680428)))

(declare-fun c!732797 () Bool)

(declare-fun imbalanced!50 (MutLongMap!4659) Bool)

(assert (=> d!1268002 (= c!732797 (imbalanced!50 (v!42327 (underlying!9548 thiss!42308))))))

(declare-fun valid!3649 (MutLongMap!4659) Bool)

(assert (=> d!1268002 (valid!3649 (v!42327 (underlying!9548 thiss!42308)))))

(assert (=> d!1268002 (= (update!433 (v!42327 (underlying!9548 thiss!42308)) lt!1530611 (Cons!48191 (tuple2!46625 key!2048 v!9179) (removePairForKey!210 lt!1530610 key!2048))) lt!1530626)))

(declare-fun b!4310029 () Bool)

(declare-datatypes ((tuple2!46630 0))(
  ( (tuple2!46631 (_1!26595 Bool) (_2!26595 LongMapFixedSize!9318)) )
))
(declare-fun lt!1530628 () tuple2!46630)

(assert (=> b!4310029 (= e!2680427 (tuple2!46627 (_1!26595 lt!1530628) (LongMap!4659 (Cell!18446 (_2!26595 lt!1530628)))))))

(declare-fun update!434 (LongMapFixedSize!9318 (_ BitVec 64) List!48315) tuple2!46630)

(assert (=> b!4310029 (= lt!1530628 (update!434 (v!42326 (underlying!9547 (_2!26593 lt!1530629))) lt!1530611 (Cons!48191 (tuple2!46625 key!2048 v!9179) (removePairForKey!210 lt!1530610 key!2048))))))

(declare-fun bm!297899 () Bool)

(assert (=> bm!297899 (= call!297903 (map!10180 (v!42327 (underlying!9548 thiss!42308))))))

(declare-fun b!4310030 () Bool)

(assert (=> b!4310030 (= e!2680427 (tuple2!46627 false (_2!26593 lt!1530629)))))

(declare-fun b!4310031 () Bool)

(declare-fun res!1766437 () Bool)

(assert (=> b!4310031 (=> (not res!1766437) (not e!2680426))))

(assert (=> b!4310031 (= res!1766437 (valid!3649 (_2!26593 lt!1530626)))))

(declare-fun b!4310032 () Bool)

(assert (=> b!4310032 (= e!2680430 e!2680429)))

(declare-fun res!1766438 () Bool)

(declare-fun contains!10167 (ListLongMap!1011 (_ BitVec 64)) Bool)

(assert (=> b!4310032 (= res!1766438 (contains!10167 call!297904 lt!1530611))))

(assert (=> b!4310032 (=> (not res!1766438) (not e!2680429))))

(declare-fun b!4310033 () Bool)

(assert (=> b!4310033 (= e!2680426 e!2680430)))

(declare-fun c!732798 () Bool)

(assert (=> b!4310033 (= c!732798 (_1!26593 lt!1530626))))

(assert (= (and d!1268002 c!732797) b!4310028))

(assert (= (and d!1268002 (not c!732797)) b!4310025))

(assert (= (and d!1268002 c!732796) b!4310029))

(assert (= (and d!1268002 (not c!732796)) b!4310030))

(assert (= (and d!1268002 res!1766436) b!4310031))

(assert (= (and b!4310031 res!1766437) b!4310033))

(assert (= (and b!4310033 c!732798) b!4310032))

(assert (= (and b!4310033 (not c!732798)) b!4310026))

(assert (= (and b!4310032 res!1766438) b!4310027))

(assert (= (or b!4310032 b!4310027 b!4310026) bm!297898))

(assert (= (or b!4310027 b!4310026) bm!297899))

(declare-fun m!4902971 () Bool)

(assert (=> b!4310031 m!4902971))

(assert (=> bm!297899 m!4902961))

(declare-fun m!4902973 () Bool)

(assert (=> d!1268002 m!4902973))

(declare-fun m!4902975 () Bool)

(assert (=> d!1268002 m!4902975))

(declare-fun m!4902977 () Bool)

(assert (=> b!4310028 m!4902977))

(declare-fun m!4902979 () Bool)

(assert (=> b!4310032 m!4902979))

(declare-fun m!4902981 () Bool)

(assert (=> bm!297898 m!4902981))

(declare-fun m!4902983 () Bool)

(assert (=> b!4310029 m!4902983))

(declare-fun m!4902985 () Bool)

(assert (=> b!4310027 m!4902985))

(assert (=> b!4309979 d!1268002))

(declare-fun b!4310042 () Bool)

(declare-fun e!2680435 () List!48315)

(assert (=> b!4310042 (= e!2680435 (t!355120 lt!1530610))))

(declare-fun b!4310043 () Bool)

(declare-fun e!2680436 () List!48315)

(assert (=> b!4310043 (= e!2680435 e!2680436)))

(declare-fun c!732803 () Bool)

(assert (=> b!4310043 (= c!732803 ((_ is Cons!48191) lt!1530610))))

(declare-fun b!4310045 () Bool)

(assert (=> b!4310045 (= e!2680436 Nil!48191)))

(declare-fun b!4310044 () Bool)

(assert (=> b!4310044 (= e!2680436 (Cons!48191 (h!53626 lt!1530610) (removePairForKey!210 (t!355120 lt!1530610) key!2048)))))

(declare-fun d!1268004 () Bool)

(declare-fun lt!1530632 () List!48315)

(declare-fun containsKey!310 (List!48315 K!9394) Bool)

(assert (=> d!1268004 (not (containsKey!310 lt!1530632 key!2048))))

(assert (=> d!1268004 (= lt!1530632 e!2680435)))

(declare-fun c!732804 () Bool)

(assert (=> d!1268004 (= c!732804 (and ((_ is Cons!48191) lt!1530610) (= (_1!26592 (h!53626 lt!1530610)) key!2048)))))

(declare-fun noDuplicateKeys!209 (List!48315) Bool)

(assert (=> d!1268004 (noDuplicateKeys!209 lt!1530610)))

(assert (=> d!1268004 (= (removePairForKey!210 lt!1530610 key!2048) lt!1530632)))

(assert (= (and d!1268004 c!732804) b!4310042))

(assert (= (and d!1268004 (not c!732804)) b!4310043))

(assert (= (and b!4310043 c!732803) b!4310044))

(assert (= (and b!4310043 (not c!732803)) b!4310045))

(declare-fun m!4902987 () Bool)

(assert (=> b!4310044 m!4902987))

(declare-fun m!4902989 () Bool)

(assert (=> d!1268004 m!4902989))

(declare-fun m!4902991 () Bool)

(assert (=> d!1268004 m!4902991))

(assert (=> b!4309979 d!1268004))

(declare-fun d!1268006 () Bool)

(declare-fun e!2680439 () Bool)

(assert (=> d!1268006 e!2680439))

(declare-fun c!732807 () Bool)

(declare-fun contains!10168 (MutLongMap!4659 (_ BitVec 64)) Bool)

(assert (=> d!1268006 (= c!732807 (contains!10168 (v!42327 (underlying!9548 thiss!42308)) lt!1530611))))

(declare-fun lt!1530635 () List!48315)

(declare-fun apply!11012 (LongMapFixedSize!9318 (_ BitVec 64)) List!48315)

(assert (=> d!1268006 (= lt!1530635 (apply!11012 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))) lt!1530611))))

(assert (=> d!1268006 (valid!3649 (v!42327 (underlying!9548 thiss!42308)))))

(assert (=> d!1268006 (= (apply!11011 (v!42327 (underlying!9548 thiss!42308)) lt!1530611) lt!1530635)))

(declare-fun b!4310050 () Bool)

(declare-datatypes ((Option!10227 0))(
  ( (None!10226) (Some!10226 (v!42333 List!48315)) )
))
(declare-fun get!15592 (Option!10227) List!48315)

(declare-fun getValueByKey!254 (List!48316 (_ BitVec 64)) Option!10227)

(assert (=> b!4310050 (= e!2680439 (= lt!1530635 (get!15592 (getValueByKey!254 (toList!2399 (map!10180 (v!42327 (underlying!9548 thiss!42308)))) lt!1530611))))))

(declare-fun b!4310051 () Bool)

(declare-fun dynLambda!20436 (Int (_ BitVec 64)) List!48315)

(assert (=> b!4310051 (= e!2680439 (= lt!1530635 (dynLambda!20436 (defaultEntry!5044 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308))))) lt!1530611)))))

(assert (=> b!4310051 ((_ is LongMap!4659) (v!42327 (underlying!9548 thiss!42308)))))

(assert (= (and d!1268006 c!732807) b!4310050))

(assert (= (and d!1268006 (not c!732807)) b!4310051))

(declare-fun b_lambda!126623 () Bool)

(assert (=> (not b_lambda!126623) (not b!4310051)))

(declare-fun t!355123 () Bool)

(declare-fun tb!257291 () Bool)

(assert (=> (and b!4309988 (= (defaultEntry!5044 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308))))) (defaultEntry!5044 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308)))))) t!355123) tb!257291))

(assert (=> b!4310051 t!355123))

(declare-fun result!314684 () Bool)

(declare-fun b_and!340025 () Bool)

(assert (= b_and!340021 (and (=> t!355123 result!314684) b_and!340025)))

(declare-fun m!4902993 () Bool)

(assert (=> d!1268006 m!4902993))

(declare-fun m!4902995 () Bool)

(assert (=> d!1268006 m!4902995))

(assert (=> d!1268006 m!4902975))

(assert (=> b!4310050 m!4902961))

(declare-fun m!4902997 () Bool)

(assert (=> b!4310050 m!4902997))

(assert (=> b!4310050 m!4902997))

(declare-fun m!4902999 () Bool)

(assert (=> b!4310050 m!4902999))

(declare-fun m!4903001 () Bool)

(assert (=> b!4310051 m!4903001))

(assert (=> b!4309979 d!1268006))

(declare-fun d!1268008 () Bool)

(declare-fun hash!1004 (Hashable!4575 K!9394) (_ BitVec 64))

(assert (=> d!1268008 (= (hash!1003 (hashF!6695 thiss!42308) key!2048) (hash!1004 (hashF!6695 thiss!42308) key!2048))))

(declare-fun bs!605040 () Bool)

(assert (= bs!605040 d!1268008))

(declare-fun m!4903003 () Bool)

(assert (=> bs!605040 m!4903003))

(assert (=> b!4309979 d!1268008))

(declare-fun bs!605041 () Bool)

(declare-fun b!4310084 () Bool)

(assert (= bs!605041 (and b!4310084 b!4309980)))

(declare-fun lambda!132907 () Int)

(assert (=> bs!605041 (not (= lambda!132907 lambda!132904))))

(declare-fun b!4310074 () Bool)

(assert (=> b!4310074 false))

(declare-datatypes ((Unit!67307 0))(
  ( (Unit!67308) )
))
(declare-fun lt!1530693 () Unit!67307)

(declare-fun lt!1530682 () Unit!67307)

(assert (=> b!4310074 (= lt!1530693 lt!1530682)))

(declare-fun lt!1530686 () ListLongMap!1011)

(declare-fun contains!10169 (ListMap!1681 K!9394) Bool)

(declare-fun extractMap!327 (List!48316) ListMap!1681)

(assert (=> b!4310074 (contains!10169 (extractMap!327 (toList!2399 lt!1530686)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!132 (ListLongMap!1011 K!9394 Hashable!4575) Unit!67307)

(assert (=> b!4310074 (= lt!1530682 (lemmaInLongMapThenInGenericMap!132 lt!1530686 key!2048 (hashF!6695 thiss!42308)))))

(declare-fun call!297918 () ListLongMap!1011)

(assert (=> b!4310074 (= lt!1530686 call!297918)))

(declare-fun e!2680460 () Unit!67307)

(declare-fun Unit!67309 () Unit!67307)

(assert (=> b!4310074 (= e!2680460 Unit!67309)))

(declare-fun d!1268010 () Bool)

(declare-fun lt!1530694 () Bool)

(assert (=> d!1268010 (= lt!1530694 (contains!10169 (map!10181 thiss!42308) key!2048))))

(declare-fun e!2680454 () Bool)

(assert (=> d!1268010 (= lt!1530694 e!2680454)))

(declare-fun res!1766447 () Bool)

(assert (=> d!1268010 (=> (not res!1766447) (not e!2680454))))

(declare-fun lt!1530688 () (_ BitVec 64))

(assert (=> d!1268010 (= res!1766447 (contains!10168 (v!42327 (underlying!9548 thiss!42308)) lt!1530688))))

(declare-fun lt!1530685 () Unit!67307)

(declare-fun e!2680457 () Unit!67307)

(assert (=> d!1268010 (= lt!1530685 e!2680457)))

(declare-fun c!732818 () Bool)

(assert (=> d!1268010 (= c!732818 (contains!10169 (extractMap!327 (toList!2399 (map!10180 (v!42327 (underlying!9548 thiss!42308))))) key!2048))))

(declare-fun lt!1530684 () Unit!67307)

(declare-fun e!2680458 () Unit!67307)

(assert (=> d!1268010 (= lt!1530684 e!2680458)))

(declare-fun c!732817 () Bool)

(assert (=> d!1268010 (= c!732817 (contains!10168 (v!42327 (underlying!9548 thiss!42308)) lt!1530688))))

(assert (=> d!1268010 (= lt!1530688 (hash!1003 (hashF!6695 thiss!42308) key!2048))))

(assert (=> d!1268010 (valid!3648 thiss!42308)))

(assert (=> d!1268010 (= (contains!10166 thiss!42308 key!2048) lt!1530694)))

(declare-fun b!4310075 () Bool)

(declare-fun Unit!67310 () Unit!67307)

(assert (=> b!4310075 (= e!2680460 Unit!67310)))

(declare-fun b!4310076 () Bool)

(assert (=> b!4310076 (= e!2680457 e!2680460)))

(declare-fun res!1766445 () Bool)

(declare-fun call!297917 () Bool)

(assert (=> b!4310076 (= res!1766445 call!297917)))

(declare-fun e!2680456 () Bool)

(assert (=> b!4310076 (=> (not res!1766445) (not e!2680456))))

(declare-fun c!732816 () Bool)

(assert (=> b!4310076 (= c!732816 e!2680456)))

(declare-fun b!4310077 () Bool)

(declare-fun e!2680455 () Unit!67307)

(declare-fun Unit!67311 () Unit!67307)

(assert (=> b!4310077 (= e!2680455 Unit!67311)))

(declare-fun b!4310078 () Bool)

(declare-fun e!2680459 () Bool)

(declare-fun call!297922 () Bool)

(assert (=> b!4310078 (= e!2680459 call!297922)))

(declare-fun bm!297912 () Bool)

(declare-fun call!297920 () List!48315)

(declare-fun call!297921 () (_ BitVec 64))

(declare-fun lt!1530687 () ListLongMap!1011)

(declare-fun apply!11013 (ListLongMap!1011 (_ BitVec 64)) List!48315)

(assert (=> bm!297912 (= call!297920 (apply!11013 (ite c!732818 lt!1530687 call!297918) call!297921))))

(declare-fun b!4310079 () Bool)

(declare-fun lt!1530689 () Unit!67307)

(assert (=> b!4310079 (= e!2680457 lt!1530689)))

(assert (=> b!4310079 (= lt!1530687 call!297918)))

(declare-fun lemmaInGenericMapThenInLongMap!132 (ListLongMap!1011 K!9394 Hashable!4575) Unit!67307)

(assert (=> b!4310079 (= lt!1530689 (lemmaInGenericMapThenInLongMap!132 lt!1530687 key!2048 (hashF!6695 thiss!42308)))))

(declare-fun res!1766446 () Bool)

(assert (=> b!4310079 (= res!1766446 call!297917)))

(assert (=> b!4310079 (=> (not res!1766446) (not e!2680459))))

(assert (=> b!4310079 e!2680459))

(declare-fun bm!297913 () Bool)

(assert (=> bm!297913 (= call!297917 (contains!10167 (ite c!732818 lt!1530687 call!297918) call!297921))))

(declare-fun bm!297914 () Bool)

(assert (=> bm!297914 (= call!297921 (hash!1003 (hashF!6695 thiss!42308) key!2048))))

(declare-fun b!4310080 () Bool)

(declare-fun Unit!67312 () Unit!67307)

(assert (=> b!4310080 (= e!2680458 Unit!67312)))

(declare-fun b!4310081 () Bool)

(declare-datatypes ((Option!10228 0))(
  ( (None!10227) (Some!10227 (v!42334 tuple2!46624)) )
))
(declare-fun isDefined!7529 (Option!10228) Bool)

(declare-fun getPair!132 (List!48315 K!9394) Option!10228)

(assert (=> b!4310081 (= e!2680454 (isDefined!7529 (getPair!132 (apply!11011 (v!42327 (underlying!9548 thiss!42308)) lt!1530688) key!2048)))))

(declare-fun bm!297915 () Bool)

(declare-fun call!297919 () Option!10228)

(assert (=> bm!297915 (= call!297922 (isDefined!7529 call!297919))))

(declare-fun b!4310082 () Bool)

(assert (=> b!4310082 (= e!2680456 call!297922)))

(declare-fun b!4310083 () Bool)

(assert (=> b!4310083 false))

(declare-fun lt!1530695 () Unit!67307)

(declare-fun lt!1530677 () Unit!67307)

(assert (=> b!4310083 (= lt!1530695 lt!1530677)))

(declare-fun lt!1530679 () List!48316)

(declare-fun lt!1530681 () List!48315)

(assert (=> b!4310083 (contains!10165 lt!1530679 (tuple2!46629 lt!1530688 lt!1530681))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!143 (List!48316 (_ BitVec 64) List!48315) Unit!67307)

(assert (=> b!4310083 (= lt!1530677 (lemmaGetValueByKeyImpliesContainsTuple!143 lt!1530679 lt!1530688 lt!1530681))))

(assert (=> b!4310083 (= lt!1530681 (apply!11011 (v!42327 (underlying!9548 thiss!42308)) lt!1530688))))

(assert (=> b!4310083 (= lt!1530679 (toList!2399 (map!10180 (v!42327 (underlying!9548 thiss!42308)))))))

(declare-fun lt!1530676 () Unit!67307)

(declare-fun lt!1530690 () Unit!67307)

(assert (=> b!4310083 (= lt!1530676 lt!1530690)))

(declare-fun lt!1530691 () List!48316)

(declare-fun isDefined!7530 (Option!10227) Bool)

(assert (=> b!4310083 (isDefined!7530 (getValueByKey!254 lt!1530691 lt!1530688))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!174 (List!48316 (_ BitVec 64)) Unit!67307)

(assert (=> b!4310083 (= lt!1530690 (lemmaContainsKeyImpliesGetValueByKeyDefined!174 lt!1530691 lt!1530688))))

(assert (=> b!4310083 (= lt!1530691 (toList!2399 (map!10180 (v!42327 (underlying!9548 thiss!42308)))))))

(declare-fun lt!1530678 () Unit!67307)

(declare-fun lt!1530692 () Unit!67307)

(assert (=> b!4310083 (= lt!1530678 lt!1530692)))

(declare-fun lt!1530683 () List!48316)

(declare-fun containsKey!311 (List!48316 (_ BitVec 64)) Bool)

(assert (=> b!4310083 (containsKey!311 lt!1530683 lt!1530688)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!133 (List!48316 (_ BitVec 64)) Unit!67307)

(assert (=> b!4310083 (= lt!1530692 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!133 lt!1530683 lt!1530688))))

(assert (=> b!4310083 (= lt!1530683 (toList!2399 (map!10180 (v!42327 (underlying!9548 thiss!42308)))))))

(declare-fun Unit!67313 () Unit!67307)

(assert (=> b!4310083 (= e!2680455 Unit!67313)))

(declare-fun bm!297916 () Bool)

(assert (=> bm!297916 (= call!297918 (map!10180 (v!42327 (underlying!9548 thiss!42308))))))

(declare-fun forallContained!1499 (List!48316 Int tuple2!46628) Unit!67307)

(assert (=> b!4310084 (= e!2680458 (forallContained!1499 (toList!2399 (map!10180 (v!42327 (underlying!9548 thiss!42308)))) lambda!132907 (tuple2!46629 lt!1530688 (apply!11011 (v!42327 (underlying!9548 thiss!42308)) lt!1530688))))))

(declare-fun c!732819 () Bool)

(assert (=> b!4310084 (= c!732819 (not (contains!10165 (toList!2399 (map!10180 (v!42327 (underlying!9548 thiss!42308)))) (tuple2!46629 lt!1530688 (apply!11011 (v!42327 (underlying!9548 thiss!42308)) lt!1530688)))))))

(declare-fun lt!1530680 () Unit!67307)

(assert (=> b!4310084 (= lt!1530680 e!2680455)))

(declare-fun bm!297917 () Bool)

(assert (=> bm!297917 (= call!297919 (getPair!132 call!297920 key!2048))))

(assert (= (and d!1268010 c!732817) b!4310084))

(assert (= (and d!1268010 (not c!732817)) b!4310080))

(assert (= (and b!4310084 c!732819) b!4310083))

(assert (= (and b!4310084 (not c!732819)) b!4310077))

(assert (= (and d!1268010 c!732818) b!4310079))

(assert (= (and d!1268010 (not c!732818)) b!4310076))

(assert (= (and b!4310079 res!1766446) b!4310078))

(assert (= (and b!4310076 res!1766445) b!4310082))

(assert (= (and b!4310076 c!732816) b!4310074))

(assert (= (and b!4310076 (not c!732816)) b!4310075))

(assert (= (or b!4310079 b!4310078 b!4310076 b!4310082) bm!297914))

(assert (= (or b!4310079 b!4310076 b!4310082 b!4310074) bm!297916))

(assert (= (or b!4310078 b!4310082) bm!297912))

(assert (= (or b!4310079 b!4310076) bm!297913))

(assert (= (or b!4310078 b!4310082) bm!297917))

(assert (= (or b!4310078 b!4310082) bm!297915))

(assert (= (and d!1268010 res!1766447) b!4310081))

(assert (=> d!1268010 m!4902953))

(assert (=> d!1268010 m!4902961))

(assert (=> d!1268010 m!4902963))

(declare-fun m!4903005 () Bool)

(assert (=> d!1268010 m!4903005))

(assert (=> d!1268010 m!4902963))

(declare-fun m!4903007 () Bool)

(assert (=> d!1268010 m!4903007))

(declare-fun m!4903009 () Bool)

(assert (=> d!1268010 m!4903009))

(assert (=> d!1268010 m!4903007))

(declare-fun m!4903011 () Bool)

(assert (=> d!1268010 m!4903011))

(assert (=> d!1268010 m!4902945))

(declare-fun m!4903013 () Bool)

(assert (=> bm!297912 m!4903013))

(declare-fun m!4903015 () Bool)

(assert (=> bm!297915 m!4903015))

(assert (=> bm!297916 m!4902961))

(declare-fun m!4903017 () Bool)

(assert (=> b!4310074 m!4903017))

(assert (=> b!4310074 m!4903017))

(declare-fun m!4903019 () Bool)

(assert (=> b!4310074 m!4903019))

(declare-fun m!4903021 () Bool)

(assert (=> b!4310074 m!4903021))

(declare-fun m!4903023 () Bool)

(assert (=> b!4310081 m!4903023))

(assert (=> b!4310081 m!4903023))

(declare-fun m!4903025 () Bool)

(assert (=> b!4310081 m!4903025))

(assert (=> b!4310081 m!4903025))

(declare-fun m!4903027 () Bool)

(assert (=> b!4310081 m!4903027))

(declare-fun m!4903029 () Bool)

(assert (=> bm!297917 m!4903029))

(assert (=> b!4310084 m!4902961))

(assert (=> b!4310084 m!4903023))

(declare-fun m!4903031 () Bool)

(assert (=> b!4310084 m!4903031))

(declare-fun m!4903033 () Bool)

(assert (=> b!4310084 m!4903033))

(declare-fun m!4903035 () Bool)

(assert (=> bm!297913 m!4903035))

(declare-fun m!4903037 () Bool)

(assert (=> b!4310079 m!4903037))

(assert (=> bm!297914 m!4902953))

(declare-fun m!4903039 () Bool)

(assert (=> b!4310083 m!4903039))

(assert (=> b!4310083 m!4903023))

(declare-fun m!4903041 () Bool)

(assert (=> b!4310083 m!4903041))

(assert (=> b!4310083 m!4902961))

(declare-fun m!4903043 () Bool)

(assert (=> b!4310083 m!4903043))

(declare-fun m!4903045 () Bool)

(assert (=> b!4310083 m!4903045))

(declare-fun m!4903047 () Bool)

(assert (=> b!4310083 m!4903047))

(assert (=> b!4310083 m!4903041))

(declare-fun m!4903049 () Bool)

(assert (=> b!4310083 m!4903049))

(declare-fun m!4903051 () Bool)

(assert (=> b!4310083 m!4903051))

(assert (=> b!4309984 d!1268010))

(declare-fun d!1268012 () Bool)

(declare-fun map!10182 (LongMapFixedSize!9318) ListLongMap!1011)

(assert (=> d!1268012 (= (map!10180 (v!42327 (underlying!9548 thiss!42308))) (map!10182 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308))))))))

(declare-fun bs!605042 () Bool)

(assert (= bs!605042 d!1268012))

(declare-fun m!4903053 () Bool)

(assert (=> bs!605042 m!4903053))

(assert (=> b!4309984 d!1268012))

(declare-fun d!1268014 () Bool)

(declare-fun lt!1530698 () ListMap!1681)

(declare-fun invariantList!571 (List!48315) Bool)

(assert (=> d!1268014 (invariantList!571 (toList!2400 lt!1530698))))

(assert (=> d!1268014 (= lt!1530698 (extractMap!327 (toList!2399 (map!10180 (v!42327 (underlying!9548 thiss!42308))))))))

(assert (=> d!1268014 (valid!3648 thiss!42308)))

(assert (=> d!1268014 (= (map!10181 thiss!42308) lt!1530698)))

(declare-fun bs!605043 () Bool)

(assert (= bs!605043 d!1268014))

(declare-fun m!4903055 () Bool)

(assert (=> bs!605043 m!4903055))

(assert (=> bs!605043 m!4902961))

(assert (=> bs!605043 m!4903007))

(assert (=> bs!605043 m!4902945))

(assert (=> b!4309984 d!1268014))

(declare-fun d!1268016 () Bool)

(declare-fun lt!1530701 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7555 (List!48316) (InoxSet tuple2!46628))

(assert (=> d!1268016 (= lt!1530701 (select (content!7555 (toList!2399 lt!1530613)) (tuple2!46629 lt!1530611 lt!1530610)))))

(declare-fun e!2680465 () Bool)

(assert (=> d!1268016 (= lt!1530701 e!2680465)))

(declare-fun res!1766452 () Bool)

(assert (=> d!1268016 (=> (not res!1766452) (not e!2680465))))

(assert (=> d!1268016 (= res!1766452 ((_ is Cons!48192) (toList!2399 lt!1530613)))))

(assert (=> d!1268016 (= (contains!10165 (toList!2399 lt!1530613) (tuple2!46629 lt!1530611 lt!1530610)) lt!1530701)))

(declare-fun b!4310089 () Bool)

(declare-fun e!2680466 () Bool)

(assert (=> b!4310089 (= e!2680465 e!2680466)))

(declare-fun res!1766453 () Bool)

(assert (=> b!4310089 (=> res!1766453 e!2680466)))

(assert (=> b!4310089 (= res!1766453 (= (h!53627 (toList!2399 lt!1530613)) (tuple2!46629 lt!1530611 lt!1530610)))))

(declare-fun b!4310090 () Bool)

(assert (=> b!4310090 (= e!2680466 (contains!10165 (t!355121 (toList!2399 lt!1530613)) (tuple2!46629 lt!1530611 lt!1530610)))))

(assert (= (and d!1268016 res!1766452) b!4310089))

(assert (= (and b!4310089 (not res!1766453)) b!4310090))

(declare-fun m!4903057 () Bool)

(assert (=> d!1268016 m!4903057))

(declare-fun m!4903059 () Bool)

(assert (=> d!1268016 m!4903059))

(declare-fun m!4903061 () Bool)

(assert (=> b!4310090 m!4903061))

(assert (=> b!4309982 d!1268016))

(declare-fun bs!605044 () Bool)

(declare-fun b!4310095 () Bool)

(assert (= bs!605044 (and b!4310095 b!4309980)))

(declare-fun lambda!132910 () Int)

(assert (=> bs!605044 (not (= lambda!132910 lambda!132904))))

(declare-fun bs!605045 () Bool)

(assert (= bs!605045 (and b!4310095 b!4310084)))

(assert (=> bs!605045 (= lambda!132910 lambda!132907)))

(declare-fun d!1268018 () Bool)

(declare-fun res!1766458 () Bool)

(declare-fun e!2680469 () Bool)

(assert (=> d!1268018 (=> (not res!1766458) (not e!2680469))))

(assert (=> d!1268018 (= res!1766458 (valid!3649 (v!42327 (underlying!9548 thiss!42308))))))

(assert (=> d!1268018 (= (valid!3648 thiss!42308) e!2680469)))

(declare-fun res!1766459 () Bool)

(assert (=> b!4310095 (=> (not res!1766459) (not e!2680469))))

(assert (=> b!4310095 (= res!1766459 (forall!8729 (toList!2399 (map!10180 (v!42327 (underlying!9548 thiss!42308)))) lambda!132910))))

(declare-fun b!4310096 () Bool)

(declare-fun allKeysSameHashInMap!335 (ListLongMap!1011 Hashable!4575) Bool)

(assert (=> b!4310096 (= e!2680469 (allKeysSameHashInMap!335 (map!10180 (v!42327 (underlying!9548 thiss!42308))) (hashF!6695 thiss!42308)))))

(assert (= (and d!1268018 res!1766458) b!4310095))

(assert (= (and b!4310095 res!1766459) b!4310096))

(assert (=> d!1268018 m!4902975))

(assert (=> b!4310095 m!4902961))

(declare-fun m!4903063 () Bool)

(assert (=> b!4310095 m!4903063))

(assert (=> b!4310096 m!4902961))

(assert (=> b!4310096 m!4902961))

(declare-fun m!4903065 () Bool)

(assert (=> b!4310096 m!4903065))

(assert (=> b!4309985 d!1268018))

(declare-fun d!1268020 () Bool)

(declare-fun res!1766464 () Bool)

(declare-fun e!2680474 () Bool)

(assert (=> d!1268020 (=> res!1766464 e!2680474)))

(assert (=> d!1268020 (= res!1766464 ((_ is Nil!48192) (toList!2399 lt!1530613)))))

(assert (=> d!1268020 (= (forall!8729 (toList!2399 lt!1530613) lambda!132904) e!2680474)))

(declare-fun b!4310101 () Bool)

(declare-fun e!2680475 () Bool)

(assert (=> b!4310101 (= e!2680474 e!2680475)))

(declare-fun res!1766465 () Bool)

(assert (=> b!4310101 (=> (not res!1766465) (not e!2680475))))

(declare-fun dynLambda!20437 (Int tuple2!46628) Bool)

(assert (=> b!4310101 (= res!1766465 (dynLambda!20437 lambda!132904 (h!53627 (toList!2399 lt!1530613))))))

(declare-fun b!4310102 () Bool)

(assert (=> b!4310102 (= e!2680475 (forall!8729 (t!355121 (toList!2399 lt!1530613)) lambda!132904))))

(assert (= (and d!1268020 (not res!1766464)) b!4310101))

(assert (= (and b!4310101 res!1766465) b!4310102))

(declare-fun b_lambda!126625 () Bool)

(assert (=> (not b_lambda!126625) (not b!4310101)))

(declare-fun m!4903067 () Bool)

(assert (=> b!4310101 m!4903067))

(declare-fun m!4903069 () Bool)

(assert (=> b!4310102 m!4903069))

(assert (=> b!4309980 d!1268020))

(declare-fun e!2680478 () Bool)

(declare-fun tp!1324446 () Bool)

(declare-fun b!4310107 () Bool)

(assert (=> b!4310107 (= e!2680478 (and tp_is_empty!23741 tp_is_empty!23743 tp!1324446))))

(assert (=> b!4309988 (= tp!1324439 e!2680478)))

(assert (= (and b!4309988 ((_ is Cons!48191) (zeroValue!4918 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308))))))) b!4310107))

(declare-fun tp!1324447 () Bool)

(declare-fun b!4310108 () Bool)

(declare-fun e!2680479 () Bool)

(assert (=> b!4310108 (= e!2680479 (and tp_is_empty!23741 tp_is_empty!23743 tp!1324447))))

(assert (=> b!4309988 (= tp!1324438 e!2680479)))

(assert (= (and b!4309988 ((_ is Cons!48191) (minValue!4918 (v!42326 (underlying!9547 (v!42327 (underlying!9548 thiss!42308))))))) b!4310108))

(declare-fun b!4310109 () Bool)

(declare-fun e!2680480 () Bool)

(declare-fun tp!1324448 () Bool)

(assert (=> b!4310109 (= e!2680480 (and tp_is_empty!23741 tp_is_empty!23743 tp!1324448))))

(assert (=> b!4309987 (= tp!1324441 e!2680480)))

(assert (= (and b!4309987 ((_ is Cons!48191) mapDefault!20807)) b!4310109))

(declare-fun b!4310117 () Bool)

(declare-fun tp!1324457 () Bool)

(declare-fun e!2680485 () Bool)

(assert (=> b!4310117 (= e!2680485 (and tp_is_empty!23741 tp_is_empty!23743 tp!1324457))))

(declare-fun condMapEmpty!20810 () Bool)

(declare-fun mapDefault!20810 () List!48315)

(assert (=> mapNonEmpty!20807 (= condMapEmpty!20810 (= mapRest!20807 ((as const (Array (_ BitVec 32) List!48315)) mapDefault!20810)))))

(declare-fun mapRes!20810 () Bool)

(assert (=> mapNonEmpty!20807 (= tp!1324442 (and e!2680485 mapRes!20810))))

(declare-fun mapNonEmpty!20810 () Bool)

(declare-fun tp!1324455 () Bool)

(declare-fun e!2680486 () Bool)

(assert (=> mapNonEmpty!20810 (= mapRes!20810 (and tp!1324455 e!2680486))))

(declare-fun mapRest!20810 () (Array (_ BitVec 32) List!48315))

(declare-fun mapKey!20810 () (_ BitVec 32))

(declare-fun mapValue!20810 () List!48315)

(assert (=> mapNonEmpty!20810 (= mapRest!20807 (store mapRest!20810 mapKey!20810 mapValue!20810))))

(declare-fun b!4310116 () Bool)

(declare-fun tp!1324456 () Bool)

(assert (=> b!4310116 (= e!2680486 (and tp_is_empty!23741 tp_is_empty!23743 tp!1324456))))

(declare-fun mapIsEmpty!20810 () Bool)

(assert (=> mapIsEmpty!20810 mapRes!20810))

(assert (= (and mapNonEmpty!20807 condMapEmpty!20810) mapIsEmpty!20810))

(assert (= (and mapNonEmpty!20807 (not condMapEmpty!20810)) mapNonEmpty!20810))

(assert (= (and mapNonEmpty!20810 ((_ is Cons!48191) mapValue!20810)) b!4310116))

(assert (= (and mapNonEmpty!20807 ((_ is Cons!48191) mapDefault!20810)) b!4310117))

(declare-fun m!4903071 () Bool)

(assert (=> mapNonEmpty!20810 m!4903071))

(declare-fun e!2680487 () Bool)

(declare-fun tp!1324458 () Bool)

(declare-fun b!4310118 () Bool)

(assert (=> b!4310118 (= e!2680487 (and tp_is_empty!23741 tp_is_empty!23743 tp!1324458))))

(assert (=> mapNonEmpty!20807 (= tp!1324443 e!2680487)))

(assert (= (and mapNonEmpty!20807 ((_ is Cons!48191) mapValue!20807)) b!4310118))

(declare-fun b_lambda!126627 () Bool)

(assert (= b_lambda!126623 (or (and b!4309988 b_free!128595) b_lambda!126627)))

(declare-fun b_lambda!126629 () Bool)

(assert (= b_lambda!126625 (or b!4309980 b_lambda!126629)))

(declare-fun bs!605046 () Bool)

(declare-fun d!1268022 () Bool)

(assert (= bs!605046 (and d!1268022 b!4309980)))

(declare-fun allKeysSameHash!184 (List!48315 (_ BitVec 64) Hashable!4575) Bool)

(assert (=> bs!605046 (= (dynLambda!20437 lambda!132904 (h!53627 (toList!2399 lt!1530613))) (allKeysSameHash!184 (_2!26594 (h!53627 (toList!2399 lt!1530613))) (_1!26594 (h!53627 (toList!2399 lt!1530613))) (hashF!6695 thiss!42308)))))

(declare-fun m!4903073 () Bool)

(assert (=> bs!605046 m!4903073))

(assert (=> b!4310101 d!1268022))

(check-sat (not b_next!129299) (not b!4310028) (not d!1268008) (not b_lambda!126627) (not b!4310050) (not b!4310029) (not b_next!129301) (not bm!297898) (not d!1268010) (not d!1268004) (not b!4310027) (not d!1268002) b_and!340023 (not d!1268016) (not d!1268006) (not b!4310074) (not bm!297913) tp_is_empty!23743 (not d!1268012) (not b!4310095) (not b!4310090) (not d!1268014) (not b!4310044) (not b!4310096) (not b!4310031) (not b!4310081) (not b!4310118) (not bm!297914) (not b!4310084) (not b!4310032) (not b!4310116) (not bm!297917) (not b!4310102) b_and!340025 (not mapNonEmpty!20810) tp_is_empty!23741 (not tb!257291) (not bs!605046) (not bm!297915) (not b_lambda!126629) (not b!4310107) (not bm!297912) (not b!4310108) (not bm!297916) (not b!4310083) (not bm!297899) (not b!4310079) (not b!4310117) (not b!4310109) (not d!1268018))
(check-sat b_and!340025 b_and!340023 (not b_next!129301) (not b_next!129299))
