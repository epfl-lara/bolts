; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296832 () Bool)

(assert start!296832)

(declare-fun b!3168556 () Bool)

(declare-fun b_free!83169 () Bool)

(declare-fun b_next!83873 () Bool)

(assert (=> b!3168556 (= b_free!83169 (not b_next!83873))))

(declare-fun tp!999181 () Bool)

(declare-fun b_and!209447 () Bool)

(assert (=> b!3168556 (= tp!999181 b_and!209447)))

(declare-fun b!3168542 () Bool)

(declare-fun b_free!83171 () Bool)

(declare-fun b_next!83875 () Bool)

(assert (=> b!3168542 (= b_free!83171 (not b_next!83875))))

(declare-fun tp!999178 () Bool)

(declare-fun b_and!209449 () Bool)

(assert (=> b!3168542 (= tp!999178 b_and!209449)))

(declare-fun bm!229906 () Bool)

(declare-datatypes ((C!19688 0))(
  ( (C!19689 (val!11880 Int)) )
))
(declare-datatypes ((Regex!9751 0))(
  ( (ElementMatch!9751 (c!532934 C!19688)) (Concat!15072 (regOne!20014 Regex!9751) (regTwo!20014 Regex!9751)) (EmptyExpr!9751) (Star!9751 (reg!10080 Regex!9751)) (EmptyLang!9751) (Union!9751 (regOne!20015 Regex!9751) (regTwo!20015 Regex!9751)) )
))
(declare-datatypes ((tuple2!34610 0))(
  ( (tuple2!34611 (_1!20437 Regex!9751) (_2!20437 C!19688)) )
))
(declare-datatypes ((tuple2!34612 0))(
  ( (tuple2!34613 (_1!20438 tuple2!34610) (_2!20438 Regex!9751)) )
))
(declare-datatypes ((array!14904 0))(
  ( (array!14905 (arr!6634 (Array (_ BitVec 32) (_ BitVec 64))) (size!26720 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4088 0))(
  ( (HashableExt!4087 (__x!22622 Int)) )
))
(declare-datatypes ((List!35588 0))(
  ( (Nil!35464) (Cons!35464 (h!40884 tuple2!34612) (t!234671 List!35588)) )
))
(declare-datatypes ((array!14906 0))(
  ( (array!14907 (arr!6635 (Array (_ BitVec 32) List!35588)) (size!26721 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8344 0))(
  ( (LongMapFixedSize!8345 (defaultEntry!4557 Int) (mask!10841 (_ BitVec 32)) (extraKeys!4421 (_ BitVec 32)) (zeroValue!4431 List!35588) (minValue!4431 List!35588) (_size!8387 (_ BitVec 32)) (_keys!4472 array!14904) (_values!4453 array!14906) (_vacant!4233 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16497 0))(
  ( (Cell!16498 (v!35174 LongMapFixedSize!8344)) )
))
(declare-datatypes ((MutLongMap!4172 0))(
  ( (LongMap!4172 (underlying!8573 Cell!16497)) (MutLongMapExt!4171 (__x!22623 Int)) )
))
(declare-datatypes ((Cell!16499 0))(
  ( (Cell!16500 (v!35175 MutLongMap!4172)) )
))
(declare-datatypes ((MutableMap!4078 0))(
  ( (MutableMapExt!4077 (__x!22624 Int)) (HashMap!4078 (underlying!8574 Cell!16499) (hashF!6120 Hashable!4088) (_size!8388 (_ BitVec 32)) (defaultValue!4249 Int)) )
))
(declare-datatypes ((Cache!426 0))(
  ( (Cache!427 (cache!4223 MutableMap!4078)) )
))
(declare-datatypes ((tuple2!34614 0))(
  ( (tuple2!34615 (_1!20439 Regex!9751) (_2!20439 Cache!426)) )
))
(declare-fun call!229913 () tuple2!34614)

(declare-fun call!229912 () tuple2!34614)

(assert (=> bm!229906 (= call!229913 call!229912)))

(declare-fun b!3168533 () Bool)

(declare-fun e!1973521 () tuple2!34614)

(declare-fun lt!1065346 () tuple2!34614)

(declare-fun r!13156 () Regex!9751)

(assert (=> b!3168533 (= e!1973521 (tuple2!34615 (Union!9751 (Concat!15072 (_1!20439 lt!1065346) (regTwo!20014 r!13156)) EmptyLang!9751) (_2!20439 lt!1065346)))))

(assert (=> b!3168533 (= lt!1065346 call!229913)))

(declare-fun b!3168534 () Bool)

(declare-fun e!1973515 () tuple2!34614)

(declare-fun cache!347 () Cache!426)

(assert (=> b!3168534 (= e!1973515 (tuple2!34615 EmptyLang!9751 cache!347))))

(declare-fun b!3168536 () Bool)

(declare-fun e!1973518 () tuple2!34614)

(declare-fun e!1973525 () tuple2!34614)

(assert (=> b!3168536 (= e!1973518 e!1973525)))

(declare-fun c!532929 () Bool)

(get-info :version)

(assert (=> b!3168536 (= c!532929 ((_ is Star!9751) r!13156))))

(declare-fun b!3168537 () Bool)

(declare-fun e!1973516 () Bool)

(declare-fun tp!999187 () Bool)

(declare-fun tp!999180 () Bool)

(assert (=> b!3168537 (= e!1973516 (and tp!999187 tp!999180))))

(declare-fun b!3168538 () Bool)

(declare-fun res!1288420 () Bool)

(declare-fun e!1973523 () Bool)

(assert (=> b!3168538 (=> (not res!1288420) (not e!1973523))))

(declare-fun valid!3258 (Cache!426) Bool)

(assert (=> b!3168538 (= res!1288420 (valid!3258 cache!347))))

(declare-fun lt!1065345 () tuple2!34614)

(declare-fun bm!229907 () Bool)

(declare-fun c!532931 () Bool)

(declare-fun c!532930 () Bool)

(declare-fun a!2409 () C!19688)

(declare-fun derivativeStepMem!32 (Regex!9751 C!19688 Cache!426) tuple2!34614)

(assert (=> bm!229907 (= call!229912 (derivativeStepMem!32 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))) a!2409 (ite c!532930 cache!347 (ite c!532931 (_2!20439 lt!1065345) cache!347))))))

(declare-fun b!3168539 () Bool)

(declare-fun res!1288421 () Bool)

(assert (=> b!3168539 (=> (not res!1288421) (not e!1973523))))

(declare-datatypes ((Option!6919 0))(
  ( (None!6918) (Some!6918 (v!35176 Regex!9751)) )
))
(declare-fun get!11269 (Cache!426 Regex!9751 C!19688) Option!6919)

(assert (=> b!3168539 (= res!1288421 (not ((_ is Some!6918) (get!11269 cache!347 r!13156 a!2409))))))

(declare-fun b!3168540 () Bool)

(declare-fun tp!999179 () Bool)

(declare-fun tp!999185 () Bool)

(assert (=> b!3168540 (= e!1973516 (and tp!999179 tp!999185))))

(declare-fun b!3168541 () Bool)

(declare-fun e!1973522 () Bool)

(declare-fun e!1973526 () Bool)

(assert (=> b!3168541 (= e!1973522 e!1973526)))

(declare-fun e!1973514 () Bool)

(declare-fun e!1973528 () Bool)

(assert (=> b!3168542 (= e!1973514 (and e!1973528 tp!999178))))

(declare-fun b!3168543 () Bool)

(declare-fun tp_is_empty!17065 () Bool)

(assert (=> b!3168543 (= e!1973516 tp_is_empty!17065)))

(declare-fun b!3168544 () Bool)

(declare-fun e!1973519 () Bool)

(declare-fun tp!999182 () Bool)

(declare-fun mapRes!18923 () Bool)

(assert (=> b!3168544 (= e!1973519 (and tp!999182 mapRes!18923))))

(declare-fun condMapEmpty!18923 () Bool)

(declare-fun mapDefault!18923 () List!35588)

(assert (=> b!3168544 (= condMapEmpty!18923 (= (arr!6635 (_values!4453 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347))))))) ((as const (Array (_ BitVec 32) List!35588)) mapDefault!18923)))))

(declare-fun bm!229908 () Bool)

