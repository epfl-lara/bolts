; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296892 () Bool)

(assert start!296892)

(declare-fun b!3169513 () Bool)

(declare-fun b_free!83209 () Bool)

(declare-fun b_next!83913 () Bool)

(assert (=> b!3169513 (= b_free!83209 (not b_next!83913))))

(declare-fun tp!999889 () Bool)

(declare-fun b_and!209487 () Bool)

(assert (=> b!3169513 (= tp!999889 b_and!209487)))

(declare-fun b!3169500 () Bool)

(declare-fun b_free!83211 () Bool)

(declare-fun b_next!83915 () Bool)

(assert (=> b!3169500 (= b_free!83211 (not b_next!83915))))

(declare-fun tp!999902 () Bool)

(declare-fun b_and!209489 () Bool)

(assert (=> b!3169500 (= tp!999902 b_and!209489)))

(declare-fun b!3169498 () Bool)

(declare-fun e!1974082 () Bool)

(declare-fun tp!999893 () Bool)

(declare-fun tp!999890 () Bool)

(assert (=> b!3169498 (= e!1974082 (and tp!999893 tp!999890))))

(declare-fun b!3169499 () Bool)

(declare-fun res!1288614 () Bool)

(declare-fun e!1974088 () Bool)

(assert (=> b!3169499 (=> (not res!1288614) (not e!1974088))))

(declare-datatypes ((C!19708 0))(
  ( (C!19709 (val!11890 Int)) )
))
(declare-datatypes ((Regex!9761 0))(
  ( (ElementMatch!9761 (c!533036 C!19708)) (Concat!15082 (regOne!20034 Regex!9761) (regTwo!20034 Regex!9761)) (EmptyExpr!9761) (Star!9761 (reg!10090 Regex!9761)) (EmptyLang!9761) (Union!9761 (regOne!20035 Regex!9761) (regTwo!20035 Regex!9761)) )
))
(declare-fun r!4733 () Regex!9761)

(declare-fun validRegex!4476 (Regex!9761) Bool)

(assert (=> b!3169499 (= res!1288614 (validRegex!4476 r!4733))))

(declare-fun tp!999899 () Bool)

(declare-fun tp!999891 () Bool)

(declare-fun e!1974089 () Bool)

(declare-fun e!1974080 () Bool)

(declare-datatypes ((tuple2!34666 0))(
  ( (tuple2!34667 (_1!20465 Regex!9761) (_2!20465 C!19708)) )
))
(declare-datatypes ((tuple2!34668 0))(
  ( (tuple2!34669 (_1!20466 tuple2!34666) (_2!20466 Regex!9761)) )
))
(declare-datatypes ((List!35599 0))(
  ( (Nil!35475) (Cons!35475 (h!40895 tuple2!34668) (t!234682 List!35599)) )
))
(declare-datatypes ((array!14948 0))(
  ( (array!14949 (arr!6654 (Array (_ BitVec 32) List!35599)) (size!26740 (_ BitVec 32))) )
))
(declare-datatypes ((array!14950 0))(
  ( (array!14951 (arr!6655 (Array (_ BitVec 32) (_ BitVec 64))) (size!26741 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8364 0))(
  ( (LongMapFixedSize!8365 (defaultEntry!4567 Int) (mask!10856 (_ BitVec 32)) (extraKeys!4431 (_ BitVec 32)) (zeroValue!4441 List!35599) (minValue!4441 List!35599) (_size!8407 (_ BitVec 32)) (_keys!4482 array!14950) (_values!4463 array!14948) (_vacant!4243 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16537 0))(
  ( (Cell!16538 (v!35197 LongMapFixedSize!8364)) )
))
(declare-datatypes ((MutLongMap!4182 0))(
  ( (LongMap!4182 (underlying!8593 Cell!16537)) (MutLongMapExt!4181 (__x!22652 Int)) )
))
(declare-datatypes ((Cell!16539 0))(
  ( (Cell!16540 (v!35198 MutLongMap!4182)) )
))
(declare-datatypes ((Hashable!4098 0))(
  ( (HashableExt!4097 (__x!22653 Int)) )
))
(declare-datatypes ((MutableMap!4088 0))(
  ( (MutableMapExt!4087 (__x!22654 Int)) (HashMap!4088 (underlying!8594 Cell!16539) (hashF!6130 Hashable!4098) (_size!8408 (_ BitVec 32)) (defaultValue!4259 Int)) )
))
(declare-datatypes ((Cache!446 0))(
  ( (Cache!447 (cache!4234 MutableMap!4088)) )
))
(declare-fun thiss!28524 () Cache!446)

(declare-fun array_inv!4770 (array!14950) Bool)

(declare-fun array_inv!4771 (array!14948) Bool)

(assert (=> b!3169500 (= e!1974080 (and tp!999902 tp!999899 tp!999891 (array_inv!4770 (_keys!4482 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))))) (array_inv!4771 (_values!4463 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))))) e!1974089))))

(declare-fun b!3169501 () Bool)

(declare-fun e!1974081 () Bool)

(declare-fun valid!3262 (MutableMap!4088) Bool)

(assert (=> b!3169501 (= e!1974081 (valid!3262 (cache!4234 thiss!28524)))))

(declare-fun mapIsEmpty!18959 () Bool)

(declare-fun mapRes!18959 () Bool)

(assert (=> mapIsEmpty!18959 mapRes!18959))

(declare-fun b!3169502 () Bool)

(declare-fun tp!999892 () Bool)

(assert (=> b!3169502 (= e!1974089 (and tp!999892 mapRes!18959))))

(declare-fun condMapEmpty!18959 () Bool)

(declare-fun mapDefault!18959 () List!35599)

(assert (=> b!3169502 (= condMapEmpty!18959 (= (arr!6654 (_values!4463 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35599)) mapDefault!18959)))))

(declare-fun b!3169503 () Bool)

(declare-fun e!1974083 () Bool)

(declare-fun e!1974087 () Bool)

(assert (=> b!3169503 (= e!1974083 e!1974087)))

(declare-fun b!3169504 () Bool)

(declare-fun e!1974085 () Bool)

(declare-fun tp!999895 () Bool)

(assert (=> b!3169504 (= e!1974085 tp!999895)))

(declare-fun b!3169505 () Bool)

(declare-fun tp!999886 () Bool)

(declare-fun tp!999896 () Bool)

(assert (=> b!3169505 (= e!1974085 (and tp!999886 tp!999896))))

(declare-fun b!3169506 () Bool)

(declare-fun tp!999901 () Bool)

(declare-fun tp!999887 () Bool)

(assert (=> b!3169506 (= e!1974085 (and tp!999901 tp!999887))))

(declare-fun b!3169507 () Bool)

(assert (=> b!3169507 (= e!1974088 (not e!1974081))))

(declare-fun res!1288617 () Bool)

(assert (=> b!3169507 (=> res!1288617 e!1974081)))

(get-info :version)

(assert (=> b!3169507 (= res!1288617 (not ((_ is HashMap!4088) (cache!4234 thiss!28524))))))

(declare-fun lt!1065657 () tuple2!34666)

(declare-fun lambda!115950 () Int)

(declare-fun res!14113 () Regex!9761)

(declare-fun forall!7157 (List!35599 Int) Bool)

(declare-datatypes ((ListMap!1321 0))(
  ( (ListMap!1322 (toList!2070 List!35599)) )
))
(declare-fun map!7926 (MutableMap!4088) ListMap!1321)

(declare-datatypes ((tuple2!34670 0))(
  ( (tuple2!34671 (_1!20467 Bool) (_2!20467 MutableMap!4088)) )
))
(declare-fun update!277 (MutableMap!4088 tuple2!34666 Regex!9761) tuple2!34670)

(assert (=> b!3169507 (forall!7157 (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113)))) lambda!115950)))

(declare-datatypes ((Unit!49895 0))(
  ( (Unit!49896) )
))
(declare-fun lt!1065658 () Unit!49895)

(declare-fun lemmaUpdatePreservesForallPairs!34 (MutableMap!4088 tuple2!34666 Regex!9761 Int) Unit!49895)

(assert (=> b!3169507 (= lt!1065658 (lemmaUpdatePreservesForallPairs!34 (cache!4234 thiss!28524) lt!1065657 res!14113 lambda!115950))))

(declare-fun c!6996 () C!19708)

(assert (=> b!3169507 (= lt!1065657 (tuple2!34667 r!4733 c!6996))))

(declare-fun b!3169508 () Bool)

(declare-fun tp_is_empty!17085 () Bool)

(assert (=> b!3169508 (= e!1974085 tp_is_empty!17085)))

(declare-fun b!3169509 () Bool)

(assert (=> b!3169509 (= e!1974082 tp_is_empty!17085)))

(declare-fun b!3169510 () Bool)

(declare-fun tp!999888 () Bool)

(declare-fun tp!999900 () Bool)

(assert (=> b!3169510 (= e!1974082 (and tp!999888 tp!999900))))

(declare-fun b!3169511 () Bool)

(declare-fun e!1974086 () Bool)

(declare-fun lt!1065659 () MutLongMap!4182)

(assert (=> b!3169511 (= e!1974086 (and e!1974083 ((_ is LongMap!4182) lt!1065659)))))

(assert (=> b!3169511 (= lt!1065659 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))))

(declare-fun b!3169512 () Bool)

(assert (=> b!3169512 (= e!1974087 e!1974080)))

(declare-fun e!1974079 () Bool)

(assert (=> b!3169513 (= e!1974079 (and e!1974086 tp!999889))))

(declare-fun mapNonEmpty!18959 () Bool)

(declare-fun tp!999894 () Bool)

(declare-fun tp!999898 () Bool)

(assert (=> mapNonEmpty!18959 (= mapRes!18959 (and tp!999894 tp!999898))))

(declare-fun mapValue!18959 () List!35599)

(declare-fun mapRest!18959 () (Array (_ BitVec 32) List!35599))

(declare-fun mapKey!18959 () (_ BitVec 32))

(assert (=> mapNonEmpty!18959 (= (arr!6654 (_values!4463 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))))) (store mapRest!18959 mapKey!18959 mapValue!18959))))

(declare-fun res!1288616 () Bool)

(assert (=> start!296892 (=> (not res!1288616) (not e!1974088))))

(declare-fun validCacheMap!70 (MutableMap!4088) Bool)

(assert (=> start!296892 (= res!1288616 (validCacheMap!70 (cache!4234 thiss!28524)))))

(assert (=> start!296892 e!1974088))

(declare-fun e!1974078 () Bool)

(declare-fun inv!48166 (Cache!446) Bool)

(assert (=> start!296892 (and (inv!48166 thiss!28524) e!1974078)))

(assert (=> start!296892 e!1974082))

(assert (=> start!296892 e!1974085))

(assert (=> start!296892 tp_is_empty!17085))

(declare-fun b!3169514 () Bool)

(assert (=> b!3169514 (= e!1974078 e!1974079)))

(declare-fun b!3169515 () Bool)

(declare-fun res!1288615 () Bool)

(assert (=> b!3169515 (=> (not res!1288615) (not e!1974088))))

(declare-fun derivativeStep!2903 (Regex!9761 C!19708) Regex!9761)

(assert (=> b!3169515 (= res!1288615 (= res!14113 (derivativeStep!2903 r!4733 c!6996)))))

(declare-fun b!3169516 () Bool)

(declare-fun tp!999897 () Bool)

(assert (=> b!3169516 (= e!1974082 tp!999897)))

