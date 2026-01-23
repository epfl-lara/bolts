; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46652 () Bool)

(assert start!46652)

(declare-fun b_free!13487 () Bool)

(declare-fun b_next!13487 () Bool)

(assert (=> start!46652 (= b_free!13487 (not b_next!13487))))

(declare-fun tp!160647 () Bool)

(declare-fun b_and!50925 () Bool)

(assert (=> start!46652 (= tp!160647 b_and!50925)))

(declare-fun b!514957 () Bool)

(declare-fun b_free!13489 () Bool)

(declare-fun b_next!13489 () Bool)

(assert (=> b!514957 (= b_free!13489 (not b_next!13489))))

(declare-fun tp!160649 () Bool)

(declare-fun b_and!50927 () Bool)

(assert (=> b!514957 (= tp!160649 b_and!50927)))

(declare-fun b!514961 () Bool)

(declare-fun b_free!13491 () Bool)

(declare-fun b_next!13491 () Bool)

(assert (=> b!514961 (= b_free!13491 (not b_next!13491))))

(declare-fun tp!160645 () Bool)

(declare-fun b_and!50929 () Bool)

(assert (=> b!514961 (= tp!160645 b_and!50929)))

(declare-fun b!514953 () Bool)

(declare-fun e!307973 () Bool)

(declare-fun e!307966 () Bool)

(assert (=> b!514953 (= e!307973 e!307966)))

(declare-fun bm!37450 () Bool)

(declare-datatypes ((Unit!8486 0))(
  ( (Unit!8487) )
))
(declare-fun call!37455 () Unit!8486)

(declare-fun p!6060 () Int)

(declare-datatypes ((K!1377 0))(
  ( (K!1378 (val!1765 Int)) )
))
(declare-datatypes ((V!1475 0))(
  ( (V!1476 (val!1766 Int)) )
))
(declare-datatypes ((tuple2!5698 0))(
  ( (tuple2!5699 (_1!3065 K!1377) (_2!3065 V!1475)) )
))
(declare-datatypes ((List!4706 0))(
  ( (Nil!4696) (Cons!4696 (h!10093 tuple2!5698) (t!73240 List!4706)) )
))
(declare-datatypes ((ListMap!163 0))(
  ( (ListMap!164 (toList!398 List!4706)) )
))
(declare-fun lt!213386 () ListMap!163)

(declare-fun lt!213387 () ListMap!163)

(declare-fun lemmaForallSubset!9 (List!4706 List!4706 Int) Unit!8486)

(assert (=> bm!37450 (= call!37455 (lemmaForallSubset!9 (toList!398 lt!213387) (toList!398 lt!213386) p!6060))))

(declare-fun b!514954 () Bool)

(declare-fun e!307967 () Bool)

(declare-fun e!307971 () Bool)

(assert (=> b!514954 (= e!307967 e!307971)))

(declare-fun res!218384 () Bool)

(assert (=> b!514954 (=> (not res!218384) (not e!307971))))

(declare-fun forall!1381 (List!4706 Int) Bool)

(assert (=> b!514954 (= res!218384 (forall!1381 (toList!398 lt!213386) p!6060))))

(declare-datatypes ((array!1937 0))(
  ( (array!1938 (arr!894 (Array (_ BitVec 32) List!4706)) (size!3828 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!477 0))(
  ( (HashableExt!476 (__x!3406 Int)) )
))
(declare-datatypes ((array!1939 0))(
  ( (array!1940 (arr!895 (Array (_ BitVec 32) (_ BitVec 64))) (size!3829 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1010 0))(
  ( (LongMapFixedSize!1011 (defaultEntry!856 Int) (mask!1922 (_ BitVec 32)) (extraKeys!751 (_ BitVec 32)) (zeroValue!761 List!4706) (minValue!761 List!4706) (_size!1119 (_ BitVec 32)) (_keys!796 array!1939) (_values!783 array!1937) (_vacant!566 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1961 0))(
  ( (Cell!1962 (v!15727 LongMapFixedSize!1010)) )
))
(declare-datatypes ((MutLongMap!505 0))(
  ( (LongMap!505 (underlying!1189 Cell!1961)) (MutLongMapExt!504 (__x!3407 Int)) )
))
(declare-datatypes ((Cell!1963 0))(
  ( (Cell!1964 (v!15728 MutLongMap!505)) )
))
(declare-datatypes ((MutableMap!477 0))(
  ( (MutableMapExt!476 (__x!3408 Int)) (HashMap!477 (underlying!1190 Cell!1963) (hashF!2353 Hashable!477) (_size!1120 (_ BitVec 32)) (defaultValue!626 Int)) )
))
(declare-fun hm!65 () MutableMap!477)

(declare-fun map!1009 (MutableMap!477) ListMap!163)

(assert (=> b!514954 (= lt!213386 (map!1009 hm!65))))

(declare-fun b!514955 () Bool)

(declare-fun e!307965 () Bool)

(declare-fun e!307964 () Bool)

(declare-fun lt!213390 () MutLongMap!505)

(get-info :version)

(assert (=> b!514955 (= e!307965 (and e!307964 ((_ is LongMap!505) lt!213390)))))

(assert (=> b!514955 (= lt!213390 (v!15728 (underlying!1190 hm!65)))))

(declare-fun b!514956 () Bool)

(declare-fun e!307969 () Bool)

(declare-fun e!307974 () Bool)

(assert (=> b!514956 (= e!307969 e!307974)))

(declare-fun res!218382 () Bool)

(assert (=> b!514956 (=> (not res!218382) (not e!307974))))

(declare-fun lt!213389 () ListMap!163)

(declare-fun invariantList!60 (List!4706) Bool)

(assert (=> b!514956 (= res!218382 (invariantList!60 (toList!398 lt!213389)))))

(declare-datatypes ((tuple2!5700 0))(
  ( (tuple2!5701 (_1!3066 Bool) (_2!3066 MutableMap!477)) )
))
(declare-fun lt!213394 () tuple2!5700)

(assert (=> b!514956 (= lt!213389 (map!1009 (_2!3066 lt!213394)))))

(declare-fun e!307970 () Bool)

(declare-fun tp!160651 () Bool)

(declare-fun tp!160646 () Bool)

(declare-fun array_inv!651 (array!1939) Bool)

(declare-fun array_inv!652 (array!1937) Bool)

(assert (=> b!514957 (= e!307966 (and tp!160649 tp!160646 tp!160651 (array_inv!651 (_keys!796 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65)))))) (array_inv!652 (_values!783 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65)))))) e!307970))))

(declare-fun b!514958 () Bool)

(assert (=> b!514958 (= e!307974 (not ((_ is HashMap!477) (_2!3066 lt!213394))))))

(declare-fun lt!213391 () Unit!8486)

(declare-fun e!307963 () Unit!8486)

(assert (=> b!514958 (= lt!213391 e!307963)))

