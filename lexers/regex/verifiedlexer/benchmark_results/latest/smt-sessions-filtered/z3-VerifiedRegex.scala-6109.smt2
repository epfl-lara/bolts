; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296976 () Bool)

(assert start!296976)

(declare-fun b!3170641 () Bool)

(declare-fun b_free!83241 () Bool)

(declare-fun b_next!83945 () Bool)

(assert (=> b!3170641 (= b_free!83241 (not b_next!83945))))

(declare-fun tp!1000701 () Bool)

(declare-fun b_and!209519 () Bool)

(assert (=> b!3170641 (= tp!1000701 b_and!209519)))

(declare-fun b!3170639 () Bool)

(declare-fun b_free!83243 () Bool)

(declare-fun b_next!83947 () Bool)

(assert (=> b!3170639 (= b_free!83243 (not b_next!83947))))

(declare-fun tp!1000698 () Bool)

(declare-fun b_and!209521 () Bool)

(assert (=> b!3170639 (= tp!1000698 b_and!209521)))

(declare-fun b!3170637 () Bool)

(declare-fun e!1974721 () Bool)

(declare-fun e!1974723 () Bool)

(assert (=> b!3170637 (= e!1974721 e!1974723)))

(declare-fun b!3170638 () Bool)

(declare-fun e!1974717 () Bool)

(declare-datatypes ((C!19724 0))(
  ( (C!19725 (val!11898 Int)) )
))
(declare-datatypes ((Regex!9769 0))(
  ( (ElementMatch!9769 (c!533170 C!19724)) (Concat!15090 (regOne!20050 Regex!9769) (regTwo!20050 Regex!9769)) (EmptyExpr!9769) (Star!9769 (reg!10098 Regex!9769)) (EmptyLang!9769) (Union!9769 (regOne!20051 Regex!9769) (regTwo!20051 Regex!9769)) )
))
(declare-datatypes ((tuple2!34718 0))(
  ( (tuple2!34719 (_1!20491 Regex!9769) (_2!20491 C!19724)) )
))
(declare-datatypes ((tuple2!34720 0))(
  ( (tuple2!34721 (_1!20492 tuple2!34718) (_2!20492 Regex!9769)) )
))
(declare-datatypes ((List!35610 0))(
  ( (Nil!35486) (Cons!35486 (h!40906 tuple2!34720) (t!234693 List!35610)) )
))
(declare-datatypes ((array!14988 0))(
  ( (array!14989 (arr!6670 (Array (_ BitVec 32) List!35610)) (size!26756 (_ BitVec 32))) )
))
(declare-datatypes ((array!14990 0))(
  ( (array!14991 (arr!6671 (Array (_ BitVec 32) (_ BitVec 64))) (size!26757 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8380 0))(
  ( (LongMapFixedSize!8381 (defaultEntry!4575 Int) (mask!10868 (_ BitVec 32)) (extraKeys!4439 (_ BitVec 32)) (zeroValue!4449 List!35610) (minValue!4449 List!35610) (_size!8423 (_ BitVec 32)) (_keys!4490 array!14990) (_values!4471 array!14988) (_vacant!4251 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16569 0))(
  ( (Cell!16570 (v!35217 LongMapFixedSize!8380)) )
))
(declare-datatypes ((MutLongMap!4190 0))(
  ( (LongMap!4190 (underlying!8609 Cell!16569)) (MutLongMapExt!4189 (__x!22676 Int)) )
))
(declare-datatypes ((Cell!16571 0))(
  ( (Cell!16572 (v!35218 MutLongMap!4190)) )
))
(declare-datatypes ((Hashable!4106 0))(
  ( (HashableExt!4105 (__x!22677 Int)) )
))
(declare-datatypes ((MutableMap!4096 0))(
  ( (MutableMapExt!4095 (__x!22678 Int)) (HashMap!4096 (underlying!8610 Cell!16571) (hashF!6138 Hashable!4106) (_size!8424 (_ BitVec 32)) (defaultValue!4267 Int)) )
))
(declare-datatypes ((Cache!462 0))(
  ( (Cache!463 (cache!4242 MutableMap!4096)) )
))
(declare-fun thiss!28524 () Cache!462)

(declare-fun lambda!116000 () Int)

(declare-fun forall!7166 (List!35610 Int) Bool)

(declare-datatypes ((ListMap!1333 0))(
  ( (ListMap!1334 (toList!2079 List!35610)) )
))
(declare-fun map!7939 (MutableMap!4096) ListMap!1333)

(assert (=> b!3170638 (= e!1974717 (not (forall!7166 (toList!2079 (map!7939 (cache!4242 thiss!28524))) lambda!116000)))))

(declare-fun e!1974725 () Bool)

(declare-fun tp!1000695 () Bool)

(declare-fun tp!1000705 () Bool)

(declare-fun array_inv!4784 (array!14990) Bool)

(declare-fun array_inv!4785 (array!14988) Bool)

(assert (=> b!3170639 (= e!1974723 (and tp!1000698 tp!1000705 tp!1000695 (array_inv!4784 (_keys!4490 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))))) (array_inv!4785 (_values!4471 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))))) e!1974725))))

(declare-fun b!3170640 () Bool)

(declare-fun e!1974716 () Bool)

(declare-fun tp!1000704 () Bool)

(assert (=> b!3170640 (= e!1974716 tp!1000704)))

(declare-fun e!1974720 () Bool)

(declare-fun e!1974722 () Bool)

(assert (=> b!3170641 (= e!1974720 (and e!1974722 tp!1000701))))

(declare-fun mapIsEmpty!18995 () Bool)

(declare-fun mapRes!18995 () Bool)

(assert (=> mapIsEmpty!18995 mapRes!18995))

(declare-fun b!3170642 () Bool)

(declare-fun tp!1000703 () Bool)

(declare-fun tp!1000693 () Bool)

(assert (=> b!3170642 (= e!1974716 (and tp!1000703 tp!1000693))))

(declare-fun b!3170643 () Bool)

(declare-fun e!1974719 () Bool)

(assert (=> b!3170643 (= e!1974719 e!1974720)))

(declare-fun b!3170644 () Bool)

(declare-fun tp_is_empty!17101 () Bool)

(assert (=> b!3170644 (= e!1974716 tp_is_empty!17101)))

(declare-fun b!3170645 () Bool)

(declare-fun e!1974718 () Bool)

(declare-fun tp!1000702 () Bool)

(declare-fun tp!1000700 () Bool)

(assert (=> b!3170645 (= e!1974718 (and tp!1000702 tp!1000700))))

(declare-fun b!3170646 () Bool)

(assert (=> b!3170646 (= e!1974718 tp_is_empty!17101)))

(declare-fun b!3170648 () Bool)

