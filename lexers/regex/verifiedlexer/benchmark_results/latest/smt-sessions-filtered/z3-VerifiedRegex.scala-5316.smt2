; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272020 () Bool)

(assert start!272020)

(declare-fun b!2810944 () Bool)

(declare-fun b_free!80277 () Bool)

(declare-fun b_next!80981 () Bool)

(assert (=> b!2810944 (= b_free!80277 (not b_next!80981))))

(declare-fun tp!897680 () Bool)

(declare-fun b_and!205567 () Bool)

(assert (=> b!2810944 (= tp!897680 b_and!205567)))

(declare-fun b!2810939 () Bool)

(declare-fun b_free!80279 () Bool)

(declare-fun b_next!80983 () Bool)

(assert (=> b!2810939 (= b_free!80279 (not b_next!80983))))

(declare-fun tp!897683 () Bool)

(declare-fun b_and!205569 () Bool)

(assert (=> b!2810939 (= tp!897683 b_and!205569)))

(declare-fun b!2810932 () Bool)

(declare-fun e!1777733 () Bool)

(declare-fun e!1777736 () Bool)

(assert (=> b!2810932 (= e!1777733 e!1777736)))

(declare-fun b!2810933 () Bool)

(declare-fun res!1170336 () Bool)

(declare-fun e!1777732 () Bool)

(assert (=> b!2810933 (=> (not res!1170336) (not e!1777732))))

(declare-datatypes ((K!6377 0))(
  ( (K!6378 (val!10319 Int)) )
))
(declare-datatypes ((V!6579 0))(
  ( (V!6580 (val!10320 Int)) )
))
(declare-datatypes ((tuple2!33348 0))(
  ( (tuple2!33349 (_1!19767 K!6377) (_2!19767 V!6579)) )
))
(declare-datatypes ((List!32925 0))(
  ( (Nil!32823) (Cons!32823 (h!38243 tuple2!33348) (t!229873 List!32925)) )
))
(declare-datatypes ((array!14463 0))(
  ( (array!14464 (arr!6444 (Array (_ BitVec 32) List!32925)) (size!25593 (_ BitVec 32))) )
))
(declare-datatypes ((array!14465 0))(
  ( (array!14466 (arr!6445 (Array (_ BitVec 32) (_ BitVec 64))) (size!25594 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8136 0))(
  ( (LongMapFixedSize!8137 (defaultEntry!4453 Int) (mask!9953 (_ BitVec 32)) (extraKeys!4317 (_ BitVec 32)) (zeroValue!4327 List!32925) (minValue!4327 List!32925) (_size!8179 (_ BitVec 32)) (_keys!4368 array!14465) (_values!4349 array!14463) (_vacant!4129 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16081 0))(
  ( (Cell!16082 (v!34240 LongMapFixedSize!8136)) )
))
(declare-datatypes ((MutLongMap!4068 0))(
  ( (LongMap!4068 (underlying!8343 Cell!16081)) (MutLongMapExt!4067 (__x!21958 Int)) )
))
(declare-datatypes ((Cell!16083 0))(
  ( (Cell!16084 (v!34241 MutLongMap!4068)) )
))
(declare-datatypes ((Hashable!3984 0))(
  ( (HashableExt!3983 (__x!21959 Int)) )
))
(declare-datatypes ((MutableMap!3974 0))(
  ( (MutableMapExt!3973 (__x!21960 Int)) (HashMap!3974 (underlying!8344 Cell!16083) (hashF!6016 Hashable!3984) (_size!8180 (_ BitVec 32)) (defaultValue!4145 Int)) )
))
(declare-fun thiss!47942 () MutableMap!3974)

(declare-fun valid!3186 (MutableMap!3974) Bool)

(assert (=> b!2810933 (= res!1170336 (valid!3186 thiss!47942))))

(declare-fun b!2810934 () Bool)

(declare-fun e!1777737 () Bool)

(declare-fun tp!897684 () Bool)

(declare-fun mapRes!18476 () Bool)

(assert (=> b!2810934 (= e!1777737 (and tp!897684 mapRes!18476))))

(declare-fun condMapEmpty!18476 () Bool)

(declare-fun mapDefault!18476 () List!32925)

(assert (=> b!2810934 (= condMapEmpty!18476 (= (arr!6444 (_values!4349 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))) ((as const (Array (_ BitVec 32) List!32925)) mapDefault!18476)))))

(declare-fun bm!183015 () Bool)

(declare-datatypes ((ListMap!1277 0))(
  ( (ListMap!1278 (toList!1896 List!32925)) )
))
(declare-fun call!183021 () ListMap!1277)

(declare-datatypes ((tuple2!33350 0))(
  ( (tuple2!33351 (_1!19768 Bool) (_2!19768 MutableMap!3974)) )
))
(declare-fun lt!1004124 () tuple2!33350)

(declare-fun abstractMap!124 (MutableMap!3974) ListMap!1277)

(assert (=> bm!183015 (= call!183021 (abstractMap!124 (_2!19768 lt!1004124)))))

(declare-fun res!1170335 () Bool)

(assert (=> start!272020 (=> (not res!1170335) (not e!1777732))))

(get-info :version)

(assert (=> start!272020 (= res!1170335 ((_ is MutableMapExt!3973) thiss!47942))))

(assert (=> start!272020 e!1777732))

(declare-fun e!1777735 () Bool)

(assert (=> start!272020 e!1777735))

(declare-fun tp_is_empty!14363 () Bool)

(assert (=> start!272020 tp_is_empty!14363))

(declare-fun b!2810935 () Bool)

(declare-fun e!1777729 () Bool)

(declare-fun call!183022 () Bool)

(assert (=> b!2810935 (= e!1777729 call!183022)))

(declare-fun bm!183016 () Bool)

(declare-fun e!1777738 () ListMap!1277)

(declare-fun eq!75 (ListMap!1277 ListMap!1277) Bool)

(assert (=> bm!183016 (= call!183022 (eq!75 call!183021 e!1777738))))

(declare-fun c!455365 () Bool)

(declare-fun c!455364 () Bool)

(assert (=> bm!183016 (= c!455365 c!455364)))

(declare-fun b!2810936 () Bool)

(declare-fun e!1777734 () Bool)

(assert (=> b!2810936 (= e!1777734 e!1777729)))

(assert (=> b!2810936 (= c!455364 (_1!19768 lt!1004124))))

(declare-fun b!2810937 () Bool)

(assert (=> b!2810937 (= e!1777732 (not e!1777734))))

(declare-fun res!1170334 () Bool)

(assert (=> b!2810937 (=> (not res!1170334) (not e!1777734))))

(assert (=> b!2810937 (= res!1170334 (valid!3186 (_2!19768 lt!1004124)))))

(assert (=> b!2810937 ((_ is MutableMapExt!3973) (_2!19768 lt!1004124))))

(declare-fun key!7271 () K!6377)

(declare-fun choose!16572 (MutableMap!3974 K!6377) tuple2!33350)

(assert (=> b!2810937 (= lt!1004124 (choose!16572 thiss!47942 key!7271))))

(declare-fun b!2810938 () Bool)

(declare-fun call!183020 () ListMap!1277)

(assert (=> b!2810938 (= e!1777738 call!183020)))

(declare-fun bm!183017 () Bool)

(assert (=> bm!183017 (= call!183020 (abstractMap!124 thiss!47942))))

(declare-fun e!1777728 () Bool)

(assert (=> b!2810939 (= e!1777735 (and e!1777728 tp!897683))))

(declare-fun mapIsEmpty!18476 () Bool)

(assert (=> mapIsEmpty!18476 mapRes!18476))

(declare-fun b!2810940 () Bool)

(declare-fun e!1777730 () Bool)

(assert (=> b!2810940 (= e!1777736 e!1777730)))

(declare-fun mapNonEmpty!18476 () Bool)

(declare-fun tp!897686 () Bool)

(declare-fun tp!897681 () Bool)

(assert (=> mapNonEmpty!18476 (= mapRes!18476 (and tp!897686 tp!897681))))

(declare-fun mapKey!18476 () (_ BitVec 32))

(declare-fun mapRest!18476 () (Array (_ BitVec 32) List!32925))

(declare-fun mapValue!18476 () List!32925)

(assert (=> mapNonEmpty!18476 (= (arr!6444 (_values!4349 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))) (store mapRest!18476 mapKey!18476 mapValue!18476))))

(declare-fun b!2810941 () Bool)

(declare-fun -!218 (ListMap!1277 K!6377) ListMap!1277)

(assert (=> b!2810941 (= e!1777738 (-!218 call!183020 key!7271))))

(declare-fun b!2810942 () Bool)

(declare-fun lt!1004123 () MutLongMap!4068)

(assert (=> b!2810942 (= e!1777728 (and e!1777733 ((_ is LongMap!4068) lt!1004123)))))

(assert (=> b!2810942 (= lt!1004123 (v!34241 (underlying!8344 thiss!47942)))))

(declare-fun b!2810943 () Bool)

(assert (=> b!2810943 (= e!1777729 call!183022)))

(declare-fun tp!897682 () Bool)

(declare-fun tp!897685 () Bool)

(declare-fun array_inv!4614 (array!14465) Bool)

(declare-fun array_inv!4615 (array!14463) Bool)

(assert (=> b!2810944 (= e!1777730 (and tp!897680 tp!897685 tp!897682 (array_inv!4614 (_keys!4368 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))) (array_inv!4615 (_values!4349 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))) e!1777737))))

(assert (= (and start!272020 res!1170335) b!2810933))

(assert (= (and b!2810933 res!1170336) b!2810937))

(assert (= (and b!2810937 res!1170334) b!2810936))

(assert (= (and b!2810936 c!455364) b!2810943))

(assert (= (and b!2810936 (not c!455364)) b!2810935))

(assert (= (or b!2810943 b!2810935) bm!183015))

(assert (= (or b!2810943 b!2810935) bm!183017))

(assert (= (or b!2810943 b!2810935) bm!183016))

(assert (= (and bm!183016 c!455365) b!2810941))

(assert (= (and bm!183016 (not c!455365)) b!2810938))

(assert (= (and b!2810934 condMapEmpty!18476) mapIsEmpty!18476))

(assert (= (and b!2810934 (not condMapEmpty!18476)) mapNonEmpty!18476))

(assert (= b!2810944 b!2810934))