(declare-fun call!229914 () tuple2!34614)

(declare-fun call!229911 () tuple2!34614)

(assert (=> bm!229908 (= call!229914 call!229911)))

(declare-fun b!3168545 () Bool)

(declare-fun lt!1065351 () tuple2!34614)

(declare-fun derivativeStep!2897 (Regex!9751 C!19688) Regex!9751)

(assert (=> b!3168545 (= e!1973523 (not (= (_1!20439 lt!1065351) (derivativeStep!2897 r!13156 a!2409))))))

(declare-datatypes ((Unit!49868 0))(
  ( (Unit!49869) )
))
(declare-datatypes ((tuple2!34616 0))(
  ( (tuple2!34617 (_1!20440 Unit!49868) (_2!20440 Cache!426)) )
))
(declare-fun lt!1065349 () tuple2!34616)

(declare-fun update!272 (Cache!426 Regex!9751 C!19688 Regex!9751) tuple2!34616)

(assert (=> b!3168545 (= lt!1065349 (update!272 (_2!20439 lt!1065351) r!13156 a!2409 (_1!20439 lt!1065351)))))

(assert (=> b!3168545 (= lt!1065351 e!1973515)))

(declare-fun c!532932 () Bool)

(assert (=> b!3168545 (= c!532932 (or ((_ is EmptyExpr!9751) r!13156) ((_ is EmptyLang!9751) r!13156)))))

(declare-fun res!1288422 () Bool)

(assert (=> start!296832 (=> (not res!1288422) (not e!1973523))))

(declare-fun validRegex!4470 (Regex!9751) Bool)

(assert (=> start!296832 (= res!1288422 (validRegex!4470 r!13156))))

(assert (=> start!296832 e!1973523))

(assert (=> start!296832 e!1973516))

(declare-fun e!1973520 () Bool)

(declare-fun inv!48144 (Cache!426) Bool)

(assert (=> start!296832 (and (inv!48144 cache!347) e!1973520)))

(assert (=> start!296832 tp_is_empty!17065))

(declare-fun e!1973517 () tuple2!34614)

(declare-fun b!3168535 () Bool)

(assert (=> b!3168535 (= e!1973517 (tuple2!34615 (ite (= a!2409 (c!532934 r!13156)) EmptyExpr!9751 EmptyLang!9751) cache!347))))

(declare-fun b!3168546 () Bool)

(assert (=> b!3168546 (= e!1973520 e!1973514)))

(declare-fun b!3168547 () Bool)

(declare-fun e!1973527 () Bool)

(declare-fun lt!1065353 () MutLongMap!4172)

(assert (=> b!3168547 (= e!1973528 (and e!1973527 ((_ is LongMap!4172) lt!1065353)))))

(assert (=> b!3168547 (= lt!1065353 (v!35175 (underlying!8574 (cache!4223 cache!347))))))

(declare-fun b!3168548 () Bool)

(declare-fun lt!1065350 () tuple2!34614)

(declare-fun lt!1065347 () tuple2!34614)

(assert (=> b!3168548 (= e!1973518 (tuple2!34615 (Union!9751 (_1!20439 lt!1065350) (_1!20439 lt!1065347)) (_2!20439 lt!1065347)))))

(assert (=> b!3168548 (= lt!1065350 call!229912)))

(assert (=> b!3168548 (= lt!1065347 call!229911)))

(declare-fun b!3168549 () Bool)

(declare-fun lt!1065352 () tuple2!34614)

(assert (=> b!3168549 (= e!1973521 (tuple2!34615 (Union!9751 (Concat!15072 (_1!20439 lt!1065345) (regTwo!20014 r!13156)) (_1!20439 lt!1065352)) (_2!20439 lt!1065352)))))

(assert (=> b!3168549 (= lt!1065345 call!229914)))

(assert (=> b!3168549 (= lt!1065352 call!229913)))

(declare-fun b!3168550 () Bool)

(declare-fun nullable!3351 (Regex!9751) Bool)

(assert (=> b!3168550 (= c!532931 (nullable!3351 (regOne!20014 r!13156)))))

(assert (=> b!3168550 (= e!1973525 e!1973521)))

(declare-fun b!3168551 () Bool)

(declare-fun lt!1065348 () tuple2!34614)

(assert (=> b!3168551 (= lt!1065348 call!229914)))

(assert (=> b!3168551 (= e!1973525 (tuple2!34615 (Concat!15072 (_1!20439 lt!1065348) (Star!9751 (reg!10080 r!13156))) (_2!20439 lt!1065348)))))

(declare-fun mapNonEmpty!18923 () Bool)

(declare-fun tp!999186 () Bool)

(declare-fun tp!999188 () Bool)

(assert (=> mapNonEmpty!18923 (= mapRes!18923 (and tp!999186 tp!999188))))

(declare-fun mapRest!18923 () (Array (_ BitVec 32) List!35588))

(declare-fun mapKey!18923 () (_ BitVec 32))

(declare-fun mapValue!18923 () List!35588)

(assert (=> mapNonEmpty!18923 (= (arr!6635 (_values!4453 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347))))))) (store mapRest!18923 mapKey!18923 mapValue!18923))))

(declare-fun b!3168552 () Bool)

(assert (=> b!3168552 (= c!532930 ((_ is Union!9751) r!13156))))

(assert (=> b!3168552 (= e!1973517 e!1973518)))

(declare-fun b!3168553 () Bool)

(assert (=> b!3168553 (= e!1973527 e!1973522)))

(declare-fun b!3168554 () Bool)

(assert (=> b!3168554 (= e!1973515 e!1973517)))

(declare-fun c!532933 () Bool)

(assert (=> b!3168554 (= c!532933 ((_ is ElementMatch!9751) r!13156))))

(declare-fun b!3168555 () Bool)

(declare-fun tp!999184 () Bool)

(assert (=> b!3168555 (= e!1973516 tp!999184)))

(declare-fun tp!999183 () Bool)

(declare-fun tp!999189 () Bool)

(declare-fun array_inv!4756 (array!14904) Bool)

(declare-fun array_inv!4757 (array!14906) Bool)

(assert (=> b!3168556 (= e!1973526 (and tp!999181 tp!999189 tp!999183 (array_inv!4756 (_keys!4472 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347))))))) (array_inv!4757 (_values!4453 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347))))))) e!1973519))))

(declare-fun mapIsEmpty!18923 () Bool)

(assert (=> mapIsEmpty!18923 mapRes!18923))

(declare-fun bm!229909 () Bool)

(assert (=> bm!229909 (= call!229911 (derivativeStepMem!32 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))) a!2409 (ite c!532930 (_2!20439 lt!1065350) cache!347)))))

(assert (= (and start!296832 res!1288422) b!3168538))

(assert (= (and b!3168538 res!1288420) b!3168539))

(assert (= (and b!3168539 res!1288421) b!3168545))

(assert (= (and b!3168545 c!532932) b!3168534))

(assert (= (and b!3168545 (not c!532932)) b!3168554))

(assert (= (and b!3168554 c!532933) b!3168535))

(assert (= (and b!3168554 (not c!532933)) b!3168552))

(assert (= (and b!3168552 c!532930) b!3168548))

(assert (= (and b!3168552 (not c!532930)) b!3168536))

(assert (= (and b!3168536 c!532929) b!3168551))

(assert (= (and b!3168536 (not c!532929)) b!3168550))

(assert (= (and b!3168550 c!532931) b!3168549))

(assert (= (and b!3168550 (not c!532931)) b!3168533))

(assert (= (or b!3168549 b!3168533) bm!229906))

(assert (= (or b!3168551 b!3168549) bm!229908))

(assert (= (or b!3168548 bm!229908) bm!229909))

(assert (= (or b!3168548 bm!229906) bm!229907))

(assert (= (and start!296832 ((_ is ElementMatch!9751) r!13156)) b!3168543))

(assert (= (and start!296832 ((_ is Concat!15072) r!13156)) b!3168537))

(assert (= (and start!296832 ((_ is Star!9751) r!13156)) b!3168555))

(assert (= (and start!296832 ((_ is Union!9751) r!13156)) b!3168540))

(assert (= (and b!3168544 condMapEmpty!18923) mapIsEmpty!18923))