(declare-fun tp!1000699 () Bool)

(assert (=> b!3170648 (= e!1974718 tp!1000699)))

(declare-fun b!3170649 () Bool)

(declare-fun res!1288878 () Bool)

(assert (=> b!3170649 (=> (not res!1288878) (not e!1974717))))

(get-info :version)

(assert (=> b!3170649 (= res!1288878 ((_ is HashMap!4096) (cache!4242 thiss!28524)))))

(declare-fun b!3170650 () Bool)

(declare-fun tp!1000697 () Bool)

(assert (=> b!3170650 (= e!1974725 (and tp!1000697 mapRes!18995))))

(declare-fun condMapEmpty!18995 () Bool)

(declare-fun mapDefault!18995 () List!35610)

(assert (=> b!3170650 (= condMapEmpty!18995 (= (arr!6670 (_values!4471 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35610)) mapDefault!18995)))))

(declare-fun b!3170651 () Bool)

(declare-fun res!1288877 () Bool)

(assert (=> b!3170651 (=> (not res!1288877) (not e!1974717))))

(declare-fun r!4733 () Regex!9769)

(declare-fun validRegex!4483 (Regex!9769) Bool)

(assert (=> b!3170651 (= res!1288877 (validRegex!4483 r!4733))))

(declare-fun b!3170652 () Bool)

(declare-fun e!1974715 () Bool)

(declare-fun lt!1066085 () MutLongMap!4190)

(assert (=> b!3170652 (= e!1974722 (and e!1974715 ((_ is LongMap!4190) lt!1066085)))))

(assert (=> b!3170652 (= lt!1066085 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))))

(declare-fun b!3170653 () Bool)

(assert (=> b!3170653 (= e!1974715 e!1974721)))

(declare-fun b!3170654 () Bool)

(declare-fun tp!1000696 () Bool)

(declare-fun tp!1000692 () Bool)

(assert (=> b!3170654 (= e!1974716 (and tp!1000696 tp!1000692))))

(declare-fun mapNonEmpty!18995 () Bool)

(declare-fun tp!1000691 () Bool)

(declare-fun tp!1000694 () Bool)

(assert (=> mapNonEmpty!18995 (= mapRes!18995 (and tp!1000691 tp!1000694))))

(declare-fun mapKey!18995 () (_ BitVec 32))

(declare-fun mapValue!18995 () List!35610)

(declare-fun mapRest!18995 () (Array (_ BitVec 32) List!35610))

(assert (=> mapNonEmpty!18995 (= (arr!6670 (_values!4471 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))))) (store mapRest!18995 mapKey!18995 mapValue!18995))))

(declare-fun b!3170655 () Bool)

(declare-fun tp!1000706 () Bool)

(declare-fun tp!1000690 () Bool)

(assert (=> b!3170655 (= e!1974718 (and tp!1000706 tp!1000690))))

(declare-fun b!3170656 () Bool)

(declare-fun res!1288881 () Bool)

(assert (=> b!3170656 (=> (not res!1288881) (not e!1974717))))

(declare-fun res!14113 () Regex!9769)

(declare-fun c!6996 () C!19724)

(declare-fun derivativeStep!2910 (Regex!9769 C!19724) Regex!9769)

(assert (=> b!3170656 (= res!1288881 (= res!14113 (derivativeStep!2910 r!4733 c!6996)))))

(declare-fun res!1288879 () Bool)

(assert (=> start!296976 (=> (not res!1288879) (not e!1974717))))

(declare-fun validCacheMap!78 (MutableMap!4096) Bool)

(assert (=> start!296976 (= res!1288879 (validCacheMap!78 (cache!4242 thiss!28524)))))

(assert (=> start!296976 e!1974717))

(declare-fun inv!48186 (Cache!462) Bool)

(assert (=> start!296976 (and (inv!48186 thiss!28524) e!1974719)))

(assert (=> start!296976 e!1974716))

(assert (=> start!296976 e!1974718))

(assert (=> start!296976 tp_is_empty!17101))

(declare-fun b!3170647 () Bool)

(declare-fun res!1288880 () Bool)

(assert (=> b!3170647 (=> (not res!1288880) (not e!1974717))))

(declare-fun valid!3269 (MutableMap!4096) Bool)

(assert (=> b!3170647 (= res!1288880 (valid!3269 (cache!4242 thiss!28524)))))

(assert (= (and start!296976 res!1288879) b!3170651))

(assert (= (and b!3170651 res!1288877) b!3170656))

(assert (= (and b!3170656 res!1288881) b!3170649))

(assert (= (and b!3170649 res!1288878) b!3170647))

(assert (= (and b!3170647 res!1288880) b!3170638))

(assert (= (and b!3170650 condMapEmpty!18995) mapIsEmpty!18995))

(assert (= (and b!3170650 (not condMapEmpty!18995)) mapNonEmpty!18995))

(assert (= b!3170639 b!3170650))

(assert (= b!3170637 b!3170639))

(assert (= b!3170653 b!3170637))

(assert (= (and b!3170652 ((_ is LongMap!4190) (v!35218 (underlying!8610 (cache!4242 thiss!28524))))) b!3170653))

(assert (= b!3170641 b!3170652))

(assert (= (and b!3170643 ((_ is HashMap!4096) (cache!4242 thiss!28524))) b!3170641))

(assert (= start!296976 b!3170643))

(assert (= (and start!296976 ((_ is ElementMatch!9769) r!4733)) b!3170644))

(assert (= (and start!296976 ((_ is Concat!15090) r!4733)) b!3170654))

(assert (= (and start!296976 ((_ is Star!9769) r!4733)) b!3170640))

(assert (= (and start!296976 ((_ is Union!9769) r!4733)) b!3170642))

(assert (= (and start!296976 ((_ is ElementMatch!9769) res!14113)) b!3170646))

(assert (= (and start!296976 ((_ is Concat!15090) res!14113)) b!3170645))

(assert (= (and start!296976 ((_ is Star!9769) res!14113)) b!3170648))

(assert (= (and start!296976 ((_ is Union!9769) res!14113)) b!3170655))

(declare-fun m!3429910 () Bool)

(assert (=> b!3170647 m!3429910))

(declare-fun m!3429912 () Bool)

(assert (=> start!296976 m!3429912))

(declare-fun m!3429914 () Bool)

(assert (=> start!296976 m!3429914))

(declare-fun m!3429916 () Bool)

(assert (=> b!3170656 m!3429916))

(declare-fun m!3429918 () Bool)

(assert (=> b!3170651 m!3429918))

(declare-fun m!3429920 () Bool)

(assert (=> b!3170639 m!3429920))

(declare-fun m!3429922 () Bool)

(assert (=> b!3170639 m!3429922))

