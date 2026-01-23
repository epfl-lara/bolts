; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266584 () Bool)

(assert start!266584)

(declare-fun b!2749916 () Bool)

(declare-fun b_free!77717 () Bool)

(declare-fun b_next!78421 () Bool)

(assert (=> b!2749916 (= b_free!77717 (not b_next!78421))))

(declare-fun tp!868049 () Bool)

(declare-fun b_and!202455 () Bool)

(assert (=> b!2749916 (= tp!868049 b_and!202455)))

(declare-fun b!2749920 () Bool)

(declare-fun b_free!77719 () Bool)

(declare-fun b_next!78423 () Bool)

(assert (=> b!2749920 (= b_free!77719 (not b_next!78423))))

(declare-fun tp!868058 () Bool)

(declare-fun b_and!202457 () Bool)

(assert (=> b!2749920 (= tp!868058 b_and!202457)))

(declare-fun b!2749918 () Bool)

(declare-fun b_free!77721 () Bool)

(declare-fun b_next!78425 () Bool)

(assert (=> b!2749918 (= b_free!77721 (not b_next!78425))))

(declare-fun tp!868061 () Bool)

(declare-fun b_and!202459 () Bool)

(assert (=> b!2749918 (= tp!868061 b_and!202459)))

(declare-fun b!2749925 () Bool)

(declare-fun b_free!77723 () Bool)

(declare-fun b_next!78427 () Bool)

(assert (=> b!2749925 (= b_free!77723 (not b_next!78427))))

(declare-fun tp!868050 () Bool)

(declare-fun b_and!202461 () Bool)

(assert (=> b!2749925 (= tp!868050 b_and!202461)))

(declare-fun mapNonEmpty!16735 () Bool)

(declare-fun mapRes!16735 () Bool)

(declare-fun tp!868051 () Bool)

(declare-fun tp!868057 () Bool)

(assert (=> mapNonEmpty!16735 (= mapRes!16735 (and tp!868051 tp!868057))))