(assert (= b!2810940 b!2810944))

(assert (= b!2810932 b!2810940))

(assert (= (and b!2810942 ((_ is LongMap!4068) (v!34241 (underlying!8344 thiss!47942)))) b!2810932))

(assert (= b!2810939 b!2810942))

(assert (= (and start!272020 ((_ is HashMap!3974) thiss!47942)) b!2810939))

(declare-fun m!3240649 () Bool)

(assert (=> b!2810944 m!3240649))

(declare-fun m!3240651 () Bool)

(assert (=> b!2810944 m!3240651))

(declare-fun m!3240653 () Bool)

(assert (=> b!2810933 m!3240653))

(declare-fun m!3240655 () Bool)

(assert (=> mapNonEmpty!18476 m!3240655))

(declare-fun m!3240657 () Bool)

(assert (=> bm!183017 m!3240657))

(declare-fun m!3240659 () Bool)

(assert (=> b!2810937 m!3240659))

(declare-fun m!3240661 () Bool)

(assert (=> b!2810937 m!3240661))

(declare-fun m!3240663 () Bool)

(assert (=> bm!183016 m!3240663))

(declare-fun m!3240665 () Bool)

(assert (=> b!2810941 m!3240665))

(declare-fun m!3240667 () Bool)

(assert (=> bm!183015 m!3240667))

(check-sat (not b!2810933) (not b!2810944) b_and!205567 b_and!205569 (not bm!183017) (not b!2810937) (not bm!183016) (not b_next!80981) (not bm!183015) (not b_next!80983) (not b!2810934) (not b!2810941) (not mapNonEmpty!18476) tp_is_empty!14363)
(check-sat b_and!205567 b_and!205569 (not b_next!80981) (not b_next!80983))
(get-model)

(declare-fun d!815873 () Bool)

(assert (=> d!815873 (= (array_inv!4614 (_keys!4368 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))) (bvsge (size!25594 (_keys!4368 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))) #b00000000000000000000000000000000))))

(assert (=> b!2810944 d!815873))

(declare-fun d!815875 () Bool)

(assert (=> d!815875 (= (array_inv!4615 (_values!4349 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))) (bvsge (size!25593 (_values!4349 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))) #b00000000000000000000000000000000))))

(assert (=> b!2810944 d!815875))

(declare-fun d!815877 () Bool)

(declare-fun c!455368 () Bool)

(assert (=> d!815877 (= c!455368 ((_ is MutableMapExt!3973) thiss!47942))))

(declare-fun e!1777741 () Bool)

(assert (=> d!815877 (= (valid!3186 thiss!47942) e!1777741)))

(declare-fun b!2810949 () Bool)

(declare-fun valid!3187 (MutableMap!3974) Bool)

(assert (=> b!2810949 (= e!1777741 (valid!3187 thiss!47942))))

(declare-fun b!2810950 () Bool)

(declare-fun valid!3188 (MutableMap!3974) Bool)

(assert (=> b!2810950 (= e!1777741 (valid!3188 thiss!47942))))

(assert (= (and d!815877 c!455368) b!2810949))

(assert (= (and d!815877 (not c!455368)) b!2810950))

(declare-fun m!3240669 () Bool)

(assert (=> b!2810949 m!3240669))

(declare-fun m!3240671 () Bool)

(assert (=> b!2810950 m!3240671))

(assert (=> b!2810933 d!815877))

(declare-fun d!815879 () Bool)

(declare-fun c!455369 () Bool)

(assert (=> d!815879 (= c!455369 ((_ is MutableMapExt!3973) (_2!19768 lt!1004124)))))

(declare-fun e!1777742 () Bool)

(assert (=> d!815879 (= (valid!3186 (_2!19768 lt!1004124)) e!1777742)))

(declare-fun b!2810951 () Bool)

(assert (=> b!2810951 (= e!1777742 (valid!3187 (_2!19768 lt!1004124)))))

(declare-fun b!2810952 () Bool)

(assert (=> b!2810952 (= e!1777742 (valid!3188 (_2!19768 lt!1004124)))))

(assert (= (and d!815879 c!455369) b!2810951))

(assert (= (and d!815879 (not c!455369)) b!2810952))

(declare-fun m!3240673 () Bool)

(assert (=> b!2810951 m!3240673))

(declare-fun m!3240675 () Bool)

(assert (=> b!2810952 m!3240675))

(assert (=> b!2810937 d!815879))

(declare-fun d!815881 () Bool)

(declare-fun choose!16573 (MutableMap!3974 K!6377) tuple2!33350)

(assert (=> d!815881 (= (choose!16572 thiss!47942 key!7271) (choose!16573 thiss!47942 key!7271))))

(declare-fun bs!516365 () Bool)

(assert (= bs!516365 d!815881))

(declare-fun m!3240677 () Bool)

(assert (=> bs!516365 m!3240677))

(assert (=> b!2810937 d!815881))

(declare-fun d!815883 () Bool)

(declare-fun c!455372 () Bool)

(assert (=> d!815883 (= c!455372 ((_ is MutableMapExt!3973) (_2!19768 lt!1004124)))))

(declare-fun e!1777745 () ListMap!1277)

(assert (=> d!815883 (= (abstractMap!124 (_2!19768 lt!1004124)) e!1777745)))

(declare-fun b!2810957 () Bool)

(declare-fun abstractMap!125 (MutableMap!3974) ListMap!1277)

(assert (=> b!2810957 (= e!1777745 (abstractMap!125 (_2!19768 lt!1004124)))))

(declare-fun b!2810958 () Bool)

(declare-fun abstractMap!126 (MutableMap!3974) ListMap!1277)

(assert (=> b!2810958 (= e!1777745 (abstractMap!126 (_2!19768 lt!1004124)))))

(assert (= (and d!815883 c!455372) b!2810957))

(assert (= (and d!815883 (not c!455372)) b!2810958))

(declare-fun m!3240679 () Bool)

(assert (=> b!2810957 m!3240679))

(declare-fun m!3240681 () Bool)

(assert (=> b!2810958 m!3240681))

(assert (=> bm!183015 d!815883))

(declare-fun d!815885 () Bool)

(declare-fun e!1777748 () Bool)

(assert (=> d!815885 e!1777748))

(declare-fun res!1170339 () Bool)

(assert (=> d!815885 (=> (not res!1170339) (not e!1777748))))

(declare-fun lt!1004127 () ListMap!1277)

(declare-fun contains!6046 (ListMap!1277 K!6377) Bool)

(assert (=> d!815885 (= res!1170339 (not (contains!6046 lt!1004127 key!7271)))))

(declare-fun removePresrvNoDuplicatedKeys!25 (List!32925 K!6377) List!32925)

(assert (=> d!815885 (= lt!1004127 (ListMap!1278 (removePresrvNoDuplicatedKeys!25 (toList!1896 call!183020) key!7271)))))

(assert (=> d!815885 (= (-!218 call!183020 key!7271) lt!1004127)))

(declare-fun b!2810961 () Bool)

(declare-datatypes ((List!32926 0))(
  ( (Nil!32824) (Cons!32824 (h!38244 K!6377) (t!229874 List!32926)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4568 (List!32926) (InoxSet K!6377))

(declare-fun keys!10712 (ListMap!1277) List!32926)

(assert (=> b!2810961 (= e!1777748 (= ((_ map and) (content!4568 (keys!10712 call!183020)) ((_ map not) (store ((as const (Array K!6377 Bool)) false) key!7271 true))) (content!4568 (keys!10712 lt!1004127))))))

(assert (= (and d!815885 res!1170339) b!2810961))

(declare-fun m!3240683 () Bool)

(assert (=> d!815885 m!3240683))

(declare-fun m!3240685 () Bool)

(assert (=> d!815885 m!3240685))

(declare-fun m!3240687 () Bool)

(assert (=> b!2810961 m!3240687))

(declare-fun m!3240689 () Bool)

(assert (=> b!2810961 m!3240689))

(declare-fun m!3240691 () Bool)

(assert (=> b!2810961 m!3240691))

(declare-fun m!3240693 () Bool)

(assert (=> b!2810961 m!3240693))

(assert (=> b!2810961 m!3240693))

(declare-fun m!3240695 () Bool)

(assert (=> b!2810961 m!3240695))

(assert (=> b!2810961 m!3240689))

(assert (=> b!2810941 d!815885))

(declare-fun d!815887 () Bool)

(declare-fun c!455373 () Bool)

(assert (=> d!815887 (= c!455373 ((_ is MutableMapExt!3973) thiss!47942))))

(declare-fun e!1777749 () ListMap!1277)

(assert (=> d!815887 (= (abstractMap!124 thiss!47942) e!1777749)))

(declare-fun b!2810962 () Bool)

(assert (=> b!2810962 (= e!1777749 (abstractMap!125 thiss!47942))))

(declare-fun b!2810963 () Bool)

(assert (=> b!2810963 (= e!1777749 (abstractMap!126 thiss!47942))))

(assert (= (and d!815887 c!455373) b!2810962))

(assert (= (and d!815887 (not c!455373)) b!2810963))

(declare-fun m!3240697 () Bool)

(assert (=> b!2810962 m!3240697))

(declare-fun m!3240699 () Bool)

(assert (=> b!2810963 m!3240699))

(assert (=> bm!183017 d!815887))

(declare-fun d!815889 () Bool)

(declare-fun content!4569 (List!32925) (InoxSet tuple2!33348))

(assert (=> d!815889 (= (eq!75 call!183021 e!1777738) (= (content!4569 (toList!1896 call!183021)) (content!4569 (toList!1896 e!1777738))))))

(declare-fun bs!516366 () Bool)

(assert (= bs!516366 d!815889))

(declare-fun m!3240701 () Bool)

(assert (=> bs!516366 m!3240701))

(declare-fun m!3240703 () Bool)

(assert (=> bs!516366 m!3240703))

(assert (=> bm!183016 d!815889))

(declare-fun b!2810968 () Bool)

(declare-fun tp!897689 () Bool)

(declare-fun tp_is_empty!14365 () Bool)

(declare-fun e!1777752 () Bool)

(assert (=> b!2810968 (= e!1777752 (and tp_is_empty!14363 tp_is_empty!14365 tp!897689))))

(assert (=> b!2810944 (= tp!897685 e!1777752)))

(assert (= (and b!2810944 ((_ is Cons!32823) (zeroValue!4327 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942))))))) b!2810968))

(declare-fun tp!897690 () Bool)

(declare-fun b!2810969 () Bool)

(declare-fun e!1777753 () Bool)

(assert (=> b!2810969 (= e!1777753 (and tp_is_empty!14363 tp_is_empty!14365 tp!897690))))

(assert (=> b!2810944 (= tp!897682 e!1777753)))

(assert (= (and b!2810944 ((_ is Cons!32823) (minValue!4327 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942))))))) b!2810969))