(assert (= (and b!3168544 (not condMapEmpty!18923)) mapNonEmpty!18923))

(assert (= b!3168556 b!3168544))

(assert (= b!3168541 b!3168556))

(assert (= b!3168553 b!3168541))

(assert (= (and b!3168547 ((_ is LongMap!4172) (v!35175 (underlying!8574 (cache!4223 cache!347))))) b!3168553))

(assert (= b!3168542 b!3168547))

(assert (= (and b!3168546 ((_ is HashMap!4078) (cache!4223 cache!347))) b!3168542))

(assert (= start!296832 b!3168546))

(declare-fun m!3429053 () Bool)

(assert (=> b!3168538 m!3429053))

(declare-fun m!3429055 () Bool)

(assert (=> b!3168556 m!3429055))

(declare-fun m!3429057 () Bool)

(assert (=> b!3168556 m!3429057))

(declare-fun m!3429059 () Bool)

(assert (=> b!3168539 m!3429059))

(declare-fun m!3429061 () Bool)

(assert (=> start!296832 m!3429061))

(declare-fun m!3429063 () Bool)

(assert (=> start!296832 m!3429063))

(declare-fun m!3429065 () Bool)

(assert (=> bm!229907 m!3429065))

(declare-fun m!3429067 () Bool)

(assert (=> b!3168545 m!3429067))

(declare-fun m!3429069 () Bool)

(assert (=> b!3168545 m!3429069))

(declare-fun m!3429071 () Bool)

(assert (=> bm!229909 m!3429071))

(declare-fun m!3429073 () Bool)

(assert (=> b!3168550 m!3429073))

(declare-fun m!3429075 () Bool)

(assert (=> mapNonEmpty!18923 m!3429075))

(check-sat (not b!3168539) (not b!3168556) b_and!209447 tp_is_empty!17065 (not mapNonEmpty!18923) (not bm!229907) (not b!3168544) (not b!3168550) (not b!3168555) (not bm!229909) (not b!3168537) (not b_next!83873) (not b!3168538) b_and!209449 (not b_next!83875) (not start!296832) (not b!3168540) (not b!3168545))
(check-sat b_and!209449 b_and!209447 (not b_next!83873) (not b_next!83875))
(get-model)

(declare-fun d!869069 () Bool)

(declare-fun validCacheMap!63 (MutableMap!4078) Bool)

(assert (=> d!869069 (= (valid!3258 cache!347) (validCacheMap!63 (cache!4223 cache!347)))))

(declare-fun bs!539556 () Bool)

(assert (= bs!539556 d!869069))

(declare-fun m!3429077 () Bool)

(assert (=> bs!539556 m!3429077))

(assert (=> b!3168538 d!869069))

(declare-fun d!869071 () Bool)