(declare-datatypes ((C!16220 0))(
  ( (C!16221 (val!10044 Int)) )
))
(declare-datatypes ((Regex!8031 0))(
  ( (ElementMatch!8031 (c!445053 C!16220)) (Concat!13119 (regOne!16574 Regex!8031) (regTwo!16574 Regex!8031)) (EmptyExpr!8031) (Star!8031 (reg!8360 Regex!8031)) (EmptyLang!8031) (Union!8031 (regOne!16575 Regex!8031) (regTwo!16575 Regex!8031)) )
))
(declare-datatypes ((List!31870 0))(
  ( (Nil!31770) (Cons!31770 (h!37190 Regex!8031) (t!227974 List!31870)) )
))
(declare-datatypes ((Context!4498 0))(
  ( (Context!4499 (exprs!2749 List!31870)) )
))
(declare-datatypes ((tuple3!4516 0))(
  ( (tuple3!4517 (_1!18571 Regex!8031) (_2!18571 Context!4498) (_3!2728 C!16220)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31686 0))(
  ( (tuple2!31687 (_1!18572 tuple3!4516) (_2!18572 (InoxSet Context!4498))) )
))
(declare-datatypes ((List!31871 0))(
  ( (Nil!31771) (Cons!31771 (h!37191 tuple2!31686) (t!227975 List!31871)) )
))
(declare-datatypes ((array!13077 0))(
  ( (array!13078 (arr!5835 (Array (_ BitVec 32) List!31871)) (size!24531 (_ BitVec 32))) )
))
(declare-datatypes ((array!13079 0))(
  ( (array!13080 (arr!5836 (Array (_ BitVec 32) (_ BitVec 64))) (size!24532 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7342 0))(
  ( (LongMapFixedSize!7343 (defaultEntry!4056 Int) (mask!9423 (_ BitVec 32)) (extraKeys!3920 (_ BitVec 32)) (zeroValue!3930 List!31871) (minValue!3930 List!31871) (_size!7385 (_ BitVec 32)) (_keys!3971 array!13079) (_values!3952 array!13077) (_vacant!3732 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14493 0))(
  ( (Cell!14494 (v!33381 LongMapFixedSize!7342)) )
))
(declare-datatypes ((MutLongMap!3671 0))(
  ( (LongMap!3671 (underlying!7545 Cell!14493)) (MutLongMapExt!3670 (__x!20663 Int)) )
))
(declare-datatypes ((Cell!14495 0))(
  ( (Cell!14496 (v!33382 MutLongMap!3671)) )
))
(declare-datatypes ((Hashable!3587 0))(
  ( (HashableExt!3586 (__x!20664 Int)) )
))
(declare-datatypes ((MutableMap!3577 0))(
  ( (MutableMapExt!3576 (__x!20665 Int)) (HashMap!3577 (underlying!7546 Cell!14495) (hashF!5619 Hashable!3587) (_size!7386 (_ BitVec 32)) (defaultValue!3748 Int)) )
))
(declare-datatypes ((CacheDown!2402 0))(
  ( (CacheDown!2403 (cache!3720 MutableMap!3577)) )
))
(declare-fun cacheDown!1142 () CacheDown!2402)

(declare-fun mapValue!16735 () List!31871)

(declare-fun mapKey!16736 () (_ BitVec 32))

(declare-fun mapRest!16736 () (Array (_ BitVec 32) List!31871))

(assert (=> mapNonEmpty!16735 (= (arr!5835 (_values!3952 (v!33381 (underlying!7545 (v!33382 (underlying!7546 (cache!3720 cacheDown!1142))))))) (store mapRest!16736 mapKey!16736 mapValue!16735))))

(declare-fun b!2749908 () Bool)

(declare-fun e!1733353 () Bool)

(declare-fun tp!868062 () Bool)

(assert (=> b!2749908 (= e!1733353 (and tp!868062 mapRes!16735))))

(declare-fun condMapEmpty!16736 () Bool)

(declare-fun mapDefault!16735 () List!31871)

(assert (=> b!2749908 (= condMapEmpty!16736 (= (arr!5835 (_values!3952 (v!33381 (underlying!7545 (v!33382 (underlying!7546 (cache!3720 cacheDown!1142))))))) ((as const (Array (_ BitVec 32) List!31871)) mapDefault!16735)))))

(declare-fun b!2749909 () Bool)

(declare-fun e!1733358 () Bool)

(declare-fun e!1733352 () Bool)

(assert (=> b!2749909 (= e!1733358 e!1733352)))

(declare-fun b!2749910 () Bool)

(declare-fun res!1153235 () Bool)

(declare-fun e!1733366 () Bool)

(assert (=> b!2749910 (=> (not res!1153235) (not e!1733366))))

(declare-datatypes ((tuple2!31688 0))(
  ( (tuple2!31689 (_1!18573 Context!4498) (_2!18573 C!16220)) )
))
(declare-datatypes ((tuple2!31690 0))(
  ( (tuple2!31691 (_1!18574 tuple2!31688) (_2!18574 (InoxSet Context!4498))) )
))
(declare-datatypes ((List!31872 0))(
  ( (Nil!31772) (Cons!31772 (h!37192 tuple2!31690) (t!227976 List!31872)) )
))
(declare-datatypes ((array!13081 0))(
  ( (array!13082 (arr!5837 (Array (_ BitVec 32) List!31872)) (size!24533 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7344 0))(
  ( (LongMapFixedSize!7345 (defaultEntry!4057 Int) (mask!9424 (_ BitVec 32)) (extraKeys!3921 (_ BitVec 32)) (zeroValue!3931 List!31872) (minValue!3931 List!31872) (_size!7387 (_ BitVec 32)) (_keys!3972 array!13079) (_values!3953 array!13081) (_vacant!3733 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14497 0))(
  ( (Cell!14498 (v!33383 LongMapFixedSize!7344)) )
))
(declare-datatypes ((MutLongMap!3672 0))(
  ( (LongMap!3672 (underlying!7547 Cell!14497)) (MutLongMapExt!3671 (__x!20666 Int)) )
))
(declare-datatypes ((Cell!14499 0))(
  ( (Cell!14500 (v!33384 MutLongMap!3672)) )
))
(declare-datatypes ((Hashable!3588 0))(
  ( (HashableExt!3587 (__x!20667 Int)) )
))
(declare-datatypes ((MutableMap!3578 0))(
  ( (MutableMapExt!3577 (__x!20668 Int)) (HashMap!3578 (underlying!7548 Cell!14499) (hashF!5620 Hashable!3588) (_size!7388 (_ BitVec 32)) (defaultValue!3749 Int)) )
))
(declare-datatypes ((CacheUp!2284 0))(
  ( (CacheUp!2285 (cache!3721 MutableMap!3578)) )
))
(declare-fun cacheUp!1023 () CacheUp!2284)

(declare-fun valid!2845 (CacheUp!2284) Bool)

(assert (=> b!2749910 (= res!1153235 (valid!2845 cacheUp!1023))))

(declare-fun b!2749911 () Bool)

(declare-fun e!1733364 () Bool)

(declare-fun e!1733363 () Bool)

(assert (=> b!2749911 (= e!1733364 e!1733363)))

(declare-fun b!2749912 () Bool)

(declare-fun e!1733368 () Bool)

(declare-fun tp!868060 () Bool)

(declare-fun mapRes!16736 () Bool)

(assert (=> b!2749912 (= e!1733368 (and tp!868060 mapRes!16736))))

(declare-fun condMapEmpty!16735 () Bool)

(declare-fun mapDefault!16736 () List!31872)

(assert (=> b!2749912 (= condMapEmpty!16735 (= (arr!5837 (_values!3953 (v!33383 (underlying!7547 (v!33384 (underlying!7548 (cache!3721 cacheUp!1023))))))) ((as const (Array (_ BitVec 32) List!31872)) mapDefault!16736)))))

(declare-fun b!2749913 () Bool)

(declare-fun e!1733367 () Bool)

(declare-fun tp!868056 () Bool)

(declare-fun tp!868059 () Bool)

(assert (=> b!2749913 (= e!1733367 (and tp!868056 tp!868059))))

(declare-fun b!2749914 () Bool)

(declare-fun tp_is_empty!13965 () Bool)

(assert (=> b!2749914 (= e!1733367 tp_is_empty!13965)))

(declare-fun b!2749915 () Bool)

(declare-fun e!1733356 () Bool)

(declare-fun e!1733365 () Bool)

(assert (=> b!2749915 (= e!1733356 e!1733365)))

(declare-fun e!1733354 () Bool)

(declare-fun e!1733361 () Bool)

(assert (=> b!2749916 (= e!1733354 (and e!1733361 tp!868049))))

(declare-fun b!2749917 () Bool)

(declare-fun lt!972469 () MutLongMap!3672)

(get-info :version)

(assert (=> b!2749917 (= e!1733361 (and e!1733364 ((_ is LongMap!3672) lt!972469)))))

(assert (=> b!2749917 (= lt!972469 (v!33384 (underlying!7548 (cache!3721 cacheUp!1023))))))

(declare-fun mapNonEmpty!16736 () Bool)

(declare-fun tp!868053 () Bool)

(declare-fun tp!868055 () Bool)

(assert (=> mapNonEmpty!16736 (= mapRes!16736 (and tp!868053 tp!868055))))

(declare-fun mapValue!16736 () List!31872)

(declare-fun mapRest!16735 () (Array (_ BitVec 32) List!31872))

(declare-fun mapKey!16735 () (_ BitVec 32))

(assert (=> mapNonEmpty!16736 (= (arr!5837 (_values!3953 (v!33383 (underlying!7547 (v!33384 (underlying!7548 (cache!3721 cacheUp!1023))))))) (store mapRest!16735 mapKey!16735 mapValue!16736))))

(declare-fun tp!868052 () Bool)

(declare-fun e!1733369 () Bool)

(declare-fun tp!868048 () Bool)

(declare-fun array_inv!4170 (array!13079) Bool)

(declare-fun array_inv!4171 (array!13077) Bool)

(assert (=> b!2749918 (= e!1733369 (and tp!868061 tp!868048 tp!868052 (array_inv!4170 (_keys!3971 (v!33381 (underlying!7545 (v!33382 (underlying!7546 (cache!3720 cacheDown!1142))))))) (array_inv!4171 (_values!3952 (v!33381 (underlying!7545 (v!33382 (underlying!7546 (cache!3720 cacheDown!1142))))))) e!1733353))))

(declare-fun b!2749919 () Bool)

(declare-fun tp!868066 () Bool)

(assert (=> b!2749919 (= e!1733367 tp!868066)))

(declare-fun e!1733355 () Bool)

(assert (=> b!2749920 (= e!1733352 (and e!1733355 tp!868058))))

(declare-fun mapIsEmpty!16735 () Bool)

(assert (=> mapIsEmpty!16735 mapRes!16736))

(declare-fun b!2749921 () Bool)

(declare-fun e!1733351 () Bool)

(assert (=> b!2749921 (= e!1733363 e!1733351)))

(declare-fun b!2749922 () Bool)

(declare-fun tp!868065 () Bool)

(declare-fun tp!868047 () Bool)

(assert (=> b!2749922 (= e!1733367 (and tp!868065 tp!868047))))

(declare-fun mapIsEmpty!16736 () Bool)

(assert (=> mapIsEmpty!16736 mapRes!16735))

(declare-fun r!15227 () Regex!8031)

(declare-fun b!2749923 () Bool)

(declare-fun lt!972472 () (InoxSet Context!4498))

(declare-datatypes ((List!31873 0))(
  ( (Nil!31773) (Cons!31773 (h!37193 C!16220) (t!227977 List!31873)) )
))
(declare-datatypes ((IArray!19835 0))(
  ( (IArray!19836 (innerList!9975 List!31873)) )
))
(declare-datatypes ((Conc!9915 0))(
  ( (Node!9915 (left!24292 Conc!9915) (right!24622 Conc!9915) (csize!20060 Int) (cheight!10126 Int)) (Leaf!15099 (xs!13022 IArray!19835) (csize!20061 Int)) (Empty!9915) )
))
(declare-datatypes ((BalanceConc!19444 0))(
  ( (BalanceConc!19445 (c!445054 Conc!9915)) )
))
(declare-fun input!6491 () BalanceConc!19444)

(declare-fun e!1733357 () Bool)

(declare-datatypes ((tuple2!31692 0))(
  ( (tuple2!31693 (_1!18575 BalanceConc!19444) (_2!18575 BalanceConc!19444)) )
))
(declare-fun findLongestMatchWithZipperSequence!199 (Regex!8031 BalanceConc!19444) tuple2!31692)

(declare-fun findLongestMatchZipperFast!1 ((InoxSet Context!4498) BalanceConc!19444) tuple2!31692)

(assert (=> b!2749923 (= e!1733357 (= (findLongestMatchWithZipperSequence!199 r!15227 input!6491) (findLongestMatchZipperFast!1 lt!972472 input!6491)))))

(declare-fun b!2749924 () Bool)

(declare-fun e!1733360 () Bool)

(assert (=> b!2749924 (= e!1733360 e!1733354)))

(declare-fun tp!868063 () Bool)

(declare-fun tp!868064 () Bool)

(declare-fun array_inv!4172 (array!13081) Bool)

(assert (=> b!2749925 (= e!1733351 (and tp!868050 tp!868063 tp!868064 (array_inv!4170 (_keys!3972 (v!33383 (underlying!7547 (v!33384 (underlying!7548 (cache!3721 cacheUp!1023))))))) (array_inv!4172 (_values!3953 (v!33383 (underlying!7547 (v!33384 (underlying!7548 (cache!3721 cacheUp!1023))))))) e!1733368))))

(declare-fun b!2749926 () Bool)

(assert (=> b!2749926 (= e!1733365 e!1733369)))

(declare-fun b!2749927 () Bool)

(declare-fun res!1153237 () Bool)

(assert (=> b!2749927 (=> (not res!1153237) (not e!1733366))))

(declare-fun valid!2846 (CacheDown!2402) Bool)

(assert (=> b!2749927 (= res!1153237 (valid!2846 cacheDown!1142))))

(declare-fun res!1153236 () Bool)

(assert (=> start!266584 (=> (not res!1153236) (not e!1733366))))

(declare-fun validRegex!3328 (Regex!8031) Bool)

(assert (=> start!266584 (= res!1153236 (validRegex!3328 r!15227))))

(assert (=> start!266584 e!1733366))

(assert (=> start!266584 e!1733367))

(declare-fun inv!43152 (CacheUp!2284) Bool)

(assert (=> start!266584 (and (inv!43152 cacheUp!1023) e!1733360)))

(declare-fun inv!43153 (CacheDown!2402) Bool)

(assert (=> start!266584 (and (inv!43153 cacheDown!1142) e!1733358)))

(declare-fun e!1733350 () Bool)

(declare-fun inv!43154 (BalanceConc!19444) Bool)

(assert (=> start!266584 (and (inv!43154 input!6491) e!1733350)))

(declare-fun b!2749928 () Bool)

(declare-fun lt!972473 () MutLongMap!3671)

(assert (=> b!2749928 (= e!1733355 (and e!1733356 ((_ is LongMap!3671) lt!972473)))))

(assert (=> b!2749928 (= lt!972473 (v!33382 (underlying!7546 (cache!3720 cacheDown!1142))))))

(declare-fun b!2749929 () Bool)

(assert (=> b!2749929 (= e!1733366 (not true))))

(assert (=> b!2749929 e!1733357))

(declare-fun res!1153238 () Bool)

(assert (=> b!2749929 (=> (not res!1153238) (not e!1733357))))

(declare-fun lt!972474 () List!31873)

(declare-fun sizeTr!146 (List!31873 Int) Int)

(declare-fun size!24534 (List!31873) Int)

(assert (=> b!2749929 (= res!1153238 (= (sizeTr!146 lt!972474 0) (size!24534 lt!972474)))))

(declare-datatypes ((Unit!45574 0))(
  ( (Unit!45575) )
))
(declare-fun lt!972471 () Unit!45574)

(declare-fun lemmaSizeTrEqualsSize!145 (List!31873 Int) Unit!45574)

(assert (=> b!2749929 (= lt!972471 (lemmaSizeTrEqualsSize!145 lt!972474 0))))

(declare-datatypes ((tuple2!31694 0))(
  ( (tuple2!31695 (_1!18576 List!31873) (_2!18576 List!31873)) )
))
(declare-fun findLongestMatchZipper!3 ((InoxSet Context!4498) List!31873) tuple2!31694)

(declare-fun findLongestMatch!719 (Regex!8031 List!31873) tuple2!31694)

(assert (=> b!2749929 (= (findLongestMatchZipper!3 lt!972472 lt!972474) (findLongestMatch!719 r!15227 lt!972474))))

(declare-fun lt!972470 () Unit!45574)

(declare-fun longestMatchSameAsRegex!3 (Regex!8031 (InoxSet Context!4498) List!31873) Unit!45574)

(assert (=> b!2749929 (= lt!972470 (longestMatchSameAsRegex!3 r!15227 lt!972472 lt!972474))))

(declare-fun list!12018 (BalanceConc!19444) List!31873)

(assert (=> b!2749929 (= lt!972474 (list!12018 input!6491))))

(declare-fun focus!287 (Regex!8031) (InoxSet Context!4498))

(assert (=> b!2749929 (= lt!972472 (focus!287 r!15227))))

(declare-fun b!2749930 () Bool)

(declare-fun tp!868054 () Bool)

(declare-fun inv!43155 (Conc!9915) Bool)

(assert (=> b!2749930 (= e!1733350 (and (inv!43155 (c!445054 input!6491)) tp!868054))))

(assert (= (and start!266584 res!1153236) b!2749910))

(assert (= (and b!2749910 res!1153235) b!2749927))

(assert (= (and b!2749927 res!1153237) b!2749929))

(assert (= (and b!2749929 res!1153238) b!2749923))

(assert (= (and start!266584 ((_ is ElementMatch!8031) r!15227)) b!2749914))

(assert (= (and start!266584 ((_ is Concat!13119) r!15227)) b!2749922))

(assert (= (and start!266584 ((_ is Star!8031) r!15227)) b!2749919))

(assert (= (and start!266584 ((_ is Union!8031) r!15227)) b!2749913))

(assert (= (and b!2749912 condMapEmpty!16735) mapIsEmpty!16735))

(assert (= (and b!2749912 (not condMapEmpty!16735)) mapNonEmpty!16736))

(assert (= b!2749925 b!2749912))

(assert (= b!2749921 b!2749925))

(assert (= b!2749911 b!2749921))

(assert (= (and b!2749917 ((_ is LongMap!3672) (v!33384 (underlying!7548 (cache!3721 cacheUp!1023))))) b!2749911))

(assert (= b!2749916 b!2749917))

(assert (= (and b!2749924 ((_ is HashMap!3578) (cache!3721 cacheUp!1023))) b!2749916))

(assert (= start!266584 b!2749924))

(assert (= (and b!2749908 condMapEmpty!16736) mapIsEmpty!16736))

(assert (= (and b!2749908 (not condMapEmpty!16736)) mapNonEmpty!16735))

(assert (= b!2749918 b!2749908))

(assert (= b!2749926 b!2749918))

(assert (= b!2749915 b!2749926))

(assert (= (and b!2749928 ((_ is LongMap!3671) (v!33382 (underlying!7546 (cache!3720 cacheDown!1142))))) b!2749915))

(assert (= b!2749920 b!2749928))

(assert (= (and b!2749909 ((_ is HashMap!3577) (cache!3720 cacheDown!1142))) b!2749920))

(assert (= start!266584 b!2749909))

(assert (= start!266584 b!2749930))

(declare-fun m!3165145 () Bool)

(assert (=> b!2749923 m!3165145))

(declare-fun m!3165147 () Bool)

(assert (=> b!2749923 m!3165147))

(declare-fun m!3165149 () Bool)

(assert (=> b!2749927 m!3165149))

(declare-fun m!3165151 () Bool)

(assert (=> start!266584 m!3165151))

(declare-fun m!3165153 () Bool)

(assert (=> start!266584 m!3165153))

(declare-fun m!3165155 () Bool)

(assert (=> start!266584 m!3165155))

(declare-fun m!3165157 () Bool)

(assert (=> start!266584 m!3165157))

(declare-fun m!3165159 () Bool)

(assert (=> b!2749925 m!3165159))

(declare-fun m!3165161 () Bool)

(assert (=> b!2749925 m!3165161))

(declare-fun m!3165163 () Bool)

(assert (=> b!2749930 m!3165163))

(declare-fun m!3165165 () Bool)

(assert (=> mapNonEmpty!16735 m!3165165))

(declare-fun m!3165167 () Bool)

(assert (=> mapNonEmpty!16736 m!3165167))

(declare-fun m!3165169 () Bool)

(assert (=> b!2749910 m!3165169))

(declare-fun m!3165171 () Bool)

(assert (=> b!2749929 m!3165171))

(declare-fun m!3165173 () Bool)

(assert (=> b!2749929 m!3165173))

(declare-fun m!3165175 () Bool)

(assert (=> b!2749929 m!3165175))

(declare-fun m!3165177 () Bool)

(assert (=> b!2749929 m!3165177))

(declare-fun m!3165179 () Bool)

(assert (=> b!2749929 m!3165179))

(declare-fun m!3165181 () Bool)

(assert (=> b!2749929 m!3165181))

(declare-fun m!3165183 () Bool)

(assert (=> b!2749929 m!3165183))

(declare-fun m!3165185 () Bool)

(assert (=> b!2749929 m!3165185))

(declare-fun m!3165187 () Bool)

(assert (=> b!2749918 m!3165187))

(declare-fun m!3165189 () Bool)

(assert (=> b!2749918 m!3165189))

(check-sat (not b!2749913) (not b_next!78423) b_and!202455 (not b!2749908) (not b!2749930) (not b!2749910) b_and!202461 (not b!2749922) (not b_next!78427) (not mapNonEmpty!16735) (not b!2749929) (not b_next!78425) (not b!2749912) (not b!2749925) b_and!202459 (not b!2749923) (not b_next!78421) (not b!2749918) (not mapNonEmpty!16736) (not b!2749927) (not start!266584) b_and!202457 tp_is_empty!13965 (not b!2749919))
(check-sat (not b_next!78423) b_and!202459 b_and!202455 (not b_next!78421) b_and!202461 (not b_next!78427) b_and!202457 (not b_next!78425))