(declare-fun m!3429924 () Bool)

(assert (=> mapNonEmpty!18995 m!3429924))

(declare-fun m!3429926 () Bool)

(assert (=> b!3170638 m!3429926))

(declare-fun m!3429928 () Bool)

(assert (=> b!3170638 m!3429928))

(check-sat (not b!3170656) (not b_next!83945) (not b!3170651) (not b!3170640) (not b!3170645) (not b!3170642) (not mapNonEmpty!18995) (not b!3170638) (not b!3170654) (not b!3170650) (not b!3170639) b_and!209519 (not b_next!83947) (not b!3170647) b_and!209521 tp_is_empty!17101 (not b!3170655) (not b!3170648) (not start!296976))
(check-sat b_and!209519 b_and!209521 (not b_next!83947) (not b_next!83945))
(get-model)

(declare-fun b!3170675 () Bool)

(declare-fun e!1974741 () Bool)

(declare-fun e!1974745 () Bool)

(assert (=> b!3170675 (= e!1974741 e!1974745)))

(declare-fun res!1288894 () Bool)

(assert (=> b!3170675 (=> (not res!1288894) (not e!1974745))))

(declare-fun call!230342 () Bool)

(assert (=> b!3170675 (= res!1288894 call!230342)))

(declare-fun b!3170676 () Bool)

(declare-fun e!1974740 () Bool)

(declare-fun call!230343 () Bool)

(assert (=> b!3170676 (= e!1974740 call!230343)))

(declare-fun bm!230337 () Bool)

(assert (=> bm!230337 (= call!230342 call!230343)))

(declare-fun b!3170677 () Bool)

(declare-fun e!1974742 () Bool)

(declare-fun e!1974746 () Bool)

(assert (=> b!3170677 (= e!1974742 e!1974746)))

(declare-fun c!533175 () Bool)

(assert (=> b!3170677 (= c!533175 ((_ is Union!9769) r!4733))))

(declare-fun b!3170678 () Bool)

(declare-fun res!1288892 () Bool)

(assert (=> b!3170678 (=> res!1288892 e!1974741)))

(assert (=> b!3170678 (= res!1288892 (not ((_ is Concat!15090) r!4733)))))

(assert (=> b!3170678 (= e!1974746 e!1974741)))

(declare-fun b!3170679 () Bool)

(declare-fun e!1974744 () Bool)

(assert (=> b!3170679 (= e!1974744 e!1974742)))

(declare-fun c!533176 () Bool)

(assert (=> b!3170679 (= c!533176 ((_ is Star!9769) r!4733))))

(declare-fun bm!230338 () Bool)

(assert (=> bm!230338 (= call!230343 (validRegex!4483 (ite c!533176 (reg!10098 r!4733) (ite c!533175 (regTwo!20051 r!4733) (regOne!20050 r!4733)))))))

(declare-fun b!3170681 () Bool)

(assert (=> b!3170681 (= e!1974742 e!1974740)))

(declare-fun res!1288893 () Bool)

(declare-fun nullable!3357 (Regex!9769) Bool)

(assert (=> b!3170681 (= res!1288893 (not (nullable!3357 (reg!10098 r!4733))))))

(assert (=> b!3170681 (=> (not res!1288893) (not e!1974740))))

(declare-fun b!3170682 () Bool)

(declare-fun e!1974743 () Bool)

(assert (=> b!3170682 (= e!1974743 call!230342)))

(declare-fun bm!230339 () Bool)

(declare-fun call!230344 () Bool)

(assert (=> bm!230339 (= call!230344 (validRegex!4483 (ite c!533175 (regOne!20051 r!4733) (regTwo!20050 r!4733))))))

(declare-fun b!3170683 () Bool)

(declare-fun res!1288896 () Bool)

(assert (=> b!3170683 (=> (not res!1288896) (not e!1974743))))

(assert (=> b!3170683 (= res!1288896 call!230344)))

(assert (=> b!3170683 (= e!1974746 e!1974743)))

(declare-fun d!869194 () Bool)

(declare-fun res!1288895 () Bool)

(assert (=> d!869194 (=> res!1288895 e!1974744)))

(assert (=> d!869194 (= res!1288895 ((_ is ElementMatch!9769) r!4733))))

(assert (=> d!869194 (= (validRegex!4483 r!4733) e!1974744)))

(declare-fun b!3170680 () Bool)

(assert (=> b!3170680 (= e!1974745 call!230344)))

(assert (= (and d!869194 (not res!1288895)) b!3170679))

(assert (= (and b!3170679 c!533176) b!3170681))

(assert (= (and b!3170679 (not c!533176)) b!3170677))

(assert (= (and b!3170681 res!1288893) b!3170676))

(assert (= (and b!3170677 c!533175) b!3170683))

(assert (= (and b!3170677 (not c!533175)) b!3170678))

(assert (= (and b!3170683 res!1288896) b!3170682))

(assert (= (and b!3170678 (not res!1288892)) b!3170675))

(assert (= (and b!3170675 res!1288894) b!3170680))

(assert (= (or b!3170683 b!3170680) bm!230339))

(assert (= (or b!3170682 b!3170675) bm!230337))

(assert (= (or b!3170676 bm!230337) bm!230338))

(declare-fun m!3429930 () Bool)

(assert (=> bm!230338 m!3429930))

(declare-fun m!3429932 () Bool)

(assert (=> b!3170681 m!3429932))

(declare-fun m!3429934 () Bool)

(assert (=> bm!230339 m!3429934))

(assert (=> b!3170651 d!869194))

(declare-fun d!869196 () Bool)