(declare-fun b!2810970 () Bool)

(declare-fun e!1777754 () Bool)

(declare-fun tp!897691 () Bool)

(assert (=> b!2810970 (= e!1777754 (and tp_is_empty!14363 tp_is_empty!14365 tp!897691))))

(assert (=> b!2810934 (= tp!897684 e!1777754)))

(assert (= (and b!2810934 ((_ is Cons!32823) mapDefault!18476)) b!2810970))

(declare-fun tp!897699 () Bool)

(declare-fun e!1777760 () Bool)

(declare-fun b!2810978 () Bool)

(assert (=> b!2810978 (= e!1777760 (and tp_is_empty!14363 tp_is_empty!14365 tp!897699))))

(declare-fun mapNonEmpty!18479 () Bool)

(declare-fun mapRes!18479 () Bool)

(declare-fun tp!897698 () Bool)

(declare-fun e!1777759 () Bool)

(assert (=> mapNonEmpty!18479 (= mapRes!18479 (and tp!897698 e!1777759))))

(declare-fun mapValue!18479 () List!32925)

(declare-fun mapRest!18479 () (Array (_ BitVec 32) List!32925))

(declare-fun mapKey!18479 () (_ BitVec 32))

(assert (=> mapNonEmpty!18479 (= mapRest!18476 (store mapRest!18479 mapKey!18479 mapValue!18479))))

(declare-fun condMapEmpty!18479 () Bool)

(declare-fun mapDefault!18479 () List!32925)

(assert (=> mapNonEmpty!18476 (= condMapEmpty!18479 (= mapRest!18476 ((as const (Array (_ BitVec 32) List!32925)) mapDefault!18479)))))

(assert (=> mapNonEmpty!18476 (= tp!897686 (and e!1777760 mapRes!18479))))

(declare-fun mapIsEmpty!18479 () Bool)

(assert (=> mapIsEmpty!18479 mapRes!18479))

(declare-fun tp!897700 () Bool)

(declare-fun b!2810977 () Bool)

(assert (=> b!2810977 (= e!1777759 (and tp_is_empty!14363 tp_is_empty!14365 tp!897700))))

(assert (= (and mapNonEmpty!18476 condMapEmpty!18479) mapIsEmpty!18479))

(assert (= (and mapNonEmpty!18476 (not condMapEmpty!18479)) mapNonEmpty!18479))

(assert (= (and mapNonEmpty!18479 ((_ is Cons!32823) mapValue!18479)) b!2810977))

(assert (= (and mapNonEmpty!18476 ((_ is Cons!32823) mapDefault!18479)) b!2810978))

(declare-fun m!3240705 () Bool)

(assert (=> mapNonEmpty!18479 m!3240705))

(declare-fun tp!897701 () Bool)

(declare-fun e!1777761 () Bool)

(declare-fun b!2810979 () Bool)

(assert (=> b!2810979 (= e!1777761 (and tp_is_empty!14363 tp_is_empty!14365 tp!897701))))

(assert (=> mapNonEmpty!18476 (= tp!897681 e!1777761)))

(assert (= (and mapNonEmpty!18476 ((_ is Cons!32823) mapValue!18476)) b!2810979))

(check-sat b_and!205567 (not b!2810963) b_and!205569 tp_is_empty!14365 (not d!815889) (not b!2810961) (not b_next!80983) (not d!815885) (not b!2810957) (not b!2810968) (not b!2810962) (not b!2810979) (not b!2810977) (not d!815881) (not b!2810978) (not b!2810969) (not b!2810949) (not b_next!80981) (not b!2810952) (not b!2810958) (not mapNonEmpty!18479) (not b!2810950) tp_is_empty!14363 (not b!2810951) (not b!2810970))
(check-sat b_and!205567 b_and!205569 (not b_next!80981) (not b_next!80983))
(get-model)

(declare-fun b!2811005 () Bool)

(declare-fun b_free!80281 () Bool)

(declare-fun b_next!80985 () Bool)

(assert (=> b!2811005 (= b_free!80281 (not b_next!80985))))

(declare-fun tp!897719 () Bool)

(declare-fun b_and!205571 () Bool)

(assert (=> b!2811005 (= tp!897719 b_and!205571)))

(declare-fun b!2811012 () Bool)

(declare-fun b_free!80283 () Bool)

(declare-fun b_next!80987 () Bool)

(assert (=> b!2811012 (= b_free!80283 (not b_next!80987))))

(declare-fun tp!897720 () Bool)

(declare-fun b_and!205573 () Bool)

(assert (=> b!2811012 (= tp!897720 b_and!205573)))

(declare-fun b!2811002 () Bool)

(declare-fun e!1777782 () Bool)

(declare-fun e!1777785 () Bool)

(declare-fun lt!1004132 () MutLongMap!4068)

(assert (=> b!2811002 (= e!1777782 (and e!1777785 ((_ is LongMap!4068) lt!1004132)))))

(declare-fun res!1170344 () tuple2!33350)

(assert (=> b!2811002 (= lt!1004132 (v!34241 (underlying!8344 (_2!19768 res!1170344))))))

(declare-fun bm!183024 () Bool)

(declare-fun call!183031 () ListMap!1277)

(assert (=> bm!183024 (= call!183031 (abstractMap!124 (_2!19768 res!1170344)))))

(declare-fun b!2811003 () Bool)

(declare-fun e!1777790 () Bool)

(assert (=> b!2811003 (= e!1777785 e!1777790)))

(declare-fun b!2811004 () Bool)

(declare-fun e!1777786 () Bool)

(declare-fun call!183029 () Bool)

(assert (=> b!2811004 (= e!1777786 call!183029)))

(declare-fun bm!183025 () Bool)

(declare-fun call!183030 () ListMap!1277)

(assert (=> bm!183025 (= call!183030 (abstractMap!124 thiss!47942))))

(declare-fun d!815891 () Bool)

(declare-fun e!1777787 () Bool)

(assert (=> d!815891 e!1777787))

(declare-fun res!1170345 () Bool)

(assert (=> d!815891 (=> (not res!1170345) (not e!1777787))))

(assert (=> d!815891 (= res!1170345 (valid!3186 (_2!19768 res!1170344)))))

(assert (=> d!815891 ((_ is MutableMapExt!3973) (_2!19768 res!1170344))))

(declare-fun e!1777789 () Bool)

(declare-fun lt!1004133 () tuple2!33350)

(assert (=> d!815891 (and e!1777789 ((_ is MutableMapExt!3973) (_2!19768 lt!1004133)))))

(assert (=> d!815891 (= lt!1004133 res!1170344)))

(assert (=> d!815891 (= (choose!16573 thiss!47942 key!7271) res!1170344)))

(assert (=> b!2811005 (= e!1777789 (and e!1777782 tp!897719))))

(declare-fun b!2811006 () Bool)

(assert (=> b!2811006 (= e!1777786 call!183029)))

(declare-fun mapNonEmpty!18482 () Bool)

(declare-fun mapRes!18482 () Bool)

(declare-fun tp!897717 () Bool)

(declare-fun tp!897721 () Bool)

(assert (=> mapNonEmpty!18482 (= mapRes!18482 (and tp!897717 tp!897721))))

(declare-fun mapRest!18482 () (Array (_ BitVec 32) List!32925))

(declare-fun mapKey!18482 () (_ BitVec 32))

(declare-fun mapValue!18482 () List!32925)

(assert (=> mapNonEmpty!18482 (= (arr!6444 (_values!4349 (v!34240 (underlying!8343 (v!34241 (underlying!8344 (_2!19768 res!1170344))))))) (store mapRest!18482 mapKey!18482 mapValue!18482))))

(declare-fun bm!183026 () Bool)

(declare-fun e!1777784 () ListMap!1277)

(assert (=> bm!183026 (= call!183029 (eq!75 call!183031 e!1777784))))

(declare-fun c!455379 () Bool)

(declare-fun c!455378 () Bool)

(assert (=> bm!183026 (= c!455379 c!455378)))

(declare-fun b!2811007 () Bool)

(assert (=> b!2811007 (= e!1777784 call!183030)))

(declare-fun b!2811008 () Bool)

(declare-fun e!1777788 () Bool)

(declare-fun tp!897716 () Bool)

(assert (=> b!2811008 (= e!1777788 (and tp!897716 mapRes!18482))))

(declare-fun condMapEmpty!18482 () Bool)

(declare-fun mapDefault!18482 () List!32925)

(assert (=> b!2811008 (= condMapEmpty!18482 (= (arr!6444 (_values!4349 (v!34240 (underlying!8343 (v!34241 (underlying!8344 (_2!19768 res!1170344))))))) ((as const (Array (_ BitVec 32) List!32925)) mapDefault!18482)))))

(declare-fun b!2811009 () Bool)

(assert (=> b!2811009 (= e!1777784 (-!218 call!183030 key!7271))))

(declare-fun mapIsEmpty!18482 () Bool)

(assert (=> mapIsEmpty!18482 mapRes!18482))

(declare-fun b!2811010 () Bool)

(declare-fun e!1777791 () Bool)

(assert (=> b!2811010 (= e!1777790 e!1777791)))

(declare-fun b!2811011 () Bool)

(assert (=> b!2811011 (= e!1777787 e!1777786)))

(assert (=> b!2811011 (= c!455378 (_1!19768 res!1170344))))

(declare-fun tp!897718 () Bool)

(declare-fun tp!897722 () Bool)

(assert (=> b!2811012 (= e!1777791 (and tp!897720 tp!897718 tp!897722 (array_inv!4614 (_keys!4368 (v!34240 (underlying!8343 (v!34241 (underlying!8344 (_2!19768 res!1170344))))))) (array_inv!4615 (_values!4349 (v!34240 (underlying!8343 (v!34241 (underlying!8344 (_2!19768 res!1170344))))))) e!1777788))))