(assert (=> d!869071 (= (array_inv!4756 (_keys!4472 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347))))))) (bvsge (size!26720 (_keys!4472 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3168556 d!869071))

(declare-fun d!869073 () Bool)

(assert (=> d!869073 (= (array_inv!4757 (_values!4453 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347))))))) (bvsge (size!26721 (_values!4453 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3168556 d!869073))

(declare-fun b!3168575 () Bool)

(declare-fun e!1973547 () Bool)

(declare-fun call!229922 () Bool)

(assert (=> b!3168575 (= e!1973547 call!229922)))

(declare-fun b!3168576 () Bool)

(declare-fun e!1973543 () Bool)

(declare-fun e!1973546 () Bool)

(assert (=> b!3168576 (= e!1973543 e!1973546)))

(declare-fun c!532940 () Bool)

(assert (=> b!3168576 (= c!532940 ((_ is Union!9751) r!13156))))

(declare-fun b!3168577 () Bool)

(declare-fun e!1973548 () Bool)

(declare-fun call!229921 () Bool)

(assert (=> b!3168577 (= e!1973548 call!229921)))

(declare-fun b!3168578 () Bool)

(declare-fun res!1288437 () Bool)

(assert (=> b!3168578 (=> (not res!1288437) (not e!1973548))))

(declare-fun call!229923 () Bool)

(assert (=> b!3168578 (= res!1288437 call!229923)))

(assert (=> b!3168578 (= e!1973546 e!1973548)))

(declare-fun bm!229916 () Bool)

(assert (=> bm!229916 (= call!229923 (validRegex!4470 (ite c!532940 (regOne!20015 r!13156) (regOne!20014 r!13156))))))

(declare-fun b!3168579 () Bool)

(declare-fun res!1288434 () Bool)

(declare-fun e!1973545 () Bool)

(assert (=> b!3168579 (=> res!1288434 e!1973545)))

(assert (=> b!3168579 (= res!1288434 (not ((_ is Concat!15072) r!13156)))))

(assert (=> b!3168579 (= e!1973546 e!1973545)))

(declare-fun b!3168580 () Bool)

(assert (=> b!3168580 (= e!1973543 e!1973547)))

(declare-fun res!1288433 () Bool)

(assert (=> b!3168580 (= res!1288433 (not (nullable!3351 (reg!10080 r!13156))))))

(assert (=> b!3168580 (=> (not res!1288433) (not e!1973547))))

(declare-fun bm!229917 () Bool)

(declare-fun c!532939 () Bool)

(assert (=> bm!229917 (= call!229922 (validRegex!4470 (ite c!532939 (reg!10080 r!13156) (ite c!532940 (regTwo!20015 r!13156) (regTwo!20014 r!13156)))))))

(declare-fun b!3168581 () Bool)

(declare-fun e!1973544 () Bool)

(assert (=> b!3168581 (= e!1973545 e!1973544)))

(declare-fun res!1288435 () Bool)

(assert (=> b!3168581 (=> (not res!1288435) (not e!1973544))))

(assert (=> b!3168581 (= res!1288435 call!229923)))

(declare-fun b!3168582 () Bool)

(assert (=> b!3168582 (= e!1973544 call!229921)))

(declare-fun bm!229918 () Bool)

(assert (=> bm!229918 (= call!229921 call!229922)))

(declare-fun b!3168583 () Bool)

(declare-fun e!1973549 () Bool)

(assert (=> b!3168583 (= e!1973549 e!1973543)))

(assert (=> b!3168583 (= c!532939 ((_ is Star!9751) r!13156))))

(declare-fun d!869075 () Bool)

(declare-fun res!1288436 () Bool)

(assert (=> d!869075 (=> res!1288436 e!1973549)))

(assert (=> d!869075 (= res!1288436 ((_ is ElementMatch!9751) r!13156))))

(assert (=> d!869075 (= (validRegex!4470 r!13156) e!1973549)))

(assert (= (and d!869075 (not res!1288436)) b!3168583))

(assert (= (and b!3168583 c!532939) b!3168580))

(assert (= (and b!3168583 (not c!532939)) b!3168576))

(assert (= (and b!3168580 res!1288433) b!3168575))

(assert (= (and b!3168576 c!532940) b!3168578))

(assert (= (and b!3168576 (not c!532940)) b!3168579))

(assert (= (and b!3168578 res!1288437) b!3168577))

(assert (= (and b!3168579 (not res!1288434)) b!3168581))

(assert (= (and b!3168581 res!1288435) b!3168582))

(assert (= (or b!3168578 b!3168581) bm!229916))

(assert (= (or b!3168577 b!3168582) bm!229918))

(assert (= (or b!3168575 bm!229918) bm!229917))

(declare-fun m!3429079 () Bool)

(assert (=> bm!229916 m!3429079))

(declare-fun m!3429081 () Bool)

(assert (=> b!3168580 m!3429081))

(declare-fun m!3429083 () Bool)

(assert (=> bm!229917 m!3429083))

(assert (=> start!296832 d!869075))

(declare-fun d!869077 () Bool)

(declare-fun res!1288440 () Bool)

(declare-fun e!1973552 () Bool)

(assert (=> d!869077 (=> (not res!1288440) (not e!1973552))))

(assert (=> d!869077 (= res!1288440 ((_ is HashMap!4078) (cache!4223 cache!347)))))

(assert (=> d!869077 (= (inv!48144 cache!347) e!1973552)))

(declare-fun b!3168586 () Bool)

(assert (=> b!3168586 (= e!1973552 (validCacheMap!63 (cache!4223 cache!347)))))

(assert (= (and d!869077 res!1288440) b!3168586))

(assert (=> b!3168586 m!3429077))

(assert (=> start!296832 d!869077))

(declare-fun b!3168607 () Bool)

(declare-fun e!1973566 () Regex!9751)

(declare-fun call!229934 () Regex!9751)

(assert (=> b!3168607 (= e!1973566 (Concat!15072 call!229934 r!13156))))

(declare-fun bm!229927 () Bool)

(declare-fun c!532953 () Bool)

(declare-fun call!229932 () Regex!9751)

(declare-fun c!532951 () Bool)

(assert (=> bm!229927 (= call!229932 (derivativeStep!2897 (ite c!532951 (regTwo!20015 r!13156) (ite c!532953 (reg!10080 r!13156) (regOne!20014 r!13156))) a!2409))))

(declare-fun b!3168608 () Bool)

(declare-fun e!1973565 () Regex!9751)

(declare-fun call!229935 () Regex!9751)

(assert (=> b!3168608 (= e!1973565 (Union!9751 (Concat!15072 call!229935 (regTwo!20014 r!13156)) EmptyLang!9751))))

(declare-fun b!3168609 () Bool)

(declare-fun e!1973563 () Regex!9751)

(declare-fun e!1973564 () Regex!9751)

(assert (=> b!3168609 (= e!1973563 e!1973564)))

(declare-fun c!532955 () Bool)

(assert (=> b!3168609 (= c!532955 ((_ is ElementMatch!9751) r!13156))))

(declare-fun b!3168610 () Bool)

(assert (=> b!3168610 (= e!1973564 (ite (= a!2409 (c!532934 r!13156)) EmptyExpr!9751 EmptyLang!9751))))

(declare-fun bm!229928 () Bool)

(assert (=> bm!229928 (= call!229934 call!229932)))

(declare-fun b!3168611 () Bool)

(assert (=> b!3168611 (= c!532951 ((_ is Union!9751) r!13156))))

(declare-fun e!1973567 () Regex!9751)

(assert (=> b!3168611 (= e!1973564 e!1973567)))

(declare-fun bm!229929 () Bool)

(declare-fun call!229933 () Regex!9751)

(assert (=> bm!229929 (= call!229933 (derivativeStep!2897 (ite c!532951 (regOne!20015 r!13156) (regTwo!20014 r!13156)) a!2409))))

(declare-fun b!3168612 () Bool)

(declare-fun c!532952 () Bool)

(assert (=> b!3168612 (= c!532952 (nullable!3351 (regOne!20014 r!13156)))))

(assert (=> b!3168612 (= e!1973566 e!1973565)))

(declare-fun b!3168613 () Bool)

(assert (=> b!3168613 (= e!1973565 (Union!9751 (Concat!15072 call!229935 (regTwo!20014 r!13156)) call!229933))))

(declare-fun d!869079 () Bool)

(declare-fun lt!1065356 () Regex!9751)

(assert (=> d!869079 (validRegex!4470 lt!1065356)))

(assert (=> d!869079 (= lt!1065356 e!1973563)))

(declare-fun c!532954 () Bool)

(assert (=> d!869079 (= c!532954 (or ((_ is EmptyExpr!9751) r!13156) ((_ is EmptyLang!9751) r!13156)))))

(assert (=> d!869079 (validRegex!4470 r!13156)))

(assert (=> d!869079 (= (derivativeStep!2897 r!13156 a!2409) lt!1065356)))

(declare-fun b!3168614 () Bool)

(assert (=> b!3168614 (= e!1973563 EmptyLang!9751)))

(declare-fun b!3168615 () Bool)

(assert (=> b!3168615 (= e!1973567 e!1973566)))

(assert (=> b!3168615 (= c!532953 ((_ is Star!9751) r!13156))))

(declare-fun b!3168616 () Bool)

(assert (=> b!3168616 (= e!1973567 (Union!9751 call!229933 call!229932))))

(declare-fun bm!229930 () Bool)

(assert (=> bm!229930 (= call!229935 call!229934)))

(assert (= (and d!869079 c!532954) b!3168614))

(assert (= (and d!869079 (not c!532954)) b!3168609))

(assert (= (and b!3168609 c!532955) b!3168610))

(assert (= (and b!3168609 (not c!532955)) b!3168611))

(assert (= (and b!3168611 c!532951) b!3168616))

(assert (= (and b!3168611 (not c!532951)) b!3168615))

(assert (= (and b!3168615 c!532953) b!3168607))

(assert (= (and b!3168615 (not c!532953)) b!3168612))

(assert (= (and b!3168612 c!532952) b!3168613))

(assert (= (and b!3168612 (not c!532952)) b!3168608))

(assert (= (or b!3168613 b!3168608) bm!229930))

(assert (= (or b!3168607 bm!229930) bm!229928))

(assert (= (or b!3168616 bm!229928) bm!229927))

(assert (= (or b!3168616 b!3168613) bm!229929))

(declare-fun m!3429085 () Bool)

(assert (=> bm!229927 m!3429085))

(declare-fun m!3429087 () Bool)

(assert (=> bm!229929 m!3429087))

(assert (=> b!3168612 m!3429073))

(declare-fun m!3429089 () Bool)

(assert (=> d!869079 m!3429089))

(assert (=> d!869079 m!3429061))

(assert (=> b!3168545 d!869079))

(declare-fun d!869081 () Bool)

(declare-fun lt!1065365 () tuple2!34616)

(assert (=> d!869081 (validCacheMap!63 (cache!4223 (_2!20440 lt!1065365)))))

(declare-fun Unit!49870 () Unit!49868)

(declare-datatypes ((tuple2!34618 0))(
  ( (tuple2!34619 (_1!20441 Bool) (_2!20441 MutableMap!4078)) )
))
(declare-fun update!273 (MutableMap!4078 tuple2!34610 Regex!9751) tuple2!34618)

(assert (=> d!869081 (= lt!1065365 (tuple2!34617 Unit!49870 (Cache!427 (_2!20441 (update!273 (cache!4223 (_2!20439 lt!1065351)) (tuple2!34611 r!13156 a!2409) (_1!20439 lt!1065351))))))))

(declare-fun lt!1065366 () Unit!49868)

(declare-fun lt!1065368 () Unit!49868)

(assert (=> d!869081 (= lt!1065366 lt!1065368)))

(declare-fun lt!1065367 () tuple2!34610)

(declare-fun lambda!115919 () Int)

(declare-fun forall!7151 (List!35588 Int) Bool)

(declare-datatypes ((ListMap!1311 0))(
  ( (ListMap!1312 (toList!2064 List!35588)) )
))
(declare-fun map!7915 (MutableMap!4078) ListMap!1311)

(assert (=> d!869081 (forall!7151 (toList!2064 (map!7915 (_2!20441 (update!273 (cache!4223 (_2!20439 lt!1065351)) lt!1065367 (_1!20439 lt!1065351))))) lambda!115919)))

(declare-fun lemmaUpdatePreservesForallPairs!31 (MutableMap!4078 tuple2!34610 Regex!9751 Int) Unit!49868)

(assert (=> d!869081 (= lt!1065368 (lemmaUpdatePreservesForallPairs!31 (cache!4223 (_2!20439 lt!1065351)) lt!1065367 (_1!20439 lt!1065351) lambda!115919))))

(assert (=> d!869081 (= lt!1065367 (tuple2!34611 r!13156 a!2409))))

(assert (=> d!869081 (validCacheMap!63 (cache!4223 (_2!20439 lt!1065351)))))

(assert (=> d!869081 (= (update!272 (_2!20439 lt!1065351) r!13156 a!2409 (_1!20439 lt!1065351)) lt!1065365)))

(declare-fun bs!539557 () Bool)

(assert (= bs!539557 d!869081))

(declare-fun m!3429091 () Bool)

(assert (=> bs!539557 m!3429091))

(declare-fun m!3429093 () Bool)

(assert (=> bs!539557 m!3429093))

(declare-fun m!3429095 () Bool)

(assert (=> bs!539557 m!3429095))

(declare-fun m!3429097 () Bool)

(assert (=> bs!539557 m!3429097))

(declare-fun m!3429099 () Bool)

(assert (=> bs!539557 m!3429099))

(declare-fun m!3429101 () Bool)

(assert (=> bs!539557 m!3429101))

(declare-fun m!3429103 () Bool)

(assert (=> bs!539557 m!3429103))

(assert (=> b!3168545 d!869081))

(declare-fun d!869083 () Bool)

(declare-fun nullableFct!956 (Regex!9751) Bool)

(assert (=> d!869083 (= (nullable!3351 (regOne!20014 r!13156)) (nullableFct!956 (regOne!20014 r!13156)))))

(declare-fun bs!539558 () Bool)

(assert (= bs!539558 d!869083))

(declare-fun m!3429105 () Bool)

(assert (=> bs!539558 m!3429105))

(assert (=> b!3168550 d!869083))

(declare-fun d!869085 () Bool)

(declare-fun e!1973574 () Bool)

(assert (=> d!869085 e!1973574))

(declare-fun res!1288446 () Bool)

(assert (=> d!869085 (=> res!1288446 e!1973574)))

(declare-fun lt!1065373 () Option!6919)

(declare-fun isEmpty!19762 (Option!6919) Bool)

(assert (=> d!869085 (= res!1288446 (isEmpty!19762 lt!1065373))))

(declare-fun e!1973575 () Option!6919)

(assert (=> d!869085 (= lt!1065373 e!1973575)))

(declare-fun c!532960 () Bool)

(declare-fun contains!6193 (MutableMap!4078 tuple2!34610) Bool)

(assert (=> d!869085 (= c!532960 (contains!6193 (cache!4223 cache!347) (tuple2!34611 r!13156 a!2409)))))

(assert (=> d!869085 (validRegex!4470 r!13156)))

(assert (=> d!869085 (= (get!11269 cache!347 r!13156 a!2409) lt!1065373)))

(declare-fun b!3168625 () Bool)

(declare-fun apply!7962 (MutableMap!4078 tuple2!34610) Regex!9751)

(assert (=> b!3168625 (= e!1973575 (Some!6918 (apply!7962 (cache!4223 cache!347) (tuple2!34611 r!13156 a!2409))))))

(declare-fun lt!1065374 () Unit!49868)

(declare-fun lemmaIfInCacheThenValid!60 (Cache!426 Regex!9751 C!19688) Unit!49868)

(assert (=> b!3168625 (= lt!1065374 (lemmaIfInCacheThenValid!60 cache!347 r!13156 a!2409))))

(declare-fun b!3168626 () Bool)

(assert (=> b!3168626 (= e!1973575 None!6918)))

(declare-fun b!3168627 () Bool)

(declare-fun get!11270 (Option!6919) Regex!9751)

(assert (=> b!3168627 (= e!1973574 (= (get!11270 lt!1065373) (derivativeStep!2897 r!13156 a!2409)))))

(assert (= (and d!869085 c!532960) b!3168625))

(assert (= (and d!869085 (not c!532960)) b!3168626))

(assert (= (and d!869085 (not res!1288446)) b!3168627))

(declare-fun m!3429107 () Bool)

(assert (=> d!869085 m!3429107))

(declare-fun m!3429109 () Bool)

(assert (=> d!869085 m!3429109))

(assert (=> d!869085 m!3429061))

(declare-fun m!3429111 () Bool)

(assert (=> b!3168625 m!3429111))

(declare-fun m!3429113 () Bool)

(assert (=> b!3168625 m!3429113))

(declare-fun m!3429115 () Bool)

(assert (=> b!3168627 m!3429115))

(assert (=> b!3168627 m!3429067))

(assert (=> b!3168539 d!869085))

(declare-fun b!3168652 () Bool)

(declare-fun lt!1065400 () tuple2!34614)

(declare-fun call!229946 () tuple2!34614)

(assert (=> b!3168652 (= lt!1065400 call!229946)))

(declare-fun lt!1065399 () tuple2!34614)

(declare-fun call!229944 () tuple2!34614)

(assert (=> b!3168652 (= lt!1065399 call!229944)))

(declare-fun e!1973591 () tuple2!34614)

(assert (=> b!3168652 (= e!1973591 (tuple2!34615 (Union!9751 (_1!20439 lt!1065399) (_1!20439 lt!1065400)) (_2!20439 lt!1065400)))))

(declare-fun d!869087 () Bool)

(declare-fun lt!1065395 () tuple2!34614)

(assert (=> d!869087 (= (_1!20439 lt!1065395) (derivativeStep!2897 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))) a!2409))))