(assert (= (and start!296892 res!1288616) b!3169499))

(assert (= (and b!3169499 res!1288614) b!3169515))

(assert (= (and b!3169515 res!1288615) b!3169507))

(assert (= (and b!3169507 (not res!1288617)) b!3169501))

(assert (= (and b!3169502 condMapEmpty!18959) mapIsEmpty!18959))

(assert (= (and b!3169502 (not condMapEmpty!18959)) mapNonEmpty!18959))

(assert (= b!3169500 b!3169502))

(assert (= b!3169512 b!3169500))

(assert (= b!3169503 b!3169512))

(assert (= (and b!3169511 ((_ is LongMap!4182) (v!35198 (underlying!8594 (cache!4234 thiss!28524))))) b!3169503))

(assert (= b!3169513 b!3169511))

(assert (= (and b!3169514 ((_ is HashMap!4088) (cache!4234 thiss!28524))) b!3169513))

(assert (= start!296892 b!3169514))

(assert (= (and start!296892 ((_ is ElementMatch!9761) r!4733)) b!3169509))

(assert (= (and start!296892 ((_ is Concat!15082) r!4733)) b!3169498))

(assert (= (and start!296892 ((_ is Star!9761) r!4733)) b!3169516))

(assert (= (and start!296892 ((_ is Union!9761) r!4733)) b!3169510))

(assert (= (and start!296892 ((_ is ElementMatch!9761) res!14113)) b!3169508))

(assert (= (and start!296892 ((_ is Concat!15082) res!14113)) b!3169505))

(assert (= (and start!296892 ((_ is Star!9761) res!14113)) b!3169504))

(assert (= (and start!296892 ((_ is Union!9761) res!14113)) b!3169506))

(declare-fun m!3429436 () Bool)

(assert (=> mapNonEmpty!18959 m!3429436))

(declare-fun m!3429438 () Bool)

(assert (=> b!3169515 m!3429438))

(declare-fun m!3429440 () Bool)

(assert (=> b!3169501 m!3429440))

(declare-fun m!3429442 () Bool)

(assert (=> b!3169500 m!3429442))

(declare-fun m!3429444 () Bool)

(assert (=> b!3169500 m!3429444))

(declare-fun m!3429446 () Bool)

(assert (=> b!3169507 m!3429446))

(declare-fun m!3429448 () Bool)

(assert (=> b!3169507 m!3429448))

(declare-fun m!3429450 () Bool)

(assert (=> b!3169507 m!3429450))

(declare-fun m!3429452 () Bool)

(assert (=> b!3169507 m!3429452))

(declare-fun m!3429454 () Bool)

(assert (=> start!296892 m!3429454))

(declare-fun m!3429456 () Bool)

(assert (=> start!296892 m!3429456))

(declare-fun m!3429458 () Bool)

(assert (=> b!3169499 m!3429458))

(check-sat (not b_next!83913) (not b!3169499) (not b!3169507) (not b!3169498) (not mapNonEmpty!18959) (not b!3169505) (not b!3169500) (not b!3169516) (not b_next!83915) (not b!3169510) (not b!3169506) b_and!209487 (not b!3169515) (not start!296892) (not b!3169502) b_and!209489 tp_is_empty!17085 (not b!3169501) (not b!3169504))
(check-sat b_and!209487 b_and!209489 (not b_next!83915) (not b_next!83913))
(get-model)

(declare-fun d!869118 () Bool)

(declare-fun res!1288622 () Bool)

(declare-fun e!1974094 () Bool)

(assert (=> d!869118 (=> res!1288622 e!1974094)))

(assert (=> d!869118 (= res!1288622 ((_ is Nil!35475) (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113))))))))

(assert (=> d!869118 (= (forall!7157 (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113)))) lambda!115950) e!1974094)))

(declare-fun b!3169521 () Bool)

(declare-fun e!1974095 () Bool)

(assert (=> b!3169521 (= e!1974094 e!1974095)))

(declare-fun res!1288623 () Bool)

(assert (=> b!3169521 (=> (not res!1288623) (not e!1974095))))

(declare-fun dynLambda!14365 (Int tuple2!34668) Bool)

(assert (=> b!3169521 (= res!1288623 (dynLambda!14365 lambda!115950 (h!40895 (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113)))))))))

(declare-fun b!3169522 () Bool)

(assert (=> b!3169522 (= e!1974095 (forall!7157 (t!234682 (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113))))) lambda!115950))))

(assert (= (and d!869118 (not res!1288622)) b!3169521))

(assert (= (and b!3169521 res!1288623) b!3169522))

(declare-fun b_lambda!86455 () Bool)

(assert (=> (not b_lambda!86455) (not b!3169521)))

(declare-fun m!3429460 () Bool)

(assert (=> b!3169521 m!3429460))

(declare-fun m!3429462 () Bool)

(assert (=> b!3169522 m!3429462))

(assert (=> b!3169507 d!869118))

(declare-fun d!869120 () Bool)

(declare-fun lt!1065662 () ListMap!1321)

(declare-fun invariantList!486 (List!35599) Bool)

(assert (=> d!869120 (invariantList!486 (toList!2070 lt!1065662))))

(declare-datatypes ((tuple2!34672 0))(
  ( (tuple2!34673 (_1!20468 (_ BitVec 64)) (_2!20468 List!35599)) )
))
(declare-datatypes ((List!35600 0))(
  ( (Nil!35476) (Cons!35476 (h!40896 tuple2!34672) (t!234683 List!35600)) )
))
(declare-fun extractMap!238 (List!35600) ListMap!1321)

(declare-datatypes ((ListLongMap!731 0))(
  ( (ListLongMap!732 (toList!2071 List!35600)) )
))
(declare-fun map!7927 (MutLongMap!4182) ListLongMap!731)

(assert (=> d!869120 (= lt!1065662 (extractMap!238 (toList!2071 (map!7927 (v!35198 (underlying!8594 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113))))))))))

(assert (=> d!869120 (valid!3262 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113)))))

(assert (=> d!869120 (= (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113))) lt!1065662)))

(declare-fun bs!539573 () Bool)

(assert (= bs!539573 d!869120))

(declare-fun m!3429464 () Bool)

(assert (=> bs!539573 m!3429464))

(declare-fun m!3429466 () Bool)

(assert (=> bs!539573 m!3429466))

(declare-fun m!3429468 () Bool)

(assert (=> bs!539573 m!3429468))

(declare-fun m!3429470 () Bool)

(assert (=> bs!539573 m!3429470))

(assert (=> b!3169507 d!869120))

(declare-fun bs!539574 () Bool)

(declare-fun b!3169572 () Bool)

(declare-fun b!3169564 () Bool)

(assert (= bs!539574 (and b!3169572 b!3169564)))

(declare-fun lambda!115960 () Int)

(declare-fun lambda!115959 () Int)

(assert (=> bs!539574 (= lambda!115960 lambda!115959)))

(declare-fun bm!230123 () Bool)

(declare-fun call!230153 () Bool)

(declare-fun call!230130 () ListMap!1321)

(declare-fun e!1974124 () ListMap!1321)

(declare-fun eq!77 (ListMap!1321 ListMap!1321) Bool)

(assert (=> bm!230123 (= call!230153 (eq!77 call!230130 e!1974124))))

(declare-fun c!533053 () Bool)

(declare-fun c!533052 () Bool)

(assert (=> bm!230123 (= c!533053 c!533052)))

(declare-fun b!3169561 () Bool)

(declare-fun e!1974120 () List!35599)

(assert (=> b!3169561 (= e!1974120 Nil!35475)))

(declare-fun bm!230124 () Bool)

(declare-fun call!230138 () (_ BitVec 64))

(declare-fun hash!809 (Hashable!4098 tuple2!34666) (_ BitVec 64))

(assert (=> bm!230124 (= call!230138 (hash!809 (hashF!6130 (cache!4234 thiss!28524)) lt!1065657))))

(declare-fun b!3169562 () Bool)

(declare-fun call!230128 () ListMap!1321)

(declare-fun lt!1065809 () ListMap!1321)

(assert (=> b!3169562 (= call!230128 lt!1065809)))

(declare-fun lt!1065792 () Unit!49895)

(declare-fun Unit!49897 () Unit!49895)

(assert (=> b!3169562 (= lt!1065792 Unit!49897)))

(declare-fun call!230147 () Bool)

(assert (=> b!3169562 call!230147))

(declare-fun e!1974123 () Unit!49895)

(declare-fun Unit!49898 () Unit!49895)

(assert (=> b!3169562 (= e!1974123 Unit!49898)))

(declare-fun lt!1065812 () (_ BitVec 64))

(declare-datatypes ((tuple2!34674 0))(
  ( (tuple2!34675 (_1!20469 Bool) (_2!20469 MutLongMap!4182)) )
))
(declare-fun call!230144 () tuple2!34674)

(declare-fun c!533054 () Bool)

(declare-fun bm!230125 () Bool)

(declare-fun lt!1065787 () List!35599)

(declare-fun lt!1065822 () List!35599)

(declare-fun lt!1065817 () (_ BitVec 64))

(declare-fun update!278 (MutLongMap!4182 (_ BitVec 64) List!35599) tuple2!34674)

(assert (=> bm!230125 (= call!230144 (update!278 (v!35198 (underlying!8594 (cache!4234 thiss!28524))) (ite c!533054 lt!1065812 lt!1065817) (ite c!533054 lt!1065822 lt!1065787)))))

(declare-fun call!230151 () List!35599)

(declare-fun bm!230126 () Bool)

(declare-fun call!230134 () Bool)

(declare-fun allKeysSameHash!104 (List!35599 (_ BitVec 64) Hashable!4098) Bool)

(assert (=> bm!230126 (= call!230134 (allKeysSameHash!104 call!230151 (ite c!533054 lt!1065812 lt!1065817) (hashF!6130 (cache!4234 thiss!28524))))))

(declare-fun bm!230127 () Bool)

(declare-fun call!230131 () Bool)

(declare-fun call!230156 () ListMap!1321)

(declare-fun call!230154 () ListMap!1321)

(assert (=> bm!230127 (= call!230131 (eq!77 call!230156 call!230154))))

(declare-fun b!3169563 () Bool)

(declare-fun e!1974127 () Bool)

(declare-fun e!1974128 () Bool)

(assert (=> b!3169563 (= e!1974127 e!1974128)))

(declare-fun lt!1065823 () tuple2!34670)

(assert (=> b!3169563 (= c!533052 (_1!20467 lt!1065823))))

(declare-fun call!230143 () Bool)

(assert (=> b!3169564 call!230143))

(declare-fun lt!1065814 () Unit!49895)

(declare-fun Unit!49899 () Unit!49895)

(assert (=> b!3169564 (= lt!1065814 Unit!49899)))

(declare-fun call!230155 () Bool)

(assert (=> b!3169564 call!230155))

(declare-fun lt!1065786 () Unit!49895)

(declare-fun Unit!49900 () Unit!49895)

(assert (=> b!3169564 (= lt!1065786 Unit!49900)))

(declare-fun call!230139 () Bool)

(assert (=> b!3169564 call!230139))

(declare-fun lt!1065795 () Unit!49895)

(declare-fun lt!1065784 () Unit!49895)

(assert (=> b!3169564 (= lt!1065795 lt!1065784)))

(declare-fun call!230146 () Bool)

(declare-fun call!230133 () Bool)