(assert (= (and b!2811008 condMapEmpty!18482) mapIsEmpty!18482))

(assert (= (and b!2811008 (not condMapEmpty!18482)) mapNonEmpty!18482))

(assert (= b!2811012 b!2811008))

(assert (= b!2811010 b!2811012))

(assert (= b!2811003 b!2811010))

(assert (= (and b!2811002 ((_ is LongMap!4068) (v!34241 (underlying!8344 (_2!19768 res!1170344))))) b!2811003))

(assert (= b!2811005 b!2811002))

(assert (= (and d!815891 ((_ is HashMap!3974) (_2!19768 res!1170344))) b!2811005))

(assert (= (and d!815891 res!1170345) b!2811011))

(assert (= (and b!2811011 c!455378) b!2811006))

(assert (= (and b!2811011 (not c!455378)) b!2811004))

(assert (= (or b!2811006 b!2811004) bm!183025))

(assert (= (or b!2811006 b!2811004) bm!183024))

(assert (= (or b!2811006 b!2811004) bm!183026))

(assert (= (and bm!183026 c!455379) b!2811009))

(assert (= (and bm!183026 (not c!455379)) b!2811007))

(declare-fun m!3240707 () Bool)

(assert (=> mapNonEmpty!18482 m!3240707))

(declare-fun m!3240709 () Bool)

(assert (=> bm!183024 m!3240709))

(declare-fun m!3240711 () Bool)

(assert (=> b!2811012 m!3240711))

(declare-fun m!3240713 () Bool)

(assert (=> b!2811012 m!3240713))

(declare-fun m!3240715 () Bool)

(assert (=> d!815891 m!3240715))

(declare-fun m!3240717 () Bool)

(assert (=> bm!183026 m!3240717))

(assert (=> bm!183025 m!3240657))

(declare-fun m!3240719 () Bool)

(assert (=> b!2811009 m!3240719))

(assert (=> d!815881 d!815891))

(declare-fun d!815893 () Bool)

(declare-fun c!455382 () Bool)

(assert (=> d!815893 (= c!455382 ((_ is Nil!32823) (toList!1896 call!183021)))))

(declare-fun e!1777794 () (InoxSet tuple2!33348))

(assert (=> d!815893 (= (content!4569 (toList!1896 call!183021)) e!1777794)))

(declare-fun b!2811017 () Bool)

(assert (=> b!2811017 (= e!1777794 ((as const (Array tuple2!33348 Bool)) false))))

(declare-fun b!2811018 () Bool)

(assert (=> b!2811018 (= e!1777794 ((_ map or) (store ((as const (Array tuple2!33348 Bool)) false) (h!38243 (toList!1896 call!183021)) true) (content!4569 (t!229873 (toList!1896 call!183021)))))))

(assert (= (and d!815893 c!455382) b!2811017))

(assert (= (and d!815893 (not c!455382)) b!2811018))

(declare-fun m!3240721 () Bool)

(assert (=> b!2811018 m!3240721))

(declare-fun m!3240723 () Bool)

(assert (=> b!2811018 m!3240723))

(assert (=> d!815889 d!815893))

(declare-fun d!815895 () Bool)

(declare-fun c!455383 () Bool)

(assert (=> d!815895 (= c!455383 ((_ is Nil!32823) (toList!1896 e!1777738)))))

(declare-fun e!1777795 () (InoxSet tuple2!33348))

(assert (=> d!815895 (= (content!4569 (toList!1896 e!1777738)) e!1777795)))

(declare-fun b!2811019 () Bool)

(assert (=> b!2811019 (= e!1777795 ((as const (Array tuple2!33348 Bool)) false))))

(declare-fun b!2811020 () Bool)

(assert (=> b!2811020 (= e!1777795 ((_ map or) (store ((as const (Array tuple2!33348 Bool)) false) (h!38243 (toList!1896 e!1777738)) true) (content!4569 (t!229873 (toList!1896 e!1777738)))))))

(assert (= (and d!815895 c!455383) b!2811019))

(assert (= (and d!815895 (not c!455383)) b!2811020))

(declare-fun m!3240725 () Bool)

(assert (=> b!2811020 m!3240725))

(declare-fun m!3240727 () Bool)

(assert (=> b!2811020 m!3240727))

(assert (=> d!815889 d!815895))

(declare-fun b!2811039 () Bool)

(assert (=> b!2811039 false))

(declare-datatypes ((Unit!46834 0))(
  ( (Unit!46835) )
))
(declare-fun lt!1004157 () Unit!46834)

(declare-fun lt!1004153 () Unit!46834)

(assert (=> b!2811039 (= lt!1004157 lt!1004153)))

(declare-fun containsKey!187 (List!32925 K!6377) Bool)

(assert (=> b!2811039 (containsKey!187 (toList!1896 lt!1004127) key!7271)))

(declare-fun lemmaInGetKeysListThenContainsKey!23 (List!32925 K!6377) Unit!46834)

(assert (=> b!2811039 (= lt!1004153 (lemmaInGetKeysListThenContainsKey!23 (toList!1896 lt!1004127) key!7271))))

(declare-fun e!1777813 () Unit!46834)

(declare-fun Unit!46836 () Unit!46834)

(assert (=> b!2811039 (= e!1777813 Unit!46836)))

(declare-fun b!2811040 () Bool)

(declare-fun e!1777810 () List!32926)

(declare-fun getKeysList!26 (List!32925) List!32926)

(assert (=> b!2811040 (= e!1777810 (getKeysList!26 (toList!1896 lt!1004127)))))

(declare-fun b!2811041 () Bool)

(declare-fun Unit!46837 () Unit!46834)

(assert (=> b!2811041 (= e!1777813 Unit!46837)))

(declare-fun b!2811042 () Bool)

(declare-fun e!1777812 () Bool)

(declare-fun contains!6047 (List!32926 K!6377) Bool)

(assert (=> b!2811042 (= e!1777812 (not (contains!6047 (keys!10712 lt!1004127) key!7271)))))

(declare-fun b!2811043 () Bool)

(declare-fun e!1777811 () Unit!46834)

(assert (=> b!2811043 (= e!1777811 e!1777813)))

(declare-fun c!455392 () Bool)

(declare-fun call!183034 () Bool)

(assert (=> b!2811043 (= c!455392 call!183034)))

(declare-fun b!2811044 () Bool)

(assert (=> b!2811044 (= e!1777810 (keys!10712 lt!1004127))))

(declare-fun b!2811045 () Bool)

(declare-fun e!1777808 () Bool)

(declare-fun e!1777809 () Bool)

(assert (=> b!2811045 (= e!1777808 e!1777809)))

(declare-fun res!1170353 () Bool)

(assert (=> b!2811045 (=> (not res!1170353) (not e!1777809))))

(declare-datatypes ((Option!6293 0))(
  ( (None!6292) (Some!6292 (v!34242 V!6579)) )
))
(declare-fun isDefined!4945 (Option!6293) Bool)

(declare-fun getValueByKey!166 (List!32925 K!6377) Option!6293)

(assert (=> b!2811045 (= res!1170353 (isDefined!4945 (getValueByKey!166 (toList!1896 lt!1004127) key!7271)))))

(declare-fun b!2811046 () Bool)

(assert (=> b!2811046 (= e!1777809 (contains!6047 (keys!10712 lt!1004127) key!7271))))

(declare-fun d!815897 () Bool)

(assert (=> d!815897 e!1777808))

(declare-fun res!1170354 () Bool)

(assert (=> d!815897 (=> res!1170354 e!1777808)))

(assert (=> d!815897 (= res!1170354 e!1777812)))

(declare-fun res!1170352 () Bool)

(assert (=> d!815897 (=> (not res!1170352) (not e!1777812))))

(declare-fun lt!1004156 () Bool)

(assert (=> d!815897 (= res!1170352 (not lt!1004156))))

(declare-fun lt!1004150 () Bool)

(assert (=> d!815897 (= lt!1004156 lt!1004150)))

(declare-fun lt!1004155 () Unit!46834)

(assert (=> d!815897 (= lt!1004155 e!1777811)))

(declare-fun c!455390 () Bool)

(assert (=> d!815897 (= c!455390 lt!1004150)))

(assert (=> d!815897 (= lt!1004150 (containsKey!187 (toList!1896 lt!1004127) key!7271))))

(assert (=> d!815897 (= (contains!6046 lt!1004127 key!7271) lt!1004156)))

(declare-fun bm!183029 () Bool)

(assert (=> bm!183029 (= call!183034 (contains!6047 e!1777810 key!7271))))

(declare-fun c!455391 () Bool)

(assert (=> bm!183029 (= c!455391 c!455390)))

(declare-fun b!2811047 () Bool)

(declare-fun lt!1004152 () Unit!46834)

(assert (=> b!2811047 (= e!1777811 lt!1004152)))

(declare-fun lt!1004151 () Unit!46834)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!123 (List!32925 K!6377) Unit!46834)

(assert (=> b!2811047 (= lt!1004151 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!1896 lt!1004127) key!7271))))

(assert (=> b!2811047 (isDefined!4945 (getValueByKey!166 (toList!1896 lt!1004127) key!7271))))

(declare-fun lt!1004154 () Unit!46834)

(assert (=> b!2811047 (= lt!1004154 lt!1004151)))

(declare-fun lemmaInListThenGetKeysListContains!23 (List!32925 K!6377) Unit!46834)

(assert (=> b!2811047 (= lt!1004152 (lemmaInListThenGetKeysListContains!23 (toList!1896 lt!1004127) key!7271))))

(assert (=> b!2811047 call!183034))

(assert (= (and d!815897 c!455390) b!2811047))

(assert (= (and d!815897 (not c!455390)) b!2811043))

(assert (= (and b!2811043 c!455392) b!2811039))

(assert (= (and b!2811043 (not c!455392)) b!2811041))

(assert (= (or b!2811047 b!2811043) bm!183029))

(assert (= (and bm!183029 c!455391) b!2811040))

(assert (= (and bm!183029 (not c!455391)) b!2811044))

(assert (= (and d!815897 res!1170352) b!2811042))

(assert (= (and d!815897 (not res!1170354)) b!2811045))

(assert (= (and b!2811045 res!1170353) b!2811046))

(declare-fun m!3240729 () Bool)

(assert (=> bm!183029 m!3240729))

(declare-fun m!3240731 () Bool)