(declare-fun c!99825 () Bool)

(assert (=> b!514958 (= c!99825 (_1!3066 lt!213394))))

(declare-fun b!514959 () Bool)

(declare-fun lt!213392 () Unit!8486)

(assert (=> b!514959 (= e!307963 lt!213392)))

(declare-fun lt!213388 () Unit!8486)

(assert (=> b!514959 (= lt!213388 call!37455)))

(declare-fun call!37456 () Bool)

(assert (=> b!514959 call!37456))

(assert (=> b!514959 (= lt!213392 (lemmaForallSubset!9 (toList!398 lt!213389) (toList!398 lt!213387) p!6060))))

(assert (=> b!514959 (forall!1381 (toList!398 lt!213389) p!6060)))

(declare-fun mapNonEmpty!1942 () Bool)

(declare-fun mapRes!1942 () Bool)

(declare-fun tp!160644 () Bool)

(declare-fun tp!160650 () Bool)

(assert (=> mapNonEmpty!1942 (= mapRes!1942 (and tp!160644 tp!160650))))

(declare-fun mapRest!1942 () (Array (_ BitVec 32) List!4706))

(declare-fun mapValue!1942 () List!4706)

(declare-fun mapKey!1942 () (_ BitVec 32))

(assert (=> mapNonEmpty!1942 (= (arr!894 (_values!783 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65)))))) (store mapRest!1942 mapKey!1942 mapValue!1942))))

(declare-fun mapIsEmpty!1942 () Bool)

(assert (=> mapIsEmpty!1942 mapRes!1942))

(declare-fun b!514960 () Bool)

(assert (=> b!514960 (= e!307971 e!307969)))

(declare-fun res!218381 () Bool)

(assert (=> b!514960 (=> (not res!218381) (not e!307969))))

(declare-fun valid!461 (MutableMap!477) Bool)

(assert (=> b!514960 (= res!218381 (valid!461 (_2!3066 lt!213394)))))

(declare-fun k0!1740 () K!1377)

(declare-fun remove!26 (MutableMap!477 K!1377) tuple2!5700)

(assert (=> b!514960 (= lt!213394 (remove!26 hm!65 k0!1740))))

(declare-fun -!23 (ListMap!163 K!1377) ListMap!163)

(assert (=> b!514960 (= lt!213387 (-!23 lt!213386 k0!1740))))

(declare-fun bm!37451 () Bool)

(assert (=> bm!37451 (= call!37456 (forall!1381 (toList!398 lt!213387) p!6060))))

(declare-fun res!218383 () Bool)

(assert (=> start!46652 (=> (not res!218383) (not e!307967))))

(assert (=> start!46652 (= res!218383 ((_ is HashMap!477) hm!65))))

(assert (=> start!46652 e!307967))

(declare-fun e!307972 () Bool)

(assert (=> start!46652 e!307972))

(assert (=> start!46652 tp!160647))

(declare-fun tp_is_empty!2581 () Bool)

(assert (=> start!46652 tp_is_empty!2581))

(assert (=> b!514961 (= e!307972 (and e!307965 tp!160645))))

(declare-fun b!514962 () Bool)

(declare-fun lt!213393 () Unit!8486)

(assert (=> b!514962 (= e!307963 lt!213393)))

(assert (=> b!514962 (= lt!213393 call!37455)))

(assert (=> b!514962 call!37456))

(declare-fun b!514963 () Bool)

(assert (=> b!514963 (= e!307964 e!307973)))

(declare-fun b!514964 () Bool)

(declare-fun res!218380 () Bool)

(assert (=> b!514964 (=> (not res!218380) (not e!307967))))

(assert (=> b!514964 (= res!218380 (valid!461 hm!65))))

(declare-fun b!514965 () Bool)

(declare-fun tp!160648 () Bool)

(assert (=> b!514965 (= e!307970 (and tp!160648 mapRes!1942))))

(declare-fun condMapEmpty!1942 () Bool)

(declare-fun mapDefault!1942 () List!4706)

(assert (=> b!514965 (= condMapEmpty!1942 (= (arr!894 (_values!783 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65)))))) ((as const (Array (_ BitVec 32) List!4706)) mapDefault!1942)))))

(assert (= (and start!46652 res!218383) b!514964))

(assert (= (and b!514964 res!218380) b!514954))

(assert (= (and b!514954 res!218384) b!514960))

(assert (= (and b!514960 res!218381) b!514956))

(assert (= (and b!514956 res!218382) b!514958))

(assert (= (and b!514958 c!99825) b!514959))

(assert (= (and b!514958 (not c!99825)) b!514962))

(assert (= (or b!514959 b!514962) bm!37450))

(assert (= (or b!514959 b!514962) bm!37451))

(assert (= (and b!514965 condMapEmpty!1942) mapIsEmpty!1942))

(assert (= (and b!514965 (not condMapEmpty!1942)) mapNonEmpty!1942))

(assert (= b!514957 b!514965))

(assert (= b!514953 b!514957))

(assert (= b!514963 b!514953))

(assert (= (and b!514955 ((_ is LongMap!505) (v!15728 (underlying!1190 hm!65)))) b!514963))

(assert (= b!514961 b!514955))

(assert (= (and start!46652 ((_ is HashMap!477) hm!65)) b!514961))

(declare-fun m!760931 () Bool)

(assert (=> b!514957 m!760931))

(declare-fun m!760933 () Bool)

(assert (=> b!514957 m!760933))

(declare-fun m!760935 () Bool)

(assert (=> mapNonEmpty!1942 m!760935))

(declare-fun m!760937 () Bool)

(assert (=> bm!37450 m!760937))

(declare-fun m!760939 () Bool)

(assert (=> bm!37451 m!760939))

(declare-fun m!760941 () Bool)

(assert (=> b!514964 m!760941))

(declare-fun m!760943 () Bool)

(assert (=> b!514960 m!760943))

(declare-fun m!760945 () Bool)

(assert (=> b!514960 m!760945))

(declare-fun m!760947 () Bool)

(assert (=> b!514960 m!760947))

(declare-fun m!760949 () Bool)

(assert (=> b!514954 m!760949))

(declare-fun m!760951 () Bool)

(assert (=> b!514954 m!760951))

(declare-fun m!760953 () Bool)

(assert (=> b!514959 m!760953))

(declare-fun m!760955 () Bool)

(assert (=> b!514959 m!760955))

(declare-fun m!760957 () Bool)

(assert (=> b!514956 m!760957))

(declare-fun m!760959 () Bool)

(assert (=> b!514956 m!760959))

(check-sat (not b_next!13491) (not b!514964) b_and!50929 (not b!514954) (not bm!37450) (not b!514956) tp_is_empty!2581 (not b!514959) (not b!514960) (not b_next!13489) b_and!50927 (not bm!37451) (not b!514965) b_and!50925 (not b_next!13487) (not mapNonEmpty!1942) (not b!514957))
(check-sat (not b_next!13491) b_and!50929 (not b_next!13489) b_and!50927 b_and!50925 (not b_next!13487))
(get-model)