(assert (=> b!3169564 (= call!230146 call!230133)))

(declare-fun call!230150 () Unit!49895)

(assert (=> b!3169564 (= lt!1065784 call!230150)))

(declare-fun lt!1065800 () ListMap!1321)

(declare-fun call!230132 () ListMap!1321)

(assert (=> b!3169564 (= lt!1065800 call!230132)))

(declare-fun lt!1065773 () ListMap!1321)

(declare-fun call!230148 () ListMap!1321)

(assert (=> b!3169564 (= lt!1065773 call!230148)))

(declare-fun lt!1065797 () Unit!49895)

(declare-fun lt!1065775 () Unit!49895)

(assert (=> b!3169564 (= lt!1065797 lt!1065775)))

(assert (=> b!3169564 call!230131))

(declare-fun lt!1065820 () ListLongMap!731)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!16 (ListLongMap!731 (_ BitVec 64) List!35599 tuple2!34666 Regex!9761 Hashable!4098) Unit!49895)

(assert (=> b!3169564 (= lt!1065775 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!16 lt!1065820 lt!1065812 lt!1065822 lt!1065657 res!14113 (hashF!6130 (cache!4234 thiss!28524))))))

(declare-fun lt!1065808 () Unit!49895)

(declare-fun lt!1065794 () Unit!49895)

(assert (=> b!3169564 (= lt!1065808 lt!1065794)))

(declare-fun e!1974122 () Bool)

(assert (=> b!3169564 e!1974122))

(declare-fun res!1288638 () Bool)

(assert (=> b!3169564 (=> (not res!1288638) (not e!1974122))))

(declare-fun call!230157 () Bool)

(assert (=> b!3169564 (= res!1288638 call!230157)))

(declare-fun lt!1065799 () ListLongMap!731)

(declare-fun call!230136 () ListLongMap!731)

(assert (=> b!3169564 (= lt!1065799 call!230136)))

(declare-fun call!230141 () Unit!49895)

(assert (=> b!3169564 (= lt!1065794 call!230141)))

(declare-fun lt!1065807 () Unit!49895)

(declare-fun Unit!49901 () Unit!49895)

(assert (=> b!3169564 (= lt!1065807 Unit!49901)))

(declare-fun noDuplicateKeys!132 (List!35599) Bool)

(assert (=> b!3169564 (noDuplicateKeys!132 lt!1065822)))

(declare-fun lt!1065798 () Unit!49895)

(declare-fun Unit!49902 () Unit!49895)

(assert (=> b!3169564 (= lt!1065798 Unit!49902)))

(declare-fun containsKey!198 (List!35599 tuple2!34666) Bool)

(assert (=> b!3169564 (not (containsKey!198 call!230151 lt!1065657))))

(declare-fun lt!1065788 () Unit!49895)

(declare-fun Unit!49903 () Unit!49895)

(assert (=> b!3169564 (= lt!1065788 Unit!49903)))

(declare-fun lt!1065813 () Unit!49895)

(declare-fun lt!1065789 () Unit!49895)

(assert (=> b!3169564 (= lt!1065813 lt!1065789)))

(assert (=> b!3169564 (noDuplicateKeys!132 call!230151)))

(declare-fun lt!1065803 () List!35599)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!109 (List!35599 tuple2!34666) Unit!49895)

(assert (=> b!3169564 (= lt!1065789 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!109 lt!1065803 lt!1065657))))

(declare-fun lt!1065778 () Unit!49895)

(declare-fun lt!1065801 () Unit!49895)

(assert (=> b!3169564 (= lt!1065778 lt!1065801)))

(assert (=> b!3169564 call!230134))

(declare-fun call!230158 () Unit!49895)

(assert (=> b!3169564 (= lt!1065801 call!230158)))

(declare-fun lt!1065825 () Unit!49895)

(declare-fun lt!1065777 () Unit!49895)

(assert (=> b!3169564 (= lt!1065825 lt!1065777)))

(declare-fun call!230152 () Bool)

(assert (=> b!3169564 call!230152))

(declare-fun call!230129 () Unit!49895)

(assert (=> b!3169564 (= lt!1065777 call!230129)))

(declare-fun e!1974126 () Unit!49895)

(declare-fun Unit!49904 () Unit!49895)

(assert (=> b!3169564 (= e!1974126 Unit!49904)))

(declare-fun b!3169565 () Bool)

(declare-fun call!230137 () Bool)

(assert (=> b!3169565 (= e!1974122 call!230137)))

(declare-fun b!3169566 () Bool)

(declare-fun e!1974118 () Bool)

(assert (=> b!3169566 (= e!1974118 call!230153)))

(declare-fun d!869122 () Bool)

(assert (=> d!869122 e!1974127))

(declare-fun res!1288637 () Bool)

(assert (=> d!869122 (=> (not res!1288637) (not e!1974127))))

(assert (=> d!869122 (= res!1288637 ((_ is HashMap!4088) (_2!20467 lt!1065823)))))

(declare-fun lt!1065826 () tuple2!34670)

(assert (=> d!869122 (= lt!1065823 (tuple2!34671 (_1!20467 lt!1065826) (_2!20467 lt!1065826)))))

(declare-fun e!1974119 () tuple2!34670)

(assert (=> d!869122 (= lt!1065826 e!1974119)))

(declare-fun contains!6197 (MutableMap!4088 tuple2!34666) Bool)

(assert (=> d!869122 (= c!533054 (contains!6197 (cache!4234 thiss!28524) lt!1065657))))

(assert (=> d!869122 (= lt!1065820 (map!7927 (v!35198 (underlying!8594 (cache!4234 thiss!28524)))))))

(assert (=> d!869122 (= lt!1065809 (map!7926 (cache!4234 thiss!28524)))))

(assert (=> d!869122 (valid!3262 (cache!4234 thiss!28524))))

(assert (=> d!869122 (= (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113) lt!1065823)))

(declare-fun bm!230128 () Bool)

(declare-fun call!230149 () ListMap!1321)

(assert (=> bm!230128 (= call!230148 call!230149)))

(declare-fun bm!230129 () Bool)

(declare-fun call!230135 () ListMap!1321)

(assert (=> bm!230129 (= call!230135 (map!7926 (cache!4234 thiss!28524)))))

(declare-fun lt!1065802 () tuple2!34674)

(declare-fun call!230142 () ListLongMap!731)

(declare-fun bm!230130 () Bool)

(declare-fun lt!1065779 () tuple2!34674)

(assert (=> bm!230130 (= call!230142 (map!7927 (ite c!533054 (_2!20469 lt!1065779) (_2!20469 lt!1065802))))))

(declare-fun b!3169567 () Bool)

(assert (=> b!3169567 (= e!1974124 call!230135)))

(declare-fun b!3169568 () Bool)

(declare-fun call!230140 () List!35599)

(assert (=> b!3169568 (= e!1974120 call!230140)))

(declare-fun lt!1065824 () MutableMap!4088)

(declare-fun bm!230131 () Bool)

(declare-fun lt!1065821 () MutableMap!4088)

(assert (=> bm!230131 (= call!230149 (map!7926 (ite c!533054 lt!1065824 lt!1065821)))))

(declare-fun b!3169569 () Bool)

(declare-fun +!123 (ListMap!1321 tuple2!34668) ListMap!1321)

(assert (=> b!3169569 (= e!1974124 (+!123 call!230135 (tuple2!34669 lt!1065657 res!14113)))))

(declare-fun bm!230132 () Bool)

(declare-fun forall!7158 (List!35600 Int) Bool)

(assert (=> bm!230132 (= call!230139 (forall!7158 (toList!2071 call!230142) (ite c!533054 lambda!115959 lambda!115960)))))

(declare-fun bm!230133 () Bool)

(declare-fun +!124 (ListLongMap!731 tuple2!34672) ListLongMap!731)

(assert (=> bm!230133 (= call!230136 (+!124 lt!1065820 (ite c!533054 (tuple2!34673 lt!1065812 lt!1065822) (tuple2!34673 lt!1065817 lt!1065787))))))

(declare-fun bm!230134 () Bool)

(assert (=> bm!230134 (= call!230143 (eq!77 (ite c!533054 call!230148 call!230128) call!230132))))

(declare-fun lt!1065827 () ListLongMap!731)

(declare-fun bm!230135 () Bool)

(assert (=> bm!230135 (= call!230157 (forall!7158 (ite c!533054 (toList!2071 lt!1065799) (toList!2071 lt!1065827)) (ite c!533054 lambda!115959 lambda!115960)))))

(declare-fun lt!1065774 () ListMap!1321)

(declare-fun lt!1065791 () ListMap!1321)

(declare-fun bm!230136 () Bool)

(declare-fun lemmaEquivalentThenSameContains!16 (ListMap!1321 ListMap!1321 tuple2!34666) Unit!49895)

(assert (=> bm!230136 (= call!230150 (lemmaEquivalentThenSameContains!16 (ite c!533054 lt!1065773 lt!1065774) (ite c!533054 lt!1065800 lt!1065791) lt!1065657))))

(declare-fun b!3169570 () Bool)

(declare-fun res!1288634 () Bool)

(assert (=> b!3169570 (=> (not res!1288634) (not e!1974127))))

(assert (=> b!3169570 (= res!1288634 (valid!3262 (_2!20467 lt!1065823)))))

(declare-fun b!3169571 () Bool)

(assert (=> b!3169571 (= e!1974128 e!1974118)))

(declare-fun res!1288636 () Bool)

(declare-fun contains!6198 (ListMap!1321 tuple2!34666) Bool)

(assert (=> b!3169571 (= res!1288636 (contains!6198 call!230130 lt!1065657))))

(assert (=> b!3169571 (=> (not res!1288636) (not e!1974118))))

(assert (=> b!3169572 call!230133))

(declare-fun lt!1065816 () Unit!49895)

(declare-fun Unit!49905 () Unit!49895)

(assert (=> b!3169572 (= lt!1065816 Unit!49905)))

(assert (=> b!3169572 (contains!6198 call!230132 lt!1065657)))

(declare-fun lt!1065781 () Unit!49895)

(declare-fun lt!1065790 () Unit!49895)

(assert (=> b!3169572 (= lt!1065781 lt!1065790)))

(assert (=> b!3169572 (= (contains!6198 lt!1065774 lt!1065657) call!230146)))

(assert (=> b!3169572 (= lt!1065790 call!230150)))

(assert (=> b!3169572 (= lt!1065791 call!230132)))

(assert (=> b!3169572 (= lt!1065774 call!230128)))

(declare-fun lt!1065810 () Unit!49895)

(declare-fun Unit!49906 () Unit!49895)

(assert (=> b!3169572 (= lt!1065810 Unit!49906)))

(assert (=> b!3169572 call!230143))

(declare-fun lt!1065804 () Unit!49895)

(declare-fun Unit!49907 () Unit!49895)

(assert (=> b!3169572 (= lt!1065804 Unit!49907)))

(assert (=> b!3169572 call!230155))

(declare-fun lt!1065780 () Unit!49895)

(declare-fun Unit!49908 () Unit!49895)

(assert (=> b!3169572 (= lt!1065780 Unit!49908)))

(assert (=> b!3169572 call!230139))

(declare-fun lt!1065806 () Unit!49895)

(declare-fun lt!1065815 () Unit!49895)

(assert (=> b!3169572 (= lt!1065806 lt!1065815)))