(assert (=> b!2811040 m!3240731))

(declare-fun m!3240733 () Bool)

(assert (=> b!2811047 m!3240733))

(declare-fun m!3240735 () Bool)

(assert (=> b!2811047 m!3240735))

(assert (=> b!2811047 m!3240735))

(declare-fun m!3240737 () Bool)

(assert (=> b!2811047 m!3240737))

(declare-fun m!3240739 () Bool)

(assert (=> b!2811047 m!3240739))

(assert (=> b!2811044 m!3240693))

(declare-fun m!3240741 () Bool)

(assert (=> b!2811039 m!3240741))

(declare-fun m!3240743 () Bool)

(assert (=> b!2811039 m!3240743))

(assert (=> b!2811046 m!3240693))

(assert (=> b!2811046 m!3240693))

(declare-fun m!3240745 () Bool)

(assert (=> b!2811046 m!3240745))

(assert (=> b!2811042 m!3240693))

(assert (=> b!2811042 m!3240693))

(assert (=> b!2811042 m!3240745))

(assert (=> b!2811045 m!3240735))

(assert (=> b!2811045 m!3240735))

(assert (=> b!2811045 m!3240737))

(assert (=> d!815897 m!3240741))

(assert (=> d!815885 d!815897))

(declare-fun b!2811086 () Bool)

(declare-fun e!1777838 () Unit!46834)

(declare-fun Unit!46838 () Unit!46834)

(assert (=> b!2811086 (= e!1777838 Unit!46838)))

(declare-fun b!2811087 () Bool)

(declare-fun res!1170362 () Bool)

(declare-fun e!1777834 () Bool)

(assert (=> b!2811087 (=> (not res!1170362) (not e!1777834))))

(declare-fun lt!1004205 () List!32925)

(assert (=> b!2811087 (= res!1170362 (not (containsKey!187 lt!1004205 key!7271)))))

(declare-fun c!455410 () Bool)

(declare-fun call!183049 () Bool)

(declare-fun bm!183042 () Bool)

(declare-fun lt!1004194 () K!6377)

(declare-fun e!1777840 () List!32925)

(assert (=> bm!183042 (= call!183049 (containsKey!187 e!1777840 (ite c!455410 lt!1004194 (_1!19767 (h!38243 (toList!1896 call!183020))))))))

(declare-fun c!455415 () Bool)

(assert (=> bm!183042 (= c!455415 c!455410)))

(declare-fun call!183047 () (InoxSet tuple2!33348))

(declare-fun call!183051 () (InoxSet tuple2!33348))

(declare-fun b!2811088 () Bool)

(declare-fun get!9995 (Option!6293) V!6579)

(assert (=> b!2811088 (= call!183047 ((_ map and) call!183051 ((_ map not) (store ((as const (Array tuple2!33348 Bool)) false) (tuple2!33349 key!7271 (get!9995 (getValueByKey!166 (toList!1896 call!183020) key!7271))) true))))))

(declare-fun lt!1004200 () Unit!46834)

(declare-fun e!1777835 () Unit!46834)

(assert (=> b!2811088 (= lt!1004200 e!1777835)))

(declare-fun c!455409 () Bool)

(declare-fun contains!6048 (List!32925 tuple2!33348) Bool)

(assert (=> b!2811088 (= c!455409 (contains!6048 (t!229873 (toList!1896 call!183020)) (tuple2!33349 key!7271 (get!9995 (getValueByKey!166 (toList!1896 call!183020) key!7271)))))))

(declare-fun e!1777839 () Unit!46834)

(declare-fun Unit!46839 () Unit!46834)

(assert (=> b!2811088 (= e!1777839 Unit!46839)))

(declare-fun c!455414 () Bool)

(declare-fun call!183048 () (InoxSet tuple2!33348))

(declare-fun bm!183043 () Bool)

(assert (=> bm!183043 (= call!183048 (content!4569 (ite c!455414 (toList!1896 call!183020) lt!1004205)))))

(declare-fun b!2811089 () Bool)

(declare-fun Unit!46840 () Unit!46834)

(assert (=> b!2811089 (= e!1777838 Unit!46840)))

(declare-fun lt!1004211 () List!32925)

(assert (=> b!2811089 (= lt!1004211 (removePresrvNoDuplicatedKeys!25 (t!229873 (toList!1896 call!183020)) key!7271))))

(declare-fun lt!1004198 () Unit!46834)

(assert (=> b!2811089 (= lt!1004198 (lemmaInListThenGetKeysListContains!23 lt!1004211 (_1!19767 (h!38243 (toList!1896 call!183020)))))))

(assert (=> b!2811089 (contains!6047 (getKeysList!26 lt!1004211) (_1!19767 (h!38243 (toList!1896 call!183020))))))

(declare-fun lt!1004204 () Unit!46834)

(assert (=> b!2811089 (= lt!1004204 lt!1004198)))

(assert (=> b!2811089 false))

(declare-fun b!2811090 () Bool)

(declare-fun Unit!46841 () Unit!46834)

(assert (=> b!2811090 (= e!1777835 Unit!46841)))

(declare-fun b!2811091 () Bool)

(assert (=> b!2811091 (= call!183047 call!183051)))

(declare-fun Unit!46842 () Unit!46834)

(assert (=> b!2811091 (= e!1777839 Unit!46842)))

(declare-fun b!2811092 () Bool)

(declare-fun e!1777842 () Unit!46834)

(declare-fun Unit!46843 () Unit!46834)

(assert (=> b!2811092 (= e!1777842 Unit!46843)))

(declare-fun lt!1004203 () Unit!46834)

(assert (=> b!2811092 (= lt!1004203 (lemmaInGetKeysListThenContainsKey!23 (t!229873 (toList!1896 call!183020)) (_1!19767 (h!38243 (toList!1896 call!183020)))))))

(declare-fun call!183052 () Bool)

(assert (=> b!2811092 call!183052))

(declare-fun lt!1004209 () Unit!46834)

(assert (=> b!2811092 (= lt!1004209 lt!1004203)))

(assert (=> b!2811092 false))

(declare-fun b!2811094 () Bool)

(declare-fun call!183050 () (InoxSet tuple2!33348))

(declare-fun e!1777836 () Bool)

(assert (=> b!2811094 (= e!1777836 (= call!183050 ((_ map and) call!183048 ((_ map not) (store ((as const (Array tuple2!33348 Bool)) false) (tuple2!33349 key!7271 (get!9995 (getValueByKey!166 (toList!1896 call!183020) key!7271))) true)))))))

(assert (=> b!2811094 (containsKey!187 (toList!1896 call!183020) key!7271)))

(declare-fun lt!1004196 () Unit!46834)

(assert (=> b!2811094 (= lt!1004196 (lemmaContainsKeyImpliesGetValueByKeyDefined!123 (toList!1896 call!183020) key!7271))))

(assert (=> b!2811094 (isDefined!4945 (getValueByKey!166 (toList!1896 call!183020) key!7271))))

(declare-fun lt!1004199 () Unit!46834)

(assert (=> b!2811094 (= lt!1004199 lt!1004196)))

(declare-fun b!2811095 () Bool)

(declare-fun e!1777837 () List!32925)

(declare-fun e!1777841 () List!32925)

(assert (=> b!2811095 (= e!1777837 e!1777841)))

(declare-fun c!455416 () Bool)

(assert (=> b!2811095 (= c!455416 (and ((_ is Cons!32823) (toList!1896 call!183020)) (not (= (_1!19767 (h!38243 (toList!1896 call!183020))) key!7271))))))

(declare-fun bm!183044 () Bool)

(assert (=> bm!183044 (= call!183050 (content!4569 (ite c!455414 lt!1004205 (toList!1896 call!183020))))))

(declare-fun b!2811096 () Bool)

(declare-fun res!1170361 () Bool)

(assert (=> b!2811096 (=> (not res!1170361) (not e!1777834))))

(assert (=> b!2811096 (= res!1170361 (= (content!4568 (getKeysList!26 lt!1004205)) ((_ map and) (content!4568 (getKeysList!26 (toList!1896 call!183020))) ((_ map not) (store ((as const (Array K!6377 Bool)) false) key!7271 true)))))))

(declare-fun b!2811097 () Bool)

(assert (=> b!2811097 (= e!1777840 (removePresrvNoDuplicatedKeys!25 (t!229873 (toList!1896 call!183020)) key!7271))))

(declare-fun b!2811098 () Bool)

(assert (=> b!2811098 (= e!1777837 (t!229873 (toList!1896 call!183020)))))

(declare-fun c!455413 () Bool)

(assert (=> b!2811098 (= c!455413 call!183052)))

(declare-fun lt!1004206 () Unit!46834)

(assert (=> b!2811098 (= lt!1004206 e!1777839)))

(declare-fun bm!183045 () Bool)

(assert (=> bm!183045 (= call!183047 (content!4569 (t!229873 (toList!1896 call!183020))))))

(declare-fun b!2811099 () Bool)

(assert (=> b!2811099 (= e!1777841 Nil!32823)))

(declare-fun b!2811100 () Bool)

(assert (=> b!2811100 (= e!1777840 (t!229873 (toList!1896 call!183020)))))

(declare-fun b!2811101 () Bool)

(assert (=> b!2811101 (= e!1777836 (= call!183048 call!183050))))

(declare-fun b!2811102 () Bool)

(declare-fun lt!1004197 () Unit!46834)

(assert (=> b!2811102 (= lt!1004197 e!1777838)))

(declare-fun c!455412 () Bool)

(assert (=> b!2811102 (= c!455412 call!183049)))

(declare-fun lt!1004195 () Unit!46834)

(assert (=> b!2811102 (= lt!1004195 e!1777842)))

(declare-fun c!455411 () Bool)

(assert (=> b!2811102 (= c!455411 (contains!6047 (getKeysList!26 (t!229873 (toList!1896 call!183020))) (_1!19767 (h!38243 (toList!1896 call!183020)))))))

(declare-fun lt!1004202 () List!32925)

(declare-fun $colon$colon!565 (List!32925 tuple2!33348) List!32925)

(assert (=> b!2811102 (= lt!1004202 ($colon$colon!565 (removePresrvNoDuplicatedKeys!25 (t!229873 (toList!1896 call!183020)) key!7271) (h!38243 (toList!1896 call!183020))))))