(assert (=> d!869196 (= (array_inv!4784 (_keys!4490 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))))) (bvsge (size!26757 (_keys!4490 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3170639 d!869196))

(declare-fun d!869198 () Bool)

(assert (=> d!869198 (= (array_inv!4785 (_values!4471 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))))) (bvsge (size!26756 (_values!4471 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3170639 d!869198))

(declare-fun d!869200 () Bool)

(declare-fun res!1288901 () Bool)

(declare-fun e!1974751 () Bool)

(assert (=> d!869200 (=> res!1288901 e!1974751)))

(assert (=> d!869200 (= res!1288901 ((_ is Nil!35486) (toList!2079 (map!7939 (cache!4242 thiss!28524)))))))

(assert (=> d!869200 (= (forall!7166 (toList!2079 (map!7939 (cache!4242 thiss!28524))) lambda!116000) e!1974751)))

(declare-fun b!3170688 () Bool)

(declare-fun e!1974752 () Bool)

(assert (=> b!3170688 (= e!1974751 e!1974752)))

(declare-fun res!1288902 () Bool)

(assert (=> b!3170688 (=> (not res!1288902) (not e!1974752))))

(declare-fun dynLambda!14367 (Int tuple2!34720) Bool)

(assert (=> b!3170688 (= res!1288902 (dynLambda!14367 lambda!116000 (h!40906 (toList!2079 (map!7939 (cache!4242 thiss!28524))))))))

(declare-fun b!3170689 () Bool)

(assert (=> b!3170689 (= e!1974752 (forall!7166 (t!234693 (toList!2079 (map!7939 (cache!4242 thiss!28524)))) lambda!116000))))

(assert (= (and d!869200 (not res!1288901)) b!3170688))

(assert (= (and b!3170688 res!1288902) b!3170689))

(declare-fun b_lambda!86463 () Bool)

(assert (=> (not b_lambda!86463) (not b!3170688)))

(declare-fun m!3429936 () Bool)

(assert (=> b!3170688 m!3429936))

(declare-fun m!3429938 () Bool)

(assert (=> b!3170689 m!3429938))

(assert (=> b!3170638 d!869200))

(declare-fun d!869202 () Bool)

(declare-fun lt!1066088 () ListMap!1333)

(declare-fun invariantList!490 (List!35610) Bool)

(assert (=> d!869202 (invariantList!490 (toList!2079 lt!1066088))))

(declare-datatypes ((tuple2!34722 0))(
  ( (tuple2!34723 (_1!20493 (_ BitVec 64)) (_2!20493 List!35610)) )
))
(declare-datatypes ((List!35611 0))(
  ( (Nil!35487) (Cons!35487 (h!40907 tuple2!34722) (t!234694 List!35611)) )
))
(declare-fun extractMap!240 (List!35611) ListMap!1333)

(declare-datatypes ((ListLongMap!737 0))(
  ( (ListLongMap!738 (toList!2080 List!35611)) )
))
(declare-fun map!7940 (MutLongMap!4190) ListLongMap!737)

(assert (=> d!869202 (= lt!1066088 (extractMap!240 (toList!2080 (map!7940 (v!35218 (underlying!8610 (cache!4242 thiss!28524)))))))))

(assert (=> d!869202 (valid!3269 (cache!4242 thiss!28524))))

(assert (=> d!869202 (= (map!7939 (cache!4242 thiss!28524)) lt!1066088)))

(declare-fun bs!539591 () Bool)

(assert (= bs!539591 d!869202))

(declare-fun m!3429940 () Bool)

(assert (=> bs!539591 m!3429940))

(declare-fun m!3429942 () Bool)

(assert (=> bs!539591 m!3429942))

(declare-fun m!3429944 () Bool)

(assert (=> bs!539591 m!3429944))

(assert (=> bs!539591 m!3429910))

(assert (=> b!3170638 d!869202))

(declare-fun b!3170710 () Bool)

(declare-fun c!533187 () Bool)

(assert (=> b!3170710 (= c!533187 (nullable!3357 (regOne!20050 r!4733)))))

(declare-fun e!1974765 () Regex!9769)

(declare-fun e!1974766 () Regex!9769)

(assert (=> b!3170710 (= e!1974765 e!1974766)))

(declare-fun b!3170711 () Bool)

(declare-fun e!1974764 () Regex!9769)

(assert (=> b!3170711 (= e!1974764 (ite (= c!6996 (c!533170 r!4733)) EmptyExpr!9769 EmptyLang!9769))))

(declare-fun d!869204 () Bool)

(declare-fun lt!1066091 () Regex!9769)

(assert (=> d!869204 (validRegex!4483 lt!1066091)))

(declare-fun e!1974763 () Regex!9769)

(assert (=> d!869204 (= lt!1066091 e!1974763)))

(declare-fun c!533189 () Bool)

(assert (=> d!869204 (= c!533189 (or ((_ is EmptyExpr!9769) r!4733) ((_ is EmptyLang!9769) r!4733)))))

(assert (=> d!869204 (validRegex!4483 r!4733)))

(assert (=> d!869204 (= (derivativeStep!2910 r!4733 c!6996) lt!1066091)))

(declare-fun b!3170712 () Bool)

(declare-fun e!1974767 () Regex!9769)

(declare-fun call!230354 () Regex!9769)

(declare-fun call!230355 () Regex!9769)

(assert (=> b!3170712 (= e!1974767 (Union!9769 call!230354 call!230355))))

(declare-fun b!3170713 () Bool)

(assert (=> b!3170713 (= e!1974767 e!1974765)))

(declare-fun c!533191 () Bool)

(assert (=> b!3170713 (= c!533191 ((_ is Star!9769) r!4733))))

(declare-fun b!3170714 () Bool)

(declare-fun call!230356 () Regex!9769)

(assert (=> b!3170714 (= e!1974766 (Union!9769 (Concat!15090 call!230356 (regTwo!20050 r!4733)) EmptyLang!9769))))

(declare-fun b!3170715 () Bool)

(declare-fun call!230353 () Regex!9769)

(assert (=> b!3170715 (= e!1974765 (Concat!15090 call!230353 r!4733))))

(declare-fun b!3170716 () Bool)

(declare-fun c!533190 () Bool)

(assert (=> b!3170716 (= c!533190 ((_ is Union!9769) r!4733))))

(assert (=> b!3170716 (= e!1974764 e!1974767)))

(declare-fun b!3170717 () Bool)

(assert (=> b!3170717 (= e!1974763 EmptyLang!9769)))

(declare-fun bm!230348 () Bool)

(assert (=> bm!230348 (= call!230354 (derivativeStep!2910 (ite c!533190 (regOne!20051 r!4733) (ite c!533191 (reg!10098 r!4733) (regOne!20050 r!4733))) c!6996))))

(declare-fun b!3170718 () Bool)

(assert (=> b!3170718 (= e!1974763 e!1974764)))

(declare-fun c!533188 () Bool)

(assert (=> b!3170718 (= c!533188 ((_ is ElementMatch!9769) r!4733))))

(declare-fun bm!230349 () Bool)

(assert (=> bm!230349 (= call!230356 call!230353)))

(declare-fun bm!230350 () Bool)

(assert (=> bm!230350 (= call!230353 call!230354)))

(declare-fun bm!230351 () Bool)

(assert (=> bm!230351 (= call!230355 (derivativeStep!2910 (ite c!533190 (regTwo!20051 r!4733) (regTwo!20050 r!4733)) c!6996))))

(declare-fun b!3170719 () Bool)

(assert (=> b!3170719 (= e!1974766 (Union!9769 (Concat!15090 call!230356 (regTwo!20050 r!4733)) call!230355))))

(assert (= (and d!869204 c!533189) b!3170717))

(assert (= (and d!869204 (not c!533189)) b!3170718))

(assert (= (and b!3170718 c!533188) b!3170711))

(assert (= (and b!3170718 (not c!533188)) b!3170716))

(assert (= (and b!3170716 c!533190) b!3170712))

(assert (= (and b!3170716 (not c!533190)) b!3170713))

(assert (= (and b!3170713 c!533191) b!3170715))

(assert (= (and b!3170713 (not c!533191)) b!3170710))

(assert (= (and b!3170710 c!533187) b!3170719))

(assert (= (and b!3170710 (not c!533187)) b!3170714))

(assert (= (or b!3170719 b!3170714) bm!230349))

(assert (= (or b!3170715 bm!230349) bm!230350))

(assert (= (or b!3170712 b!3170719) bm!230351))

(assert (= (or b!3170712 bm!230350) bm!230348))

(declare-fun m!3429946 () Bool)

(assert (=> b!3170710 m!3429946))

(declare-fun m!3429948 () Bool)

(assert (=> d!869204 m!3429948))

(assert (=> d!869204 m!3429918))

(declare-fun m!3429950 () Bool)

(assert (=> bm!230348 m!3429950))

(declare-fun m!3429952 () Bool)

(assert (=> bm!230351 m!3429952))

(assert (=> b!3170656 d!869204))

(declare-fun bs!539592 () Bool)

(declare-fun b!3170727 () Bool)

(assert (= bs!539592 (and b!3170727 b!3170638)))

(declare-fun lambda!116003 () Int)

(assert (=> bs!539592 (= lambda!116003 lambda!116000)))

(declare-fun d!869206 () Bool)

(declare-fun res!1288909 () Bool)

(declare-fun e!1974772 () Bool)

(assert (=> d!869206 (=> (not res!1288909) (not e!1974772))))

(assert (=> d!869206 (= res!1288909 (valid!3269 (cache!4242 thiss!28524)))))

(assert (=> d!869206 (= (validCacheMap!78 (cache!4242 thiss!28524)) e!1974772)))

(declare-fun b!3170726 () Bool)

(declare-fun res!1288910 () Bool)

(assert (=> b!3170726 (=> (not res!1288910) (not e!1974772))))

(assert (=> b!3170726 (= res!1288910 (invariantList!490 (toList!2079 (map!7939 (cache!4242 thiss!28524)))))))

(assert (=> b!3170727 (= e!1974772 (forall!7166 (toList!2079 (map!7939 (cache!4242 thiss!28524))) lambda!116003))))

(assert (= (and d!869206 res!1288909) b!3170726))

(assert (= (and b!3170726 res!1288910) b!3170727))

(assert (=> d!869206 m!3429910))

(assert (=> b!3170726 m!3429926))

(declare-fun m!3429955 () Bool)

(assert (=> b!3170726 m!3429955))

(assert (=> b!3170727 m!3429926))

(declare-fun m!3429957 () Bool)

(assert (=> b!3170727 m!3429957))

(assert (=> start!296976 d!869206))

(declare-fun d!869208 () Bool)

(declare-fun res!1288913 () Bool)

(declare-fun e!1974775 () Bool)

(assert (=> d!869208 (=> (not res!1288913) (not e!1974775))))

(assert (=> d!869208 (= res!1288913 ((_ is HashMap!4096) (cache!4242 thiss!28524)))))

(assert (=> d!869208 (= (inv!48186 thiss!28524) e!1974775)))

(declare-fun b!3170730 () Bool)

(assert (=> b!3170730 (= e!1974775 (validCacheMap!78 (cache!4242 thiss!28524)))))

(assert (= (and d!869208 res!1288913) b!3170730))

(assert (=> b!3170730 m!3429912))

(assert (=> start!296976 d!869208))

(declare-fun d!869210 () Bool)

(declare-fun res!1288918 () Bool)

(declare-fun e!1974778 () Bool)

(assert (=> d!869210 (=> (not res!1288918) (not e!1974778))))

(declare-fun valid!3270 (MutLongMap!4190) Bool)

(assert (=> d!869210 (= res!1288918 (valid!3270 (v!35218 (underlying!8610 (cache!4242 thiss!28524)))))))

(assert (=> d!869210 (= (valid!3269 (cache!4242 thiss!28524)) e!1974778)))

(declare-fun b!3170735 () Bool)

(declare-fun res!1288919 () Bool)

(assert (=> b!3170735 (=> (not res!1288919) (not e!1974778))))

(declare-fun lambda!116006 () Int)

(declare-fun forall!7167 (List!35611 Int) Bool)

(assert (=> b!3170735 (= res!1288919 (forall!7167 (toList!2080 (map!7940 (v!35218 (underlying!8610 (cache!4242 thiss!28524))))) lambda!116006))))

(declare-fun b!3170736 () Bool)

(declare-fun allKeysSameHashInMap!243 (ListLongMap!737 Hashable!4106) Bool)

(assert (=> b!3170736 (= e!1974778 (allKeysSameHashInMap!243 (map!7940 (v!35218 (underlying!8610 (cache!4242 thiss!28524)))) (hashF!6138 (cache!4242 thiss!28524))))))

(assert (= (and d!869210 res!1288918) b!3170735))

(assert (= (and b!3170735 res!1288919) b!3170736))

(declare-fun m!3429959 () Bool)

(assert (=> d!869210 m!3429959))

(assert (=> b!3170735 m!3429942))

(declare-fun m!3429961 () Bool)

(assert (=> b!3170735 m!3429961))

(assert (=> b!3170736 m!3429942))

(assert (=> b!3170736 m!3429942))

(declare-fun m!3429963 () Bool)

(assert (=> b!3170736 m!3429963))

(assert (=> b!3170647 d!869210))

(declare-fun b!3170741 () Bool)

(declare-fun tp!1000713 () Bool)

(declare-fun e!1974781 () Bool)

(declare-fun tp!1000714 () Bool)

(declare-fun tp!1000715 () Bool)

(assert (=> b!3170741 (= e!1974781 (and tp!1000713 tp_is_empty!17101 tp!1000714 tp!1000715))))

(assert (=> b!3170650 (= tp!1000697 e!1974781)))

(assert (= (and b!3170650 ((_ is Cons!35486) mapDefault!18995)) b!3170741))

(declare-fun b!3170753 () Bool)

(declare-fun e!1974784 () Bool)

(declare-fun tp!1000727 () Bool)

(declare-fun tp!1000730 () Bool)

(assert (=> b!3170753 (= e!1974784 (and tp!1000727 tp!1000730))))

(declare-fun b!3170754 () Bool)

(declare-fun tp!1000728 () Bool)

(assert (=> b!3170754 (= e!1974784 tp!1000728)))

(declare-fun b!3170755 () Bool)

(declare-fun tp!1000729 () Bool)

(declare-fun tp!1000726 () Bool)

(assert (=> b!3170755 (= e!1974784 (and tp!1000729 tp!1000726))))

(declare-fun b!3170752 () Bool)

(assert (=> b!3170752 (= e!1974784 tp_is_empty!17101)))

(assert (=> b!3170645 (= tp!1000702 e!1974784)))

(assert (= (and b!3170645 ((_ is ElementMatch!9769) (regOne!20050 res!14113))) b!3170752))

(assert (= (and b!3170645 ((_ is Concat!15090) (regOne!20050 res!14113))) b!3170753))

(assert (= (and b!3170645 ((_ is Star!9769) (regOne!20050 res!14113))) b!3170754))

(assert (= (and b!3170645 ((_ is Union!9769) (regOne!20050 res!14113))) b!3170755))

(declare-fun b!3170757 () Bool)

(declare-fun e!1974785 () Bool)

(declare-fun tp!1000732 () Bool)

(declare-fun tp!1000735 () Bool)

(assert (=> b!3170757 (= e!1974785 (and tp!1000732 tp!1000735))))

(declare-fun b!3170758 () Bool)

(declare-fun tp!1000733 () Bool)

(assert (=> b!3170758 (= e!1974785 tp!1000733)))

(declare-fun b!3170759 () Bool)

(declare-fun tp!1000734 () Bool)

(declare-fun tp!1000731 () Bool)

(assert (=> b!3170759 (= e!1974785 (and tp!1000734 tp!1000731))))

(declare-fun b!3170756 () Bool)

(assert (=> b!3170756 (= e!1974785 tp_is_empty!17101)))

(assert (=> b!3170645 (= tp!1000700 e!1974785)))

(assert (= (and b!3170645 ((_ is ElementMatch!9769) (regTwo!20050 res!14113))) b!3170756))

(assert (= (and b!3170645 ((_ is Concat!15090) (regTwo!20050 res!14113))) b!3170757))

(assert (= (and b!3170645 ((_ is Star!9769) (regTwo!20050 res!14113))) b!3170758))

(assert (= (and b!3170645 ((_ is Union!9769) (regTwo!20050 res!14113))) b!3170759))

(declare-fun b!3170761 () Bool)

(declare-fun e!1974786 () Bool)

(declare-fun tp!1000737 () Bool)

(declare-fun tp!1000740 () Bool)

(assert (=> b!3170761 (= e!1974786 (and tp!1000737 tp!1000740))))

(declare-fun b!3170762 () Bool)

(declare-fun tp!1000738 () Bool)

(assert (=> b!3170762 (= e!1974786 tp!1000738)))

(declare-fun b!3170763 () Bool)

(declare-fun tp!1000739 () Bool)

(declare-fun tp!1000736 () Bool)

(assert (=> b!3170763 (= e!1974786 (and tp!1000739 tp!1000736))))

(declare-fun b!3170760 () Bool)

(assert (=> b!3170760 (= e!1974786 tp_is_empty!17101)))

(assert (=> b!3170655 (= tp!1000706 e!1974786)))

(assert (= (and b!3170655 ((_ is ElementMatch!9769) (regOne!20051 res!14113))) b!3170760))

(assert (= (and b!3170655 ((_ is Concat!15090) (regOne!20051 res!14113))) b!3170761))

(assert (= (and b!3170655 ((_ is Star!9769) (regOne!20051 res!14113))) b!3170762))

(assert (= (and b!3170655 ((_ is Union!9769) (regOne!20051 res!14113))) b!3170763))

(declare-fun b!3170765 () Bool)

(declare-fun e!1974787 () Bool)

(declare-fun tp!1000742 () Bool)

(declare-fun tp!1000745 () Bool)

(assert (=> b!3170765 (= e!1974787 (and tp!1000742 tp!1000745))))

(declare-fun b!3170766 () Bool)

(declare-fun tp!1000743 () Bool)

(assert (=> b!3170766 (= e!1974787 tp!1000743)))

(declare-fun b!3170767 () Bool)

(declare-fun tp!1000744 () Bool)

(declare-fun tp!1000741 () Bool)

(assert (=> b!3170767 (= e!1974787 (and tp!1000744 tp!1000741))))

(declare-fun b!3170764 () Bool)

(assert (=> b!3170764 (= e!1974787 tp_is_empty!17101)))

(assert (=> b!3170655 (= tp!1000690 e!1974787)))

(assert (= (and b!3170655 ((_ is ElementMatch!9769) (regTwo!20051 res!14113))) b!3170764))

(assert (= (and b!3170655 ((_ is Concat!15090) (regTwo!20051 res!14113))) b!3170765))

(assert (= (and b!3170655 ((_ is Star!9769) (regTwo!20051 res!14113))) b!3170766))

(assert (= (and b!3170655 ((_ is Union!9769) (regTwo!20051 res!14113))) b!3170767))

(declare-fun e!1974788 () Bool)

(declare-fun tp!1000748 () Bool)

(declare-fun tp!1000747 () Bool)

(declare-fun tp!1000746 () Bool)

(declare-fun b!3170768 () Bool)

(assert (=> b!3170768 (= e!1974788 (and tp!1000746 tp_is_empty!17101 tp!1000747 tp!1000748))))

(assert (=> b!3170639 (= tp!1000705 e!1974788)))

(assert (= (and b!3170639 ((_ is Cons!35486) (zeroValue!4449 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524)))))))) b!3170768))