(assert (=> b!3169572 call!230131))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!16 (ListLongMap!731 (_ BitVec 64) List!35599 tuple2!34666 Regex!9761 Hashable!4098) Unit!49895)

(assert (=> b!3169572 (= lt!1065815 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!16 lt!1065820 lt!1065817 lt!1065787 lt!1065657 res!14113 (hashF!6130 (cache!4234 thiss!28524))))))

(declare-fun lt!1065785 () Unit!49895)

(declare-fun lt!1065805 () Unit!49895)

(assert (=> b!3169572 (= lt!1065785 lt!1065805)))

(declare-fun e!1974125 () Bool)

(assert (=> b!3169572 e!1974125))

(declare-fun res!1288635 () Bool)

(assert (=> b!3169572 (=> (not res!1288635) (not e!1974125))))

(assert (=> b!3169572 (= res!1288635 call!230157)))

(assert (=> b!3169572 (= lt!1065827 call!230136)))

(assert (=> b!3169572 (= lt!1065805 call!230141)))

(declare-fun lt!1065796 () Unit!49895)

(declare-fun e!1974121 () Unit!49895)

(assert (=> b!3169572 (= lt!1065796 e!1974121)))

(declare-fun c!533057 () Bool)

(declare-fun lt!1065776 () List!35599)

(declare-fun isEmpty!19764 (List!35599) Bool)

(assert (=> b!3169572 (= c!533057 (not (isEmpty!19764 lt!1065776)))))

(declare-fun Unit!49909 () Unit!49895)

(assert (=> b!3169572 (= e!1974123 Unit!49909)))

(declare-fun bm!230137 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!91 (List!35599 tuple2!34666 (_ BitVec 64) Hashable!4098) Unit!49895)

(assert (=> bm!230137 (= call!230158 (lemmaRemovePairForKeyPreservesHash!91 (ite c!533054 lt!1065803 lt!1065776) lt!1065657 (ite c!533054 lt!1065812 lt!1065817) (hashF!6130 (cache!4234 thiss!28524))))))

(declare-fun bm!230138 () Bool)

(declare-fun removePairForKey!121 (List!35599 tuple2!34666) List!35599)

(assert (=> bm!230138 (= call!230151 (removePairForKey!121 (ite c!533054 lt!1065803 lt!1065776) lt!1065657))))

(declare-fun b!3169573 () Bool)

(declare-fun lt!1065782 () Unit!49895)

(assert (=> b!3169573 (= e!1974121 lt!1065782)))

(declare-fun lt!1065819 () Unit!49895)

(assert (=> b!3169573 (= lt!1065819 call!230129)))

(assert (=> b!3169573 call!230152))

(declare-fun lt!1065818 () Unit!49895)

(assert (=> b!3169573 (= lt!1065818 lt!1065819)))

(assert (=> b!3169573 (= lt!1065782 call!230158)))

(assert (=> b!3169573 call!230134))

(declare-fun b!3169574 () Bool)

(declare-datatypes ((tuple2!34676 0))(
  ( (tuple2!34677 (_1!20470 Unit!49895) (_2!20470 MutableMap!4088)) )
))
(declare-fun Unit!49910 () Unit!49895)

(declare-fun Unit!49911 () Unit!49895)