(declare-fun e!1973588 () tuple2!34614)

(assert (=> d!869087 (= lt!1065395 e!1973588)))

(declare-fun c!532975 () Bool)

(declare-fun lt!1065396 () Option!6919)

(assert (=> d!869087 (= c!532975 ((_ is Some!6918) lt!1065396))))

(assert (=> d!869087 (= lt!1065396 (get!11269 (ite c!532930 (_2!20439 lt!1065350) cache!347) (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))) a!2409))))

(assert (=> d!869087 (validRegex!4470 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))))))

(assert (=> d!869087 (= (derivativeStepMem!32 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))) a!2409 (ite c!532930 (_2!20439 lt!1065350) cache!347)) lt!1065395)))

(declare-fun lt!1065397 () tuple2!34614)

(declare-fun b!3168653 () Bool)

(declare-fun e!1973589 () tuple2!34614)

(assert (=> b!3168653 (= e!1973589 (tuple2!34615 (Concat!15072 (_1!20439 lt!1065397) (Star!9751 (reg!10080 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156)))))) (_2!20439 lt!1065397)))))

(declare-fun call!229947 () tuple2!34614)

(assert (=> b!3168653 (= lt!1065397 call!229947)))

(declare-fun b!3168654 () Bool)

(declare-fun lt!1065394 () tuple2!34614)

(assert (=> b!3168654 (= lt!1065394 call!229946)))

(declare-fun lt!1065398 () tuple2!34614)

(declare-fun call!229945 () tuple2!34614)

(assert (=> b!3168654 (= lt!1065398 call!229945)))

(declare-fun e!1973593 () tuple2!34614)

(assert (=> b!3168654 (= e!1973593 (tuple2!34615 (Union!9751 (Concat!15072 (_1!20439 lt!1065398) (regTwo!20014 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))))) (_1!20439 lt!1065394)) (_2!20439 lt!1065394)))))

(declare-fun bm!229939 () Bool)

(declare-fun c!532977 () Bool)

(declare-fun c!532976 () Bool)

(assert (=> bm!229939 (= call!229944 (derivativeStepMem!32 (ite c!532977 (regOne!20015 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156)))) (ite c!532976 (reg!10080 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156)))) (regOne!20014 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156)))))) a!2409 (ite c!532930 (_2!20439 lt!1065350) cache!347)))))

(declare-fun bm!229940 () Bool)

(assert (=> bm!229940 (= call!229946 (derivativeStepMem!32 (ite c!532977 (regTwo!20015 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156)))) (regTwo!20014 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))))) a!2409 (ite c!532977 (_2!20439 lt!1065399) (_2!20439 lt!1065398))))))

(declare-fun b!3168655 () Bool)

(declare-fun lt!1065393 () tuple2!34614)

(assert (=> b!3168655 (= lt!1065393 call!229945)))

(assert (=> b!3168655 (= e!1973593 (tuple2!34615 (Union!9751 (Concat!15072 (_1!20439 lt!1065393) (regTwo!20014 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))))) EmptyLang!9751) (_2!20439 lt!1065393)))))

(declare-fun b!3168656 () Bool)

(declare-fun e!1973592 () tuple2!34614)

(assert (=> b!3168656 (= e!1973592 (tuple2!34615 EmptyLang!9751 (ite c!532930 (_2!20439 lt!1065350) cache!347)))))

(declare-fun bm!229941 () Bool)

(assert (=> bm!229941 (= call!229947 call!229944)))

(declare-fun b!3168657 () Bool)

(assert (=> b!3168657 (= c!532976 ((_ is Star!9751) (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156)))))))

(assert (=> b!3168657 (= e!1973591 e!1973589)))

(declare-fun e!1973590 () tuple2!34614)

(declare-fun b!3168658 () Bool)