(assert (=> b!2811102 (= e!1777841 lt!1004202)))

(declare-fun bm!183046 () Bool)

(assert (=> bm!183046 (= call!183051 (content!4569 (toList!1896 call!183020)))))

(declare-fun bm!183047 () Bool)

(assert (=> bm!183047 (= call!183052 (containsKey!187 (ite c!455410 (toList!1896 call!183020) (t!229873 (toList!1896 call!183020))) (ite c!455410 key!7271 (_1!19767 (h!38243 (toList!1896 call!183020))))))))

(declare-fun b!2811103 () Bool)

(declare-fun Unit!46844 () Unit!46834)

(assert (=> b!2811103 (= e!1777842 Unit!46844)))

(declare-fun b!2811104 () Bool)

(declare-fun Unit!46845 () Unit!46834)

(assert (=> b!2811104 (= e!1777835 Unit!46845)))

(declare-fun lt!1004201 () V!6579)

(assert (=> b!2811104 (= lt!1004201 (get!9995 (getValueByKey!166 (toList!1896 call!183020) key!7271)))))

(assert (=> b!2811104 (= lt!1004194 key!7271)))

(declare-fun lt!1004208 () K!6377)

(assert (=> b!2811104 (= lt!1004208 key!7271)))

(declare-fun lt!1004207 () Unit!46834)

(declare-fun lemmaContainsTupleThenContainsKey!7 (List!32925 K!6377 V!6579) Unit!46834)

(assert (=> b!2811104 (= lt!1004207 (lemmaContainsTupleThenContainsKey!7 (t!229873 (toList!1896 call!183020)) lt!1004194 (get!9995 (getValueByKey!166 (toList!1896 call!183020) key!7271))))))

(assert (=> b!2811104 call!183049))

(declare-fun lt!1004210 () Unit!46834)

(assert (=> b!2811104 (= lt!1004210 lt!1004207)))

(assert (=> b!2811104 false))

(declare-fun b!2811093 () Bool)

(assert (=> b!2811093 (= e!1777834 e!1777836)))

(assert (=> b!2811093 (= c!455414 (containsKey!187 (toList!1896 call!183020) key!7271))))

(declare-fun d!815899 () Bool)

(assert (=> d!815899 e!1777834))

(declare-fun res!1170363 () Bool)

(assert (=> d!815899 (=> (not res!1170363) (not e!1777834))))

(declare-fun invariantList!468 (List!32925) Bool)

(assert (=> d!815899 (= res!1170363 (invariantList!468 lt!1004205))))

(assert (=> d!815899 (= lt!1004205 e!1777837)))

(assert (=> d!815899 (= c!455410 (and ((_ is Cons!32823) (toList!1896 call!183020)) (= (_1!19767 (h!38243 (toList!1896 call!183020))) key!7271)))))

(assert (=> d!815899 (invariantList!468 (toList!1896 call!183020))))

(assert (=> d!815899 (= (removePresrvNoDuplicatedKeys!25 (toList!1896 call!183020) key!7271) lt!1004205)))

(assert (= (and d!815899 c!455410) b!2811098))

(assert (= (and d!815899 (not c!455410)) b!2811095))

(assert (= (and b!2811098 c!455413) b!2811088))

(assert (= (and b!2811098 (not c!455413)) b!2811091))

(assert (= (and b!2811088 c!455409) b!2811104))

(assert (= (and b!2811088 (not c!455409)) b!2811090))

(assert (= (or b!2811088 b!2811091) bm!183046))

(assert (= (or b!2811088 b!2811091) bm!183045))

(assert (= (and b!2811095 c!455416) b!2811102))

(assert (= (and b!2811095 (not c!455416)) b!2811099))

(assert (= (and b!2811102 c!455411) b!2811092))

(assert (= (and b!2811102 (not c!455411)) b!2811103))

(assert (= (and b!2811102 c!455412) b!2811089))

(assert (= (and b!2811102 (not c!455412)) b!2811086))

(assert (= (or b!2811098 b!2811092) bm!183047))

(assert (= (or b!2811104 b!2811102) bm!183042))

(assert (= (and bm!183042 c!455415) b!2811100))

(assert (= (and bm!183042 (not c!455415)) b!2811097))

(assert (= (and d!815899 res!1170363) b!2811087))

(assert (= (and b!2811087 res!1170362) b!2811096))

(assert (= (and b!2811096 res!1170361) b!2811093))

(assert (= (and b!2811093 c!455414) b!2811094))

(assert (= (and b!2811093 (not c!455414)) b!2811101))

(assert (= (or b!2811094 b!2811101) bm!183044))

(assert (= (or b!2811094 b!2811101) bm!183043))

(declare-fun m!3240747 () Bool)

(assert (=> bm!183042 m!3240747))

(declare-fun m!3240749 () Bool)

(assert (=> bm!183046 m!3240749))

(declare-fun m!3240751 () Bool)

(assert (=> bm!183043 m!3240751))

(declare-fun m!3240753 () Bool)

(assert (=> b!2811097 m!3240753))

(declare-fun m!3240755 () Bool)

(assert (=> b!2811104 m!3240755))

(assert (=> b!2811104 m!3240755))

(declare-fun m!3240757 () Bool)

(assert (=> b!2811104 m!3240757))

(assert (=> b!2811104 m!3240757))

(declare-fun m!3240759 () Bool)

(assert (=> b!2811104 m!3240759))

(declare-fun m!3240761 () Bool)

(assert (=> d!815899 m!3240761))

(declare-fun m!3240763 () Bool)

(assert (=> d!815899 m!3240763))

(assert (=> b!2811089 m!3240753))

(declare-fun m!3240765 () Bool)

(assert (=> b!2811089 m!3240765))

(declare-fun m!3240767 () Bool)

(assert (=> b!2811089 m!3240767))

(assert (=> b!2811089 m!3240767))

(declare-fun m!3240769 () Bool)

(assert (=> b!2811089 m!3240769))

(assert (=> b!2811088 m!3240755))

(assert (=> b!2811088 m!3240755))

(assert (=> b!2811088 m!3240757))

(declare-fun m!3240771 () Bool)

(assert (=> b!2811088 m!3240771))

(declare-fun m!3240773 () Bool)

(assert (=> b!2811088 m!3240773))

(declare-fun m!3240775 () Bool)

(assert (=> b!2811087 m!3240775))

(declare-fun m!3240777 () Bool)

(assert (=> bm!183044 m!3240777))

(declare-fun m!3240779 () Bool)

(assert (=> bm!183047 m!3240779))

(declare-fun m!3240781 () Bool)

(assert (=> b!2811102 m!3240781))

(assert (=> b!2811102 m!3240781))

(declare-fun m!3240783 () Bool)

(assert (=> b!2811102 m!3240783))

(assert (=> b!2811102 m!3240753))

(assert (=> b!2811102 m!3240753))

(declare-fun m!3240785 () Bool)

(assert (=> b!2811102 m!3240785))

(declare-fun m!3240787 () Bool)

(assert (=> b!2811094 m!3240787))

(assert (=> b!2811094 m!3240755))

(declare-fun m!3240789 () Bool)

(assert (=> b!2811094 m!3240789))

(assert (=> b!2811094 m!3240771))

(declare-fun m!3240791 () Bool)

(assert (=> b!2811094 m!3240791))

(assert (=> b!2811094 m!3240755))

(assert (=> b!2811094 m!3240755))

(assert (=> b!2811094 m!3240757))

(assert (=> b!2811093 m!3240787))

(declare-fun m!3240793 () Bool)

(assert (=> bm!183045 m!3240793))

(declare-fun m!3240795 () Bool)

(assert (=> b!2811096 m!3240795))

(declare-fun m!3240797 () Bool)

(assert (=> b!2811096 m!3240797))

(declare-fun m!3240799 () Bool)

(assert (=> b!2811096 m!3240799))

(assert (=> b!2811096 m!3240687))

(assert (=> b!2811096 m!3240795))

(assert (=> b!2811096 m!3240799))

(declare-fun m!3240801 () Bool)

(assert (=> b!2811096 m!3240801))

(declare-fun m!3240803 () Bool)

(assert (=> b!2811092 m!3240803))

(assert (=> d!815885 d!815899))

(declare-fun d!815901 () Bool)

(declare-fun choose!16574 (MutableMap!3974) Bool)

(assert (=> d!815901 (= (valid!3187 (_2!19768 lt!1004124)) (choose!16574 (_2!19768 lt!1004124)))))

(declare-fun bs!516367 () Bool)

(assert (= bs!516367 d!815901))

(declare-fun m!3240805 () Bool)

(assert (=> bs!516367 m!3240805))

(assert (=> b!2810951 d!815901))

(declare-fun d!815903 () Bool)

(assert (=> d!815903 (= (valid!3187 thiss!47942) (choose!16574 thiss!47942))))

(declare-fun bs!516368 () Bool)

(assert (= bs!516368 d!815903))

(declare-fun m!3240807 () Bool)

(assert (=> bs!516368 m!3240807))

(assert (=> b!2810949 d!815903))

(declare-fun d!815905 () Bool)

(declare-fun res!1170368 () Bool)

(declare-fun e!1777845 () Bool)

(assert (=> d!815905 (=> (not res!1170368) (not e!1777845))))

(declare-fun valid!3189 (MutLongMap!4068) Bool)

(assert (=> d!815905 (= res!1170368 (valid!3189 (v!34241 (underlying!8344 (_2!19768 lt!1004124)))))))

(assert (=> d!815905 (= (valid!3188 (_2!19768 lt!1004124)) e!1777845)))

(declare-fun b!2811109 () Bool)

(declare-fun res!1170369 () Bool)

(assert (=> b!2811109 (=> (not res!1170369) (not e!1777845))))

(declare-fun lambda!103152 () Int)

(declare-datatypes ((tuple2!33352 0))(
  ( (tuple2!33353 (_1!19769 (_ BitVec 64)) (_2!19769 List!32925)) )
))
(declare-datatypes ((List!32927 0))(
  ( (Nil!32825) (Cons!32825 (h!38245 tuple2!33352) (t!229875 List!32927)) )
))
(declare-fun forall!6735 (List!32927 Int) Bool)

(declare-datatypes ((ListLongMap!709 0))(
  ( (ListLongMap!710 (toList!1897 List!32927)) )
))
(declare-fun map!7090 (MutLongMap!4068) ListLongMap!709)