(assert (=> b!3169574 (= e!1974119 (tuple2!34671 (_1!20469 lt!1065802) (_2!20470 (ite (_1!20469 lt!1065802) (tuple2!34677 Unit!49910 (HashMap!4088 (Cell!16540 (_2!20469 lt!1065802)) (hashF!6130 (cache!4234 thiss!28524)) (bvadd (_size!8408 (cache!4234 thiss!28524)) #b00000000000000000000000000000001) (defaultValue!4259 (cache!4234 thiss!28524)))) (tuple2!34677 Unit!49911 lt!1065821)))))))

(assert (=> b!3169574 (= lt!1065817 call!230138)))

(declare-fun c!533051 () Bool)

(declare-fun contains!6199 (MutLongMap!4182 (_ BitVec 64)) Bool)

(assert (=> b!3169574 (= c!533051 (contains!6199 (v!35198 (underlying!8594 (cache!4234 thiss!28524))) lt!1065817))))

(assert (=> b!3169574 (= lt!1065776 e!1974120)))

(assert (=> b!3169574 (= lt!1065787 (Cons!35475 (tuple2!34669 lt!1065657 res!14113) lt!1065776))))

(assert (=> b!3169574 (= lt!1065802 call!230144)))

(assert (=> b!3169574 (= lt!1065821 (HashMap!4088 (Cell!16540 (_2!20469 lt!1065802)) (hashF!6130 (cache!4234 thiss!28524)) (_size!8408 (cache!4234 thiss!28524)) (defaultValue!4259 (cache!4234 thiss!28524))))))

(declare-fun c!533056 () Bool)

(assert (=> b!3169574 (= c!533056 (_1!20469 lt!1065802))))

(declare-fun lt!1065783 () Unit!49895)

(assert (=> b!3169574 (= lt!1065783 e!1974123)))

(declare-fun bm!230139 () Bool)

(assert (=> bm!230139 (= call!230130 (map!7926 (_2!20467 lt!1065823)))))

(declare-fun bm!230140 () Bool)

(assert (=> bm!230140 (= call!230133 (contains!6198 (ite c!533054 lt!1065800 call!230128) lt!1065657))))

(declare-fun bm!230141 () Bool)

(declare-fun apply!7964 (MutLongMap!4182 (_ BitVec 64)) List!35599)

(assert (=> bm!230141 (= call!230140 (apply!7964 (v!35198 (underlying!8594 (cache!4234 thiss!28524))) (ite c!533054 lt!1065812 lt!1065817)))))

(declare-fun bm!230142 () Bool)

(assert (=> bm!230142 (= call!230156 (extractMap!238 (toList!2071 call!230136)))))

(declare-fun b!3169575 () Bool)

(assert (=> b!3169575 (= e!1974125 call!230137)))

(declare-fun bm!230143 () Bool)

(assert (=> bm!230143 (= call!230128 call!230149)))

(declare-fun bm!230144 () Bool)

(declare-fun call!230145 () ListMap!1321)

(assert (=> bm!230144 (= call!230145 (extractMap!238 (toList!2071 lt!1065820)))))

(declare-fun b!3169576 () Bool)

(declare-fun Unit!49912 () Unit!49895)

(declare-fun Unit!49913 () Unit!49895)

(assert (=> b!3169576 (= e!1974119 (tuple2!34671 (_1!20469 lt!1065779) (_2!20470 (ite false (tuple2!34677 Unit!49912 (HashMap!4088 (Cell!16540 (_2!20469 lt!1065779)) (hashF!6130 (cache!4234 thiss!28524)) (bvadd (_size!8408 (cache!4234 thiss!28524)) #b00000000000000000000000000000001) (defaultValue!4259 (cache!4234 thiss!28524)))) (tuple2!34677 Unit!49913 lt!1065824)))))))

(assert (=> b!3169576 (= lt!1065812 call!230138)))

(assert (=> b!3169576 (= lt!1065803 call!230140)))

(assert (=> b!3169576 (= lt!1065822 (Cons!35475 (tuple2!34669 lt!1065657 res!14113) call!230151))))

(assert (=> b!3169576 (= lt!1065779 call!230144)))

(assert (=> b!3169576 (= lt!1065824 (HashMap!4088 (Cell!16540 (_2!20469 lt!1065779)) (hashF!6130 (cache!4234 thiss!28524)) (_size!8408 (cache!4234 thiss!28524)) (defaultValue!4259 (cache!4234 thiss!28524))))))

(declare-fun c!533055 () Bool)

(assert (=> b!3169576 (= c!533055 (_1!20469 lt!1065779))))

(declare-fun lt!1065811 () Unit!49895)

(assert (=> b!3169576 (= lt!1065811 e!1974126)))

(declare-fun b!3169577 () Bool)

(declare-fun Unit!49914 () Unit!49895)

(assert (=> b!3169577 (= e!1974121 Unit!49914)))

(declare-fun bm!230145 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!82 (ListLongMap!731 (_ BitVec 64) List!35599 Hashable!4098) Unit!49895)

(assert (=> bm!230145 (= call!230141 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!82 lt!1065820 (ite c!533054 lt!1065812 lt!1065817) (ite c!533054 lt!1065822 lt!1065787) (hashF!6130 (cache!4234 thiss!28524))))))

(declare-fun bm!230146 () Bool)

(declare-fun allKeysSameHashInMap!240 (ListLongMap!731 Hashable!4098) Bool)

(assert (=> bm!230146 (= call!230137 (allKeysSameHashInMap!240 (ite c!533054 lt!1065799 lt!1065827) (hashF!6130 (cache!4234 thiss!28524))))))

(declare-fun b!3169578 () Bool)

(assert (=> b!3169578 (= e!1974128 call!230153)))

(declare-fun bm!230147 () Bool)

(assert (=> bm!230147 (= call!230152 (allKeysSameHash!104 (ite c!533054 lt!1065803 lt!1065776) (ite c!533054 lt!1065812 lt!1065817) (hashF!6130 (cache!4234 thiss!28524))))))

(declare-fun bm!230148 () Bool)

(assert (=> bm!230148 (= call!230155 (allKeysSameHashInMap!240 call!230142 (hashF!6130 (cache!4234 thiss!28524))))))

(declare-fun bm!230149 () Bool)

(assert (=> bm!230149 (= call!230154 (+!123 call!230145 (tuple2!34669 lt!1065657 res!14113)))))

(declare-fun b!3169579 () Bool)

(assert (=> b!3169579 (= call!230148 lt!1065809)))

(declare-fun lt!1065793 () Unit!49895)

(declare-fun Unit!49915 () Unit!49895)

(assert (=> b!3169579 (= lt!1065793 Unit!49915)))

(assert (=> b!3169579 call!230147))

(declare-fun Unit!49916 () Unit!49895)

(assert (=> b!3169579 (= e!1974126 Unit!49916)))

(declare-fun bm!230150 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!95 (List!35600 (_ BitVec 64) List!35599 Hashable!4098) Unit!49895)

(assert (=> bm!230150 (= call!230129 (lemmaInLongMapAllKeySameHashThenForTuple!95 (toList!2071 lt!1065820) (ite c!533054 lt!1065812 lt!1065817) (ite c!533054 lt!1065803 lt!1065776) (hashF!6130 (cache!4234 thiss!28524))))))

(declare-fun bm!230151 () Bool)

(assert (=> bm!230151 (= call!230146 (contains!6198 (ite c!533054 lt!1065773 lt!1065791) lt!1065657))))

(declare-fun bm!230152 () Bool)

(assert (=> bm!230152 (= call!230147 (valid!3262 (ite c!533054 lt!1065824 lt!1065821)))))

(declare-fun bm!230153 () Bool)

(assert (=> bm!230153 (= call!230132 (+!123 lt!1065809 (tuple2!34669 lt!1065657 res!14113)))))

(assert (= (and d!869122 c!533054) b!3169576))

(assert (= (and d!869122 (not c!533054)) b!3169574))

(assert (= (and b!3169576 c!533055) b!3169564))

(assert (= (and b!3169576 (not c!533055)) b!3169579))

(assert (= (and b!3169564 res!1288638) b!3169565))

(assert (= (or b!3169564 b!3169579) bm!230128))

(assert (= (and b!3169574 c!533051) b!3169568))

(assert (= (and b!3169574 (not c!533051)) b!3169561))

(assert (= (and b!3169574 c!533056) b!3169572))

(assert (= (and b!3169574 (not c!533056)) b!3169562))

(assert (= (and b!3169572 c!533057) b!3169573))

(assert (= (and b!3169572 (not c!533057)) b!3169577))

(assert (= (and b!3169572 res!1288635) b!3169575))

(assert (= (or b!3169572 b!3169562) bm!230143))

(assert (= (or b!3169564 b!3169572) bm!230144))

(assert (= (or b!3169564 b!3169572) bm!230130))

(assert (= (or b!3169564 b!3169572) bm!230136))

(assert (= (or b!3169564 b!3169573) bm!230147))

(assert (= (or b!3169564 b!3169573) bm!230137))

(assert (= (or b!3169565 b!3169575) bm!230146))

(assert (= (or b!3169564 b!3169572) bm!230140))

(assert (= (or b!3169576 b!3169568) bm!230141))

(assert (= (or b!3169576 b!3169564 b!3169573) bm!230138))

(assert (= (or b!3169564 b!3169572) bm!230135))

(assert (= (or b!3169564 b!3169572) bm!230133))

(assert (= (or b!3169564 b!3169572) bm!230145))

(assert (= (or bm!230128 bm!230143) bm!230131))

(assert (= (or b!3169564 b!3169572) bm!230153))

(assert (= (or b!3169564 b!3169573) bm!230150))

(assert (= (or b!3169564 b!3169572) bm!230151))

(assert (= (or b!3169576 b!3169574) bm!230124))

(assert (= (or b!3169576 b!3169574) bm!230125))

(assert (= (or b!3169579 b!3169562) bm!230152))

(assert (= (or b!3169564 b!3169572) bm!230149))

(assert (= (or b!3169564 b!3169572) bm!230132))

(assert (= (or b!3169564 b!3169572) bm!230148))

(assert (= (or b!3169564 b!3169572) bm!230142))

(assert (= (or b!3169564 b!3169572) bm!230134))

(assert (= (or b!3169564 b!3169573) bm!230126))

(assert (= (or b!3169564 b!3169572) bm!230127))

(assert (= (and d!869122 res!1288637) b!3169570))

(assert (= (and b!3169570 res!1288634) b!3169563))

(assert (= (and b!3169563 c!533052) b!3169571))

(assert (= (and b!3169563 (not c!533052)) b!3169578))

(assert (= (and b!3169571 res!1288636) b!3169566))

(assert (= (or b!3169571 b!3169566 b!3169578) bm!230139))

(assert (= (or b!3169566 b!3169578) bm!230129))

(assert (= (or b!3169566 b!3169578) bm!230123))

(assert (= (and bm!230123 c!533053) b!3169569))

(assert (= (and bm!230123 (not c!533053)) b!3169567))

(declare-fun m!3429472 () Bool)

(assert (=> b!3169572 m!3429472))

(declare-fun m!3429474 () Bool)

(assert (=> b!3169572 m!3429474))

(declare-fun m!3429476 () Bool)

(assert (=> b!3169572 m!3429476))

(declare-fun m!3429478 () Bool)

(assert (=> b!3169572 m!3429478))

(declare-fun m!3429480 () Bool)

(assert (=> bm!230153 m!3429480))

(declare-fun m!3429482 () Bool)

(assert (=> d!869122 m!3429482))

(declare-fun m!3429484 () Bool)

(assert (=> d!869122 m!3429484))

(declare-fun m!3429486 () Bool)

(assert (=> d!869122 m!3429486))

(assert (=> d!869122 m!3429440))

(declare-fun m!3429488 () Bool)

(assert (=> bm!230152 m!3429488))

(declare-fun m!3429490 () Bool)

(assert (=> bm!230141 m!3429490))

(declare-fun m!3429492 () Bool)

(assert (=> bm!230151 m!3429492))

(declare-fun m!3429494 () Bool)

(assert (=> bm!230145 m!3429494))

(declare-fun m!3429496 () Bool)

(assert (=> bm!230127 m!3429496))

(declare-fun m!3429498 () Bool)

(assert (=> bm!230123 m!3429498))

(declare-fun m!3429500 () Bool)

(assert (=> bm!230126 m!3429500))

(declare-fun m!3429502 () Bool)

(assert (=> bm!230150 m!3429502))

(declare-fun m!3429504 () Bool)

(assert (=> bm!230137 m!3429504))

(declare-fun m!3429506 () Bool)

(assert (=> bm!230131 m!3429506))

(declare-fun m!3429508 () Bool)

(assert (=> bm!230134 m!3429508))

(declare-fun m!3429510 () Bool)

(assert (=> b!3169571 m!3429510))

(declare-fun m!3429512 () Bool)

(assert (=> b!3169574 m!3429512))

(declare-fun m!3429514 () Bool)

(assert (=> bm!230124 m!3429514))

(declare-fun m!3429516 () Bool)

(assert (=> bm!230144 m!3429516))

(declare-fun m!3429518 () Bool)

(assert (=> bm!230146 m!3429518))

(declare-fun m!3429520 () Bool)

(assert (=> b!3169564 m!3429520))

(declare-fun m!3429522 () Bool)

(assert (=> b!3169564 m!3429522))

(declare-fun m!3429524 () Bool)

(assert (=> b!3169564 m!3429524))

(declare-fun m!3429526 () Bool)

(assert (=> b!3169564 m!3429526))

(declare-fun m!3429528 () Bool)

(assert (=> b!3169564 m!3429528))

(declare-fun m!3429530 () Bool)

(assert (=> bm!230148 m!3429530))

(declare-fun m!3429532 () Bool)

(assert (=> bm!230133 m!3429532))

(declare-fun m!3429534 () Bool)

(assert (=> bm!230142 m!3429534))

(declare-fun m!3429536 () Bool)

(assert (=> bm!230136 m!3429536))

(declare-fun m!3429538 () Bool)

(assert (=> bm!230125 m!3429538))

(declare-fun m!3429540 () Bool)

(assert (=> b!3169570 m!3429540))

(assert (=> bm!230129 m!3429486))

(declare-fun m!3429542 () Bool)

(assert (=> bm!230147 m!3429542))

(declare-fun m!3429544 () Bool)

(assert (=> bm!230139 m!3429544))

(declare-fun m!3429546 () Bool)

(assert (=> bm!230135 m!3429546))

(declare-fun m!3429548 () Bool)

(assert (=> b!3169569 m!3429548))

(declare-fun m!3429550 () Bool)

(assert (=> bm!230132 m!3429550))

(declare-fun m!3429552 () Bool)

(assert (=> bm!230149 m!3429552))

(declare-fun m!3429554 () Bool)

(assert (=> bm!230140 m!3429554))

(declare-fun m!3429556 () Bool)

(assert (=> bm!230130 m!3429556))

(declare-fun m!3429558 () Bool)

(assert (=> bm!230138 m!3429558))

(assert (=> b!3169507 d!869122))

(declare-fun d!869124 () Bool)

(declare-fun e!1974131 () Bool)

(assert (=> d!869124 e!1974131))

(declare-fun res!1288641 () Bool)

(assert (=> d!869124 (=> (not res!1288641) (not e!1974131))))

(assert (=> d!869124 (= res!1288641 (and (or (not ((_ is HashMap!4088) (cache!4234 thiss!28524))) ((_ is HashMap!4088) (cache!4234 thiss!28524))) ((_ is HashMap!4088) (cache!4234 thiss!28524))))))

(declare-fun lt!1065845 () Unit!49895)

(declare-fun choose!18517 (MutableMap!4088 tuple2!34666 Regex!9761 Int) Unit!49895)

(assert (=> d!869124 (= lt!1065845 (choose!18517 (cache!4234 thiss!28524) lt!1065657 res!14113 lambda!115950))))

(assert (=> d!869124 (valid!3262 (cache!4234 thiss!28524))))

(assert (=> d!869124 (= (lemmaUpdatePreservesForallPairs!34 (cache!4234 thiss!28524) lt!1065657 res!14113 lambda!115950) lt!1065845)))

(declare-fun b!3169582 () Bool)

(declare-fun lt!1065840 () MutableMap!4088)

(assert (=> b!3169582 (= e!1974131 (forall!7157 (toList!2070 (map!7926 lt!1065840)) lambda!115950))))

(assert (=> b!3169582 ((_ is HashMap!4088) lt!1065840)))

(declare-fun lt!1065842 () MutableMap!4088)

(assert (=> b!3169582 (= lt!1065840 lt!1065842)))

(assert (=> b!3169582 ((_ is HashMap!4088) lt!1065842)))

(declare-fun lt!1065844 () MutableMap!4088)

(assert (=> b!3169582 (= lt!1065842 lt!1065844)))

(assert (=> b!3169582 ((_ is HashMap!4088) lt!1065844)))

(declare-fun lt!1065843 () tuple2!34670)

(assert (=> b!3169582 (= lt!1065844 (_2!20467 lt!1065843))))

(assert (=> b!3169582 ((_ is HashMap!4088) (_2!20467 lt!1065843))))

(declare-fun lt!1065841 () tuple2!34670)

(assert (=> b!3169582 (= lt!1065843 lt!1065841)))

(assert (=> b!3169582 ((_ is HashMap!4088) (_2!20467 lt!1065841))))

(assert (=> b!3169582 (= lt!1065841 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113))))

(assert (= (and d!869124 res!1288641) b!3169582))

(declare-fun m!3429560 () Bool)

(assert (=> d!869124 m!3429560))

(assert (=> d!869124 m!3429440))

(declare-fun m!3429562 () Bool)

(assert (=> b!3169582 m!3429562))

(declare-fun m!3429564 () Bool)

(assert (=> b!3169582 m!3429564))

(assert (=> b!3169582 m!3429446))

(assert (=> b!3169507 d!869124))

(declare-fun bs!539575 () Bool)

(declare-fun b!3169590 () Bool)

(assert (= bs!539575 (and b!3169590 b!3169507)))

(declare-fun lambda!115963 () Int)

(assert (=> bs!539575 (= lambda!115963 lambda!115950)))

(declare-fun d!869126 () Bool)

(declare-fun res!1288648 () Bool)

(declare-fun e!1974136 () Bool)

(assert (=> d!869126 (=> (not res!1288648) (not e!1974136))))

(assert (=> d!869126 (= res!1288648 (valid!3262 (cache!4234 thiss!28524)))))

(assert (=> d!869126 (= (validCacheMap!70 (cache!4234 thiss!28524)) e!1974136)))

(declare-fun b!3169589 () Bool)

(declare-fun res!1288649 () Bool)

(assert (=> b!3169589 (=> (not res!1288649) (not e!1974136))))

(assert (=> b!3169589 (= res!1288649 (invariantList!486 (toList!2070 (map!7926 (cache!4234 thiss!28524)))))))

(assert (=> b!3169590 (= e!1974136 (forall!7157 (toList!2070 (map!7926 (cache!4234 thiss!28524))) lambda!115963))))

(assert (= (and d!869126 res!1288648) b!3169589))

(assert (= (and b!3169589 res!1288649) b!3169590))

(assert (=> d!869126 m!3429440))

(assert (=> b!3169589 m!3429486))

(declare-fun m!3429567 () Bool)

(assert (=> b!3169589 m!3429567))

(assert (=> b!3169590 m!3429486))

(declare-fun m!3429569 () Bool)

(assert (=> b!3169590 m!3429569))

(assert (=> start!296892 d!869126))

(declare-fun d!869128 () Bool)

(declare-fun res!1288652 () Bool)

(declare-fun e!1974139 () Bool)

(assert (=> d!869128 (=> (not res!1288652) (not e!1974139))))

(assert (=> d!869128 (= res!1288652 ((_ is HashMap!4088) (cache!4234 thiss!28524)))))

(assert (=> d!869128 (= (inv!48166 thiss!28524) e!1974139)))

(declare-fun b!3169593 () Bool)

(assert (=> b!3169593 (= e!1974139 (validCacheMap!70 (cache!4234 thiss!28524)))))

(assert (= (and d!869128 res!1288652) b!3169593))

(assert (=> b!3169593 m!3429454))

(assert (=> start!296892 d!869128))

(declare-fun d!869130 () Bool)

(assert (=> d!869130 (= (array_inv!4770 (_keys!4482 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))))) (bvsge (size!26741 (_keys!4482 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3169500 d!869130))

(declare-fun d!869132 () Bool)

(assert (=> d!869132 (= (array_inv!4771 (_values!4463 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))))) (bvsge (size!26740 (_values!4463 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3169500 d!869132))

(declare-fun b!3169612 () Bool)

(declare-fun e!1974154 () Bool)

(declare-fun e!1974158 () Bool)

(assert (=> b!3169612 (= e!1974154 e!1974158)))

(declare-fun c!533063 () Bool)

(assert (=> b!3169612 (= c!533063 ((_ is Star!9761) r!4733))))

(declare-fun b!3169613 () Bool)

(declare-fun e!1974159 () Bool)

(declare-fun call!230167 () Bool)

(assert (=> b!3169613 (= e!1974159 call!230167)))

(declare-fun b!3169614 () Bool)

(declare-fun res!1288665 () Bool)

(assert (=> b!3169614 (=> (not res!1288665) (not e!1974159))))

(declare-fun call!230166 () Bool)

(assert (=> b!3169614 (= res!1288665 call!230166)))

(declare-fun e!1974156 () Bool)

(assert (=> b!3169614 (= e!1974156 e!1974159)))

(declare-fun b!3169615 () Bool)

(declare-fun e!1974157 () Bool)

(declare-fun e!1974155 () Bool)

(assert (=> b!3169615 (= e!1974157 e!1974155)))

(declare-fun res!1288667 () Bool)

(assert (=> b!3169615 (=> (not res!1288667) (not e!1974155))))

(assert (=> b!3169615 (= res!1288667 call!230167)))

(declare-fun b!3169616 () Bool)

(assert (=> b!3169616 (= e!1974155 call!230166)))

(declare-fun bm!230161 () Bool)

(declare-fun call!230165 () Bool)

(assert (=> bm!230161 (= call!230166 call!230165)))

(declare-fun bm!230162 () Bool)

(declare-fun c!533062 () Bool)

(assert (=> bm!230162 (= call!230167 (validRegex!4476 (ite c!533062 (regTwo!20035 r!4733) (regOne!20034 r!4733))))))

(declare-fun b!3169617 () Bool)

(declare-fun e!1974160 () Bool)

(assert (=> b!3169617 (= e!1974160 call!230165)))

(declare-fun b!3169618 () Bool)

(assert (=> b!3169618 (= e!1974158 e!1974160)))

(declare-fun res!1288666 () Bool)

(declare-fun nullable!3353 (Regex!9761) Bool)

(assert (=> b!3169618 (= res!1288666 (not (nullable!3353 (reg!10090 r!4733))))))

(assert (=> b!3169618 (=> (not res!1288666) (not e!1974160))))

(declare-fun bm!230160 () Bool)

(assert (=> bm!230160 (= call!230165 (validRegex!4476 (ite c!533063 (reg!10090 r!4733) (ite c!533062 (regOne!20035 r!4733) (regTwo!20034 r!4733)))))))

(declare-fun d!869134 () Bool)

(declare-fun res!1288663 () Bool)

(assert (=> d!869134 (=> res!1288663 e!1974154)))

(assert (=> d!869134 (= res!1288663 ((_ is ElementMatch!9761) r!4733))))

(assert (=> d!869134 (= (validRegex!4476 r!4733) e!1974154)))

(declare-fun b!3169619 () Bool)

(assert (=> b!3169619 (= e!1974158 e!1974156)))

(assert (=> b!3169619 (= c!533062 ((_ is Union!9761) r!4733))))

(declare-fun b!3169620 () Bool)

(declare-fun res!1288664 () Bool)

(assert (=> b!3169620 (=> res!1288664 e!1974157)))

(assert (=> b!3169620 (= res!1288664 (not ((_ is Concat!15082) r!4733)))))

(assert (=> b!3169620 (= e!1974156 e!1974157)))

(assert (= (and d!869134 (not res!1288663)) b!3169612))

(assert (= (and b!3169612 c!533063) b!3169618))

(assert (= (and b!3169612 (not c!533063)) b!3169619))

(assert (= (and b!3169618 res!1288666) b!3169617))

(assert (= (and b!3169619 c!533062) b!3169614))

(assert (= (and b!3169619 (not c!533062)) b!3169620))

(assert (= (and b!3169614 res!1288665) b!3169613))

(assert (= (and b!3169620 (not res!1288664)) b!3169615))

(assert (= (and b!3169615 res!1288667) b!3169616))

(assert (= (or b!3169614 b!3169616) bm!230161))

(assert (= (or b!3169613 b!3169615) bm!230162))

(assert (= (or b!3169617 bm!230161) bm!230160))

(declare-fun m!3429571 () Bool)

(assert (=> bm!230162 m!3429571))

(declare-fun m!3429573 () Bool)

(assert (=> b!3169618 m!3429573))

(declare-fun m!3429575 () Bool)

(assert (=> bm!230160 m!3429575))

(assert (=> b!3169499 d!869134))

(declare-fun bs!539576 () Bool)

(declare-fun b!3169625 () Bool)

(assert (= bs!539576 (and b!3169625 b!3169564)))

(declare-fun lambda!115966 () Int)

(assert (=> bs!539576 (= lambda!115966 lambda!115959)))

(declare-fun bs!539577 () Bool)

(assert (= bs!539577 (and b!3169625 b!3169572)))

(assert (=> bs!539577 (= lambda!115966 lambda!115960)))

(declare-fun d!869136 () Bool)

(declare-fun res!1288672 () Bool)

(declare-fun e!1974163 () Bool)

(assert (=> d!869136 (=> (not res!1288672) (not e!1974163))))

(declare-fun valid!3263 (MutLongMap!4182) Bool)

(assert (=> d!869136 (= res!1288672 (valid!3263 (v!35198 (underlying!8594 (cache!4234 thiss!28524)))))))

(assert (=> d!869136 (= (valid!3262 (cache!4234 thiss!28524)) e!1974163)))

(declare-fun res!1288673 () Bool)

(assert (=> b!3169625 (=> (not res!1288673) (not e!1974163))))

(assert (=> b!3169625 (= res!1288673 (forall!7158 (toList!2071 (map!7927 (v!35198 (underlying!8594 (cache!4234 thiss!28524))))) lambda!115966))))

(declare-fun b!3169626 () Bool)

(assert (=> b!3169626 (= e!1974163 (allKeysSameHashInMap!240 (map!7927 (v!35198 (underlying!8594 (cache!4234 thiss!28524)))) (hashF!6130 (cache!4234 thiss!28524))))))

(assert (= (and d!869136 res!1288672) b!3169625))

(assert (= (and b!3169625 res!1288673) b!3169626))

(declare-fun m!3429577 () Bool)

(assert (=> d!869136 m!3429577))

(assert (=> b!3169625 m!3429484))

(declare-fun m!3429579 () Bool)

(assert (=> b!3169625 m!3429579))

(assert (=> b!3169626 m!3429484))

(assert (=> b!3169626 m!3429484))

(declare-fun m!3429581 () Bool)

(assert (=> b!3169626 m!3429581))

(assert (=> b!3169501 d!869136))

(declare-fun b!3169647 () Bool)

(declare-fun c!533078 () Bool)

(assert (=> b!3169647 (= c!533078 (nullable!3353 (regOne!20034 r!4733)))))

(declare-fun e!1974175 () Regex!9761)

(declare-fun e!1974177 () Regex!9761)

(assert (=> b!3169647 (= e!1974175 e!1974177)))

(declare-fun b!3169648 () Bool)

(declare-fun c!533074 () Bool)

(assert (=> b!3169648 (= c!533074 ((_ is Union!9761) r!4733))))

(declare-fun e!1974174 () Regex!9761)

(declare-fun e!1974176 () Regex!9761)

(assert (=> b!3169648 (= e!1974174 e!1974176)))

(declare-fun d!869138 () Bool)

(declare-fun lt!1065848 () Regex!9761)

(assert (=> d!869138 (validRegex!4476 lt!1065848)))

(declare-fun e!1974178 () Regex!9761)

(assert (=> d!869138 (= lt!1065848 e!1974178)))

(declare-fun c!533075 () Bool)

(assert (=> d!869138 (= c!533075 (or ((_ is EmptyExpr!9761) r!4733) ((_ is EmptyLang!9761) r!4733)))))

(assert (=> d!869138 (validRegex!4476 r!4733)))

(assert (=> d!869138 (= (derivativeStep!2903 r!4733 c!6996) lt!1065848)))

(declare-fun b!3169649 () Bool)

(assert (=> b!3169649 (= e!1974178 EmptyLang!9761)))

(declare-fun bm!230171 () Bool)

(declare-fun call!230176 () Regex!9761)

(declare-fun call!230178 () Regex!9761)

(assert (=> bm!230171 (= call!230176 call!230178)))

(declare-fun b!3169650 () Bool)

(assert (=> b!3169650 (= e!1974178 e!1974174)))

(declare-fun c!533077 () Bool)

(assert (=> b!3169650 (= c!533077 ((_ is ElementMatch!9761) r!4733))))

(declare-fun b!3169651 () Bool)

(declare-fun call!230177 () Regex!9761)

(assert (=> b!3169651 (= e!1974177 (Union!9761 (Concat!15082 call!230177 (regTwo!20034 r!4733)) EmptyLang!9761))))

(declare-fun bm!230172 () Bool)

(declare-fun c!533076 () Bool)

(assert (=> bm!230172 (= call!230178 (derivativeStep!2903 (ite c!533074 (regOne!20035 r!4733) (ite c!533076 (reg!10090 r!4733) (regOne!20034 r!4733))) c!6996))))

(declare-fun bm!230173 () Bool)

(declare-fun call!230179 () Regex!9761)

(assert (=> bm!230173 (= call!230179 (derivativeStep!2903 (ite c!533074 (regTwo!20035 r!4733) (regTwo!20034 r!4733)) c!6996))))

(declare-fun b!3169652 () Bool)

(assert (=> b!3169652 (= e!1974177 (Union!9761 (Concat!15082 call!230177 (regTwo!20034 r!4733)) call!230179))))

(declare-fun bm!230174 () Bool)

(assert (=> bm!230174 (= call!230177 call!230176)))

(declare-fun b!3169653 () Bool)

(assert (=> b!3169653 (= e!1974174 (ite (= c!6996 (c!533036 r!4733)) EmptyExpr!9761 EmptyLang!9761))))

(declare-fun b!3169654 () Bool)

(assert (=> b!3169654 (= e!1974175 (Concat!15082 call!230176 r!4733))))

(declare-fun b!3169655 () Bool)

(assert (=> b!3169655 (= e!1974176 e!1974175)))

(assert (=> b!3169655 (= c!533076 ((_ is Star!9761) r!4733))))

(declare-fun b!3169656 () Bool)

(assert (=> b!3169656 (= e!1974176 (Union!9761 call!230178 call!230179))))

(assert (= (and d!869138 c!533075) b!3169649))

(assert (= (and d!869138 (not c!533075)) b!3169650))

(assert (= (and b!3169650 c!533077) b!3169653))

(assert (= (and b!3169650 (not c!533077)) b!3169648))

(assert (= (and b!3169648 c!533074) b!3169656))

(assert (= (and b!3169648 (not c!533074)) b!3169655))

(assert (= (and b!3169655 c!533076) b!3169654))

(assert (= (and b!3169655 (not c!533076)) b!3169647))

(assert (= (and b!3169647 c!533078) b!3169652))

(assert (= (and b!3169647 (not c!533078)) b!3169651))

(assert (= (or b!3169652 b!3169651) bm!230174))

(assert (= (or b!3169654 bm!230174) bm!230171))

(assert (= (or b!3169656 b!3169652) bm!230173))

(assert (= (or b!3169656 bm!230171) bm!230172))

(declare-fun m!3429583 () Bool)

(assert (=> b!3169647 m!3429583))

(declare-fun m!3429585 () Bool)

(assert (=> d!869138 m!3429585))

(assert (=> d!869138 m!3429458))

(declare-fun m!3429587 () Bool)

(assert (=> bm!230172 m!3429587))

(declare-fun m!3429589 () Bool)

(assert (=> bm!230173 m!3429589))

(assert (=> b!3169515 d!869138))

(declare-fun b!3169668 () Bool)

(declare-fun e!1974181 () Bool)

(declare-fun tp!999913 () Bool)

(declare-fun tp!999916 () Bool)

(assert (=> b!3169668 (= e!1974181 (and tp!999913 tp!999916))))

(assert (=> b!3169506 (= tp!999901 e!1974181)))

(declare-fun b!3169669 () Bool)

(declare-fun tp!999917 () Bool)

(assert (=> b!3169669 (= e!1974181 tp!999917)))

(declare-fun b!3169667 () Bool)

(assert (=> b!3169667 (= e!1974181 tp_is_empty!17085)))

(declare-fun b!3169670 () Bool)

(declare-fun tp!999914 () Bool)

(declare-fun tp!999915 () Bool)

(assert (=> b!3169670 (= e!1974181 (and tp!999914 tp!999915))))

(assert (= (and b!3169506 ((_ is ElementMatch!9761) (regOne!20035 res!14113))) b!3169667))

(assert (= (and b!3169506 ((_ is Concat!15082) (regOne!20035 res!14113))) b!3169668))

(assert (= (and b!3169506 ((_ is Star!9761) (regOne!20035 res!14113))) b!3169669))

(assert (= (and b!3169506 ((_ is Union!9761) (regOne!20035 res!14113))) b!3169670))

(declare-fun b!3169672 () Bool)

(declare-fun e!1974182 () Bool)

(declare-fun tp!999918 () Bool)

(declare-fun tp!999921 () Bool)

(assert (=> b!3169672 (= e!1974182 (and tp!999918 tp!999921))))

(assert (=> b!3169506 (= tp!999887 e!1974182)))

(declare-fun b!3169673 () Bool)

(declare-fun tp!999922 () Bool)

(assert (=> b!3169673 (= e!1974182 tp!999922)))

(declare-fun b!3169671 () Bool)

(assert (=> b!3169671 (= e!1974182 tp_is_empty!17085)))

(declare-fun b!3169674 () Bool)

(declare-fun tp!999919 () Bool)

(declare-fun tp!999920 () Bool)

(assert (=> b!3169674 (= e!1974182 (and tp!999919 tp!999920))))

(assert (= (and b!3169506 ((_ is ElementMatch!9761) (regTwo!20035 res!14113))) b!3169671))

(assert (= (and b!3169506 ((_ is Concat!15082) (regTwo!20035 res!14113))) b!3169672))

(assert (= (and b!3169506 ((_ is Star!9761) (regTwo!20035 res!14113))) b!3169673))

(assert (= (and b!3169506 ((_ is Union!9761) (regTwo!20035 res!14113))) b!3169674))

(declare-fun b!3169676 () Bool)

(declare-fun e!1974183 () Bool)

(declare-fun tp!999923 () Bool)

(declare-fun tp!999926 () Bool)

(assert (=> b!3169676 (= e!1974183 (and tp!999923 tp!999926))))

(assert (=> b!3169516 (= tp!999897 e!1974183)))

(declare-fun b!3169677 () Bool)

(declare-fun tp!999927 () Bool)

(assert (=> b!3169677 (= e!1974183 tp!999927)))

(declare-fun b!3169675 () Bool)

(assert (=> b!3169675 (= e!1974183 tp_is_empty!17085)))

(declare-fun b!3169678 () Bool)

(declare-fun tp!999924 () Bool)

(declare-fun tp!999925 () Bool)

(assert (=> b!3169678 (= e!1974183 (and tp!999924 tp!999925))))

(assert (= (and b!3169516 ((_ is ElementMatch!9761) (reg!10090 r!4733))) b!3169675))

(assert (= (and b!3169516 ((_ is Concat!15082) (reg!10090 r!4733))) b!3169676))

(assert (= (and b!3169516 ((_ is Star!9761) (reg!10090 r!4733))) b!3169677))

(assert (= (and b!3169516 ((_ is Union!9761) (reg!10090 r!4733))) b!3169678))

(declare-fun e!1974186 () Bool)

(declare-fun tp!999935 () Bool)

(declare-fun tp!999936 () Bool)

(declare-fun tp!999934 () Bool)

(declare-fun b!3169683 () Bool)

(assert (=> b!3169683 (= e!1974186 (and tp!999934 tp_is_empty!17085 tp!999935 tp!999936))))

(assert (=> b!3169502 (= tp!999892 e!1974186)))

(assert (= (and b!3169502 ((_ is Cons!35475) mapDefault!18959)) b!3169683))

(declare-fun b!3169685 () Bool)

(declare-fun e!1974187 () Bool)

(declare-fun tp!999937 () Bool)

(declare-fun tp!999940 () Bool)

(assert (=> b!3169685 (= e!1974187 (and tp!999937 tp!999940))))

(assert (=> b!3169498 (= tp!999893 e!1974187)))

(declare-fun b!3169686 () Bool)

(declare-fun tp!999941 () Bool)

(assert (=> b!3169686 (= e!1974187 tp!999941)))

(declare-fun b!3169684 () Bool)

(assert (=> b!3169684 (= e!1974187 tp_is_empty!17085)))

(declare-fun b!3169687 () Bool)

(declare-fun tp!999938 () Bool)

(declare-fun tp!999939 () Bool)

(assert (=> b!3169687 (= e!1974187 (and tp!999938 tp!999939))))

(assert (= (and b!3169498 ((_ is ElementMatch!9761) (regOne!20034 r!4733))) b!3169684))

(assert (= (and b!3169498 ((_ is Concat!15082) (regOne!20034 r!4733))) b!3169685))

(assert (= (and b!3169498 ((_ is Star!9761) (regOne!20034 r!4733))) b!3169686))

(assert (= (and b!3169498 ((_ is Union!9761) (regOne!20034 r!4733))) b!3169687))

(declare-fun b!3169689 () Bool)

(declare-fun e!1974188 () Bool)

(declare-fun tp!999942 () Bool)

(declare-fun tp!999945 () Bool)

(assert (=> b!3169689 (= e!1974188 (and tp!999942 tp!999945))))

(assert (=> b!3169498 (= tp!999890 e!1974188)))

(declare-fun b!3169690 () Bool)

(declare-fun tp!999946 () Bool)

(assert (=> b!3169690 (= e!1974188 tp!999946)))

(declare-fun b!3169688 () Bool)

(assert (=> b!3169688 (= e!1974188 tp_is_empty!17085)))

(declare-fun b!3169691 () Bool)

(declare-fun tp!999943 () Bool)

(declare-fun tp!999944 () Bool)

(assert (=> b!3169691 (= e!1974188 (and tp!999943 tp!999944))))

(assert (= (and b!3169498 ((_ is ElementMatch!9761) (regTwo!20034 r!4733))) b!3169688))

(assert (= (and b!3169498 ((_ is Concat!15082) (regTwo!20034 r!4733))) b!3169689))

(assert (= (and b!3169498 ((_ is Star!9761) (regTwo!20034 r!4733))) b!3169690))

(assert (= (and b!3169498 ((_ is Union!9761) (regTwo!20034 r!4733))) b!3169691))

(declare-fun b!3169693 () Bool)

(declare-fun e!1974189 () Bool)

(declare-fun tp!999947 () Bool)

(declare-fun tp!999950 () Bool)

(assert (=> b!3169693 (= e!1974189 (and tp!999947 tp!999950))))

(assert (=> b!3169504 (= tp!999895 e!1974189)))

(declare-fun b!3169694 () Bool)

(declare-fun tp!999951 () Bool)

(assert (=> b!3169694 (= e!1974189 tp!999951)))

(declare-fun b!3169692 () Bool)

(assert (=> b!3169692 (= e!1974189 tp_is_empty!17085)))

(declare-fun b!3169695 () Bool)

(declare-fun tp!999948 () Bool)

(declare-fun tp!999949 () Bool)

(assert (=> b!3169695 (= e!1974189 (and tp!999948 tp!999949))))

(assert (= (and b!3169504 ((_ is ElementMatch!9761) (reg!10090 res!14113))) b!3169692))

(assert (= (and b!3169504 ((_ is Concat!15082) (reg!10090 res!14113))) b!3169693))

(assert (= (and b!3169504 ((_ is Star!9761) (reg!10090 res!14113))) b!3169694))

(assert (= (and b!3169504 ((_ is Union!9761) (reg!10090 res!14113))) b!3169695))

(declare-fun tp!999952 () Bool)

(declare-fun b!3169696 () Bool)

(declare-fun e!1974190 () Bool)

(declare-fun tp!999953 () Bool)

(declare-fun tp!999954 () Bool)

(assert (=> b!3169696 (= e!1974190 (and tp!999952 tp_is_empty!17085 tp!999953 tp!999954))))

(assert (=> b!3169500 (= tp!999899 e!1974190)))

(assert (= (and b!3169500 ((_ is Cons!35475) (zeroValue!4441 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524)))))))) b!3169696))

(declare-fun tp!999957 () Bool)

(declare-fun tp!999956 () Bool)

(declare-fun tp!999955 () Bool)

(declare-fun e!1974191 () Bool)

(declare-fun b!3169697 () Bool)

(assert (=> b!3169697 (= e!1974191 (and tp!999955 tp_is_empty!17085 tp!999956 tp!999957))))

(assert (=> b!3169500 (= tp!999891 e!1974191)))

(assert (= (and b!3169500 ((_ is Cons!35475) (minValue!4441 (v!35197 (underlying!8593 (v!35198 (underlying!8594 (cache!4234 thiss!28524)))))))) b!3169697))

(declare-fun mapNonEmpty!18962 () Bool)

(declare-fun mapRes!18962 () Bool)

(declare-fun tp!999976 () Bool)

(declare-fun e!1974197 () Bool)

(assert (=> mapNonEmpty!18962 (= mapRes!18962 (and tp!999976 e!1974197))))

(declare-fun mapKey!18962 () (_ BitVec 32))

(declare-fun mapRest!18962 () (Array (_ BitVec 32) List!35599))

(declare-fun mapValue!18962 () List!35599)

(assert (=> mapNonEmpty!18962 (= mapRest!18959 (store mapRest!18962 mapKey!18962 mapValue!18962))))

(declare-fun b!3169705 () Bool)

(declare-fun tp!999978 () Bool)

(declare-fun e!1974196 () Bool)

(declare-fun tp!999974 () Bool)

(declare-fun tp!999977 () Bool)

(assert (=> b!3169705 (= e!1974196 (and tp!999978 tp_is_empty!17085 tp!999977 tp!999974))))

(declare-fun condMapEmpty!18962 () Bool)

(declare-fun mapDefault!18962 () List!35599)

(assert (=> mapNonEmpty!18959 (= condMapEmpty!18962 (= mapRest!18959 ((as const (Array (_ BitVec 32) List!35599)) mapDefault!18962)))))

(assert (=> mapNonEmpty!18959 (= tp!999894 (and e!1974196 mapRes!18962))))

(declare-fun b!3169704 () Bool)

(declare-fun tp!999972 () Bool)

(declare-fun tp!999973 () Bool)

(declare-fun tp!999975 () Bool)

(assert (=> b!3169704 (= e!1974197 (and tp!999972 tp_is_empty!17085 tp!999973 tp!999975))))

(declare-fun mapIsEmpty!18962 () Bool)

(assert (=> mapIsEmpty!18962 mapRes!18962))

(assert (= (and mapNonEmpty!18959 condMapEmpty!18962) mapIsEmpty!18962))

(assert (= (and mapNonEmpty!18959 (not condMapEmpty!18962)) mapNonEmpty!18962))

(assert (= (and mapNonEmpty!18962 ((_ is Cons!35475) mapValue!18962)) b!3169704))

(assert (= (and mapNonEmpty!18959 ((_ is Cons!35475) mapDefault!18962)) b!3169705))

(declare-fun m!3429591 () Bool)

(assert (=> mapNonEmpty!18962 m!3429591))

(declare-fun b!3169706 () Bool)

(declare-fun tp!999980 () Bool)

(declare-fun tp!999981 () Bool)

(declare-fun tp!999979 () Bool)

(declare-fun e!1974198 () Bool)

(assert (=> b!3169706 (= e!1974198 (and tp!999979 tp_is_empty!17085 tp!999980 tp!999981))))

(assert (=> mapNonEmpty!18959 (= tp!999898 e!1974198)))

(assert (= (and mapNonEmpty!18959 ((_ is Cons!35475) mapValue!18959)) b!3169706))

(declare-fun b!3169708 () Bool)

(declare-fun e!1974199 () Bool)

(declare-fun tp!999982 () Bool)

(declare-fun tp!999985 () Bool)

(assert (=> b!3169708 (= e!1974199 (and tp!999982 tp!999985))))

(assert (=> b!3169510 (= tp!999888 e!1974199)))

(declare-fun b!3169709 () Bool)

(declare-fun tp!999986 () Bool)

(assert (=> b!3169709 (= e!1974199 tp!999986)))

(declare-fun b!3169707 () Bool)

(assert (=> b!3169707 (= e!1974199 tp_is_empty!17085)))

(declare-fun b!3169710 () Bool)

(declare-fun tp!999983 () Bool)

(declare-fun tp!999984 () Bool)

(assert (=> b!3169710 (= e!1974199 (and tp!999983 tp!999984))))

(assert (= (and b!3169510 ((_ is ElementMatch!9761) (regOne!20035 r!4733))) b!3169707))

(assert (= (and b!3169510 ((_ is Concat!15082) (regOne!20035 r!4733))) b!3169708))

(assert (= (and b!3169510 ((_ is Star!9761) (regOne!20035 r!4733))) b!3169709))

(assert (= (and b!3169510 ((_ is Union!9761) (regOne!20035 r!4733))) b!3169710))

(declare-fun b!3169712 () Bool)

(declare-fun e!1974200 () Bool)

(declare-fun tp!999987 () Bool)

(declare-fun tp!999990 () Bool)

(assert (=> b!3169712 (= e!1974200 (and tp!999987 tp!999990))))

(assert (=> b!3169510 (= tp!999900 e!1974200)))

(declare-fun b!3169713 () Bool)

(declare-fun tp!999991 () Bool)

(assert (=> b!3169713 (= e!1974200 tp!999991)))

(declare-fun b!3169711 () Bool)

(assert (=> b!3169711 (= e!1974200 tp_is_empty!17085)))

(declare-fun b!3169714 () Bool)

(declare-fun tp!999988 () Bool)

(declare-fun tp!999989 () Bool)

(assert (=> b!3169714 (= e!1974200 (and tp!999988 tp!999989))))

(assert (= (and b!3169510 ((_ is ElementMatch!9761) (regTwo!20035 r!4733))) b!3169711))

(assert (= (and b!3169510 ((_ is Concat!15082) (regTwo!20035 r!4733))) b!3169712))

(assert (= (and b!3169510 ((_ is Star!9761) (regTwo!20035 r!4733))) b!3169713))

(assert (= (and b!3169510 ((_ is Union!9761) (regTwo!20035 r!4733))) b!3169714))

(declare-fun b!3169716 () Bool)

(declare-fun e!1974201 () Bool)

(declare-fun tp!999992 () Bool)

(declare-fun tp!999995 () Bool)

(assert (=> b!3169716 (= e!1974201 (and tp!999992 tp!999995))))

(assert (=> b!3169505 (= tp!999886 e!1974201)))

(declare-fun b!3169717 () Bool)

(declare-fun tp!999996 () Bool)

(assert (=> b!3169717 (= e!1974201 tp!999996)))

(declare-fun b!3169715 () Bool)

(assert (=> b!3169715 (= e!1974201 tp_is_empty!17085)))

(declare-fun b!3169718 () Bool)

(declare-fun tp!999993 () Bool)

(declare-fun tp!999994 () Bool)

(assert (=> b!3169718 (= e!1974201 (and tp!999993 tp!999994))))

(assert (= (and b!3169505 ((_ is ElementMatch!9761) (regOne!20034 res!14113))) b!3169715))

(assert (= (and b!3169505 ((_ is Concat!15082) (regOne!20034 res!14113))) b!3169716))

(assert (= (and b!3169505 ((_ is Star!9761) (regOne!20034 res!14113))) b!3169717))

(assert (= (and b!3169505 ((_ is Union!9761) (regOne!20034 res!14113))) b!3169718))

(declare-fun b!3169720 () Bool)

(declare-fun e!1974202 () Bool)

(declare-fun tp!999997 () Bool)

(declare-fun tp!1000000 () Bool)

(assert (=> b!3169720 (= e!1974202 (and tp!999997 tp!1000000))))

(assert (=> b!3169505 (= tp!999896 e!1974202)))

(declare-fun b!3169721 () Bool)

(declare-fun tp!1000001 () Bool)

(assert (=> b!3169721 (= e!1974202 tp!1000001)))

(declare-fun b!3169719 () Bool)

(assert (=> b!3169719 (= e!1974202 tp_is_empty!17085)))

(declare-fun b!3169722 () Bool)

(declare-fun tp!999998 () Bool)

(declare-fun tp!999999 () Bool)

(assert (=> b!3169722 (= e!1974202 (and tp!999998 tp!999999))))

(assert (= (and b!3169505 ((_ is ElementMatch!9761) (regTwo!20034 res!14113))) b!3169719))

(assert (= (and b!3169505 ((_ is Concat!15082) (regTwo!20034 res!14113))) b!3169720))

(assert (= (and b!3169505 ((_ is Star!9761) (regTwo!20034 res!14113))) b!3169721))

(assert (= (and b!3169505 ((_ is Union!9761) (regTwo!20034 res!14113))) b!3169722))

(declare-fun b_lambda!86457 () Bool)

(assert (= b_lambda!86455 (or b!3169507 b_lambda!86457)))

(declare-fun bs!539578 () Bool)

(declare-fun d!869140 () Bool)

(assert (= bs!539578 (and d!869140 b!3169507)))

(declare-fun res!1288674 () Bool)

(declare-fun e!1974203 () Bool)

(assert (=> bs!539578 (=> (not res!1288674) (not e!1974203))))

(assert (=> bs!539578 (= res!1288674 (validRegex!4476 (_1!20465 (_1!20466 (h!40895 (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113)))))))))))

(assert (=> bs!539578 (= (dynLambda!14365 lambda!115950 (h!40895 (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113)))))) e!1974203)))

(declare-fun b!3169723 () Bool)

(assert (=> b!3169723 (= e!1974203 (= (_2!20466 (h!40895 (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113)))))) (derivativeStep!2903 (_1!20465 (_1!20466 (h!40895 (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113))))))) (_2!20465 (_1!20466 (h!40895 (toList!2070 (map!7926 (_2!20467 (update!277 (cache!4234 thiss!28524) lt!1065657 res!14113))))))))))))

(assert (= (and bs!539578 res!1288674) b!3169723))

(declare-fun m!3429593 () Bool)

(assert (=> bs!539578 m!3429593))

(declare-fun m!3429595 () Bool)

(assert (=> b!3169723 m!3429595))

(assert (=> b!3169521 d!869140))

(check-sat (not b!3169571) (not b_next!83913) (not d!869124) (not b!3169678) (not b!3169574) tp_is_empty!17085 (not b_next!83915) (not b!3169672) (not bm!230173) (not d!869138) (not b!3169522) (not d!869136) (not bm!230135) (not bm!230151) (not mapNonEmpty!18962) (not b!3169710) (not b!3169570) (not b!3169723) (not bm!230124) (not bm!230149) (not b!3169618) (not d!869122) (not b!3169696) (not b!3169706) (not bm!230148) (not b!3169685) (not b!3169718) (not b!3169647) (not bm!230131) (not b!3169712) (not b!3169717) (not b!3169625) (not b!3169674) (not b!3169697) (not bm!230150) (not d!869120) (not b!3169714) (not b!3169668) (not b!3169691) (not b!3169677) (not b!3169673) (not bm!230132) (not b!3169670) (not b!3169686) (not b!3169582) (not bm!230136) (not b!3169695) (not bm!230153) b_and!209487 (not b!3169689) (not b!3169687) (not bm!230126) (not b!3169704) (not b!3169720) (not bm!230140) (not bm!230125) (not bm!230138) (not b!3169694) (not b!3169590) (not bm!230134) (not b_lambda!86457) (not bm!230130) (not bm!230145) (not bm!230133) (not b!3169626) (not bs!539578) (not b!3169713) (not b!3169722) (not bm!230144) (not bm!230162) (not b!3169683) (not b!3169669) (not b!3169564) (not b!3169589) (not bm!230127) (not b!3169693) (not bm!230137) (not b!3169709) (not bm!230141) (not bm!230146) (not b!3169690) (not b!3169569) (not b!3169593) (not bm!230142) (not b!3169676) (not b!3169705) (not b!3169708) (not bm!230129) (not d!869126) (not bm!230139) (not bm!230172) (not bm!230147) (not bm!230152) (not b!3169721) (not b!3169572) b_and!209489 (not bm!230160) (not b!3169716) (not bm!230123))
(check-sat b_and!209487 b_and!209489 (not b_next!83915) (not b_next!83913))