(assert (=> b!3168658 (= e!1973590 (tuple2!34615 (ite (= a!2409 (c!532934 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))))) EmptyExpr!9751 EmptyLang!9751) (ite c!532930 (_2!20439 lt!1065350) cache!347)))))

(declare-fun b!3168659 () Bool)

(assert (=> b!3168659 (= e!1973590 e!1973591)))

(assert (=> b!3168659 (= c!532977 ((_ is Union!9751) (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156)))))))

(declare-fun b!3168660 () Bool)

(declare-fun lt!1065401 () tuple2!34614)

(assert (=> b!3168660 (= e!1973588 (tuple2!34615 (_1!20439 lt!1065401) (_2!20440 (update!272 (_2!20439 lt!1065401) (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))) a!2409 (_1!20439 lt!1065401)))))))

(declare-fun c!532978 () Bool)

(assert (=> b!3168660 (= c!532978 (or ((_ is EmptyExpr!9751) (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156)))) ((_ is EmptyLang!9751) (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))))))))

(assert (=> b!3168660 (= lt!1065401 e!1973592)))

(declare-fun b!3168661 () Bool)

(assert (=> b!3168661 (= e!1973588 (tuple2!34615 (v!35176 lt!1065396) (ite c!532930 (_2!20439 lt!1065350) cache!347)))))

(declare-fun bm!229942 () Bool)

(assert (=> bm!229942 (= call!229945 call!229947)))

(declare-fun b!3168662 () Bool)

(assert (=> b!3168662 (= e!1973589 e!1973593)))

(declare-fun c!532973 () Bool)

(assert (=> b!3168662 (= c!532973 (nullable!3351 (regOne!20014 (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156))))))))

(declare-fun c!532974 () Bool)

(declare-fun b!3168663 () Bool)

(assert (=> b!3168663 (= c!532974 ((_ is ElementMatch!9751) (ite c!532930 (regTwo!20015 r!13156) (ite c!532929 (reg!10080 r!13156) (regOne!20014 r!13156)))))))

(assert (=> b!3168663 (= e!1973592 e!1973590)))

(assert (= (and d!869087 c!532975) b!3168661))

(assert (= (and d!869087 (not c!532975)) b!3168660))

(assert (= (and b!3168660 c!532978) b!3168656))

(assert (= (and b!3168660 (not c!532978)) b!3168663))

(assert (= (and b!3168663 c!532974) b!3168658))

(assert (= (and b!3168663 (not c!532974)) b!3168659))

(assert (= (and b!3168659 c!532977) b!3168652))

(assert (= (and b!3168659 (not c!532977)) b!3168657))

(assert (= (and b!3168657 c!532976) b!3168653))

(assert (= (and b!3168657 (not c!532976)) b!3168662))

(assert (= (and b!3168662 c!532973) b!3168654))

(assert (= (and b!3168662 (not c!532973)) b!3168655))

(assert (= (or b!3168654 b!3168655) bm!229942))

(assert (= (or b!3168653 bm!229942) bm!229941))

(assert (= (or b!3168652 bm!229941) bm!229939))

(assert (= (or b!3168652 b!3168654) bm!229940))

(declare-fun m!3429117 () Bool)

(assert (=> b!3168660 m!3429117))

(declare-fun m!3429119 () Bool)

(assert (=> bm!229939 m!3429119))

(declare-fun m!3429121 () Bool)

(assert (=> b!3168662 m!3429121))

(declare-fun m!3429123 () Bool)

(assert (=> bm!229940 m!3429123))

(declare-fun m!3429125 () Bool)

(assert (=> d!869087 m!3429125))

(declare-fun m!3429127 () Bool)

(assert (=> d!869087 m!3429127))

(declare-fun m!3429129 () Bool)

(assert (=> d!869087 m!3429129))

(assert (=> bm!229909 d!869087))

(declare-fun b!3168664 () Bool)

(declare-fun lt!1065409 () tuple2!34614)

(declare-fun call!229950 () tuple2!34614)

(assert (=> b!3168664 (= lt!1065409 call!229950)))

(declare-fun lt!1065408 () tuple2!34614)

(declare-fun call!229948 () tuple2!34614)

(assert (=> b!3168664 (= lt!1065408 call!229948)))

(declare-fun e!1973597 () tuple2!34614)

(assert (=> b!3168664 (= e!1973597 (tuple2!34615 (Union!9751 (_1!20439 lt!1065408) (_1!20439 lt!1065409)) (_2!20439 lt!1065409)))))

(declare-fun lt!1065404 () tuple2!34614)

(declare-fun d!869089 () Bool)

(assert (=> d!869089 (= (_1!20439 lt!1065404) (derivativeStep!2897 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))) a!2409))))

(declare-fun e!1973594 () tuple2!34614)

(assert (=> d!869089 (= lt!1065404 e!1973594)))

(declare-fun c!532981 () Bool)

(declare-fun lt!1065405 () Option!6919)

(assert (=> d!869089 (= c!532981 ((_ is Some!6918) lt!1065405))))

(assert (=> d!869089 (= lt!1065405 (get!11269 (ite c!532930 cache!347 (ite c!532931 (_2!20439 lt!1065345) cache!347)) (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))) a!2409))))

(assert (=> d!869089 (validRegex!4470 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))))))

(assert (=> d!869089 (= (derivativeStepMem!32 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))) a!2409 (ite c!532930 cache!347 (ite c!532931 (_2!20439 lt!1065345) cache!347))) lt!1065404)))

(declare-fun b!3168665 () Bool)

(declare-fun lt!1065406 () tuple2!34614)

(declare-fun e!1973595 () tuple2!34614)

(assert (=> b!3168665 (= e!1973595 (tuple2!34615 (Concat!15072 (_1!20439 lt!1065406) (Star!9751 (reg!10080 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156)))))) (_2!20439 lt!1065406)))))

(declare-fun call!229951 () tuple2!34614)

(assert (=> b!3168665 (= lt!1065406 call!229951)))

(declare-fun b!3168666 () Bool)

(declare-fun lt!1065403 () tuple2!34614)

(assert (=> b!3168666 (= lt!1065403 call!229950)))

(declare-fun lt!1065407 () tuple2!34614)

(declare-fun call!229949 () tuple2!34614)

(assert (=> b!3168666 (= lt!1065407 call!229949)))

(declare-fun e!1973599 () tuple2!34614)

(assert (=> b!3168666 (= e!1973599 (tuple2!34615 (Union!9751 (Concat!15072 (_1!20439 lt!1065407) (regTwo!20014 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))))) (_1!20439 lt!1065403)) (_2!20439 lt!1065403)))))

(declare-fun bm!229943 () Bool)

(declare-fun c!532982 () Bool)

(declare-fun c!532983 () Bool)

(assert (=> bm!229943 (= call!229948 (derivativeStepMem!32 (ite c!532983 (regOne!20015 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156)))) (ite c!532982 (reg!10080 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156)))) (regOne!20014 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156)))))) a!2409 (ite c!532930 cache!347 (ite c!532931 (_2!20439 lt!1065345) cache!347))))))

(declare-fun bm!229944 () Bool)

(assert (=> bm!229944 (= call!229950 (derivativeStepMem!32 (ite c!532983 (regTwo!20015 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156)))) (regTwo!20014 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))))) a!2409 (ite c!532983 (_2!20439 lt!1065408) (_2!20439 lt!1065407))))))

(declare-fun b!3168667 () Bool)

(declare-fun lt!1065402 () tuple2!34614)

(assert (=> b!3168667 (= lt!1065402 call!229949)))

(assert (=> b!3168667 (= e!1973599 (tuple2!34615 (Union!9751 (Concat!15072 (_1!20439 lt!1065402) (regTwo!20014 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))))) EmptyLang!9751) (_2!20439 lt!1065402)))))

(declare-fun b!3168668 () Bool)

(declare-fun e!1973598 () tuple2!34614)

(assert (=> b!3168668 (= e!1973598 (tuple2!34615 EmptyLang!9751 (ite c!532930 cache!347 (ite c!532931 (_2!20439 lt!1065345) cache!347))))))

(declare-fun bm!229945 () Bool)

(assert (=> bm!229945 (= call!229951 call!229948)))

(declare-fun b!3168669 () Bool)