(assert (=> b!2811109 (= res!1170369 (forall!6735 (toList!1897 (map!7090 (v!34241 (underlying!8344 (_2!19768 lt!1004124))))) lambda!103152))))

(declare-fun b!2811110 () Bool)

(declare-fun allKeysSameHashInMap!237 (ListLongMap!709 Hashable!3984) Bool)

(assert (=> b!2811110 (= e!1777845 (allKeysSameHashInMap!237 (map!7090 (v!34241 (underlying!8344 (_2!19768 lt!1004124)))) (hashF!6016 (_2!19768 lt!1004124))))))

(assert (= (and d!815905 res!1170368) b!2811109))

(assert (= (and b!2811109 res!1170369) b!2811110))

(declare-fun m!3240809 () Bool)

(assert (=> d!815905 m!3240809))

(declare-fun m!3240811 () Bool)

(assert (=> b!2811109 m!3240811))

(declare-fun m!3240813 () Bool)

(assert (=> b!2811109 m!3240813))

(assert (=> b!2811110 m!3240811))

(assert (=> b!2811110 m!3240811))

(declare-fun m!3240815 () Bool)

(assert (=> b!2811110 m!3240815))

(assert (=> b!2810952 d!815905))

(declare-fun d!815907 () Bool)

(declare-fun choose!16575 (MutableMap!3974) ListMap!1277)

(assert (=> d!815907 (= (abstractMap!125 thiss!47942) (choose!16575 thiss!47942))))

(declare-fun bs!516369 () Bool)

(assert (= bs!516369 d!815907))

(declare-fun m!3240817 () Bool)

(assert (=> bs!516369 m!3240817))

(assert (=> b!2810962 d!815907))

(declare-fun bs!516370 () Bool)

(declare-fun b!2811111 () Bool)

(assert (= bs!516370 (and b!2811111 b!2811109)))

(declare-fun lambda!103153 () Int)

(assert (=> bs!516370 (= lambda!103153 lambda!103152)))

(declare-fun d!815909 () Bool)

(declare-fun res!1170370 () Bool)

(declare-fun e!1777846 () Bool)

(assert (=> d!815909 (=> (not res!1170370) (not e!1777846))))

(assert (=> d!815909 (= res!1170370 (valid!3189 (v!34241 (underlying!8344 thiss!47942))))))

(assert (=> d!815909 (= (valid!3188 thiss!47942) e!1777846)))

(declare-fun res!1170371 () Bool)

(assert (=> b!2811111 (=> (not res!1170371) (not e!1777846))))

(assert (=> b!2811111 (= res!1170371 (forall!6735 (toList!1897 (map!7090 (v!34241 (underlying!8344 thiss!47942)))) lambda!103153))))

(declare-fun b!2811112 () Bool)

(assert (=> b!2811112 (= e!1777846 (allKeysSameHashInMap!237 (map!7090 (v!34241 (underlying!8344 thiss!47942))) (hashF!6016 thiss!47942)))))

(assert (= (and d!815909 res!1170370) b!2811111))

(assert (= (and b!2811111 res!1170371) b!2811112))

(declare-fun m!3240819 () Bool)

(assert (=> d!815909 m!3240819))

(declare-fun m!3240821 () Bool)

(assert (=> b!2811111 m!3240821))

(declare-fun m!3240823 () Bool)

(assert (=> b!2811111 m!3240823))

(assert (=> b!2811112 m!3240821))

(assert (=> b!2811112 m!3240821))

(declare-fun m!3240825 () Bool)

(assert (=> b!2811112 m!3240825))

(assert (=> b!2810950 d!815909))

(declare-fun d!815911 () Bool)

(assert (=> d!815911 (= (abstractMap!125 (_2!19768 lt!1004124)) (choose!16575 (_2!19768 lt!1004124)))))

(declare-fun bs!516371 () Bool)

(assert (= bs!516371 d!815911))

(declare-fun m!3240827 () Bool)

(assert (=> bs!516371 m!3240827))

(assert (=> b!2810957 d!815911))

(declare-fun d!815913 () Bool)

(declare-fun map!7091 (MutableMap!3974) ListMap!1277)

(assert (=> d!815913 (= (abstractMap!126 thiss!47942) (map!7091 thiss!47942))))

(declare-fun bs!516372 () Bool)

(assert (= bs!516372 d!815913))

(declare-fun m!3240829 () Bool)

(assert (=> bs!516372 m!3240829))

(assert (=> b!2810963 d!815913))

(declare-fun d!815915 () Bool)

(assert (=> d!815915 (= (abstractMap!126 (_2!19768 lt!1004124)) (map!7091 (_2!19768 lt!1004124)))))

(declare-fun bs!516373 () Bool)

(assert (= bs!516373 d!815915))

(declare-fun m!3240831 () Bool)

(assert (=> bs!516373 m!3240831))

(assert (=> b!2810958 d!815915))

(declare-fun d!815917 () Bool)

(declare-fun c!455419 () Bool)

(assert (=> d!815917 (= c!455419 ((_ is Nil!32824) (keys!10712 call!183020)))))

(declare-fun e!1777849 () (InoxSet K!6377))

(assert (=> d!815917 (= (content!4568 (keys!10712 call!183020)) e!1777849)))

(declare-fun b!2811117 () Bool)

(assert (=> b!2811117 (= e!1777849 ((as const (Array K!6377 Bool)) false))))

(declare-fun b!2811118 () Bool)

(assert (=> b!2811118 (= e!1777849 ((_ map or) (store ((as const (Array K!6377 Bool)) false) (h!38244 (keys!10712 call!183020)) true) (content!4568 (t!229874 (keys!10712 call!183020)))))))

(assert (= (and d!815917 c!455419) b!2811117))

(assert (= (and d!815917 (not c!455419)) b!2811118))

(declare-fun m!3240833 () Bool)

(assert (=> b!2811118 m!3240833))

(declare-fun m!3240835 () Bool)

(assert (=> b!2811118 m!3240835))

(assert (=> b!2810961 d!815917))

(declare-fun b!2811126 () Bool)

(assert (=> b!2811126 true))

(declare-fun d!815919 () Bool)

(declare-fun e!1777852 () Bool)

(assert (=> d!815919 e!1777852))

(declare-fun res!1170378 () Bool)

(assert (=> d!815919 (=> (not res!1170378) (not e!1777852))))

(declare-fun lt!1004214 () List!32926)

(declare-fun noDuplicate!551 (List!32926) Bool)

(assert (=> d!815919 (= res!1170378 (noDuplicate!551 lt!1004214))))

(assert (=> d!815919 (= lt!1004214 (getKeysList!26 (toList!1896 call!183020)))))

(assert (=> d!815919 (= (keys!10712 call!183020) lt!1004214)))

(declare-fun b!2811125 () Bool)

(declare-fun res!1170380 () Bool)

(assert (=> b!2811125 (=> (not res!1170380) (not e!1777852))))

(declare-fun length!26 (List!32926) Int)

(declare-fun length!27 (List!32925) Int)

(assert (=> b!2811125 (= res!1170380 (= (length!26 lt!1004214) (length!27 (toList!1896 call!183020))))))

(declare-fun res!1170379 () Bool)

(assert (=> b!2811126 (=> (not res!1170379) (not e!1777852))))

(declare-fun lambda!103158 () Int)

(declare-fun forall!6736 (List!32926 Int) Bool)

(assert (=> b!2811126 (= res!1170379 (forall!6736 lt!1004214 lambda!103158))))

(declare-fun lambda!103159 () Int)

(declare-fun b!2811127 () Bool)

(declare-fun map!7092 (List!32925 Int) List!32926)

(assert (=> b!2811127 (= e!1777852 (= (content!4568 lt!1004214) (content!4568 (map!7092 (toList!1896 call!183020) lambda!103159))))))

(assert (= (and d!815919 res!1170378) b!2811125))

(assert (= (and b!2811125 res!1170380) b!2811126))

(assert (= (and b!2811126 res!1170379) b!2811127))

(declare-fun m!3240837 () Bool)

(assert (=> d!815919 m!3240837))

(assert (=> d!815919 m!3240799))

(declare-fun m!3240839 () Bool)

(assert (=> b!2811125 m!3240839))

(declare-fun m!3240841 () Bool)

(assert (=> b!2811125 m!3240841))

(declare-fun m!3240843 () Bool)

(assert (=> b!2811126 m!3240843))

(declare-fun m!3240845 () Bool)

(assert (=> b!2811127 m!3240845))

(declare-fun m!3240847 () Bool)

(assert (=> b!2811127 m!3240847))

(assert (=> b!2811127 m!3240847))

(declare-fun m!3240849 () Bool)

(assert (=> b!2811127 m!3240849))

(assert (=> b!2810961 d!815919))

(declare-fun d!815921 () Bool)

(declare-fun c!455420 () Bool)

(assert (=> d!815921 (= c!455420 ((_ is Nil!32824) (keys!10712 lt!1004127)))))

(declare-fun e!1777853 () (InoxSet K!6377))

(assert (=> d!815921 (= (content!4568 (keys!10712 lt!1004127)) e!1777853)))

(declare-fun b!2811130 () Bool)

(assert (=> b!2811130 (= e!1777853 ((as const (Array K!6377 Bool)) false))))

(declare-fun b!2811131 () Bool)

(assert (=> b!2811131 (= e!1777853 ((_ map or) (store ((as const (Array K!6377 Bool)) false) (h!38244 (keys!10712 lt!1004127)) true) (content!4568 (t!229874 (keys!10712 lt!1004127)))))))

(assert (= (and d!815921 c!455420) b!2811130))

(assert (= (and d!815921 (not c!455420)) b!2811131))

(declare-fun m!3240851 () Bool)

(assert (=> b!2811131 m!3240851))

(declare-fun m!3240853 () Bool)

(assert (=> b!2811131 m!3240853))

(assert (=> b!2810961 d!815921))

(declare-fun bs!516374 () Bool)

(declare-fun b!2811133 () Bool)

(assert (= bs!516374 (and b!2811133 b!2811126)))

(declare-fun lambda!103160 () Int)

(assert (=> bs!516374 (= (= (toList!1896 lt!1004127) (toList!1896 call!183020)) (= lambda!103160 lambda!103158))))

(assert (=> b!2811133 true))

(declare-fun bs!516375 () Bool)