(declare-fun b!3170769 () Bool)

(declare-fun tp!1000749 () Bool)

(declare-fun tp!1000750 () Bool)

(declare-fun tp!1000751 () Bool)

(declare-fun e!1974789 () Bool)

(assert (=> b!3170769 (= e!1974789 (and tp!1000749 tp_is_empty!17101 tp!1000750 tp!1000751))))

(assert (=> b!3170639 (= tp!1000695 e!1974789)))

(assert (= (and b!3170639 ((_ is Cons!35486) (minValue!4449 (v!35217 (underlying!8609 (v!35218 (underlying!8610 (cache!4242 thiss!28524)))))))) b!3170769))

(declare-fun b!3170771 () Bool)

(declare-fun e!1974790 () Bool)

(declare-fun tp!1000753 () Bool)

(declare-fun tp!1000756 () Bool)

(assert (=> b!3170771 (= e!1974790 (and tp!1000753 tp!1000756))))

(declare-fun b!3170772 () Bool)

(declare-fun tp!1000754 () Bool)

(assert (=> b!3170772 (= e!1974790 tp!1000754)))

(declare-fun b!3170773 () Bool)

(declare-fun tp!1000755 () Bool)

(declare-fun tp!1000752 () Bool)

(assert (=> b!3170773 (= e!1974790 (and tp!1000755 tp!1000752))))