(declare-fun d!184355 () Bool)

(assert (=> d!184355 (forall!1381 (toList!398 lt!213387) p!6060)))

(declare-fun lt!213397 () Unit!8486)

(declare-fun choose!3669 (List!4706 List!4706 Int) Unit!8486)

(assert (=> d!184355 (= lt!213397 (choose!3669 (toList!398 lt!213387) (toList!398 lt!213386) p!6060))))

(assert (=> d!184355 (invariantList!60 (toList!398 lt!213387))))

(assert (=> d!184355 (= (lemmaForallSubset!9 (toList!398 lt!213387) (toList!398 lt!213386) p!6060) lt!213397)))

(declare-fun bs!59449 () Bool)

(assert (= bs!59449 d!184355))

(assert (=> bs!59449 m!760939))

(declare-fun m!760961 () Bool)

(assert (=> bs!59449 m!760961))

(declare-fun m!760963 () Bool)

(assert (=> bs!59449 m!760963))

(assert (=> bm!37450 d!184355))

(declare-fun d!184357 () Bool)

(assert (=> d!184357 (forall!1381 (toList!398 lt!213389) p!6060)))

(declare-fun lt!213398 () Unit!8486)

(assert (=> d!184357 (= lt!213398 (choose!3669 (toList!398 lt!213389) (toList!398 lt!213387) p!6060))))

(assert (=> d!184357 (invariantList!60 (toList!398 lt!213389))))

(assert (=> d!184357 (= (lemmaForallSubset!9 (toList!398 lt!213389) (toList!398 lt!213387) p!6060) lt!213398)))

(declare-fun bs!59450 () Bool)

(assert (= bs!59450 d!184357))

(assert (=> bs!59450 m!760955))

(declare-fun m!760965 () Bool)

(assert (=> bs!59450 m!760965))

(assert (=> bs!59450 m!760957))

(assert (=> b!514959 d!184357))

(declare-fun d!184359 () Bool)

(declare-fun res!218389 () Bool)

(declare-fun e!307979 () Bool)

(assert (=> d!184359 (=> res!218389 e!307979)))

(assert (=> d!184359 (= res!218389 ((_ is Nil!4696) (toList!398 lt!213389)))))

(assert (=> d!184359 (= (forall!1381 (toList!398 lt!213389) p!6060) e!307979)))

(declare-fun b!514970 () Bool)

(declare-fun e!307980 () Bool)

(assert (=> b!514970 (= e!307979 e!307980)))

(declare-fun res!218390 () Bool)

(assert (=> b!514970 (=> (not res!218390) (not e!307980))))

(declare-fun dynLambda!2969 (Int tuple2!5698) Bool)

(assert (=> b!514970 (= res!218390 (dynLambda!2969 p!6060 (h!10093 (toList!398 lt!213389))))))

(declare-fun b!514971 () Bool)

(assert (=> b!514971 (= e!307980 (forall!1381 (t!73240 (toList!398 lt!213389)) p!6060))))

(assert (= (and d!184359 (not res!218389)) b!514970))

(assert (= (and b!514970 res!218390) b!514971))

(declare-fun b_lambda!19989 () Bool)

(assert (=> (not b_lambda!19989) (not b!514970)))

(declare-fun t!73242 () Bool)

(declare-fun tb!47133 () Bool)

(assert (=> (and start!46652 (= p!6060 p!6060) t!73242) tb!47133))

(declare-fun result!52160 () Bool)

(assert (=> tb!47133 (= result!52160 true)))

(assert (=> b!514970 t!73242))

(declare-fun b_and!50931 () Bool)

(assert (= b_and!50925 (and (=> t!73242 result!52160) b_and!50931)))

(declare-fun m!760967 () Bool)

(assert (=> b!514970 m!760967))

(declare-fun m!760969 () Bool)

(assert (=> b!514971 m!760969))

(assert (=> b!514959 d!184359))

(declare-fun d!184361 () Bool)

(declare-fun res!218391 () Bool)

(declare-fun e!307981 () Bool)

(assert (=> d!184361 (=> res!218391 e!307981)))

(assert (=> d!184361 (= res!218391 ((_ is Nil!4696) (toList!398 lt!213386)))))

(assert (=> d!184361 (= (forall!1381 (toList!398 lt!213386) p!6060) e!307981)))

(declare-fun b!514972 () Bool)

(declare-fun e!307982 () Bool)

(assert (=> b!514972 (= e!307981 e!307982)))

(declare-fun res!218392 () Bool)

(assert (=> b!514972 (=> (not res!218392) (not e!307982))))

(assert (=> b!514972 (= res!218392 (dynLambda!2969 p!6060 (h!10093 (toList!398 lt!213386))))))

(declare-fun b!514973 () Bool)

(assert (=> b!514973 (= e!307982 (forall!1381 (t!73240 (toList!398 lt!213386)) p!6060))))

(assert (= (and d!184361 (not res!218391)) b!514972))

(assert (= (and b!514972 res!218392) b!514973))

(declare-fun b_lambda!19991 () Bool)

(assert (=> (not b_lambda!19991) (not b!514972)))

(declare-fun t!73244 () Bool)

(declare-fun tb!47135 () Bool)

(assert (=> (and start!46652 (= p!6060 p!6060) t!73244) tb!47135))

(declare-fun result!52162 () Bool)

(assert (=> tb!47135 (= result!52162 true)))

(assert (=> b!514972 t!73244))

(declare-fun b_and!50933 () Bool)

(assert (= b_and!50931 (and (=> t!73244 result!52162) b_and!50933)))

(declare-fun m!760971 () Bool)

(assert (=> b!514972 m!760971))

(declare-fun m!760973 () Bool)

(assert (=> b!514973 m!760973))

(assert (=> b!514954 d!184361))

(declare-fun d!184363 () Bool)

(declare-fun lt!213401 () ListMap!163)

(assert (=> d!184363 (invariantList!60 (toList!398 lt!213401))))

(declare-datatypes ((tuple2!5702 0))(
  ( (tuple2!5703 (_1!3067 (_ BitVec 64)) (_2!3067 List!4706)) )
))
(declare-datatypes ((List!4707 0))(
  ( (Nil!4697) (Cons!4697 (h!10094 tuple2!5702) (t!73247 List!4707)) )
))
(declare-fun extractMap!14 (List!4707) ListMap!163)

(declare-datatypes ((ListLongMap!65 0))(
  ( (ListLongMap!66 (toList!399 List!4707)) )
))
(declare-fun map!1010 (MutLongMap!505) ListLongMap!65)

(assert (=> d!184363 (= lt!213401 (extractMap!14 (toList!399 (map!1010 (v!15728 (underlying!1190 hm!65))))))))