(declare-fun b!2811134 () Bool)

(assert (= bs!516375 (and b!2811134 b!2811127)))

(declare-fun lambda!103161 () Int)

(assert (=> bs!516375 (= lambda!103161 lambda!103159)))

(declare-fun d!815923 () Bool)

(declare-fun e!1777854 () Bool)

(assert (=> d!815923 e!1777854))

(declare-fun res!1170381 () Bool)

(assert (=> d!815923 (=> (not res!1170381) (not e!1777854))))

(declare-fun lt!1004215 () List!32926)

(assert (=> d!815923 (= res!1170381 (noDuplicate!551 lt!1004215))))

(assert (=> d!815923 (= lt!1004215 (getKeysList!26 (toList!1896 lt!1004127)))))

(assert (=> d!815923 (= (keys!10712 lt!1004127) lt!1004215)))

(declare-fun b!2811132 () Bool)

(declare-fun res!1170383 () Bool)

(assert (=> b!2811132 (=> (not res!1170383) (not e!1777854))))

(assert (=> b!2811132 (= res!1170383 (= (length!26 lt!1004215) (length!27 (toList!1896 lt!1004127))))))

(declare-fun res!1170382 () Bool)

(assert (=> b!2811133 (=> (not res!1170382) (not e!1777854))))

(assert (=> b!2811133 (= res!1170382 (forall!6736 lt!1004215 lambda!103160))))

(assert (=> b!2811134 (= e!1777854 (= (content!4568 lt!1004215) (content!4568 (map!7092 (toList!1896 lt!1004127) lambda!103161))))))

(assert (= (and d!815923 res!1170381) b!2811132))

(assert (= (and b!2811132 res!1170383) b!2811133))

(assert (= (and b!2811133 res!1170382) b!2811134))

(declare-fun m!3240855 () Bool)

(assert (=> d!815923 m!3240855))

(assert (=> d!815923 m!3240731))

(declare-fun m!3240857 () Bool)

(assert (=> b!2811132 m!3240857))

(declare-fun m!3240859 () Bool)

(assert (=> b!2811132 m!3240859))

(declare-fun m!3240861 () Bool)

(assert (=> b!2811133 m!3240861))

(declare-fun m!3240863 () Bool)

(assert (=> b!2811134 m!3240863))

(declare-fun m!3240865 () Bool)

(assert (=> b!2811134 m!3240865))

(assert (=> b!2811134 m!3240865))

(declare-fun m!3240867 () Bool)

(assert (=> b!2811134 m!3240867))

(assert (=> b!2810961 d!815923))

(declare-fun tp!897723 () Bool)

(declare-fun b!2811135 () Bool)

(declare-fun e!1777855 () Bool)

(assert (=> b!2811135 (= e!1777855 (and tp_is_empty!14363 tp_is_empty!14365 tp!897723))))

(assert (=> b!2810978 (= tp!897699 e!1777855)))

(assert (= (and b!2810978 ((_ is Cons!32823) (t!229873 mapDefault!18479))) b!2811135))

(declare-fun lt!1004220 () tuple2!33350)

(assert (=> d!815881 (= lt!1004220 (choose!16572 thiss!47942 key!7271))))

(declare-fun e!1777860 () Bool)

(assert (=> d!815881 (= true (and e!1777860 ((_ is MutableMapExt!3973) (_2!19768 lt!1004220))))))

(declare-fun b!2811143 () Bool)

(declare-fun e!1777861 () Bool)

(declare-fun lt!1004221 () MutLongMap!4068)

(assert (=> b!2811143 (= e!1777861 ((_ is LongMap!4068) lt!1004221))))

(assert (=> b!2811143 (= lt!1004221 (v!34241 (underlying!8344 (_2!19768 (choose!16572 thiss!47942 key!7271)))))))

(declare-fun b!2811142 () Bool)

(assert (=> b!2811142 (= e!1777860 e!1777861)))

(assert (= b!2811142 b!2811143))

(assert (= (and d!815881 ((_ is HashMap!3974) (_2!19768 (choose!16572 thiss!47942 key!7271)))) b!2811142))

(declare-fun b!2811144 () Bool)

(declare-fun e!1777862 () Bool)

(declare-fun tp!897724 () Bool)

(assert (=> b!2811144 (= e!1777862 (and tp_is_empty!14363 tp_is_empty!14365 tp!897724))))

(assert (=> b!2810970 (= tp!897691 e!1777862)))

(assert (= (and b!2810970 ((_ is Cons!32823) (t!229873 mapDefault!18476))) b!2811144))

(declare-fun tp!897725 () Bool)

(declare-fun e!1777863 () Bool)

(declare-fun b!2811145 () Bool)

(assert (=> b!2811145 (= e!1777863 (and tp_is_empty!14363 tp_is_empty!14365 tp!897725))))

(assert (=> b!2810979 (= tp!897701 e!1777863)))

(assert (= (and b!2810979 ((_ is Cons!32823) (t!229873 mapValue!18476))) b!2811145))

(declare-fun tp!897726 () Bool)

(declare-fun e!1777864 () Bool)

(declare-fun b!2811146 () Bool)

(assert (=> b!2811146 (= e!1777864 (and tp_is_empty!14363 tp_is_empty!14365 tp!897726))))

(assert (=> b!2810968 (= tp!897689 e!1777864)))

(assert (= (and b!2810968 ((_ is Cons!32823) (t!229873 (zeroValue!4327 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))))) b!2811146))

(declare-fun e!1777866 () Bool)

(declare-fun b!2811148 () Bool)

(declare-fun tp!897728 () Bool)

(assert (=> b!2811148 (= e!1777866 (and tp_is_empty!14363 tp_is_empty!14365 tp!897728))))

(declare-fun mapNonEmpty!18483 () Bool)

(declare-fun mapRes!18483 () Bool)

(declare-fun tp!897727 () Bool)

(declare-fun e!1777865 () Bool)

(assert (=> mapNonEmpty!18483 (= mapRes!18483 (and tp!897727 e!1777865))))

(declare-fun mapRest!18483 () (Array (_ BitVec 32) List!32925))

(declare-fun mapKey!18483 () (_ BitVec 32))

(declare-fun mapValue!18483 () List!32925)

(assert (=> mapNonEmpty!18483 (= mapRest!18479 (store mapRest!18483 mapKey!18483 mapValue!18483))))

(declare-fun condMapEmpty!18483 () Bool)

(declare-fun mapDefault!18483 () List!32925)

(assert (=> mapNonEmpty!18479 (= condMapEmpty!18483 (= mapRest!18479 ((as const (Array (_ BitVec 32) List!32925)) mapDefault!18483)))))

(assert (=> mapNonEmpty!18479 (= tp!897698 (and e!1777866 mapRes!18483))))

(declare-fun mapIsEmpty!18483 () Bool)

(assert (=> mapIsEmpty!18483 mapRes!18483))

(declare-fun b!2811147 () Bool)

(declare-fun tp!897729 () Bool)

(assert (=> b!2811147 (= e!1777865 (and tp_is_empty!14363 tp_is_empty!14365 tp!897729))))

(assert (= (and mapNonEmpty!18479 condMapEmpty!18483) mapIsEmpty!18483))

(assert (= (and mapNonEmpty!18479 (not condMapEmpty!18483)) mapNonEmpty!18483))

(assert (= (and mapNonEmpty!18483 ((_ is Cons!32823) mapValue!18483)) b!2811147))

(assert (= (and mapNonEmpty!18479 ((_ is Cons!32823) mapDefault!18483)) b!2811148))

(declare-fun m!3240869 () Bool)

(assert (=> mapNonEmpty!18483 m!3240869))

(declare-fun e!1777867 () Bool)

(declare-fun b!2811149 () Bool)

(declare-fun tp!897730 () Bool)

(assert (=> b!2811149 (= e!1777867 (and tp_is_empty!14363 tp_is_empty!14365 tp!897730))))

(assert (=> b!2810977 (= tp!897700 e!1777867)))

(assert (= (and b!2810977 ((_ is Cons!32823) (t!229873 mapValue!18479))) b!2811149))

(declare-fun e!1777868 () Bool)

(declare-fun tp!897731 () Bool)

(declare-fun b!2811150 () Bool)

(assert (=> b!2811150 (= e!1777868 (and tp_is_empty!14363 tp_is_empty!14365 tp!897731))))

(assert (=> b!2810969 (= tp!897690 e!1777868)))

(assert (= (and b!2810969 ((_ is Cons!32823) (t!229873 (minValue!4327 (v!34240 (underlying!8343 (v!34241 (underlying!8344 thiss!47942)))))))) b!2811150))

(check-sat (not d!815913) (not b!2811042) (not b!2811012) b_and!205569 (not b!2811087) (not mapNonEmpty!18483) (not b!2811135) (not b!2811044) (not b!2811093) (not d!815907) (not bm!183042) (not bm!183026) (not b!2811149) (not b!2811097) (not b!2811146) (not b!2811126) (not b!2811009) (not b!2811147) (not d!815899) b_and!205567 (not bm!183025) (not b_next!80985) (not b!2811112) (not b!2811096) (not d!815903) (not b!2811020) (not d!815915) (not bm!183047) (not b!2811089) (not b_next!80987) (not b!2811109) (not b!2811110) tp_is_empty!14365 (not b!2811046) (not b!2811133) (not b!2811092) (not b!2811131) (not d!815901) (not b_next!80981) (not b!2811102) (not d!815897) (not bm!183024) (not bm!183044) (not b!2811134) (not b!2811118) (not b!2811045) (not bm!183046) (not b!2811088) (not b!2811125) (not b!2811047) (not b!2811040) (not d!815905) (not b!2811144) (not b!2811104) (not mapNonEmpty!18482) (not d!815919) (not b!2811008) (not b!2811127) (not d!815891) (not b_next!80983) (not b!2811111) (not bm!183029) (not b!2811018) (not b!2811148) b_and!205573 (not d!815909) (not b!2811150) (not b!2811145) (not b!2811039) b_and!205571 (not d!815923) (not b!2811094) (not d!815911) tp_is_empty!14363 (not bm!183045) (not b!2811132) (not bm!183043))
(check-sat b_and!205567 b_and!205569 (not b_next!80985) (not b_next!80987) (not b_next!80981) (not b_next!80983) b_and!205573 b_and!205571)