(declare-fun b!3170770 () Bool)

(assert (=> b!3170770 (= e!1974790 tp_is_empty!17101)))

(assert (=> b!3170654 (= tp!1000696 e!1974790)))

(assert (= (and b!3170654 ((_ is ElementMatch!9769) (regOne!20050 r!4733))) b!3170770))

(assert (= (and b!3170654 ((_ is Concat!15090) (regOne!20050 r!4733))) b!3170771))

(assert (= (and b!3170654 ((_ is Star!9769) (regOne!20050 r!4733))) b!3170772))

(assert (= (and b!3170654 ((_ is Union!9769) (regOne!20050 r!4733))) b!3170773))

(declare-fun b!3170775 () Bool)

(declare-fun e!1974791 () Bool)

(declare-fun tp!1000758 () Bool)

(declare-fun tp!1000761 () Bool)

(assert (=> b!3170775 (= e!1974791 (and tp!1000758 tp!1000761))))

(declare-fun b!3170776 () Bool)

(declare-fun tp!1000759 () Bool)

(assert (=> b!3170776 (= e!1974791 tp!1000759)))

(declare-fun b!3170777 () Bool)

(declare-fun tp!1000760 () Bool)

(declare-fun tp!1000757 () Bool)

(assert (=> b!3170777 (= e!1974791 (and tp!1000760 tp!1000757))))