(assert (=> b!3168669 (= c!532982 ((_ is Star!9751) (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156)))))))

(assert (=> b!3168669 (= e!1973597 e!1973595)))

(declare-fun b!3168670 () Bool)

(declare-fun e!1973596 () tuple2!34614)

(assert (=> b!3168670 (= e!1973596 (tuple2!34615 (ite (= a!2409 (c!532934 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))))) EmptyExpr!9751 EmptyLang!9751) (ite c!532930 cache!347 (ite c!532931 (_2!20439 lt!1065345) cache!347))))))

(declare-fun b!3168671 () Bool)

(assert (=> b!3168671 (= e!1973596 e!1973597)))

(assert (=> b!3168671 (= c!532983 ((_ is Union!9751) (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156)))))))

(declare-fun b!3168672 () Bool)

(declare-fun lt!1065410 () tuple2!34614)

(assert (=> b!3168672 (= e!1973594 (tuple2!34615 (_1!20439 lt!1065410) (_2!20440 (update!272 (_2!20439 lt!1065410) (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))) a!2409 (_1!20439 lt!1065410)))))))

(declare-fun c!532984 () Bool)

(assert (=> b!3168672 (= c!532984 (or ((_ is EmptyExpr!9751) (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156)))) ((_ is EmptyLang!9751) (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))))))))

(assert (=> b!3168672 (= lt!1065410 e!1973598)))

(declare-fun b!3168673 () Bool)

(assert (=> b!3168673 (= e!1973594 (tuple2!34615 (v!35176 lt!1065405) (ite c!532930 cache!347 (ite c!532931 (_2!20439 lt!1065345) cache!347))))))

(declare-fun bm!229946 () Bool)

(assert (=> bm!229946 (= call!229949 call!229951)))

(declare-fun b!3168674 () Bool)

(assert (=> b!3168674 (= e!1973595 e!1973599)))

(declare-fun c!532979 () Bool)

(assert (=> b!3168674 (= c!532979 (nullable!3351 (regOne!20014 (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156))))))))

(declare-fun c!532980 () Bool)

(declare-fun b!3168675 () Bool)

(assert (=> b!3168675 (= c!532980 ((_ is ElementMatch!9751) (ite c!532930 (regOne!20015 r!13156) (ite c!532931 (regTwo!20014 r!13156) (regOne!20014 r!13156)))))))

(assert (=> b!3168675 (= e!1973598 e!1973596)))

(assert (= (and d!869089 c!532981) b!3168673))

(assert (= (and d!869089 (not c!532981)) b!3168672))

(assert (= (and b!3168672 c!532984) b!3168668))

(assert (= (and b!3168672 (not c!532984)) b!3168675))

(assert (= (and b!3168675 c!532980) b!3168670))

(assert (= (and b!3168675 (not c!532980)) b!3168671))

(assert (= (and b!3168671 c!532983) b!3168664))

(assert (= (and b!3168671 (not c!532983)) b!3168669))

(assert (= (and b!3168669 c!532982) b!3168665))

(assert (= (and b!3168669 (not c!532982)) b!3168674))

(assert (= (and b!3168674 c!532979) b!3168666))

(assert (= (and b!3168674 (not c!532979)) b!3168667))

(assert (= (or b!3168666 b!3168667) bm!229946))

(assert (= (or b!3168665 bm!229946) bm!229945))

(assert (= (or b!3168664 bm!229945) bm!229943))

(assert (= (or b!3168664 b!3168666) bm!229944))

(declare-fun m!3429131 () Bool)

(assert (=> b!3168672 m!3429131))

(declare-fun m!3429133 () Bool)

(assert (=> bm!229943 m!3429133))

(declare-fun m!3429135 () Bool)

(assert (=> b!3168674 m!3429135))

(declare-fun m!3429137 () Bool)

(assert (=> bm!229944 m!3429137))

(declare-fun m!3429139 () Bool)

(assert (=> d!869089 m!3429139))

(declare-fun m!3429141 () Bool)

(assert (=> d!869089 m!3429141))

(declare-fun m!3429143 () Bool)

(assert (=> d!869089 m!3429143))

(assert (=> bm!229907 d!869089))

(declare-fun tp!999205 () Bool)

(declare-fun tp!999209 () Bool)

(declare-fun tp!999206 () Bool)

(declare-fun b!3168682 () Bool)

(declare-fun e!1973605 () Bool)

(assert (=> b!3168682 (= e!1973605 (and tp!999206 tp_is_empty!17065 tp!999209 tp!999205))))

(declare-fun mapNonEmpty!18926 () Bool)

(declare-fun mapRes!18926 () Bool)

(declare-fun tp!999207 () Bool)

(assert (=> mapNonEmpty!18926 (= mapRes!18926 (and tp!999207 e!1973605))))

(declare-fun mapRest!18926 () (Array (_ BitVec 32) List!35588))

(declare-fun mapValue!18926 () List!35588)

(declare-fun mapKey!18926 () (_ BitVec 32))

(assert (=> mapNonEmpty!18926 (= mapRest!18923 (store mapRest!18926 mapKey!18926 mapValue!18926))))

(declare-fun b!3168683 () Bool)

(declare-fun tp!999210 () Bool)

(declare-fun tp!999208 () Bool)

(declare-fun tp!999204 () Bool)

(declare-fun e!1973604 () Bool)

(assert (=> b!3168683 (= e!1973604 (and tp!999210 tp_is_empty!17065 tp!999208 tp!999204))))

(declare-fun mapIsEmpty!18926 () Bool)

(assert (=> mapIsEmpty!18926 mapRes!18926))

(declare-fun condMapEmpty!18926 () Bool)

(declare-fun mapDefault!18926 () List!35588)

(assert (=> mapNonEmpty!18923 (= condMapEmpty!18926 (= mapRest!18923 ((as const (Array (_ BitVec 32) List!35588)) mapDefault!18926)))))

(assert (=> mapNonEmpty!18923 (= tp!999186 (and e!1973604 mapRes!18926))))

(assert (= (and mapNonEmpty!18923 condMapEmpty!18926) mapIsEmpty!18926))

(assert (= (and mapNonEmpty!18923 (not condMapEmpty!18926)) mapNonEmpty!18926))

(assert (= (and mapNonEmpty!18926 ((_ is Cons!35464) mapValue!18926)) b!3168682))

(assert (= (and mapNonEmpty!18923 ((_ is Cons!35464) mapDefault!18926)) b!3168683))

(declare-fun m!3429145 () Bool)

(assert (=> mapNonEmpty!18926 m!3429145))

(declare-fun b!3168688 () Bool)

(declare-fun tp!999217 () Bool)

(declare-fun e!1973608 () Bool)

(declare-fun tp!999219 () Bool)

(declare-fun tp!999218 () Bool)

(assert (=> b!3168688 (= e!1973608 (and tp!999217 tp_is_empty!17065 tp!999218 tp!999219))))

(assert (=> mapNonEmpty!18923 (= tp!999188 e!1973608)))

(assert (= (and mapNonEmpty!18923 ((_ is Cons!35464) mapValue!18923)) b!3168688))

(declare-fun tp!999220 () Bool)

(declare-fun tp!999222 () Bool)

(declare-fun b!3168689 () Bool)

(declare-fun tp!999221 () Bool)

(declare-fun e!1973609 () Bool)

(assert (=> b!3168689 (= e!1973609 (and tp!999220 tp_is_empty!17065 tp!999221 tp!999222))))

(assert (=> b!3168556 (= tp!999189 e!1973609)))

(assert (= (and b!3168556 ((_ is Cons!35464) (zeroValue!4431 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347)))))))) b!3168689))

(declare-fun tp!999223 () Bool)

(declare-fun e!1973610 () Bool)

(declare-fun tp!999224 () Bool)

(declare-fun tp!999225 () Bool)

(declare-fun b!3168690 () Bool)

(assert (=> b!3168690 (= e!1973610 (and tp!999223 tp_is_empty!17065 tp!999224 tp!999225))))

(assert (=> b!3168556 (= tp!999183 e!1973610)))

(assert (= (and b!3168556 ((_ is Cons!35464) (minValue!4431 (v!35174 (underlying!8573 (v!35175 (underlying!8574 (cache!4223 cache!347)))))))) b!3168690))