(assert (=> d!184363 (valid!461 hm!65)))

(assert (=> d!184363 (= (map!1009 hm!65) lt!213401)))

(declare-fun bs!59451 () Bool)

(assert (= bs!59451 d!184363))

(declare-fun m!760975 () Bool)

(assert (=> bs!59451 m!760975))

(declare-fun m!760977 () Bool)

(assert (=> bs!59451 m!760977))

(declare-fun m!760979 () Bool)

(assert (=> bs!59451 m!760979))

(assert (=> bs!59451 m!760941))

(assert (=> b!514954 d!184363))

(declare-fun d!184365 () Bool)

(assert (=> d!184365 (= (array_inv!651 (_keys!796 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65)))))) (bvsge (size!3829 (_keys!796 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!514957 d!184365))

(declare-fun d!184367 () Bool)

(assert (=> d!184367 (= (array_inv!652 (_values!783 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65)))))) (bvsge (size!3828 (_values!783 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!514957 d!184367))

(declare-fun d!184369 () Bool)

(declare-fun res!218393 () Bool)

(declare-fun e!307983 () Bool)

(assert (=> d!184369 (=> res!218393 e!307983)))

(assert (=> d!184369 (= res!218393 ((_ is Nil!4696) (toList!398 lt!213387)))))

(assert (=> d!184369 (= (forall!1381 (toList!398 lt!213387) p!6060) e!307983)))

(declare-fun b!514974 () Bool)

(declare-fun e!307984 () Bool)

(assert (=> b!514974 (= e!307983 e!307984)))

(declare-fun res!218394 () Bool)

(assert (=> b!514974 (=> (not res!218394) (not e!307984))))

(assert (=> b!514974 (= res!218394 (dynLambda!2969 p!6060 (h!10093 (toList!398 lt!213387))))))

(declare-fun b!514975 () Bool)

(assert (=> b!514975 (= e!307984 (forall!1381 (t!73240 (toList!398 lt!213387)) p!6060))))

(assert (= (and d!184369 (not res!218393)) b!514974))

(assert (= (and b!514974 res!218394) b!514975))

(declare-fun b_lambda!19993 () Bool)

(assert (=> (not b_lambda!19993) (not b!514974)))

(declare-fun t!73246 () Bool)

(declare-fun tb!47137 () Bool)

(assert (=> (and start!46652 (= p!6060 p!6060) t!73246) tb!47137))

(declare-fun result!52164 () Bool)

(assert (=> tb!47137 (= result!52164 true)))

(assert (=> b!514974 t!73246))

(declare-fun b_and!50935 () Bool)

(assert (= b_and!50933 (and (=> t!73246 result!52164) b_and!50935)))

(declare-fun m!760981 () Bool)

(assert (=> b!514974 m!760981))

(declare-fun m!760983 () Bool)

(assert (=> b!514975 m!760983))

(assert (=> bm!37451 d!184369))

(declare-fun d!184371 () Bool)

(declare-fun noDuplicatedKeys!10 (List!4706) Bool)

(assert (=> d!184371 (= (invariantList!60 (toList!398 lt!213389)) (noDuplicatedKeys!10 (toList!398 lt!213389)))))

(declare-fun bs!59452 () Bool)

(assert (= bs!59452 d!184371))

(declare-fun m!760985 () Bool)

(assert (=> bs!59452 m!760985))

(assert (=> b!514956 d!184371))

(declare-fun d!184373 () Bool)

(declare-fun lt!213402 () ListMap!163)

(assert (=> d!184373 (invariantList!60 (toList!398 lt!213402))))

(assert (=> d!184373 (= lt!213402 (extractMap!14 (toList!399 (map!1010 (v!15728 (underlying!1190 (_2!3066 lt!213394)))))))))

(assert (=> d!184373 (valid!461 (_2!3066 lt!213394))))

(assert (=> d!184373 (= (map!1009 (_2!3066 lt!213394)) lt!213402)))

(declare-fun bs!59453 () Bool)

(assert (= bs!59453 d!184373))

(declare-fun m!760987 () Bool)

(assert (=> bs!59453 m!760987))

(declare-fun m!760989 () Bool)

(assert (=> bs!59453 m!760989))

(declare-fun m!760991 () Bool)

(assert (=> bs!59453 m!760991))

(assert (=> bs!59453 m!760943))

(assert (=> b!514956 d!184373))

(declare-fun d!184375 () Bool)

(declare-fun res!218399 () Bool)

(declare-fun e!307987 () Bool)

(assert (=> d!184375 (=> (not res!218399) (not e!307987))))

(declare-fun valid!462 (MutLongMap!505) Bool)

(assert (=> d!184375 (= res!218399 (valid!462 (v!15728 (underlying!1190 hm!65))))))

(assert (=> d!184375 (= (valid!461 hm!65) e!307987)))

(declare-fun b!514980 () Bool)

(declare-fun res!218400 () Bool)

(assert (=> b!514980 (=> (not res!218400) (not e!307987))))

(declare-fun lambda!14342 () Int)

(declare-fun forall!1382 (List!4707 Int) Bool)

(assert (=> b!514980 (= res!218400 (forall!1382 (toList!399 (map!1010 (v!15728 (underlying!1190 hm!65)))) lambda!14342))))

(declare-fun b!514981 () Bool)

(declare-fun allKeysSameHashInMap!21 (ListLongMap!65 Hashable!477) Bool)

(assert (=> b!514981 (= e!307987 (allKeysSameHashInMap!21 (map!1010 (v!15728 (underlying!1190 hm!65))) (hashF!2353 hm!65)))))

(assert (= (and d!184375 res!218399) b!514980))

(assert (= (and b!514980 res!218400) b!514981))

(declare-fun m!760993 () Bool)

(assert (=> d!184375 m!760993))

(assert (=> b!514980 m!760977))

(declare-fun m!760995 () Bool)

(assert (=> b!514980 m!760995))

(assert (=> b!514981 m!760977))

(assert (=> b!514981 m!760977))

(declare-fun m!760997 () Bool)

(assert (=> b!514981 m!760997))

(assert (=> b!514964 d!184375))

(declare-fun bs!59454 () Bool)

(declare-fun b!514982 () Bool)

(assert (= bs!59454 (and b!514982 b!514980)))

(declare-fun lambda!14343 () Int)

(assert (=> bs!59454 (= lambda!14343 lambda!14342)))

(declare-fun d!184377 () Bool)

(declare-fun res!218401 () Bool)

(declare-fun e!307988 () Bool)

(assert (=> d!184377 (=> (not res!218401) (not e!307988))))

(assert (=> d!184377 (= res!218401 (valid!462 (v!15728 (underlying!1190 (_2!3066 lt!213394)))))))

(assert (=> d!184377 (= (valid!461 (_2!3066 lt!213394)) e!307988)))

(declare-fun res!218402 () Bool)

(assert (=> b!514982 (=> (not res!218402) (not e!307988))))

(assert (=> b!514982 (= res!218402 (forall!1382 (toList!399 (map!1010 (v!15728 (underlying!1190 (_2!3066 lt!213394))))) lambda!14343))))

(declare-fun b!514983 () Bool)

(assert (=> b!514983 (= e!307988 (allKeysSameHashInMap!21 (map!1010 (v!15728 (underlying!1190 (_2!3066 lt!213394)))) (hashF!2353 (_2!3066 lt!213394))))))

(assert (= (and d!184377 res!218401) b!514982))

(assert (= (and b!514982 res!218402) b!514983))

(declare-fun m!760999 () Bool)

(assert (=> d!184377 m!760999))

(assert (=> b!514982 m!760989))

(declare-fun m!761001 () Bool)

(assert (=> b!514982 m!761001))

(assert (=> b!514983 m!760989))

(assert (=> b!514983 m!760989))

(declare-fun m!761003 () Bool)

(assert (=> b!514983 m!761003))

(assert (=> b!514960 d!184377))

(declare-fun bs!59455 () Bool)

(declare-fun b!515013 () Bool)

(assert (= bs!59455 (and b!515013 b!514980)))

(declare-fun lambda!14350 () Int)

(assert (=> bs!59455 (= lambda!14350 lambda!14342)))

(declare-fun bs!59456 () Bool)

(assert (= bs!59456 (and b!515013 b!514982)))

(assert (=> bs!59456 (= lambda!14350 lambda!14343)))

(declare-fun b!515006 () Bool)

(declare-fun e!308004 () Bool)

(declare-fun lt!213478 () ListLongMap!65)

(declare-datatypes ((tuple2!5704 0))(
  ( (tuple2!5705 (_1!3068 Unit!8486) (_2!3068 MutableMap!477)) )
))
(declare-fun lt!213473 () tuple2!5704)

(assert (=> b!515006 (= e!308004 (allKeysSameHashInMap!21 lt!213478 (hashF!2353 (_2!3068 lt!213473))))))

(declare-fun b!515007 () Bool)

(declare-fun e!308001 () Bool)

(declare-fun e!308005 () Bool)

(assert (=> b!515007 (= e!308001 e!308005)))

(declare-fun c!99834 () Bool)

(declare-fun lt!213488 () tuple2!5700)

(assert (=> b!515007 (= c!99834 (_1!3066 lt!213488))))

(declare-fun bm!37468 () Bool)

(declare-fun call!37480 () ListMap!163)

(assert (=> bm!37468 (= call!37480 (map!1009 (_2!3068 lt!213473)))))

(declare-fun b!515008 () Bool)

(declare-fun call!37478 () Bool)

(assert (=> b!515008 (= e!308005 call!37478)))

(declare-fun c!99835 () Bool)

(declare-fun lt!213475 () ListLongMap!65)

(declare-fun lt!213472 () ListLongMap!65)

(declare-fun call!37474 () ListMap!163)

(declare-fun bm!37469 () Bool)

(assert (=> bm!37469 (= call!37474 (extractMap!14 (ite c!99835 (toList!399 lt!213472) (toList!399 lt!213475))))))

(declare-fun bm!37470 () Bool)

(declare-fun call!37476 () Bool)

(assert (=> bm!37470 (= call!37476 (valid!461 (_2!3068 lt!213473)))))

(declare-fun call!37475 () ListLongMap!65)

(declare-fun bm!37471 () Bool)

(assert (=> bm!37471 (= call!37475 (map!1010 (ite c!99835 (v!15728 (underlying!1190 hm!65)) (v!15728 (underlying!1190 (_2!3068 lt!213473))))))))

(declare-fun b!515009 () Bool)

(declare-fun lt!213492 () ListMap!163)

(assert (=> b!515009 (= call!37480 lt!213492)))

(declare-fun lt!213466 () Unit!8486)

(declare-fun Unit!8488 () Unit!8486)

(assert (=> b!515009 (= lt!213466 Unit!8488)))

(assert (=> b!515009 call!37476))

(declare-fun e!308006 () Unit!8486)

(declare-fun Unit!8489 () Unit!8486)

(assert (=> b!515009 (= e!308006 Unit!8489)))

(declare-fun b!515010 () Bool)

(declare-fun e!308003 () ListMap!163)

(declare-fun call!37477 () ListMap!163)

(assert (=> b!515010 (= e!308003 call!37477)))

(declare-fun b!515011 () Bool)

(declare-fun call!37479 () ListMap!163)

(declare-fun eq!20 (ListMap!163 ListMap!163) Bool)

(assert (=> b!515011 (eq!20 call!37480 call!37479)))

(declare-fun lt!213464 () Unit!8486)

(declare-fun lt!213463 () Unit!8486)

(assert (=> b!515011 (= lt!213464 lt!213463)))

(declare-fun lt!213467 () List!4706)

(declare-fun lt!213486 () (_ BitVec 64))

(declare-fun +!17 (ListLongMap!65 tuple2!5702) ListLongMap!65)

(assert (=> b!515011 (eq!20 (extractMap!14 (toList!399 (+!17 lt!213475 (tuple2!5703 lt!213486 lt!213467)))) (-!23 call!37474 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!6 (ListLongMap!65 (_ BitVec 64) List!4706 K!1377 Hashable!477) Unit!8486)

(assert (=> b!515011 (= lt!213463 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!6 lt!213475 lt!213486 lt!213467 k0!1740 (hashF!2353 (_2!3068 lt!213473))))))

(declare-fun lt!213471 () Unit!8486)

(declare-fun Unit!8490 () Unit!8486)

(assert (=> b!515011 (= lt!213471 Unit!8490)))

(declare-fun contains!1067 (ListMap!163 K!1377) Bool)

(assert (=> b!515011 (contains!1067 lt!213492 k0!1740)))

(declare-fun lt!213476 () Unit!8486)

(declare-fun Unit!8491 () Unit!8486)

(assert (=> b!515011 (= lt!213476 Unit!8491)))

(assert (=> b!515011 call!37476))

(declare-fun lt!213484 () Unit!8486)

(declare-fun Unit!8492 () Unit!8486)

(assert (=> b!515011 (= lt!213484 Unit!8492)))

(assert (=> b!515011 (allKeysSameHashInMap!21 call!37475 (hashF!2353 (_2!3068 lt!213473)))))

(declare-fun lt!213485 () Unit!8486)

(declare-fun Unit!8493 () Unit!8486)

(assert (=> b!515011 (= lt!213485 Unit!8493)))

(assert (=> b!515011 (forall!1382 (toList!399 call!37475) lambda!14350)))

(declare-fun lt!213489 () Unit!8486)

(declare-fun lt!213474 () Unit!8486)

(assert (=> b!515011 (= lt!213489 lt!213474)))

(assert (=> b!515011 e!308004))

(declare-fun res!218410 () Bool)

(assert (=> b!515011 (=> (not res!218410) (not e!308004))))

(assert (=> b!515011 (= res!218410 (forall!1382 (toList!399 lt!213478) lambda!14350))))

(assert (=> b!515011 (= lt!213478 (+!17 lt!213475 (tuple2!5703 lt!213486 lt!213467)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!8 (ListLongMap!65 (_ BitVec 64) List!4706 Hashable!477) Unit!8486)

(assert (=> b!515011 (= lt!213474 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!8 lt!213475 lt!213486 lt!213467 (hashF!2353 (_2!3068 lt!213473))))))

(declare-fun lt!213482 () Unit!8486)

(declare-fun lt!213477 () Unit!8486)

(assert (=> b!515011 (= lt!213482 lt!213477)))

(declare-fun lt!213469 () List!4706)

(declare-fun allKeysSameHash!9 (List!4706 (_ BitVec 64) Hashable!477) Bool)

(declare-fun removePairForKey!8 (List!4706 K!1377) List!4706)

(assert (=> b!515011 (allKeysSameHash!9 (removePairForKey!8 lt!213469 k0!1740) lt!213486 (hashF!2353 (_2!3068 lt!213473)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!8 (List!4706 K!1377 (_ BitVec 64) Hashable!477) Unit!8486)

(assert (=> b!515011 (= lt!213477 (lemmaRemovePairForKeyPreservesHash!8 lt!213469 k0!1740 lt!213486 (hashF!2353 (_2!3068 lt!213473))))))

(declare-fun lt!213479 () Unit!8486)

(declare-fun lt!213480 () Unit!8486)

(assert (=> b!515011 (= lt!213479 lt!213480)))

(assert (=> b!515011 (allKeysSameHash!9 lt!213469 lt!213486 (hashF!2353 (_2!3068 lt!213473)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!8 (List!4707 (_ BitVec 64) List!4706 Hashable!477) Unit!8486)

(assert (=> b!515011 (= lt!213480 (lemmaInLongMapAllKeySameHashThenForTuple!8 (toList!399 lt!213475) lt!213486 lt!213469 (hashF!2353 (_2!3068 lt!213473))))))

(declare-fun Unit!8494 () Unit!8486)

(assert (=> b!515011 (= e!308006 Unit!8494)))

(declare-fun b!515012 () Bool)

(assert (=> b!515012 (= e!308003 (-!23 call!37477 k0!1740))))

(declare-fun e!308002 () tuple2!5700)

(declare-datatypes ((tuple2!5706 0))(
  ( (tuple2!5707 (_1!3069 Bool) (_2!3069 MutLongMap!505)) )
))
(declare-fun lt!213468 () tuple2!5706)

(assert (=> b!515013 (= e!308002 (tuple2!5701 (_1!3069 lt!213468) (_2!3068 lt!213473)))))

(declare-fun hash!507 (Hashable!477 K!1377) (_ BitVec 64))

(assert (=> b!515013 (= lt!213486 (hash!507 (hashF!2353 hm!65) k0!1740))))

(declare-fun apply!1176 (MutLongMap!505 (_ BitVec 64)) List!4706)

(assert (=> b!515013 (= lt!213469 (apply!1176 (v!15728 (underlying!1190 hm!65)) lt!213486))))

(declare-fun lt!213487 () Unit!8486)

(declare-fun forallContained!439 (List!4707 Int tuple2!5702) Unit!8486)

(assert (=> b!515013 (= lt!213487 (forallContained!439 (toList!399 (map!1010 (v!15728 (underlying!1190 hm!65)))) lambda!14350 (tuple2!5703 lt!213486 (apply!1176 (v!15728 (underlying!1190 hm!65)) lt!213486))))))

(assert (=> b!515013 (= lt!213492 (map!1009 hm!65))))

(assert (=> b!515013 (= lt!213475 (map!1010 (v!15728 (underlying!1190 hm!65))))))

(assert (=> b!515013 (= lt!213467 (removePairForKey!8 lt!213469 k0!1740))))

(declare-fun update!47 (MutLongMap!505 (_ BitVec 64) List!4706) tuple2!5706)

(assert (=> b!515013 (= lt!213468 (update!47 (v!15728 (underlying!1190 hm!65)) lt!213486 lt!213467))))

(declare-fun lt!213491 () Bool)

(declare-fun Unit!8495 () Unit!8486)

(declare-fun Unit!8496 () Unit!8486)

(assert (=> b!515013 (= lt!213473 (ite (and (_1!3069 lt!213468) lt!213491) (tuple2!5705 Unit!8495 (HashMap!477 (Cell!1964 (_2!3069 lt!213468)) (hashF!2353 hm!65) (bvsub (_size!1120 hm!65) #b00000000000000000000000000000001) (defaultValue!626 hm!65))) (tuple2!5705 Unit!8496 (HashMap!477 (Cell!1964 (_2!3069 lt!213468)) (hashF!2353 hm!65) (_size!1120 hm!65) (defaultValue!626 hm!65)))))))

(declare-fun lt!213483 () Unit!8486)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!8 (List!4706 K!1377) Unit!8486)

(assert (=> b!515013 (= lt!213483 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!8 lt!213469 k0!1740))))

(declare-fun noDuplicateKeys!10 (List!4706) Bool)

(assert (=> b!515013 (noDuplicateKeys!10 (removePairForKey!8 lt!213469 k0!1740))))

(declare-fun lt!213470 () Unit!8486)

(assert (=> b!515013 (= lt!213470 lt!213483)))

(declare-fun c!99836 () Bool)

(assert (=> b!515013 (= c!99836 (_1!3069 lt!213468))))

(declare-fun lt!213490 () Unit!8486)

(assert (=> b!515013 (= lt!213490 e!308006)))

(declare-fun bm!37472 () Bool)

(declare-fun call!37473 () ListMap!163)

(assert (=> bm!37472 (= call!37473 (map!1009 (_2!3066 lt!213488)))))

(declare-fun b!515014 () Bool)

(declare-fun res!218409 () Bool)

(assert (=> b!515014 (=> (not res!218409) (not e!308001))))

(assert (=> b!515014 (= res!218409 (valid!461 (_2!3066 lt!213488)))))

(declare-fun bm!37473 () Bool)

(assert (=> bm!37473 (= call!37477 (map!1009 hm!65))))

(declare-fun b!515015 () Bool)

(assert (=> b!515015 (= e!308005 call!37478)))

(declare-fun d!184379 () Bool)

(assert (=> d!184379 e!308001))

(declare-fun res!218411 () Bool)

(assert (=> d!184379 (=> (not res!218411) (not e!308001))))

(assert (=> d!184379 (= res!218411 ((_ is HashMap!477) (_2!3066 lt!213488)))))

(assert (=> d!184379 (= lt!213488 e!308002)))

(assert (=> d!184379 (= c!99835 (not lt!213491))))

(declare-fun contains!1068 (MutableMap!477 K!1377) Bool)

(assert (=> d!184379 (= lt!213491 (contains!1068 hm!65 k0!1740))))

(assert (=> d!184379 (valid!461 hm!65)))

(assert (=> d!184379 (= (remove!26 hm!65 k0!1740) lt!213488)))

(declare-fun b!515016 () Bool)

(assert (=> b!515016 (= e!308002 (tuple2!5701 true hm!65))))

(assert (=> b!515016 (= lt!213472 call!37475)))

(declare-fun lt!213465 () Unit!8486)

(declare-fun lemmaRemoveNotContainedDoesNotChange!6 (ListLongMap!65 K!1377 Hashable!477) Unit!8486)

(assert (=> b!515016 (= lt!213465 (lemmaRemoveNotContainedDoesNotChange!6 lt!213472 k0!1740 (hashF!2353 hm!65)))))

(assert (=> b!515016 (= call!37474 call!37479)))

(declare-fun lt!213481 () Unit!8486)

(assert (=> b!515016 (= lt!213481 lt!213465)))

(declare-fun bm!37474 () Bool)

(assert (=> bm!37474 (= call!37478 (eq!20 call!37473 e!308003))))

(declare-fun c!99837 () Bool)

(assert (=> bm!37474 (= c!99837 c!99834)))

(declare-fun bm!37475 () Bool)

(assert (=> bm!37475 (= call!37479 (-!23 (ite c!99835 call!37474 lt!213492) k0!1740))))

(assert (= (and d!184379 c!99835) b!515016))

(assert (= (and d!184379 (not c!99835)) b!515013))

(assert (= (and b!515013 c!99836) b!515011))

(assert (= (and b!515013 (not c!99836)) b!515009))

(assert (= (and b!515011 res!218410) b!515006))

(assert (= (or b!515011 b!515009) bm!37470))

(assert (= (or b!515011 b!515009) bm!37468))

(assert (= (or b!515016 b!515011) bm!37471))

(assert (= (or b!515016 b!515011) bm!37469))

(assert (= (or b!515016 b!515011) bm!37475))

(assert (= (and d!184379 res!218411) b!515014))

(assert (= (and b!515014 res!218409) b!515007))

(assert (= (and b!515007 c!99834) b!515015))

(assert (= (and b!515007 (not c!99834)) b!515008))

(assert (= (or b!515015 b!515008) bm!37473))

(assert (= (or b!515015 b!515008) bm!37472))

(assert (= (or b!515015 b!515008) bm!37474))

(assert (= (and bm!37474 c!99837) b!515012))

(assert (= (and bm!37474 (not c!99837)) b!515010))

(assert (=> b!515013 m!760977))

(declare-fun m!761005 () Bool)

(assert (=> b!515013 m!761005))

(declare-fun m!761007 () Bool)

(assert (=> b!515013 m!761007))

(declare-fun m!761009 () Bool)

(assert (=> b!515013 m!761009))

(assert (=> b!515013 m!761005))

(declare-fun m!761011 () Bool)

(assert (=> b!515013 m!761011))

(declare-fun m!761013 () Bool)

(assert (=> b!515013 m!761013))

(declare-fun m!761015 () Bool)

(assert (=> b!515013 m!761015))

(assert (=> b!515013 m!760951))

(declare-fun m!761017 () Bool)

(assert (=> b!515013 m!761017))

(declare-fun m!761019 () Bool)

(assert (=> bm!37470 m!761019))

(declare-fun m!761021 () Bool)

(assert (=> b!515012 m!761021))

(declare-fun m!761023 () Bool)

(assert (=> bm!37475 m!761023))

(declare-fun m!761025 () Bool)

(assert (=> b!515016 m!761025))

(assert (=> b!515011 m!761005))

(declare-fun m!761027 () Bool)

(assert (=> b!515011 m!761027))

(declare-fun m!761029 () Bool)

(assert (=> b!515011 m!761029))

(declare-fun m!761031 () Bool)

(assert (=> b!515011 m!761031))

(declare-fun m!761033 () Bool)

(assert (=> b!515011 m!761033))

(declare-fun m!761035 () Bool)

(assert (=> b!515011 m!761035))

(declare-fun m!761037 () Bool)

(assert (=> b!515011 m!761037))

(assert (=> b!515011 m!761029))

(declare-fun m!761039 () Bool)

(assert (=> b!515011 m!761039))

(declare-fun m!761041 () Bool)

(assert (=> b!515011 m!761041))

(declare-fun m!761043 () Bool)

(assert (=> b!515011 m!761043))

(declare-fun m!761045 () Bool)

(assert (=> b!515011 m!761045))

(declare-fun m!761047 () Bool)

(assert (=> b!515011 m!761047))

(assert (=> b!515011 m!761027))

(assert (=> b!515011 m!761005))

(declare-fun m!761049 () Bool)

(assert (=> b!515011 m!761049))

(declare-fun m!761051 () Bool)

(assert (=> b!515011 m!761051))

(declare-fun m!761053 () Bool)

(assert (=> b!515011 m!761053))

(declare-fun m!761055 () Bool)

(assert (=> b!515011 m!761055))

(declare-fun m!761057 () Bool)

(assert (=> bm!37468 m!761057))

(declare-fun m!761059 () Bool)

(assert (=> d!184379 m!761059))

(assert (=> d!184379 m!760941))

(declare-fun m!761061 () Bool)

(assert (=> bm!37469 m!761061))

(declare-fun m!761063 () Bool)

(assert (=> bm!37471 m!761063))

(declare-fun m!761065 () Bool)

(assert (=> bm!37474 m!761065))

(assert (=> bm!37473 m!760951))

(declare-fun m!761067 () Bool)

(assert (=> bm!37472 m!761067))

(declare-fun m!761069 () Bool)

(assert (=> b!515014 m!761069))

(declare-fun m!761071 () Bool)

(assert (=> b!515006 m!761071))

(assert (=> b!514960 d!184379))

(declare-fun d!184381 () Bool)

(declare-fun e!308009 () Bool)

(assert (=> d!184381 e!308009))

(declare-fun res!218414 () Bool)

(assert (=> d!184381 (=> (not res!218414) (not e!308009))))

(declare-fun lt!213495 () ListMap!163)

(assert (=> d!184381 (= res!218414 (not (contains!1067 lt!213495 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!6 (List!4706 K!1377) List!4706)

(assert (=> d!184381 (= lt!213495 (ListMap!164 (removePresrvNoDuplicatedKeys!6 (toList!398 lt!213386) k0!1740)))))

(assert (=> d!184381 (= (-!23 lt!213386 k0!1740) lt!213495)))

(declare-fun b!515019 () Bool)

(declare-datatypes ((List!4708 0))(
  ( (Nil!4698) (Cons!4698 (h!10095 K!1377) (t!73248 List!4708)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!814 (List!4708) (InoxSet K!1377))

(declare-fun keys!1831 (ListMap!163) List!4708)

(assert (=> b!515019 (= e!308009 (= ((_ map and) (content!814 (keys!1831 lt!213386)) ((_ map not) (store ((as const (Array K!1377 Bool)) false) k0!1740 true))) (content!814 (keys!1831 lt!213495))))))

(assert (= (and d!184381 res!218414) b!515019))

(declare-fun m!761073 () Bool)

(assert (=> d!184381 m!761073))

(declare-fun m!761075 () Bool)

(assert (=> d!184381 m!761075))

(declare-fun m!761077 () Bool)

(assert (=> b!515019 m!761077))

(assert (=> b!515019 m!761077))

(declare-fun m!761079 () Bool)

(assert (=> b!515019 m!761079))

(declare-fun m!761081 () Bool)

(assert (=> b!515019 m!761081))

(declare-fun m!761083 () Bool)

(assert (=> b!515019 m!761083))

(declare-fun m!761085 () Bool)

(assert (=> b!515019 m!761085))

(assert (=> b!515019 m!761083))

(assert (=> b!514960 d!184381))

(declare-fun b!515026 () Bool)

(declare-fun tp!160658 () Bool)

(declare-fun e!308015 () Bool)

(declare-fun tp_is_empty!2583 () Bool)

(assert (=> b!515026 (= e!308015 (and tp_is_empty!2581 tp_is_empty!2583 tp!160658))))

(declare-fun mapIsEmpty!1945 () Bool)

(declare-fun mapRes!1945 () Bool)

(assert (=> mapIsEmpty!1945 mapRes!1945))

(declare-fun mapNonEmpty!1945 () Bool)

(declare-fun tp!160659 () Bool)

(assert (=> mapNonEmpty!1945 (= mapRes!1945 (and tp!160659 e!308015))))

(declare-fun mapValue!1945 () List!4706)

(declare-fun mapKey!1945 () (_ BitVec 32))

(declare-fun mapRest!1945 () (Array (_ BitVec 32) List!4706))

(assert (=> mapNonEmpty!1945 (= mapRest!1942 (store mapRest!1945 mapKey!1945 mapValue!1945))))

(declare-fun e!308014 () Bool)

(declare-fun b!515027 () Bool)

(declare-fun tp!160660 () Bool)

(assert (=> b!515027 (= e!308014 (and tp_is_empty!2581 tp_is_empty!2583 tp!160660))))

(declare-fun condMapEmpty!1945 () Bool)

(declare-fun mapDefault!1945 () List!4706)

(assert (=> mapNonEmpty!1942 (= condMapEmpty!1945 (= mapRest!1942 ((as const (Array (_ BitVec 32) List!4706)) mapDefault!1945)))))

(assert (=> mapNonEmpty!1942 (= tp!160644 (and e!308014 mapRes!1945))))

(assert (= (and mapNonEmpty!1942 condMapEmpty!1945) mapIsEmpty!1945))

(assert (= (and mapNonEmpty!1942 (not condMapEmpty!1945)) mapNonEmpty!1945))

(assert (= (and mapNonEmpty!1945 ((_ is Cons!4696) mapValue!1945)) b!515026))

(assert (= (and mapNonEmpty!1942 ((_ is Cons!4696) mapDefault!1945)) b!515027))

(declare-fun m!761087 () Bool)

(assert (=> mapNonEmpty!1945 m!761087))

(declare-fun tp!160663 () Bool)

(declare-fun b!515032 () Bool)

(declare-fun e!308018 () Bool)

(assert (=> b!515032 (= e!308018 (and tp_is_empty!2581 tp_is_empty!2583 tp!160663))))

(assert (=> mapNonEmpty!1942 (= tp!160650 e!308018)))

(assert (= (and mapNonEmpty!1942 ((_ is Cons!4696) mapValue!1942)) b!515032))

(declare-fun tp!160664 () Bool)

(declare-fun e!308019 () Bool)

(declare-fun b!515033 () Bool)

(assert (=> b!515033 (= e!308019 (and tp_is_empty!2581 tp_is_empty!2583 tp!160664))))

(assert (=> b!514957 (= tp!160646 e!308019)))

(assert (= (and b!514957 ((_ is Cons!4696) (zeroValue!761 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65))))))) b!515033))

(declare-fun e!308020 () Bool)

(declare-fun tp!160665 () Bool)

(declare-fun b!515034 () Bool)

(assert (=> b!515034 (= e!308020 (and tp_is_empty!2581 tp_is_empty!2583 tp!160665))))

(assert (=> b!514957 (= tp!160651 e!308020)))

(assert (= (and b!514957 ((_ is Cons!4696) (minValue!761 (v!15727 (underlying!1189 (v!15728 (underlying!1190 hm!65))))))) b!515034))

(declare-fun tp!160666 () Bool)

(declare-fun b!515035 () Bool)

(declare-fun e!308021 () Bool)

(assert (=> b!515035 (= e!308021 (and tp_is_empty!2581 tp_is_empty!2583 tp!160666))))

(assert (=> b!514965 (= tp!160648 e!308021)))

(assert (= (and b!514965 ((_ is Cons!4696) mapDefault!1942)) b!515035))

(declare-fun b_lambda!19995 () Bool)

(assert (= b_lambda!19993 (or (and start!46652 b_free!13487) b_lambda!19995)))

(declare-fun b_lambda!19997 () Bool)

(assert (= b_lambda!19991 (or (and start!46652 b_free!13487) b_lambda!19997)))

(declare-fun b_lambda!19999 () Bool)

(assert (= b_lambda!19989 (or (and start!46652 b_free!13487) b_lambda!19999)))

(check-sat (not d!184377) (not b!514983) (not b!515012) (not bm!37469) (not bm!37475) tp_is_empty!2581 (not b!515016) (not b!515026) (not b!514980) (not bm!37472) (not d!184375) (not mapNonEmpty!1945) (not bm!37471) (not b!514982) (not b!515013) (not b_next!13489) b_and!50927 (not bm!37470) (not b!515014) (not b_next!13491) (not b!515019) (not b!515035) (not d!184373) (not b_lambda!19995) (not d!184381) (not d!184363) b_and!50929 (not b_lambda!19997) (not b!515033) (not b!514975) (not bm!37468) (not d!184357) (not d!184371) (not d!184355) (not d!184379) (not b!515006) (not bm!37474) (not b!515034) b_and!50935 (not b_lambda!19999) (not b!514981) (not b!514971) tp_is_empty!2583 (not b!515011) (not b_next!13487) (not b!515027) (not bm!37473) (not b!515032) (not b!514973))
(check-sat (not b_next!13491) b_and!50929 b_and!50935 (not b_next!13487) (not b_next!13489) b_and!50927)