(declare-fun b!3170774 () Bool)

(assert (=> b!3170774 (= e!1974791 tp_is_empty!17101)))

(assert (=> b!3170654 (= tp!1000692 e!1974791)))

(assert (= (and b!3170654 ((_ is ElementMatch!9769) (regTwo!20050 r!4733))) b!3170774))

(assert (= (and b!3170654 ((_ is Concat!15090) (regTwo!20050 r!4733))) b!3170775))

(assert (= (and b!3170654 ((_ is Star!9769) (regTwo!20050 r!4733))) b!3170776))

(assert (= (and b!3170654 ((_ is Union!9769) (regTwo!20050 r!4733))) b!3170777))

(declare-fun b!3170779 () Bool)

(declare-fun e!1974792 () Bool)

(declare-fun tp!1000763 () Bool)

(declare-fun tp!1000766 () Bool)

(assert (=> b!3170779 (= e!1974792 (and tp!1000763 tp!1000766))))

(declare-fun b!3170780 () Bool)

(declare-fun tp!1000764 () Bool)

(assert (=> b!3170780 (= e!1974792 tp!1000764)))

(declare-fun b!3170781 () Bool)

(declare-fun tp!1000765 () Bool)

(declare-fun tp!1000762 () Bool)

(assert (=> b!3170781 (= e!1974792 (and tp!1000765 tp!1000762))))

(declare-fun b!3170778 () Bool)

(assert (=> b!3170778 (= e!1974792 tp_is_empty!17101)))

(assert (=> b!3170640 (= tp!1000704 e!1974792)))

(assert (= (and b!3170640 ((_ is ElementMatch!9769) (reg!10098 r!4733))) b!3170778))

(assert (= (and b!3170640 ((_ is Concat!15090) (reg!10098 r!4733))) b!3170779))

(assert (= (and b!3170640 ((_ is Star!9769) (reg!10098 r!4733))) b!3170780))

(assert (= (and b!3170640 ((_ is Union!9769) (reg!10098 r!4733))) b!3170781))

(declare-fun mapNonEmpty!18998 () Bool)

(declare-fun mapRes!18998 () Bool)

(declare-fun tp!1000781 () Bool)

(declare-fun e!1974797 () Bool)

(assert (=> mapNonEmpty!18998 (= mapRes!18998 (and tp!1000781 e!1974797))))

(declare-fun mapValue!18998 () List!35610)

(declare-fun mapRest!18998 () (Array (_ BitVec 32) List!35610))

(declare-fun mapKey!18998 () (_ BitVec 32))

(assert (=> mapNonEmpty!18998 (= mapRest!18995 (store mapRest!18998 mapKey!18998 mapValue!18998))))

(declare-fun condMapEmpty!18998 () Bool)

(declare-fun mapDefault!18998 () List!35610)

(assert (=> mapNonEmpty!18995 (= condMapEmpty!18998 (= mapRest!18995 ((as const (Array (_ BitVec 32) List!35610)) mapDefault!18998)))))

(declare-fun e!1974798 () Bool)

(assert (=> mapNonEmpty!18995 (= tp!1000691 (and e!1974798 mapRes!18998))))

(declare-fun b!3170788 () Bool)

(declare-fun tp!1000785 () Bool)

(declare-fun tp!1000784 () Bool)

(declare-fun tp!1000782 () Bool)

(assert (=> b!3170788 (= e!1974797 (and tp!1000784 tp_is_empty!17101 tp!1000785 tp!1000782))))

(declare-fun mapIsEmpty!18998 () Bool)

(assert (=> mapIsEmpty!18998 mapRes!18998))

(declare-fun tp!1000786 () Bool)

(declare-fun tp!1000787 () Bool)

(declare-fun tp!1000783 () Bool)

(declare-fun b!3170789 () Bool)

(assert (=> b!3170789 (= e!1974798 (and tp!1000783 tp_is_empty!17101 tp!1000786 tp!1000787))))

(assert (= (and mapNonEmpty!18995 condMapEmpty!18998) mapIsEmpty!18998))

(assert (= (and mapNonEmpty!18995 (not condMapEmpty!18998)) mapNonEmpty!18998))

(assert (= (and mapNonEmpty!18998 ((_ is Cons!35486) mapValue!18998)) b!3170788))

(assert (= (and mapNonEmpty!18995 ((_ is Cons!35486) mapDefault!18998)) b!3170789))

(declare-fun m!3429965 () Bool)

(assert (=> mapNonEmpty!18998 m!3429965))

(declare-fun tp!1000789 () Bool)

(declare-fun tp!1000788 () Bool)

(declare-fun b!3170790 () Bool)

(declare-fun tp!1000790 () Bool)

(declare-fun e!1974799 () Bool)

(assert (=> b!3170790 (= e!1974799 (and tp!1000788 tp_is_empty!17101 tp!1000789 tp!1000790))))

(assert (=> mapNonEmpty!18995 (= tp!1000694 e!1974799)))

(assert (= (and mapNonEmpty!18995 ((_ is Cons!35486) mapValue!18995)) b!3170790))

(declare-fun b!3170792 () Bool)

(declare-fun e!1974800 () Bool)

(declare-fun tp!1000792 () Bool)

(declare-fun tp!1000795 () Bool)

(assert (=> b!3170792 (= e!1974800 (and tp!1000792 tp!1000795))))