(declare-fun b!3168701 () Bool)

(declare-fun e!1973613 () Bool)

(assert (=> b!3168701 (= e!1973613 tp_is_empty!17065)))

(declare-fun b!3168702 () Bool)

(declare-fun tp!999236 () Bool)

(declare-fun tp!999237 () Bool)

(assert (=> b!3168702 (= e!1973613 (and tp!999236 tp!999237))))

(declare-fun b!3168704 () Bool)

(declare-fun tp!999238 () Bool)

(declare-fun tp!999239 () Bool)

(assert (=> b!3168704 (= e!1973613 (and tp!999238 tp!999239))))

(declare-fun b!3168703 () Bool)

(declare-fun tp!999240 () Bool)

(assert (=> b!3168703 (= e!1973613 tp!999240)))

(assert (=> b!3168537 (= tp!999187 e!1973613)))

(assert (= (and b!3168537 ((_ is ElementMatch!9751) (regOne!20014 r!13156))) b!3168701))

(assert (= (and b!3168537 ((_ is Concat!15072) (regOne!20014 r!13156))) b!3168702))

(assert (= (and b!3168537 ((_ is Star!9751) (regOne!20014 r!13156))) b!3168703))

(assert (= (and b!3168537 ((_ is Union!9751) (regOne!20014 r!13156))) b!3168704))

(declare-fun b!3168705 () Bool)

(declare-fun e!1973614 () Bool)

(assert (=> b!3168705 (= e!1973614 tp_is_empty!17065)))

(declare-fun b!3168706 () Bool)

(declare-fun tp!999241 () Bool)

(declare-fun tp!999242 () Bool)

(assert (=> b!3168706 (= e!1973614 (and tp!999241 tp!999242))))

(declare-fun b!3168708 () Bool)

(declare-fun tp!999243 () Bool)

(declare-fun tp!999244 () Bool)

(assert (=> b!3168708 (= e!1973614 (and tp!999243 tp!999244))))

(declare-fun b!3168707 () Bool)

(declare-fun tp!999245 () Bool)

(assert (=> b!3168707 (= e!1973614 tp!999245)))

(assert (=> b!3168537 (= tp!999180 e!1973614)))

(assert (= (and b!3168537 ((_ is ElementMatch!9751) (regTwo!20014 r!13156))) b!3168705))

(assert (= (and b!3168537 ((_ is Concat!15072) (regTwo!20014 r!13156))) b!3168706))

(assert (= (and b!3168537 ((_ is Star!9751) (regTwo!20014 r!13156))) b!3168707))

(assert (= (and b!3168537 ((_ is Union!9751) (regTwo!20014 r!13156))) b!3168708))

(declare-fun b!3168709 () Bool)

(declare-fun e!1973615 () Bool)

(assert (=> b!3168709 (= e!1973615 tp_is_empty!17065)))

(declare-fun b!3168710 () Bool)

(declare-fun tp!999246 () Bool)

(declare-fun tp!999247 () Bool)

(assert (=> b!3168710 (= e!1973615 (and tp!999246 tp!999247))))

(declare-fun b!3168712 () Bool)

(declare-fun tp!999248 () Bool)

(declare-fun tp!999249 () Bool)

(assert (=> b!3168712 (= e!1973615 (and tp!999248 tp!999249))))

(declare-fun b!3168711 () Bool)

(declare-fun tp!999250 () Bool)

(assert (=> b!3168711 (= e!1973615 tp!999250)))

(assert (=> b!3168555 (= tp!999184 e!1973615)))

(assert (= (and b!3168555 ((_ is ElementMatch!9751) (reg!10080 r!13156))) b!3168709))

(assert (= (and b!3168555 ((_ is Concat!15072) (reg!10080 r!13156))) b!3168710))

(assert (= (and b!3168555 ((_ is Star!9751) (reg!10080 r!13156))) b!3168711))

(assert (= (and b!3168555 ((_ is Union!9751) (reg!10080 r!13156))) b!3168712))

(declare-fun b!3168713 () Bool)

(declare-fun e!1973616 () Bool)

(assert (=> b!3168713 (= e!1973616 tp_is_empty!17065)))

(declare-fun b!3168714 () Bool)

(declare-fun tp!999251 () Bool)

(declare-fun tp!999252 () Bool)

(assert (=> b!3168714 (= e!1973616 (and tp!999251 tp!999252))))

(declare-fun b!3168716 () Bool)

(declare-fun tp!999253 () Bool)

(declare-fun tp!999254 () Bool)

(assert (=> b!3168716 (= e!1973616 (and tp!999253 tp!999254))))

(declare-fun b!3168715 () Bool)

(declare-fun tp!999255 () Bool)

(assert (=> b!3168715 (= e!1973616 tp!999255)))

(assert (=> b!3168540 (= tp!999179 e!1973616)))

(assert (= (and b!3168540 ((_ is ElementMatch!9751) (regOne!20015 r!13156))) b!3168713))

(assert (= (and b!3168540 ((_ is Concat!15072) (regOne!20015 r!13156))) b!3168714))

(assert (= (and b!3168540 ((_ is Star!9751) (regOne!20015 r!13156))) b!3168715))

(assert (= (and b!3168540 ((_ is Union!9751) (regOne!20015 r!13156))) b!3168716))

(declare-fun b!3168717 () Bool)

(declare-fun e!1973617 () Bool)

(assert (=> b!3168717 (= e!1973617 tp_is_empty!17065)))

(declare-fun b!3168718 () Bool)

(declare-fun tp!999256 () Bool)

(declare-fun tp!999257 () Bool)

(assert (=> b!3168718 (= e!1973617 (and tp!999256 tp!999257))))

(declare-fun b!3168720 () Bool)

(declare-fun tp!999258 () Bool)

(declare-fun tp!999259 () Bool)

(assert (=> b!3168720 (= e!1973617 (and tp!999258 tp!999259))))

(declare-fun b!3168719 () Bool)

(declare-fun tp!999260 () Bool)

(assert (=> b!3168719 (= e!1973617 tp!999260)))

(assert (=> b!3168540 (= tp!999185 e!1973617)))

(assert (= (and b!3168540 ((_ is ElementMatch!9751) (regTwo!20015 r!13156))) b!3168717))

(assert (= (and b!3168540 ((_ is Concat!15072) (regTwo!20015 r!13156))) b!3168718))

(assert (= (and b!3168540 ((_ is Star!9751) (regTwo!20015 r!13156))) b!3168719))

(assert (= (and b!3168540 ((_ is Union!9751) (regTwo!20015 r!13156))) b!3168720))

(declare-fun e!1973618 () Bool)

(declare-fun b!3168721 () Bool)

(declare-fun tp!999261 () Bool)

(declare-fun tp!999263 () Bool)

(declare-fun tp!999262 () Bool)

(assert (=> b!3168721 (= e!1973618 (and tp!999261 tp_is_empty!17065 tp!999262 tp!999263))))

(assert (=> b!3168544 (= tp!999182 e!1973618)))

(assert (= (and b!3168544 ((_ is Cons!35464) mapDefault!18923)) b!3168721))

(check-sat (not d!869083) (not b!3168689) (not b!3168702) (not b!3168716) (not b!3168708) (not b_next!83875) tp_is_empty!17065 (not b!3168721) (not b!3168580) (not b!3168586) (not bm!229929) (not b!3168660) (not b!3168714) (not b!3168712) (not b!3168627) (not b!3168612) (not b!3168720) (not b_next!83873) (not d!869087) b_and!209449 b_and!209447 (not b!3168718) (not d!869079) (not b!3168711) (not d!869069) (not b!3168719) (not bm!229943) (not b!3168688) (not b!3168672) (not d!869085) (not b!3168682) (not mapNonEmpty!18926) (not b!3168704) (not b!3168625) (not b!3168715) (not b!3168674) (not bm!229944) (not d!869089) (not bm!229916) (not d!869081) (not b!3168710) (not bm!229939) (not b!3168683) (not bm!229927) (not bm!229940) (not b!3168706) (not b!3168690) (not b!3168662) (not b!3168707) (not b!3168703) (not bm!229917))
(check-sat b_and!209449 b_and!209447 (not b_next!83873) (not b_next!83875))