(declare-fun b!3170793 () Bool)

(declare-fun tp!1000793 () Bool)

(assert (=> b!3170793 (= e!1974800 tp!1000793)))

(declare-fun b!3170794 () Bool)

(declare-fun tp!1000794 () Bool)

(declare-fun tp!1000791 () Bool)

(assert (=> b!3170794 (= e!1974800 (and tp!1000794 tp!1000791))))

(declare-fun b!3170791 () Bool)

(assert (=> b!3170791 (= e!1974800 tp_is_empty!17101)))

(assert (=> b!3170642 (= tp!1000703 e!1974800)))

(assert (= (and b!3170642 ((_ is ElementMatch!9769) (regOne!20051 r!4733))) b!3170791))

(assert (= (and b!3170642 ((_ is Concat!15090) (regOne!20051 r!4733))) b!3170792))

(assert (= (and b!3170642 ((_ is Star!9769) (regOne!20051 r!4733))) b!3170793))

(assert (= (and b!3170642 ((_ is Union!9769) (regOne!20051 r!4733))) b!3170794))

(declare-fun b!3170796 () Bool)

(declare-fun e!1974801 () Bool)

(declare-fun tp!1000797 () Bool)

(declare-fun tp!1000800 () Bool)

(assert (=> b!3170796 (= e!1974801 (and tp!1000797 tp!1000800))))

(declare-fun b!3170797 () Bool)

(declare-fun tp!1000798 () Bool)

(assert (=> b!3170797 (= e!1974801 tp!1000798)))

(declare-fun b!3170798 () Bool)

(declare-fun tp!1000799 () Bool)

(declare-fun tp!1000796 () Bool)

(assert (=> b!3170798 (= e!1974801 (and tp!1000799 tp!1000796))))

(declare-fun b!3170795 () Bool)

(assert (=> b!3170795 (= e!1974801 tp_is_empty!17101)))

(assert (=> b!3170642 (= tp!1000693 e!1974801)))

(assert (= (and b!3170642 ((_ is ElementMatch!9769) (regTwo!20051 r!4733))) b!3170795))

(assert (= (and b!3170642 ((_ is Concat!15090) (regTwo!20051 r!4733))) b!3170796))

(assert (= (and b!3170642 ((_ is Star!9769) (regTwo!20051 r!4733))) b!3170797))

(assert (= (and b!3170642 ((_ is Union!9769) (regTwo!20051 r!4733))) b!3170798))

(declare-fun b!3170800 () Bool)

(declare-fun e!1974802 () Bool)

(declare-fun tp!1000802 () Bool)

(declare-fun tp!1000805 () Bool)

(assert (=> b!3170800 (= e!1974802 (and tp!1000802 tp!1000805))))

(declare-fun b!3170801 () Bool)

(declare-fun tp!1000803 () Bool)

(assert (=> b!3170801 (= e!1974802 tp!1000803)))

(declare-fun b!3170802 () Bool)

(declare-fun tp!1000804 () Bool)

(declare-fun tp!1000801 () Bool)

(assert (=> b!3170802 (= e!1974802 (and tp!1000804 tp!1000801))))

(declare-fun b!3170799 () Bool)

(assert (=> b!3170799 (= e!1974802 tp_is_empty!17101)))

(assert (=> b!3170648 (= tp!1000699 e!1974802)))

(assert (= (and b!3170648 ((_ is ElementMatch!9769) (reg!10098 res!14113))) b!3170799))

(assert (= (and b!3170648 ((_ is Concat!15090) (reg!10098 res!14113))) b!3170800))

(assert (= (and b!3170648 ((_ is Star!9769) (reg!10098 res!14113))) b!3170801))

(assert (= (and b!3170648 ((_ is Union!9769) (reg!10098 res!14113))) b!3170802))

(declare-fun b_lambda!86465 () Bool)

(assert (= b_lambda!86463 (or b!3170638 b_lambda!86465)))

(declare-fun bs!539593 () Bool)

(declare-fun d!869212 () Bool)

(assert (= bs!539593 (and d!869212 b!3170638)))

(declare-fun res!1288920 () Bool)

(declare-fun e!1974803 () Bool)

(assert (=> bs!539593 (=> (not res!1288920) (not e!1974803))))

(assert (=> bs!539593 (= res!1288920 (validRegex!4483 (_1!20491 (_1!20492 (h!40906 (toList!2079 (map!7939 (cache!4242 thiss!28524))))))))))

(assert (=> bs!539593 (= (dynLambda!14367 lambda!116000 (h!40906 (toList!2079 (map!7939 (cache!4242 thiss!28524))))) e!1974803)))

(declare-fun b!3170803 () Bool)

(assert (=> b!3170803 (= e!1974803 (= (_2!20492 (h!40906 (toList!2079 (map!7939 (cache!4242 thiss!28524))))) (derivativeStep!2910 (_1!20491 (_1!20492 (h!40906 (toList!2079 (map!7939 (cache!4242 thiss!28524)))))) (_2!20491 (_1!20492 (h!40906 (toList!2079 (map!7939 (cache!4242 thiss!28524)))))))))))

(assert (= (and bs!539593 res!1288920) b!3170803))

(declare-fun m!3429967 () Bool)

(assert (=> bs!539593 m!3429967))

(declare-fun m!3429969 () Bool)

(assert (=> b!3170803 m!3429969))

(assert (=> b!3170688 d!869212))

(check-sat (not b!3170794) (not b!3170758) (not b_next!83945) (not b!3170800) (not d!869204) (not b!3170741) (not b!3170777) (not b!3170730) (not bm!230338) (not b!3170761) (not b!3170726) (not b!3170771) (not b!3170803) (not b!3170753) (not b!3170798) (not b!3170681) (not d!869202) (not b!3170779) (not d!869206) (not b!3170757) (not b!3170801) (not b!3170762) (not b!3170796) (not b!3170765) (not bm!230351) (not b!3170735) (not b!3170788) (not b!3170775) (not b!3170768) (not b!3170773) (not b!3170769) (not b!3170710) (not mapNonEmpty!18998) (not b!3170776) (not b!3170792) b_and!209519 (not b_next!83947) (not b_lambda!86465) (not b!3170689) (not b!3170763) (not b!3170793) (not bm!230348) (not bm!230339) (not bs!539593) (not b!3170727) b_and!209521 tp_is_empty!17101 (not b!3170766) (not b!3170755) (not b!3170772) (not d!869210) (not b!3170736) (not b!3170797) (not b!3170759) (not b!3170754) (not b!3170802) (not b!3170790) (not b!3170789) (not b!3170781) (not b!3170767) (not b!3170780))
(check-sat b_and!209519 b_and!209521 (not b_next!83947) (not b_next!83945))
